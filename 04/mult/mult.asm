// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

//I will implement multiplication by repeated addition:
@k
M=1

(LOOP)
@k
D=M //k=1
@R0
D=D-M // D=k-R0
@END
D;JGT //if (k-R0>0) goto END
@R1
D=M // D=R1
D=D+M // R1=R1+R1
@R2
M=D
@LOOP
D;JMP  // jump to LOOP
(END)
@END
0;JMP // Infinite Loop







