module decoder5to32_tb;
    
    // Inputs
    reg [4:0] a;
    reg en;
    
    // Outputs
    wire [31:0] y;
    
    // Instantiate the decoder5to32 module
    decoder5to32 dut (
        .a(a),
        .en(en),
        .y(y)
    );
    
    // Stimulus
    initial begin
        // Test case 1: Inputs a=5'b00000, en=1
        a = 5'b00000;
        en = 1'b1;
        #10; // Wait for combinational logic to settle
        $display("Output y: %b", y);
        
        // Test case 2: Inputs a=5'b11111, en=0
        a = 5'b11111;
        en = 1'b0;
        #10; // Wait for combinational logic to settle
        $display("Output y: %b", y);
        
        // Add more test cases...
        
        // Finish simulation
        $finish;
    end
    
endmodule
