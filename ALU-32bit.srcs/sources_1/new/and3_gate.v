`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2023 03:06:18
// Design Name: 
// Module Name: and3_gate
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


module and3_gate(
    output C,
    input A,
    input B,
    input C_in
    );
    
    wire s;
    
    toffoli_gate u1 (.z(s), .a(A), .b(B), .c(0));
    toffoli_gate u2 (.z(C), .a(s), .b(C_in), .c(0));
    
endmodule

