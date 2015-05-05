library verilog;
use verilog.vl_types.all;
entity ir_decode is
    port(
        inst            : in     vl_logic_vector(1 downto 0);
        in_bscan        : out    vl_logic;
        in_scan         : out    vl_logic
    );
end ir_decode;
