module encoder8to3(

    input logic [7:0] d,
    output logic [2:0]y

);

logic en1;
logic en2;

logic [1:0] upper_y;
logic [1:0] lower_y;

assign en1 = |d[7:4];
assign en2 = |d[3:0];

encoder4to2 EN1(

    .d(d[7:4]),
    .en(en1),
    .y(upper_y)

);

encoder4to2 EN2(

    .d(d[3:0]),
    .en(en2),
    .y(lower_y)

);

assign y[2] = en1;
assign y[1:0] = en1 ? upper_y : lower_y;

endmodule
