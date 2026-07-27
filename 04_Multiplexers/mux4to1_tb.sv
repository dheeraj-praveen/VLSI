module mux4to1_tb;

logic a;
logic b;
logic c;
logic d;
logic sel1;
logic sel2;
logic y;

integer i;

mux4to1 uut(

    .a(a),

    .b(b),

    .c(c),

    .d(d),

    .sel1(sel1),

    .sel2(sel2),

    .y(y)

);

initial begin
    
    $dumpfile("wave.vcd");
    $dumpvars(0, mux4to1_tb);

    $display("S1 S0 A B C D | Y");
    $display("-----------------");

    for (i = 0; i < 64; i++) begin

        a = i[0];
        b = i[1];
        c = i[2];
        d = i[3];
        sel1 = i[4];
        sel2 = i[5];

        #10;

        $display("%b %b %b %b %b %b | %b", sel1, sel2, a, b, c, d, y);

    end

    $finish;

end

endmodule