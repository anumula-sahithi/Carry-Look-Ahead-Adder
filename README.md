4-Bit Carry Look-Ahead (CLA) Adder
Project Overview
This project involves the design and implementation of a high-speed 4-bit Carry Look-Ahead (CLA) adder. The CLA adder is a key component in digital arithmetic circuits, used to perform efficient binary addition by minimizing carry propagation delay. This design uses modular blocks for signal computation, carry logic, and sum generation, adhering to a synchronous timing scheme for improved performance. I have designed a CLA adder using NGSPICE and simulated it and verified it's working post layout by building the complete layout of the circuit using MAGIC Layout. Then verified the working of the circuit using VERILOG HDL and VIVADO using FPGA boolean board.

Key Features:
Modular Design: Includes blocks for propagate/generate signal computation, carry look-ahead logic, and sum generation.
Synchronous Operation: Ensures inputs are latched before the rising clock edge, with outputs computed and available at the next rising clock edge.
High-Speed Performance: Reduces carry propagation delays, enabling faster binary addition.
Power Efficiency: Optimized design for low power consumption while maintaining accuracy.
Prerequisites
Simulation Tools: NGSPICE, MAGIC Layout, Verilog simulation software like ModelSim, Xilinx Vivado, or Synopsys VCS.
Hardware Description Language: Verilog HDL is used for module design.
Clock Input: Ensure the clock input and input bits adhere to the synchronous timing scheme.
Verifying Results
Verify waveforms in your simulation tool to confirm correct functionality.
Check that the outputs are computed at the next rising clock edge for given inputs.
Design Details
Modular Components:
Propagate/Generate Block: Computes propagate (P) and generate (G) signals for each bit.
Carry Logic Block: Determines carry bits using P and G signals, reducing the carry propagation delay.
Sum Block: Computes the sum bits using the carry and input signals.
Keywords
Flip-Flop Buses: To latch inputs and outputs.
Propagate/Generate Block: For signal computation.
CLA Block: For carry look-ahead logic.
Sum Block: To generate final sum outputs.
