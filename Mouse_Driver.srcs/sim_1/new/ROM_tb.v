`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2025 12:00:59
// Design Name: 
// Module Name: ROM_tb
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


module ROM_tb();
 // Testbench signals
    reg CLK;
    reg [7:0] Bus_Addr;
    wire [7:0] DATA;
    
    // Instantiate the ROM module
    ROM rom (
        .CLK(CLK),
        .ADDR(Bus_Addr),
        .DATA(DATA)
    );
    
    // Clock generation
    initial begin
        CLK = 0;
        forever #5 CLK = ~CLK; // 10ns clock period
    end
    
    initial begin
        // Initialize signals
        CLK = 0;
        //Bus_Addr = 8'h00;
        
        // Wait for reset period
        #100;
        
        Bus_Addr = 8'h00;
        
        #20;
        
        Bus_Addr = 8'h01;
        
        #20;
        
        Bus_Addr = 8'h02;
        
        #20;
        
        Bus_Addr = 8'h03;
  
        #20;
        
        Bus_Addr = 8'h04;
     
        #20;
        
        Bus_Addr = 8'h05;
        
        #20;
        
        Bus_Addr = 8'h06;
        
        #20;
        
        Bus_Addr = 8'h07;   
                    
        #20;
        
        Bus_Addr = 8'h08;
       
        #20;
        
        Bus_Addr = 8'h09;
       
        #20;
        
        Bus_Addr = 8'h0A;
        
        #20;
        
        Bus_Addr = 8'h0B;
        
        #20;
        
        Bus_Addr = 8'h0C;
        
        #50;                                                       
        
   

        $finish;
    end

endmodule