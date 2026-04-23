`timescale 1ns/1ps

module xor_gate_4_tb;

  reg a, b, c, d;
  wire y;

  wire y_ref;
  
  wire mismatch;
  
  xor_gate_4 uut 
    (
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .y(y)
    );
    
  assign y_ref = a ^ b ^ c ^ d;
  
  assign mismatch = (y !== y_ref);
  
  integer i;
  
  initial begin
      $dumpfile("xor_gate_4.vcd");  
      $dumpvars(0, xor_gate_4_tb);
      
      for (i = 0; i < 16; i = i + 1) begin
          {a, b, c, d} = i[3:0]; 
          #10; 
      end
      
      $finish;
  end

endmodule