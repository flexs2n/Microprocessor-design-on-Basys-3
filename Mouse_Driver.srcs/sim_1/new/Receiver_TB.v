`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.02.2025 11:26:40
// Design Name: 
// Module Name: Receiver_TB
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


module Receiver_TB(
     

);
reg RESET;
reg CLK;
reg CLK_MOUSE_IN;
reg DATA_MOUSE_IN;
reg READ_ENABLE;

// Outputs
wire [7:0] BYTE_READ;
wire [1:0] BYTE_ERROR_CODE;
//wire byte_ready;
//wire point;

// Instantiate the MouseReceiver module
MouseReceiver uut (
   .RESET(RESET),
   .CLK(CLK),
   .CLK_MOUSE_IN(CLK_MOUSE_IN),
   .DATA_MOUSE_IN(DATA_MOUSE_IN),
   .READ_ENABLE(READ_ENABLE),
   .BYTE_READ(BYTE_READ),
   .BYTE_ERROR_CODE(BYTE_ERROR_CODE),
   .BYTE_READY(byte_ready)
//   .Point(point)
   );

// Clock generation
initial begin
    
    CLK = 0;
    forever #5 CLK = ~CLK; // 10 ns clock period
 end 
    
initial begin 
     
    CLK_MOUSE_IN = 0;
    forever #10 CLK_MOUSE_IN = ~CLK_MOUSE_IN; // 20 ns mouse clock period
end

// Test sequence
initial begin
    #100
    // Initialize inputs
    RESET = 1;
    DATA_MOUSE_IN = 0;
    READ_ENABLE = 0;

    // Apply reset
    #20;
    RESET = 0;

    // Enable reading
   #20;
    READ_ENABLE = 1;

    // Simulate a valid 11-bit data packet (start bit = 0, stop bit = 1, parity = odd)
    // Example: 11111010 (valid data)
    DATA_MOUSE_IN = 0; // Start bit
    #20;
    DATA_MOUSE_IN = 1; // Bit 1
    #20;
    DATA_MOUSE_IN = 1; // Bit 2
    #20;
    DATA_MOUSE_IN = 0; // Bit 3
    #20;
    DATA_MOUSE_IN = 1; // Bit 4
    #20;
    DATA_MOUSE_IN = 1; // Bit 5
    #20;
    DATA_MOUSE_IN = 1; // Bit 6
    #20;
    DATA_MOUSE_IN = 1; // Bit 7
    #20;
    DATA_MOUSE_IN = 1; // Bit 8
    #20;
    DATA_MOUSE_IN = 0; // Bit 9 (parity bit, odd parity)
    #20;
    DATA_MOUSE_IN = 1; // Stop bit
    #20;
   
    READ_ENABLE = 0;
    #20;
    READ_ENABLE = 1;
    

      // Simulate a valid 11-bit data packet (start bit = 0, stop bit = 1, parity = odd)
           // Example: 11111010 (valid data)
           
       
   DATA_MOUSE_IN = 0; // Start bit
   #20;
   DATA_MOUSE_IN = 0; // Bit 1
   #20;
   DATA_MOUSE_IN = 1; // Bit 2
   #20;
   DATA_MOUSE_IN = 1; // Bit 3
   #20;
   DATA_MOUSE_IN = 1; // Bit 4
   #20;
   DATA_MOUSE_IN = 1; // Bit 5
   #20;
   DATA_MOUSE_IN = 1; // Bit 6
   #20;
   DATA_MOUSE_IN = 1; // Bit 7
   #20;
   DATA_MOUSE_IN = 1; // Bit 8
   #20;
   DATA_MOUSE_IN = 0; // Bit 9 (parity bit, odd parity)
   #20;
   DATA_MOUSE_IN = 1; // Stop bit
   #20; 
       

    
    // Wait for the module to process the data
    #100;

  
    // End simulation
    $stop;
end

    
endmodule
