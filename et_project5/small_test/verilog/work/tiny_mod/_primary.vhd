library verilog;
use verilog.vl_types.all;
entity tiny_mod is
    port(
        CK              : in     vl_logic;
        chip_po         : out    vl_logic_vector(1 downto 0);
        chip_pi         : in     vl_logic_vector(1 downto 0);
        TDI             : in     vl_logic;
        bsr_capt        : in     vl_logic;
        in_scan_capt    : in     vl_logic;
        updr            : in     vl_logic;
        shftdr          : in     vl_logic;
        test_mode       : in     vl_logic;
        bsr_tdo         : out    vl_logic;
        in_scan_tdo     : out    vl_logic
    );
end tiny_mod;
