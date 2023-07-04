`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2023 04:36:13
// Design Name: 
// Module Name: mux32to1_tb
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


module mux32to1_tb;
    
    // Inputs
    reg [31:0] data;
    reg [4:0] sel;
    
    // Output
    wire out;
    
    // Instantiate the mux32to1 module
    mux32to1 dut (
        .data(data),
        .sel(sel),
        .out(out)
    );
    
    // Stimulus
    initial begin
        // Test case 1: Select input 0
        data = 32'b10101010;
        sel = 5'b00000;
        #10; // Wait for combinational logic to settle
        $display("Output: %b", out);
        
        // Test case 2: Select input 15
        data = 32'b11001100;
        sel = 5'b01111;
        #10; // Wait for combinational logic to settle
        $display("Output: %b", out);
        
        // Add more test cases...
        
        // Finish simulation
        $finish;
    end
    
endmodule

