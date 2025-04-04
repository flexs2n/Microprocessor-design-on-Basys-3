`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.03.2025 14:08:30
// Design Name: 
// Module Name: LEDDriver
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


module LEDDriver(

    input CLK,
    input RESET,
    // bus signals
    input [7:0] BUS_ADDR,
    input [7:0] BUS_DATA,
    input BUS_WE,
    // LED output
    output reg [15:0] LEDS
    );
    
    parameter [7:0] LedBaseAddress = 8'hC0;//Base address for LEDs
    
always @(posedge CLK) begin // Trigger on the rising edge of the clock
        if (RESET)  // If the reset signal is active
            LEDS <= 0;  // Reset all LED values to 0
        else if (BUS_WE) begin  // If the processor is writing to memory (Write Enable active)
            if (BUS_ADDR == LedBaseAddress)  // If writing to the lower LED address
                LEDS[7:0] <= BUS_DATA;  // Store the 8-bit value from BUS_DATA into the lower 8 LEDs
            else if (BUS_ADDR == LedBaseAddress + 1)  // If writing to the higher LED address
                LEDS[15:8] <= BUS_DATA << 4;  // Shift BUS_DATA left by 4 bits and store in upper 8 LEDs
        end
    end

    
endmodule