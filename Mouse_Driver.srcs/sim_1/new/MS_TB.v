`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.02.2025 16:57:21
// Design Name: 
// Module Name: MS_TB
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


module MS_TB(

    );


// Inputs
reg CLK;
reg RESET;
reg BYTE_SENT;
reg [7:0] BYTE_READ;
reg [1:0] BYTE_ERROR_CODE;
reg BYTE_READY;

// Outputs
wire SEND_BYTE;
wire [7:0] BYTE_TO_SEND;
wire READ_ENABLE;
wire [7:0] MOUSE_DX;
wire [7:0] MOUSE_DY;
wire [7:0] MOUSE_STATUS;
wire SEND_INTERRUPT;

//wire  Curr;

// Instantiate the MouseMasterSM module
MouseMasterSM uut (
    .CLK(CLK),
    .RESET(RESET),
    .SEND_BYTE(SEND_BYTE),
    .BYTE_TO_SEND(BYTE_TO_SEND),
    .BYTE_SENT(BYTE_SENT),
    .BYTE_READ(BYTE_READ),
    .BYTE_ERROR_CODE(BYTE_ERROR_CODE),
    .BYTE_READY(BYTE_READY),
    .READ_ENABLE(READ_ENABLE),
    .MOUSE_DX(MOUSE_DX),
    .MOUSE_DY(MOUSE_DY),
    .MOUSE_STATUS(MOUSE_STATUS),
    .SEND_INTERRUPT(SEND_INTERRUPT)
 //   .Curr(Curr)
);

// Clock generation (1 MHz)
initial begin
    CLK = 0;
    forever #5 CLK = ~CLK; // 10 ns clock period
end

// Test sequence
initial begin
    // Initialize inputs
    RESET = 1;
    BYTE_SENT = 0;
    BYTE_READ = 8'h00;
    BYTE_ERROR_CODE = 2'b00;
    BYTE_READY = 0;

    // Apply reset
    #20; // Wait 1 µs
    RESET = 0;

    // Test Case 1: Simulate MOUSE_START state
    // Send FF command and wait for BYTE_SENT
    #20; // Wait 1 µs
    if(BYTE_TO_SEND == 8'b11111111)
     BYTE_SENT = 1; // Simulate BYTE_SENT
    #10; // Wait 1 µs
    BYTE_SENT = 0;

    // Simulate response from mouse (FA)
    if(READ_ENABLE) begin 
        #50; // Wait 1 µs
        BYTE_READ = 8'hFA; // Acknowledge
        BYTE_READY = 1; // Simulate BYTE_READY
        #20; // Wait 1 µs
        BYTE_READY = 0;
    end
    
    // Test Case 2: Simulate MOUSE_TEST state
  if(READ_ENABLE) begin 
    
  
    #50; // Wait 1 µs
    BYTE_READ = 8'hAA; // Acknowledge
    BYTE_READY = 1; // Simulate BYTE_READY
    #20; // Wait 1 µs
    BYTE_READY = 0;
    
    #50; // Wait 1 µs
    BYTE_READ = 8'h00; // Acknowledge
    BYTE_READY = 1; // Simulate BYTE_READY
    #20; // Wait 1 µs
    BYTE_READY = 0;
  end
    // Simulate response from mouse (FA)
    #20; // Wait 1 µs
    
    
  if(BYTE_TO_SEND == 8'b11110100)begin  
  
    BYTE_SENT = 1; // Simulate BYTE_SENT
      #20; // Wait 1 µs
    BYTE_SENT = 0;
  end 
 
  if(READ_ENABLE) begin 
    BYTE_READ = 8'hF4; // Acknowledge
    BYTE_READY = 1; // Simulate BYTE_READY
    #20; // Wait 1 µs
    BYTE_READY = 0;
   
    // Test Case 3: Simulate MOUSE_OP state
    // Simulate receiving status byte
    #20; // Wait 1 µs
    BYTE_READ = 8'h03; // Status byte 8'b00000011;
    BYTE_READY = 1; // Simulate BYTE_READY
     #20; // Wait 1 µs
    BYTE_READY = 0;

    // Simulate receiving X byte
    #20; // Wait 1 µs
    BYTE_READ = 8'h45; // X byte 8'b01000101;
    BYTE_READY = 1; // Simulate BYTE_READY
     #20; // Wait 1 µs
    BYTE_READY = 0;

    // Simulate receiving Y byte
    #20; // Wait 1 µs
    BYTE_READ = 8'h67; // Y byte 8'b01100111;
    BYTE_READY = 1; // Simulate BYTE_READY
     #20; // Wait 1 µs
    BYTE_READY = 0;
    #20;
    
    // redo 
    #20; // Wait 1 µs
    BYTE_READ =  8'b00000111; // Status byte 8'b00000011;
    BYTE_READY = 1; // Simulate BYTE_READY
     #20; // Wait 1 µs
    BYTE_READY = 0;
    
    // Simulate receiving X byte
    #20; // Wait 1 µs
    BYTE_READ = 8'b01000111;// X byte 8'b01000101;
    BYTE_READY = 1; // Simulate BYTE_READY
     #20; // Wait 1 µs
    BYTE_READY = 0;
    
    // Simulate receiving Y byte
    #20; // Wait 1 µs
    BYTE_READ = 8'b01110111; // Y byte 8'b01100111;
    BYTE_READY = 1; // Simulate BYTE_READY
     #20; // Wait 1 µs
    BYTE_READY = 0;
    #20;
    
    //redo
    #20; // Wait 1 µs
    BYTE_READ = 8'h03; // Status byte 8'b00000011;
    BYTE_READY = 1; // Simulate BYTE_READY
     #20; // Wait 1 µs
    BYTE_READY = 0;

    // Simulate receiving X byte
    #20; // Wait 1 µs
    BYTE_READ = 8'h45; // X byte 8'b01000101;
    BYTE_READY = 1; // Simulate BYTE_READY
     #10; // Wait 1 µs
    BYTE_READY = 0;

    // Simulate receiving Y byte
    #20; // Wait 1 µs
    BYTE_READ = 8'h67; // Y byte 8'b01100111;
    BYTE_READY = 1; // Simulate BYTE_READY
     #20; // Wait 1 µs
    BYTE_READY = 0;
    #20;
    
    // Test Case 4: Simulate MOUSE_ERROR state
    // Simulate parity error
    #20; // Wait 1 µs    $stop;

    BYTE_ERROR_CODE = 2'b01; // Parity error
    #20; // Wait 1 µs
    BYTE_ERROR_CODE = 2'b00; // Clear error

    // Simulate self-fail error
    #20; // Wait 1 µs
    BYTE_ERROR_CODE = 2'b10; // Self-fail error
    #20; // Wait 1 µs
    BYTE_ERROR_CODE = 2'b00; // Clear error

    // End simulation
    #20; // Wait 1 µs
    $stop;
   end 
    
end


endmodule
