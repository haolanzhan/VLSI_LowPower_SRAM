* SPICE NETLIST
***************************************

.SUBCKT M1_POLY_CDNS_653780811740
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT dcont_CDNS_653780811741
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT PRE_CHARGE clk BL BLbar vdd
** N=4 EP=4 IP=7 FDC=3
M0 BL clk vdd vdd PMOS_VTG L=5e-08 W=9e-08 AD=1.26e-14 AS=9.45e-15 PD=4.6e-07 PS=3.9e-07 $X=320 $Y=5255 $D=4
M1 BLbar clk BL vdd PMOS_VTG L=5e-08 W=9e-08 AD=1.26e-14 AS=1.26e-14 PD=4.6e-07 PS=4.6e-07 $X=700 $Y=5255 $D=4
M2 vdd clk BLbar vdd PMOS_VTG L=5e-08 W=9e-08 AD=9.45e-15 AS=1.26e-14 PD=3.9e-07 PS=4.6e-07 $X=1080 $Y=5255 $D=4
.ENDS
***************************************
.SUBCKT 8x8PRECHARGE vdd clk BL<0> BLbar<0> BL<1> BLbar<1> BL<2> BLbar<2> BL<3> BLbar<3> BL<4> BLbar<4> BL<5> BLbar<5> BL<6> BLbar<6> BL<7> BLbar<7>
** N=18 EP=18 IP=32 FDC=24
X0 clk BL<0> BLbar<0> vdd PRE_CHARGE $T=0 4440 0 0 $X=0 $Y=9355
X1 clk BL<1> BLbar<1> vdd PRE_CHARGE $T=4080 4440 0 0 $X=4080 $Y=9355
X2 clk BL<2> BLbar<2> vdd PRE_CHARGE $T=8160 4440 0 0 $X=8160 $Y=9355
X3 clk BL<3> BLbar<3> vdd PRE_CHARGE $T=12240 4440 0 0 $X=12240 $Y=9355
X4 clk BL<4> BLbar<4> vdd PRE_CHARGE $T=16320 4440 0 0 $X=16320 $Y=9355
X5 clk BL<5> BLbar<5> vdd PRE_CHARGE $T=20400 4440 0 0 $X=20400 $Y=9355
X6 clk BL<6> BLbar<6> vdd PRE_CHARGE $T=24480 4440 0 0 $X=24480 $Y=9355
X7 clk BL<7> BLbar<7> vdd PRE_CHARGE $T=28560 4440 0 0 $X=28560 $Y=9355
.ENDS
***************************************
