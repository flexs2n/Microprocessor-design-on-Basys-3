`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University of Edinburgh , Electrical & Electronics Department 
// Engineer: Timi Animashahun s2194046
// 
// Create Date: 21.01.2025 11:34:25
// Design Name: 
// Module Name: MouseReceiver
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// remember to switch to case switch, if statements are not sufficient
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module MouseReceiver(
   
 // Standard Inputs
 input RESET,
 input CLK,
 
 // PS/2 Mouse Interface
 input CLK_MOUSE_IN,
 input DATA_MOUSE_IN,
 
 // Control
 input  READ_ENABLE,
 output [7:0] BYTE_READ,
 output [1:0] BYTE_ERROR_CODE,
 output BYTE_READY
);

 // State registers
 reg [2:0] Curr_State, Next_State;
 
 reg Byte_Received, next_Byte_Received;
 reg [1:0] ErrorByteCode, next_ErrorByteCode;
 reg [3:0] Bit_Counter, next_Bit_Counter;  
 reg [7:0] Shift_Reg, next_Shift_Reg;


 // Output Assignments
 assign BYTE_READY = Byte_Received;
 assign BYTE_READ = Shift_Reg;
 assign BYTE_ERROR_CODE = ErrorByteCode;
 
 // State parameters
 parameter IDLE = 3'd0;
 parameter RECEIVING = 3'd1;
 parameter PARITY_BIT = 3'd2;
 parameter STOP_BIT = 3'd3;
 parameter READY = 3'd4;
 
 // Falling edge detection for mouse clock, have to have this or there would be timing issues 
 reg Edge_PS2_CLK;
 always @(posedge CLK) begin
     Edge_PS2_CLK <= CLK_MOUSE_IN;
 end    
 
 
 // Sequential logic block
 always @(posedge CLK) begin
 
     if (RESET) begin
     
         Curr_State <=  3'd0;
         Byte_Received <= 0;
         ErrorByteCode   <= 2'b00;         
         Shift_Reg <= 8'h00;
         Bit_Counter <= 4'd0;

         
     end else begin
     
         Curr_State <= Next_State;
         Byte_Received <= next_Byte_Received;
         ErrorByteCode   <= next_ErrorByteCode;         
         Shift_Reg <= next_Shift_Reg;
         Bit_Counter <= next_Bit_Counter;

     end
 end
 
 
 // Combinational logic block 
 always @(*) begin
 
     // Default: Hold current values and increment timeout counter
     Next_State  = Curr_State;
     next_Shift_Reg  = Shift_Reg;
     next_Byte_Received = 0;
     next_ErrorByteCode =  ErrorByteCode;
     next_Bit_Counter  = Bit_Counter;

     
     case (Curr_State)
         
         
         IDLE: begin
          
             
             if (((CLK_MOUSE_IN == 0)  && Edge_PS2_CLK) && (READ_ENABLE && (DATA_MOUSE_IN == 0))) begin
                 Next_State = RECEIVING; 
                 next_ErrorByteCode = 2'b00; 
                 next_Bit_Counter = 0;
             end else begin
                
                 next_Bit_Counter = 0;
             end
         end
         
         
         RECEIVING: begin
         
            
             if (Bit_Counter == 4'd8) begin
                 Next_State = PARITY_BIT;  
                 next_Bit_Counter = 0;
                 
             end 
             
           
             else if ((CLK_MOUSE_IN == 0) && Edge_PS2_CLK) begin
             
                 next_Shift_Reg[6:0] = Shift_Reg[7:1];
                 next_Shift_Reg[7] = DATA_MOUSE_IN;
                 
                  next_Bit_Counter = Bit_Counter + 1;
                 
             end
         end
         
        
         
         PARITY_BIT: begin
         
            
             if (Edge_PS2_CLK && (CLK_MOUSE_IN == 0)) begin
                
                 
                 if (DATA_MOUSE_IN != ~^Shift_Reg[7:0])// ~^ is odd & ^ is even 
                 
                     next_ErrorByteCode = 2'b01;
                 
                 next_Bit_Counter = 0;
                 Next_State = STOP_BIT; 
             end
         end
         
        
         STOP_BIT: begin
         
             
             if (Edge_PS2_CLK && (CLK_MOUSE_IN == 0)) begin
                
                 if (DATA_MOUSE_IN == 0)
                     next_ErrorByteCode = 2'b10;
                 
                 next_Bit_Counter = 0;
                 Next_State = READY;  
                 
             end
         end
         
         // BYTE READY State: set the byte received flag and return to IDLE state
         READY: begin
         
             next_Byte_Received = 1;
             Next_State = 3'd0; 
             
         end
         
         // Default State
         default: begin
         
             Next_State = IDLE;
             next_Shift_Reg = 8'hFF;
             next_Bit_Counter = 0;
             next_Byte_Received = 0;
             next_ErrorByteCode = 2'b00;
         end
         
     endcase
 end
 
 
endmodule
