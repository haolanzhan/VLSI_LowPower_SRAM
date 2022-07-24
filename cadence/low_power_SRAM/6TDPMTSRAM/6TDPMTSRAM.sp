* SPICE NETLIST
***************************************

.SUBCKT M1_POLY_CDNS_653780874892
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT dcont_CDNS_653780874893
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT dcont_CDNS_653780874891
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT nmos_vtg_CDNS_653780874896 1 2 3 4
** N=4 EP=4 IP=2 FDC=1
M0 2 3 1 4 NMOS_VTG L=5e-08 W=2.2e-07 AD=2.31e-14 AS=2.31e-14 PD=6.5e-07 PS=6.5e-07 $X=0 $Y=0 $D=5
.ENDS
***************************************
.SUBCKT dcont_CDNS_653780874895
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT 6TDPMTSRAM wl Q Q' bit sleep_n gnd vdd sleep bit_n
** N=11 EP=9 IP=26 FDC=8
M0 3 Q' Q gnd NMOS_VTG L=5e-08 W=3.8e-07 AD=5.32e-14 AS=3.99e-14 PD=1.04e-06 PS=9.7e-07 $X=1060 $Y=2210 $D=5
M1 Q' Q 3 gnd NMOS_VTG L=5e-08 W=3.8e-07 AD=3.99e-14 AS=5.32e-14 PD=9.7e-07 PS=1.04e-06 $X=1440 $Y=2210 $D=5
M2 gnd sleep_n 3 gnd NMOS_VTG L=5e-08 W=4.3e-07 AD=4.515e-14 AS=4.515e-14 PD=1.07e-06 PS=1.07e-06 $X=2180 $Y=2210 $D=5
M3 4 Q' Q vdd PMOS_VTG L=5e-08 W=2.5e-07 AD=3.5e-14 AS=2.625e-14 PD=7.8e-07 PS=7.1e-07 $X=1060 $Y=4530 $D=4
M4 Q' Q 4 vdd PMOS_VTG L=5e-08 W=2.5e-07 AD=2.625e-14 AS=3.5e-14 PD=7.1e-07 PS=7.8e-07 $X=1440 $Y=4530 $D=4
M5 vdd sleep 4 vdd PMOS_VTG L=5e-08 W=6.45e-07 AD=6.7725e-14 AS=6.7725e-14 PD=1.5e-06 PS=1.5e-06 $X=2460 $Y=3740 $D=4
X19 bit Q wl gnd nmos_vtg_CDNS_653780874896 $T=320 2210 0 0 $X=0 $Y=2100
X20 Q' bit_n wl gnd nmos_vtg_CDNS_653780874896 $T=2920 2210 0 0 $X=2600 $Y=2100
.ENDS
***************************************
