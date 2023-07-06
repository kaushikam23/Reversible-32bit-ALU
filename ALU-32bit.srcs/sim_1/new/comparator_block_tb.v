`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.07.2023 01:32:14
// Design Name: 
// Module Name: comparator_block_tb
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


module comparator_block_tb;
    reg [31:0] a;
    reg [31:0] b;
    reg [1:0] con;
    wire out;
    
    comparator_block uut (.a(a), .b(b), .con(con), .out(out));
    
    
  initial begin
    // Test case 1: a > b
    a = 10;
    b = 5;
    con= 2'b00;
    #10;
    $display("a: %d, b: %d, con: %b, out: %b", a, b, con, out);

    // Test case 2: a < b
    a = 12;
    b = 10;
    con= 2'b01;
    #10;
    $display("a: %d, b: %d, con: %b, out: %b", a, b, con, out);

    // Test case 3: a == b
    a = 7;
    b = 7;
    con= 2'b10;
    #10;
   $display("a: %d, b: %d, con: %b, out: %b", a, b, con, out);

    // Test case 4: a != b
    a = 3;
    b = 3;
    con= 2'b11;
    #10;
    $display("a: %d, b: %d, con: %b, out: %b", a, b, con, out);

    // Finish simulation
    $finish;
  end

endmodule
