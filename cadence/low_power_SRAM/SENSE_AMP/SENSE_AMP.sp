* SPICE NETLIST
***************************************

.SUBCKT dcont_CDNS_653782578121
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT pmos_vtg_CDNS_653782578122 1 2 3 4
** N=4 EP=4 IP=2 FDC=1
M0 2 3 1 4 PMOS_VTG L=5e-08 W=9e-08 AD=9.45e-15 AS=9.45e-15 PD=3.9e-07 PS=3.9e-07 $X=0 $Y=0 $D=4
.ENDS
***************************************
.SUBCKT M1_POLY_CDNS_653782578122
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT SENSE_AMP data_out read_en BL vdd BLbar gnd
** N=8 EP=6 IP=20 FDC=7
M0 4 3 data_out gnd NMOS_VTG L=5e-08 W=9e-08 AD=1.26e-14 AS=9.45e-15 PD=4.6e-07 PS=3.9e-07 $X=1060 $Y=5820 $D=5
M1 3 data_out 4 gnd NMOS_VTG L=5e-08 W=9e-08 AD=9.45e-15 AS=1.26e-14 PD=3.9e-07 PS=4.6e-07 $X=1440 $Y=5820 $D=5
M2 gnd read_en 4 gnd NMOS_VTG L=5e-08 W=9e-08 AD=9.45e-15 AS=9.45e-15 PD=3.9e-07 PS=3.9e-07 $X=2180 $Y=5820 $D=5
M3 vdd 3 data_out vdd PMOS_VTG L=5e-08 W=9e-08 AD=1.26e-14 AS=9.45e-15 PD=4.6e-07 PS=3.9e-07 $X=1060 $Y=7055 $D=4
M4 3 data_out vdd vdd PMOS_VTG L=5e-08 W=9e-08 AD=9.45e-15 AS=1.26e-14 PD=3.9e-07 PS=4.6e-07 $X=1440 $Y=7055 $D=4
X13 data_out BL read_en vdd pmos_vtg_CDNS_653782578122 $T=320 7055 0 0 $X=0 $Y=6945
X14 BLbar 3 read_en vdd pmos_vtg_CDNS_653782578122 $T=2180 7055 0 0 $X=1860 $Y=6945
.ENDS
***************************************
