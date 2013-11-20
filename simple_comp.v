module simple_comp (input wire in1, input wire in2, output wire out1);

// perform comparison according to truth table
assign p1 = ~in1 & ~in2;
assign p2 = in1 & in2;

// assign result to out1
assign out1 = in1 | in2; 

endmodule
