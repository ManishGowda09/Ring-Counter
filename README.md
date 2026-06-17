# 🔄 4-Bit Ring Counter in Verilog

A Ring Counter is a type of shift register in which the output of the last flip-flop is connected to the input of the first flip-flop, forming a circular shift pattern. In a 4-bit ring counter, a single logic 1 circulates through the four flip-flops with each clock pulse.
---
# 📌 Features
4-bit Ring Counter implementation in Verilog HDL
Synchronous operation using clock signal
Circular shifting of a single logic 1
Suitable for learning sequential circuits and FPGA design
Simulated and verified using a testbench
---
# ⚙️ Module Description
Inputs
Signal	Description
clk	Clock signal
rst	Reset signal
Outputs
Signal	Description
q[3:0]	4-bit Ring Counter output
---
# 🔁 Working Principle

After reset, the counter is initialized to:

0001

With every positive edge of the clock, the logic 1 shifts to the next position:

Clock Cycle    Output
-----------    ------
Reset          0001
1              0010
2              0100
3              1000
4              0001
5              0010
...

The sequence repeats continuously.
---
# 🧪 Simulation Result

Expected waveform sequence:

0001 → 0010 → 0100 → 1000 → 0001 → ...

This confirms the circular shifting behavior of the ring counter.
---
# 🎯 Applications
Sequence generation
Timing and control circuits
State machines
Digital counters
FPGA and VLSI design projects
---
# 🛠️ Tools Used
Verilog HDL
Xilinx Vivado / ModelSim
FPGA Development Boards
---
# Waveform
<img width="1540" height="391" alt="image" src="https://github.com/user-attachments/assets/5ac7fa93-fa71-46e7-a68b-9e60ef6fbdb3" />
