This is the Final Capstone Project for CE392

Contents: 
Final Project Presentation
Final Project Report
Cadence Library Directory

Here is a brief description of each cellview. These directory includes everything needed to run virtuoso. There are also png files 
In each cellview if you with to view the schematic and the layout, under the schematic, symbol, or layout folder.

1) test_sram_6t_sleep - the simulation schematic for testing the general functionality of 6TDPMTSRAM cell
2) test_sram_6t_sleep_test2 - the simulation schematic for testing if the 6TDPMTSRAM cell will retain it's
   internal value when in sleep mode
3) 2_1_mux - the schematic of the MUX used in the above two testing schematics. Not used in any project
   schematics
4) inverter - the schematic and layout of the inverter used within the LS38Decoder design
5) LS38Decoder - the schematic and layout of the 3:8 Decoder used in the final SRAM array
6) inverter2 - the schematic and layout of the invert used in the final SRAM array (different layout than
   the first inverter for design reasons
7) 8x8PRECHARGE - the schematic and layout of the 8x1 array of Precharge circuitry used in the final design
8) 6TDPMTSRAM - the schematic and layout of the single SRAM cell used in the finall design
9) 8x8PRECH_WRITECIRC - the schematic and layout of the 8x1 precharge circuitry combined with the 8x1
   write-circuitry
    lock settings. Ignore this file
10) 8x8SENSE_PRECH_WRITECIRC2 - the schematic and layout of the 8x1 Precharge, write-circuitry, and sense
    amplifier
11) 8x8SENSE_AMP - the schematic and layout of the 8x1 Sense Amplifier
12) 8x8SRAM - the schematic and layout of the 8x8 array of SRAM cells
13) 8x8SRAM_PRECH_SENSE_WRITE - the schematic and layout of the 8x8SRAM array, precharge, write-circuitry, and
    the sense amplifier
14) 8x8WRITE_CIRCUITRY - the schematic and layout of the 8x1 write-circuitry
15) PRE_CHARGE - the schematic and layout of a single precharge circuit
16) WRITE_CIRCUITRY - the schematic and layout of the single Write-Circuitry
17) SENSE_AMP - the schematic and layout of the single sense amplifier
18) SAIRS - the schematic and layout of the final SRAM array design (64bitLPSRAM)
19) sim_sairs - the simulation schematic of the final SRAM array design

The most important cellview is SAIRS, which is the final design. All other cellviews are either simulation
schematics, or components/modules that make up the final design, in which SAIRS is dependent on. 
   

