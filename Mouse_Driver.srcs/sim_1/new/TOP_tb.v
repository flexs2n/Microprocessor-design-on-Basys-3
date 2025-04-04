`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.04.2025 11:43:56
// Design Name: 
// Module Name: TOP_tb
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


module TOP_tb(
    
    );
    
    reg CLK;
    reg RESET;
    wire CLK_MOUSE;
    wire DATA_MOUSE;
    
    wire CLK_MOUSE_IN;
    reg CLK_MOUSE_OUT;
    
    wire DATA_MOUSE_IN;
    reg DATA_MOUSE_OUT;
    
    reg CLK_ENABLE;
    reg DATA_ENABLE;
    
    wire [15:0] LED_OUT;
    wire [7:0] HEX_OUT;
    wire [3:0] SEG_SELECT;
    
    wire  HS;
    wire VS;
    wire [7:0] COLOUR_OUT;
    
    wire IR_LED;
    
    TopLevel Top(
        .CLK(CLK),
        .RESET(RESET),
        .CLK_MOUSE(CLK_MOUSE),
        .DATA_MOUSE(DATA_MOUSE),
        .LED_OUT(LED_OUT),
        .HEX_OUT(HEX_OUT),
        .SEG_SELECT(SEG_SELECT),
        .HS(HS),
        .VS(VS),
        .COLOUR_OUT(COLOUR_OUT),
        .IR_LED(IR_LED)
    );
    
    initial begin 
        CLK=0;
        forever begin
            #10
            CLK = ~CLK;
        end
    end
    initial begin
        RESET = 1;
        CLK = 0;
        CLK_MOUSE_OUT = 0;
        CLK_ENABLE = 1;
        DATA_MOUSE_OUT = 0;
        DATA_ENABLE = 0;
    end
    
    initial begin
        RESET = 0;
        #20
        RESET = 1;
        #20
        RESET = 0;
    end
    
    assign CLK_MOUSE_IN = CLK_MOUSE;
    assign CLK_MOUSE = CLK_ENABLE ? CLK_MOUSE_OUT : 1'bz;
    
    assign DATA_MOUSE_IN = DATA_MOUSE;
    assign DATA_MOUSE = DATA_ENABLE ? DATA_MOUSE_OUT : 1'bz;
    
    initial begin
        #200 RESET = 0;
        forever begin
            DATA_ENABLE = 1;
            #40 DATA_MOUSE_OUT = ~DATA_MOUSE_OUT;
            DATA_ENABLE = 0;
            #40;
        end
    end
    
    initial begin
        forever begin
            CLK_ENABLE = 1;
            #40 CLK_MOUSE_OUT = ~CLK_MOUSE_OUT;
            CLK_ENABLE = 0;
            #40;
        end
    end
    
    initial begin
        forever begin
            CLK_ENABLE = 1;
            #20 CLK_MOUSE_OUT = ~CLK_MOUSE_OUT;
            CLK_ENABLE = 0;
            #20;
        end
    end

endmodule