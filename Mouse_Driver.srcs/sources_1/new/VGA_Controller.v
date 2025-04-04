`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.03.2021 14:29:59
// Design Name: 
// Module Name: VGAPeripheral
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


module VGA_Controller(
    input CLK,              // System clock
    input RESET,            // Reset signal
    input [7:0] BUS_ADDR,   // 8-bit bus address from processor
    inout [7:0] BUS_DATA,   // 8-bit bidirectional data bus
    input BUS_WE,           // Bus write enable (high when processor writes)
    output [7:0] COLOUR_OUT,// 8-bit color output to VGA display
    output HS,              // Horizontal sync signal
    output VS               // Vertical sync signal
);

    // **Constants**
    parameter [7:0] VGABaseAddress = 8'hB0; // Base address for VGA control registers
    parameter [7:0] MouseLimitY = 120;      // Y-coordinate limit (e.g., for 160x120 resolution)

    // **Internal Wires**
    wire [15:0] Config_colour = {8'hFF, 8'h00}; // Fixed color config: 8-bit foreground (white), 8-bit background (black)
    wire [14:0] address_connect;                // 15-bit frame buffer address from VGA signal generator
    wire Data_FB_VGA;                           // 1-bit pixel data from frame buffer to VGA signal generator
    wire Data_FB;                               // 1-bit pixel data from frame buffer to bus
    wire DPR_CLK;                               // Frame buffer clock from VGA signal generator

    // **Registers for Frame Buffer Control**
    reg FrameBuffer_WE;                         // Write enable for frame buffer
    reg [14:0] ADDR_FB;                         // 15-bit frame buffer address (7-bit Y, 8-bit X)
    reg Pixel_data;                             // 1-bit pixel data to write to frame buffer

    // **Frame Buffer Instantiation**
    Frame_Buffer fb (
        .A_CLK(CLK),                            // Processor-side clock
        .A_ADDR(ADDR_FB),                       // Address from processor (15 bits: [14:8] Y, [7:0] X)
        .A_DATA_IN(Pixel_data),                 // Pixel data input from processor
        .A_DATA_OUT(Data_FB),                   // Pixel data output to bus
        .A_WE(FrameBuffer_WE),                  // Write enable from processor
        .B_CLK(DPR_CLK),                        // VGA-side clock
        .B_ADDR(address_connect),               // Address from VGA signal generator
        .B_DATA(Data_FB_VGA)                    // Pixel data to VGA signal generator
    );

    // **VGA Signal Generator Instantiation**
    VGA_Sig_Gen sg (
        .CLK(CLK),                              // System clock
        .RESET(RESET),                          // Reset signal
        .CONFIG_COLOURS(Config_colour),         // Color configuration (foreground/background)
        .DPR_CLK(DPR_CLK),                      // Clock output for frame buffer
        .VGA_ADDR(address_connect),             // Address output to frame buffer
        .VGA_DATA(Data_FB_VGA),                 // Pixel data input from frame buffer
        .VGA_HS(HS),                            // Horizontal sync output
        .VGA_VS(VS),                            // Vertical sync output
        .VGA_COLOUR(COLOUR_OUT)                 // 8-bit color output to VGA
    );

    // **Bus Control Registers**
    reg VGABusWE;                               // Write enable for VGA to drive the bus
    reg [7:0] Out;                              // Data to output on the bus

    // **Tristate Buffer for Bidirectional Bus**
    assign BUS_DATA = (VGABusWE) ? Out : 8'hZZ; // Drive BUS_DATA with Out when VGABusWE is high, else high impedance

    // **Main Logic: Bus and Frame Buffer Control**
    always @(posedge CLK) begin
        if (BUS_WE) begin
            // Processor is writing to the bus
            VGABusWE <= 1'b0;                   // Prevent VGA from driving the bus

            // Handle writes to VGA control addresses
            if (BUS_ADDR == VGABaseAddress) begin
                // Set X coordinate (lower 8 bits of frame buffer address)
                FrameBuffer_WE <= 1'b0;         // Disable frame buffer write
                ADDR_FB[7:0] <= BUS_DATA;       // Store X coordinate
            end
            else if (BUS_ADDR == VGABaseAddress + 1) begin
                // Set Y coordinate (upper 7 bits of frame buffer address)
                FrameBuffer_WE <= 1'b0;         // Disable frame buffer write
                ADDR_FB[14:8] <= MouseLimitY - BUS_DATA - 1; // Flip Y-axis and adjust
            end
            else if (BUS_ADDR == VGABaseAddress + 2) begin
                // Write pixel data to frame buffer
                FrameBuffer_WE <= 1'b1;         // Enable frame buffer write
                Pixel_data <= BUS_DATA[0];      // Use LSB of BUS_DATA as pixel value
            end
            else begin
                // Disable frame buffer write for other addresses
                FrameBuffer_WE <= 1'b0;
            end
        end
        else begin
            // Processor is reading from the bus
            if (BUS_ADDR >= VGABaseAddress && BUS_ADDR < VGABaseAddress + 3) begin
                // Enable VGA to drive bus for VGA control addresses
                VGABusWE <= 1'b1;
            end
            else begin
                // Disable VGA from driving bus for other addresses
                VGABusWE <= 1'b0;
            end

            // Disable frame buffer writes when processor is reading
            FrameBuffer_WE <= 1'b0;
        end

        // Update bus output with frame buffer data
        Out <= Data_FB;
    end

endmodule