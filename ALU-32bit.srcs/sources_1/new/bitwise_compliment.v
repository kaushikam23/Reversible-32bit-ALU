`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.07.2023 00:41:10
// Design Name: 
// Module Name: bitwise_compliment
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


module bitwise_compliment(
    input [31:0] a,
    input con,
    output [31:0]b
    );
    
    wire s1;
    wire s2;
    
    bitwise_xor u1(.a(b), .b(32'b1111_1111_1111_1111_1111_1111_1111_1111), .result(s1));
    assign s2= s1+32'b1; // 1's compliment
    assign b = con ? s2 : s1; // 2's compliment
    
endmodule
