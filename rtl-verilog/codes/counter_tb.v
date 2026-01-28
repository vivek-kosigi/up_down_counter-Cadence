`timescale 1ns/1ps

module tb_up_down_top;

    reg clk, rst;
    wire [3:0] up_count, down_count;

    // Instantiate DUT
    up_down_top dut (
        .clk(clk),
        .rst(rst),
        .up_count(up_count),
        .down_count(down_count)
    );

    // Clock generation: 10ns period
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Stimulus
    initial begin
        $display("Time\tReset\tUp\tDown");
        $monitor("%0t\t%b\t%0d\t%0d", $time, rst, up_count, down_count);

        rst = 1;
        #10;
        rst = 0;

        #100;

        $finish;
    end

endmodule
