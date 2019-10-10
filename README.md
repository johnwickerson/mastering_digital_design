# Mastering Digital Design

This is the webpage for the MSc ADIC lab on "Mastering Digital Design".

Lab leader: Dr John Wickerson.
Teaching assistants 2019: Mr Jianyi Cheng (weeks 1--3), Mr He Li (week 4).

## Aims

1. To ensure all students on the MSc course reach a common competence level in RTL design using FPGAs in a hardware description language; and
2. To act as revision exercise for those who are already competent in Verilog and FPGA.

You will conduct this experiment in the first half of the Autumn Term between 11th October and 1st November 2019. You can find a copy of the Experiment Specification Document [here](experiment/Experiment_spec.pdf).

## Team Pairing

You will be working in pairs for this experiment. The pairing for the 2019 cohort is as follows:

1.  Andreas Michaelides + Jinzhao Han
2.  Jiaxiang Li + Jiacheng Zhang
3.  Liqi Sun + Lijie Xie
4.  Lizhong Yan + Mingxuan Du
5.  Qishen Guan + Qirui Hua
6.  Qingchun Lyu + Qifan Zhu
7.  Shihong Chen + Siyuan Feng
8.  Shumin Wang + Shuang Wu
9.  Wei Tu + Xueteng Li
10. Yiyang Chen + Yuxin Huang
11. Yusong Liu + Yiqun Xue
12. Yaxing Xu + Yifan Zhang
13. Zewei Du + Zijian Gao
14. Zhengyu Wang + Zixiang Zhu

## Learning Outcomes

This Lab Experiment has FOUR distinct parts, each with specific learning outcomes.

**Part 1:** Basic competence in using Intel/Altera’s Quartus design systems for Cyclone-V FPGA; appreciate the superiority of hardware description language over schematic capture for digital design; use of case statement to specify combinatorial circuit; use higher level constructs in Verilog to specify complex combinatorial circuits; develop competence in taking a design from description to hardware.

**Part 2:** Use Verilog to specify sequential circuits; design of basic building blocks including: counters, linear-feedback shift-registers to generate pseudo-random numbers, basic state machines; using enable signals to implement globally synchronisation.

**Part 3:** Understand how digital components communicate through synchronous serial interface; interfacing digital circuits to analogue components such as ADC and DAC; use of block memory in FPGAs; number system and arithmetic operations such as adders and multipliers; digital signal generation.

**Part 4:** Understand how to implement a FIFO using counters as pointer registers and Block RAM as storage; implement a relatively complex digital circuit using different building blocks including: counters, finite state machines, registers, encoder/decoder, address computation unit, memory blocks, digital delay elements, synchronisers etc.; learn how to debug moderately complex digital circuits.

## Assessment

There will be an oral interview at the end of the experiment. The marks for this experiment will count towards the Coursework component of the MSc course.

## Experiment

The experiment handbook can be found [here](experiment/Experiment.pdf). Below are some useful resources for each part of the experiment.

### Part 1: Schematic vs. Verilog

* [Ex1 solution](ex1sol.sof.zip)
* [Incomplete version of 7-segment decoder](My7seg_incomplete.bdf.zip)
* [Pin assignment](pin_assignment.txt)
* [Verilog code for bin2bcd modules](bin2bcd_corrected.zip)
* [Ex4 solution](ex4sol.sof.zip)

### Part 2: Counters and FSMs

* [Instructions for setting up ModelSim](Modelsim_setup.pdf)
* [Ex8 solution](ex8sol.sof.zip)
* [Verilog code for bin2bcd modules](bin2bcd_corrected.zip)
* [Code for pwm](pwm.v.zip)

### Part 3: DAC and Tone Generator

* [spi2dac and spi2adc](/spi2dac_adc_v3.zip)
* [Explanation for spi2dac and spi3adc](spi2dac_adc_explanation.pdf)
* [Test bench for spi2dac.v](tb_spi2dac.do.zip)
* [Analogue I/O Card schematic diagram](DE1-SOC_Addon_Card.pdf)
* [DAC datasheet](MCP49x1.pdf)
* [ADC datasheet](MCP3002.pdf)
* [Opamp datasheet](MCP604.pdf)
* Sinewave generation ([python](sinegen.py.zip), [matlab](sinegen.m.zip))
* [ROM initialisation file](rom_data.mif.zip)
* [Ex11 solution](ex11sol.sof.zip)
* [Ex14 solution](ex14sol.sof.zip)
* [Ex15 solution](ex15sol.sof.zip)

### Part 4: ADC/DAC and Echo Synthesiser

* [Ex16_proto](ex16_proto.zip)
* Audio files ([clapping.mp3](clapping.mp3), [hello.mp3](hello.mp3), [hg2g_short.mp3](h2g2_short.mp3), [hg2g_full.mp3](h2g2_full.mp3))
* [Ex19 solution](ex19sol.sof.zip)
* [Ex20 solution](ex20sol.sof.zip)

## Lectures

* [Lecture 1 (Introduction)](lectures/lecture1.pdf)
* Lecture 2 (Clock circuits)
* Lecture 3 (PWM, FSM, and SPI)

## Other reference material

### DE1-SoC Reference Manuals

* [DE1-SoC Board from Terasic](http://www.terasic.com.tw/cgi-bin/page/archive.pl?Language=English&No=836)
* [DE1-SoC Learning Roadmap](learning_roadmap.pdf)
* [DE1-SoC Getting Started Guide](DE1-SoC_Getting_Started_Guide.pdf)
* [DE1-SoC My First FPGA](My_First_Fpga.pdf)
* [DE1-SoC User's Manual](DE1-SoC_User_manual.pdf)
* [DE1-SoC Schematic Diagram](DE1-SoC_schematic.pdf)

### Cyclone V Device Handbooks

* [Cyclone V Device Overview](Cyclone_V_Overview.pdf)
* [Cyclone V Device Handbook Vol 1: Device Interfaces and Integration](C5_handbook_v1.pdf)
* [Cyclone V Device Handbook Vol 2: Transceivers](C5_handbook_v2.pdf)
* [Cyclone V Device Handbook Vol 3: Hard Processor System Technical Reference Manual](C5_handbook_v3.pdf)

### Quartus Related Links

* [Quartus Prime Lite Web Edition](http://dl.altera.com/?edition=lite)
* [Quartus Tutorial Page](https://www.altera.com/support/literature/lit-tutorials.html)

### Verilog Resources

* [Verilog tutorial by ASIC World](http://www.asic-world.com/verilog/veritut.html)
