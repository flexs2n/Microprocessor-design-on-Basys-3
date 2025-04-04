`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.03.2025 14:05:42
// Design Name: 
// Module Name: seg7Driver
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


module seg7Driver(
 input CLK,
   input RESET,
   // bus signals
   input [7:0] BUS_ADDR,
   input [7:0] BUS_DATA,
   input BUS_WE,
   // 7 seg display outputs
   output [7:0] HEX_OUT,
   output [3:0] SEG_SELECT
   );
   // Define the base address for the 7-segment display memory mapping
   parameter [7:0] Seg7BaseAddress = 8'hD0;  
   
   // Register to store the 16-bit value to be displayed
   reg [15:0] ValueIn;
   
   // Instantiation of the 7-segment display interface module
   SegAndLED Inter (
       .CLK(CLK),             // Clock signal
       .VALUE_IN(ValueIn),    // 16-bit input value to be displayed
       .HEX_OUT(HEX_OUT),     // 7-segment display output
       .SEG_SELECT(SEG_SELECT) // Controls which digit is displayed
   );
   
   // Always block triggered on the rising edge of the clock
   always @(posedge CLK) begin
       if (RESET) // If reset is active
           ValueIn <= 0; // Clear the display value (set to zero)
       else if (BUS_WE) begin // If the processor is writing data to memory
           if (BUS_ADDR == Seg7BaseAddress) // If writing to the higher byte (first 8 bits)
               ValueIn[15:8] <= BUS_DATA; // Store BUS_DATA in the upper 8 bits of ValueIn
           else if (BUS_ADDR == Seg7BaseAddress + 1) // If writing to the lower byte (last 8 bits)
               ValueIn[7:0] <= BUS_DATA; // Store BUS_DATA in the lower 8 bits of ValueIn
       end
   end

   
endmodule