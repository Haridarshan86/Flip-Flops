module d_flipflop(input clk,input D,output reg Q,output reg Qbar);
always @(posedge clk)
begin
Q <= D;
 Qbar <= ~D;
end
endmodule