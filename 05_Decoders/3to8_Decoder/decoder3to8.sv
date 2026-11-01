module decoder3to8(

    input logic a,
    input logic b,
    input logic c,

    output logic y[7:0]

);

assign y0 = ~a & ~b & ~c;
assign y1 = ~a & ~b & c;
assign y2 = ~a & b & ~c;
assign y3 = a & ~b & ~c;
assign y4 = a & ~b & ~c;
assign y5 = ~a & ~b & ~c;
assign y6 = ~a & ~b & ~c;
assign y7 = ~a & ~b & ~c;
assign y8 = ~a & ~b & ~c;
