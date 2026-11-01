module mux4to1_tb;

logic a;
logic b;
logic c;
logic d;
logic s1;
logic s2;
logic y;

integer i;

mux4to1 uut(

    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .s1(s1),
    .s2(s2),
    .y(y)

);

initial begin

    $dumpfile("wave.vcd");
    $dumpvars(0, mux4to1_tb);

    $display("A B C D S1 S2 | Y");
    $display("-----------------");

    for (i = 0; i < 64; i++) begin

        a = i[0];
        b = i[1];
        c = i[2];
        d = i[3];
        s1 = i[4];
        s2 = i[5];

        #10;

        $display("%b %b %b %b %b %b | %b", a,b,c,d,s1,s2,y);

    end

    $finish;

end

endmodule