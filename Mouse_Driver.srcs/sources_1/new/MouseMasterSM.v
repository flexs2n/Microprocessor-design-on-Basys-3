`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University of Edinburgh , Electrical & Electronics Department 
// Engineer: Timi Animashahun s2194046
// 
// Create Date: 28.01.2025 10:07:08
// Design Name: 
// Module Name: MouseMasterSM
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


module MouseMasterSM(
    
// Standard inputs
input CLK,
input RESET,

// Transmitter Control
output SEND_BYTE,
output [7:0] BYTE_TO_SEND,
input BYTE_SENT,

// Receiver Control
output READ_ENABLE,
input [7:0] BYTE_READ,
input [1:0] BYTE_ERROR_CODE,
input BYTE_READY,

// Data Registers
output [7:0] MOUSE_DX,
output [7:0] MOUSE_DY,
output [7:0] MOUSE_STATUS,
output SEND_INTERRUPT
);

//States 

parameter   Start = 4'd1;
parameter   Confirmation = 4'd2;  
parameter   Received = 4'd3;
parameter   Self_Test = 4'd4;
parameter   ID_Confirmation = 4'd5;
parameter   F4_Send = 4'd6;
parameter   F4_Wait = 4'd7;
parameter   F4_Received = 4'd8;
parameter   Status_Byte = 4'd9;
parameter   DX_Byte = 4'd10;
parameter   DY_Byte = 4'd11;
parameter   Interrupt = 4'd12;
parameter   Set_Res1   = 4'd13;  // send E8
parameter   Set_Res2   = 4'd14;  // send 01
parameter   Set_Rate1  = 4'd15;  // send F3
parameter   Set_Rate2  = 4'd0;   // send 0A → then loop to Status_Byte
 



// State and Counter Registers
reg [3:0] Curr_State, Next_State;


// Transmitter Control Registers
reg SendByte, next_SendByte;
reg [7:0] ByteToSend, next_ByteToSend;

// Receiver Control Register
reg ReadEnable, next_ReadEnable;

// Data Registers
reg [7:0] Status, Next_Status;
reg [7:0] Mouse_Dx, next_Mouse_Dx;
reg [7:0] Mouse_Dy, next_Mouse_Dy;
reg Send_Interrupt, next_Send_Interrupt;

// Output assignments
assign SEND_BYTE     = SendByte;
assign BYTE_TO_SEND  = ByteToSend;
assign READ_ENABLE   = ReadEnable;
assign MOUSE_DX      = Mouse_Dx;
assign MOUSE_DY      = Mouse_Dy;
assign MOUSE_STATUS  = Status;
assign SEND_INTERRUPT= Send_Interrupt;


// Sequential logic block
always @(posedge CLK) begin
    if (RESET) begin
    
        Curr_State <= Start;
        SendByte <= 0;
        ByteToSend <= 8'h00;
        ReadEnable <= 0;
        Status <= 8'h00;
        Mouse_Dx <= 8'h00;
        Mouse_Dy <= 8'h00;
        Send_Interrupt <= 0;
    end else begin
    
        Curr_State <= Next_State;
        SendByte <= next_SendByte;
        ByteToSend <= next_ByteToSend;
        ReadEnable <= next_ReadEnable;
        Status <= Next_Status;
        Mouse_Dx <= next_Mouse_Dx;
        Mouse_Dy <= next_Mouse_Dy;
        Send_Interrupt <= next_Send_Interrupt;
    end
end


// Combinational logic block
always @(*) begin
    
    Next_State = Curr_State;
    next_SendByte = 0;
    next_ByteToSend = ByteToSend;
    next_ReadEnable = 0;
    Next_Status = Status;
    next_Mouse_Dx = Mouse_Dx;
    next_Mouse_Dy = Mouse_Dy;
    next_Send_Interrupt = 0;
    
    case (Curr_State)
        
        // State 1: Start initialization by sending FF (Reset command).
        Start: begin
        
            Next_State = Confirmation;
            next_SendByte   = 1;
            next_ByteToSend = 8'hFF;
        end
        
        
        // State 2: Wait for confirmation that the command byte has been sent.
        Confirmation: begin
        
            if (BYTE_SENT)
                Next_State = Received;
        end
         
   
        // State 3: Wait for a received byte.
        Received: begin
        
            if (BYTE_READY) begin
                
                if ((BYTE_READ == 8'hFA) && (BYTE_ERROR_CODE == 2'b00))
                    Next_State = Self_Test;
                
                else
                    Next_State = Start;
            end
            next_ReadEnable = 1;
        end
        
        
        // State 4: Wait for self-test pass confirmation.
        Self_Test: begin
        
            if (BYTE_READY) begin
               
                if ((BYTE_READ == 8'hAA) && (BYTE_ERROR_CODE == 2'b00))
                    Next_State = ID_Confirmation;
               
                else
                    Next_State = Start;
            end
            next_ReadEnable = 1;
        end
        
        
        // State 5: Wait for Mouse ID confirmation.
        ID_Confirmation: begin
        
            if (BYTE_READY) begin
                
                if ((BYTE_READ == 8'h00) && (BYTE_ERROR_CODE == 2'b00))
                    Next_State = F4_Send;
                else
                    Next_State = Start;
            end
            next_ReadEnable = 1;
        end
        
        
        
        // State 6: Send F4 to start mouse transmission.
        F4_Send: begin
        
            Next_State = F4_Wait;
            next_SendByte = 1;
            next_ByteToSend = 8'hF4;
        end
        
        
        // State 7: Wait for confirmation that F4 was sent.
        F4_Wait: begin
        
            if (BYTE_SENT)
                Next_State = F4_Received;
        end
        
        
        // State 8: Wait for response to F4. Either goning to receive FA with Error code of 00 or F4 with an error code 
        F4_Received: begin
        
            if (BYTE_READY) begin
                if (((BYTE_READ == 8'hFA) && (BYTE_ERROR_CODE == 2'b00))||(BYTE_READ == 8'hF4))
                    Next_State = Status_Byte;
                else
                    Next_State = Start;
            end
            next_ReadEnable = 1;
        end
        
        
        // State 9: Receive the first of three bytes: the status byte.
        Status_Byte: begin
        
            if (BYTE_READY) begin
                if (BYTE_ERROR_CODE == 2'b00) begin
                    Next_State = DX_Byte;
                    Next_Status = BYTE_READ;
                end else
                    Next_State = Start;
            end
            next_ReadEnable = 1;
        end
        

        // State A: Receive the second byte: the DX value.
        DX_Byte: begin
        
            if (BYTE_READY) begin
                if (BYTE_ERROR_CODE == 2'b00) begin
                    Next_State = DY_Byte;
                    next_Mouse_Dx = BYTE_READ; // Store DX
                end else
                    Next_State = Start;
            end
            next_ReadEnable = 1;
        end
                   
        
        // State B: Receive the third byte: the DY value.
        DY_Byte: begin
        
            if (BYTE_READY) begin
                if (BYTE_ERROR_CODE == 2'b00) begin
                    Next_State = Interrupt;
                    next_Mouse_Dy = BYTE_READ; // Store DY
                end else
                    Next_State = Start;
            end
            next_ReadEnable = 1;
        end
        
        
        // State C: Send Interrupt.
        Interrupt: begin
        
            Next_State = Status_Byte;
            next_Send_Interrupt = 1;
        end
        
        
        // Default: Reset all outputs.
        default: begin
        
            Next_State = Start;
            next_SendByte  = 0;
            next_ByteToSend = 8'hFF;
            next_ReadEnable  = 0;
            Next_Status = 8'd0;
            next_Mouse_Dx = 8'h00;
            next_Mouse_Dy = 8'h00;
            next_Send_Interrupt  = 0;
        end
    endcase
end

endmodule