module full_adder(

    input logic a,

    input logic b,

    input logic cin,

    output logic sum,

    output logic carry

);

logic sum1;

logic carry1;

logic carry2;

half_adder HA1(

    .a(a),
    .b(b),
    .sum(sum1),
    .carry(carry1)

);

half_adder HA2(

    .a(sum1),
    .b(cin),
    .sum(sum),
    .carry(carry2)

);

or_gate OR(

    .a(carry1),
    .b(carry2),
    .c(carry)

);

endmodule