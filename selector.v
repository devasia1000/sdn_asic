// selects specific bits of a packet
module selector
// inputs: SIZE is the size of the packet in bits
//         START is the starting index to grab bits
//         END is the end index to grab bits
#(parameter SIZE = 2, parameter START = 2, parameter END = 2)
(
    input wire [SIZE - 1 : 0]  packet,
    output wire [END - START : 0]  out
);

assign out = packet [END : START];

endmodule
