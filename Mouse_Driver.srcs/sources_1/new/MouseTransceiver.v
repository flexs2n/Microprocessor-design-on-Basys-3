`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University of Edinburgh , Electrical & Electronics Department 
// Engineer: Timi Animashahun s2194046
// 
// Create Date: 30.01.2025 11:30:15
// Design Name: 
// Module Name: MouseTransceiver
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


module MouseTransceiver(
     // Standard Inputs
input RESET,
input CLK,

// PS/2 Mouse I/O (bidirectional)
inout CLK_MOUSE,
inout DATA_MOUSE,

// Processed Mouse Data Outputs
output [3:0] MouseStatus,
output [7:0] MouseX,
output [7:0] MouseY,

output reg [7:0] MouseStatus_RAW,//my additional feature 

// Raw movement data outputs
output INTERRUPT
);

// Parameters defining the limits of the mouse position (e.g., a 160x120 VGA display)
parameter [7:0] MouseLimitX = 161;
parameter [7:0] MouseLimitY = 121;


//Output Registers 
reg [3:0] mouse_status;
reg [7:0] mouse_x;
reg [7:0] mouse_y;

// Initialize the mouse status and set the initial position to the center of the screen.
initial begin
mouse_status <= 0;
MouseStatus_RAW <=0;
mouse_x <= MouseLimitX / 2;
mouse_y <= MouseLimitY / 2;
end



// Tri-State Signal Declarations for the PS/2 interface
/////////////////////////////////////////////////////////////////////

// Clock signals for the mouse interface.
reg CLK_Mouse_In;                    // Filtered clock input from the mouse.
wire CLK_Mouse_Out_EN_wire;           // Output enable for the clock signal from the transmitter.

// Data signals for the mouse interface.
wire Data_Mouse_In; // Data input from the mouse.
wire Data_Mouse_Out_wire; // Data output from the transmitter.
wire Data_Mouse_Out_EN_wire; // Output enable for the data signal.



// Instantiate the Mouse Transmitter Module
wire SendByteToMouse;
wire ByteSentToMouse;
wire [7:0] ByteToSendToMouse;


// Instantiate the Mouse Receiver Module
wire ReadEnable;
wire [7:0] ByteRead;
wire [1:0] ByteErrorCode;
wire ByteReady;

// Instantiate the Mouse Master State Machine Module
wire [7:0] MouseStatusRaw;
wire [7:0] MouseDxRaw;
wire [7:0] MouseDyRaw;
wire SendInterrupt;



// Drive the PS/2 clock line. When the transmitter asserts its output enable,
// the clock line is driven low; otherwise, it remains in high-impedance state.
assign CLK_MOUSE = CLK_Mouse_Out_EN_wire ? 1'b0 : 1'bz;
// Connect the incoming data line to the internal signal.
assign Data_Mouse_In = DATA_MOUSE;
// Drive the PS/2 data line similarly.wire [7:0] ScaledMouseDX;
wire [7:0] ScaledMouseDY;
assign DATA_MOUSE = Data_Mouse_Out_EN_wire ? Data_Mouse_Out_wire : 1'bz;



// Clock Filtering Section

reg [7:0] PS2_ClkFilter;
always @(posedge CLK) begin
if (RESET)
    CLK_Mouse_In <= 0;
else begin
    // Shift in the current CLK_MOUSE value.
    PS2_ClkFilter[7:1] <= PS2_ClkFilter[6:0];
    PS2_ClkFilter[0] <= CLK_MOUSE;
    
    // If the filtered value is all zeros while CLK_Mouse_In is high, register a falling edge.
    if (CLK_Mouse_In && (PS2_ClkFilter == 8'h00))
        CLK_Mouse_In <= 0;
    // If the filtered value is all ones while CLK_Mouse_In is low, register a rising edge.
    else if (~CLK_Mouse_In && (PS2_ClkFilter == 8'hFF))
        CLK_Mouse_In <= 1;
end
end




MouseTransmitter Transmitter(
// Standard inputs
.RESET(RESET),
.CLK(CLK),
// PS/2 Clock interface
.CLK_MOUSE_IN(CLK_Mouse_In),
.CLK_MOUSE_OUT_EN(CLK_Mouse_Out_EN_wire),
// PS/2 Data interface
.DATA_MOUSE_IN(Data_Mouse_In),
.DATA_MOUSE_OUT(Data_Mouse_Out_wire),
.DATA_MOUSE_OUT_EN(Data_Mouse_Out_EN_wire),
// Control signals
.SEND_BYTE(SendByteToMouse),
.BYTE_TO_SEND(ByteToSendToMouse),
.BYTE_SENT(ByteSentToMouse)
);


MouseReceiver Receiver(
// Standard inputs
.RESET(RESET),
.CLK(CLK),
// PS/2 Clock interface
.CLK_MOUSE_IN(CLK_Mouse_In),
// PS/2 Data interface
.DATA_MOUSE_IN(Data_Mouse_In),
// Control signals
.READ_ENABLE(ReadEnable),
.BYTE_READ(ByteRead),
.BYTE_ERROR_CODE(ByteErrorCode),
.BYTE_READY(ByteReady)
);




MouseMasterSM MSM(
// Standard inputs
.RESET(RESET),
.CLK(CLK),
// Transmitter Interface
.SEND_BYTE(SendByteToMouse),
.BYTE_TO_SEND(ByteToSendToMouse),
.BYTE_SENT(ByteSentToMouse),
// Receiver Interface
.READ_ENABLE(ReadEnable),
.BYTE_READ(ByteRead),
.BYTE_ERROR_CODE(ByteErrorCode),
.BYTE_READY(ByteReady),
// Data Registers (raw data from mouse)
.MOUSE_STATUS(MouseStatusRaw),
.MOUSE_DX(MouseDxRaw),
.MOUSE_DY(MouseDyRaw),
.SEND_INTERRUPT(SendInterrupt)
);

assign INTERRUPT = SendInterrupt;
assign MouseStatus = mouse_status;
assign MouseX = mouse_x;
assign MouseY = mouse_y;



wire signed [8:0] MouseDx;
wire signed [8:0] MouseDy;
wire signed [8:0] MouseNewX;
wire signed [8:0] MouseNewY;


// Calculate MouseDx (horizontal movement) with overflow handling
assign MouseDx = (MouseStatusRaw[6]) ?  
                (MouseStatusRaw[4] ? ({MouseStatusRaw[4], 8'h00} ) : ({MouseStatusRaw[4], 8'hFF} )) :  
                ({MouseStatusRaw[4], (MouseDxRaw[7:0])});  

assign MouseDy = (MouseStatusRaw[7]) ?  
                (MouseStatusRaw[5] ? ({MouseStatusRaw[5], 8'h00} ) : ({MouseStatusRaw[5], 8'hFF} )) :  
                ({MouseStatusRaw[5], (MouseDyRaw[7:0])});  
 
                
                

// Calculate new mouse X and Y positions by adding movement deltas (MouseDx, MouseDy)

  
// Sign-extend MouseDx and MouseDy to 9 bits
wire signed [8:0] MouseDxSigned = {MouseDx[8], MouseDx};  // Sign-extend to 9 bits
wire signed [8:0] MouseDySigned = {MouseDy[8], MouseDy};  // Sign-extend to 9 bits

// Reduce sensitivity by dividing deltas by 4 (right shift by 2)
wire signed [8:0] MouseDxReduced = MouseDxSigned >>> 1;  // Arithmetic right shift
wire signed [8:0] MouseDyReduced = MouseDySigned >>> 1;  

// Calculate new mouse X and Y positions
assign MouseNewX = {1'b0, mouse_x} + MouseDxReduced;  
assign MouseNewY = {1'b0, mouse_y} + MouseDyReduced; 

//assign MouseNewX = ({1'b0, mouse_x} + ({MouseDx[8], (MouseDx >>> 2)}));  // Extend mouse_y to 9 bits for signed addition
//assign MouseNewY = ({1'b0, mouse_y} + ({MouseDy[8], (MouseDy >>> 2)}));  
  

// Update mouse position and status on clock edge
always @(posedge CLK) begin
    if (RESET) begin  // Reset mouse state
        mouse_status <= 0;  // Clear mouse status
        mouse_x <= MouseLimitX / 2;  // Initialize X position to center
        mouse_y <= MouseLimitY / 2;  // Initialize Y position to center
    end else if (SendInterrupt) begin  // Update on new mouse data
        // Update mouse status with relevant bits from MouseStatusRaw
        mouse_status <= {MouseStatusRaw[7], MouseStatusRaw[6], MouseStatusRaw[1], MouseStatusRaw[0]};
        MouseStatus_RAW <= MouseStatusRaw;  // Store raw status for debugging or further use

        // Update X position with boundary checking
        if (MouseNewX < 0)  // Clamp to minimum X
            mouse_x <= 0;
        else if (MouseNewX > (MouseLimitX-1))  // Clamp to maximum X
            mouse_x <= MouseLimitX-1;
        else  // Use new X position
            mouse_x <= MouseNewX[7:0];

        // Update Y position with boundary checking
        if (MouseNewY < 0)  // Clamp to minimum Y
            mouse_y <= 0;
        else if (MouseNewY > (MouseLimitY-1))  // Clamp to maximum Y
            mouse_y <= MouseLimitY-1;
        else  // Use new Y position
            mouse_y <= MouseNewY[7:0];
    end
end

endmodule