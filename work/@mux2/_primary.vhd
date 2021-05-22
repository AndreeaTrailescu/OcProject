library verilog;
use verilog.vl_types.all;
entity Mux2 is
    port(
        comp            : in     vl_logic;
        f               : in     vl_logic_vector(32 downto 0);
        mux2            : out    vl_logic_vector(32 downto 0)
    );
end Mux2;
