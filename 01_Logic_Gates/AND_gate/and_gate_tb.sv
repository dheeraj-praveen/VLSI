module and_gate_tb;

logic a;
logic b;
logic c;

and_gate uut(

    .a(a),

    .b(b),

    .c(c)

);

initial begin

    $dumpfile("wave.vcd");
    $dumpvars(0, and_gate_tb);
    
    $display("A B | C");
    $display("-------");

    a = 0; b = 0; #10;
    $display("%b %b  %b", a, b, c);

    a = 0; b = 1; #10;
    $display("%b %b  %b", a, b, c);

    a = 1; b = 0; #10;
    $display("%b %b  %b", a, b, c);

    a = 1; b = 1; #10;
    $display("%b %b  %b", a, b, c);

    $finish

end

endmodule