library verilog;
use verilog.vl_types.all;
entity Concat is
    port(
        comp            : in     vl_logic;
        i               : in     vl_logic_vector(3 downto 0);
        rst             : in     vl_logic;
        sign            : in     vl_logic;
        rez             : out    vl_logic_vector(10 downto 0)
    );
end Concat;
