`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2025 15:05:08
// Design Name: 
// Module Name: Pro_TB
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


module Pro_TB();

    // Declare testbench signals
    reg CLK;
    reg RESET;
    wire [7:0] BUS_DATA;
    wire [7:0] BUS_ADDR;
    wire BUS_WE;
    wire [7:0] ROM_ADDRESS;
    wire [7:0] ROM_DATA;
    reg [1:0] BUS_INTERRUPTS_RAISE;
    wire [1:0] BUS_INTERRUPTS_ACK;
    
    // Instantiate RAM module
    RAM t1 (
        .CLK(CLK),
        .BUS_DATA(BUS_DATA),
        .BUS_ADDR(BUS_ADDR),
        .BUS_WE(BUS_WE)
    );

    // Instantiate ROM module
    ROM t2 (
        .CLK(CLK),
        .DATA(ROM_DATA),
        .ADDR(ROM_ADDRESS)
    );

    // Instantiate Processor module
    Processor t3 (
        .CLK(CLK),
        .RESET(RESET),
        .BUS_DATA(BUS_DATA),
        .BUS_ADDR(BUS_ADDR),
        .BUS_WE(BUS_WE),
        .ROM_ADDRESS(ROM_ADDRESS),
        .ROM_DATA(ROM_DATA),
        .BUS_INTERRUPTS_RAISE(BUS_INTERRUPTS_RAISE),
        .BUS_INTERRUPTS_ACK(BUS_INTERRUPTS_ACK)
    );

    // Generate a clock signal (period = 10ns)
    initial begin
        CLK = 0;
        forever #5 CLK = ~CLK; // Toggle every 5ns → 10ns period
    end

    // Reset sequence
    initial begin
        RESET = 1'b1;   // Set RESET high
        #20 RESET = 1'b0; // After 20ns, release reset
    end

    // Test scenario: Interrupts and program execution
    initial begin
        // Initialize interrupt signals to 0
        BUS_INTERRUPTS_RAISE = 2'b00;

        // Wait for some clock cycles
        #100;
        
        // Trigger an interrupt to start execution
        BUS_INTERRUPTS_RAISE = 2'b01;
        #10 BUS_INTERRUPTS_RAISE = 2'b00; // Clear the interrupt
        
        // Wait for processor to process
        #200;

        // Trigger another interrupt to test context switching
        BUS_INTERRUPTS_RAISE = 2'b10;
        #10 BUS_INTERRUPTS_RAISE = 2'b00;

        // Let simulation run
        #500;
        $stop; // End simulation
    end

    // Monitor outputs for debugging
    initial begin
        $monitor("Time=%0t | BUS_ADDR=%h | BUS_DATA=%h | BUS_WE=%b | INTERRUPT=%b", 
                 $time,  BUS_ADDR, BUS_DATA, BUS_WE, BUS_INTERRUPTS_RAISE);
    end

endmodule


