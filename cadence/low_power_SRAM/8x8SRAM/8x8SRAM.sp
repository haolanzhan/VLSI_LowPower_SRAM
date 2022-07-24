* SPICE NETLIST
***************************************

.SUBCKT M1_POLY_CDNS_653782034014
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT dcont_CDNS_653782034013
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT dcont_CDNS_653782034011
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT nmos_vtg_CDNS_653782034016 1 2 3 4
** N=4 EP=4 IP=2 FDC=1
M0 2 3 1 4 NMOS_VTG L=5e-08 W=2.2e-07 AD=2.31e-14 AS=2.31e-14 PD=6.5e-07 PS=6.5e-07 $X=0 $Y=0 $D=5
.ENDS
***************************************
.SUBCKT dcont_CDNS_653782034015
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT 6TDPMTSRAM wl bit sleep_n gnd vdd sleep bit_n
** N=11 EP=7 IP=26 FDC=8
M0 9 Q' Q gnd NMOS_VTG L=5e-08 W=3.8e-07 AD=5.32e-14 AS=3.99e-14 PD=1.04e-06 PS=9.7e-07 $X=1060 $Y=2210 $D=5
M1 Q' Q 9 gnd NMOS_VTG L=5e-08 W=3.8e-07 AD=3.99e-14 AS=5.32e-14 PD=9.7e-07 PS=1.04e-06 $X=1440 $Y=2210 $D=5
M2 gnd sleep_n 9 gnd NMOS_VTG L=5e-08 W=4.3e-07 AD=4.515e-14 AS=4.515e-14 PD=1.07e-06 PS=1.07e-06 $X=2180 $Y=2210 $D=5
M3 10 Q' Q vdd PMOS_VTG L=5e-08 W=2.5e-07 AD=3.5e-14 AS=2.625e-14 PD=7.8e-07 PS=7.1e-07 $X=1060 $Y=4530 $D=4
M4 Q' Q 10 vdd PMOS_VTG L=5e-08 W=2.5e-07 AD=2.625e-14 AS=3.5e-14 PD=7.1e-07 PS=7.8e-07 $X=1440 $Y=4530 $D=4
M5 vdd sleep 10 vdd PMOS_VTG L=5e-08 W=6.45e-07 AD=6.7725e-14 AS=6.7725e-14 PD=1.5e-06 PS=1.5e-06 $X=2460 $Y=3740 $D=4
X19 bit Q wl gnd nmos_vtg_CDNS_653782034016 $T=320 2210 0 0 $X=0 $Y=2100
X20 Q' bit_n wl gnd nmos_vtg_CDNS_653782034016 $T=2920 2210 0 0 $X=2600 $Y=2100
.ENDS
***************************************
.SUBCKT ICV_1 1 2 3 4 5 6 7 8 9
** N=9 EP=9 IP=14 FDC=16
X0 3 4 5 1 2 6 7 6TDPMTSRAM $T=0 0 0 0 $X=0 $Y=1700
X1 3 8 5 1 2 6 9 6TDPMTSRAM $T=4080 0 0 0 $X=4080 $Y=1700
.ENDS
***************************************
.SUBCKT ICV_2 1 2 3 4 5 6 7 8 9 10 11 12
** N=12 EP=12 IP=18 FDC=32
X0 1 2 3 4 5 6 7 8 9 ICV_1 $T=0 3720 1 0 $X=0 $Y=-1820
X1 1 2 10 4 11 12 7 8 9 ICV_1 $T=0 0 0 0 $X=0 $Y=1700
.ENDS
***************************************
.SUBCKT ICV_3 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
** N=16 EP=16 IP=24 FDC=64
X0 2 1 3 5 6 8 10 11 12 4 7 9 ICV_2 $T=0 0 0 0 $X=0 $Y=-1820
X1 2 1 3 13 6 8 14 15 16 4 7 9 ICV_2 $T=8160 0 0 0 $X=8160 $Y=-1820
.ENDS
***************************************
.SUBCKT ICV_4 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20
+ 21 22
** N=22 EP=22 IP=32 FDC=128
X0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 ICV_3 $T=0 -7020 0 0 $X=0 $Y=-8840
X1 1 2 17 18 5 19 20 21 22 10 11 12 13 14 15 16 ICV_3 $T=0 0 0 0 $X=0 $Y=-1820
.ENDS
***************************************
.SUBCKT 8x8SRAM BL<0> WL<7> WL<6> WL<5> WL<4> WL<3> WL<2> WL<1> WL<0> sleepbar<7> sleepbar<6> sleepbar<5> sleepbar<4> sleepbar<3> sleepbar<2> sleepbar<1> sleepbar<0> sleep<7> sleep<6> sleep<5>
+ sleep<4> sleep<3> sleep<2> sleep<1> sleep<0> BLbar<0> BL<1> BLbar<1> BL<2> BLbar<2> BL<3> BLbar<3> BL<4> BLbar<4> BL<5> BLbar<5> BL<6> BLbar<6> BL<7> vdd
+ gnd BLbar<7>
** N=42 EP=42 IP=88 FDC=512
X0 vdd gnd WL<4> WL<5> BL<0> sleepbar<4> sleepbar<5> sleep<4> sleep<5> BLbar<0> BL<1> BLbar<1> BL<2> BLbar<2> BL<3> BLbar<3> WL<6> WL<7> sleepbar<6> sleepbar<7>
+ sleep<6> sleep<7>
+ ICV_4 $T=0 63600 1 0 $X=0 $Y=58060
X1 vdd gnd WL<0> WL<1> BL<0> sleepbar<0> sleepbar<1> sleep<0> sleep<1> BLbar<0> BL<1> BLbar<1> BL<2> BLbar<2> BL<3> BLbar<3> WL<2> WL<3> sleepbar<2> sleepbar<3>
+ sleep<2> sleep<3>
+ ICV_4 $T=0 77640 1 0 $X=0 $Y=72100
X2 vdd gnd WL<4> WL<5> BL<4> sleepbar<4> sleepbar<5> sleep<4> sleep<5> BLbar<4> BL<5> BLbar<5> BL<6> BLbar<6> BL<7> BLbar<7> WL<6> WL<7> sleepbar<6> sleepbar<7>
+ sleep<6> sleep<7>
+ ICV_4 $T=16320 63600 1 0 $X=16320 $Y=58060
X3 vdd gnd WL<0> WL<1> BL<4> sleepbar<0> sleepbar<1> sleep<0> sleep<1> BLbar<4> BL<5> BLbar<5> BL<6> BLbar<6> BL<7> BLbar<7> WL<2> WL<3> sleepbar<2> sleepbar<3>
+ sleep<2> sleep<3>
+ ICV_4 $T=16320 77640 1 0 $X=16320 $Y=72100
.ENDS
***************************************
