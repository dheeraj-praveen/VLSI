module decoder3to8_tb;

logic a;
logic b;
logic c;
logic y0;
logic y1;
logic y2;
logic y3;
logic y4;
logic y5;
logic y6;
logic y7;

integer i;

decoder3to8 uut(

    .a(a),

    .b(b),

    .c(c),

    .y0(y0),

    .y1(y1),

    .y2(y2),

    .y3(y3),

    .y4(y4),

    .y5(y5),

    .y6(y6),

    .y7(y7)

);

initial begin

    $dumpfile("wave.vcd");
    $dumpvars(0, decoder3to8_tb);

    $display("a b c | y0 y1 y2 y3 y4 y5 y6 y7");
    $display("-------------------------------");

    for (i = 0; i < 8; i ++) begin

        a = i[0];
        b = i[1];
        c = i[2];
        
        #10;

        $display("%b %b %b | %b  %b  %b  %b  %b  %b  %b ", a,b,c,y0,y1,y2,y3,y4,y5,y6,y7);

    end

    $finish;

end

endmodule