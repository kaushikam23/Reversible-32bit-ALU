module and_gate_tb;
    reg A,B;
    wire C;
    
    and_gate uut (.C(C),.A(A), .B(B));
    
     reg clk=0;
     always #5 clk = ~clk;

  // Test case
  initial begin
    // Initialize inputs
    A = 0;
    B = 0;
    
    #5     
    $display("A=%b, B=%b, C_out=%b", A,B,C);

    A = 0;
    B = 1;
    
    #5    
    $display("A=%b, B=%b,  C_out=%b", A,B,C);
    A = 1;
    B = 0;
    
    #5    
    $display("A=%b, B=%b,  C_out=%b", A,B,C);
    
    A = 1;
    B = 1;
    
    #5     
    $display("A=%b, B=%b, C_out=%b", A,B,C);

    $finish; // End simulation
  end
endmodule