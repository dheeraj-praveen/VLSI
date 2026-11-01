module half_adder_tb;

logic a;
logic b;
logic sum;
logic carry;

half_adder uut(

    .a(a),
    .b(b),
    .sum(sum),
    .carry(carry)

);

initial begin
    
    $dumpfile("wave.vcd");
    $dumpvars(0, half_adder_tb);

    $display("a b  sum  carry");
    $display("---------------");

    a = 0; b = 0; #10;
    $display("%b %b   %b   %b", a, b, sum, carry);

    a = 0; b = 1; #10;
    $display("%b %b   %b   %b", a, b, sum, carry);

    a = 1; b = 0; #10;
    $display("%b %b   %b   %b", a, b, sum, carry);

    a = 1; b = 1; #10;
    $display("%b %b   %b   %b", a, b, sum, carry);

    $finish;

end

endmodule