# 1. Create the primary clock
create_clock -name clk -period 10.0 [get_ports clk]

# Set clock uncertainty (jitter and margin)
set_clock_uncertainty 0.2 [get_clocks clk]

# Define clock transition (useful for CTS)
set_clock_transition 0.1 [get_clocks clk]

# 2. Set Input Delays
# NOTE: We use [all_inputs] and remove 'clk' from the list. 
# This ensures constraints are applied to 'rst', 'up_down', or whatever 
# your inputs are actually named, preventing the previous errors.
set_input_delay -max 2.0 -clock clk [remove_from_collection [all_inputs] [get_ports clk]]
set_input_delay -min 0.5 -clock clk [remove_from_collection [all_inputs] [get_ports clk]]

# 3. Set Output Delays
# Updated to target your actual ports: up_count and down_count
set_output_delay -max 2.0 -clock clk [get_ports {up_count* down_count*}]
set_output_delay -min 0.5 -clock clk [get_ports {up_count* down_count*}]

# 4. Design Rules
# Set max fanout for synthesis to control buffer insertion
set_max_fanout 10 [current_design]
