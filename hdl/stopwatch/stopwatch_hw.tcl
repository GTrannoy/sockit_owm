# TCL File Generated by Component Editor 9.1sp2
# Thu Apr 15 14:20:33 CEST 2010
# DO NOT MODIFY


# +-----------------------------------
# | 
# | FPGA_HDL "stopwatch" v1.0
# | Iztok Jeras 2010.04.15.14:20:33
# | stopwatch with a CPU interface
# | 
# | /home/izi/Workplace/fpga-hdl/hdl/stopwatch/stopwatch.v
# | 
# |    ./stopwatch.v syn, sim
# | 
# +-----------------------------------

# +-----------------------------------
# | request TCL package from ACDS 9.1
# | 
package require -exact sopc 9.1
# | 
# +-----------------------------------

# +-----------------------------------
# | module FPGA_HDL
# | 
set_module_property DESCRIPTION "stopwatch with a CPU interface"
set_module_property NAME FPGA_HDL
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property GROUP ""
set_module_property AUTHOR "Iztok Jeras"
set_module_property DISPLAY_NAME stopwatch
set_module_property TOP_LEVEL_HDL_FILE stopwatch.v
set_module_property TOP_LEVEL_HDL_MODULE stopwatch
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property ANALYZE_HDL TRUE
# | 
# +-----------------------------------

# +-----------------------------------
# | files
# | 
add_file stopwatch.v {SYNTHESIS SIMULATION}
# | 
# +-----------------------------------

# +-----------------------------------
# | parameters
# | 
add_parameter MSPN INTEGER 5
set_parameter_property MSPN DEFAULT_VALUE 5
set_parameter_property MSPN DISPLAY_NAME MSPN
set_parameter_property MSPN UNITS None
set_parameter_property MSPN DISPLAY_HINT ""
set_parameter_property MSPN AFFECTS_GENERATION false
set_parameter_property MSPN HDL_PARAMETER true
add_parameter AAW INTEGER 1
set_parameter_property AAW DEFAULT_VALUE 1
set_parameter_property AAW DISPLAY_NAME AAW
set_parameter_property AAW UNITS None
set_parameter_property AAW DISPLAY_HINT ""
set_parameter_property AAW AFFECTS_GENERATION false
set_parameter_property AAW HDL_PARAMETER true
add_parameter ADW INTEGER 32
set_parameter_property ADW DEFAULT_VALUE 32
set_parameter_property ADW DISPLAY_NAME ADW
set_parameter_property ADW UNITS None
set_parameter_property ADW DISPLAY_HINT ""
set_parameter_property ADW AFFECTS_GENERATION false
set_parameter_property ADW HDL_PARAMETER true
# | 
# +-----------------------------------

# +-----------------------------------
# | display items
# | 
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point clock_reset
# | 
add_interface clock_reset clock end

set_interface_property clock_reset ENABLED true

add_interface_port clock_reset clk clk Input 1
add_interface_port clock_reset rst reset Input 1
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point avalon_slave
# | 
add_interface avalon_slave avalon end
set_interface_property avalon_slave addressAlignment DYNAMIC
set_interface_property avalon_slave associatedClock clock_reset
set_interface_property avalon_slave burstOnBurstBoundariesOnly false
set_interface_property avalon_slave explicitAddressSpan 0
set_interface_property avalon_slave holdTime 0
set_interface_property avalon_slave isMemoryDevice false
set_interface_property avalon_slave isNonVolatileStorage false
set_interface_property avalon_slave linewrapBursts false
set_interface_property avalon_slave maximumPendingReadTransactions 0
set_interface_property avalon_slave printableDevice false
set_interface_property avalon_slave readLatency 0
set_interface_property avalon_slave readWaitStates 0
set_interface_property avalon_slave readWaitTime 0
set_interface_property avalon_slave setupTime 0
set_interface_property avalon_slave timingUnits Cycles
set_interface_property avalon_slave writeWaitTime 0

set_interface_property avalon_slave ASSOCIATED_CLOCK clock_reset
set_interface_property avalon_slave ENABLED true

add_interface_port avalon_slave avalon_write write Input 1
add_interface_port avalon_slave avalon_read read Input 1
add_interface_port avalon_slave avalon_writedata writedata Input ADW
add_interface_port avalon_slave avalon_readdata readdata Output ADW
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point conduit
# | 
add_interface conduit conduit end

set_interface_property conduit ASSOCIATED_CLOCK clock_reset
set_interface_property conduit ENABLED true

add_interface_port conduit b_run export Input 1
add_interface_port conduit b_clr export Input 1
add_interface_port conduit b_tmp export Input 1
add_interface_port conduit t_mil_0 export Output 4
add_interface_port conduit t_mil_1 export Output 4
add_interface_port conduit t_mil_2 export Output 4
add_interface_port conduit t_sec_0 export Output 4
add_interface_port conduit t_sec_1 export Output 4
add_interface_port conduit t_min_0 export Output 4
add_interface_port conduit t_min_1 export Output 4
add_interface_port conduit s_run export Output 1
add_interface_port conduit s_hld export Output 1
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point interrupt
# | 
add_interface interrupt interrupt end
set_interface_property interrupt associatedAddressablePoint avalon_slave

set_interface_property interrupt ASSOCIATED_CLOCK clock_reset
set_interface_property interrupt ENABLED true

add_interface_port interrupt avalon_interrupt irq Output 1
# | 
# +-----------------------------------
