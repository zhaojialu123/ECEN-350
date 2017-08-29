/*
 * Lab03b.S
 *
 *  Created on: Jun 27, 2017
 *      Author: zhaojialu123
 */

.globl Lab03b

Lab03b:
ADRP X10, UIN
ADD X10,X10, :lo12:UIN
STUR X0,[X10]
MOVZ X1, #10


loop:

CBZ X1, finish // check if X1 is equal to 0 or not

SUB X0, X0, #1

SUB X1, X1, #1

B loop

finish:
STUR X0, [X10] // store X0 to the address of X10

BR X30  // return the value

.section .data
UIN:   .word


