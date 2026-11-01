module decoder3to8_tb;

logic a;
logic b;
logic c;
logic [7:0] y;

integer i;

decoder3to8 uut(

    .a(a),
    .b(b),
    .c(c),
    .y(y)

);

initial begin

    $dumpfile("wave.vcd");
    $dumpvars(0, decoder3to8_tb);

    $display("a b c | y7 y6 y5 y4 y3 y2 y1 y0");
    $display("-------------------------------");


    for (i = 0; i < 8; i = i + 1) begin

        a = i[2];
        b = i[1];
        c = i[0];

        #10;

        $display("%b %b %b | %b %b %b %b %b %b %b %b",
                 a, b, c,
                 y[7], y[6], y[5], y[4],
                 y[3], y[2], y[1], y[0]);

    end

    $finish;

end

endmodule

