`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.02.2025 18:47:57
// Design Name: 
// Module Name: TopWrapper_TB
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


module TopWrapper_TB(


);
// Testbench Signals
reg CLK;
reg RESET;
reg PS2_CLK;
reg PS2_DAT;
wire [3:0] SEG_SELECT_OUT;
wire [7:0] DEC_OUT;

// Instantiate the TopWrapper module
Top_wrapper uut (
    .CLK(CLK),
    .RESET(RESET),
    .PS2_CLK(PS2_CLK),
    .PS2_DAT(PS2_DAT),
    .SEG_SELECT_OUT(SEG_SELECT_OUT),
    .DEC_OUT(DEC_OUT));


// Clock generation
initial begin
    CLK = 0;
    forever #5 CLK = ~CLK; // 10 ns clock period
end

// Mouse clock generation
initial begin
    PS2_CLK = 0;
    forever #10 PS2_CLK = ~PS2_CLK; // 20 ns mouse clock period
end
initial begin
    // Initialize inputs
    CLK = 0;
    RESET = 1;
    PS2_CLK = 1;
    PS2_DAT = 1;
    
    #20 RESET = 0; // Release reset after 20ns
    
    // Simulate Mouse Moving Right
    #50 PS2_DAT = 1; // Simulate PS/2 movement in X direction
    #50 PS2_DAT = 0;
    
    // Simulate Mouse Moving Left
    #50 PS2_DAT = 1;
    #50 PS2_DAT = 0;

    // Simulate Mouse Moving Up
    #50 PS2_DAT = 1;
    #50 PS2_DAT = 0;

    // Simulate Mouse Moving Down
    #50 PS2_DAT = 1;
    #50 PS2_DAT = 0;

    // End Simulation
    #500;
    $finish;
end

    

endmodule

