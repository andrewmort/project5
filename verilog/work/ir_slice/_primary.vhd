library verilog;
use verilog.vl_types.all;
entity ir_slice is
    port(
        q               : out    vl_logic;
        o               : out    vl_logic;
        shift           : in     vl_logic;
        update          : in     vl_logic;
        d               : in     vl_logic
    );
end ir_slice;