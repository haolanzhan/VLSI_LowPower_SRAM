* SPICE NETLIST
***************************************

.SUBCKT NTAP_CDNS_653780984743
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M1_POLY_CDNS_653780984744
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT dcont_CDNS_653780984744
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT PRE_CHARGE clk BL BLbar vdd
** N=4 EP=4 IP=8 FDC=3
M0 BL clk vdd vdd PMOS_VTG L=5e-08 W=9e-08 AD=1.26e-14 AS=9.45e-15 PD=4.6e-07 PS=3.9e-07 $X=320 $Y=5255 $D=4
M1 BLbar clk BL vdd PMOS_VTG L=5e-08 W=9e-08 AD=1.26e-14 AS=1.26e-14 PD=4.6e-07 PS=4.6e-07 $X=700 $Y=5255 $D=4
M2 vdd clk BLbar vdd PMOS_VTG L=5e-08 W=9e-08 AD=9.45e-15 AS=1.26e-14 PD=3.9e-07 PS=4.6e-07 $X=1080 $Y=5255 $D=4
.ENDS
***************************************
.SUBCKT pmos_vtg_CDNS_653780984745 1 2 3 4
** N=4 EP=4 IP=2 FDC=1
M0 2 3 1 4 PMOS_VTG L=5e-08 W=1.35e-07 AD=1.4175e-14 AS=1.4175e-14 PD=4.8e-07 PS=4.8e-07 $X=0 $Y=0 $D=4
.ENDS
***************************************
.SUBCKT nmos_vtg_CDNS_653780984747 1 2 3 4
** N=4 EP=4 IP=2 FDC=1
M0 2 3 1 4 NMOS_VTG L=5e-08 W=9e-08 AD=9.45e-15 AS=9.45e-15 PD=3.9e-07 PS=3.9e-07 $X=0 $Y=0 $D=5
.ENDS
***************************************
.SUBCKT dcont_CDNS_653780984741
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT pmos_vtg_CDNS_653780984740 1 2 3 4
** N=4 EP=4 IP=2 FDC=1
M0 2 3 1 4 PMOS_VTG L=5e-08 W=2.7e-07 AD=2.835e-14 AS=2.835e-14 PD=7.5e-07 PS=7.5e-07 $X=0 $Y=0 $D=4
.ENDS
***************************************
.SUBCKT nmos_vtg_CDNS_653780984743 1 2 3 4
** N=4 EP=4 IP=2 FDC=1
M0 2 3 1 4 NMOS_VTG L=5e-08 W=1.8e-07 AD=1.89e-14 AS=1.89e-14 PD=5.7e-07 PS=5.7e-07 $X=0 $Y=0 $D=5
.ENDS
***************************************
.SUBCKT Write_Circuitry wr_en BL data_in BLbar gnd vdd
** N=10 EP=6 IP=45 FDC=12
M0 gnd 8 10 gnd NMOS_VTG L=5e-08 W=1.8e-07 AD=2.52e-14 AS=1.89e-14 PD=6.4e-07 PS=5.7e-07 $X=1800 $Y=8510 $D=5
M1 8 data_in gnd gnd NMOS_VTG L=5e-08 W=1.8e-07 AD=1.89e-14 AS=2.52e-14 PD=5.7e-07 PS=6.4e-07 $X=2180 $Y=8510 $D=5
M2 vdd 8 10 vdd PMOS_VTG L=5e-08 W=2.7e-07 AD=3.78e-14 AS=2.835e-14 PD=8.2e-07 PS=7.5e-07 $X=1800 $Y=10185 $D=4
M3 8 data_in vdd vdd PMOS_VTG L=5e-08 W=2.7e-07 AD=2.835e-14 AS=3.78e-14 PD=7.5e-07 PS=8.2e-07 $X=2180 $Y=10185 $D=4
X14 vdd 7 wr_en vdd pmos_vtg_CDNS_653780984745 $T=320 10455 0 0 $X=0 $Y=10345
X15 9 vdd wr_en vdd pmos_vtg_CDNS_653780984745 $T=3660 10455 0 0 $X=3340 $Y=10345
X16 gnd 7 wr_en gnd nmos_vtg_CDNS_653780984747 $T=320 8510 0 0 $X=0 $Y=8400
X17 9 gnd wr_en gnd nmos_vtg_CDNS_653780984747 $T=3660 8510 0 0 $X=3340 $Y=8400
X21 BL 10 7 vdd pmos_vtg_CDNS_653780984740 $T=1060 10185 0 0 $X=740 $Y=10075
X22 BLbar 8 9 vdd pmos_vtg_CDNS_653780984740 $T=2920 10185 0 0 $X=2600 $Y=10075
X23 BL 10 wr_en gnd nmos_vtg_CDNS_653780984743 $T=1060 8510 0 0 $X=740 $Y=8400
X24 BLbar 8 wr_en gnd nmos_vtg_CDNS_653780984743 $T=2920 8510 0 0 $X=2600 $Y=8400
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
