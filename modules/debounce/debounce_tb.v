`timescale 1 ns / 1 ns

module debounce_tb ();
    localparam DURATION = 1000000;
    reg reset = 0;
    reg in = 0;
    reg clock = 0;
    reg [4] i;
    wire button;

    // Instantiate the clock
    always begin
        #41
        clock = ~clock;
    end

    initial begin
        #10
        reset = 1'b1;
        #10
        reset = 1'b0;
    end

    always begin
        // Random period where the button is off
        #($urandom_range(360,480));
        // Bounce Loop
        // Random sequence of button Bounce
        for (i = 6;i>0;i--) begin
            // Button Bounce
            in = 1;
            #($urandom_range(120,20));
            in = 0;
            #($urandom_range(120,20));
        end
        in = 1;
        #($urandom_range(360,480));
        // Random sequence of button Bounce
        for (i = 6;i>0;i--) begin
            // Button Bounce
            in = 0;
            #($urandom_range(120,20));
            in = 1;
            #($urandom_range(120,20));
        end
        in = 0;
    end

    initial begin
        $dumpfile("debounce_tb.vcd");
        $dumpvars(0, debounce_tb);
        #(DURATION)
        $display("Finished!");
        $finish;
    end

    debounce #(
        // Parameters
        .CLOCK_SIZE(3),
        .CLOCK_START(3'd0),
        .CLOCK_LIMIT(3'd5)
    ) debounce_sut (
        .reset(reset),
        .in(in),
        .clock(clock),
        .out(button)
    );
endmodule