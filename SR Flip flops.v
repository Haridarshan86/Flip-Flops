`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2026 09:46:10
// Design Name: 
// Module Name: SR Flip flops
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

//module sr_flipflop (input S,input R,output Q,output Qbar);
//nor (Qbar, S, Q);
//nor (Q, R, Qbar);
//endmodule




module sr_flipflop(input clk,input S,input R, output reg Q, output reg Qbar);

always @(posedge clk)
begin
    if (S == 0 && R == 0)
     begin
        Q    <= Q;      
        Qbar <= Qbar;
    end
    else if (S == 0 && R == 1)
    begin
        Q <= 1'b0;   
        Qbar <= 1'b1;
    end
 else if (S == 1 && R == 0)
    begin      Q    <= 1'b1; 
        Qbar <= 1'b0;
    end
  else
    begin
Q    <= 1'bx;   
Qbar <= 1'bx;
 end
end

endmodule