* SPICE NETLIST
***************************************

.SUBCKT dcont_CDNS_652898410881
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT inverter_2 IN gnd vdd OUT
** N=4 EP=4 IP=4 FDC=2
M0 OUT IN gnd gnd NMOS_VTG L=5e-08 W=9e-08 AD=9.45e-15 AS=9.45e-15 PD=3.9e-07 PS=3.9e-07 $X=335 $Y=740 $D=5
M1 OUT IN vdd vdd PMOS_VTG L=5e-08 W=1.35e-07 AD=1.4175e-14 AS=1.4175e-14 PD=4.8e-07 PS=4.8e-07 $X=335 $Y=1590 $D=4
.ENDS
***************************************
