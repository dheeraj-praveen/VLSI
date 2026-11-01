module full_adder_tb;

logic a;
logic b;
logic cin;
logic sum;
logic cout;

integer i;

full_adder uut(

    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .cout(cout)

);

initial begin

    $dumpfile("wave.vcd");
    $dumpvars(0, full_adder_tb);

    $display("a b c | s c");
    $display("----------------");

    for (i = 0; i <= 8; i = i + 1) begin

        a = i[0];
        b = i[1];
        cin = i[2];

        #10;
        $display("%b %b  %b   %b   %b", a,b,cin,sum,cout);

    end

    $finish;

end

endmodule