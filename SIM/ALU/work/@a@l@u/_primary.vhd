library verilog;
use verilog.vl_types.all;
entity ALU is
    generic(
        alu_add         : vl_logic_vector(0 to 4) := (Hi0, Hi0, Hi0, Hi0, Hi0);
        alu_and         : vl_logic_vector(0 to 4) := (Hi0, Hi0, Hi0, Hi0, Hi1);
        alu_xor         : vl_logic_vector(0 to 4) := (Hi0, Hi0, Hi0, Hi1, Hi0);
        alu_or          : vl_logic_vector(0 to 4) := (Hi0, Hi0, Hi0, Hi1, Hi1);
        alu_nor         : vl_logic_vector(0 to 4) := (Hi0, Hi0, Hi1, Hi0, Hi0);
        alu_sub         : vl_logic_vector(0 to 4) := (Hi0, Hi0, Hi1, Hi0, Hi1);
        alu_andi        : vl_logic_vector(0 to 4) := (Hi0, Hi0, Hi1, Hi1, Hi0);
        alu_xori        : vl_logic_vector(0 to 4) := (Hi0, Hi0, Hi1, Hi1, Hi1);
        alu_ori         : vl_logic_vector(0 to 4) := (Hi0, Hi1, Hi0, Hi0, Hi0);
        alu_jr          : vl_logic_vector(0 to 4) := (Hi0, Hi1, Hi0, Hi0, Hi1);
        alu_beq         : vl_logic_vector(0 to 4) := (Hi0, Hi1, Hi0, Hi1, Hi0);
        alu_bne         : vl_logic_vector(0 to 4) := (Hi0, Hi1, Hi0, Hi1, Hi1);
        alu_bgez        : vl_logic_vector(0 to 4) := (Hi0, Hi1, Hi1, Hi0, Hi0);
        alu_bgtz        : vl_logic_vector(0 to 4) := (Hi0, Hi1, Hi1, Hi0, Hi1);
        alu_blez        : vl_logic_vector(0 to 4) := (Hi0, Hi1, Hi1, Hi1, Hi0);
        alu_bltz        : vl_logic_vector(0 to 4) := (Hi0, Hi1, Hi1, Hi1, Hi1);
        alu_sll         : vl_logic_vector(0 to 4) := (Hi1, Hi0, Hi0, Hi0, Hi0);
        alu_srl         : vl_logic_vector(0 to 4) := (Hi1, Hi0, Hi0, Hi0, Hi1);
        alu_sra         : vl_logic_vector(0 to 4) := (Hi1, Hi0, Hi0, Hi1, Hi0);
        alu_slt         : vl_logic_vector(0 to 4) := (Hi1, Hi0, Hi0, Hi1, Hi1);
        alu_sltu        : vl_logic_vector(0 to 4) := (Hi1, Hi0, Hi1, Hi0, Hi0)
    );
    port(
        Result          : out    vl_logic_vector(31 downto 0);
        overflow        : out    vl_logic;
        ALUCode         : in     vl_logic_vector(4 downto 0);
        A               : in     vl_logic_vector(31 downto 0);
        B               : in     vl_logic_vector(31 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of alu_add : constant is 1;
    attribute mti_svvh_generic_type of alu_and : constant is 1;
    attribute mti_svvh_generic_type of alu_xor : constant is 1;
    attribute mti_svvh_generic_type of alu_or : constant is 1;
    attribute mti_svvh_generic_type of alu_nor : constant is 1;
    attribute mti_svvh_generic_type of alu_sub : constant is 1;
    attribute mti_svvh_generic_type of alu_andi : constant is 1;
    attribute mti_svvh_generic_type of alu_xori : constant is 1;
    attribute mti_svvh_generic_type of alu_ori : constant is 1;
    attribute mti_svvh_generic_type of alu_jr : constant is 1;
    attribute mti_svvh_generic_type of alu_beq : constant is 1;
    attribute mti_svvh_generic_type of alu_bne : constant is 1;
    attribute mti_svvh_generic_type of alu_bgez : constant is 1;
    attribute mti_svvh_generic_type of alu_bgtz : constant is 1;
    attribute mti_svvh_generic_type of alu_blez : constant is 1;
    attribute mti_svvh_generic_type of alu_bltz : constant is 1;
    attribute mti_svvh_generic_type of alu_sll : constant is 1;
    attribute mti_svvh_generic_type of alu_srl : constant is 1;
    attribute mti_svvh_generic_type of alu_sra : constant is 1;
    attribute mti_svvh_generic_type of alu_slt : constant is 1;
    attribute mti_svvh_generic_type of alu_sltu : constant is 1;
end ALU;
