REM cmd script for running the onewire example

:: cleanup first
erase onewire.out
erase onewire.vcd

:: compile the verilog sources (testbench and RTL)
iverilog -o onewire.out onewire_tb.v sockit_avalon_onewire_master_mini.v onewire_slave_model.v
:: run the simulation
vvp onewire.out

:: open the waveform and detach it
gtkwave onewire.vcd gtkwave.sav &
