module decoder3to8(

    input logic a,

    input logic b,

    input logic c,

    output logic y0,

    output logic y1,

    output logic y2,

    output logic y3,

    output logic y4,

    output logic y5,

    output logic y6,

    output logic y7

);

decoder2to4 decoder_1(

    .a(b),

    .b(c),

    .en(~a),

    .y0(y0),

    .y1(y1),

    .y2(y2),

    .y3(y3)

);

decoder2to4 decoder_2(

    .a(b),

    .b(c),

    .en(a),

    .y0(y4),

    .y1(y5),

    .y2(y6),

    .y3(y7)

);



endmodule