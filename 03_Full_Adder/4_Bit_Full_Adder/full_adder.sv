module full_adder(

    input logic a,
    input  logic b,
    input logic cin,
    output logic sum,
    output logic cout

);

logic c1;
logic c2;
logic s1;

half_adder HA1(

    .a(a),
    .b(b),
    .sum(s1),
    .carry(c1)

);

half_adder HA2(

    .a(s1),
    .b(cin),
    .sum(sum),
    .carry(c2)
);

or_gate OR(

    .a(c1),
    .b(c2),
    .y(cout)

);

endmodule