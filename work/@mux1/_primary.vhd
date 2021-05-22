library verilog;
use verilog.vl_types.all;
entity Mux1 is
    port(
        D               : in     vl_logic_vector(31 downto 0);
        i               : in     vl_logic_vector(3 downto 0);
        mux1            : out    vl_logic_vector(2 downto 0)
    );
end Mux1;
