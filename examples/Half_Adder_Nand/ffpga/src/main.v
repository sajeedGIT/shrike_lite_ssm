(* top *) module half_adder (

    (* iopad_external_pin *) input A,
    (* iopad_external_pin *) input B,

    (* iopad_external_pin *) output Sum,
    (* iopad_external_pin *) output Sum_oe,

    (* iopad_external_pin *) output Cout_oe,
    (* iopad_external_pin *) output Cout
);

    wire n1, n2, n3, n4;

    // Output Enable signals
    assign Sum_oe  = 1'b1;
    assign Cout_oe = 1'b1;

    // --------------------------------
    // XOR using NAND gates
    // Sum = A XOR B
    // --------------------------------
    nand NAND1 (n1, A, B);
    nand NAND2 (n2, A, n1);
    nand NAND3 (n3, B, n1);
    nand NAND4 (Sum, n2, n3);

    // --------------------------------
    // AND using NAND gates
    // Cout = A AND B
    // --------------------------------
    nand NAND5 (n4, A, B);
    nand NAND6 (Cout, n4, n4);

endmodule