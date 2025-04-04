`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.03.2025 14:18:34
// Design Name: Timi Animashahun s2194046
// Module Name: TopLevel
// Project Name: Mouse driver
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


module TopLevel(
   input CLK,
   input RESET,
   inout PS2_CLK,
   inout PS2_DATA,
   output [15:0] LED_OUT,
   output [7:0] HEX_OUT,
   output [3:0] SEG_SELECT,
   output HS,
   output VS,
   output [7:0] COLOUR_OUT,
   output IR_LED
   );
   
   
   wire [1:0] Interrupts_Raise;
   wire [1:0] InterruptsAck;   
   wire [7:0] Bus_Data;
   wire [7:0] Bus_Address;
   wire BusWE;
   wire [7:0] ROM_Address;
   wire [7:0] ROM_Data;

// Processor with ROM interface for instruction fetch
   Processor CPU (
       .CLK(CLK),
       .RESET(RESET),
       .BUS_DATA(Bus_Data),
       .BUS_ADDR(Bus_Address),
       .BUS_WE(BusWE),
       .ROM_ADDRESS(ROM_Address),
       .ROM_DATA(ROM_Data),
       .BUS_INTERRUPTS_RAISE(Interrupts_Raise),
       .BUS_INTERRUPTS_ACK(InterruptsAck)
   );
// Memory modules

// Instruction memory
   ROM rom (
       .CLK(CLK),
       .ADDR(ROM_Address),
       .DATA(ROM_Data)
   );
// Data memory

   RAM ram (
       .CLK(CLK),
       .BUS_DATA(Bus_Data),
       .BUS_ADDR(Bus_Address),
       .BUS_WE(BusWE)
   );
// Peripheral modules (share bus and interrupts)
   Timer timer (// Generates periodic interrupts
       .CLK(CLK),
       .RESET(RESET),
       .BUS_DATA(Bus_Data),
       .BUS_ADDR(Bus_Address),
       .BUS_WE(BusWE),
       .BUS_INTERRUPT_RAISE(Interrupts_Raise[1]),
       .BUS_INTERRUPT_ACK(InterruptsAck[1])
   );
   
   MouseDriver mouse (// PS/2 mouse interface with interrupts
       .CLK(CLK),
       .RESET(RESET),
       .CLK_MOUSE(PS2_CLK),
       .DATA_MOUSE(PS2_DATA),
       .BUS_ADDR(Bus_Address),
       .BUS_DATA(Bus_Data),
       .BUS_WE(BusWE),
       .INTERRUPT_RAISE(Interrupts_Raise[0]),
       .INTERRUPT_ACK(InterruptsAck[0])
   );
   // Output drivers
   
   LEDDriver led (// Controls LEDs via bus writes
       .CLK(CLK),
       .RESET(RESET),
       .BUS_ADDR(Bus_Address),
       .BUS_DATA(Bus_Data),
       .BUS_WE(BusWE),
       .LEDS(LED_OUT)
   );
   
       VGA_Controller vga (
       .CLK(CLK),
       .RESET(RESET),
       .BUS_DATA(Bus_Data),
       .BUS_ADDR(Bus_Address),
       .BUS_WE(BusWE),
       .COLOUR_OUT(COLOUR_OUT),
       .HS(HS),
       .VS(VS)
   );
   
   seg7Driver seg7 ( // 7-segment display controller
       .CLK(CLK),
       .RESET(RESET),
       .BUS_ADDR(Bus_Address),
       .BUS_DATA(Bus_Data),
       .BUS_WE(BusWE),
       .HEX_OUT(HEX_OUT),
       .SEG_SELECT(SEG_SELECT)
   );
   
    IR_Transmitter_Driver ir (
       .CLK(CLK),
       .RESET(RESET),
       .BUS_ADDR(Bus_Address),
       .BUS_DATA(Bus_Data),
       .BUS_WE(BusWE),
       .IR_LED(IR_LED)
   );

   

endmodule
