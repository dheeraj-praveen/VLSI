module encoder4to2(

    input logic [3:0] d,
    output logic [1:0] y

);

assign y[0] = d[1] | d[3];
assign y[1] = d[2] | d[3];

endmodule