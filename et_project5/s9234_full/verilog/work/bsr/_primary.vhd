library verilog;
use verilog.vl_types.all;
entity bsr is
    port(
        q               : out    vl_logic;
        scan_out        : out    vl_logic;
        capture         : in     vl_logic;
        data            : in     vl_logic;
        scan_in         : in     vl_logic;
        shift           : in     vl_logic;
        update          : in     vl_logic;
        clk             : in     vl_logic;
        en              : in     vl_logic
    );
end bsr;
