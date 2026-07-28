module decoder2to4(

    input logic a,

    input logic b,

    input logic en,

    output logic y0,

    output logic y1,
    
    output logic y2,

    output logic y3

);

assign y0 = en & ~a & ~b;

assign y1 = en & ~a & b;

assign y2 = en & a & ~b;

assign y3 = en & a & b;

endmodule