library verilog;
use verilog.vl_types.all;
entity DataPath is
    port(
        D               : in     vl_logic_vector(31 downto 0);
        i               : in     vl_logic_vector(3 downto 0);
        rst             : in     vl_logic;
        f               : in     vl_logic_vector(32 downto 0);
        rez             : out    vl_logic_vector(10 downto 0);
        r               : out    vl_logic_vector(32 downto 0)
    );
end DataPath;
