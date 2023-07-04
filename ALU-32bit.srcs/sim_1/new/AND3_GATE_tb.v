`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2023 04:38:40
// Design Name: 
// Module Name: and3_gate_tb
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


module and3_gate_tb;
    
    // Inputs
    reg A, B, D, C_in;
    
    // Output
    wire C;
    
    // Instantiate the and3_reversible module
    and3_gate dut (
        .C(C),
        .A(A),
        .B(B),
        .D(D),
        .C_in(C_in)
    );
    
    // Stimulus
    initial begin
        // Test case 1: Inputs A=1, B=1, D=1, C_in=0
        A = 1'b1;
        B = 1'b1;
        D = 1'b1;
        C_in = 1'b0;
        #10; // Wait for combinational logic to settle
        $display("Output C: %b", C);
        
        // Test case 2: Inputs A=0, B=1, D=0, C_in=1
        A = 1'b0;
        B = 1'b1;
        D = 1'b0;
        C_in = 1'b1;
        #10; // Wait for combinational logic to settle
        $display("Output C: %b", C);
        
        // Add more test cases...
        
        // Finish simulation
        $finish;
    end
    
endmodule
