module encoder8to3_tb;

logic [7:0] d;
logic [2:0] y;

integer i;

encoder8to3 uut(

    .d(d),
    .y(y)

);


initial begin

    $dumpfile("wave.vcd");
    $dumpvars(0, encoder8to3_tb);

    $display("D7 D6 D5 D4 D3 D2 D1 D0 | Y2 Y1 Y0");
    $display("----------------------------------");

    for (i = 0; i < 8; i++) begin

        d = 8'b00000001 << i;

        #10;
        $display("%b  %b  %b  %b  %b  %b  %b  %b | %b  %b  %b", d[7], d[6], d[5], d[4], d[3], d[2], d[1], d[0], y[2], y[1], y[0]);

    end

    $finish;

end

endmodule