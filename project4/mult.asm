// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

@R0
D=M
@n
M=D
@i
M=1
@mult
M=0

(LOOP)
@i
D=M
@n
D=D-M
@STOP
D;JGT //IF i>n jump to end

@mult
D=M
@R1
D=D+M
@mult
M=D
@i
M=M+1
@LOOP
0;JMP

(STOP)
@mult
D=M
@R2
M=D

(END)
@END
0;JMP