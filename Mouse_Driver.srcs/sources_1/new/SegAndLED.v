`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.02.2025 13:33:46
// Design Name: 
// Module Name: SegAndLED
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


module SegAndLED(
    input CLK,
    input [15:0] VALUE_IN,
    output [7:0] HEX_OUT,
    output [3:0] SEG_SELECT
);

    wire [1:0] StrobeCount;
    wire [4:0] MuxOut;
    wire Bit17TriggOut;
    wire [15:0] RegionValue;

    // 🧠 Step 1: Compute Region Encoding from X/Y coordinates
    Grid_decoder region_logic (
        .valueIn(VALUE_IN),
        .valueOut(RegionValue)
    );

    // Step 2: Clock divider (100Hz strobe)
    Generic_counter # (.COUNTER_WIDTH(17), .COUNTER_MAX(99999)) Bit17Counter (
        .RESET(1'b0),
        .CLK(CLK),
        .ENABLE_IN(1'b1),
        .TRIG_OUT(Bit17TriggOut)
    );

    //  Step 3: 2-bit strobe counter to switch digits
    Generic_counter # (.COUNTER_WIDTH(2), .COUNTER_MAX(3)) Bit2Counter (
        .RESET(1'b0),
        .CLK(CLK),
        .ENABLE_IN(Bit17TriggOut),
        .COUNT(StrobeCount)
    ); 

    // Step 4: Digit multiplexer - selects nibble from RegionValue
    Multiplexer_4way strobe_mult (
        .CONTROL(StrobeCount),
        .IN0({1'b0, RegionValue[3:0]}),
        .IN1({1'b0, RegionValue[7:4]}),
        .IN2({1'b1, RegionValue[11:8]}),
        .IN3({1'b0, RegionValue[15:12]}),
        .OUT(MuxOut)
    );

    // Step 5: Binary-to-7seg Display
    Seg7Display seg (
        .SEG_SELECT_IN(StrobeCount),
        .BIN_IN(MuxOut[3:0]),
        .DOT_IN(),
        .SEG_SELECT_OUT(SEG_SELECT),
        .HEX_OUT(HEX_OUT)
    );   

endmodule

