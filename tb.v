`timescale 1 ns/10 ps

module test_bench;

    reg [4:0] packet;
    wire [1:0]  out;

    selector #(5, 3, 4)  uut(packet, out);

    initial begin
        
        $dumpfile("main.vcd");
        $dumpvars(1, packet, out);

        // test vector 1
        packet = 5'b00000;
        # 200;

        // test vector 1
        packet = 5'b11111;
        # 200;

        // test vector 1
        packet = 5'b01010;
        # 200;
        
        // test vector 1
        packet = 5'b01111;
        # 200;

        $dumpflush;
        $stop;
    
    end

endmodule
