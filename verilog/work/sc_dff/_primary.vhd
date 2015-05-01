library verilog;
use verilog.vl_types.all;
entity sc_dff is
    port(
        q               : out    vl_logic;
        clock           : in     vl_logic;
        data            : in     vl_logic;
        tdata           : in     vl_logic;
        sel             : in     vl_logic
    );
end sc_dff;
