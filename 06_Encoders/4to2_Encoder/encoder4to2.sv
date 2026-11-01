module encoder4to2(

    input logic d0,

    input logic d1,

    input logic d2,

    input logic d3,

    output logic a,

    output logic b
    
);

assign a = d2 + d3;

assign b = d1 + d3;

endmodule