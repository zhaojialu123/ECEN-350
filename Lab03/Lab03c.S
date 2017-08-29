/*
 * Lab03c.S
 *
 *  Created on: Jun 27, 2017
 *      Author: zhaojialu123
 */

.globl Lab03c

Lab03c:

MOVZ X1, #10  //initialize X1 to 0
ADRP X10, my_array
ADD X10,X10, :lo12:my_array // get the effective address of my_array

loop:

CBZ X1, finish // compare X1 with 0
STUR X0,[X10] // store X0 into X10
ADD X10, X10, #4 // move to next address
ADD X0, X0, #1 // increase X0 by 1
SUB X1, X1, #1 // decrease X1 by 1
B loop

finish:

BR X30
 .section       .data
my_array:	.space



