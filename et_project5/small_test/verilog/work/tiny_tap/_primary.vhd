library verilog;
use verilog.vl_types.all;
entity tiny_tap is
    port(
        TDO             : out    vl_logic;
        CK              : in     vl_logic;
        TDI             : in     vl_logic;
        TMS             : in     vl_logic;
        TRST_b          : in     vl_logic;
        pi              : in     vl_logic_vector(1 downto 0);
        po              : out    vl_logic_vector(1 downto 0)
    );
end tiny_tap;
