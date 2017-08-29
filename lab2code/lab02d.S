/*
 * lab02d.S
 *
 *  Created on: Jun 20, 2017
 *      Author: zhaojialu123
 */

.section .text
.globl lab02d

lab02d:
		ADD X0, X0, #1000 // add 1000 to that value
		ADRP X9, myvalue
		ADD X9,X9, :lo12:myvalue // use temporary register X9 holds address of label myvalue

		STUR X0, [X9] //store the value after adding 1000 into myvalue address

		ORR X0, XZR, X9 // X0 get the address of X9

		br X30 // return from main ; return address stored in X30
.section	.data
myvalue:	.word
