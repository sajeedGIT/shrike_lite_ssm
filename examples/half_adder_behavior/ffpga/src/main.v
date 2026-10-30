module half_adder_Behavioral (
    input A,
    input B,
    output reg Sum,
    output reg Cout,
    output Cout_oe,
    output Sum_oe
    
);
assign Cout_oe = 1;
assign Sum_oe =1;

    always @(*) begin
        Sum  = A ^ B;
        Cout = A & B;
    end

endmodule