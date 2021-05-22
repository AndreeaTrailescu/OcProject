library verilog;
use verilog.vl_types.all;
entity Factor is
    port(
        rez             : in     vl_logic_vector(10 downto 0);
        i               : in     vl_logic_vector(3 downto 0);
        rst             : in     vl_logic;
        f               : out    vl_logic_vector(32 downto 0)
    );
end Factor;
