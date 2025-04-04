`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2025 12:24:56
// Design Name: 
// Module Name: IR_tb
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


module IR_tb(

    );
    // Testbench signals
    reg CLK;                // 50MHz clock input
    reg [3:0] COMMAND;      // 4-bit command input
    reg SEND_PACKET;        // Signal to initiate transmission
    reg RESET;              // Reset signal
    wire IR_LED;            // IR LED output from DUT
    
    // Instantiate the Device Under Test (DUT)
    IR_Transmitter DUT (
        .CLK(CLK),
        .COMMAND(COMMAND),
        .SEND_PACKET(SEND_PACKET),
        .RESET(RESET),
        .IR_LED(IR_LED)
    );
    
    // Parameters for timing and simulation control
    parameter CLK_PERIOD = 20; // 20ns period for 50MHz clock (1ns timescale)
    parameter SIM_TIME = 2000000; // Total simulation time in ns (2ms)
    
    // Clock generation: 50MHz clock with 20ns period
    initial begin
        CLK = 0;
        forever #(CLK_PERIOD/2) CLK = ~CLK;
    end
    
    // Test procedure
    initial begin
        // Initialize inputs
        RESET = 1;          // Assert reset
        COMMAND = 4'b0000;  // Default command (brake)
        SEND_PACKET = 0;    // No transmission initially
        #100;               // Hold reset for 100ns
    
        // Release reset
        RESET = 0;
        #100;               // Wait 100ns after reset release
    
        // Test Case 1: Send command 4'b1010 (right-backward)
        $display("Test Case 1: Sending COMMAND = 4'b1010");
        COMMAND = 4'b1010;
        SEND_PACKET = 1;    // Trigger packet send
        #20;                // Hold SEND_PACKET for one clock cycle
        SEND_PACKET = 0;    // Deassert SEND_PACKET
        #500000;            // Wait 500us to observe full transmission
    
        // Test Case 2: Send command 4'b0101 (left-forward)
        $display("Test Case 2: Sending COMMAND = 4'b0101");
        COMMAND = 4'b0101;
        SEND_PACKET = 1;
        #20;
        SEND_PACKET = 0;
        #500000;
    
        // Test Case 3: Send command 4'b0000 (brake) with reset in between
        $display("Test Case 3: Sending COMMAND = 4'b0000 with reset");
        COMMAND = 4'b0000;
        SEND_PACKET = 1;
        #20;
        SEND_PACKET = 0;
        #100000;            // Wait 100us
        RESET = 1;          // Assert reset during transmission
        #100;               // Hold reset for 100ns
        RESET = 0;          // Release reset
        #400000;            // Wait 400us to observe behavior post-reset
    
        // Test Case 4: Send command 4'b1111 (all bits set)
        $display("Test Case 4: Sending COMMAND = 4'b1111");
        COMMAND = 4'b1111;
        SEND_PACKET = 1;
        #20;
        SEND_PACKET = 0;
        #500000;
    
        // End simulation
        $display("Simulation completed.");
        $finish;
    end
    
    // Monitor IR_LED output and key signals
    initial begin
        $monitor("Time=%0t | RESET=%b | SEND_PACKET=%b | COMMAND=%4b | IR_LED=%b | Curr_State=%d",
                 $time, RESET, SEND_PACKET, COMMAND, IR_LED, DUT.Curr_State);
    end
    

    endmodule