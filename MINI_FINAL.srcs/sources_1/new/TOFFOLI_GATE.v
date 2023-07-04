`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
// Create Date: 26.06.2023 13:44:09
// Design Name: 
// Module Name: Toffoli
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


module toffoli_gate(output z, input a, input b, input c);
    assign z = (a & b) ^ c;
endmodule