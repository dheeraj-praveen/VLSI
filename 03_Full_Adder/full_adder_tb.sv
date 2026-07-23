module full_adder_tb;

logic a;
logic b;
logic cin;
logic sum;
logic carry;

integer i;

full_adder uut (

    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .carry(carry)

);

initial begin
    
    $dumpfile("wave.vcd");
    $dumpvars(0, full_adder_tb);

    $display("A B C | S C");
    $display("-----------");

    for (i = 0; i < 8; i = i + 1) begin

        a = i[0];
        b = i[1];
        cin = i[2];

        #10;
        $display("%b %b %b  %b %b", a, b, cin, sum, carry);

    end

    $finish;

end

endmodule