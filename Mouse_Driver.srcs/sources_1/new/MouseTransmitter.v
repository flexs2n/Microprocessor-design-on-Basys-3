`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University of Edinburgh , Electrical & Electronics Department 
// Engineer: Timi Animashahun s2194046
// 
// Create Date: 28.01.2025 09:55:33
// Design Name: 
// Module Name: MouseTransmitter
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


module MouseTransmitter(
    // Standard Inputs
input  RESET,
input  CLK,

// Mouse I/O - Clock
input  CLK_MOUSE_IN,
output CLK_MOUSE_OUT_EN, 

// Mouse I/O - Data
input  DATA_MOUSE_IN,
output DATA_MOUSE_OUT,
output DATA_MOUSE_OUT_EN,

// Control
input  SEND_BYTE,
input  [7:0] BYTE_TO_SEND,
output BYTE_SENT
);



    
    
    
// State machine registers
reg [3:0] Curr_State , Next_State;
reg [16:0] Delay_counter, Delay_next_counter;
reg byte_sent, next_byte_sent;
reg [7:0] byte_data, next_byte_data;
reg CLK_OUT_en, next_clk_out_en;
reg data_out , next_data_out;
reg data_out_en, next_data_out_en;
reg [3:0] counter, next_counter;

// Edge detection
reg Edge_PS2_CLK;


always @(posedge CLK)
    Edge_PS2_CLK <= CLK_MOUSE_IN;

// Output assignments

assign BYTE_SENT = byte_sent;
assign CLK_MOUSE_OUT_EN = CLK_OUT_en;
assign DATA_MOUSE_OUT = data_out ;
assign DATA_MOUSE_OUT_EN = data_out_en;

 


// Sequential logic block
always @(posedge CLK) begin
    if (RESET) begin
    
        Curr_State <= 4'h0;
        counter <= 16'd0;
        byte_sent <= 0;
        byte_data <= 8'd0;  
              
        CLK_OUT_en <= 0;
        data_out <= 0;
        data_out_en <= 0;
        
        Delay_counter <= 4'd0;


    end else begin
    
        Curr_State <= Next_State;
        counter <= next_counter;
        Delay_counter <= Delay_next_counter;
        byte_sent <= next_byte_sent;
        byte_data <= next_byte_data;        
        CLK_OUT_en <= next_clk_out_en;
        data_out <= next_data_out;
        data_out_en <= next_data_out_en;

    end
end


// Combinational logic block
always @(*) begin

    Next_State = Curr_State;
    next_clk_out_en = 0;
    next_data_out = 0;
    next_data_out_en = data_out_en;
    next_counter = counter;
    Delay_next_counter = Delay_counter;
    next_byte_sent = 0;
    next_byte_data = byte_data;

           
    case (Curr_State)
        
        // IDLE State
        4'd0: begin
        
            if (SEND_BYTE) begin
                Next_State = 4'h1; 
                next_byte_data = BYTE_TO_SEND;
                
            end
            next_data_out_en = 0;
           
            
        end
        
        // Host brings clock line low for 100us : period = 1/50 MHz = 20 ns -> no. cycles = 100us / 20 ns = 6000 cycles, > 6000 for a safety margin
        4'd1: begin
            
            if (Delay_counter == 16'd7000) begin 
                Next_State = 4'd2; 
                Delay_next_counter = 16'd0;
                
            end else begin
            
                Delay_next_counter = Delay_counter + 1;
            end
            next_clk_out_en = 1;
        end
        
        // Host brings data line low
        4'd2: begin
        
            Next_State = 4'd3; 
            next_data_out_en = 1;
            // Clock line "released"
        end
        
        // Start sending data
        4'd3: begin
        
            if ((CLK_MOUSE_IN == 0) && Edge_PS2_CLK )
                Next_State = 4'd4; 
        end
        
        // Byte transmission
        4'd4: begin
        
            if ((CLK_MOUSE_IN == 0) && Edge_PS2_CLK ) begin
                // The moment all data bits are transmitted.
                if (counter == 4'd7) begin
                    Next_State = 4'd5;
                    next_counter = 4'd0;
                end else begin
                
                    next_counter = counter + 1;
                end
                //next_data_out = byte_data[counter];
            end
            
            next_data_out = byte_data[counter];
        end
        
        // Parity bit transmission
        4'd5: begin
        
            if ( (CLK_MOUSE_IN == 0) && Edge_PS2_CLK )
                Next_State = 4'd6; 
            next_data_out = ~^byte_data; 
        end
        
        // Stop bit transmission
        4'd6: begin
        
            if ( (CLK_MOUSE_IN == 0)&& Edge_PS2_CLK )
                Next_State = 4'd7; 
            next_data_out = 1;
        end
        
        // Host releases data line
        4'd7: begin
        
            Next_State = 4'd8; 
            next_data_out_en = 0;
        end
        
        // Bring data line  & clock line low
        4'd8: begin
        
            if (( DATA_MOUSE_IN == 0) && (CLK_MOUSE_IN == 0))
                Next_State = 4'd9; 
        end
       
        
        // Release clock and data lines
        4'd9: begin
        
            if (DATA_MOUSE_IN && CLK_MOUSE_IN) begin
                Next_State = 4'd0;
                next_byte_sent = 1;
            end
        end
        
        // Default: Go to IDLE state and reset
        default: begin
        
                    next_data_out = 0;
                    next_data_out_en = 0;
                    
                    next_byte_sent = 0;
                    next_byte_data = 8'hFF;
                    
                    Next_State = 4'd0;
                    
                    next_clk_out_en = 0;
                    
                    
                    next_counter = 4'd0;
                    Delay_next_counter = 16'd0;

        end
    endcase
    
end
/* Testing for use counter 
Generic_counter # (
             .COUNTER_WIDTH(16),
             .COUNTER_MAX(6000) // initailly 10000, but for testing i am making it 
             )
             wait_DELAY (
             .CLK(CLK_MOUSE_IN),
             .RESET(RESET),
             .ENABLE_IN(Trigger01),
             .TRIG_OUT(Trigger02)
             ); 

*/

endmodule



