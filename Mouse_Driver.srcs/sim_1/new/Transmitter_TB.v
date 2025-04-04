`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.02.2025 09:35:30
// Design Name: 
// Module Name: Transmitter_TB
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


module Transmitter_TB(
MouseTransmitter uut(
    .RESET(),
    .CLK(),
    .CLK_MOUSE_IN(),
    .CLK_MOUSE_OUT_EN(),
    .DATA_MOUSE_IN(),
    
    );
    input RESET,
        input CLK,
        
        input CLK_MOUSE_IN,// CLK coming from the PS/2 device 
        output CLK_MOUSE_OUT_EN, // actively driving the clock line 
        
        input DATA_MOUSE_IN, //listening the line 
        output DATA_MOUSE_OUT, // the actual information (bits) 
        output DATA_MOUSE_OUT_EN, // actively driving the data line 
        
        input SEND_BYTE,
        input [7:0] BYTE_TO_SEND,
        output  BYTE_SENT
endmodule
