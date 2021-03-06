# TCL File Generated by Component Editor 13.0
# Thu Mar 08 16:42:21 CST 2018
# DO NOT MODIFY


# 
# oc_i2c_master "OpenCores I2C Master" v2.1.1
# mmh 2018.03.08.16:42:21
# OpenCores I2C Master
# 

# 
# request TCL package from ACDS 13.0
# 
package require -exact qsys 13.0


# 
# module oc_i2c_master
# 
set_module_property DESCRIPTION "OpenCores I2C Master"
set_module_property NAME oc_i2c_master
set_module_property VERSION 2.1.1
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property GROUP System
set_module_property AUTHOR mmh
set_module_property DISPLAY_NAME "OpenCores I2C Master"
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE false
set_module_property ANALYZE_HDL AUTO
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false


# 
# file sets
# 
add_fileset quartus_synth QUARTUS_SYNTH "" "Quartus Synthesis"
set_fileset_property quartus_synth TOP_LEVEL oc_i2c_master
set_fileset_property quartus_synth ENABLE_RELATIVE_INCLUDE_PATHS false
add_fileset_file i2c_master_bit_ctrl.vhd VHDL PATH hdl/i2c_master_bit_ctrl.vhd
add_fileset_file i2c_master_byte_ctrl.vhd VHDL PATH hdl/i2c_master_byte_ctrl.vhd
add_fileset_file i2c_master_top.vhd VHDL PATH hdl/i2c_master_top.vhd
add_fileset_file oc_i2c_master.vhd VHDL PATH hdl/oc_i2c_master.vhd TOP_LEVEL_FILE

add_fileset sim_vhdl SIM_VHDL "" "VHDL Simulation"
set_fileset_property sim_vhdl TOP_LEVEL oc_i2c_master
set_fileset_property sim_vhdl ENABLE_RELATIVE_INCLUDE_PATHS false
add_fileset_file i2c_master_bit_ctrl.vhd VHDL PATH hdl/i2c_master_bit_ctrl.vhd
add_fileset_file i2c_master_byte_ctrl.vhd VHDL PATH hdl/i2c_master_byte_ctrl.vhd
add_fileset_file i2c_master_top.vhd VHDL PATH hdl/i2c_master_top.vhd
add_fileset_file oc_i2c_master.vhd VHDL PATH hdl/oc_i2c_master.vhd


# 
# parameters
# 


# 
# display items
# 


# 
# connection point s1_clk
# 
add_interface s1_clk clock end
set_interface_property s1_clk clockRate 0
set_interface_property s1_clk ENABLED true
set_interface_property s1_clk EXPORT_OF ""
set_interface_property s1_clk PORT_NAME_MAP ""
set_interface_property s1_clk SVD_ADDRESS_GROUP ""

add_interface_port s1_clk wb_clk_i clk Input 1


# 
# connection point s1_clk_reset
# 
add_interface s1_clk_reset reset end
set_interface_property s1_clk_reset associatedClock s1_clk
set_interface_property s1_clk_reset synchronousEdges DEASSERT
set_interface_property s1_clk_reset ENABLED true
set_interface_property s1_clk_reset EXPORT_OF ""
set_interface_property s1_clk_reset PORT_NAME_MAP ""
set_interface_property s1_clk_reset SVD_ADDRESS_GROUP ""

add_interface_port s1_clk_reset wb_rst_i reset Input 1


# 
# connection point s1
# 
add_interface s1 avalon end
set_interface_property s1 addressUnits WORDS
set_interface_property s1 associatedClock s1_clk
set_interface_property s1 associatedReset s1_clk_reset
set_interface_property s1 bitsPerSymbol 8
set_interface_property s1 burstOnBurstBoundariesOnly false
set_interface_property s1 burstcountUnits WORDS
set_interface_property s1 explicitAddressSpan 0
set_interface_property s1 holdTime 0
set_interface_property s1 linewrapBursts false
set_interface_property s1 maximumPendingReadTransactions 0
set_interface_property s1 readLatency 0
set_interface_property s1 readWaitTime 1
set_interface_property s1 setupTime 0
set_interface_property s1 timingUnits Cycles
set_interface_property s1 writeWaitTime 0
set_interface_property s1 ENABLED true
set_interface_property s1 EXPORT_OF ""
set_interface_property s1 PORT_NAME_MAP ""
set_interface_property s1 SVD_ADDRESS_GROUP ""

add_interface_port s1 wb_ack_o waitrequest_n Output 1
add_interface_port s1 wb_adr_i address Input 3
add_interface_port s1 wb_dat_i writedata Input 32
add_interface_port s1 wb_dat_o readdata Output 32
add_interface_port s1 wb_stb_i begintransfer Input 1
add_interface_port s1 wb_we_i write Input 1
add_interface_port s1 wb_cyc_i chipselect Input 1
set_interface_assignment s1 embeddedsw.configuration.isFlash 0
set_interface_assignment s1 embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment s1 embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment s1 embeddedsw.configuration.isPrintableDevice 0


# 
# connection point global
# 
add_interface global conduit end
set_interface_property global associatedClock s1_clk
set_interface_property global associatedReset s1_clk_reset
set_interface_property global ENABLED true
set_interface_property global EXPORT_OF ""
set_interface_property global PORT_NAME_MAP ""
set_interface_property global SVD_ADDRESS_GROUP ""

add_interface_port global scl_pad_io export Bidir 1
add_interface_port global sda_pad_io export Bidir 1


# 
# connection point s1_irq
# 
add_interface s1_irq interrupt end
set_interface_property s1_irq associatedAddressablePoint s1
set_interface_property s1_irq associatedClock s1_clk
set_interface_property s1_irq associatedReset s1_clk_reset
set_interface_property s1_irq ENABLED true
set_interface_property s1_irq EXPORT_OF ""
set_interface_property s1_irq PORT_NAME_MAP ""
set_interface_property s1_irq SVD_ADDRESS_GROUP ""

add_interface_port s1_irq wb_inta_o irq Output 1

