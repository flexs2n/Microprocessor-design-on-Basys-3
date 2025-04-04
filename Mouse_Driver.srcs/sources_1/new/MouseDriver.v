`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.03.2025 13:39:41
// Design Name: 
// Module Name: MouseDriver
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


module MouseDriver(
    input CLK,
    input RESET,
    // mouse signals
    inout DATA_MOUSE,
    inout CLK_MOUSE,
    // bus signals
    output [7:0] BUS_DATA,
    input [7:0] BUS_ADDR,
    input BUS_WE,
    // interrupt signals
    output INTERRUPT_RAISE,
    input INTERRUPT_ACK
    );
    // Mouse data signals
    wire [7:0] MouseStatus;  // Raw mouse status byte
    wire [7:0] MouseX;       // Mouse X position byte
    wire [7:0] MouseY;       // Mouse Y position byte
    wire SendInterrupt;      // Signal indicating mouse data is ready (interrupt request)
    
    // MouseTransceiver module: Handles PS/2 mouse communication
    MouseTransceiver Mousetrans (
        .RESET(RESET),           // System reset
        .CLK(CLK),               // System clock
        .CLK_MOUSE(CLK_MOUSE),   // PS/2 mouse clock
        .DATA_MOUSE(DATA_MOUSE), // PS/2 mouse data line
        .MouseStatus_RAW(MouseStatus), // Raw mouse status
        .MouseX(MouseX),         // Mouse X position
        .MouseY(MouseY),         // Mouse Y position
        .INTERRUPT(SendInterrupt) // Interrupt signal when new data is available
    );
    
    // Interrupt handling logic
    reg Interrupt;  // Interrupt flag
    
    always@(posedge CLK) begin
        if (RESET)
            Interrupt <= 1'b0;  // Clear interrupt on reset
        else if (SendInterrupt)
            Interrupt <= 1'b1;  // Set interrupt flag when mouse data is ready
        else if (INTERRUPT_ACK)
            Interrupt <= 1'b0;  // Clear interrupt flag when acknowledged
    end
    
    assign INTERRUPT_RAISE = Interrupt;  // Raise interrupt signal to the processor
    
    // Mouse peripheral base address
    parameter [7:0] MouseBaseAddr = 8'hA0;  // Base address for mouse peripheral
    
    // Bus interface logic
    reg [7:0] Out;       // Data to be placed on the bus
    reg MouseBusWE;      // Write enable signal for mouse peripheral
    
    // Tristate buffer: Only drive the bus when the mouse peripheral is selected and not writing
    assign BUS_DATA = (MouseBusWE) ? Out : 8'hZZ;  // High-impedance when not driving the bus
    
    // 2D array to hold mouse data: [0] = Status, [1] = X, [2] = Y
    wire [7:0] MouseBytes [2:0];
    assign MouseBytes[0] = MouseStatus;  // Mouse status byte
    assign MouseBytes[1] = MouseX;       // Mouse X position byte
    assign MouseBytes[2] = MouseY;       // Mouse Y position byte
    
    // Bus write logic
    always@(posedge CLK) begin
        // Check if the bus address is within the mouse peripheral range
        if ((BUS_ADDR >= MouseBaseAddr) & (BUS_ADDR < MouseBaseAddr + 3)) begin
            if (BUS_WE)
                MouseBusWE <= 1'b0;  // Disable bus write if processor is writing
            else
                MouseBusWE <= 1'b1;  // Enable bus write if processor is reading
        end else
            MouseBusWE <= 1'b0;      // Disable bus write if address is outside mouse range
    
        // Output the corresponding mouse data based on the bus address
        Out <= MouseBytes[BUS_ADDR[3:0]];
    end
    
endmodule
