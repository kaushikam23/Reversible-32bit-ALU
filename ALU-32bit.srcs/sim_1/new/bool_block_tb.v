`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.07.2023 22:20:11
// Design Name: 
// Module Name: bool_block_tb
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


//module bool_block_tb;
//    reg [31:0] a;
//    reg [31:0] b;
//    reg [1:0] sel;
//    wire [31:0] out;
    
//    bool_block uut (.a(a), .b(b), .sel(sel), .out(out));
    
//    initial
//    begin
//    a=32'b10101010_10101010_10101010_10101010;
//    b=32'b11111111_00000000_11111111_00000000;
//    sel=00;
//    #10
//    $display("output =%b", out);
    
//    a=32'b10101010_10101010_10101010_10101010;
//    b=32'b11111111_00000000_11111111_00000000;
//    sel=01;
//    #10
//    $display("output =%b", out);
    
//    a=32'b10101010_10101010_10101010_10101010;
//    b=32'b11111111_00000000_11111111_00000000;
//    sel=10;
//    #10
//    $display("output =%b", out);
    
//    a=32'b10101010_10101010_10101010_10101010;
//    b=32'b11111111_00000000_11111111_00000000;
//    sel=11;
//    #10
//    $display("output =%b", out);
//    $finish;
//    end
    
//endmodule


module bool_block_tb;
  reg [31:0] a;
  reg [31:0] b;
  reg [1:0] sel;
  wire [31:0] out;
  
  bool_block uut (.a(a), .b(b), .sel(sel), .out(out));
  
  initial begin
    a = 32'b10101010_10101010_10101010_10101010;
    b = 32'b11111111_00000000_11111111_00000000;
    sel = 2'b00;
    #10;
    $display("output = %b", out);
    
    a = 32'b10101010_10101010_10101010_10101010;
    b = 32'b11111111_00000000_11111111_00000000;
    sel = 2'b01;
    #10;
    $display("output = %b", out);
    
    a = 32'b10101010_10101010_10101010_10101010;
    b = 32'b11111111_00000000_11111111_00000000;
    sel = 2'b10;
    #10;
    $display("output = %b", out);
    
    a = 32'b10101010_10101010_10101010_10101010;
    b = 32'b11111111_00000000_11111111_00000000;
    sel = 2'b11;
    #10;
    $display("output = %b", out);
    
    $finish;
  end
    
endmodule

