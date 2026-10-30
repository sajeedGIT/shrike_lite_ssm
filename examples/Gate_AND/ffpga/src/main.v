module xor_gate(
   output LED,
   output LED_en,
   input a,  
   input b
  );
  
  assign LED_en = 1'b1;
  xor(LED,a,b);
  
endmodule