library verilog;
use verilog.vl_types.all;
entity ir_reg is
    port(
        inst            : out    vl_logic_vector(1 downto 0);
        TDO             : out    vl_logic;
        shift           : in     vl_logic;
        update          : in     vl_logic;
        TDI             : in     vl_logic
    );
end ir_reg;
