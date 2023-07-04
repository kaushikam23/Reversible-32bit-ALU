module decoder3to8_tb;
    
    // Inputs
    reg [2:0] i;
    reg e;
    
    // Outputs
    wire [7:0] o;
    
    // Instantiate the decoder3to8_reversible module
    decoder3to8_reversible dut (
        .i(i),
        .e(e),
        .o(o)
    );
    
    // Stimulus
    initial begin
        // Test case 1: Inputs i=3'b000, e=1
        i = 3'b000;
        e = 1'b1;
        #10; // Wait for combinational logic to settle
        $display("Output o: %b", o);
        
        // Test case 2: Inputs i=3'b101, e=0
        i = 3'b101;
        e = 1'b0;
        #10; // Wait for combinational logic to settle
        $display("Output o: %b", o);
        
        // Add more test cases...
        
        // Finish simulation
        $finish;
    end
    
endmodule
