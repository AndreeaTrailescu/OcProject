library verilog;
use verilog.vl_types.all;
entity Sub is
    port(
        acc             : in     vl_logic_vector(32 downto 0);
        mux2            : in     vl_logic_vector(32 downto 0);
        sub             : out    vl_logic_vector(32 downto 0);
        r               : out    vl_logic_vector(32 downto 0)
    );
end Sub;
