        .globl lab04b

lab04b:
        //   Does not handle negative X1!
        //   Note : This is an in efficient way to multipy!
        SUB SP, SP, 16          //make room for X19 on the stack
        STUR X19, [SP, 0]       //push X19
        SUB X11, X0, 1   // the index of outer loop
        SUB X19, X0, 1       // the index of inner loop
        ADD X9,XZR,XZR       // set X9 to 0
loop:
		CBNZ X11, mult_loop
		B exit
		mult_loop:
		        CBZ X19,  mult_eol
		        ADD X9, X9, X0
		        SUB X19, X19, 1
		        B mult_loop
		mult_eol:
		        LDUR X19, [SP, 0]
		        ADD X0, X9, XZR         // Move X9 to X0 to return
		        ADD X9,XZR,XZR
		        SUB X19,X11, 1  // i = j-1
		        SUB X11,X11,1  // j = j-1
		B loop
exit:
	LDUR X19,[SP, 0]
    ADD SP,SP,16 // release the memory space
    BR X30


