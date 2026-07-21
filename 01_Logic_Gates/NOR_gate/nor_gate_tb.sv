module nor_gate_tb;

logic a;
logic b;
logic y;

nor_gate uut(

    .a(a),
    .b(b),
    .y(y)

);

initial begin
    
    $dumpfile("wave.vcd");
    $dumpvars(0, nor_gate_tb);

    $display("A B | C");
    $display("-------");

    a = 0; b = 0; #10;
    $display("%b %b  %b", a, b, y);

    a = 0; b = 1; #10;
    $display("%b %b  %b", a, b, y);

    a = 1; b = 0; #10;
    $display("%b %b  %b", a, b, y);

    a = 1; b = 1; #10;
    $display("%b %b  %b", a, b, y);

    $finish;

end

endmodule