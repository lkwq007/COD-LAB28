library verilog;
use verilog.vl_types.all;
entity mux_2_to_1 is
    generic(
        N               : integer := 4
    );
    port(
        sel             : in     vl_logic;
        in1             : in     vl_logic_vector;
        in2             : in     vl_logic_vector;
        \out\           : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of N : constant is 1;
end mux_2_to_1;
