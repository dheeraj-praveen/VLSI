module not_gate_tb;

logic a;
logic b;

not_gate uut(

    .a(a),
    .b(b)

);

initial begin
    
    $dumpfile("wave.vcd");
    $dumpvars(0, not_gate_tb);

    $display("A | B");
    $display("-----");

    a = 1; #10;
    $display("%b  %b", a, b);

    a = 0; #10;
    $display("%b  %b", a, b);

    $finish;

end
endmodule