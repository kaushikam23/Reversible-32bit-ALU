`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.07.2023 02:39:46
// Design Name: 
// Module Name: alu_main_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module alu_main_tb;
    reg [31:0] A;
    reg [31:0] B;
    reg [7:0] CONTROL;
    wire [31:0] OUT;
    
    
    alu_main uut (.A(A), .B(B), .CONTROL(CONTROL), .OUT(OUT));
    
    initial
    begin
    A=12345;
    B=6789;
    CONTROL=8'b01000100;
    #10;
    $display("A=%d, B=%d, Output=%d", A,B, OUT);
    
    A=12345;
    B=6789;
    CONTROL=8'b01000000;
    #10;
    $display("A=%d, B=%d, Output=%d", A,B, OUT);
    
    A=32'b11010010_10110101_01000000_00110011;
    B=32'b00000000_00000000_00000000_00000000;
    CONTROL=8'b11100000;
    #10;
    $display("A=%d, B=%d, Output=%d", A,B, OUT);
    $finish;
    end
    
    
endmodule
