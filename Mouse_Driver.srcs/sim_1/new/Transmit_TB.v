`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.02.2025 16:16:32
// Design Name: 
// Module Name: Transmit_TB
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


module Transmit_TB(

    );


// Inputs
reg RESET;
reg CLK;
reg CLK_MOUSE_IN;
reg SEND_BYTE;
reg [7:0] BYTE_TO_SEND;

// Outputs
wire CLK_MOUSE_OUT_EN;
wire DATA_MOUSE_OUT;
wire DATA_MOUSE_OUT_EN;
wire BYTE_SENT;

//wire Data;
//wire Trig;

// Instantiate the MouseTransmitter module
MouseTransmitter uut (
    .RESET(RESET),
    .CLK(CLK),
    .CLK_MOUSE_IN(CLK_MOUSE_IN),
    .CLK_MOUSE_OUT_EN(CLK_MOUSE_OUT_EN),
    .DATA_MOUSE_IN(1'b0), // Not used in this testbench
    .DATA_MOUSE_OUT(DATA_MOUSE_OUT),
    .DATA_MOUSE_OUT_EN(DATA_MOUSE_OUT_EN),
    .SEND_BYTE(SEND_BYTE),
    .BYTE_TO_SEND(BYTE_TO_SEND),
    .BYTE_SENT(BYTE_SENT)
    //.Data_point(Data),
    //.Trig_Transmitt(Trig)
    
    
);

// Clock generation
initial begin
    #100
    CLK = 0;
    forever #5 CLK = ~CLK; // 10 ns clock period
end

// Mouse clock generation
initial begin
    #100
    CLK_MOUSE_IN = 0;
    forever #10 CLK_MOUSE_IN = ~CLK_MOUSE_IN; // 20 ns mouse clock period
    
end

// Test sequence
initial begin
    #100
    // Initialize inputs
    RESET = 1;
    SEND_BYTE = 0;
    

    // Apply reset
    #20;
    RESET = 0;

    // Wait for a few clock cycles
    #5

    // Test case 1: Send a valid byte (e.g., 8'hA5)
    BYTE_TO_SEND = 8'h67; //  8'b01100111;
    SEND_BYTE = 1; // Assert SEND_BYTE
    #20;
    
    // Wait for the transmission to complete
    #500;



    // End simulation
    $stop;
end

endmodule
