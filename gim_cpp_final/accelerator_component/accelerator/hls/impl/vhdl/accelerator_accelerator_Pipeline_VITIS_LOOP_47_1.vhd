-- ==============================================================
-- Generated by Vitis HLS v2024.1
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity accelerator_accelerator_Pipeline_VITIS_LOOP_47_1 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    w1_address0 : OUT STD_LOGIC_VECTOR (1 downto 0);
    w1_ce0 : OUT STD_LOGIC;
    w1_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    w1_address1 : OUT STD_LOGIC_VECTOR (1 downto 0);
    w1_ce1 : OUT STD_LOGIC;
    w1_q1 : IN STD_LOGIC_VECTOR (15 downto 0);
    w2_address0 : OUT STD_LOGIC_VECTOR (1 downto 0);
    w2_ce0 : OUT STD_LOGIC;
    w2_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    w2_address1 : OUT STD_LOGIC_VECTOR (1 downto 0);
    w2_ce1 : OUT STD_LOGIC;
    w2_q1 : IN STD_LOGIC_VECTOR (15 downto 0);
    bias_1_address0 : OUT STD_LOGIC_VECTOR (0 downto 0);
    bias_1_ce0 : OUT STD_LOGIC;
    bias_1_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    bias_2_address0 : OUT STD_LOGIC_VECTOR (0 downto 0);
    bias_2_ce0 : OUT STD_LOGIC;
    bias_2_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    w2_local_3_out : OUT STD_LOGIC_VECTOR (15 downto 0);
    w2_local_3_out_ap_vld : OUT STD_LOGIC;
    w2_local_2_out : OUT STD_LOGIC_VECTOR (15 downto 0);
    w2_local_2_out_ap_vld : OUT STD_LOGIC;
    w1_local_3_out : OUT STD_LOGIC_VECTOR (15 downto 0);
    w1_local_3_out_ap_vld : OUT STD_LOGIC;
    w1_local_2_out : OUT STD_LOGIC_VECTOR (15 downto 0);
    w1_local_2_out_ap_vld : OUT STD_LOGIC;
    w2_local_1_out : OUT STD_LOGIC_VECTOR (15 downto 0);
    w2_local_1_out_ap_vld : OUT STD_LOGIC;
    w2_local_out : OUT STD_LOGIC_VECTOR (15 downto 0);
    w2_local_out_ap_vld : OUT STD_LOGIC;
    w1_local_1_out : OUT STD_LOGIC_VECTOR (15 downto 0);
    w1_local_1_out_ap_vld : OUT STD_LOGIC;
    w1_local_out : OUT STD_LOGIC_VECTOR (15 downto 0);
    w1_local_out_ap_vld : OUT STD_LOGIC;
    bias_2_local_idx4_promoted151_out : OUT STD_LOGIC_VECTOR (15 downto 0);
    bias_2_local_idx4_promoted151_out_ap_vld : OUT STD_LOGIC;
    bias_2_local_idx_promoted149_out : OUT STD_LOGIC_VECTOR (15 downto 0);
    bias_2_local_idx_promoted149_out_ap_vld : OUT STD_LOGIC;
    bias_1_local_idx1_promoted147_out : OUT STD_LOGIC_VECTOR (15 downto 0);
    bias_1_local_idx1_promoted147_out_ap_vld : OUT STD_LOGIC;
    bias_1_local_idx_promoted145_out : OUT STD_LOGIC_VECTOR (15 downto 0);
    bias_1_local_idx_promoted145_out_ap_vld : OUT STD_LOGIC );
end;


architecture behav of accelerator_accelerator_Pipeline_VITIS_LOOP_47_1 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln47_fu_350_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal icmp_ln48_fu_398_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln48_reg_768 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln51_fu_378_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal zext_ln51_1_fu_392_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln47_fu_366_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal n_fu_70 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal add_ln47_fu_356_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_n_1 : STD_LOGIC_VECTOR (1 downto 0);
    signal bias_1_local_idx_promoted145_fu_74 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    signal select_ln48_8_fu_501_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal bias_1_local_idx1_promoted147_fu_78 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    signal select_ln48_9_fu_508_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal bias_2_local_idx_promoted149_fu_82 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    signal select_ln48_11_fu_522_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal bias_2_local_idx4_promoted151_fu_86 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    signal select_ln48_10_fu_515_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal w1_local_fu_90 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    signal select_ln48_7_fu_494_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal w1_local_1_fu_94 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    signal select_ln48_6_fu_487_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal w2_local_fu_98 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    signal select_ln48_5_fu_480_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal w2_local_1_fu_102 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    signal select_ln48_4_fu_473_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal w1_local_2_fu_106 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    signal select_ln48_3_fu_466_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal w1_local_3_fu_110 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    signal select_ln48_2_fu_459_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal w2_local_2_fu_114 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    signal select_ln48_1_fu_452_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal w2_local_3_fu_118 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    signal select_ln48_fu_445_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal bias_1_ce0_local : STD_LOGIC;
    signal bias_2_ce0_local : STD_LOGIC;
    signal w1_ce1_local : STD_LOGIC;
    signal w1_ce0_local : STD_LOGIC;
    signal w2_ce1_local : STD_LOGIC;
    signal w2_ce0_local : STD_LOGIC;
    signal shl_ln51_fu_372_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal trunc_ln47_fu_362_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_s_fu_384_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ready_sig : STD_LOGIC;
    signal ap_done_sig : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component accelerator_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    flow_control_loop_pipe_sequential_init_U : component accelerator_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready_sig,
        ap_done => ap_done_sig,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage0)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    bias_1_local_idx1_promoted147_fu_78_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    bias_1_local_idx1_promoted147_fu_78 <= ap_const_lv16_0;
                elsif ((ap_enable_reg_pp0_iter1 = ap_const_logic_1)) then 
                    bias_1_local_idx1_promoted147_fu_78 <= select_ln48_9_fu_508_p3;
                end if;
            end if; 
        end if;
    end process;

    bias_1_local_idx_promoted145_fu_74_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    bias_1_local_idx_promoted145_fu_74 <= ap_const_lv16_0;
                elsif ((ap_enable_reg_pp0_iter1 = ap_const_logic_1)) then 
                    bias_1_local_idx_promoted145_fu_74 <= select_ln48_8_fu_501_p3;
                end if;
            end if; 
        end if;
    end process;

    bias_2_local_idx4_promoted151_fu_86_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    bias_2_local_idx4_promoted151_fu_86 <= ap_const_lv16_0;
                elsif ((ap_enable_reg_pp0_iter1 = ap_const_logic_1)) then 
                    bias_2_local_idx4_promoted151_fu_86 <= select_ln48_10_fu_515_p3;
                end if;
            end if; 
        end if;
    end process;

    bias_2_local_idx_promoted149_fu_82_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    bias_2_local_idx_promoted149_fu_82 <= ap_const_lv16_0;
                elsif ((ap_enable_reg_pp0_iter1 = ap_const_logic_1)) then 
                    bias_2_local_idx_promoted149_fu_82 <= select_ln48_11_fu_522_p3;
                end if;
            end if; 
        end if;
    end process;

    n_fu_70_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln47_fu_350_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    n_fu_70 <= add_ln47_fu_356_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    n_fu_70 <= ap_const_lv2_0;
                end if;
            end if; 
        end if;
    end process;

    w1_local_1_fu_94_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    w1_local_1_fu_94 <= ap_const_lv16_0;
                elsif ((ap_enable_reg_pp0_iter1 = ap_const_logic_1)) then 
                    w1_local_1_fu_94 <= select_ln48_6_fu_487_p3;
                end if;
            end if; 
        end if;
    end process;

    w1_local_2_fu_106_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    w1_local_2_fu_106 <= ap_const_lv16_0;
                elsif ((ap_enable_reg_pp0_iter1 = ap_const_logic_1)) then 
                    w1_local_2_fu_106 <= select_ln48_3_fu_466_p3;
                end if;
            end if; 
        end if;
    end process;

    w1_local_3_fu_110_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    w1_local_3_fu_110 <= ap_const_lv16_0;
                elsif ((ap_enable_reg_pp0_iter1 = ap_const_logic_1)) then 
                    w1_local_3_fu_110 <= select_ln48_2_fu_459_p3;
                end if;
            end if; 
        end if;
    end process;

    w1_local_fu_90_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    w1_local_fu_90 <= ap_const_lv16_0;
                elsif ((ap_enable_reg_pp0_iter1 = ap_const_logic_1)) then 
                    w1_local_fu_90 <= select_ln48_7_fu_494_p3;
                end if;
            end if; 
        end if;
    end process;

    w2_local_1_fu_102_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    w2_local_1_fu_102 <= ap_const_lv16_0;
                elsif ((ap_enable_reg_pp0_iter1 = ap_const_logic_1)) then 
                    w2_local_1_fu_102 <= select_ln48_4_fu_473_p3;
                end if;
            end if; 
        end if;
    end process;

    w2_local_2_fu_114_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    w2_local_2_fu_114 <= ap_const_lv16_0;
                elsif ((ap_enable_reg_pp0_iter1 = ap_const_logic_1)) then 
                    w2_local_2_fu_114 <= select_ln48_1_fu_452_p3;
                end if;
            end if; 
        end if;
    end process;

    w2_local_3_fu_118_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    w2_local_3_fu_118 <= ap_const_lv16_0;
                elsif ((ap_enable_reg_pp0_iter1 = ap_const_logic_1)) then 
                    w2_local_3_fu_118 <= select_ln48_fu_445_p3;
                end if;
            end if; 
        end if;
    end process;

    w2_local_fu_98_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    w2_local_fu_98 <= ap_const_lv16_0;
                elsif ((ap_enable_reg_pp0_iter1 = ap_const_logic_1)) then 
                    w2_local_fu_98 <= select_ln48_5_fu_480_p3;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                icmp_ln48_reg_768 <= icmp_ln48_fu_398_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    add_ln47_fu_356_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_n_1) + unsigned(ap_const_lv2_1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_01001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln47_fu_350_p2)
    begin
        if (((icmp_ln47_fu_350_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_done <= ap_done_sig;

    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_loop_exit_ready, ap_done_reg)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_0) and (ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;
    ap_ready <= ap_ready_sig;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_n_1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, n_fu_70, ap_loop_init)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_n_1 <= ap_const_lv2_0;
        else 
            ap_sig_allocacmp_n_1 <= n_fu_70;
        end if; 
    end process;

    bias_1_address0 <= zext_ln47_fu_366_p1(1 - 1 downto 0);
    bias_1_ce0 <= bias_1_ce0_local;

    bias_1_ce0_local_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            bias_1_ce0_local <= ap_const_logic_1;
        else 
            bias_1_ce0_local <= ap_const_logic_0;
        end if; 
    end process;

    bias_1_local_idx1_promoted147_out <= bias_1_local_idx1_promoted147_fu_78;

    bias_1_local_idx1_promoted147_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln47_fu_350_p2, ap_loop_exit_ready, ap_block_pp0_stage0_11001)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (icmp_ln47_fu_350_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            bias_1_local_idx1_promoted147_out_ap_vld <= ap_const_logic_1;
        else 
            bias_1_local_idx1_promoted147_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    bias_1_local_idx_promoted145_out <= bias_1_local_idx_promoted145_fu_74;

    bias_1_local_idx_promoted145_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln47_fu_350_p2, ap_loop_exit_ready, ap_block_pp0_stage0_11001)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (icmp_ln47_fu_350_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            bias_1_local_idx_promoted145_out_ap_vld <= ap_const_logic_1;
        else 
            bias_1_local_idx_promoted145_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    bias_2_address0 <= zext_ln47_fu_366_p1(1 - 1 downto 0);
    bias_2_ce0 <= bias_2_ce0_local;

    bias_2_ce0_local_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            bias_2_ce0_local <= ap_const_logic_1;
        else 
            bias_2_ce0_local <= ap_const_logic_0;
        end if; 
    end process;

    bias_2_local_idx4_promoted151_out <= bias_2_local_idx4_promoted151_fu_86;

    bias_2_local_idx4_promoted151_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln47_fu_350_p2, ap_loop_exit_ready, ap_block_pp0_stage0_11001)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (icmp_ln47_fu_350_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            bias_2_local_idx4_promoted151_out_ap_vld <= ap_const_logic_1;
        else 
            bias_2_local_idx4_promoted151_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    bias_2_local_idx_promoted149_out <= bias_2_local_idx_promoted149_fu_82;

    bias_2_local_idx_promoted149_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln47_fu_350_p2, ap_loop_exit_ready, ap_block_pp0_stage0_11001)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (icmp_ln47_fu_350_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            bias_2_local_idx_promoted149_out_ap_vld <= ap_const_logic_1;
        else 
            bias_2_local_idx_promoted149_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    icmp_ln47_fu_350_p2 <= "1" when (ap_sig_allocacmp_n_1 = ap_const_lv2_2) else "0";
    icmp_ln48_fu_398_p2 <= "1" when (ap_sig_allocacmp_n_1 = ap_const_lv2_0) else "0";
    select_ln48_10_fu_515_p3 <= 
        bias_2_local_idx4_promoted151_fu_86 when (icmp_ln48_reg_768(0) = '1') else 
        bias_2_q0;
    select_ln48_11_fu_522_p3 <= 
        bias_2_q0 when (icmp_ln48_reg_768(0) = '1') else 
        bias_2_local_idx_promoted149_fu_82;
    select_ln48_1_fu_452_p3 <= 
        w2_q1 when (icmp_ln48_reg_768(0) = '1') else 
        w2_local_2_fu_114;
    select_ln48_2_fu_459_p3 <= 
        w1_q0 when (icmp_ln48_reg_768(0) = '1') else 
        w1_local_3_fu_110;
    select_ln48_3_fu_466_p3 <= 
        w1_q1 when (icmp_ln48_reg_768(0) = '1') else 
        w1_local_2_fu_106;
    select_ln48_4_fu_473_p3 <= 
        w2_local_1_fu_102 when (icmp_ln48_reg_768(0) = '1') else 
        w2_q0;
    select_ln48_5_fu_480_p3 <= 
        w2_local_fu_98 when (icmp_ln48_reg_768(0) = '1') else 
        w2_q1;
    select_ln48_6_fu_487_p3 <= 
        w1_local_1_fu_94 when (icmp_ln48_reg_768(0) = '1') else 
        w1_q0;
    select_ln48_7_fu_494_p3 <= 
        w1_local_fu_90 when (icmp_ln48_reg_768(0) = '1') else 
        w1_q1;
    select_ln48_8_fu_501_p3 <= 
        bias_1_q0 when (icmp_ln48_reg_768(0) = '1') else 
        bias_1_local_idx_promoted145_fu_74;
    select_ln48_9_fu_508_p3 <= 
        bias_1_local_idx1_promoted147_fu_78 when (icmp_ln48_reg_768(0) = '1') else 
        bias_1_q0;
    select_ln48_fu_445_p3 <= 
        w2_q0 when (icmp_ln48_reg_768(0) = '1') else 
        w2_local_3_fu_118;
    shl_ln51_fu_372_p2 <= std_logic_vector(shift_left(unsigned(ap_sig_allocacmp_n_1),to_integer(unsigned('0' & ap_const_lv2_1(2-1 downto 0)))));
    tmp_s_fu_384_p3 <= (trunc_ln47_fu_362_p1 & ap_const_lv1_1);
    trunc_ln47_fu_362_p1 <= ap_sig_allocacmp_n_1(1 - 1 downto 0);
    w1_address0 <= zext_ln51_1_fu_392_p1(2 - 1 downto 0);
    w1_address1 <= zext_ln51_fu_378_p1(2 - 1 downto 0);
    w1_ce0 <= w1_ce0_local;

    w1_ce0_local_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            w1_ce0_local <= ap_const_logic_1;
        else 
            w1_ce0_local <= ap_const_logic_0;
        end if; 
    end process;

    w1_ce1 <= w1_ce1_local;

    w1_ce1_local_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            w1_ce1_local <= ap_const_logic_1;
        else 
            w1_ce1_local <= ap_const_logic_0;
        end if; 
    end process;

    w1_local_1_out <= w1_local_1_fu_94;

    w1_local_1_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln47_fu_350_p2, ap_loop_exit_ready, ap_block_pp0_stage0_11001)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (icmp_ln47_fu_350_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            w1_local_1_out_ap_vld <= ap_const_logic_1;
        else 
            w1_local_1_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    w1_local_2_out <= w1_local_2_fu_106;

    w1_local_2_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln47_fu_350_p2, ap_loop_exit_ready, ap_block_pp0_stage0_11001)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (icmp_ln47_fu_350_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            w1_local_2_out_ap_vld <= ap_const_logic_1;
        else 
            w1_local_2_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    w1_local_3_out <= w1_local_3_fu_110;

    w1_local_3_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln47_fu_350_p2, ap_loop_exit_ready, ap_block_pp0_stage0_11001)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (icmp_ln47_fu_350_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            w1_local_3_out_ap_vld <= ap_const_logic_1;
        else 
            w1_local_3_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    w1_local_out <= w1_local_fu_90;

    w1_local_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln47_fu_350_p2, ap_loop_exit_ready, ap_block_pp0_stage0_11001)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (icmp_ln47_fu_350_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            w1_local_out_ap_vld <= ap_const_logic_1;
        else 
            w1_local_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    w2_address0 <= zext_ln51_1_fu_392_p1(2 - 1 downto 0);
    w2_address1 <= zext_ln51_fu_378_p1(2 - 1 downto 0);
    w2_ce0 <= w2_ce0_local;

    w2_ce0_local_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            w2_ce0_local <= ap_const_logic_1;
        else 
            w2_ce0_local <= ap_const_logic_0;
        end if; 
    end process;

    w2_ce1 <= w2_ce1_local;

    w2_ce1_local_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            w2_ce1_local <= ap_const_logic_1;
        else 
            w2_ce1_local <= ap_const_logic_0;
        end if; 
    end process;

    w2_local_1_out <= w2_local_1_fu_102;

    w2_local_1_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln47_fu_350_p2, ap_loop_exit_ready, ap_block_pp0_stage0_11001)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (icmp_ln47_fu_350_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            w2_local_1_out_ap_vld <= ap_const_logic_1;
        else 
            w2_local_1_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    w2_local_2_out <= w2_local_2_fu_114;

    w2_local_2_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln47_fu_350_p2, ap_loop_exit_ready, ap_block_pp0_stage0_11001)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (icmp_ln47_fu_350_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            w2_local_2_out_ap_vld <= ap_const_logic_1;
        else 
            w2_local_2_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    w2_local_3_out <= w2_local_3_fu_118;

    w2_local_3_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln47_fu_350_p2, ap_loop_exit_ready, ap_block_pp0_stage0_11001)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (icmp_ln47_fu_350_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            w2_local_3_out_ap_vld <= ap_const_logic_1;
        else 
            w2_local_3_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    w2_local_out <= w2_local_fu_98;

    w2_local_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln47_fu_350_p2, ap_loop_exit_ready, ap_block_pp0_stage0_11001)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (icmp_ln47_fu_350_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            w2_local_out_ap_vld <= ap_const_logic_1;
        else 
            w2_local_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    zext_ln47_fu_366_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_sig_allocacmp_n_1),64));
    zext_ln51_1_fu_392_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_s_fu_384_p3),64));
    zext_ln51_fu_378_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(shl_ln51_fu_372_p2),64));
end behav;
