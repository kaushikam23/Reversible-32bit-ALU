`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.07.2023 13:13:20
// Design Name: 
// Module Name: NAND_GATE
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


module AND_GATE(output C, input A, input B);
    
    toffoli_gate u1(.z(C), .a(A), .b(B), .c(1'b0));


endmodule
