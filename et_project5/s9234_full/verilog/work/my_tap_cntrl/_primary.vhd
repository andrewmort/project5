library verilog;
use verilog.vl_types.all;
entity my_tap_cntrl is
    port(
        TCK             : in     vl_logic;
        TRST            : in     vl_logic;
        TMS             : in     vl_logic;
        capturedr       : out    vl_logic;
        shiftdr         : out    vl_logic;
        updatedr        : out    vl_logic;
        captureir       : out    vl_logic;
        shiftir         : out    vl_logic;
        updateir        : out    vl_logic;
        \select\        : out    vl_logic;
        test_mode       : out    vl_logic
    );
end my_tap_cntrl;
