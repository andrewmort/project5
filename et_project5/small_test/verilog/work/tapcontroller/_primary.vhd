library verilog;
use verilog.vl_types.all;
entity tapcontroller is
    port(
        TCK             : in     vl_logic;
        TRST            : in     vl_logic;
        TMS             : in     vl_logic;
        clockdr         : out    vl_logic;
        shiftdr         : out    vl_logic;
        updatedr        : out    vl_logic;
        clockir         : out    vl_logic;
        shiftir         : out    vl_logic;
        updateir        : out    vl_logic;
        \select\        : out    vl_logic;
        bs_en           : out    vl_logic
    );
end tapcontroller;
