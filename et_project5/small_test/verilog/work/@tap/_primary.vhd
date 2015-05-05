library verilog;
use verilog.vl_types.all;
entity Tap is
    port(
        TDO             : out    vl_logic;
        TCK             : in     vl_logic;
        TDI             : in     vl_logic;
        TMS             : in     vl_logic;
        TRST_b          : in     vl_logic;
        bsr_tdo         : in     vl_logic;
        in_scan_tdo     : in     vl_logic;
        bsr_capt        : out    vl_logic;
        in_scan_capt    : out    vl_logic;
        shftdr          : out    vl_logic;
        updr            : out    vl_logic;
        test_mode       : out    vl_logic
    );
end Tap;
