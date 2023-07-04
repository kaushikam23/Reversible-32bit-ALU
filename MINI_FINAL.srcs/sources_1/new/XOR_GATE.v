`timescale 1ns / 1ps
module xor_gate(output z, input a, input b);
 toffoli_gate u1(.z(z), .a(a), .b(1'b1), .c(b));
endmodule

