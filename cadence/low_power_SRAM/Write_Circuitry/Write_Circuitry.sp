* SPICE NETLIST
***************************************

.SUBCKT M1_POLY_CDNS_653782518062
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT dcont_CDNS_653782518064
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT pmos_vtg_CDNS_653782518065 1 2 3 4
** N=4 EP=4 IP=2 FDC=1
M0 2 3 1 4 PMOS_VTG L=5e-08 W=1.35e-07 AD=1.4175e-14 AS=1.4175e-14 PD=4.8e-07 PS=4.8e-07 $X=0 $Y=0 $D=4
.ENDS
***************************************
.SUBCKT nmos_vtg_CDNS_653782518067 1 2 3 4
** N=4 EP=4 IP=2 FDC=1
M0 2 3 1 4 NMOS_VTG L=5e-08 W=9e-08 AD=9.45e-15 AS=9.45e-15 PD=3.9e-07 PS=3.9e-07 $X=0 $Y=0 $D=5
.ENDS
***************************************
.SUBCKT dcont_CDNS_653782518061
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT pmos_vtg_CDNS_653782518060 1 2 3 4
** N=4 EP=4 IP=2 FDC=1
M0 2 3 1 4 PMOS_VTG L=5e-08 W=2.7e-07 AD=2.835e-14 AS=2.835e-14 PD=7.5e-07 PS=7.5e-07 $X=0 $Y=0 $D=4
.ENDS
***************************************
.SUBCKT nmos_vtg_CDNS_653782518063 1 2 3 4
** N=4 EP=4 IP=2 FDC=1
M0 2 3 1 4 NMOS_VTG L=5e-08 W=1.8e-07 AD=1.89e-14 AS=1.89e-14 PD=5.7e-07 PS=5.7e-07 $X=0 $Y=0 $D=5
.ENDS
***************************************
.SUBCKT Write_Circuitry wr_en BL data_in BLbar gnd vdd
** N=10 EP=6 IP=44 FDC=12
M0 gnd 4 6 gnd NMOS_VTG L=5e-08 W=1.8e-07 AD=2.52e-14 AS=1.89e-14 PD=6.4e-07 PS=5.7e-07 $X=1800 $Y=8510 $D=5
M1 4 data_in gnd gnd NMOS_VTG L=5e-08 W=1.8e-07 AD=1.89e-14 AS=2.52e-14 PD=5.7e-07 PS=6.4e-07 $X=2180 $Y=8510 $D=5
M2 vdd 4 6 vdd PMOS_VTG L=5e-08 W=2.7e-07 AD=3.78e-14 AS=2.835e-14 PD=8.2e-07 PS=7.5e-07 $X=1800 $Y=10185 $D=4
M3 4 data_in vdd vdd PMOS_VTG L=5e-08 W=2.7e-07 AD=2.835e-14 AS=3.78e-14 PD=7.5e-07 PS=8.2e-07 $X=2180 $Y=10185 $D=4
X13 vdd 2 wr_en vdd pmos_vtg_CDNS_653782518065 $T=320 10455 0 0 $X=0 $Y=10345
X14 5 vdd wr_en vdd pmos_vtg_CDNS_653782518065 $T=3660 10455 0 0 $X=3340 $Y=10345
X15 gnd 2 wr_en gnd nmos_vtg_CDNS_653782518067 $T=320 8510 0 0 $X=0 $Y=8400
X16 5 gnd wr_en gnd nmos_vtg_CDNS_653782518067 $T=3660 8510 0 0 $X=3340 $Y=8400
X20 BL 6 2 vdd pmos_vtg_CDNS_653782518060 $T=1060 10185 0 0 $X=740 $Y=10075
X21 BLbar 4 5 vdd pmos_vtg_CDNS_653782518060 $T=2920 10185 0 0 $X=2600 $Y=10075
X22 BL 6 wr_en gnd nmos_vtg_CDNS_653782518063 $T=1060 8510 0 0 $X=740 $Y=8400
X23 BLbar 4 wr_en gnd nmos_vtg_CDNS_653782518063 $T=2920 8510 0 0 $X=2600 $Y=8400
.ENDS
***************************************
