`timescale 1 ns/10 ps

/* variables will be mapped to reserved registers in the order they appear in source files:

Eg: for the following program:

src_ip_addr = [0 : 15]; //'src_ip_addr' will be mapped to RR0 (reserved register #0)
dest_ip_addr = [16 : 30]; // 'dest_ip_addr' will be mapped to RR1 (reserved register #1)

The above code will be translated to the following binary sequence by the compiler:

{STATUS CODE} {NUMBER OF VARIABLES} { START POS FOR VAR #1 } { END POS FOR VAR #1 } { START POS FOR VAR #2 } { END POS FOR VAR #2  }
  0 0 0 0 1       0 0 0 1 1           0 0 0 0 0 0 0 0 0 0 0   0 0 0 0 0 0 1 1 1 1     0 0 0 0 0 0 1 0 0 0 0   0 0 0 0 0 1 1 1 1 1 0

*/

/* ignore the below code, I'm still working on it */
module test_bench;

    localparam PACKET_SIZE = 40;

    localparam SRC_IP_START_POS = 0;
    localparam SRC_IP_END_POS = 15;

    localparam DEST_IP_START_POS = 16;
    localparam DEST_IP_END_POS = 30;

    localparam PORT_START_POS = 31;
    localparam PORT_END_POS = 40;
    
    reg [PACKET_SIZE - 1 : 0] packet;
    wire [1:0]  out;

    selector #(5, 3, 4)  uut(packet, out);

    initial begin
        
    $display("Booting up Openflow Switch...");
    
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
//        $stop;
    
    end

endmodule
