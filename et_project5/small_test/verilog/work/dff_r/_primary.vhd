library verilog;
use verilog.vl_types.all;
entity dff_r is
    port(
        q               : out    vl_logic;
        clock           : in     vl_logic;
        reset_l         : in     vl_logic;
        data            : in     vl_logic
    );
end dff_r;
