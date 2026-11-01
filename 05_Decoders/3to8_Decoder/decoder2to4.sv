module decoder2to4(

    input logic a,
    input logic b,
    input logic en,

    output logic [3:0]y

);

assign y[0] = en & ~a & ~b;
assign y[1] = en & a & ~b;
assign y[2] = en & ~a & b;
assign y[3] = en & a & b;

endmodule