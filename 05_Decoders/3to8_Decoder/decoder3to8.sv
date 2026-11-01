module decoder3to8(

    input logic a,
    input logic b,
    input logic c,

    output logic [7:0] y

);

logic en1;
logic en2;

assign en1 = ~a;
assign en2 = a;

decoder2to4 D1(

    .a(b),
    .b(c),
    .en(en1),
    .y(y[3:0])

);

decoder2to4 D2(

    .a(b),
    .b(c),
    .en(en2),
    .y(y[7:4])

);

endmodule
