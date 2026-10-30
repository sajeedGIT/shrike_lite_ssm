module comparator_1bit (
    input A,
    input B,
    output GT,
    output EQ,
    output LT,
    output GT_en,
    output EQ_en,
    output LT_en
);

assign GT_en = 1'b1;
assign EQ_en = 1'b1;
assign LT_en = 1'b1;

assign GT = A & ~B;
assign EQ = ~(A ^ B);
assign LT = ~A & B;

endmodule
