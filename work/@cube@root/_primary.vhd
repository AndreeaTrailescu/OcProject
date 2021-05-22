library verilog;
use verilog.vl_types.all;
entity CubeRoot is
    port(
        D               : in     vl_logic_vector(31 downto 0);
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        sign            : in     vl_logic;
        rez             : out    vl_logic_vector(10 downto 0);
        r               : out    vl_logic_vector(32 downto 0)
    );
end CubeRoot;
