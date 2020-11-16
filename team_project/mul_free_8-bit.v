`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/15 22:37:44
// Design Name: 
// Module Name: mul_free_8-bit
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


module mul_free_8bit(
    input [7:0] A,
    input [7:0] B,
    output [16:0] mul_8
    );
    wire [7:0] c0, c1, c2, c7;
    wire [3:0] A_e, A_o, B_e, B_o; 
    assign A_e = {A[6], A[4], A[2], A[0]};
    assign A_o = {A[7], A[5], A[3], A[1]};
    assign B_e = {B[6], B[4], B[2], B[0]};
    assign B_o = {B[7], B[5], B[3], B[1]};
    
    mul_free_4bit u3 (.A(A_e), .B(B_e), .mul_4(c0));
    mul_free_4bit u4 (.A(A_e ^ A_o), .B(B_e ^ B_o), .mul_4(c1));
    mul_free_4bit u5 (.A(A_o), .B(B_o), .mul_4(c2));
    
    assign c7 = c0 ^ c1 ^ c2;
    assign mul_8[1] = c7[0];
    assign mul_8[3] = c7[1];
    assign mul_8[5] = c7[2];
    assign mul_8[7] = c7[3];
    assign mul_8[9] = c7[4];
    assign mul_8[11] = c7[5];
    assign mul_8[13] = c7[6];
    assign mul_8[15] = 1'b0;
    
    assign mul_8[0] = c0[0];
    assign mul_8[2] = c0[1] ^ c2[0];
    assign mul_8[4] = c0[2] ^ c2[1];
    assign mul_8[6] = c0[3] ^ c2[2];
    assign mul_8[8] = c0[4] ^ c2[3];
    assign mul_8[10] = c0[5] ^ c2[4];
    assign mul_8[12] = c0[6] ^ c2[5];
    assign mul_8[14] = c2[6];
    
endmodule
