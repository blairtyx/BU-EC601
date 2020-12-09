`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/16 00:18:19
// Design Name: 
// Module Name: red_8bit
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

// 8-bit reduction module of FF over 2^8, base polynomial: x^8 + x^7 + x^5 + x^4 + x^2 + x + 1
module red_8_module_b1(
    input[15:0] A,
    output[7:0] red_8
    );
    assign red_8[0] = A[0] ^ A[9] ^ A[8] ^ A[10];  // c0
    assign red_8[1] = A[1] ^ A[8] ^ A[11];  //c1
    assign red_8[2] = A[2] ^ A[8] ^ A[10] ^ A[12];  //c2
    assign red_8[3] = A[3] ^ A[9] ^ A[11] ^ A[13];  //c3
    assign red_8[4] = A[4] ^ A[12] ^ A[14] ^ A[8] ^ A[9];  //c4
    assign red_8[5] = A[5] ^ A[8] ^ A[13];  //c5
    assign red_8[6] = A[6] ^ A[9] ^ A[14];  //c6
    assign red_8[7] = A[7] ^ A[8] ^ A[9];  //c7

endmodule
