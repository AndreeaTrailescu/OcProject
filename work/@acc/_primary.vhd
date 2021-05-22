library verilog;
use verilog.vl_types.all;
entity Acc is
    port(
        sub             : in     vl_logic_vector(32 downto 0);
        mux1            : in     vl_logic_vector(2 downto 0);
        i               : in     vl_logic_vector(3 downto 0);
        rst             : in     vl_logic;
        acc             : out    vl_logic_vector(32 downto 0)
    );
end Acc;
