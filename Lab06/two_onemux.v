/* This module describes a 1-bit wide multiplexer using structural contructs 
and gate-level primitives built into Verilog. */
`timescale 1ns / 1ps
module two_onemux(Y,in,S); //define the module name and its interface

    /*declare output and input ports*/
    output wire Y; //declare output of type wire
    input wire [0:1]in, S; //declare inputs of type wire
    
    /*declare internal nets*/
    wire notS; //inverse of S
    wire andA; //output of and0 gate
    wire andB; //output of and1 gate
    
    /*instantiate gate-level modules*/
    not not0(notS, S);
    and and0(andA, notS, in[1]);
    and and1(andB, S, in[0]);
    or or0(Y, andA, andB);
    
endmodule   //designate end of module
