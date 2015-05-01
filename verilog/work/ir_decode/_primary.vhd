library verilog;
use verilog.vl_types.all;
entity ir_decode is
    port(
        b1i             : out    vl_logic;
        b2i             : out    vl_logic;
        b1o             : out    vl_logic;
        b2o             : out    vl_logic;
        inst            : in     vl_logic_vector(1 downto 0)
    );
end ir_decode;