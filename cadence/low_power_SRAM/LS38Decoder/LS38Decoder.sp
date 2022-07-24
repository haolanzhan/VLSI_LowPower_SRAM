* SPICE NETLIST
***************************************

.SUBCKT M2_M1_via
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M3_M2_via
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M1_POLY_CDNS_652998091930
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT dcont_CDNS_652998091935
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT pmos_vtg_CDNS_652998091934 1 2 3 4
** N=4 EP=4 IP=2 FDC=1
M0 2 3 1 4 PMOS_VTG L=5e-08 W=3.15e-07 AD=3.3075e-14 AS=3.3075e-14 PD=8.4e-07 PS=8.4e-07 $X=0 $Y=0 $D=4
.ENDS
***************************************
.SUBCKT dcont_CDNS_652998091931
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT nmos_vtg_CDNS_652998091930 1 2 3 4
** N=4 EP=4 IP=2 FDC=1
M0 2 3 1 4 NMOS_VTG L=5e-08 W=9e-08 AD=9.45e-15 AS=9.45e-15 PD=3.9e-07 PS=3.9e-07 $X=0 $Y=0 $D=5
.ENDS
***************************************
.SUBCKT PTAP_CDNS_652998091932
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT NTAP_CDNS_652998091931
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT inverter IN gnd vdd OUT
** N=4 EP=4 IP=9 FDC=2
M0 OUT IN vdd vdd PMOS_VTG L=5e-08 W=1.35e-07 AD=1.4175e-14 AS=1.4175e-14 PD=4.8e-07 PS=4.8e-07 $X=335 $Y=1590 $D=4
X4 gnd OUT IN gnd nmos_vtg_CDNS_652998091930 $T=335 740 0 0 $X=15 $Y=630
.ENDS
***************************************
.SUBCKT ICV_1
** N=2 EP=0 IP=2 FDC=0
.ENDS
***************************************
.SUBCKT dcont_CDNS_652998091933
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT pmos_vtg_CDNS_652998091932 1 2 3 4
** N=4 EP=4 IP=2 FDC=1
M0 2 3 1 4 PMOS_VTG L=5e-08 W=6.3e-07 AD=6.615e-14 AS=6.615e-14 PD=1.47e-06 PS=1.47e-06 $X=0 $Y=0 $D=4
.ENDS
***************************************
.SUBCKT ICV_2 1 2 3 4 5 6
** N=6 EP=6 IP=8 FDC=2
X0 1 2 5 6 nmos_vtg_CDNS_652998091930 $T=0 0 0 0 $X=-320 $Y=-110
X1 3 4 5 6 nmos_vtg_CDNS_652998091930 $T=0 550 0 0 $X=-320 $Y=440
.ENDS
***************************************
.SUBCKT dcont_CDNS_652998091937
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT pmos_vtg_CDNS_652998091936 1 2 3
** N=3 EP=3 IP=2 FDC=1
M0 2 3 1 1 PMOS_VTG L=5e-08 W=1.26e-06 AD=1.323e-13 AS=1.323e-13 PD=2.73e-06 PS=2.73e-06 $X=0 $Y=0 $D=4
.ENDS
***************************************
.SUBCKT LS38Decoder gnd a<2> vdd a<1> a<0> y<5> y<0> y<2> y<4> y<6> y<3> y<7> y<1>
** N=22 EP=13 IP=221 FDC=44
X57 14 y<0> a<0> vdd pmos_vtg_CDNS_652998091934 $T=4145 5790 0 0 $X=3825 $Y=5680
X58 y<2> 15 a<0> vdd pmos_vtg_CDNS_652998091934 $T=4145 6790 0 0 $X=3825 $Y=6680
X59 7 y<4> a<0> vdd pmos_vtg_CDNS_652998091934 $T=4145 7790 0 0 $X=3825 $Y=7680
X60 y<6> 10 a<0> vdd pmos_vtg_CDNS_652998091934 $T=4145 8790 0 0 $X=3825 $Y=8680
X61 14 y<1> 11 vdd pmos_vtg_CDNS_652998091934 $T=4885 5790 0 0 $X=4565 $Y=5680
X62 y<3> 15 11 vdd pmos_vtg_CDNS_652998091934 $T=4885 6790 0 0 $X=4565 $Y=6680
X63 7 y<5> 11 vdd pmos_vtg_CDNS_652998091934 $T=4885 7790 0 0 $X=4565 $Y=7680
X64 y<7> 10 11 vdd pmos_vtg_CDNS_652998091934 $T=4885 8790 0 0 $X=4565 $Y=8680
X65 y<0> gnd a<0> gnd nmos_vtg_CDNS_652998091930 $T=4145 1090 0 0 $X=3825 $Y=980
X66 y<2> gnd a<0> gnd nmos_vtg_CDNS_652998091930 $T=4145 2190 0 0 $X=3825 $Y=2080
X67 y<4> gnd a<0> gnd nmos_vtg_CDNS_652998091930 $T=4145 3290 0 0 $X=3825 $Y=3180
X68 y<6> gnd a<0> gnd nmos_vtg_CDNS_652998091930 $T=4145 4390 0 0 $X=3825 $Y=4280
X69 gnd y<1> 11 gnd nmos_vtg_CDNS_652998091930 $T=4885 1640 0 0 $X=4565 $Y=1530
X70 gnd y<3> 11 gnd nmos_vtg_CDNS_652998091930 $T=4885 2740 0 0 $X=4565 $Y=2630
X71 gnd y<5> 11 gnd nmos_vtg_CDNS_652998091930 $T=4885 3840 0 0 $X=4565 $Y=3730
X72 gnd y<7> 11 gnd nmos_vtg_CDNS_652998091930 $T=4885 4940 0 0 $X=4565 $Y=4830
X75 a<2> gnd vdd 3 inverter $T=850 11900 1 0 $X=865 $Y=9530
X76 a<1> gnd vdd 8 inverter $T=2330 11900 1 0 $X=2345 $Y=9530
X77 a<0> gnd vdd 11 inverter $T=3810 11900 1 0 $X=3825 $Y=9530
X86 13 14 a<1> vdd pmos_vtg_CDNS_652998091932 $T=2665 5790 0 0 $X=2345 $Y=5680
X87 5 7 a<1> vdd pmos_vtg_CDNS_652998091932 $T=2665 7790 0 0 $X=2345 $Y=7680
X88 13 15 8 vdd pmos_vtg_CDNS_652998091932 $T=3405 5790 0 0 $X=3085 $Y=5680
X89 5 10 8 vdd pmos_vtg_CDNS_652998091932 $T=3405 7790 0 0 $X=3085 $Y=7680
X90 y<0> gnd y<1> gnd a<2> gnd ICV_2 $T=1185 1090 0 0 $X=865 $Y=980
X91 y<2> gnd y<3> gnd a<2> gnd ICV_2 $T=1185 2190 0 0 $X=865 $Y=2080
X92 gnd y<4> gnd y<5> 3 gnd ICV_2 $T=1925 3290 0 0 $X=1605 $Y=3180
X93 gnd y<6> gnd y<7> 3 gnd ICV_2 $T=1925 4390 0 0 $X=1605 $Y=4280
X94 y<0> gnd y<1> gnd a<1> gnd ICV_2 $T=2665 1090 0 0 $X=2345 $Y=980
X95 y<4> gnd y<5> gnd a<1> gnd ICV_2 $T=2665 3290 0 0 $X=2345 $Y=3180
X96 gnd y<2> gnd y<3> 8 gnd ICV_2 $T=3405 2190 0 0 $X=3085 $Y=2080
X97 gnd y<6> gnd y<7> 8 gnd ICV_2 $T=3405 4390 0 0 $X=3085 $Y=4280
X98 vdd 13 a<2> pmos_vtg_CDNS_652998091936 $T=1185 5790 0 0 $X=865 $Y=5680
X99 vdd 5 3 pmos_vtg_CDNS_652998091936 $T=1925 5790 0 0 $X=1605 $Y=5680
.ENDS
***************************************
