//Full adder coding example
(*top*)module Full_Adder( (* iopad_external_pin *) input A, 
(* iopad_external_pin *) input B, 
(* iopad_external_pin *) input Cin, 
(* iopad_external_pin *) output Sum,  
(* iopad_external_pin *) output Sum_oe, 
(* iopad_external_pin *) output Cout_oe, 
(* iopad_external_pin *) output Cout  ); 

wire n1,n2,n3; 
//OE 
assign Sum_oe = 1; 
assign Cout_oe = 1; 

//port mapping  
Half_Adder   Half_Adder_1 (.x(A), .y(B), .sum(n2) , .carry(n1));
Half_Adder   Half_Adder_2 (.sum(Sum), .carry(n3), .x(n2) , .y(Cin)); 
OR_Gate      OR_Gate_1(.a(n1), .b(n3),.c(Cout));

endmodule