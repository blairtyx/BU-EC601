`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/15 22:02:40
// Design Name: 
// Module Name: mul_free_2bit
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


module mul_free_2bit(
    input [1:0] A,
    input [1:0] B,
    output [3:0] mul_2
    );
    

    assign mul_2[0] = A[0] & B[0];
    assign mul_2[2] = A[1] & B[1];
    assign mul_2[1] = ((A[0] ^ A[1]) & (B[0] ^ B[1])) ^ (mul_2[2] ^ mul_2[0]);
    
endmodule
