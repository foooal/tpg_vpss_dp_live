
x
Command: %s
1870*	planAhead2C
/open_checkpoint mpsoc_preset_wrapper_routed.dcp2default:defaultZ12-2866h px� 
^

Starting %s Task
103*constraints2#
open_checkpoint2default:defaultZ18-103h px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.032 . Memory (MB): peak = 1316.680 ; gain = 7.3672default:defaulth px� 
[
Loading part %s157*device2(
xczu7ev-ffvc1156-2-e2default:defaultZ21-403h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.3572default:default2
2649.2622default:default2
0.0002default:defaultZ17-268h px� 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
5212default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
x
Netlist was created with %s %s291*project2
Vivado2default:default2
2023.12default:defaultZ1-479h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
�
�Could not create '%s' constraint because net '%s' is not directly connected to top level port. Synthesis is ignored for %s but preserved for implementation.
528*constraints2 
IBUF_LOW_PWR2default:default26
 mpsoc_preset_i/clk_wiz_0/clk_in12default:default2 
IBUF_LOW_PWR2default:default8Z18-550h px� 
L
*Restoring timing data from binary archive.264*timingZ38-478h px� 
F
$Binary timing data restore complete.265*timingZ38-479h px� 
L
*Restoring constraints from binary archive.481*projectZ1-856h px� 
E
#Binary constraint restore complete.478*projectZ1-853h px� 
?
Reading XDEF placement.
206*designutilsZ20-206h px� 
D
Reading placer database...
1602*designutilsZ20-1892h px� 
=
Reading XDEF routing.
207*designutilsZ20-207h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
Read XDEF Files: 2default:default2
00:00:002default:default2
00:00:032default:default2
3255.6452default:default2
58.7972default:defaultZ17-268h px� 
�
7Restored from archive | CPU: %s secs | Memory: %s MB |
1612*designutils2
0.0000002default:default2
0.0000002default:defaultZ20-1924h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common20
Finished XDEF File Restore: 2default:default2
00:00:002default:default2
00:00:032default:default2
3255.6452default:default2
58.7972default:defaultZ17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0092default:default2
3697.4302default:default2
0.0002default:defaultZ17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2�
�  A total of 197 instances were transformed.
  CFGLUT5 => CFGLUT5 (SRL16E, SRLC32E): 148 instances
  DSP48E2 => DSP48E2 (DSP_ALU, DSP_A_B_DATA, DSP_C_DATA, DSP_MULTIPLIER, DSP_M_DATA, DSP_OUTPUT, DSP_PREADD, DSP_PREADD_DATA): 29 instances
  RAM32M => RAM32M (RAMD32(x6), RAMS32(x2)): 2 instances
  RAM32M16 => RAM32M16 (RAMD32(x14), RAMS32(x2)): 10 instances
  RAM32X1D => RAM32X1D (RAMD32(x2)): 8 instances
2default:defaultZ1-111h px� 
�
'Checkpoint was created with %s build %s378*project2+
Vivado v2023.1 (64-bit)2default:default2
38658092default:defaultZ1-604h px� 
�
�Critical violations of the methodology design rules detected. Critical violations may contribute to timing failures or cause functional issues in hardware. Run report_methodology for more information.10702*	planAheadZ12-23575h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
open_checkpoint: 2default:default2
00:00:062default:default2
00:00:312default:default2
3697.4302default:default2
2388.3202default:defaultZ17-268h px� 
�
�The XPM instance: <%s> is part of IP: <%s>. This XPM instance will be excluded from the .mmi because updatemem is prohibited from making changes to an XPM that is part of an IP.
136*memdata2�
�mpsoc_preset_i/v_axi4s_vid_out_0/inst/COUPLER_INST/generate_async_fifo.FIFO_INST/XPM_FIFO_ASYNC_INST/gnuram_async_fifo.xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst2default:default24
 mpsoc_preset_i/v_axi4s_vid_out_02default:defaultZ28-208h px� 
t
Command: %s
53*	vivadotcl2C
/write_bitstream -force mpsoc_preset_wrapper.bit2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xczu7ev2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xczu7ev2default:defaultZ17-349h px� 
x
,Running DRC as a precondition to command %s
1349*	planAhead2#
write_bitstream2default:defaultZ12-1349h px� 
>
Refreshing IP repositories
234*coregenZ19-234h px� 
G
"No user IP repositories specified
1154*coregenZ19-1704h px� 
�
"Loaded Vivado IP repository '%s'.
1332*coregen2?
+D:/program/Xilinx2023/Vivado/2023.1/data/ip2default:defaultZ19-2313h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
{mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/add_ln147_3_fu_769_p2	{mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/add_ln147_3_fu_769_p22default:default2default:default2�
 "�
�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/add_ln147_3_fu_769_p2/A[29:0]}mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/add_ln147_3_fu_769_p2/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E22default:default8ZDPIP-2h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
{mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/add_ln147_3_fu_769_p2	{mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/add_ln147_3_fu_769_p22default:default2default:default2�
 "�
�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/add_ln147_3_fu_769_p2/B[17:0]}mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/add_ln147_3_fu_769_p2/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E22default:default8ZDPIP-2h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
{mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/add_ln149_3_fu_799_p2	{mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/add_ln149_3_fu_799_p22default:default2default:default2�
 "�
�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/add_ln149_3_fu_799_p2/A[29:0]}mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/add_ln149_3_fu_799_p2/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E22default:default8ZDPIP-2h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
{mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/add_ln149_3_fu_799_p2	{mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/add_ln149_3_fu_799_p22default:default2default:default2�
 "�
�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/add_ln149_3_fu_799_p2/B[17:0]}mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/add_ln149_3_fu_799_p2/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E22default:default8ZDPIP-2h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
{mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/add_ln151_3_fu_829_p2	{mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/add_ln151_3_fu_829_p22default:default2default:default2�
 "�
�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/add_ln151_3_fu_829_p2/A[29:0]}mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/add_ln151_3_fu_829_p2/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E22default:default8ZDPIP-2h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
{mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/add_ln151_3_fu_829_p2	{mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/add_ln151_3_fu_829_p22default:default2default:default2�
 "�
�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/add_ln151_3_fu_829_p2/B[17:0]}mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/add_ln151_3_fu_829_p2/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E22default:default8ZDPIP-2h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mac_muladd_8ns_16s_22s_25_4_1_U159/bd_85a6_csc_0_mac_muladd_8ns_16s_22s_25_4_1_DSP48_0_U/p_reg_reg	�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mac_muladd_8ns_16s_22s_25_4_1_U159/bd_85a6_csc_0_mac_muladd_8ns_16s_22s_25_4_1_DSP48_0_U/p_reg_reg2default:default2default:default2�
 "�
�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mac_muladd_8ns_16s_22s_25_4_1_U159/bd_85a6_csc_0_mac_muladd_8ns_16s_22s_25_4_1_DSP48_0_U/p_reg_reg/C[47:0]�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mac_muladd_8ns_16s_22s_25_4_1_U159/bd_85a6_csc_0_mac_muladd_8ns_16s_22s_25_4_1_DSP48_0_U/p_reg_reg/C2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E22default:default8ZDPIP-2h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mac_muladd_8ns_16s_22s_25_4_1_U160/bd_85a6_csc_0_mac_muladd_8ns_16s_22s_25_4_1_DSP48_0_U/p_reg_reg	�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mac_muladd_8ns_16s_22s_25_4_1_U160/bd_85a6_csc_0_mac_muladd_8ns_16s_22s_25_4_1_DSP48_0_U/p_reg_reg2default:default2default:default2�
 "�
�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mac_muladd_8ns_16s_22s_25_4_1_U160/bd_85a6_csc_0_mac_muladd_8ns_16s_22s_25_4_1_DSP48_0_U/p_reg_reg/C[47:0]�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mac_muladd_8ns_16s_22s_25_4_1_U160/bd_85a6_csc_0_mac_muladd_8ns_16s_22s_25_4_1_DSP48_0_U/p_reg_reg/C2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E22default:default8ZDPIP-2h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mac_muladd_8ns_16s_22s_25_4_1_U161/bd_85a6_csc_0_mac_muladd_8ns_16s_22s_25_4_1_DSP48_0_U/p_reg_reg	�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mac_muladd_8ns_16s_22s_25_4_1_U161/bd_85a6_csc_0_mac_muladd_8ns_16s_22s_25_4_1_DSP48_0_U/p_reg_reg2default:default2default:default2�
 "�
�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mac_muladd_8ns_16s_22s_25_4_1_U161/bd_85a6_csc_0_mac_muladd_8ns_16s_22s_25_4_1_DSP48_0_U/p_reg_reg/C[47:0]�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mac_muladd_8ns_16s_22s_25_4_1_U161/bd_85a6_csc_0_mac_muladd_8ns_16s_22s_25_4_1_DSP48_0_U/p_reg_reg/C2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E22default:default8ZDPIP-2h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U153/tmp_product	�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U153/tmp_product2default:default2default:default2�
 "�
�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U153/tmp_product/A[29:0]�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U153/tmp_product/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E22default:default8ZDPIP-2h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U154/tmp_product	�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U154/tmp_product2default:default2default:default2�
 "�
�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U154/tmp_product/A[29:0]�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U154/tmp_product/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E22default:default8ZDPIP-2h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U155/tmp_product	�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U155/tmp_product2default:default2default:default2�
 "�
�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U155/tmp_product/A[29:0]�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U155/tmp_product/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E22default:default8ZDPIP-2h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U156/tmp_product	�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U156/tmp_product2default:default2default:default2�
 "�
�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U156/tmp_product/A[29:0]�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U156/tmp_product/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E22default:default8ZDPIP-2h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U157/tmp_product	�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U157/tmp_product2default:default2default:default2�
 "�
�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U157/tmp_product/A[29:0]�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U157/tmp_product/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E22default:default8ZDPIP-2h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U158/tmp_product	�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U158/tmp_product2default:default2default:default2�
 "�
�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U158/tmp_product/A[29:0]�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U158/tmp_product/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E22default:default8ZDPIP-2h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
~mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/trunc_ln147_reg_1213_reg	~mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/trunc_ln147_reg_1213_reg2default:default2default:default2�
 "�
�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/trunc_ln147_reg_1213_reg/A[29:0]�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/trunc_ln147_reg_1213_reg/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E22default:default8ZDPIP-2h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
~mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/trunc_ln147_reg_1213_reg	~mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/trunc_ln147_reg_1213_reg2default:default2default:default2�
 "�
�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/trunc_ln147_reg_1213_reg/C[47:0]�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/trunc_ln147_reg_1213_reg/C2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E22default:default8ZDPIP-2h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
~mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/trunc_ln149_reg_1228_reg	~mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/trunc_ln149_reg_1228_reg2default:default2default:default2�
 "�
�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/trunc_ln149_reg_1228_reg/A[29:0]�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/trunc_ln149_reg_1228_reg/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E22default:default8ZDPIP-2h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
~mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/trunc_ln149_reg_1228_reg	~mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/trunc_ln149_reg_1228_reg2default:default2default:default2�
 "�
�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/trunc_ln149_reg_1228_reg/C[47:0]�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/trunc_ln149_reg_1228_reg/C2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E22default:default8ZDPIP-2h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
~mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/trunc_ln151_reg_1243_reg	~mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/trunc_ln151_reg_1243_reg2default:default2default:default2�
 "�
�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/trunc_ln151_reg_1243_reg/A[29:0]�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/trunc_ln151_reg_1243_reg/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E22default:default8ZDPIP-2h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
~mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/trunc_ln151_reg_1243_reg	~mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/trunc_ln151_reg_1243_reg2default:default2default:default2�
 "�
�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/trunc_ln151_reg_1243_reg/C[47:0]�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/trunc_ln151_reg_1243_reg/C2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E22default:default8ZDPIP-2h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
�mpsoc_preset_i/v_tpg_0/inst/grp_v_tpgHlsDataFlow_fu_313/tpgBackground_U0/grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_432/add_ln1257_3_fu_4181_p2	�mpsoc_preset_i/v_tpg_0/inst/grp_v_tpgHlsDataFlow_fu_313/tpgBackground_U0/grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_432/add_ln1257_3_fu_4181_p22default:default2default:default2�
 "�
�mpsoc_preset_i/v_tpg_0/inst/grp_v_tpgHlsDataFlow_fu_313/tpgBackground_U0/grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_432/add_ln1257_3_fu_4181_p2/C[47:0]�mpsoc_preset_i/v_tpg_0/inst/grp_v_tpgHlsDataFlow_fu_313/tpgBackground_U0/grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_432/add_ln1257_3_fu_4181_p2/C2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E22default:default8ZDPIP-2h px� 
�	
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
�mpsoc_preset_i/v_tpg_0/inst/grp_v_tpgHlsDataFlow_fu_313/tpgBackground_U0/grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_432/mac_muladd_16ns_8ns_23ns_24_4_1_U22/mpsoc_preset_v_tpg_0_0_mac_muladd_16ns_8ns_23ns_24_4_1_DSP48_5_U/p_reg_reg	�mpsoc_preset_i/v_tpg_0/inst/grp_v_tpgHlsDataFlow_fu_313/tpgBackground_U0/grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_432/mac_muladd_16ns_8ns_23ns_24_4_1_U22/mpsoc_preset_v_tpg_0_0_mac_muladd_16ns_8ns_23ns_24_4_1_DSP48_5_U/p_reg_reg2default:default2default:default2�
 "�
�mpsoc_preset_i/v_tpg_0/inst/grp_v_tpgHlsDataFlow_fu_313/tpgBackground_U0/grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_432/mac_muladd_16ns_8ns_23ns_24_4_1_U22/mpsoc_preset_v_tpg_0_0_mac_muladd_16ns_8ns_23ns_24_4_1_DSP48_5_U/p_reg_reg/C[47:0]�mpsoc_preset_i/v_tpg_0/inst/grp_v_tpgHlsDataFlow_fu_313/tpgBackground_U0/grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_432/mac_muladd_16ns_8ns_23ns_24_4_1_U22/mpsoc_preset_v_tpg_0_0_mac_muladd_16ns_8ns_23ns_24_4_1_DSP48_5_U/p_reg_reg/C2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E22default:default8ZDPIP-2h px� 
�	
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
�mpsoc_preset_i/v_tpg_0/inst/grp_v_tpgHlsDataFlow_fu_313/tpgBackground_U0/grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_432/mac_muladd_16s_16s_16ns_16_4_1_U18/mpsoc_preset_v_tpg_0_0_mac_muladd_16s_16s_16ns_16_4_1_DSP48_1_U/p_reg_reg	�mpsoc_preset_i/v_tpg_0/inst/grp_v_tpgHlsDataFlow_fu_313/tpgBackground_U0/grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_432/mac_muladd_16s_16s_16ns_16_4_1_U18/mpsoc_preset_v_tpg_0_0_mac_muladd_16s_16s_16ns_16_4_1_DSP48_1_U/p_reg_reg2default:default2default:default2�
 "�
�mpsoc_preset_i/v_tpg_0/inst/grp_v_tpgHlsDataFlow_fu_313/tpgBackground_U0/grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_432/mac_muladd_16s_16s_16ns_16_4_1_U18/mpsoc_preset_v_tpg_0_0_mac_muladd_16s_16s_16ns_16_4_1_DSP48_1_U/p_reg_reg/C[47:0]�mpsoc_preset_i/v_tpg_0/inst/grp_v_tpgHlsDataFlow_fu_313/tpgBackground_U0/grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_432/mac_muladd_16s_16s_16ns_16_4_1_U18/mpsoc_preset_v_tpg_0_0_mac_muladd_16s_16s_16ns_16_4_1_DSP48_1_U/p_reg_reg/C2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E22default:default8ZDPIP-2h px� 
�
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2�
 "�
{mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/add_ln147_3_fu_769_p2	{mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/add_ln147_3_fu_769_p22default:default2default:default2�
 "�
�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/add_ln147_3_fu_769_p2/P[47:0]}mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/add_ln147_3_fu_769_p2/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E22default:default8ZDPOP-3h px� 
�
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2�
 "�
{mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/add_ln149_3_fu_799_p2	{mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/add_ln149_3_fu_799_p22default:default2default:default2�
 "�
�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/add_ln149_3_fu_799_p2/P[47:0]}mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/add_ln149_3_fu_799_p2/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E22default:default8ZDPOP-3h px� 
�
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2�
 "�
{mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/add_ln151_3_fu_829_p2	{mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/add_ln151_3_fu_829_p22default:default2default:default2�
 "�
�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/add_ln151_3_fu_829_p2/P[47:0]}mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/add_ln151_3_fu_829_p2/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E22default:default8ZDPOP-3h px� 
�	
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2�
 "�
�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U153/tmp_product	�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U153/tmp_product2default:default2default:default2�
 "�
�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U153/tmp_product/P[47:0]�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U153/tmp_product/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E22default:default8ZDPOP-3h px� 
�	
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2�
 "�
�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U154/tmp_product	�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U154/tmp_product2default:default2default:default2�
 "�
�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U154/tmp_product/P[47:0]�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U154/tmp_product/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E22default:default8ZDPOP-3h px� 
�	
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2�
 "�
�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U155/tmp_product	�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U155/tmp_product2default:default2default:default2�
 "�
�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U155/tmp_product/P[47:0]�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U155/tmp_product/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E22default:default8ZDPOP-3h px� 
�	
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2�
 "�
�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U156/tmp_product	�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U156/tmp_product2default:default2default:default2�
 "�
�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U156/tmp_product/P[47:0]�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U156/tmp_product/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E22default:default8ZDPOP-3h px� 
�	
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2�
 "�
�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U157/tmp_product	�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U157/tmp_product2default:default2default:default2�
 "�
�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U157/tmp_product/P[47:0]�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U157/tmp_product/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E22default:default8ZDPOP-3h px� 
�	
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2�
 "�
�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U158/tmp_product	�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U158/tmp_product2default:default2default:default2�
 "�
�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U158/tmp_product/P[47:0]�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U158/tmp_product/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E22default:default8ZDPOP-3h px� 
�	
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2�
 "�
�mpsoc_preset_i/v_tpg_0/inst/grp_v_tpgHlsDataFlow_fu_313/tpgBackground_U0/grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_432/mul_11ns_13ns_23_1_1_U10/tmp_product	�mpsoc_preset_i/v_tpg_0/inst/grp_v_tpgHlsDataFlow_fu_313/tpgBackground_U0/grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_432/mul_11ns_13ns_23_1_1_U10/tmp_product2default:default2default:default2�
 "�
�mpsoc_preset_i/v_tpg_0/inst/grp_v_tpgHlsDataFlow_fu_313/tpgBackground_U0/grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_432/mul_11ns_13ns_23_1_1_U10/tmp_product/P[47:0]�mpsoc_preset_i/v_tpg_0/inst/grp_v_tpgHlsDataFlow_fu_313/tpgBackground_U0/grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_432/mul_11ns_13ns_23_1_1_U10/tmp_product/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E22default:default8ZDPOP-3h px� 
�	
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2�
 "�
�mpsoc_preset_i/v_tpg_0/inst/grp_v_tpgHlsDataFlow_fu_313/tpgBackground_U0/grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_432/mul_11ns_13ns_23_1_1_U7/tmp_product	�mpsoc_preset_i/v_tpg_0/inst/grp_v_tpgHlsDataFlow_fu_313/tpgBackground_U0/grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_432/mul_11ns_13ns_23_1_1_U7/tmp_product2default:default2default:default2�
 "�
�mpsoc_preset_i/v_tpg_0/inst/grp_v_tpgHlsDataFlow_fu_313/tpgBackground_U0/grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_432/mul_11ns_13ns_23_1_1_U7/tmp_product/P[47:0]�mpsoc_preset_i/v_tpg_0/inst/grp_v_tpgHlsDataFlow_fu_313/tpgBackground_U0/grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_432/mul_11ns_13ns_23_1_1_U7/tmp_product/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E22default:default8ZDPOP-3h px� 
�	
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2�
 "�
�mpsoc_preset_i/v_tpg_0/inst/grp_v_tpgHlsDataFlow_fu_313/tpgBackground_U0/grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_432/mul_11ns_13ns_23_1_1_U8/tmp_product	�mpsoc_preset_i/v_tpg_0/inst/grp_v_tpgHlsDataFlow_fu_313/tpgBackground_U0/grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_432/mul_11ns_13ns_23_1_1_U8/tmp_product2default:default2default:default2�
 "�
�mpsoc_preset_i/v_tpg_0/inst/grp_v_tpgHlsDataFlow_fu_313/tpgBackground_U0/grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_432/mul_11ns_13ns_23_1_1_U8/tmp_product/P[47:0]�mpsoc_preset_i/v_tpg_0/inst/grp_v_tpgHlsDataFlow_fu_313/tpgBackground_U0/grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_432/mul_11ns_13ns_23_1_1_U8/tmp_product/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E22default:default8ZDPOP-3h px� 
�	
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2�
 "�
�mpsoc_preset_i/v_tpg_0/inst/grp_v_tpgHlsDataFlow_fu_313/tpgBackground_U0/grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_432/mul_16ns_6ns_21_1_1_U14/tmp_product	�mpsoc_preset_i/v_tpg_0/inst/grp_v_tpgHlsDataFlow_fu_313/tpgBackground_U0/grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_432/mul_16ns_6ns_21_1_1_U14/tmp_product2default:default2default:default2�
 "�
�mpsoc_preset_i/v_tpg_0/inst/grp_v_tpgHlsDataFlow_fu_313/tpgBackground_U0/grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_432/mul_16ns_6ns_21_1_1_U14/tmp_product/P[47:0]�mpsoc_preset_i/v_tpg_0/inst/grp_v_tpgHlsDataFlow_fu_313/tpgBackground_U0/grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_432/mul_16ns_6ns_21_1_1_U14/tmp_product/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E22default:default8ZDPOP-3h px� 
�	
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2�
 "�
�mpsoc_preset_i/v_tpg_0/inst/grp_v_tpgHlsDataFlow_fu_313/tpgBackground_U0/grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_432/mul_20s_9ns_28_1_1_U15/tmp_product	�mpsoc_preset_i/v_tpg_0/inst/grp_v_tpgHlsDataFlow_fu_313/tpgBackground_U0/grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_432/mul_20s_9ns_28_1_1_U15/tmp_product2default:default2default:default2�
 "�
�mpsoc_preset_i/v_tpg_0/inst/grp_v_tpgHlsDataFlow_fu_313/tpgBackground_U0/grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_432/mul_20s_9ns_28_1_1_U15/tmp_product/P[47:0]�mpsoc_preset_i/v_tpg_0/inst/grp_v_tpgHlsDataFlow_fu_313/tpgBackground_U0/grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_432/mul_20s_9ns_28_1_1_U15/tmp_product/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E22default:default8ZDPOP-3h px� 
�
�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U153/tmp_product	�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U153/tmp_product2default:default2default:default2�
 "�
�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U153/tmp_product/P[47:0]�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U153/tmp_product/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E22default:default8ZDPOP-4h px� 
�
�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U154/tmp_product	�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U154/tmp_product2default:default2default:default2�
 "�
�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U154/tmp_product/P[47:0]�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U154/tmp_product/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E22default:default8ZDPOP-4h px� 
�
�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U155/tmp_product	�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U155/tmp_product2default:default2default:default2�
 "�
�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U155/tmp_product/P[47:0]�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U155/tmp_product/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E22default:default8ZDPOP-4h px� 
�
�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U156/tmp_product	�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U156/tmp_product2default:default2default:default2�
 "�
�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U156/tmp_product/P[47:0]�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U156/tmp_product/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E22default:default8ZDPOP-4h px� 
�
�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U157/tmp_product	�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U157/tmp_product2default:default2default:default2�
 "�
�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U157/tmp_product/P[47:0]�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U157/tmp_product/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E22default:default8ZDPOP-4h px� 
�
�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U158/tmp_product	�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U158/tmp_product2default:default2default:default2�
 "�
�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U158/tmp_product/P[47:0]�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/mul_16s_8ns_24_1_1_U158/tmp_product/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E22default:default8ZDPOP-4h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
~mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/trunc_ln147_reg_1213_reg	~mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/trunc_ln147_reg_1213_reg2default:default2default:default2�
 "�
�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/trunc_ln147_reg_1213_reg/P[47:0]�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/trunc_ln147_reg_1213_reg/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E22default:default8ZDPOP-4h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
~mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/trunc_ln149_reg_1228_reg	~mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/trunc_ln149_reg_1228_reg2default:default2default:default2�
 "�
�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/trunc_ln149_reg_1228_reg/P[47:0]�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/trunc_ln149_reg_1228_reg/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E22default:default8ZDPOP-4h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
~mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/trunc_ln151_reg_1243_reg	~mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/trunc_ln151_reg_1243_reg2default:default2default:default2�
 "�
�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/trunc_ln151_reg_1243_reg/P[47:0]�mpsoc_preset_i/v_proc_ss_0/inst/csc/inst/v_csc_core_U0/grp_v_csc_core_Pipeline_VITIS_LOOP_91_2_fu_348/trunc_ln151_reg_1243_reg/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E22default:default8ZDPOP-4h px� 
�
�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
�mpsoc_preset_i/v_tpg_0/inst/grp_v_tpgHlsDataFlow_fu_313/tpgBackground_U0/grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_432/add_ln1257_3_fu_4181_p2	�mpsoc_preset_i/v_tpg_0/inst/grp_v_tpgHlsDataFlow_fu_313/tpgBackground_U0/grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_432/add_ln1257_3_fu_4181_p22default:default2default:default2�
 "�
�mpsoc_preset_i/v_tpg_0/inst/grp_v_tpgHlsDataFlow_fu_313/tpgBackground_U0/grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_432/add_ln1257_3_fu_4181_p2/P[47:0]�mpsoc_preset_i/v_tpg_0/inst/grp_v_tpgHlsDataFlow_fu_313/tpgBackground_U0/grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_432/add_ln1257_3_fu_4181_p2/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E22default:default8ZDPOP-4h px� 
�
�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
�mpsoc_preset_i/v_tpg_0/inst/grp_v_tpgHlsDataFlow_fu_313/tpgBackground_U0/grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_432/mac_muladd_16ns_6s_24s_24_4_1_U21/mpsoc_preset_v_tpg_0_0_mac_muladd_16ns_6s_24s_24_4_1_DSP48_4_U/p_reg_reg	�mpsoc_preset_i/v_tpg_0/inst/grp_v_tpgHlsDataFlow_fu_313/tpgBackground_U0/grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_432/mac_muladd_16ns_6s_24s_24_4_1_U21/mpsoc_preset_v_tpg_0_0_mac_muladd_16ns_6s_24s_24_4_1_DSP48_4_U/p_reg_reg2default:default2default:default2�
 "�
�mpsoc_preset_i/v_tpg_0/inst/grp_v_tpgHlsDataFlow_fu_313/tpgBackground_U0/grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_432/mac_muladd_16ns_6s_24s_24_4_1_U21/mpsoc_preset_v_tpg_0_0_mac_muladd_16ns_6s_24s_24_4_1_DSP48_4_U/p_reg_reg/P[47:0]�mpsoc_preset_i/v_tpg_0/inst/grp_v_tpgHlsDataFlow_fu_313/tpgBackground_U0/grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_432/mac_muladd_16ns_6s_24s_24_4_1_U21/mpsoc_preset_v_tpg_0_0_mac_muladd_16ns_6s_24s_24_4_1_DSP48_4_U/p_reg_reg/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E22default:default8ZDPOP-4h px� 
�
�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
�mpsoc_preset_i/v_tpg_0/inst/grp_v_tpgHlsDataFlow_fu_313/tpgBackground_U0/grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_432/mul_11ns_13ns_23_1_1_U10/tmp_product	�mpsoc_preset_i/v_tpg_0/inst/grp_v_tpgHlsDataFlow_fu_313/tpgBackground_U0/grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_432/mul_11ns_13ns_23_1_1_U10/tmp_product2default:default2default:default2�
 "�
�mpsoc_preset_i/v_tpg_0/inst/grp_v_tpgHlsDataFlow_fu_313/tpgBackground_U0/grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_432/mul_11ns_13ns_23_1_1_U10/tmp_product/P[47:0]�mpsoc_preset_i/v_tpg_0/inst/grp_v_tpgHlsDataFlow_fu_313/tpgBackground_U0/grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_432/mul_11ns_13ns_23_1_1_U10/tmp_product/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E22default:default8ZDPOP-4h px� 
�
�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
�mpsoc_preset_i/v_tpg_0/inst/grp_v_tpgHlsDataFlow_fu_313/tpgBackground_U0/grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_432/mul_11ns_13ns_23_1_1_U7/tmp_product	�mpsoc_preset_i/v_tpg_0/inst/grp_v_tpgHlsDataFlow_fu_313/tpgBackground_U0/grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_432/mul_11ns_13ns_23_1_1_U7/tmp_product2default:default2default:default2�
 "�
�mpsoc_preset_i/v_tpg_0/inst/grp_v_tpgHlsDataFlow_fu_313/tpgBackground_U0/grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_432/mul_11ns_13ns_23_1_1_U7/tmp_product/P[47:0]�mpsoc_preset_i/v_tpg_0/inst/grp_v_tpgHlsDataFlow_fu_313/tpgBackground_U0/grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_432/mul_11ns_13ns_23_1_1_U7/tmp_product/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E22default:default8ZDPOP-4h px� 
�
�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
�mpsoc_preset_i/v_tpg_0/inst/grp_v_tpgHlsDataFlow_fu_313/tpgBackground_U0/grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_432/mul_11ns_13ns_23_1_1_U8/tmp_product	�mpsoc_preset_i/v_tpg_0/inst/grp_v_tpgHlsDataFlow_fu_313/tpgBackground_U0/grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_432/mul_11ns_13ns_23_1_1_U8/tmp_product2default:default2default:default2�
 "�
�mpsoc_preset_i/v_tpg_0/inst/grp_v_tpgHlsDataFlow_fu_313/tpgBackground_U0/grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_432/mul_11ns_13ns_23_1_1_U8/tmp_product/P[47:0]�mpsoc_preset_i/v_tpg_0/inst/grp_v_tpgHlsDataFlow_fu_313/tpgBackground_U0/grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_432/mul_11ns_13ns_23_1_1_U8/tmp_product/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E22default:default8ZDPOP-4h px� 
�
�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
�mpsoc_preset_i/v_tpg_0/inst/grp_v_tpgHlsDataFlow_fu_313/tpgBackground_U0/grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_432/mul_16ns_6ns_21_1_1_U14/tmp_product	�mpsoc_preset_i/v_tpg_0/inst/grp_v_tpgHlsDataFlow_fu_313/tpgBackground_U0/grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_432/mul_16ns_6ns_21_1_1_U14/tmp_product2default:default2default:default2�
 "�
�mpsoc_preset_i/v_tpg_0/inst/grp_v_tpgHlsDataFlow_fu_313/tpgBackground_U0/grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_432/mul_16ns_6ns_21_1_1_U14/tmp_product/P[47:0]�mpsoc_preset_i/v_tpg_0/inst/grp_v_tpgHlsDataFlow_fu_313/tpgBackground_U0/grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_432/mul_16ns_6ns_21_1_1_U14/tmp_product/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E22default:default8ZDPOP-4h px� 
�
�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
�mpsoc_preset_i/v_tpg_0/inst/grp_v_tpgHlsDataFlow_fu_313/tpgBackground_U0/grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_432/mul_20s_9ns_28_1_1_U15/tmp_product	�mpsoc_preset_i/v_tpg_0/inst/grp_v_tpgHlsDataFlow_fu_313/tpgBackground_U0/grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_432/mul_20s_9ns_28_1_1_U15/tmp_product2default:default2default:default2�
 "�
�mpsoc_preset_i/v_tpg_0/inst/grp_v_tpgHlsDataFlow_fu_313/tpgBackground_U0/grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_432/mul_20s_9ns_28_1_1_U15/tmp_product/P[47:0]�mpsoc_preset_i/v_tpg_0/inst/grp_v_tpgHlsDataFlow_fu_313/tpgBackground_U0/grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_432/mul_20s_9ns_28_1_1_U15/tmp_product/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E22default:default8ZDPOP-4h px� 
�
�LUT equation term check: Used physical LUT pin 'A1' of cell %s (pin %s) is not included in the LUT equation: 'O5=(A3)+((~A3)*(~A5)*A4)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�mpsoc_preset_i/ps8_0_axi_periph/s00_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_WRITE.write_addr_inst/USE_B_CHANNEL.cmd_b_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/gpregsm1.user_valid_i_1	�mpsoc_preset_i/ps8_0_axi_periph/s00_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_WRITE.write_addr_inst/USE_B_CHANNEL.cmd_b_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/gpregsm1.user_valid_i_12default:default2default:default2�
 "�
�mpsoc_preset_i/ps8_0_axi_periph/s00_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_WRITE.write_addr_inst/USE_B_CHANNEL.cmd_b_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/gpregsm1.user_valid_i_1/I1�mpsoc_preset_i/ps8_0_axi_periph/s00_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_WRITE.write_addr_inst/USE_B_CHANNEL.cmd_b_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/gpregsm1.user_valid_i_1/I12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A1' of cell %s (pin %s) is not included in the LUT equation: 'O5=(A3)+((~A3)*(~A5)*A4)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�mpsoc_preset_i/ps8_0_axi_periph/s00_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_WRITE.write_addr_inst/cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/gpregsm1.user_valid_i_1	�mpsoc_preset_i/ps8_0_axi_periph/s00_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_WRITE.write_addr_inst/cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/gpregsm1.user_valid_i_12default:default2default:default2�
 "�
�mpsoc_preset_i/ps8_0_axi_periph/s00_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_WRITE.write_addr_inst/cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/gpregsm1.user_valid_i_1/I1�mpsoc_preset_i/ps8_0_axi_periph/s00_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_WRITE.write_addr_inst/cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/gpregsm1.user_valid_i_1/I12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A1' of cell %s (pin %s) is not included in the LUT equation: 'O5=(A5)+((~A5)*(~A3)*A4)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�mpsoc_preset_i/ps8_0_axi_periph/s01_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_READ.read_addr_inst/cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/gpregsm1.user_valid_i_1	�mpsoc_preset_i/ps8_0_axi_periph/s01_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_READ.read_addr_inst/cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/gpregsm1.user_valid_i_12default:default2default:default2�
 "�
�mpsoc_preset_i/ps8_0_axi_periph/s01_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_READ.read_addr_inst/cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/gpregsm1.user_valid_i_1/I1�mpsoc_preset_i/ps8_0_axi_periph/s01_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_READ.read_addr_inst/cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/gpregsm1.user_valid_i_1/I12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A2' of cell %s (pin %s) is not included in the LUT equation: 'O5=(A3)+((~A3)*(~A1)*A4)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�mpsoc_preset_i/ps8_0_axi_periph/s01_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_WRITE.write_addr_inst/cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/gpregsm1.user_valid_i_1	�mpsoc_preset_i/ps8_0_axi_periph/s01_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_WRITE.write_addr_inst/cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/gpregsm1.user_valid_i_12default:default2default:default2�
 "�
�mpsoc_preset_i/ps8_0_axi_periph/s01_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_WRITE.write_addr_inst/cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/gpregsm1.user_valid_i_1/I1�mpsoc_preset_i/ps8_0_axi_periph/s01_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_WRITE.write_addr_inst/cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/gpregsm1.user_valid_i_1/I12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A3' of cell %s (pin %s) is not included in the LUT equation: 'O5=(A2*A4)+(A2*(~A4)*(~A1))+((~A2))'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
Rdbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.bscan_switch/temp_curid[31]_i_1	Rdbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.bscan_switch/temp_curid[31]_i_12default:default2default:default2�
 "�
Udbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.bscan_switch/temp_curid[31]_i_1/I0Udbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.bscan_switch/temp_curid[31]_i_1/I02default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A4' of cell %s (pin %s) is not included in the LUT equation: 'O6=(A6+~A6)*((A3))'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
Bdbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.id_state[0]_i_1	Bdbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.id_state[0]_i_12default:default2default:default2�
 "�
Edbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.id_state[0]_i_1/I0Edbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.id_state[0]_i_1/I02default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s (pin %s) is not included in the LUT equation: 'O5=(A2*A4)+(A2*(~A4)*(~A1))+((~A2))'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
Rdbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.bscan_switch/temp_curid[31]_i_1	Rdbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.bscan_switch/temp_curid[31]_i_12default:default2default:default2�
 "�
Udbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.bscan_switch/temp_curid[31]_i_1/I1Udbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.bscan_switch/temp_curid[31]_i_1/I12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s (pin %s) is not included in the LUT equation: 'O5=(A3)+((~A3)*(~A1)*A4)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�mpsoc_preset_i/ps8_0_axi_periph/s00_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_READ.read_addr_inst/cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/gpregsm1.user_valid_i_1	�mpsoc_preset_i/ps8_0_axi_periph/s00_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_READ.read_addr_inst/cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/gpregsm1.user_valid_i_12default:default2default:default2�
 "�
�mpsoc_preset_i/ps8_0_axi_periph/s00_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_READ.read_addr_inst/cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/gpregsm1.user_valid_i_1/I1�mpsoc_preset_i/ps8_0_axi_periph/s00_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_READ.read_addr_inst/cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/gpregsm1.user_valid_i_1/I12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A5' of cell %s (pin %s) is not included in the LUT equation: 'O5=(A3)+((~A3)*(~A2)*A4)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�mpsoc_preset_i/ps8_0_axi_periph/s01_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_WRITE.write_addr_inst/USE_B_CHANNEL.cmd_b_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/gpregsm1.user_valid_i_1	�mpsoc_preset_i/ps8_0_axi_periph/s01_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_WRITE.write_addr_inst/USE_B_CHANNEL.cmd_b_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/gpregsm1.user_valid_i_12default:default2default:default2�
 "�
�mpsoc_preset_i/ps8_0_axi_periph/s01_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_WRITE.write_addr_inst/USE_B_CHANNEL.cmd_b_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/gpregsm1.user_valid_i_1/I1�mpsoc_preset_i/ps8_0_axi_periph/s01_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_WRITE.write_addr_inst/USE_B_CHANNEL.cmd_b_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/gpregsm1.user_valid_i_1/I12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8Z	PDCN-1569h px� 
�.
`No routable loads: 97 net(s) have no routable loads. The problem bus(es) and/or net(s) are %s.%s*DRC2�,
 "�
Adbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.bscan_inst/TMSAdbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.bscan_inst/TMS2default:default"�
�mpsoc_preset_i/ps8_0_axi_periph/s01_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_WRITE.write_addr_inst/USE_B_CHANNEL.cmd_b_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i�mpsoc_preset_i/ps8_0_axi_periph/s01_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_WRITE.write_addr_inst/USE_B_CHANNEL.cmd_b_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i2default:default"�
�mpsoc_preset_i/ps8_0_axi_periph/s00_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_WRITE.write_addr_inst/USE_B_CHANNEL.cmd_b_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i�mpsoc_preset_i/ps8_0_axi_periph/s00_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_WRITE.write_addr_inst/USE_B_CHANNEL.cmd_b_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i2default:default"�
�mpsoc_preset_i/ps8_0_axi_periph/s01_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_READ.read_addr_inst/cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i�mpsoc_preset_i/ps8_0_axi_periph/s01_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_READ.read_addr_inst/cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i2default:default"�
�mpsoc_preset_i/ps8_0_axi_periph/s00_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_READ.read_addr_inst/cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i�mpsoc_preset_i/ps8_0_axi_periph/s00_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_READ.read_addr_inst/cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i2default:default"�
�mpsoc_preset_i/ps8_0_axi_periph/s01_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_WRITE.write_addr_inst/cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i�mpsoc_preset_i/ps8_0_axi_periph/s01_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_WRITE.write_addr_inst/cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i2default:default"�
�mpsoc_preset_i/ps8_0_axi_periph/s00_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_WRITE.write_addr_inst/cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i�mpsoc_preset_i/ps8_0_axi_periph/s00_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_WRITE.write_addr_inst/cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i2default:default"�
�dbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD6_RD/U_RD_FIFO/SUBCORE_FIFO.xsdbm_v3_0_0_rdfifo_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i�dbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD6_RD/U_RD_FIFO/SUBCORE_FIFO.xsdbm_v3_0_0_rdfifo_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i2default:default"�
]dbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD7_CTL/ctl_reg[2:0]Xdbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD7_CTL/ctl_reg2default:default"�
`dbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD7_CTL/ctl_reg_en_2[1]`dbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD7_CTL/ctl_reg_en_2[1]2default:default"�
\dbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD1/ctl_reg_en_2[1]\dbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD1/ctl_reg_en_2[1]2default:default"�
Rdbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.bscan_switch/m_bscan_capture[0]Odbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.bscan_switch/m_bscan_capture2default:default"�
Odbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.bscan_switch/m_bscan_drck[0]Ldbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.bscan_switch/m_bscan_drck2default:default"�
Rdbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.bscan_switch/m_bscan_runtest[0]Odbg_hub/inst/BSCANID.u_xsdbm_id/SWITCH_N_EXT_BSCAN.bscan_switch/m_bscan_runtest2default:default"�
�mpsoc_preset_i/ps8_0_axi_periph/s01_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_WRITE.write_addr_inst/USE_B_CHANNEL.cmd_b_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg[2:0]�mpsoc_preset_i/ps8_0_axi_periph/s01_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_WRITE.write_addr_inst/USE_B_CHANNEL.cmd_b_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg2default:..."/
(the first 15 of 71 listed)2default:default2default:default2=
 %DRC|Implementation|Routing|Chip Level2default:default8Z	RTSTAT-10h px� 
g
DRC finished with %s
1905*	planAhead2)
0 Errors, 64 Warnings2default:defaultZ12-3199h px� 
i
BPlease refer to the DRC report (report_drc) for more information.
1906*	planAheadZ12-3200h px� 
i
)Running write_bitstream with %s threads.
1750*designutils2
22default:defaultZ20-2272h px� 
?
Loading data files...
1271*designutilsZ12-1165h px� 
>
Loading site data...
1273*designutilsZ12-1167h px� 
?
Loading route data...
1272*designutilsZ12-1166h px� 
?
Processing options...
1362*designutilsZ12-1514h px� 
<
Creating bitmap...
1249*designutilsZ12-1141h px� 
7
Creating bitstream...
7*	bitstreamZ40-7h px� 
k
Writing bitstream %s...
11*	bitstream2.
./mpsoc_preset_wrapper.bit2default:defaultZ40-11h px� 
F
Bitgen Completed Successfully.
1606*	planAheadZ12-1842h px� 
�
�WebTalk data collection is mandatory when using a ULT device. To see the specific WebTalk data collected for your design, open the usage_statistics_webtalk.html or usage_statistics_webtalk.xml file in the implementation directory.698*projectZ1-1876h px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
232default:default2
662default:default2
02default:default2
02default:defaultZ4-41h px� 
a
%s completed successfully
29*	vivadotcl2#
write_bitstream2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
write_bitstream: 2default:default2
00:00:042default:default2
00:00:312default:default2
4356.3322default:default2
651.0942default:defaultZ17-268h px� 


End Record