library verilog;
use verilog.vl_types.all;
entity dff is
    port(
        q               : out    vl_logic;
        clock           : in     vl_logic;
        data            : in     vl_logic
    );
end dff;
