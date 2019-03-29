#4 LEDs
set_property PACKAGE_PIN U16 [get_ports {Q[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {Q[0]}]
set_property PACKAGE_PIN E19 [get_ports {Q[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {Q[1]}]
set_property PACKAGE_PIN U19 [get_ports {Q[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {Q[2]}]
set_property PACKAGE_PIN V19 [get_ports {Q[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {Q[3]}]

set_property PACKAGE_PIN U18 [get_ports clk]
	set_property CLOCK_DEDICATED_ROUTE TRUE [get_ports clk]
