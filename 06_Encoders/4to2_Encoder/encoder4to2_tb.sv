module encoder4to2_tb;

logic [3:0] d;
logic en;
logic [1:0] y;

integer i;

encoder4to2 uut(

    .d(d),
    .en(en),
    .y(y)

);

initial begin
    
    $dumpfile("wave.vcd");
    $dumpvars(0, encoder4to2_tb);

    $display("d3 d2 d1 d0 | y1 y0");
    $display("-------------------");

    for (i = 0; i < 32; i++) begin

        d[0] = i[0];
        d[1] = i[1];
        d[2] = i[2];
        d[3] = i[3];
        en = i[4];

        #10;
        $display("%b  %b  %b  %b | %b %b", d[3], d[2], d[1], d[0], y[1], y[0]);

    end

    $finish;

end

endmodule