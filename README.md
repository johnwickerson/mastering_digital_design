# Mastering Digital Design

This is the webpage for the MSc ADIC lab on "Mastering Digital Design".

* Lab leader: [Dr John Wickerson](https://johnwickerson.github.io/).
* Course originally developed by: [Prof Peter Cheung](https://www.imperial.ac.uk/people/p.cheung).
* Teaching assistants 2022: [Mr Jianyi Cheng](https://jianyicheng.github.io/) and [Mr Benjamin Biggs](https://www.linkedin.com/in/ben-biggs/).

Please send feedback on any of this material (e.g. errors, typos, or other suggestions for improvement) to Dr Wickerson. You can either do this by raising an [issue](https://github.com/johnwickerson/mastering_digital_design/issues) or by emailing him.

## Aims

1. To ensure all students on the MSc course reach a common competence level in RTL design using FPGAs in a hardware description language; and
2. To act as revision exercise for those who are already competent in Verilog and FPGA.

You will conduct this experiment in the first half of the Autumn Term. You can find a copy of the Experiment Specification Document [here](experiment/specification.pdf).

## Learning Outcomes

This Lab Experiment has FOUR distinct parts, each with specific learning outcomes.

**Part 1:** Basic competence in using Intel/Altera’s Quartus design systems for Cyclone-V FPGA; appreciate the superiority of hardware description language over schematic capture for digital design; use of case statement to specify combinatorial circuit; use higher level constructs in Verilog to specify complex combinatorial circuits; develop competence in taking a design from description to hardware.

**Part 2:** Use Verilog to specify sequential circuits; design of basic building blocks including: counters, linear-feedback shift-registers to generate pseudo-random numbers, basic state machines; using enable signals to implement globally synchronisation.

**Part 3:** Understand how digital components communicate through synchronous serial interface; interfacing digital circuits to analogue components such as ADC and DAC; use of block memory in FPGAs; number system and arithmetic operations such as adders and multipliers; digital signal generation.

**Part 4:** Understand how to implement a FIFO using counters as pointer registers and Block RAM as storage; implement a relatively complex digital circuit using different building blocks including: counters, finite state machines, registers, encoder/decoder, address computation unit, memory blocks, digital delay elements, synchronisers etc.; learn how to debug moderately complex digital circuits.

## Assessment

There will be an oral interview at the end of the experiment. The [marks](experiment/marksheet.pdf) for this experiment will count towards the Coursework component of the MSc course.

## Experiment

The experiment handbook can be found [here](experiment/handbook.pdf). Below are some useful resources for each part of the experiment.

### Part 1: Schematic vs. Verilog

* [Ex1 solution](design_files/ex1sol.sof.zip)
* [Incomplete version of 7-segment decoder](design_files/My7seg_incomplete.bdf.zip)
* [Pin assignment](design_files/pin_assignment.txt)
* [Verilog code for bin2bcd modules](design_files/bin2bcd_corrected.zip)
* [Ex4 solution](design_files/ex4sol.sof.zip)

### Part 2: Counters and FSMs

* [Instructions for setting up ModelSim](reference_material/Modelsim_setup.pdf)
* [Ex8 solution](design_files/ex8sol.sof.zip)
* [Verilog code for bin2bcd modules](design_files/bin2bcd_corrected.zip)
* [Code for pwm](design_files/pwm.v.zip)

### Part 3: DAC and Tone Generator

* [spi2dac and spi2adc](design_files/spi2dac_adc_v3.zip)
* [Explanation for spi2dac and spi3adc](reference_material/spi2dac_adc_explanation.pdf)
* [Test bench for spi2dac.v](design_files/tb_spi2dac.do.zip)
* [Analogue I/O Card schematic diagram](reference_material/DE1-SOC_Addon_Card.pdf)
* [DAC datasheet](reference_material/MCP49x1.pdf)
* [ADC datasheet](reference_material/MCP3002.pdf)
* [Opamp datasheet](reference_material/MCP604.pdf)
* Sinewave generation ([python](design_files/sinegen.py.zip), [matlab](design_files/sinegen.m.zip))
* [ROM initialisation file](design_files/rom_data.mif.zip)
* [Ex11 solution](design_files/ex11sol.sof.zip)
* [Ex14 solution](design_files/ex14sol.sof.zip)
* [Ex15 solution](design_files/ex15sol.sof.zip)

### Part 4: ADC/DAC and Echo Synthesiser

* [Ex16_proto](design_files/ex16_proto.zip)
* Audio files ([clapping.mp3](audio_files/clapping.mp3), [hello.mp3](audio_files/hello.mp3), [hg2g_short.mp3](audio_files/h2g2_short.mp3), [hg2g_full.mp3](audio_files/h2g2_full.mp3))
* [Ex19 solution](design_files/ex19sol.sof.zip)
* [Ex20 solution](design_files/ex20sol.sof.zip)

## Lectures

* [Lecture 1 (Introduction)](lectures/lecture1.pdf)
* Lecture 2 (Clock circuits)
* Lecture 3 (PWM, FSM, and SPI)

## Other reference material

### DE1-SoC Reference Manuals

* [DE1-SoC Board from Terasic](http://www.terasic.com.tw/cgi-bin/page/archive.pl?Language=English&No=836)
* [DE1-SoC Learning Roadmap](reference_material/learning_roadmap.pdf)
* [DE1-SoC Getting Started Guide](reference_material/DE1-SoC_Getting_Started_Guide.pdf)
* [DE1-SoC My First FPGA](reference_material/My_First_Fpga.pdf)
* [DE1-SoC User's Manual](reference_material/DE1-SoC_User_manual.pdf)
* [DE1-SoC Schematic Diagram](reference_material/DE1-SoC_schematic.pdf)

### Cyclone V Device Handbooks

* [Cyclone V Device Overview](reference_material/Cyclone_V_Overview.pdf)
* [Cyclone V Device Handbook Vol 1: Device Interfaces and Integration](reference_material/C5_handbook_v1.pdf)
* [Cyclone V Device Handbook Vol 2: Transceivers](reference_material/C5_handbook_v2.pdf)
* [Cyclone V Device Handbook Vol 3: Hard Processor System Technical Reference Manual](reference_material/C5_handbook_v3.pdf)

### Quartus Related Links

* [Quartus Prime Lite Web Edition](http://dl.altera.com/?edition=lite)
* [Quartus Tutorial Page](https://www.altera.com/support/literature/lit-tutorials.html)

### Verilog Resources

* [Verilog tutorial by ASIC World](http://www.asic-world.com/verilog/veritut.html)
