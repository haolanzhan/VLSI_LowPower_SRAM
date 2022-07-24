* SPICE NETLIST
***************************************

.SUBCKT M1_POLY_CDNS_653782414560
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT dcont_CDNS_653782414561
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT PRE_CHARGE clk BL BLbar vdd
** N=4 EP=4 IP=11 FDC=3
M0 BL clk vdd vdd PMOS_VTG L=5e-08 W=9e-08 AD=1.26e-14 AS=9.45e-15 PD=4.6e-07 PS=3.9e-07 $X=320 $Y=5255 $D=4
M1 BLbar clk BL vdd PMOS_VTG L=5e-08 W=9e-08 AD=1.26e-14 AS=1.26e-14 PD=4.6e-07 PS=4.6e-07 $X=700 $Y=5255 $D=4
M2 vdd clk BLbar vdd PMOS_VTG L=5e-08 W=9e-08 AD=9.45e-15 AS=1.26e-14 PD=3.9e-07 PS=4.6e-07 $X=1080 $Y=5255 $D=4
.ENDS
***************************************
