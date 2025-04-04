`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.03.2025 12:14:26
// Design Name: 
// Module Name: Grid_decoder
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


module Grid_decoder(
    input wire [15:0] valueIn,
    output reg [15:0] valueOut
);

    wire [7:0] y = valueIn[7:0];
    wire [7:0] x = valueIn[15:8];

    always @(*) begin
        // Default: all zeros
        valueOut = 16'd0;

        // Bottom Row: y [0–40)
        if (y < 8'd40) begin
            if (x < 8'd53) begin // Bottom Left
                valueOut[15:12] = 4'd6;
                valueOut[7:4]   = 4'd8;
            end else if (x < 8'd107) begin // Bottom Middle
                valueOut[15:12] = 4'd6;
            end else if (x <= 8'd161) begin // Bottom Right
                valueOut[15:12] = 4'd6;
                valueOut[7:4]   = 4'd7;
            end
        end

        // Middle Row: y [40–80)
        else if (y < 8'd80) begin
            if (x < 8'd53) begin // Middle Left
                valueOut[15:12] = 4'd8;
            end else if (x < 8'd107) begin // Middle Middle
                valueOut[15:12] = 4'd1;
                valueOut[11:8] = 4'd13;
                valueOut[7:4] = 4'd8;
                valueOut[3:0] = 4'd14;
                
            end else if (x <= 8'd161) begin // Middle Right
                valueOut[15:12] = 4'd7;
            end
        end

        // Top Row: y [80–120)
        else if (y < 8'd121) begin
            if (x < 8'd53) begin // Top Left
                valueOut[15:12] = 4'd9;
                valueOut[7:4]   = 4'd8;
            end else if (x < 8'd107) begin // Top Middle
                valueOut[15:12] = 4'd9;
            end else if (x <= 8'd161) begin // Top Right
                valueOut[15:12] = 4'd9;
                valueOut[7:4]   = 4'd7;
            end
        end

        // Everything else (outside expected ranges)
        else begin
            valueOut = 16'h0000;
        end
    end

endmodule

