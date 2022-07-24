* SPICE NETLIST
***************************************

.SUBCKT dcont_CDNS_653756730761
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M1_POLY_CDNS_653756730762
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT pmos_vtg_CDNS_6537567307610 1 2 3 4
** N=4 EP=4 IP=2 FDC=1
M0 2 3 1 4 PMOS_VTG L=5e-08 W=9e-08 AD=9.45e-15 AS=9.45e-15 PD=3.9e-07 PS=3.9e-07 $X=0 $Y=0 $D=4
.ENDS
***************************************
.SUBCKT ICV_1
** N=2 EP=0 IP=2 FDC=0
.ENDS
***************************************
.SUBCKT NTAP_CDNS_653756730763
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT PTAP_CDNS_653756730764
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT SENSE_AMP data_out read_en BL vdd BLbar gnd
** N=8 EP=6 IP=22 FDC=7
M0 8 7 data_out gnd NMOS_VTG L=5e-08 W=9e-08 AD=1.26e-14 AS=9.45e-15 PD=4.6e-07 PS=3.9e-07 $X=1060 $Y=5820 $D=5
M1 7 data_out 8 gnd NMOS_VTG L=5e-08 W=9e-08 AD=9.45e-15 AS=1.26e-14 PD=3.9e-07 PS=4.6e-07 $X=1440 $Y=5820 $D=5
M2 gnd read_en 8 gnd NMOS_VTG L=5e-08 W=9e-08 AD=9.45e-15 AS=9.45e-15 PD=3.9e-07 PS=3.9e-07 $X=2180 $Y=5820 $D=5
M3 vdd 7 data_out vdd PMOS_VTG L=5e-08 W=9e-08 AD=1.26e-14 AS=9.45e-15 PD=4.6e-07 PS=3.9e-07 $X=1060 $Y=7055 $D=4
M4 7 data_out vdd vdd PMOS_VTG L=5e-08 W=9e-08 AD=9.45e-15 AS=1.26e-14 PD=3.9e-07 PS=4.6e-07 $X=1440 $Y=7055 $D=4
X13 data_out BL read_en vdd pmos_vtg_CDNS_6537567307610 $T=320 7055 0 0 $X=0 $Y=6945
X14 BLbar 7 read_en vdd pmos_vtg_CDNS_6537567307610 $T=2180 7055 0 0 $X=1860 $Y=6945
.ENDS
***************************************
.SUBCKT PRE_CHARGE clk BL BLbar vdd
** N=4 EP=4 IP=8 FDC=3
M0 BL clk vdd vdd PMOS_VTG L=5e-08 W=9e-08 AD=1.26e-14 AS=9.45e-15 PD=4.6e-07 PS=3.9e-07 $X=320 $Y=5255 $D=4
M1 BLbar clk BL vdd PMOS_VTG L=5e-08 W=9e-08 AD=1.26e-14 AS=1.26e-14 PD=4.6e-07 PS=4.6e-07 $X=700 $Y=5255 $D=4
M2 vdd clk BLbar vdd PMOS_VTG L=5e-08 W=9e-08 AD=9.45e-15 AS=1.26e-14 PD=3.9e-07 PS=4.6e-07 $X=1080 $Y=5255 $D=4
.ENDS
***************************************
.SUBCKT pmos_vtg_CDNS_653756730766 1 2 3 4
** N=4 EP=4 IP=2 FDC=1
M0 2 3 1 4 PMOS_VTG L=5e-08 W=1.35e-07 AD=1.4175e-14 AS=1.4175e-14 PD=4.8e-07 PS=4.8e-07 $X=0 $Y=0 $D=4
.ENDS
***************************************
.SUBCKT nmos_vtg_CDNS_653756730768 1 2 3 4
** N=4 EP=4 IP=2 FDC=1
M0 2 3 1 4 NMOS_VTG L=5e-08 W=9e-08 AD=9.45e-15 AS=9.45e-15 PD=3.9e-07 PS=3.9e-07 $X=0 $Y=0 $D=5
.ENDS
***************************************
.SUBCKT dcont_CDNS_653756730763
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT pmos_vtg_CDNS_653756730762 1 2 3 4
** N=4 EP=4 IP=2 FDC=1
M0 2 3 1 4 PMOS_VTG L=5e-08 W=2.7e-07 AD=2.835e-14 AS=2.835e-14 PD=7.5e-07 PS=7.5e-07 $X=0 $Y=0 $D=4
.ENDS
***************************************
.SUBCKT nmos_vtg_CDNS_653756730765 1 2 3 4
** N=4 EP=4 IP=2 FDC=1
M0 2 3 1 4 NMOS_VTG L=5e-08 W=1.8e-07 AD=1.89e-14 AS=1.89e-14 PD=5.7e-07 PS=5.7e-07 $X=0 $Y=0 $D=5
.ENDS
***************************************
.SUBCKT Write_Circuitry wr_en BL data_in BLbar gnd vdd
** N=10 EP=6 IP=46 FDC=12
M0 gnd 8 10 gnd NMOS_VTG L=5e-08 W=1.8e-07 AD=2.52e-14 AS=1.89e-14 PD=6.4e-07 PS=5.7e-07 $X=1800 $Y=8510 $D=5
M1 8 data_in gnd gnd NMOS_VTG L=5e-08 W=1.8e-07 AD=1.89e-14 AS=2.52e-14 PD=5.7e-07 PS=6.4e-07 $X=2180 $Y=8510 $D=5
M2 vdd 8 10 vdd PMOS_VTG L=5e-08 W=2.7e-07 AD=3.78e-14 AS=2.835e-14 PD=8.2e-07 PS=7.5e-07 $X=1800 $Y=10185 $D=4
M3 8 data_in vdd vdd PMOS_VTG L=5e-08 W=2.7e-07 AD=2.835e-14 AS=3.78e-14 PD=7.5e-07 PS=8.2e-07 $X=2180 $Y=10185 $D=4
X15 vdd 7 wr_en vdd pmos_vtg_CDNS_653756730766 $T=320 10455 0 0 $X=0 $Y=10345
X16 9 vdd wr_en vdd pmos_vtg_CDNS_653756730766 $T=3660 10455 0 0 $X=3340 $Y=10345
X17 gnd 7 wr_en gnd nmos_vtg_CDNS_653756730768 $T=320 8510 0 0 $X=0 $Y=8400
X18 9 gnd wr_en gnd nmos_vtg_CDNS_653756730768 $T=3660 8510 0 0 $X=3340 $Y=8400
X22 BL 10 7 vdd pmos_vtg_CDNS_653756730762 $T=1060 10185 0 0 $X=740 $Y=10075
X23 BLbar 8 9 vdd pmos_vtg_CDNS_653756730762 $T=2920 10185 0 0 $X=2600 $Y=10075
X24 BL 10 wr_en gnd nmos_vtg_CDNS_653756730765 $T=1060 8510 0 0 $X=740 $Y=8400
X25 BLbar 8 wr_en gnd nmos_vtg_CDNS_653756730765 $T=2920 8510 0 0 $X=2600 $Y=8400
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
.SUBCKT 8x8SENSE_PRECH_WRITECIRC BL<0> BLbar<0> BL<1> BLbar<1> BL<2> BLbar<2> BL<3> BLbar<3> BL<4> BLbar<4> BL<5> BLbar<5> BL<6> BLbar<6> BL<7> BLbar<7> vdd gnd data_out<0> clk
+ data_in<0> data_out<1> data_in<1> data_out<2> data_in<2> data_out<3> data_in<3> data_out<4> data_in<4> data_out<5> data_in<5> data_out<6> data_in<6> data_out<7> data_in<7> read_en wr_en
** N=37 EP=37 IP=76 FDC=176
X0 data_out<0> read_en BL<0> vdd BLbar<0> gnd SENSE_AMP $T=0 64030 1 0 $X=0 $Y=56270
X1 data_out<1> read_en BL<1> vdd BLbar<1> gnd SENSE_AMP $T=4080 64030 1 0 $X=4080 $Y=56270
X2 data_out<2> read_en BL<2> vdd BLbar<2> gnd SENSE_AMP $T=8160 64030 1 0 $X=8160 $Y=56270
X3 data_out<3> read_en BL<3> vdd BLbar<3> gnd SENSE_AMP $T=12240 64030 1 0 $X=12240 $Y=56270
X4 data_out<4> read_en BL<4> vdd BLbar<4> gnd SENSE_AMP $T=16320 64030 1 0 $X=16320 $Y=56270
X5 data_out<5> read_en BL<5> vdd BLbar<5> gnd SENSE_AMP $T=20400 64030 1 0 $X=20400 $Y=56270
X6 data_out<6> read_en BL<6> vdd BLbar<6> gnd SENSE_AMP $T=24480 64030 1 0 $X=24480 $Y=56270
X7 data_out<7> read_en BL<7> vdd BLbar<7> gnd SENSE_AMP $T=28560 64030 1 0 $X=28560 $Y=56270
X8 BL<0> BLbar<0> BL<1> BLbar<1> BL<2> BLbar<2> BL<3> BLbar<3> BL<4> BLbar<4> BL<5> BLbar<5> BL<6> BLbar<6> BL<7> BLbar<7> gnd vdd clk data_in<0>
+ data_in<1> data_in<2> data_in<3> data_in<4> data_in<5> data_in<6> data_in<7> wr_en
+ 8x8PRECH_WRITECIRC $T=0 19095 0 0 $X=0 $Y=58320
.ENDS
***************************************
