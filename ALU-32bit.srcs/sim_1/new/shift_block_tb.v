`timescale 1ns / 1ps

module single_bit_shift_tb;

  reg [31:0] data;
  reg control;
  wire [31:0] shifted_data;

  single_bit_shift uut (
    .data(data),
    .control(control),
    .shifted_data(shifted_data)
  );

  initial begin
    // Initialize inputs
    data = 32'b00000000_00000000_10101010_00000000;
    control = 1'b0;
    // Wait for a few simulation cycles
    #10;
       // Print shifted values
    $display("Input data:    %b", data);
    $display("Control:       %b", control);
    $display("Shifted data:  %b", shifted_data);
    
    data = 32'b00000000_00000000_10101010_00000000;
    control = 1'b1;
    // Wait for a few simulation cycles
    #10;
    // Print initial values
    $display("Input data:    %b", data);
    $display("Control:       %b", control);
    $display("Shifted data:  %b", shifted_data);
    // Finish the simulation
    $finish;
  end

endmodule
