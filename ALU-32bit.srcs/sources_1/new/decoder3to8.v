`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2023 01:07:39
// Design Name: 
// Module Name: decoder3to8
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


module decoder3to8(
    input [2:0] i,
    input e,
    output reg [7:0] out
    );
    wire [7:0] o;
    wire [2:0] s;
    
    
    // Inverters (not_gate)
        not_gate n1 (.c(s[0]), .a(i[0]));
        not_gate n2 (.c(s[1]), .a(i[1]));
        not_gate n3 (.c(s[2]), .a(i[2]));
        
                        // AND gates (and3_gate)
            and3_gate a1 (.C(o[0]), .A(s[0]), .B(s[1]), .C_in(s[2]));
            and3_gate a2 (.C(o[1]), .A(s[0]), .B(s[1]), .C_in(i[2]));
            and3_gate a3 (.C(o[2]), .A(s[0]), .B(i[1]), .C_in(s[2]));
            and3_gate a4 (.C(o[3]), .A(s[0]), .B(i[1]), .C_in(i[2]));
            and3_gate a5 (.C(o[4]), .A(i[0]), .B(s[1]), .C_in(s[2]));
            and3_gate a6 (.C(o[5]), .A(i[0]), .B(s[1]), .C_in(i[2]));
            and3_gate a7 (.C(o[6]), .A(i[0]), .B(i[1]), .C_in(s[2]));
            and3_gate a8 (.C(o[7]), .A(i[0]), .B(i[1]), .C_in(i[2]));
    always @*
    begin
        if (e)
        begin
            out = o;
        end
        else
        begin
            out = 8'bx;
        end
    end   

   
   

endmodule


//module decoder3to8(
//    input [2:0] i,
//    input e,
//    output [7:0] o
//    );
    
//    wire [2:0] s;
//    wire [7:0] aout;
    
//    // Inverters
//    not #(3) n1 (i[0], s[0]);
//    not #(3) n2 (i[1], s[1]);
//    not #(3) n3 (i[2], s[2]);
    
//     AND gates
//    and #(3) a1 (s[0], s[1], s[2], aout[0]);
//    and #(3) a2 (s[0], s[1], i[2], aout[1]);
//    and #(3) a3 (s[0], i[1], s[2], aout[2]);
//    and #(3) a4 (s[0], i[1], i[2], aout[3]);
//    and #(3) a5 (i[0], s[1], s[2], aout[4]);
//    and #(3) a6 (i[0], s[1], i[2], aout[5]);
//    and #(3) a7 (i[0], i[1], s[2], aout[6]);
//    and #(3) a8 (i[0], i[1], i[2], aout[7]);
    
//    // Output and enable logic
//    assign o = (e) ? aout : 8'b0;
    
//endmodule


