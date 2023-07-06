`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2023 01:32:46
// Design Name: 
// Module Name: decoder5to32
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


module decoder5to32(
    input [4:0] a,
    input en,
    output reg [31:0] y
    );
    
//module decoder3to8(input [2:0] i,input e,output [7:0] o);
//module decoder2to4(input [1:0] in,input en,output [3:0] out);

    
    wire [3:0] w;
    wire [7:0] o1, o2, o3, o4;
    
    // Instantiate decoder2to4
    decoder2to4 d1(a[4:3], en, w);
    
    // Instantiate decoder3to8
    decoder3to8 d2(a[2:0], w[0], o1);
    decoder3to8 d3(a[2:0], w[1], o2);
    decoder3to8 d4(a[2:0], w[2], o3);
    decoder3to8 d5(a[2:0], w[3], o4);
    
       initial
    begin
        if (en)
        begin
             y = {o4,o3,o2,o1};
        end
        else
        begin
            y = 32'bx;
        end
    end          
    
endmodule
