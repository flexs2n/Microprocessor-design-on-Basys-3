`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: ZheyuYou s1997544
// 
// Create Date: 2021/03/15 12:26:32
// Design Name: 
// Module Name: VGA_Sig_Gen
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


module VGA_Sig_Gen(
    input CLK,                     // System clock (assumed 100 MHz)
    input RESET,                   // Reset signal
    // Colour Configuration Interface
    input [15:0] CONFIG_COLOURS,   // 16-bit color configuration (8-bit foreground, 8-bit background)
    // Frame Buffer (Dual Port Memory) Interface
    output DPR_CLK,                // Clock for frame buffer
    output [14:0] VGA_ADDR,        // 15-bit address for frame buffer
    input VGA_DATA,                // 1-bit pixel data from frame buffer
    // VGA Port Interface
    output reg VGA_HS,             // Horizontal sync signal
    output reg VGA_VS,             // Vertical sync signal
    output reg [7:0] VGA_COLOUR    // 8-bit color output to VGA
);

    // **Clock Generation**
    // Generate a 25 MHz VGA_CLK from CLK (assuming CLK is 100 MHz) using a cleaner divide-by-4 approach
    reg [1:0] clk_div;
    always @(posedge CLK) begin
        if (RESET)
            clk_div <= 0;
        else
            clk_div <= clk_div + 1;
    end
    wire VGA_CLK = clk_div[1]; // 25 MHz clock (100 MHz / 4)

    // **VGA Timing Parameters**
    // Horizontal Parameters
    parameter HTs    = 800;  // Total horizontal time (pixels)
    parameter HTpw   = 96;   // Horizontal sync pulse width
    parameter HTDisp = 640;  // Horizontal display time
    parameter Hbp    = 48;   // Horizontal back porch
    parameter Hfp    = 16;   // Horizontal front porch

    // Vertical Parameters
    parameter VTs    = 521;  // Total vertical time (lines)
    parameter VTpw   = 2;    // Vertical sync pulse width
    parameter VTDisp = 480;  // Vertical display time
    parameter Vbp    = 29;   // Vertical back porch
    parameter Vfp    = 10;   // Vertical front porch

    // Derived Timing Parameters (adjusted for counters starting at 0)
    parameter HorzTimeToPulseWidthEnd  = HTpw;              // 96
    parameter HorzTimeToBackPorchEnd   = HTpw + Hbp;        // 144
    parameter HorzTimeToDisplayTimeEnd = HTpw + Hbp + HTDisp; // 784
    parameter HorzTimeToFrontPorchEnd  = HTs;               // 800

    parameter VertTimeToPulseWidthEnd  = VTpw;              // 2
    parameter VertTimeToBackPorchEnd   = VTpw + Vbp;        // 31
    parameter VertTimeToDisplayTimeEnd = VTpw + Vbp + VTDisp; // 511
    parameter VertTimeToFrontPorchEnd  = VTs;               // 521

    // **Counters**
    reg [9:0] HCounter;  // Horizontal counter (0 to 799)
    reg [9:0] VCounter;  // Vertical counter (0 to 520)
    reg [9:0] ADDRH;     // Horizontal address for frame buffer
    reg [9:0] ADDRV;     // Vertical address for frame buffer

    // Horizontal Counter (0 to 799)
    always @(posedge VGA_CLK) begin
        if (RESET)
            HCounter <= 0;
        else if (HCounter == 799)
            HCounter <= 0;
        else
            HCounter <= HCounter + 1;
    end

    // Vertical Counter (0 to 520)
    always @(posedge VGA_CLK) begin
        if (RESET)
            VCounter <= 0;
        else if (HCounter == 799) begin
            if (VCounter == 520)
                VCounter <= 0;
            else
                VCounter <= VCounter + 1;
        end
    end

    // **Frame Buffer Interface**
    assign DPR_CLK = VGA_CLK;                    // Frame buffer clock is VGA_CLK
    assign VGA_ADDR = {ADDRV[8:2], ADDRH[9:2]};  // 15-bit address (7-bit vertical, 8-bit horizontal)

    // **Sync Signals and Pixel Data**
    always @(posedge VGA_CLK) begin
        // Horizontal Sync (low during pulse width)
        if (HCounter < HorzTimeToPulseWidthEnd)
            VGA_HS <= 0;
        else
            VGA_HS <= 1;

        // Vertical Sync (low during pulse width)
        if (VCounter < VertTimeToPulseWidthEnd)
            VGA_VS <= 0;
        else
            VGA_VS <= 1;

        // Horizontal Address Generation
        if (HCounter >= HorzTimeToBackPorchEnd && HCounter < HorzTimeToDisplayTimeEnd)
            ADDRH <= HCounter - HorzTimeToBackPorchEnd;  // 0 to 639 during display
        else
            ADDRH <= 0;

        // Vertical Address Generation
        if (VCounter >= VertTimeToBackPorchEnd && VCounter < VertTimeToDisplayTimeEnd)
            ADDRV <= VCounter - VertTimeToBackPorchEnd;  // 0 to 479 during display
        else
            ADDRV <= 0;

        // Color Output
        if (VCounter >= VertTimeToBackPorchEnd && VCounter < VertTimeToDisplayTimeEnd &&
            HCounter >= HorzTimeToBackPorchEnd && HCounter < HorzTimeToDisplayTimeEnd) begin
            if (VGA_DATA)
                VGA_COLOUR <= CONFIG_COLOURS[15:8];  // Foreground color (8 bits)
            else
                VGA_COLOUR <= CONFIG_COLOURS[7:0];   // Background color (8 bits)
        end
        else
            VGA_COLOUR <= 8'b0;  // Black outside display region
    end

endmodule