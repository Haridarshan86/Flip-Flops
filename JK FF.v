`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2026 09:55:02
// Design Name: 
// Module Name: JK FF
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

module jk_flipflop(input clk,input J,input K,output reg Q,output reg Qbar);

always @(posedge clk)
begin
 if (J == 0 && K == 0)
    begin
  Q <= Q;     
  Qbar <= Qbar;
  end
 else if (J == 0 && K == 1)
    begin
 Q    <= 1'b0;  
 Qbar <= 1'b1;
 end
    else if (J == 1 && K == 0)
    begin
 Q    <= 1'b1;  
 Qbar <= 1'b0;
    end
    else
    begin
 Q <= ~Q;   
 Qbar <= ~Qbar;
  end
end
endmodule