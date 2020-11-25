	.text
	.global _start
_start:
	//BL CONFIG_VIRTUAL_MEMORY
									// Step 1-3: configure PMN0 to count cycles
	MOV R0, #0						// Write 0 into R0 then PMSELR
	MCR p15, 0, R0, c9, c12, 5		// Write 0 into PMSELR selects PMN0
	MOV R1, #0x3					// Event 0x3 is L1 cache misses
	MCR p15, 0, R1, c9, c13, 1		// Write 0x11 into PMXEVTYPER (PMN0 measure CPU cycles)

	MOV R0, #1						// Write 1 into R0 then PMSELR
	MCR p15, 0, R0, c9, c12, 5		// Write 0 into PMSELR selects PMN0
	MOV R1, #0x6					// Event 0x6 is Total Loads
	MCR p15, 0, R1, c9, c13, 1		// Write 0x11 into PMXEVTYPER (PMN0 measure CPU cycles)

	MOV R0, #2						// Write 2 into R0 then PMSELR
	MCR p15, 0, R0, c9, c12, 5		// Write 0 into PMSELR selects PMN0
	MOV R1, #0x11					// Event 0x11 is CPU cycles
	MCR p15, 0, R1, c9, c13, 1		// Write 0x11 into PMXEVTYPER (PMN0 measure CPU cycles)

									// Step 4: enable PMN0
	mov R0, #0b111					// PMN0-2 is bit 0-2 of PMCNTENSET
	MCR p15, 0, R0, c9, c12, 1 // Setting bit 0 of PMCNTENSET enables PMN0

									// Step 5: clear all counters and start counters
	mov r0, #3						// bits 0 (start counters) and 1 (reset counters)
	MCR p15, 0, r0, c9, c12, 0		// Setting PMCR to 3


																								//begin function
	LDR R0, =3					//R0 = N
	MOV R1, #0						//R1 = i
	MOV R2, #0						//R2 = j
	MOV R3, #0						//R3 = k
	LDR R8, =A						//R8 = address of A
	LDR R9, =B						//R9 = address of B
	LDR R10, =C						//R10 = address of C

BIGLOOP:
	MOV R2, #0

MIDLOOP:
	MOV R3, #0						//k = 0
	STR R3, [sp,#-8]				//store 0 for use
	.word 0xED1D0B08				//FLDD D0, [sp,#-8]		//D0 = 0 

INNERLOOP:
	MUL R5, R0, R1					//R6 = N*i
	ADD R5, R5,	R3					//R5 = N*i + k
	MOV R5, R5, LSL #3				//make it an address
	ADD R5, R5, R8					//R5 = N*i + k + A
//  1110_1101_0_001_0101_0010_1011_00000000
	.word 0xED152B00				//FLDD D2, [R5]			//D2 = A[i][k]
	MUL R5, R0, R3					//R5 = N*k
	ADD R5, R5,	R2					//R5 = N*k + j
	MOV R5, R5, LSL #3				//convert shift to address
	ADD R5, R5, R9					//R5 = N*k + j + B
//  1110_1101_0_001_0101_0011_1011_00000000	
	.word 0xED153B00				//FLDD D3, [R5]			//D3 = B[k][j]

//  1110_11100010_0010_0001_1011_0000_0011
	.word 0xEE221B03				//FMULD D1, D2, D3		//D1 = A*B
//  1110_11100011_0000_0000_1011_0000_0001
	.word 0xEE300B01				//FADDD D0, D0, D1		//sum = sum + (A[ij]*B[kj])

	ADD R3, R3, #1					//k++
	CMP R3, R0						//k<n
	BLT INNERLOOP

	MUL R5, R0, R1					//R5 = N*i
	ADD R5, R5,	R2					//R5 = N*i + j
	MOV R5, R5, LSL #3				//convert shift to address
	ADD R5, R5, R10					//R5 = N*i + j + C
//  1110_1101_0_000_0101_0000_1011_00000000
	.word 0xED050B00				//FSTD D0, [R5]			//C[i][j] = sum

	ADD R2, R2, #1					//j++
	CMP R2, R0						//j<n
	BLT MIDLOOP

	AdD R1, R1, #1					//i++
	CMP R1, R0						//i<n
	BLT BIGLOOP
																								//end function

									// Step 7: stop counters
	mov r0, #0
	MCR p15, 0, r0, c9, c12, 0		// Write 0 to PMCR to stop counters

									// Step 8-10: Select PMN0 and read out result into R3
	mov r0, #0						// PMN0
	MCR p15, 0, R0, c9, c12, 5		// Write 0 to PMSELR
	MRC p15, 0, R3, c9, c13, 2		// Read PMXEVCNTR into R3

									// Step 8-10: Select PMN0 and read out result into R3
	mov r0, #1						// PMN1
	MCR p15, 0, R0, c9, c12, 5		// Write 1 to PMSELR
	MRC p15, 0, R4, c9, c13, 2		// Read PMXEVCNTR into R4

									// Step 8-10: Select PMN0 and read out result into R3
	mov r0, #2						// PMN2
	MCR p15, 0, R0, c9, c12, 5		// Write 2 to PMSELR
	MRC p15, 0, R5, c9, c13, 2		// Read PMXEVCNTR into R5
end: 
	b end // wait here

A:	.double 2.2
	.double 1.0
	.double 3.3
	.double 2.4
	.double 1.2
	.double 0.5
	.double 1.0
	.double 1.3
	.double 2.0

B:	.double 3.2
	.double 1.5
	.double 8.6
	.double 4.3
	.double 0.7
	.double 0.9
	.double 1.3
	.double 2.2
	.double 3.0

C:	.double 0.0
	.double 0.0
	.double 0.0
	.double 0.0
	.double 0.0
	.double 0.0
	.double 0.0
	.double 0.0
	.double 0.0

Checkarray:
	.double 15.63
	.double 11.26
	.double 29.72
	.double 13.49
	.double 5.54
	.double 23.22
	.double 11.39
	.double 6.81
	.double 15.77

