// this module performs comparisons on two 2 bit inputs

module chained_comp (input wire [1:0] a, input wire [1:0] b, output wire done);

wire p1, p2;

// insantiate 2 one bit comporators to do the comparision for us
simple_comp comp1 (.in1(a[0]), .in2(b[0]), .out1(p1));
simple_comp comp2 (.in1(a[1]), .in2(b[1]), .out1(p2));

// a and b are equal if indiv. bits are equal
assign done = p1 & p2;

endmodule
