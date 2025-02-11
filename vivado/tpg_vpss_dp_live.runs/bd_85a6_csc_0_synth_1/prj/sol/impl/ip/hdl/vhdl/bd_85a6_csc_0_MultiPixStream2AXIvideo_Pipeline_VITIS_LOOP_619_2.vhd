-- ==============================================================
-- Generated by Vitis HLS v2023.1
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity bd_85a6_csc_0_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_619_2 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    stream_out_vresampled_dout : IN STD_LOGIC_VECTOR (23 downto 0);
    stream_out_vresampled_num_data_valid : IN STD_LOGIC_VECTOR (4 downto 0);
    stream_out_vresampled_fifo_cap : IN STD_LOGIC_VECTOR (4 downto 0);
    stream_out_vresampled_empty_n : IN STD_LOGIC;
    stream_out_vresampled_read : OUT STD_LOGIC;
    m_axis_video_TREADY : IN STD_LOGIC;
    sof : IN STD_LOGIC_VECTOR (0 downto 0);
    cols : IN STD_LOGIC_VECTOR (11 downto 0);
    m_axis_video_TDATA : OUT STD_LOGIC_VECTOR (23 downto 0);
    m_axis_video_TVALID : OUT STD_LOGIC;
    m_axis_video_TKEEP : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axis_video_TSTRB : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axis_video_TUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axis_video_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axis_video_TID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axis_video_TDEST : OUT STD_LOGIC_VECTOR (0 downto 0);
    p_read : IN STD_LOGIC_VECTOR (7 downto 0);
    sub : IN STD_LOGIC_VECTOR (11 downto 0) );
end;


architecture behav of bd_85a6_csc_0_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_619_2 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv8_1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_const_lv12_0 : STD_LOGIC_VECTOR (11 downto 0) := "000000000000";
    constant ap_const_lv3_7 : STD_LOGIC_VECTOR (2 downto 0) := "111";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv12_1 : STD_LOGIC_VECTOR (11 downto 0) := "000000000001";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv32_17 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010111";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal icmp_ln619_reg_389 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state2_io : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln619_fu_217_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal m_axis_video_TDATA_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal stream_out_vresampled_blk_n : STD_LOGIC;
    signal sof_2_reg_163 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_read_8_reg_380 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal axi_last_fu_229_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal axi_last_reg_393 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_phi_mux_axi_data_2_phi_fu_178_p6 : STD_LOGIC_VECTOR (8 downto 0);
    signal axi_data_fu_282_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_phi_reg_pp0_iter1_axi_data_2_reg_175 : STD_LOGIC_VECTOR (8 downto 0);
    signal axi_data_3_fu_264_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal axi_data_1_fu_273_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_phi_mux_axi_data_7_phi_fu_189_p6 : STD_LOGIC_VECTOR (23 downto 0);
    signal axi_data_4_fu_321_p5 : STD_LOGIC_VECTOR (23 downto 0);
    signal ap_phi_reg_pp0_iter1_axi_data_7_reg_186 : STD_LOGIC_VECTOR (23 downto 0);
    signal axi_data_6_fu_295_p5 : STD_LOGIC_VECTOR (23 downto 0);
    signal axi_data_5_fu_308_p5 : STD_LOGIC_VECTOR (23 downto 0);
    signal ap_phi_mux_axi_data_11_phi_fu_200_p6 : STD_LOGIC_VECTOR (23 downto 0);
    signal axi_data_8_fu_360_p5 : STD_LOGIC_VECTOR (23 downto 0);
    signal ap_phi_reg_pp0_iter1_axi_data_11_reg_197 : STD_LOGIC_VECTOR (23 downto 0);
    signal axi_data_10_fu_334_p5 : STD_LOGIC_VECTOR (23 downto 0);
    signal axi_data_9_fu_347_p5 : STD_LOGIC_VECTOR (23 downto 0);
    signal j_fu_100 : STD_LOGIC_VECTOR (11 downto 0);
    signal j_2_fu_223_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_sig_allocacmp_j_1 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal pix_rgb_fu_240_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal pix_444_1_fu_244_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal sext_ln573_fu_291_p1 : STD_LOGIC_VECTOR (23 downto 0);
    signal pix_444_fu_254_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_condition_281 : BOOLEAN;
    signal ap_ce_reg : STD_LOGIC;

    component bd_85a6_csc_0_flow_control_loop_pipe_sequential_init IS
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
    flow_control_loop_pipe_sequential_init_U : component bd_85a6_csc_0_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
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
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter1_reg = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    ap_loop_exit_ready_pp0_iter1_reg_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) then
                if (((ap_loop_exit_ready = ap_const_logic_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_loop_exit_ready_pp0_iter1_reg <= ap_const_logic_0;
                elsif ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then 
                    ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
                end if;
            end if; 
        end if;
    end process;

    j_fu_100_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln619_fu_217_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    j_fu_100 <= j_2_fu_223_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    j_fu_100 <= ap_const_lv12_0;
                end if;
            end if; 
        end if;
    end process;

    sof_2_reg_163_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) then
                if ((ap_const_boolean_1 = ap_condition_281)) then 
                    sof_2_reg_163 <= ap_const_lv1_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_init = ap_const_logic_1))) then 
                    sof_2_reg_163 <= sof;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln619_fu_217_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                axi_last_reg_393 <= axi_last_fu_229_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                icmp_ln619_reg_389 <= icmp_ln619_fu_217_p2;
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
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(ap_enable_reg_pp0_iter1, stream_out_vresampled_empty_n, icmp_ln619_reg_389, m_axis_video_TREADY)
    begin
                ap_block_pp0_stage0_01001 <= ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((m_axis_video_TREADY = ap_const_logic_0) and (icmp_ln619_reg_389 = ap_const_lv1_0)) or ((icmp_ln619_reg_389 = ap_const_lv1_0) and (stream_out_vresampled_empty_n = ap_const_logic_0))));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(ap_enable_reg_pp0_iter1, stream_out_vresampled_empty_n, icmp_ln619_reg_389, m_axis_video_TREADY, ap_block_state2_io)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and ((ap_const_boolean_1 = ap_block_state2_io) or ((m_axis_video_TREADY = ap_const_logic_0) and (icmp_ln619_reg_389 = ap_const_lv1_0)) or ((icmp_ln619_reg_389 = ap_const_lv1_0) and (stream_out_vresampled_empty_n = ap_const_logic_0))));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_enable_reg_pp0_iter1, stream_out_vresampled_empty_n, icmp_ln619_reg_389, m_axis_video_TREADY, ap_block_state2_io)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and ((ap_const_boolean_1 = ap_block_state2_io) or ((m_axis_video_TREADY = ap_const_logic_0) and (icmp_ln619_reg_389 = ap_const_lv1_0)) or ((icmp_ln619_reg_389 = ap_const_lv1_0) and (stream_out_vresampled_empty_n = ap_const_logic_0))));
    end process;

        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state2_io_assign_proc : process(icmp_ln619_reg_389, m_axis_video_TREADY)
    begin
                ap_block_state2_io <= ((m_axis_video_TREADY = ap_const_logic_0) and (icmp_ln619_reg_389 = ap_const_lv1_0));
    end process;


    ap_block_state2_pp0_stage0_iter1_assign_proc : process(stream_out_vresampled_empty_n, icmp_ln619_reg_389, m_axis_video_TREADY)
    begin
                ap_block_state2_pp0_stage0_iter1 <= (((m_axis_video_TREADY = ap_const_logic_0) and (icmp_ln619_reg_389 = ap_const_lv1_0)) or ((icmp_ln619_reg_389 = ap_const_lv1_0) and (stream_out_vresampled_empty_n = ap_const_logic_0)));
    end process;


    ap_condition_281_assign_proc : process(ap_enable_reg_pp0_iter1, icmp_ln619_reg_389, ap_block_pp0_stage0_11001)
    begin
                ap_condition_281 <= ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln619_reg_389 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;


    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln619_fu_217_p2)
    begin
        if (((icmp_ln619_fu_217_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_done_reg, ap_loop_exit_ready_pp0_iter1_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter1_reg = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_idle_pp0 = ap_const_logic_1) and (ap_start_int = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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

    ap_phi_mux_axi_data_11_phi_fu_200_p6_assign_proc : process(icmp_ln619_reg_389, p_read_8_reg_380, axi_data_8_fu_360_p5, ap_phi_reg_pp0_iter1_axi_data_11_reg_197, axi_data_10_fu_334_p5, axi_data_9_fu_347_p5)
    begin
        if ((icmp_ln619_reg_389 = ap_const_lv1_0)) then
            if ((p_read_8_reg_380 = ap_const_lv8_0)) then 
                ap_phi_mux_axi_data_11_phi_fu_200_p6 <= axi_data_9_fu_347_p5;
            elsif ((p_read_8_reg_380 = ap_const_lv8_1)) then 
                ap_phi_mux_axi_data_11_phi_fu_200_p6 <= axi_data_10_fu_334_p5;
            elsif ((not((p_read_8_reg_380 = ap_const_lv8_1)) and not((p_read_8_reg_380 = ap_const_lv8_0)))) then 
                ap_phi_mux_axi_data_11_phi_fu_200_p6 <= axi_data_8_fu_360_p5;
            else 
                ap_phi_mux_axi_data_11_phi_fu_200_p6 <= ap_phi_reg_pp0_iter1_axi_data_11_reg_197;
            end if;
        else 
            ap_phi_mux_axi_data_11_phi_fu_200_p6 <= ap_phi_reg_pp0_iter1_axi_data_11_reg_197;
        end if; 
    end process;


    ap_phi_mux_axi_data_2_phi_fu_178_p6_assign_proc : process(icmp_ln619_reg_389, p_read_8_reg_380, axi_data_fu_282_p3, ap_phi_reg_pp0_iter1_axi_data_2_reg_175, axi_data_3_fu_264_p3, axi_data_1_fu_273_p3)
    begin
        if ((icmp_ln619_reg_389 = ap_const_lv1_0)) then
            if ((p_read_8_reg_380 = ap_const_lv8_0)) then 
                ap_phi_mux_axi_data_2_phi_fu_178_p6 <= axi_data_1_fu_273_p3;
            elsif ((p_read_8_reg_380 = ap_const_lv8_1)) then 
                ap_phi_mux_axi_data_2_phi_fu_178_p6 <= axi_data_3_fu_264_p3;
            elsif ((not((p_read_8_reg_380 = ap_const_lv8_1)) and not((p_read_8_reg_380 = ap_const_lv8_0)))) then 
                ap_phi_mux_axi_data_2_phi_fu_178_p6 <= axi_data_fu_282_p3;
            else 
                ap_phi_mux_axi_data_2_phi_fu_178_p6 <= ap_phi_reg_pp0_iter1_axi_data_2_reg_175;
            end if;
        else 
            ap_phi_mux_axi_data_2_phi_fu_178_p6 <= ap_phi_reg_pp0_iter1_axi_data_2_reg_175;
        end if; 
    end process;


    ap_phi_mux_axi_data_7_phi_fu_189_p6_assign_proc : process(icmp_ln619_reg_389, p_read_8_reg_380, axi_data_4_fu_321_p5, ap_phi_reg_pp0_iter1_axi_data_7_reg_186, axi_data_6_fu_295_p5, axi_data_5_fu_308_p5)
    begin
        if ((icmp_ln619_reg_389 = ap_const_lv1_0)) then
            if ((p_read_8_reg_380 = ap_const_lv8_0)) then 
                ap_phi_mux_axi_data_7_phi_fu_189_p6 <= axi_data_5_fu_308_p5;
            elsif ((p_read_8_reg_380 = ap_const_lv8_1)) then 
                ap_phi_mux_axi_data_7_phi_fu_189_p6 <= axi_data_6_fu_295_p5;
            elsif ((not((p_read_8_reg_380 = ap_const_lv8_1)) and not((p_read_8_reg_380 = ap_const_lv8_0)))) then 
                ap_phi_mux_axi_data_7_phi_fu_189_p6 <= axi_data_4_fu_321_p5;
            else 
                ap_phi_mux_axi_data_7_phi_fu_189_p6 <= ap_phi_reg_pp0_iter1_axi_data_7_reg_186;
            end if;
        else 
            ap_phi_mux_axi_data_7_phi_fu_189_p6 <= ap_phi_reg_pp0_iter1_axi_data_7_reg_186;
        end if; 
    end process;

    ap_phi_reg_pp0_iter1_axi_data_11_reg_197 <= "XXXXXXXXXXXXXXXXXXXXXXXX";
    ap_phi_reg_pp0_iter1_axi_data_2_reg_175 <= "XXXXXXXXX";
    ap_phi_reg_pp0_iter1_axi_data_7_reg_186 <= "XXXXXXXXXXXXXXXXXXXXXXXX";

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_j_1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, j_fu_100)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_j_1 <= ap_const_lv12_0;
        else 
            ap_sig_allocacmp_j_1 <= j_fu_100;
        end if; 
    end process;

    axi_data_10_fu_334_p5 <= (pix_444_fu_254_p4 & ap_phi_mux_axi_data_7_phi_fu_189_p6(15 downto 0));
    axi_data_1_fu_273_p3 <= (ap_const_lv1_1 & pix_444_1_fu_244_p4);
    axi_data_3_fu_264_p3 <= (ap_const_lv1_1 & pix_rgb_fu_240_p1);
    axi_data_4_fu_321_p5 <= (sext_ln573_fu_291_p1(23 downto 16) & pix_444_1_fu_244_p4 & sext_ln573_fu_291_p1(7 downto 0));
    axi_data_5_fu_308_p5 <= (sext_ln573_fu_291_p1(23 downto 16) & pix_444_fu_254_p4 & sext_ln573_fu_291_p1(7 downto 0));
    axi_data_6_fu_295_p5 <= (sext_ln573_fu_291_p1(23 downto 16) & pix_444_1_fu_244_p4 & sext_ln573_fu_291_p1(7 downto 0));
    axi_data_8_fu_360_p5 <= (pix_444_fu_254_p4 & ap_phi_mux_axi_data_7_phi_fu_189_p6(15 downto 0));
    axi_data_9_fu_347_p5 <= (pix_rgb_fu_240_p1 & ap_phi_mux_axi_data_7_phi_fu_189_p6(15 downto 0));
    axi_data_fu_282_p3 <= (ap_const_lv1_1 & pix_rgb_fu_240_p1);
    axi_last_fu_229_p2 <= "1" when (ap_sig_allocacmp_j_1 = sub) else "0";
    icmp_ln619_fu_217_p2 <= "1" when (ap_sig_allocacmp_j_1 = cols) else "0";
    j_2_fu_223_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_j_1) + unsigned(ap_const_lv12_1));
    m_axis_video_TDATA <= ap_phi_mux_axi_data_11_phi_fu_200_p6;

    m_axis_video_TDATA_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln619_reg_389, m_axis_video_TREADY, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (icmp_ln619_reg_389 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            m_axis_video_TDATA_blk_n <= m_axis_video_TREADY;
        else 
            m_axis_video_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    m_axis_video_TDEST <= ap_const_lv1_0;
    m_axis_video_TID <= ap_const_lv1_0;
    m_axis_video_TKEEP <= ap_const_lv3_7;
    m_axis_video_TLAST <= axi_last_reg_393;
    m_axis_video_TSTRB <= ap_const_lv3_0;
    m_axis_video_TUSER <= sof_2_reg_163;

    m_axis_video_TVALID_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln619_reg_389, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln619_reg_389 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            m_axis_video_TVALID <= ap_const_logic_1;
        else 
            m_axis_video_TVALID <= ap_const_logic_0;
        end if; 
    end process;

    p_read_8_reg_380 <= p_read;
    pix_444_1_fu_244_p4 <= stream_out_vresampled_dout(15 downto 8);
    pix_444_fu_254_p4 <= stream_out_vresampled_dout(23 downto 16);
    pix_rgb_fu_240_p1 <= stream_out_vresampled_dout(8 - 1 downto 0);
        sext_ln573_fu_291_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(ap_phi_mux_axi_data_2_phi_fu_178_p6),24));


    stream_out_vresampled_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, stream_out_vresampled_empty_n, icmp_ln619_reg_389, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (icmp_ln619_reg_389 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            stream_out_vresampled_blk_n <= stream_out_vresampled_empty_n;
        else 
            stream_out_vresampled_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    stream_out_vresampled_read_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln619_reg_389, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln619_reg_389 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            stream_out_vresampled_read <= ap_const_logic_1;
        else 
            stream_out_vresampled_read <= ap_const_logic_0;
        end if; 
    end process;

end behav;
