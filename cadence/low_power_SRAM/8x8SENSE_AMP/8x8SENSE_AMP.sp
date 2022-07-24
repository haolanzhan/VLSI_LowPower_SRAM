* SPICE NETLIST
***************************************

.SUBCKT dcont_CDNS_653781120001
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT pmos_vtg_CDNS_653781120002 1 2 3 4
** N=4 EP=4 IP=2 FDC=1
M0 2 3 1 4 PMOS_VTG L=5e-08 W=9e-08 AD=9.45e-15 AS=9.45e-15 PD=3.9e-07 PS=3.9e-07 $X=0 $Y=0 $D=4
.ENDS
***************************************
.SUBCKT M1_POLY_CDNS_653781120002
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
X13 data_out BL read_en vdd pmos_vtg_CDNS_653781120002 $T=320 7055 0 0 $X=0 $Y=6945
X14 BLbar 3 read_en vdd pmos_vtg_CDNS_653781120002 $T=2180 7055 0 0 $X=1860 $Y=6945
.ENDS
***************************************
.SUBCKT 8x8SENSE_AMP gnd vdd BL<0> data_out<0> BLbar<0> BL<1> data_out<1> BLbar<1> BL<2> data_out<2> BLbar<2> BL<3> data_out<3> BLbar<3> BL<4> data_out<4> BLbar<4> BL<5> data_out<5> BLbar<5>
+ BL<6> data_out<6> BLbar<6> BL<7> data_out<7> BLbar<7> read_en
** N=27 EP=27 IP=48 FDC=56
X0 data_out<0> read_en BL<0> vdd BLbar<0> gnd SENSE_AMP $T=0 3260 0 0 $X=0 $Y=8570
X1 data_out<1> read_en BL<1> vdd BLbar<1> gnd SENSE_AMP $T=4080 3260 0 0 $X=4080 $Y=8570
X2 data_out<2> read_en BL<2> vdd BLbar<2> gnd SENSE_AMP $T=8160 3260 0 0 $X=8160 $Y=8570
X3 data_out<3> read_en BL<3> vdd BLbar<3> gnd SENSE_AMP $T=12240 3260 0 0 $X=12240 $Y=8570
X4 data_out<4> read_en BL<4> vdd BLbar<4> gnd SENSE_AMP $T=16320 3260 0 0 $X=16320 $Y=8570
X5 data_out<5> read_en BL<5> vdd BLbar<5> gnd SENSE_AMP $T=20400 3260 0 0 $X=20400 $Y=8570
X6 data_out<6> read_en BL<6> vdd BLbar<6> gnd SENSE_AMP $T=24480 3260 0 0 $X=24480 $Y=8570
X7 data_out<7> read_en BL<7> vdd BLbar<7> gnd SENSE_AMP $T=28560 3260 0 0 $X=28560 $Y=8570
.ENDS
***************************************
