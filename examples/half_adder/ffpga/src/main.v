(*top*) module half_adder( 
(* iopad_external_pin *) input A, 
(* iopad_external_pin *) input B, 
(* iopad_external_pin *) output Sum,
(* iopad_external_pin *) output Sum_oe,
(* iopad_external_pin *) output Cout_oe, 
(* iopad_external_pin *) output Cout  ); 



//OE assign Sum_oe = 1; assign Cout_oe = 1;
assign Sum_oe = 1; 
assign Cout_oe = 1;

assign Sum = A ^ B; 
assign Cout = A & B;

endmodule