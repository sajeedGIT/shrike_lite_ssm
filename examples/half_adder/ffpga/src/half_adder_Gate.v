// Custom Module

(* top *) module half_adder_Gate(

    (* iopad_external_pin *) input A,
    (* iopad_external_pin *) input B,

    (* iopad_external_pin *) output Sum,
    (* iopad_external_pin *) output Sum_oe,

    (* iopad_external_pin *) output Cout_oe,
    (* iopad_external_pin *) output Cout
);

    // Output Enable signals
    assign Sum_oe  = 1'b1;
    assign Cout_oe = 1'b1;

    // Gate-level implementation
    xor XOR1 (Sum, A, B);
    and AND1 (Cout, A, B);

endmodule
