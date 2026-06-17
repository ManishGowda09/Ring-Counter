`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2026 09:23:42
// Design Name: 
// Module Name: Ring_Counter
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


module Ring_Counter(
    input clk,
    input reset,
    output reg [3:0] count);
    
    reg [3:0]temp;
    
    always @(posedge clk or reset)begin
       if( reset == 1)
        begin
        temp = 4'b1000;
       end
       else begin
        temp = {temp[0],temp[3:1]};
       end
       assign count = temp;
    end
endmodule

module Ring_Counter_tb();
reg clk,reset;
wire [3:0]count;
Ring_Counter u0(.clk(clk), .reset(reset), .count(count));
initial begin
clk=1'b0;
forever #50 clk =~clk;
end
initial begin
reset = 1'b1;
#100;
reset = 1'b0;
#800;
$finish;
end
endmodule
