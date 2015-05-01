library verilog;
use verilog.vl_types.all;
entity TAPtop is
    port(
        TDO             : out    vl_logic;
        TCK             : in     vl_logic;
        TDI             : in     vl_logic;
        TMS             : in     vl_logic;
        TRST_b          : in     vl_logic
    );
end TAPtop;
