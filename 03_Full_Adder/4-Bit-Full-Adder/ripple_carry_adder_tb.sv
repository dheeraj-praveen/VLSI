module ripple_carry_adder_tb;

logic [3:0] a;
logic [3:0] b;
logic cin;
logic [3:0] sum;
logic cout;

integer i;
integer j;

ripple_carry_adder uut(

    .a(a),

    .b(b),

    .cin(cin),

    .sum(sum),

    .cout(cout)

);

initial begin
    
    $dumpfile("wave.vcd");
    $dumpvars(0, ripple_carry_adder_tb);

    for (i = 0; i < 16; i++) begin

        for (j = 0; j < 16; j++) begin

            a = i;

            b = j;

            cin = 0;

            #10;

            $display("A : %b, B : %b, CIN : %b, SUM : %b, COUT : %b", a, b, cin, sum, cout);

        end

    end

    $finish;

end

endmodule