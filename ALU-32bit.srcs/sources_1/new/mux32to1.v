`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2023 04:32:22
// Design Name: 
// Module Name: mux32to1
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


module mux32to1(
    input [31:0] data,
    input [4:0] sel,
    output reg out
    );
    
    always @*
    begin
        case(sel)
            5'b00000: out = data[0];
            5'b00001: out = data[1];
            5'b00010: out = data[2];
            5'b00011: out = data[3];
            5'b00100: out = data[4];
            5'b00101: out = data[5];
            5'b00110: out = data[6];
            5'b00111: out = data[7];
            5'b01000: out = data[8];
            5'b01001: out = data[9];
            5'b01010: out = data[10];
            5'b01011: out = data[11];
            5'b01100: out = data[12];
            5'b01101: out = data[13];
            5'b01110: out = data[14];
            5'b01111: out = data[15];
            5'b10000: out = data[16];
            5'b10001: out = data[17];
            5'b10010: out = data[18];
            5'b10011: out = data[19];
            5'b10100: out = data[20];
            5'b10101: out = data[21];
            5'b10110: out = data[22];
            5'b10111: out = data[23];
            5'b11000: out = data[24];
            5'b11001: out = data[25];
            5'b11010: out = data[26];
            5'b11011: out = data[27];
            5'b11100: out = data[28];
            5'b11101: out = data[29];
            5'b11110: out = data[30];
            5'b11111: out = data[31];
            default: out = 1'b0;         // Default case
        endcase
    end
    
endmodule
