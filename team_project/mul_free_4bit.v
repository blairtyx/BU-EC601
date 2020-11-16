`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/15 22:12:08
// Design Name: 
// Module Name: mul_free_4bit
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


module mul_free_4bit(
    input [3:0] A,
    input [3:0] B,
    output [7:0] mul_4
    );
    wire [3:0] c0, c1, c2,c7;
    wire [1:0] A_e, A_o, B_e, B_o; 
    
    assign A_e = {A[2], A[0]};
    assign A_o = {A[3], A[1]};
    assign B_e = {B[2], B[0]};
    assign B_o = {B[3], B[1]};
    
    mul_free_2bit u0 (.A(A_e), .B(B_e), .mul_2(c0));  // Ae * Be
    mul_free_2bit u1 (.A(A_e ^ A_o), .B(B_e ^ B_o), .mul_2(c1));
    mul_free_2bit u2 (.A(A_o), .B(B_o), .mul_2(c2));
    
    assign c7 = c0 ^ c1 ^ c2;
    assign mul_4[1] = c7[0];
    assign mul_4[3] = c7[1];
    assign mul_4[5] = c7[2];
    assign mul_4[7] = 1'b0;
    

    assign mul_4[0] = c0[0];
    assign mul_4[2] = c0[1] ^ c2[0];    
    assign mul_4[4] = c0[2] ^ c2[1];
    assign mul_4[6] = c2[2];
endmodule
