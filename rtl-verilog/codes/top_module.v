module up_down_top (
    input clk,
    input rst,
    output [3:0] up_count,
    output [3:0] down_count
);

    up_counter u1 (
        .clk(clk),
        .rst(rst),
        .count(up_count)
    );

    down_counter u2 (
        .clk(clk),
        .rst(rst),
        .count(down_count)
    );

endmodule
