module encoder4to2_tb;

logic d0;
logic d1;
logic d2;
logic d3;
logic a;
logic b;

integer i;

encoder4to2 uut(

    .d0(d0),

    .d1(d1),

    .d2(d2),

    .d3(d3),

    .a(a),

    .b(b)

);
//webeballin = > uh uut encoder4:3 to 
initial begin
    
    $dumpfile("wave.vcd");
    $dumpvars(0, encoder4to2);

    $display("d0 d1 d2 d3 | a b");
    $display("-----------------");

    for (i = 0; i < 4; i++) begin

        d1 = 

    end

end

endmodule