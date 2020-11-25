// *** this file is copied from original "interrupt_example.s" ***
				.include	"address_map_arm.s"
				.include	"interrupt_ID.s"

/* ********************************************************************************
 * This program demonstrates use of interrupts with assembly language code. 
 * The program responds to interrupts from the pushbutton KEY port in the FPGA.
 *
 * The interrupt service routine for the pushbutton KEYs indicates which KEY has 
 * been pressed on the HEX0 display.
 ********************************************************************************/
 				.global icounter
				.global CHAR_FLAG
				.global CHAR_BUFFER

				icounter:   .word 	0						// counter global variable
				CHAR_FLAG:	.word	0
				CHAR_BUFFER:.word	0 


				.section .vectors, "ax"

				B 			_start					// reset vector
				B 			SERVICE_UND				// undefined instruction vector
				B 			SERVICE_SVC				// software interrrupt vector
				B 			SERVICE_ABT_INST		// aborted prefetch vector
				B 			SERVICE_ABT_DATA		// aborted data vector
				.word 0 //unused
				B 			SERVICE_IRQ				// IRQ interrupt vector
				B 			SERVICE_FIQ				// FIQ interrupt vector

				.text
				.global	_start
_start:		
				/* Set up stack pointers for IRQ and SVC processor modes */
				MOV		R1, #0b11010010					// interrupts masked, MODE = IRQ
				MSR		CPSR_c, R1							// change to IRQ mode
				LDR		SP, =A9_ONCHIP_END - 3			// set IRQ stack to top of A9 onchip memory
				/* Change to SVC (supervisor) mode with interrupts disabled */
				MOV		R1, #0b11010011					// interrupts masked, MODE = SVC
				MSR		CPSR, R1								// change to supervisor mode
				LDR		SP, =DDR_END - 3					// set SVC stack to top of DDR3 memory

				BL			CONFIG_GIC							// configure the ARM generic interrupt controller

				// write to the pushbutton KEY interrupt mask register
				LDR		R0, =KEY_BASE						// pushbutton KEY base address
				MOV		R1, #0xF								// set interrupt mask bits
				STR		R1, [R0, #0x8]						// interrupt mask register is (base + 8)

																																//new additions
				LDR R0, =MPCORE_PRIV_TIMER
				LDR R1, =100000000				//half of the frequency
				STR R1, [R0, #0]				//store 100m in the counter
				MOV R1, #7						//turn on IAE (last 3 bits)
				STR R1, [R0, #8]				//shift to the control location

				// enable keyboard
				LDR R0, =JTAG_UART_BASE
				MOV R1, #1
				STR R1, [R0,#4]					//shift to control (sets RE = 1, and WE = 0)


				// enable IRQ interrupts in the processor
				MOV		R0, #0b01010011					// IRQ unmasked, MODE = SVC
				MSR		CPSR_c, R0



IDLE:
				PUSH {R0-R7,LR}
				LDR R3, =CHAR_FLAG
				LDR R1, [R3]
				CMP R1, #1
				BNE CONTINUE
				LDR R4, =CHAR_BUFFER
				LDR R0, [R4]
				BL PUT_JTAG
				LDR R3, =CHAR_FLAG
				MOV R2, #0
				STR R2, [R3]
CONTINUE:		POP {R0-R7,LR}
				B 	IDLE									// main program simply idles

/* Define the exception service routines */

/*--- Undefined instructions --------------------------------------------------*/
SERVICE_UND:
    			B SERVICE_UND 
 
/*--- Software interrupts -----------------------------------------------------*/
SERVICE_SVC:			
    			B SERVICE_SVC 

/*--- Aborted data reads ------------------------------------------------------*/
SERVICE_ABT_DATA:
    			B SERVICE_ABT_DATA 

/*--- Aborted instruction fetch -----------------------------------------------*/
SERVICE_ABT_INST:
    			B SERVICE_ABT_INST 
 
/*--- IRQ ---------------------------------------------------------------------*/
SERVICE_IRQ:
    			PUSH		{R0-R7, LR}
    
    			/* Read the ICCIAR from the CPU interface */
    			LDR		R4, =MPCORE_GIC_CPUIF
    			LDR		R5, [R4, #ICCIAR]				// read from ICCIAR

FPGA_IRQ1_HANDLER:
    			CMP		R5, #KEYS_IRQ
				BEQ		KEYH

FPGA_IRQ2_H:
				CMP R5, #MPCORE_PRIV_TIMER_IRQ
				BEQ TIMERH

FPGA_IRQ3_H:
				CMP R5, #JTAG_IRQ
				BEQ KEYBOARD

UNEXPECTED:	BNE		UNEXPECTED    					// if not recognized, stop here
    
 KEYH:   		BL			KEY_ISR
				B EXIT_IRQ

TIMERH:			
				LDR R0, =icounter			//points to global counter
				LDR R1, [R0]
				ADD R1, R1, #1
				STR R1, [R0]
				LDR R0, =LEDR_BASE
				STR R1, [R0]         // display result on LEDR0-LEDR9
				LDR R0, =MPCORE_PRIV_TIMER
				MOV R1, #1
				STR R1, [R0,#12]				//set interupt flag to 1
				B EXIT_IRQ

KEYBOARD:
				LDR R0, =JTAG_UART_BASE
				LDR R1, [R0]					//load data from JTAG UART 
				LDR R2, =0xFF					//the last 8 bits
				AND R1, R1, R2					//and so you only read DATA section
				LDR R0, =CHAR_BUFFER
				STR R1, [R0]
				LDR R0, =CHAR_FLAG
				MOV R1, #1
				STR R1, [R0]
				B EXIT_IRQ

PUT_JTAG:		LDR R1, =0xFF201000				// JTAG UART base address
				LDR R2, [R1, #4]				// read the JTAG UART control register
				LDR R3, =0xFFFF
				ANDS R2, R2, R3					// check for write space
				BEQ END_PUT						// if no space, ignore the character
				STR R0, [R1]					// send the character
END_PUT:		BX LR

EXIT_IRQ:
    			/* Write to the End of Interrupt Register (ICCEOIR) */
    			STR		R5, [R4, #ICCEOIR]			// write to ICCEOIR
    
    			POP		{R0-R7, LR}
    			SUBS		PC, LR, #4

/*--- FIQ ---------------------------------------------------------------------*/
SERVICE_FIQ:
    			B			SERVICE_FIQ 

				.end   



