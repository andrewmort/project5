library verilog;
use verilog.vl_types.all;
entity bilbo_bsr is
    port(
        q               : out    vl_logic;
        clock           : in     vl_logic;
        data            : in     vl_logic;
        tdata           : in     vl_logic;
        sel             : in     vl_logic;
        b1              : in     vl_logic;
        b2              : in     vl_logic
    );
end bilbo_bsr;
