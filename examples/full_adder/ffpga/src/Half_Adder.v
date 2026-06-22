// Custom Module

module Half_Adder
(input x,y, output sum,carry ); 

assign sum = x ^ y; 
assign carry = x & y;

endmodule
