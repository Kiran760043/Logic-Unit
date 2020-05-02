//////////////////////////////////////////////////////////////////////////////////
// Design Name: 4-bit Logic Circuit
// Engineer: kiran
// Reference: Computer Architecture by Morris Mano 3rd Edition (Chapter 4 : page 111 - 113)
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps///////////////////////////////////////////////////////////////////////////////


module test_bench_LE();
    //inputs for DUT
    reg [3:0] A;
    reg [3:0] B;
    reg [1:0] Sel;
    //outputs from DUT
    wire [3:0] E;

    LE DUT (.A(A), .B(B), .Sel(Sel), .E(E));
    
      initial
        begin
            $display($time, " << Simulation Results >>");
            $monitor($time, "A = %b, B = %b, Sel = %b, E = %b", A,B,Sel,E);
        end
        
    initial
        begin
        A   = 4'h5;
        B   = 4'h3;
        //sel=00
        Sel = 2'h0;
        #2;
        //sel=01
        Sel = 2'h1;
        #2;
        //sel=10
        Sel = 2'h2;
        #2;
        //sel=11
        Sel = 2'h3;
        #2;
        $finish;
        
        end
endmodule
