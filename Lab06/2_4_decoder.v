`timescale 1ns/ 1ps
`default_nettype none
//This module describes a 2:4 decoder using behavioral constructs in Verilog HDL

//module interface for the 2:4 decoder
module two_four_decoder(
    input wire [1:0] in,
    output reg [3:0] out
);

    always@(in)
        begin
                case(in) //selection based on W
                    2'b00: out = 4'b0001; //4'b signifies a 4-bit binary value
                    2'b01: out = 4'b0010;
                    2'b10: out = 4'b0100;
                    2'b11: out = 4'b1000; //light up y[3]
                endcase
        end
endmodule
