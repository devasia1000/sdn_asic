`timescale 1 ns/10 ps

module test_bench;

    reg [1:0] test_in0, test_in1;
    wire test_out;

    chained_comp uut(test_in0, test_in1, test_out);

    initial begin

        // these dump commands don't seem to be helping
        $dumpfile("main.vcd");
        $dumpvars(0, test_in0, test_in1, test_out);

        $dumpall;
        
        // test vector 1
        test_in0 = 2'b00;
        test_in1 = 2'b00;
        # 200;

        $dumpall;

        // test vector 2
        test_in0 = 2'b01;
        test_in1 = 2'b00;
        # 200;

        $dumpall;
        
        // test vector 3
        test_in0 = 2'b01;
        test_in1 = 2'b11;
        # 200;
        
        $dumpall;
        
        // test vector 4
        test_in0 = 2'b10;
        test_in1 = 2'b10;
        # 200;
        
        $dumpall;
        
        $dumpflush;
        
        $stop;
    
    end

endmodule
