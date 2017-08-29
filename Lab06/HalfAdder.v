module HalfAdder(S,C,A,B); // define the module name and its interfence
// declare the output and input 
input wire A,B;
output wire S,C;

// declare internal nets
wire n1;
wire n2;
wire n3;

// structural level wiring 
// last two gates 
nand #2 nandS(S,n2,n3); // 2ns get delay 
nand #2 nandC(C,n1,n1);

// first three internal gates
// everthing should go backward 
nand #2 nand2(n2,A,n1);
nand #2 nand3(n3,B,n1); 
nand #2 nand1(n1,A,B);

endmodule 
                      
