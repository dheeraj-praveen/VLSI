module mux2to1_tb;

logic a;
logic b;
logic sel;
logic y;

integer i;

mux2to1 uut(

    .a(a),

    .b(b),

    .sel(sel),

    .y(y)

);

initial begin
    
    $dumpfile("wave.vcd");
    $dumpvars(0, mux2to1_tb);

    $display("S A B | Y");
    $display("---------");

    for (i = 0; i < 8; i ++) begin

        a = i[0];
        b = i[1];
        sel = i[2];

        #10;

        $display("%b %b %b | %b", sel, a ,b, y);

    end

    $finish;

end

endmodule