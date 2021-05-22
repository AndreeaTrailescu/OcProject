library verilog;
use verilog.vl_types.all;
entity Comp is
    port(
        acc             : in     vl_logic_vector(32 downto 0);
        f               : in     vl_logic_vector(32 downto 0);
        comp            : out    vl_logic
    );
end Comp;
