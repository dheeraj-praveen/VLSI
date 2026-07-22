module half_adder_tb;

logic a;
logic b;
logic sum;
logic carry;

integer i;

half_adder uut(

    .a(a),
    .b(b),
    .sum(sum),
    .carry(carry)

);

initial begin
    
    $dumpfile("wave.vcd");
    $dumpvars(0, half_adder_tb);

    $display("A B | S C");
    $display("---------");

    for(i = 0; i < 4; i = i + 1) begin

        a = i[0];
        b = i[1];

        #10

        $display("%b %b  %b %b", a, b, sum, carry);

    end

    $finish;

end

endmodule