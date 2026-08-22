// Code your testbench here
// or browse Examples
module datatype_demo;

    //2 state
    bit         b;
    byte        by;
    shortint    si;
    int         i;
    longint     li;

    // 4-state data types
    logic       l;
    reg         r;

    // Vectors
    logic [7:0] data8;
    bit   [3:0] nibble;

    // Integer types
    integer     count;
    time        sim_time;

    // Real types
    real        pi;
    shortreal   temp;

    // String
    string      name;

    // Enum
    typedef enum {IDLE, START, STOP} state_t;
    state_t state;

    initial begin

       
        b        = 1;
        by       = 8'd100;
        si       = -200;
        i        = 32'd1000;
        li       = 64'd100000;

        l        = 1'bx;
        r        = 1'bz;

        data8    = 8'hAA;
        nibble   = 4'b1010;

        count    = 500;
        sim_time = $time;

        pi       = 3.14159;
        temp     = 36.5;

        name     = "SystemVerilog";

        state    = START;

        $display("===== SYSTEMVERILOG DATATYPES =====");

        $display("bit       = %b", b);
        $display("byte      = %0d", by);
        $display("shortint  = %0d", si);
        $display("int       = %0d", i);
        $display("longint   = %0d", li);

        $display("logic     = %b", l);
        $display("reg       = %b", r);

        $display("data8     = %h", data8);
        $display("nibble    = %b", nibble);

        $display("integer   = %0d", count);
        $display("time      = %0t", sim_time);

        $display("real      = %f", pi);
        $display("shortreal = %f", temp);

        $display("string    = %s", name);

        $display("enum      = %s", state.name());

        $finish;
    end

endmodule
