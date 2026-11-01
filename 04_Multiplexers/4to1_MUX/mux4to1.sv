module mux4to1(

    input logic a,
    input logic b,
    input logic c,
    input logic d,

    input logic s1,
    input logic s2,

    output logic y

);

logic y1;
logic y2;

mux2to1 MUX1(

    .a(a),
    .b(b),
    .sel(s1),
    .y(y1)

);

mux2to1 MUX2(

    .a(c),
    .b(d),
    .sel(s1),
    .y(y2)

);

mux2to1 MUX3(

    .a(y1),
    .b(y2),
    .sel(s2),
    .y(y)

);

endmodule