`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2026 10:10:24
// Design Name: 
// Module Name: testbench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns/1ps

module flipflop_tb;
reg clk;
reg S, R;
reg J, K;
reg D;
reg T;

wire Q_sr, Qbar_sr;
wire Q_jk, Qbar_jk;
wire Q_d, Qbar_d;
wire Q_t, Qbar_t;

// SR Flip-Flop
    sr_flipflop SR (
        .clk(clk),
        .S(S),
        .R(R),
        .Q(Q_sr),
        .Qbar(Qbar_sr)
);

// JK Flip-Flop
jk_flipflop JK (
    .clk(clk),
    .J(J),
    .K(K),
    .Q(Q_jk),
    .Qbar(Qbar_jk)
);

// D Flip-Flop
d_flipflop DFF (
    .clk(clk),
    .D(D),
    .Q(Q_d),
    .Qbar(Qbar_d)
);

// T Flip-Flop
t_flipflop TFF (
    .clk(clk),
    .T(T),
    .Q(Q_t),
    .Qbar(Qbar_t)
);

// Clock Generation
always #5 clk = ~clk;

initial begin
    clk = 0;

    // Initialize Inputs
    S = 0; R = 0;
    J = 0; K = 0;
    D = 0;
    T = 0;

    // SR Flip-Flop
    #10 S = 1; R = 0;   // Set
    #10 S = 0; R = 1;   // Reset
    #10 S = 0; R = 0;   // Hold

    // JK Flip-Flop
    #10 J = 1; K = 0;   // Set
    #10 J = 0; K = 1;   // Reset
    #10 J = 1; K = 1;   // Toggle
    #20 J = 0; K = 0;   // Hold

    // D Flip-Flop
    #10 D = 1;
    #10 D = 0;
    #10 D = 1;

    // T Flip-Flop
    #10 T = 1;
    #30 T = 0;
    #10 T = 1;

    #20 $finish;
end

initial begin
    $monitor(
    "Time=%0t | SR(Q=%b) JK(Q=%b) D(Q=%b) T(Q=%b)",
    $time, Q_sr, Q_jk, Q_d, Q_t
    );
end

endmodule