* SPICE NETLIST
***************************************

.SUBCKT dcont_CDNS_653973855281
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M1_POLY_CDNS_653973855282
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT pmos_vtg_CDNS_6539738552823 1 2 3 4
** N=4 EP=4 IP=2 FDC=1
M0 2 3 1 4 PMOS_VTG L=5e-08 W=9e-08 AD=9.45e-15 AS=9.45e-15 PD=3.9e-07 PS=3.9e-07 $X=0 $Y=0 $D=4
.ENDS
***************************************
.SUBCKT ICV_1
** N=2 EP=0 IP=2 FDC=0
.ENDS
***************************************
.SUBCKT NTAP_CDNS_653973855283
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT PTAP_CDNS_653973855284
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT SENSE_AMP data_out read_en BL vdd BLbar gnd
** N=8 EP=6 IP=22 FDC=7
M0 8 7 data_out gnd NMOS_VTG L=5e-08 W=9e-08 AD=1.26e-14 AS=9.45e-15 PD=4.6e-07 PS=3.9e-07 $X=1060 $Y=5820 $D=5
M1 7 data_out 8 gnd NMOS_VTG L=5e-08 W=9e-08 AD=9.45e-15 AS=1.26e-14 PD=3.9e-07 PS=4.6e-07 $X=1440 $Y=5820 $D=5
M2 gnd read_en 8 gnd NMOS_VTG L=5e-08 W=9e-08 AD=9.45e-15 AS=9.45e-15 PD=3.9e-07 PS=3.9e-07 $X=2180 $Y=5820 $D=5
M3 vdd 7 data_out vdd PMOS_VTG L=5e-08 W=9e-08 AD=1.26e-14 AS=9.45e-15 PD=4.6e-07 PS=3.9e-07 $X=1060 $Y=7055 $D=4
M4 7 data_out vdd vdd PMOS_VTG L=5e-08 W=9e-08 AD=9.45e-15 AS=1.26e-14 PD=3.9e-07 PS=4.6e-07 $X=1440 $Y=7055 $D=4
X13 data_out BL read_en vdd pmos_vtg_CDNS_6539738552823 $T=320 7055 0 0 $X=0 $Y=6945
X14 BLbar 7 read_en vdd pmos_vtg_CDNS_6539738552823 $T=2180 7055 0 0 $X=1860 $Y=6945
.ENDS
***************************************
.SUBCKT PRE_CHARGE clk BL BLbar vdd
** N=4 EP=4 IP=8 FDC=3
M0 BL clk vdd vdd PMOS_VTG L=5e-08 W=9e-08 AD=1.26e-14 AS=9.45e-15 PD=4.6e-07 PS=3.9e-07 $X=320 $Y=5255 $D=4
M1 BLbar clk BL vdd PMOS_VTG L=5e-08 W=9e-08 AD=1.26e-14 AS=1.26e-14 PD=4.6e-07 PS=4.6e-07 $X=700 $Y=5255 $D=4
M2 vdd clk BLbar vdd PMOS_VTG L=5e-08 W=9e-08 AD=9.45e-15 AS=1.26e-14 PD=3.9e-07 PS=4.6e-07 $X=1080 $Y=5255 $D=4
.ENDS
***************************************
.SUBCKT pmos_vtg_CDNS_6539738552819 1 2 3 4
** N=4 EP=4 IP=2 FDC=1
M0 2 3 1 4 PMOS_VTG L=5e-08 W=1.35e-07 AD=1.4175e-14 AS=1.4175e-14 PD=4.8e-07 PS=4.8e-07 $X=0 $Y=0 $D=4
.ENDS
***************************************
.SUBCKT nmos_vtg_CDNS_653973855280 1 2 3 4
** N=4 EP=4 IP=2 FDC=1
M0 2 3 1 4 NMOS_VTG L=5e-08 W=9e-08 AD=9.45e-15 AS=9.45e-15 PD=3.9e-07 PS=3.9e-07 $X=0 $Y=0 $D=5
.ENDS
***************************************
.SUBCKT dcont_CDNS_653973855285
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT pmos_vtg_CDNS_6539738552816 1 2 3 4
** N=4 EP=4 IP=2 FDC=1
M0 2 3 1 4 PMOS_VTG L=5e-08 W=2.7e-07 AD=2.835e-14 AS=2.835e-14 PD=7.5e-07 PS=7.5e-07 $X=0 $Y=0 $D=4
.ENDS
***************************************
.SUBCKT nmos_vtg_CDNS_6539738552818 1 2 3 4
** N=4 EP=4 IP=2 FDC=1
M0 2 3 1 4 NMOS_VTG L=5e-08 W=1.8e-07 AD=1.89e-14 AS=1.89e-14 PD=5.7e-07 PS=5.7e-07 $X=0 $Y=0 $D=5
.ENDS
***************************************
.SUBCKT Write_Circuitry wr_en BL data_in BLbar gnd vdd
** N=10 EP=6 IP=46 FDC=12
M0 gnd 8 10 gnd NMOS_VTG L=5e-08 W=1.8e-07 AD=2.52e-14 AS=1.89e-14 PD=6.4e-07 PS=5.7e-07 $X=1800 $Y=8510 $D=5
M1 8 data_in gnd gnd NMOS_VTG L=5e-08 W=1.8e-07 AD=1.89e-14 AS=2.52e-14 PD=5.7e-07 PS=6.4e-07 $X=2180 $Y=8510 $D=5
M2 vdd 8 10 vdd PMOS_VTG L=5e-08 W=2.7e-07 AD=3.78e-14 AS=2.835e-14 PD=8.2e-07 PS=7.5e-07 $X=1800 $Y=10185 $D=4
M3 8 data_in vdd vdd PMOS_VTG L=5e-08 W=2.7e-07 AD=2.835e-14 AS=3.78e-14 PD=7.5e-07 PS=8.2e-07 $X=2180 $Y=10185 $D=4
X15 vdd 7 wr_en vdd pmos_vtg_CDNS_6539738552819 $T=320 10455 0 0 $X=0 $Y=10345
X16 9 vdd wr_en vdd pmos_vtg_CDNS_6539738552819 $T=3660 10455 0 0 $X=3340 $Y=10345
X17 gnd 7 wr_en gnd nmos_vtg_CDNS_653973855280 $T=320 8510 0 0 $X=0 $Y=8400
X18 9 gnd wr_en gnd nmos_vtg_CDNS_653973855280 $T=3660 8510 0 0 $X=3340 $Y=8400
X22 BL 10 7 vdd pmos_vtg_CDNS_6539738552816 $T=1060 10185 0 0 $X=740 $Y=10075
X23 BLbar 8 9 vdd pmos_vtg_CDNS_6539738552816 $T=2920 10185 0 0 $X=2600 $Y=10075
X24 BL 10 wr_en gnd nmos_vtg_CDNS_6539738552818 $T=1060 8510 0 0 $X=740 $Y=8400
X25 BLbar 8 wr_en gnd nmos_vtg_CDNS_6539738552818 $T=2920 8510 0 0 $X=2600 $Y=8400
.ENDS
***************************************
.SUBCKT 8x8PRECH_WRITECIRC BL<0> BLbar<0> BL<1> BLbar<1> BL<2> BLbar<2> BL<3> BLbar<3> BL<4> BLbar<4> BL<5> BLbar<5> BL<6> BLbar<6> BL<7> BLbar<7> gnd vdd clk data_in<0>
+ data_in<1> data_in<2> data_in<3> data_in<4> data_in<5> data_in<6> data_in<7> wr_en
** N=28 EP=28 IP=80 FDC=120
X0 clk BL<0> BLbar<0> vdd PRE_CHARGE $T=0 48085 1 0 $X=0 $Y=42140
X1 clk BL<1> BLbar<1> vdd PRE_CHARGE $T=4080 48085 1 0 $X=4080 $Y=42140
X2 clk BL<2> BLbar<2> vdd PRE_CHARGE $T=8160 48085 1 0 $X=8160 $Y=42140
X3 clk BL<3> BLbar<3> vdd PRE_CHARGE $T=12240 48085 1 0 $X=12240 $Y=42140
X4 clk BL<4> BLbar<4> vdd PRE_CHARGE $T=16320 48085 1 0 $X=16320 $Y=42140
X5 clk BL<5> BLbar<5> vdd PRE_CHARGE $T=20400 48085 1 0 $X=20400 $Y=42140
X6 clk BL<6> BLbar<6> vdd PRE_CHARGE $T=24480 48085 1 0 $X=24480 $Y=42140
X7 clk BL<7> BLbar<7> vdd PRE_CHARGE $T=28560 48085 1 0 $X=28560 $Y=42140
X8 wr_en BL<0> data_in<0> BLbar<0> gnd vdd Write_Circuitry $T=0 31305 0 0 $X=0 $Y=39225
X9 wr_en BL<1> data_in<1> BLbar<1> gnd vdd Write_Circuitry $T=4080 31305 0 0 $X=4080 $Y=39225
X10 wr_en BL<2> data_in<2> BLbar<2> gnd vdd Write_Circuitry $T=8160 31305 0 0 $X=8160 $Y=39225
X11 wr_en BL<3> data_in<3> BLbar<3> gnd vdd Write_Circuitry $T=12240 31305 0 0 $X=12240 $Y=39225
X12 wr_en BL<4> data_in<4> BLbar<4> gnd vdd Write_Circuitry $T=16320 31305 0 0 $X=16320 $Y=39225
X13 wr_en BL<5> data_in<5> BLbar<5> gnd vdd Write_Circuitry $T=20400 31305 0 0 $X=20400 $Y=39225
X14 wr_en BL<6> data_in<6> BLbar<6> gnd vdd Write_Circuitry $T=24480 31305 0 0 $X=24480 $Y=39225
X15 wr_en BL<7> data_in<7> BLbar<7> gnd vdd Write_Circuitry $T=28560 31305 0 0 $X=28560 $Y=39225
.ENDS
***************************************
.SUBCKT 8x8SENSE_PRECH_WRITECIRC2 BL<0> BLbar<0> BL<1> BLbar<1> BL<2> BLbar<2> BL<3> BLbar<3> BL<4> BLbar<4> BL<5> BLbar<5> BL<6> BLbar<6> BL<7> BLbar<7> vdd gnd data_out<0> clk
+ data_in<0> data_out<1> data_in<1> data_out<2> data_in<2> data_out<3> data_in<3> data_out<4> data_in<4> data_out<5> data_in<5> data_out<6> data_in<6> data_out<7> data_in<7> read_en wr_en
** N=37 EP=37 IP=76 FDC=176
X0 data_out<0> read_en BL<0> vdd BLbar<0> gnd SENSE_AMP $T=0 64030 1 0 $X=0 $Y=56270
X1 data_out<1> read_en BL<1> vdd BLbar<1> gnd SENSE_AMP $T=4080 64030 1 0 $X=4080 $Y=56270
X2 data_out<2> read_en BL<2> vdd BLbar<2> gnd SENSE_AMP $T=8160 64030 1 0 $X=8160 $Y=56270
X3 data_out<3> read_en BL<3> vdd BLbar<3> gnd SENSE_AMP $T=12240 64030 1 0 $X=12240 $Y=56270
X4 data_out<4> read_en BL<4> vdd BLbar<4> gnd SENSE_AMP $T=16320 64030 1 0 $X=16320 $Y=56270
X5 data_out<5> read_en BL<5> vdd BLbar<5> gnd SENSE_AMP $T=20400 64030 1 0 $X=20400 $Y=56270
X6 data_out<6> read_en BL<6> vdd BLbar<6> gnd SENSE_AMP $T=24480 64030 1 0 $X=24480 $Y=56270
X7 data_out<7> read_en BL<7> vdd BLbar<7> gnd SENSE_AMP $T=28560 64030 1 0 $X=28560 $Y=56270
X8 BL<0> BLbar<0> BL<1> BLbar<1> BL<2> BLbar<2> BL<3> BLbar<3> BL<4> BLbar<4> BL<5> BLbar<5> BL<6> BLbar<6> BL<7> BLbar<7> gnd vdd clk data_in<0>
+ data_in<1> data_in<2> data_in<3> data_in<4> data_in<5> data_in<6> data_in<7> wr_en
+ 8x8PRECH_WRITECIRC $T=0 19095 0 0 $X=0 $Y=58320
.ENDS
***************************************
.SUBCKT dcont_CDNS_6539738552811
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT nmos_vtg_CDNS_6539738552814 1 2 3 4
** N=4 EP=4 IP=2 FDC=1
M0 2 3 1 4 NMOS_VTG L=5e-08 W=2.2e-07 AD=2.31e-14 AS=2.31e-14 PD=6.5e-07 PS=6.5e-07 $X=0 $Y=0 $D=5
.ENDS
***************************************
.SUBCKT dcont_CDNS_6539738552813
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT 6TDPMTSRAM wl bit sleep_n gnd vdd sleep bit_n
** N=11 EP=7 IP=28 FDC=8
M0 9 Q' Q gnd NMOS_VTG L=5e-08 W=3.8e-07 AD=5.32e-14 AS=3.99e-14 PD=1.04e-06 PS=9.7e-07 $X=1060 $Y=2210 $D=5
M1 Q' Q 9 gnd NMOS_VTG L=5e-08 W=3.8e-07 AD=3.99e-14 AS=5.32e-14 PD=9.7e-07 PS=1.04e-06 $X=1440 $Y=2210 $D=5
M2 gnd sleep_n 9 gnd NMOS_VTG L=5e-08 W=4.3e-07 AD=4.515e-14 AS=4.515e-14 PD=1.07e-06 PS=1.07e-06 $X=2180 $Y=2210 $D=5
M3 10 Q' Q vdd PMOS_VTG L=5e-08 W=2.5e-07 AD=3.5e-14 AS=2.625e-14 PD=7.8e-07 PS=7.1e-07 $X=1060 $Y=4530 $D=4
M4 Q' Q 10 vdd PMOS_VTG L=5e-08 W=2.5e-07 AD=2.625e-14 AS=3.5e-14 PD=7.1e-07 PS=7.8e-07 $X=1440 $Y=4530 $D=4
M5 vdd sleep 10 vdd PMOS_VTG L=5e-08 W=6.45e-07 AD=6.7725e-14 AS=6.7725e-14 PD=1.5e-06 PS=1.5e-06 $X=2460 $Y=3740 $D=4
X21 bit Q wl gnd nmos_vtg_CDNS_6539738552814 $T=320 2210 0 0 $X=0 $Y=2100
X22 Q' bit_n wl gnd nmos_vtg_CDNS_6539738552814 $T=2920 2210 0 0 $X=2600 $Y=2100
.ENDS
***************************************
.SUBCKT ICV_2 1 2 3 4 5 6 7 8 9
** N=9 EP=9 IP=14 FDC=16
X0 3 4 5 1 2 6 7 6TDPMTSRAM $T=0 0 0 0 $X=0 $Y=1700
X1 3 8 5 1 2 6 9 6TDPMTSRAM $T=4080 0 0 0 $X=4080 $Y=1700
.ENDS
***************************************
.SUBCKT ICV_3 1 2 3 4 5 6 7 8 9 10 11 12
** N=12 EP=12 IP=18 FDC=32
X0 1 2 3 4 5 6 7 8 9 ICV_2 $T=0 3720 1 0 $X=0 $Y=-1820
X1 1 2 10 4 11 12 7 8 9 ICV_2 $T=0 0 0 0 $X=0 $Y=1700
.ENDS
***************************************
.SUBCKT ICV_4 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
** N=16 EP=16 IP=24 FDC=64
X0 2 1 3 5 6 8 10 11 12 4 7 9 ICV_3 $T=0 0 0 0 $X=0 $Y=-1820
X1 2 1 3 13 6 8 14 15 16 4 7 9 ICV_3 $T=8160 0 0 0 $X=8160 $Y=-1820
.ENDS
***************************************
.SUBCKT ICV_5 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20
+ 21 22
** N=22 EP=22 IP=32 FDC=128
X0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 ICV_4 $T=0 -7020 0 0 $X=0 $Y=-8840
X1 1 2 17 18 5 19 20 21 22 10 11 12 13 14 15 16 ICV_4 $T=0 0 0 0 $X=0 $Y=-1820
.ENDS
***************************************
.SUBCKT 8x8SRAM BL<0> WL<7> WL<6> WL<5> WL<4> WL<3> WL<2> WL<1> WL<0> sleepbar<7> sleepbar<6> sleepbar<5> sleepbar<4> sleepbar<3> sleepbar<2> sleepbar<1> sleepbar<0> sleep<7> sleep<6> sleep<5>
+ sleep<4> sleep<3> sleep<2> sleep<1> sleep<0> BLbar<0> BL<1> BLbar<1> BL<2> BLbar<2> BL<3> BLbar<3> BL<4> BLbar<4> BL<5> BLbar<5> BL<6> BLbar<6> BL<7> vdd
+ gnd BLbar<7>
** N=42 EP=42 IP=88 FDC=512
X0 vdd gnd WL<4> WL<5> BL<0> sleepbar<4> sleepbar<5> sleep<4> sleep<5> BLbar<0> BL<1> BLbar<1> BL<2> BLbar<2> BL<3> BLbar<3> WL<6> WL<7> sleepbar<6> sleepbar<7>
+ sleep<6> sleep<7>
+ ICV_5 $T=0 63600 1 0 $X=0 $Y=58060
X1 vdd gnd WL<0> WL<1> BL<0> sleepbar<0> sleepbar<1> sleep<0> sleep<1> BLbar<0> BL<1> BLbar<1> BL<2> BLbar<2> BL<3> BLbar<3> WL<2> WL<3> sleepbar<2> sleepbar<3>
+ sleep<2> sleep<3>
+ ICV_5 $T=0 77640 1 0 $X=0 $Y=72100
X2 vdd gnd WL<4> WL<5> BL<4> sleepbar<4> sleepbar<5> sleep<4> sleep<5> BLbar<4> BL<5> BLbar<5> BL<6> BLbar<6> BL<7> BLbar<7> WL<6> WL<7> sleepbar<6> sleepbar<7>
+ sleep<6> sleep<7>
+ ICV_5 $T=16320 63600 1 0 $X=16320 $Y=58060
X3 vdd gnd WL<0> WL<1> BL<4> sleepbar<0> sleepbar<1> sleep<0> sleep<1> BLbar<4> BL<5> BLbar<5> BL<6> BLbar<6> BL<7> BLbar<7> WL<2> WL<3> sleepbar<2> sleepbar<3>
+ sleep<2> sleep<3>
+ ICV_5 $T=16320 77640 1 0 $X=16320 $Y=72100
.ENDS
***************************************
.SUBCKT pmos_vtg_CDNS_653973855288 1 2 3
** N=3 EP=3 IP=2 FDC=1
M0 2 3 1 1 PMOS_VTG L=5e-08 W=1.35e-07 AD=1.4175e-14 AS=1.4175e-14 PD=4.8e-07 PS=4.8e-07 $X=0 $Y=0 $D=4
.ENDS
***************************************
.SUBCKT inverter_2 IN gnd vdd OUT
** N=4 EP=4 IP=10 FDC=2
X3 gnd OUT IN gnd nmos_vtg_CDNS_653973855280 $T=335 740 0 0 $X=15 $Y=630
X4 vdd OUT IN pmos_vtg_CDNS_653973855288 $T=335 1590 0 0 $X=15 $Y=1480
.ENDS
***************************************
.SUBCKT M2_M1_via
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M3_M2_via
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT pmos_vtg_CDNS_653973855284 1 2 3 4
** N=4 EP=4 IP=2 FDC=1
M0 2 3 1 4 PMOS_VTG L=5e-08 W=3.15e-07 AD=3.3075e-14 AS=3.3075e-14 PD=8.4e-07 PS=8.4e-07 $X=0 $Y=0 $D=4
.ENDS
***************************************
.SUBCKT inverter IN gnd vdd OUT
** N=4 EP=4 IP=10 FDC=2
X3 gnd OUT IN gnd nmos_vtg_CDNS_653973855280 $T=335 740 0 0 $X=15 $Y=630
X4 vdd OUT IN pmos_vtg_CDNS_653973855288 $T=335 1590 0 0 $X=15 $Y=1480
.ENDS
***************************************
.SUBCKT ICV_6
** N=2 EP=0 IP=2 FDC=0
.ENDS
***************************************
.SUBCKT ICV_7 1 2 3 4 5 6
** N=6 EP=6 IP=8 FDC=2
X0 1 2 5 6 nmos_vtg_CDNS_653973855280 $T=0 -550 0 0 $X=-320 $Y=-660
X1 3 4 5 6 nmos_vtg_CDNS_653973855280 $T=0 0 0 0 $X=-320 $Y=-110
.ENDS
***************************************
.SUBCKT dcont_CDNS_653973855283
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT pmos_vtg_CDNS_653973855282 1 2 3 4
** N=4 EP=4 IP=2 FDC=1
M0 2 3 1 4 PMOS_VTG L=5e-08 W=6.3e-07 AD=6.615e-14 AS=6.615e-14 PD=1.47e-06 PS=1.47e-06 $X=0 $Y=0 $D=4
.ENDS
***************************************
.SUBCKT dcont_CDNS_653973855287
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT pmos_vtg_CDNS_653973855286 1 2 3
** N=3 EP=3 IP=2 FDC=1
M0 2 3 1 1 PMOS_VTG L=5e-08 W=1.26e-06 AD=1.323e-13 AS=1.323e-13 PD=2.73e-06 PS=2.73e-06 $X=0 $Y=0 $D=4
.ENDS
***************************************
.SUBCKT SAIRS gnd a<2> a<1> a<0> vdd data_out<0> data_in<0> clk data_out<1> data_in<1> data_out<2> data_in<2> data_out<3> data_in<3> data_out<4> data_in<4> data_out<5> data_in<5> data_out<6> data_in<6>
+ data_out<7> data_in<7> wr_en read_en
** N=65 EP=24 IP=332 FDC=748
X5 2 gnd a<0> gnd nmos_vtg_CDNS_653973855280 $T=7190 63675 1 0 $X=6870 $Y=63385
X6 4 gnd a<0> gnd nmos_vtg_CDNS_653973855280 $T=7190 64775 1 0 $X=6870 $Y=64485
X7 6 gnd a<0> gnd nmos_vtg_CDNS_653973855280 $T=7190 65875 1 0 $X=6870 $Y=65585
X8 8 gnd a<0> gnd nmos_vtg_CDNS_653973855280 $T=7190 66975 1 0 $X=6870 $Y=66685
X9 gnd 1 26 gnd nmos_vtg_CDNS_653973855280 $T=7930 63125 1 0 $X=7610 $Y=62835
X10 gnd 3 26 gnd nmos_vtg_CDNS_653973855280 $T=7930 64225 1 0 $X=7610 $Y=63935
X11 gnd 5 26 gnd nmos_vtg_CDNS_653973855280 $T=7930 65325 1 0 $X=7610 $Y=65035
X12 gnd 7 26 gnd nmos_vtg_CDNS_653973855280 $T=7930 66425 1 0 $X=7610 $Y=66135
X13 58 50 59 51 60 52 61 53 62 54 63 55 64 56 65 57 vdd gnd data_out<0> clk
+ data_in<0> data_out<1> data_in<1> data_out<2> data_in<2> data_out<3> data_in<3> data_out<4> data_in<4> data_out<5> data_in<5> data_out<6> data_in<6> data_out<7> data_in<7> read_en wr_en
+ 8x8SENSE_PRECH_WRITECIRC2 $T=9780 21905 0 0 $X=9780 $Y=78175
X14 58 1 2 3 4 5 6 7 8 1 2 3 4 5 6 7 8 9 10 11
+ 12 13 14 15 16 50 59 51 60 52 61 53 62 54 63 55 64 56 65 vdd
+ gnd 57
+ 8x8SRAM $T=9780 -7965 0 0 $X=9780 $Y=50095
X15 1 gnd vdd 9 inverter_2 $T=9025 52465 1 0 $X=9040 $Y=50095
X16 2 gnd vdd 10 inverter_2 $T=9025 55095 0 0 $X=9040 $Y=55325
X17 3 gnd vdd 11 inverter_2 $T=9025 59485 1 0 $X=9040 $Y=57115
X18 4 gnd vdd 12 inverter_2 $T=9025 62115 0 0 $X=9040 $Y=62345
X19 5 gnd vdd 13 inverter_2 $T=9025 66505 1 0 $X=9040 $Y=64135
X20 6 gnd vdd 14 inverter_2 $T=9025 69135 0 0 $X=9040 $Y=69365
X21 7 gnd vdd 15 inverter_2 $T=9025 73525 1 0 $X=9040 $Y=71155
X22 8 gnd vdd 16 inverter_2 $T=9025 76155 0 0 $X=9040 $Y=76385
X77 2 25 a<0> vdd pmos_vtg_CDNS_653973855284 $T=7190 59275 1 0 $X=6870 $Y=58535
X78 22 4 a<0> vdd pmos_vtg_CDNS_653973855284 $T=7190 60275 1 0 $X=6870 $Y=59535
X79 6 47 a<0> vdd pmos_vtg_CDNS_653973855284 $T=7190 61275 1 0 $X=6870 $Y=60535
X80 46 8 a<0> vdd pmos_vtg_CDNS_653973855284 $T=7190 62275 1 0 $X=6870 $Y=61535
X81 1 25 26 vdd pmos_vtg_CDNS_653973855284 $T=7930 59275 1 0 $X=7610 $Y=58535
X82 22 3 26 vdd pmos_vtg_CDNS_653973855284 $T=7930 60275 1 0 $X=7610 $Y=59535
X83 5 47 26 vdd pmos_vtg_CDNS_653973855284 $T=7930 61275 1 0 $X=7610 $Y=60535
X84 46 7 26 vdd pmos_vtg_CDNS_653973855284 $T=7930 62275 1 0 $X=7610 $Y=61535
X85 a<2> gnd vdd 19 inverter $T=3895 56165 0 0 $X=3910 $Y=56375
X86 a<1> gnd vdd 23 inverter $T=5375 56165 0 0 $X=5390 $Y=56375
X87 a<0> gnd vdd 26 inverter $T=6855 56165 0 0 $X=6870 $Y=56375
X96 6 gnd 5 gnd a<2> gnd ICV_7 $T=4230 65325 1 0 $X=3910 $Y=65035
X97 8 gnd 7 gnd a<2> gnd ICV_7 $T=4230 66425 1 0 $X=3910 $Y=66135
X98 gnd 2 gnd 1 19 gnd ICV_7 $T=4970 63125 1 0 $X=4650 $Y=62835
X99 gnd 4 gnd 3 19 gnd ICV_7 $T=4970 64225 1 0 $X=4650 $Y=63935
X100 4 gnd 3 gnd a<1> gnd ICV_7 $T=5710 64225 1 0 $X=5390 $Y=63935
X101 8 gnd 7 gnd a<1> gnd ICV_7 $T=5710 66425 1 0 $X=5390 $Y=66135
X102 gnd 2 gnd 1 23 gnd ICV_7 $T=6450 63125 1 0 $X=6130 $Y=62835
X103 gnd 6 gnd 5 23 gnd ICV_7 $T=6450 65325 1 0 $X=6130 $Y=65035
X104 20 22 a<1> vdd pmos_vtg_CDNS_653973855282 $T=5710 60275 1 0 $X=5390 $Y=58905
X105 45 46 a<1> vdd pmos_vtg_CDNS_653973855282 $T=5710 62275 1 0 $X=5390 $Y=60905
X106 20 25 23 vdd pmos_vtg_CDNS_653973855282 $T=6450 60275 1 0 $X=6130 $Y=58905
X107 45 47 23 vdd pmos_vtg_CDNS_653973855282 $T=6450 62275 1 0 $X=6130 $Y=60905
X108 vdd 45 a<2> pmos_vtg_CDNS_653973855286 $T=4230 62275 1 0 $X=3910 $Y=59645
X109 vdd 20 19 pmos_vtg_CDNS_653973855286 $T=4970 62275 1 0 $X=4650 $Y=59645
.ENDS
***************************************
