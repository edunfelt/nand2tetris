// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

(START)		// starting conditions, set address to first pixel and reset pixel-counter to 8192
    @SCREEN
    D = A
    @addr
    M = D

    @8192	// total number of pixels to be "painted" (256 * 32)
    D = A
    @pixels
    M = D

(CHECK) 	// obtain the user input from keyboard
    @pixels	// check if there are pixels left to paint
    D = M
    @START
    D;JEQ	// if not, goto START

    @KBD	// check keyboard input at RAM[24576]
    D = M

    @BLACKSC 	// black screen if key is pressed
    D;JNE

    @BLANKSC 	//blank screen if no key is pressed
    D;JEQ

    (BLACKSC)	
	@addr	// set the pixel at addr to 1
	A = M
	M = -1

	@addr
	M = M + 1

	@pixels	// one less pixel to paint
	M = M - 1
	
	@CHECK	// retrieve user input
	0;JMP

    (BLANKSC)	
	@addr	// set the pixel at addr to 0
	A = M
	M = 0

	@addr
	M = M + 1

	@pixels
	M = M - 1
	
	@CHECK
	0;JMP
