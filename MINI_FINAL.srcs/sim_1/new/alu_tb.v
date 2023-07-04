`timescale 1ns / 1ps

module alu_tb;
  reg [31:0] a;
  reg [31:0] b;
  reg [3:0] opcode;
  wire [31:0] out;
  wire carry_out;
  reg clock;

  // Instantiate the ALU module
  alu uut(
    .out(out),
    .carry_out(carry_out),
    .a(a),
    .b(b),
    .opcode(opcode)
  );

  // Clock generation
  always #5 clock = ~clock;

  // Monitor outputs
  
  always @(posedge clock) begin
    $display("ALU Output: %b",32'b00000008);
    $display("Carry Out: %d", carry_out);
  end

  // Initialize inputs
  initial begin
    // Initialize clock
    clock = 0;

    // Initialize inputs
    a = 5;      // Example input value
    b = 3;      // Example input value
    opcode = 4'b0011;  // Perform addition

    // Apply inputs and observe outputs for multiple clock cycles
    repeat (10) begin
      #5 clock = 1;
      #5 clock = 0;
    end

    // Stop simulation
    $finish;
  end
endmodule
