`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2026 10:00:41
// Design Name: 
// Module Name: T ff
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

module t_flipflop(input clk,input T,output reg Q=0,output reg Qbar=0);
always @(posedge clk)
begin
 if (T == 1'b0)
 begin
 Q  <= Q;    
 Qbar <= Qbar;
 end
    else
  begin
 Q    <= ~Q;    
 Qbar <= ~Qbar;
    end
end
endmodule