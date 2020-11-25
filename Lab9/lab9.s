.globl binary_search
//r0 numb
//r1 KEY
//r2 start i
//r3 end i
//r8 NumCalls
//r6 led address
//r7 middle i
//r10 number[mid]
//r11 address holder of r0

binary_search:
  SUB sp, sp, #12 //adjust the stack
  STR lr, [sp, #-8]

Begin:
  BL func
  LDR lr,  [sp,#-8]         //restores lr from stack
  LDR r8,  [sp,#-4]         //restores numcalls from stack
  LDR r7, [sp,#0]           //restores middle from stack
  ADD sp, sp, #12           //removing from stack
  CMP r8, #0
  BGT fill
  MOV r8, #0
  MOV pc, lr

fill:
  MVN r9, r8                //2's compliment (invert)
  ADD r9, r9, #1            //makes negative
  ADD r10, r11, r7, LSL #2
  STR r9, [r10]
  MOV pc, lr

func:
  ADD r8, r8, #1             //numcalls++
  CMP r3, r2
  BLT broken
  SUB r7, r3, r2             //(endindex-startindex)
  ADD r7, r2, r7, LSR #1     //middleindex = startindex + (endindex-startindex)/2
  LDR r10, [r0, r7, LSL #2]
  CMP r10, r1
  BNE notequal
  MOV r11, r0
  MOV r0, r7
  B fill

notequal:
  SUB sp, sp, #12
  STR lr, [sp, #-8]
  STR r8, [sp, #-4]
  STR r7, [sp, #0]
  CMP r10, r1                 //compare numbers[middleindex] with key
  BLT above
  SUB r3, r7, #1             //subtract 1 from middle and store as end
  B Begin

above:
  ADD r2, r7, #1             //add 1 into middle and store as start
  B Begin

broken:
  MOV r0, #-1
  MOV pc, lr
