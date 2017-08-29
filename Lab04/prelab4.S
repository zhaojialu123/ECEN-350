// without using stack, but got the right result 
 .globl f
f:

    ADD X9,X0,XZR // initialize X9 to be n, X9 is the temporary register

    ADD X0, XZR, XZR // set X0 = 0

    ADD X1, X1, X9 // X1 = k + n

loop:

    ADD X19, X1, 2

    CBZ X0, zero

    ADD X10,X0,X0 // X4 = 2n

    ADD X10, X10, X10 // X4 = 4n

    ADD X10, X10, X19 // X4 = b + 4n

    ADD X10, X10, X2 // b = b = b + 4 * n + f(n-1,k+1);

    B compare

zero:

    ORR X10, XZR, 8 // b = 8 if n is 0

compare:

    ADD X2, X10,X1 // return b+k

    SUB X11, X9,X0 // X5 = n - X0

    CBZ X11, exit

    ADD X0, X0, 1

    SUB X1,X1,1

    B loop

exit:

    BR X30 // return the value