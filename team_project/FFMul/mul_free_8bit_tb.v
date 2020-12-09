`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/15 23:39:50
// Design Name: 
// Module Name: mul_free_8bit_tb
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


module mul_free_8bit_tb(

    );
    reg [7:0] A, B;
    wire [15:0] mul_8;
    wire [7:0] C;
    integer i,j,k;
    
    mul_free_8bit u10 (.A(A), .B(B), .mul_8(mul_8));
    red_8_module_b1 u11 (.A(mul_8), .red_8(C));
    
    
    
    initial
        begin
        A = 0;
        B = 0;
        
        
        for (i = 0; i < 10; i = i +1)
        begin
            for (j = 0; j < 10; j = j +1)
            begin 
                B = B +1;

                #10;
            end
            A = A +1;
        end
        
        
    end 
    
    
endmodule
