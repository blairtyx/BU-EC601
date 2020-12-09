`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/15 22:01:45
// Design Name: 
// Module Name: FF_MUX_Free
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


module FF_MUX_Free(
    input [7:0] A,
    input [7:0] B,
    output [7:0] C
    );
    wire mul_8;
    
    mul_free_8bit t1 (
    .A(A),
    .B(B),
    .mul_8(mul_8)
    );
    
    red_8_module_b1 t2(
    .A(mul_8),
    .red_8(C)
    );
    
endmodule
