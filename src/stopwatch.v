//=============================================================================
// This module is a stop-watch.
//
// Author: D. Wolf
//=============================================================================
module stopwatch # (parameter FREQ_HZ = 100000000)
(
    input           clk,
    
    // Button inputs 
    input           start, clear,

    // Allows us to control which digits are displayed
    output reg[7:0] digit_enable,

    // Allows us to control which decimal-points are displayed
    output reg[7:0] dp_enable,

    // When "latch_test_value" strobes high, "test_value" will
    // latch to the currently displayed output
    input [31:0]    test_value,
    
    // When this strobes high, the stopwatch will take on the 
    // value specified by "test_value"
    input           latch_test_value,

    // These are the digits being driven out to the display
    output[31:0]    display
);

// This is the duration of 100th of a second in clock-ticks
localparam HUNDRETH_OF_SECOND = (FREQ_HZ / 100) - 1;

// The maximum time that can be displayed is 99:59:59:99
localparam[31:0] MAX_TIME = 32'h99595999;

// Each digit of the display is represented by a 4-bit value
reg[3:0] digit[7:0];

// Each digit of the display reads a signal that says "increment" and
// outputs an "increment" signal for the digit to its left.
reg[8:0] increment;

// This is the maximum value for each digit
wire[3:0] maximum[7:0];

// This will be a '1' when the stopwatch is paused.  The stopwatch
// can only be cleared when it is paused.
reg paused = 1;

//=============================================================================
// This state machine sets increment[0] to '1' every 100th of a second.
// It also controls the state of the "paused" register
//=============================================================================
reg[31:0] timer;
always @(posedge clk) begin

    // This will only ever stobe high for a single cycle at a time
    increment[0] <= 0;

    // If the user presses "start", we either pause or un-pause
    if (start) paused = !paused;

    // If we are paused, and if the user hits the "clear" button, make it so
    if (paused) begin
        if (clear) timer <= 0;
    end
    
    // Otherwise, we're running.  Did the timer just tick to a 100th of a sec?
    else if (timer == HUNDRETH_OF_SECOND) begin
        timer        <= 0;
        increment[0] <= 1;
    end

    // Otherwise, just inc the timer
    else timer <= timer + 1;
end
//=============================================================================



//=============================================================================
// Each digit is driven by it's own state machine.   When a digit is told
// to "increment" is does so, taking care to wrap back to 0.  When a given
// digit "wraps back to 0", it signals the digit to it's left to increment.
//
// Digit 0 is the right-most digit on the display, and digit 7 is the left-most
// digit on the display
//=============================================================================
genvar i;
for (i=0; i<8; i=i+1) begin

    // The display bits are mapped to their corresponding digit registers
    assign display[i*4 +: 4] = digit[i];

    // Determine the maxium displayable value for this digit
    assign maximum[i] = MAX_TIME[i*4 +: 4];

    // On every clock cycle...
    always @(posedge clk) begin

        // By default, we will not be incrementing the digit to the leftg
        increment[i+1] <= 0;

        // If we're being told to increment the digit...
        if (increment[i]) begin
            if (digit[i] == maximum[i]) begin      // If we're already at this digit's maximum...
                digit[i]       <= 0;               //   Store a zero into this digit
                increment[i+1] <= 1;               //   And increment the digit to the left
            end else                               // Otherwise...
                digit[i]       <= digit[i] + 1;    ///  Just increment this digit
        end

        // If we are paused and the user presses the "clear" button
        // set this digit to 0
        if (paused & clear) digit[i] <= 0;

        // If we've been told to assume a new value, make it so
        if (latch_test_value) digit[i] <= test_value[i*4 +: 4];

    end

end
//=============================================================================



//=============================================================================
// digit_enable = bitmap of which digits should be displayed
//=============================================================================
always @* begin
    if      (display[31:00] == 0) digit_enable = 8'b00000111;
    else if (display[31:04] == 0) digit_enable = 8'b00000111;
    else if (display[31:08] == 0) digit_enable = 8'b00000111;
    else if (display[31:12] == 0) digit_enable = 8'b00000111;
    else if (display[31:16] == 0) digit_enable = 8'b00001111;
    else if (display[31:20] == 0) digit_enable = 8'b00011111;
    else if (display[31:24] == 0) digit_enable = 8'b00111111;
    else if (display[31:28] == 0) digit_enable = 8'b01111111;
    else                          digit_enable = 8'b11111111;
end
//=============================================================================


//=============================================================================
// dp_enable = bitmap of which decimal-points should be displayed
//=============================================================================
always @* begin
    if      (display[31:00] == 0) dp_enable = 8'b00000100;
    else if (display[31:04] == 0) dp_enable = 8'b00000100;
    else if (display[31:08] == 0) dp_enable = 8'b00000100;
    else if (display[31:12] == 0) dp_enable = 8'b00000100;
    else if (display[31:16] == 0) dp_enable = 8'b00010100;
    else if (display[31:20] == 0) dp_enable = 8'b00010100;
    else if (display[31:24] == 0) dp_enable = 8'b01010100;
    else if (display[31:28] == 0) dp_enable = 8'b01010100;
    else                          dp_enable = 8'b01010100;
end
//=============================================================================


endmodule
