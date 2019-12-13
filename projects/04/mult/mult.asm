// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// How it works:	i = R1
// 			while i > 0 
//   		    	    R2 += R0
//   		    	    i -= 1
// 			return R2

    @R1
    D = M		// load R1 into D

    @i			// set the backwards counter to R1
    M = D

    @product		// product = 0 before program begins
    M = 0

(LOOP)			// while i > 0, keep looping
    @i
    D = M

    @END		// otherwise, goto END
    D;JEQ

    @R0
    D = M

    @product		// add R0 to 'product'
    M = D + M

    @i			// reduce i
    M = M - 1	

    @LOOP		// restart the loop
    0;JMP

(END)
    @product		// load 'product' to D
    D = M
  
    @R2			// store result in R2
    M = D

    @END
    0;JMP 		// infinite loop to prevent hacking
