module decoder2to4_tb;
    
    // Inputs
    reg [1:0] in;
    reg en;
    
    // Outputs
    wire [3:0] out;
    
    // Instantiate the decoder2to4 module
    decoder2to4 dut (
        .in(in),
        .en(en),
        .out(out)
    );
    
    // Stimulus
    initial begin
        // Test case 1: Inputs in=2'b00, en=1
        in = 2'b00;
        en = 1'b1;
        #10; // Wait for combinational logic to settle
        $display("Output out: %b", out);
        
        // Test case 2: Inputs in=2'b11, en=0
        in = 2'b11;
        en = 1'b0;
        #10; // Wait for combinational logic to settle
        $display("Output out: %b", out);
        
        // Add more test cases...
        
        // Finish simulation
        $finish;
    end
    
endmodule
