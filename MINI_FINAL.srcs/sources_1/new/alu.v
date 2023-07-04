
  module and_gate(output z, input a, input b);
    wire t1;
    wire t2;
    toffoli_gate u1(.z(t1), .a(a), .b(b), .c(b));
    fredkin u2(.z(z), .a(a), .b(b), .c(t1));
    toffoli_gate u3(.z(t2), .a(t1), .b(b), .c(a));
    toffoli_gate u4(.z(z), .a(t2), .b(z), .c(t2));
  endmodule

module or_gate(output z, input a, input b);
  wire t1;
  wire t2;
  wire t3;
  toffoli_gate u1(.z(t1), .a(a), .b(b), .c(t1));
  toffoli_gate u2(.z(t2), .a(a), .b(t1), .c(z));
  toffoli_gate u3(.z(t3), .a(b), .b(t1), .c(b));
  toffoli_gate u4(.z(z), .a(t3), .b(z), .c(t3));
endmodule

 module half_adder(output sum, output carry, input a, input b);
    xor_gate u1(.z(sum), .a(a), .b(b));
    and_gate u2(.z(carry), .a(a), .b(b));
  endmodule




module alu(
  output reg [31:0] out,
  output wire carry_out,
  input [31:0] a,
  input [31:0] b,
  input [3:0] opcode
);
  wire [31:0] xor_result;
  wire [31:0] and_result;
  wire [31:0] or_result;
  wire [31:0] add_result;
  wire [31:0] add_carry_out;

  // Instantiate XOR, AND, and OR gates
  xor_gate xor_gate_32bit(.z(xor_result), .a(a), .b(b));
  // Instantiate AND and OR gates (replace with your implementation)
  and_gate and_gate_32bit(.z(and_result), .a(a), .b(b));
  or_gate or_gate_32bit(.z(or_result), .a(a), .b(b));

  // Instantiate Half Adder for each bit
  half_adder half_adder_32bit[31:0](
    .sum(add_result),
    .carry(add_carry_out),
    .a(a),
    .b(b)
  );

  // Perform the operation based on the opcode
  always @*
    case (opcode)
      4'b0000: out = xor_result;
      4'b0001: out = and_result;
      4'b0010: out = or_result;
      4'b0011: out = add_result;
      default: out = 0; // Assign a default value for out
    endcase

  // Carry out is the carry-out of the most significant bit addition
  assign carry_out = add_carry_out[31];
endmodule
