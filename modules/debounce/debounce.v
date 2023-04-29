module debounce # (
	parameter CLOCK_SIZE = 9,
	parameter CLOCK_START = 9'b000000000,
	parameter CLOCK_LIMIT = 9'd300
) (
// INPUTS
	input clk,
	input in,
	input reset,
// Outputs
	output reg out
);

localparam OFF = 0;

localparam ON = 1;

reg [CLOCK_SIZE-1:0] clock_counter;

reg state = OFF;

always @ (posedge clk or posedge reset) begin
	if (reset) begin
		clock_counter <= CLOCK_START;
		out <= OFF;
		state <= OFF;
	end else begin
		clock_counter <= clock_counter + 1;
		if (clock_counter == CLOCK_LIMIT) begin
			clock_counter <= CLOCK_START;
			case (state)
				OFF:
				if (in) begin
					state <= ON;
					out <= ON;
				end
				ON:
				if (~in) begin
					state <= OFF;
					out <= OFF;
				end
			endcase
		end
	end
end
endmodule