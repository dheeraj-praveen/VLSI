module decoder2to4_tb;

logic a;
logic b;
logic en;
logic [3:0]y;

integer i;

decoder2to4 uut(

    .a(a),
    .b(b),
    .en(en),
    .y(y)

);

initial begin
    
    $dumpfile("wave.vcd");
    $dumpvars(0, decoder2to4_tb);

    $display("A B en | Y0 Y1 Y2 Y3");
    $display("-----------------");

    for (i = 0; i < 8; i++) begin

        a = i[0];
        b = i[1];
        en = i[2];

        #10;
        $display("%b %b %b  %b  %b  %b  %b",a,b,en,y[0],y[1],y[2],y[3]);

    end

    $finish;
    
end

endmodule