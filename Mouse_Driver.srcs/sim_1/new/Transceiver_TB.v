`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.02.2025 17:28:44
// Design Name: 
// Module Name: Transceiver_TB
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


module Transceiver_TB();

    // Inputs
    reg RESET;
    reg CLK;
    reg CLK_MOUSE;
    reg DATA_MOUSE;
    

    // Outputs
    wire [3:0] MouseStatus;
    wire [7:0] MouseX;
    wire [7:0] MouseY;

    // Bidirectional signals (modeled as reg for driving)
    wire CLK_MOUSE_BIDIR;
    wire DATA_MOUSE_BIDIR;
    
   
        // Instantiate the MouseTransceiver module
    MouseTransceiver uut (
        .RESET(RESET),
        .CLK(CLK),
        .CLK_MOUSE(CLK_MOUSE_BIDIR),
        .DATA_MOUSE(DATA_MOUSE_BIDIR),
        .MouseStatus(MouseStatus),
        .MouseX(MouseX),
        .MouseY(MouseY)

        
    );

    // Assign bidirectional signals (simulate mouse driving)
    assign CLK_MOUSE_BIDIR = CLK_MOUSE;
    assign DATA_MOUSE_BIDIR = DATA_MOUSE;

    // Clock generation (1 MHz system clock)
    initial begin
        CLK = 0;
        forever #5 CLK = ~CLK;  // 1 MHz clock (period = 1 µs)
    end

    // Mouse clock generation (10 kHz)
    initial begin
        CLK_MOUSE = 0;
        forever #10 CLK_MOUSE = ~CLK_MOUSE; 
        DATA_MOUSE<= 0; // 10 kHz clock (period = 100 µs)
    end

    // Test sequence
    initial begin
        // Initialize inputs
        RESET = 1;
          // High-Z (mouse not driving)

        // Apply reset
        #10;
        RESET = 0;

        // Test Case 1: Simulate mouse initialization and movement
        // ------------------------------------------------
        // Wait for host to send initialization command (0xFF)
        #50;  // Wait 200 µs
            // Simulate a valid 11-bit data packet (start bit = 0, stop bit = 1, parity = odd)
        // Example: 11111010 (valid data)
        DATA_MOUSE = 0; // Start bit
        #20;
        DATA_MOUSE= 0; // Bit 1
        #20;
        DATA_MOUSE= 1; // Bit 2
        #20;
        DATA_MOUSE= 0; // Bit 3
        #20;
        DATA_MOUSE = 1; // Bit 4
        #20;
        DATA_MOUSE = 1; // Bit 5
        #20;
        DATA_MOUSE= 1; // Bit 6
        #20;
        DATA_MOUSE= 1; // Bit 7
        #20;
        DATA_MOUSE = 1; // Bit 8
        #20;
        DATA_MOUSE = 1; // Bit 9 (parity bit, odd parity)
        #20;
        DATA_MOUSE= 1; // Stop bit
        #20;
  
        // Wait for processing
        #20;

        // Force parity error

   

        // End simulation
        $stop;
    end

    // Task to send a valid 11-bit mouse packet
    task send_mouse_packet;
        input [7:0] data_byte;
        reg parity_bit;
        begin
            parity_bit = ^data_byte;  // Odd parity

            // Send start bit (0) on falling edge of CLK_MOUSE
            #30;  // Wait for next falling edge
            DATA_MOUSE = 0;

            // Send 8 data bits (LSB first)
            repeat (8) begin
                #20;  // Wait for next falling edge
                DATA_MOUSE = data_byte[0];
                data_byte = data_byte >> 1;
            end

            // Send parity bit
            #20;
            DATA_MOUSE = parity_bit;

            // Send stop bit (1)
            #20;
            DATA_MOUSE = 1;
        end
    endtask

    
   

 
endmodule
