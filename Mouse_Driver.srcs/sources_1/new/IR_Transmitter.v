`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.03.2025 10:54:25
// Design Name: 
// Module Name: IR_Transmitter
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

module IR_Transmitter(
    input CLK,
    input [3:0] COMMAND,
    input SEND_PACKET,
    input RESET,
    output IR_LED
);
// Parameters for IR transmission encoding
parameter Start_Burst_Size      = 192;//191
parameter Car_Select_Burst_Size = 24;//47
parameter Gap_Size              = 24;//25
parameter Assert_Burst_Size     = 48;//48
parameter DeAssert_Burst_Size   = 24;//22
parameter CARRIER_DIV           = 1389;  // For 40kHz carrier from 50MHz clock 1250

// Named states for readability in the FSM
parameter STATE_WAIT     = 4'd0;
parameter STATE_START    = 4'd1;
parameter STATE_GAP      = 4'd2;
parameter STATE_SELECT   = 4'd3;
parameter STATE_ASSERT   = 4'd4;
parameter STATE_DEASSERT = 4'd5;

// Internal registers to hold state, clock counters, command data, and IR output
reg ir_led;
reg [3:0] Curr_State, Next_State;
reg [3:0] Command;
reg [3:0] Command_Counter;
reg [7:0] Pulse, Pulse_tar;
reg [15:0] clk_counter;
reg [24:0] clk_count, clk_tar;
reg clk_finished;
reg car_clk;
reg send_received;

// Calculates number of cycles for desired pulse width at carrier frequency
function [24:0] calc_clk_target;
    input integer Pulse;
    begin
        calc_clk_target = (Pulse * 2 * CARRIER_DIV) - 1;
    end
endfunction

//---------------------------------------------
// Carrier Clock Generator (40kHz)
// This toggles car_clk at 40kHz rate unless in WAIT or GAP states
//---------------------------------------------
always @(posedge CLK) begin
    if (Curr_State == STATE_WAIT || Curr_State == STATE_GAP) begin
        clk_counter <= 0;
        car_clk <= 0;
    end else begin
        if (clk_counter == CARRIER_DIV) begin
            car_clk <= ~car_clk;
            clk_counter <= 0;
        end else begin
            clk_counter <= clk_counter + 1;
        end
    end
end

//---------------------------------------------
// Command Shift and Count Logic
// Handles loading and shifting the 4-bit command to send
//---------------------------------------------
always @(posedge clk_finished) begin
    if (Curr_State == STATE_START) begin
        Command_Counter <= 0;
        Command <= COMMAND;
    end else if (Curr_State == STATE_SELECT) begin
        Command_Counter <= Command_Counter + 1;
    end else if (Curr_State == STATE_ASSERT || Curr_State == STATE_DEASSERT) begin
        Command_Counter <= Command_Counter + 1;
        Command <= Command << 1;
    end
end

//---------------------------------------------
// State Register & Pulse Timing Counter Logic
// Handles FSM state transitions and timing for pulse durations
//---------------------------------------------
always @(posedge CLK) begin
    Curr_State <= Next_State;

    // Latch send signal to wait until FSM is ready
    if (SEND_PACKET)
        send_received <= 1;
    else if (send_received && Curr_State == STATE_WAIT)
        send_received <= 1;
    else
        send_received <= 0;

    // Pulse duration clock counter
    if (clk_finished)
        clk_count <= 0;
    else if (Curr_State != STATE_WAIT)
        clk_count <= clk_count + 1;
end

//---------------------------------------------
// Main FSM Logic: Controls burst generation and transition between IR phases
//---------------------------------------------
always @(*) begin
    clk_finished = (clk_count == clk_tar);

    case (Curr_State)
        // WAIT for SEND_PACKET to start IR sequence
        STATE_WAIT: begin
            Pulse_tar <= 1;
            clk_tar   <= 0;
            Next_State = send_received ? STATE_START : Curr_State;
        end

        // Send START burst
        STATE_START: begin
            Pulse_tar <= Start_Burst_Size;
            clk_tar   <= calc_clk_target(Start_Burst_Size);
            Next_State = clk_finished ? STATE_GAP : Curr_State;
        end

        // GAP between bursts and conditional routing based on command bit
        STATE_GAP: begin
            Pulse_tar <= 0;
            clk_tar   <= calc_clk_target(Gap_Size);
            if (clk_finished) begin
                if (Command_Counter == 0)
                    Next_State = STATE_SELECT;
                else if (Command_Counter < 5)
                    Next_State = (Command[3]) ? STATE_ASSERT : STATE_DEASSERT;
                else
                    Next_State = STATE_WAIT;
            end else
                Next_State = Curr_State;
        end

        // Send SELECT burst (used after start)
        STATE_SELECT: begin
            Pulse_tar <= Car_Select_Burst_Size;
            clk_tar   <= calc_clk_target(Car_Select_Burst_Size);
            Next_State = clk_finished ? STATE_GAP : Curr_State;
        end

        // Send ASSERT burst (represents logical 1)
        STATE_ASSERT: begin
            Pulse_tar <= Assert_Burst_Size;
            clk_tar   <= calc_clk_target(Assert_Burst_Size);
            Next_State = clk_finished ? STATE_GAP : Curr_State;
        end

        // Send DEASSERT burst (represents logical 0)
        STATE_DEASSERT: begin
            Pulse_tar <= DeAssert_Burst_Size;
            clk_tar   <= calc_clk_target(DeAssert_Burst_Size);
            Next_State = clk_finished ? STATE_GAP : Curr_State;
        end

        // Default fallback
        default: begin
            Pulse_tar <= 0;
            clk_tar   <= 0;
            Next_State = STATE_START;
        end
    endcase
end

//---------------------------------------------
// IR LED Driver
// Drives IR_LED with carrier clock except during GAP or WAIT states
//---------------------------------------------
assign IR_LED = ir_led;

    always @(car_clk) begin
        ir_led = (Curr_State == STATE_GAP || Curr_State == STATE_WAIT) ? 0 : car_clk;
    end
endmodule