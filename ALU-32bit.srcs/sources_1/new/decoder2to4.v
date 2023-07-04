`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2023 01:07:39
// Design Name: 
// Module Name: decoder2to4
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

module decoder2to4(
    input [1:0] in,
    input en,
    output [3:0] out
    );
    
    wire [1:0] g;
    wire [3:0] j;
    
    // Inverters
    not_gate n1 (.c(g[0]), .a(in[0]));
    not_gate n2 (.c(g[1]), .a(in[1]));
    
    // AND gates
    and_gate a1 (.C(j[0]), .A(g[0]), .B(g[1]));
    and_gate a2 (.C(j[1]), .A(g[0]), .B(in[1]));
    and_gate a3 (.C(j[2]), .A(in[0]), .B(g[1]));
    and_gate a4 (.C(j[3]), .A(in[0]), .B(in[1]));
    
    // Output and enable logic
    assign out = (en) ? j : 4'b0;
    
endmodule

//module decoder2to4(
//    input [1:0] in,
//    input en,
//    output [3:0] out
//    );
    
//    wire [1:0] g;
//    wire [3:0] j;
    
//    // Inverters
//    not #(2) n1 (in[0], g[0]);
//    not #(2) n2 (in[1], g[1]);
    
//    // AND gates
//    and #(2) a1 (g[0], g[1], j[0]);
//    and #(2) a2 (g[0], in[1], j[1]);
//    and #(2) a3 (in[0], g[1], j[2]);
//    and #(2) a4 (in[0], in[1], j[3]);
    
//    // Output and enable logic
//    assign out = (en) ? j : 4'b0;
    
//endmodule

