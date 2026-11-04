module encoder4to2(

    input logic [3:0] d,
    input logic en,
    output logic [1:0] y

);

assign y[0] = en & (d[1] | d[3]);
assign y[1] = en & (d[2] | d[3]);

endmodule