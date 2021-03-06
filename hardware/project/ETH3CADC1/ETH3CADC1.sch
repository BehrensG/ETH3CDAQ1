EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 17
Title "Main"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 2550 1250 1450 1100
U 5FD74AB8
F0 "ADC 1" 50
F1 "ADC1.sch" 50
F2 "AD_COMP1" O R 4000 1350 50 
F3 "ADIN1" I L 2550 1350 50 
F4 "FGPA1_AD_IIN" I R 4000 1450 50 
F5 "FGPA1_AD_IRP" I R 4000 1550 50 
F6 "FGPA1_AD_ID" I R 4000 1650 50 
F7 "FGPA1_AD_IRN" I R 4000 1750 50 
F8 "VREF_N7V_LPF" I L 2550 1500 50 
F9 "FPGA1_SW_VRH" I R 4000 1850 50 
F10 "FPGA1_MUX_ADIN" I R 4000 1950 50 
F11 "FPGA1_MUX_GND" I R 4000 2050 50 
F12 "FPGA1_MUX_P10V" I R 4000 2150 50 
F13 "FPGA1_MUX_N7V" I R 4000 2250 50 
$EndSheet
$Sheet
S 8400 4900 1200 900 
U 600E050E
F0 "VREF" 50
F1 "VREF.sch" 50
F2 "VREF_N7V_LPF" O L 8400 5700 50 
F3 "MCU_AD_RFS" I L 8400 5000 50 
$EndSheet
$Sheet
S 6400 1250 1800 4300
U 603BE5B9
F0 "MCU" 50
F1 "MCU.sch" 50
F2 "RMII_TXD1" B R 8200 1350 50 
F3 "RMII_TXD0" B R 8200 1450 50 
F4 "RMII_TXEN" B R 8200 1550 50 
F5 "RMII_RXD0" B R 8200 1650 50 
F6 "RMII_RXD1" B R 8200 1750 50 
F7 "RMII_CRS_DV" B R 8200 1850 50 
F8 "RMII_MDIO" B R 8200 1950 50 
F9 "RMII_MDC" B R 8200 2050 50 
F10 "REF_CLK" B R 8200 2250 50 
F11 "NRST" B R 8200 2150 50 
F12 "TRIG_EN" O R 8200 2750 50 
F13 "TRIG_OUT" O R 8200 2850 50 
F14 "TRIG_IN" I R 8200 2950 50 
F15 "~CS" B R 8200 3650 50 
F16 "CKE" B R 8200 3750 50 
F17 "CLK" B R 8200 3850 50 
F18 "LDQM" B R 8200 3950 50 
F19 "UDQM" B R 8200 4050 50 
F20 "~WE" B R 8200 4150 50 
F21 "~CAS" B R 8200 4250 50 
F22 "~RAS" B R 8200 4350 50 
F23 "D[0..15]" B R 8200 4550 50 
F24 "A[0..12]" B R 8200 4450 50 
F25 "BA0" B R 8200 3450 50 
F26 "BA1" B R 8200 3550 50 
F27 "FPGAx_SCLK" O L 6400 1650 50 
F28 "I2C_SCL" B L 6400 5350 50 
F29 "I2C_SDA" B L 6400 5450 50 
F30 "CANH" B L 6400 5150 50 
F31 "CANL" B L 6400 5250 50 
F32 "MCU_AD_RFS" O R 8200 5000 50 
F33 "FPGA1_UART6_TX" B L 6400 1750 50 
F34 "FPGA1_UART6_RX" B L 6400 1850 50 
F35 "FPGA2_UART2_TX" B L 6400 3050 50 
F36 "FPGA2_UART2_RX" B L 6400 3150 50 
F37 "FPGAx_nSS" O L 6400 1550 50 
F38 "FPGAx_MOSI" O L 6400 1450 50 
F39 "FPGAx_MISO" I L 6400 1350 50 
F40 "FPGA3_UART7_TX" B L 6400 4350 50 
F41 "FPGA3_UART7_RX" B L 6400 4450 50 
F42 "FPGA1_CONV_STR" B L 6400 1950 50 
F43 "FPGA2_CONV_STR" B L 6400 3250 50 
F44 "FPGA3_CONV_STR" B L 6400 4550 50 
$EndSheet
$Sheet
S 8400 1250 1200 1100
U 603EFDDC
F0 "Ethernet" 50
F1 "Ethernet.sch" 50
F2 "TX+" B R 9600 1350 50 
F3 "TX-" B R 9600 1450 50 
F4 "RX+" B R 9600 1650 50 
F5 "RX-" B R 9600 1750 50 
F6 "RMII_TXD1" B L 8400 1350 50 
F7 "RMII_TXD0" B L 8400 1450 50 
F8 "RMII_TXEN" B L 8400 1550 50 
F9 "RMII_RXD0" B L 8400 1650 50 
F10 "RMII_RXD1" B L 8400 1750 50 
F11 "RMII_CRS_DV" B L 8400 1850 50 
F12 "RMII_MDIO" B L 8400 1950 50 
F13 "RMII_MDC" B L 8400 2050 50 
F14 "NRST" B L 8400 2150 50 
F15 "REF_CLK" B L 8400 2250 50 
$EndSheet
$Sheet
S 8400 2650 1200 400 
U 603FAFCE
F0 "Trigger" 50
F1 "Trigger.sch" 50
F2 "EXT_TRIG" B R 9600 2750 50 
F3 "TRIG_EN" I L 8400 2750 50 
F4 "TRIG_OUT" I L 8400 2850 50 
F5 "TRIG_IN" O L 8400 2950 50 
$EndSheet
$Comp
L Mechanical:MountingHole H101
U 1 1 60C1E780
P 650 7200
F 0 "H101" H 750 7246 50  0000 L CNN
F 1 "MountingHole" H 750 7155 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965_Pad" H 650 7200 50  0001 C CNN
F 3 "~" H 650 7200 50  0001 C CNN
	1    650  7200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H102
U 1 1 60C1EA24
P 650 7450
F 0 "H102" H 750 7496 50  0000 L CNN
F 1 "MountingHole" H 750 7405 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965_Pad" H 650 7450 50  0001 C CNN
F 3 "~" H 650 7450 50  0001 C CNN
	1    650  7450
	1    0    0    -1  
$EndComp
$Sheet
S 1200 1250 1100 1100
U 60C206FB
F0 "CH1 Connector" 50
F1 "CH1_CONN.sch" 50
F2 "ADIN1" O R 2300 1350 50 
F3 "CANH" B L 1200 1350 50 
F4 "CANL" B L 1200 1450 50 
F5 "I2C_SCL" B L 1200 1650 50 
F6 "I2C_SDA" B L 1200 1750 50 
$EndSheet
$Sheet
S 9800 1250 1200 1800
U 60F396AA
F0 "Connector" 50
F1 "Connector.sch" 50
F2 "EXT_TRIG" B L 9800 2750 50 
F3 "TX+" B L 9800 1350 50 
F4 "TX-" B L 9800 1450 50 
F5 "RX+" B L 9800 1650 50 
F6 "RX-" B L 9800 1750 50 
$EndSheet
Wire Wire Line
	2300 1350 2550 1350
$Sheet
S 8400 3350 1200 1300
U 60325873
F0 "SDRAM" 50
F1 "SDRAM.sch" 50
F2 "BA0" B L 8400 3450 50 
F3 "BA1" B L 8400 3550 50 
F4 "~CS" B L 8400 3650 50 
F5 "CKE" B L 8400 3750 50 
F6 "CLK" B L 8400 3850 50 
F7 "LDQM" B L 8400 3950 50 
F8 "UDQM" B L 8400 4050 50 
F9 "~WE" B L 8400 4150 50 
F10 "~CAS" B L 8400 4250 50 
F11 "~RAS" B L 8400 4350 50 
F12 "A[0..12]" B L 8400 4450 50 
F13 "D[0..15]" B L 8400 4550 50 
$EndSheet
Wire Wire Line
	8400 1350 8200 1350
Wire Wire Line
	8200 1450 8400 1450
Wire Wire Line
	8400 1550 8200 1550
Wire Wire Line
	8200 1650 8400 1650
Wire Wire Line
	8400 1750 8200 1750
Wire Wire Line
	8200 1850 8400 1850
Wire Wire Line
	8400 1950 8200 1950
Wire Wire Line
	8200 2050 8400 2050
Wire Wire Line
	8400 2150 8200 2150
Wire Wire Line
	8200 2250 8400 2250
Wire Wire Line
	8400 2750 8200 2750
Wire Wire Line
	8200 2850 8400 2850
Wire Wire Line
	8200 2950 8400 2950
Wire Wire Line
	8400 3450 8200 3450
Wire Wire Line
	8200 3550 8400 3550
Wire Wire Line
	8400 3650 8200 3650
Wire Wire Line
	8200 3750 8400 3750
Wire Wire Line
	8400 3850 8200 3850
Wire Wire Line
	8200 3950 8400 3950
Wire Wire Line
	8400 4050 8200 4050
Wire Wire Line
	8200 4150 8400 4150
Wire Wire Line
	8400 4250 8200 4250
Wire Wire Line
	8200 4350 8400 4350
Wire Bus Line
	8400 4450 8200 4450
Wire Bus Line
	8200 4550 8400 4550
Wire Wire Line
	9600 1750 9800 1750
Wire Wire Line
	9800 1650 9600 1650
Wire Wire Line
	9600 1450 9800 1450
Wire Wire Line
	9800 1350 9600 1350
Wire Wire Line
	9600 2750 9800 2750
$Sheet
S 9800 3350 1200 2450
U 5FE6B116
F0 "Power" 50
F1 "Power.sch" 50
$EndSheet
$Sheet
S 1200 3850 1100 1100
U 60C27246
F0 "CH3 Connector" 50
F1 "CH3_CONN.sch" 50
F2 "ADIN3" O R 2300 3950 50 
F3 "CANH" B L 1200 3950 50 
F4 "CANL" B L 1200 4050 50 
F5 "I2C_SCL" B L 1200 4250 50 
F6 "I2C_SDA" B L 1200 4350 50 
$EndSheet
$Sheet
S 4150 1250 1500 1100
U 606766CF
F0 "FPGA 1" 50
F1 "FPGA1.sch" 50
F2 "FPGA1_AD_IIN" O L 4150 1450 50 
F3 "FGPA1_AD_IRN" O L 4150 1750 50 
F4 "FGPA1_AD_ID" O L 4150 1650 50 
F5 "FGPA1_AD_IRP" O L 4150 1550 50 
F6 "FGPA1_AD_VRH" O L 4150 1850 50 
F7 "ADC_COMP1" I L 4150 1350 50 
F8 "FGPA1_MISO" B R 5650 1350 50 
F9 "FGPA1_MOSI" B R 5650 1450 50 
F10 "FGPA1_nSS" B R 5650 1550 50 
F11 "FGPA1_SCLK" B R 5650 1650 50 
F12 "FPGA1_MUX_ADIN" O L 4150 1950 50 
F13 "FPGA1_MUX_GND" O L 4150 2050 50 
F14 "FPGA1_MUX_P10V" O L 4150 2150 50 
F15 "FPGA1_MUX_N7V" O L 4150 2250 50 
F16 "FPGA1_UART6_TX" B R 5650 1750 50 
F17 "FPGA1_UART6_RX" B R 5650 1850 50 
F18 "FPGA1_CONV_STR" B R 5650 1950 50 
$EndSheet
Wire Wire Line
	8200 5000 8400 5000
Wire Wire Line
	1200 1350 950  1350
Wire Wire Line
	950  1350 950  2650
Wire Wire Line
	950  2650 1200 2650
Wire Wire Line
	950  2650 950  3950
Wire Wire Line
	950  3950 1200 3950
Connection ~ 950  2650
Wire Wire Line
	1200 4050 850  4050
Wire Wire Line
	850  4050 850  2750
Wire Wire Line
	850  1450 1200 1450
Wire Wire Line
	1200 2750 850  2750
Connection ~ 850  2750
Wire Wire Line
	850  2750 850  1450
Wire Wire Line
	1200 1650 700  1650
Wire Wire Line
	700  1650 700  2900
Wire Wire Line
	700  2900 1200 2900
Wire Wire Line
	700  2900 700  4250
Wire Wire Line
	700  4250 1200 4250
Connection ~ 700  2900
Wire Wire Line
	1200 1750 600  1750
Wire Wire Line
	600  1750 600  3000
Wire Wire Line
	600  4350 1200 4350
Wire Wire Line
	1200 3000 600  3000
Connection ~ 600  3000
Wire Wire Line
	600  3000 600  4350
Wire Wire Line
	600  4350 600  5450
Wire Wire Line
	600  5450 6400 5450
Connection ~ 600  4350
Wire Wire Line
	700  4250 700  5350
Wire Wire Line
	700  5350 6400 5350
Connection ~ 700  4250
Wire Wire Line
	6400 5250 850  5250
Wire Wire Line
	850  5250 850  4050
Connection ~ 850  4050
Wire Wire Line
	6400 5150 950  5150
Wire Wire Line
	950  5150 950  3950
Wire Wire Line
	4000 2250 4150 2250
Wire Wire Line
	4150 2150 4000 2150
Wire Wire Line
	4000 2050 4150 2050
Wire Wire Line
	4150 1950 4000 1950
Wire Wire Line
	4000 1850 4150 1850
Wire Wire Line
	4150 1750 4000 1750
Wire Wire Line
	4000 1650 4150 1650
Wire Wire Line
	4150 1550 4000 1550
Wire Wire Line
	4000 1450 4150 1450
Wire Wire Line
	4150 1350 4000 1350
Wire Wire Line
	8400 5700 2450 5700
Wire Wire Line
	2450 5700 2450 4150
Wire Wire Line
	2450 1500 2550 1500
Wire Wire Line
	5650 1750 6400 1750
Wire Wire Line
	6400 1850 5650 1850
Wire Wire Line
	5650 1650 6250 1650
Wire Wire Line
	6400 1550 6150 1550
$Sheet
S 4150 2550 1500 1100
U 6038C25A
F0 "FPGA 2" 50
F1 "FPGA2.sch" 50
F2 "FPGA2_AD_IIN" O L 4150 2750 50 
F3 "FGPA2_AD_IRN" O L 4150 3050 50 
F4 "FGPA2_AD_ID" O L 4150 2950 50 
F5 "FGPA2_AD_IRP" O L 4150 2850 50 
F6 "FGPA2_AD_VRH" O L 4150 3150 50 
F7 "FGPA2_MISO" B R 5650 2750 50 
F8 "FGPA2_MOSI" B R 5650 2650 50 
F9 "FGPA2_nSS" B R 5650 2850 50 
F10 "FGPA2_SCLK" B R 5650 2950 50 
F11 "FPGA2_MUX_ADIN" O L 4150 3250 50 
F12 "FPGA2_MUX_GND" O L 4150 3350 50 
F13 "FPGA2_MUX_P10V" O L 4150 3450 50 
F14 "FPGA2_MUX_N7V" O L 4150 3550 50 
F15 "ADC_COMP2" I L 4150 2650 50 
F16 "FPGA2_UART2_TX" B R 5650 3050 50 
F17 "FPGA2_UART2_RX" B R 5650 3150 50 
F18 "FPGA2_CONV_STR" B R 5650 3250 50 
$EndSheet
Connection ~ 950  3950
$Sheet
S 2550 2550 1450 1100
U 600FC446
F0 "ADC 2" 50
F1 "ADC2.sch" 50
F2 "AD_COMP2" O R 4000 2650 50 
F3 "ADIN2" I L 2550 2650 50 
F4 "FGPA2_AD_IIN" I R 4000 2750 50 
F5 "FGPA2_AD_IRP" I R 4000 2850 50 
F6 "FGPA2_AD_ID" I R 4000 2950 50 
F7 "FGPA2_AD_IRN" I R 4000 3050 50 
F8 "VREF_N7V_LPF" I L 2550 2850 50 
F9 "FPGA2_SW_VRH" I R 4000 3150 50 
F10 "FPGA2_MUX_ADIN" I R 4000 3250 50 
F11 "FPGA2_MUX_GND" I R 4000 3350 50 
F12 "FPGA2_MUX_P10V" I R 4000 3450 50 
F13 "FPGA2_MUX_N7V" I R 4000 3550 50 
$EndSheet
$Sheet
S 1200 2550 1100 1100
U 60C24B76
F0 "CH2 Connector" 50
F1 "CH2_CONN.sch" 50
F2 "I2C_SCL" B L 1200 2900 50 
F3 "I2C_SDA" B L 1200 3000 50 
F4 "CANH" B L 1200 2650 50 
F5 "CANL" B L 1200 2750 50 
F6 "ADIN2" O R 2300 2650 50 
$EndSheet
Wire Wire Line
	2300 2650 2550 2650
Wire Wire Line
	2550 2850 2450 2850
Connection ~ 2450 2850
Wire Wire Line
	2450 2850 2450 1500
Wire Wire Line
	4000 2650 4150 2650
Wire Wire Line
	4000 2750 4150 2750
Wire Wire Line
	4150 2850 4000 2850
Wire Wire Line
	4000 2950 4150 2950
Wire Wire Line
	4150 3050 4000 3050
Wire Wire Line
	4000 3150 4150 3150
Wire Wire Line
	4000 3250 4150 3250
Wire Wire Line
	4150 3350 4000 3350
Wire Wire Line
	4000 3450 4150 3450
Wire Wire Line
	4150 3550 4000 3550
Wire Wire Line
	5650 3050 6400 3050
Wire Wire Line
	6400 3150 5650 3150
Wire Wire Line
	5650 2850 6150 2850
Wire Wire Line
	6150 2850 6150 1550
Connection ~ 6150 1550
Wire Wire Line
	6150 1550 5650 1550
Wire Wire Line
	5650 2950 6250 2950
Wire Wire Line
	6250 2950 6250 1650
Connection ~ 6250 1650
Wire Wire Line
	6250 1650 6400 1650
Wire Wire Line
	5650 1450 6400 1450
Wire Wire Line
	5650 1350 5750 1350
$Sheet
S 4150 3850 1500 1100
U 601AA22D
F0 "FPGA 3" 50
F1 "FPGA3.sch" 50
F2 "FPGA3_AD_IIN" O L 4150 4050 50 
F3 "FGPA3_AD_IRN" O L 4150 4350 50 
F4 "FGPA3_AD_ID" O L 4150 4250 50 
F5 "FGPA3_AD_IRP" O L 4150 4150 50 
F6 "FGPA3_AD_VRH" O L 4150 4450 50 
F7 "FGPA3_MISO" B R 5650 4050 50 
F8 "FGPA3_MOSI" B R 5650 3950 50 
F9 "FGPA3_nSS" B R 5650 4150 50 
F10 "FGPA3_SCLK" B R 5650 4250 50 
F11 "FPGA3_MUX_ADIN" O L 4150 4550 50 
F12 "FPGA3_MUX_GND" O L 4150 4650 50 
F13 "FPGA3_MUX_P10V" O L 4150 4750 50 
F14 "FPGA3_MUX_N7V" O L 4150 4850 50 
F15 "ADC_COMP3" I L 4150 3950 50 
F16 "FPGA3_UART2_TX" B R 5650 4350 50 
F17 "FPGA3_UART2_RX" B R 5650 4450 50 
F18 "FPGA3_CONV_STR" B R 5650 4550 50 
$EndSheet
Wire Wire Line
	5650 4150 6150 4150
Wire Wire Line
	6150 4150 6150 2850
Connection ~ 6150 2850
Wire Wire Line
	6250 2950 6250 4250
Wire Wire Line
	6250 4250 5650 4250
Connection ~ 6250 2950
Wire Wire Line
	5900 1350 6400 1350
Wire Wire Line
	5750 1350 5750 2650
Wire Wire Line
	5750 2650 5650 2650
Wire Wire Line
	5650 2750 5750 2750
Wire Wire Line
	5750 2750 5750 3950
Wire Wire Line
	5750 3950 5650 3950
Wire Wire Line
	5900 1350 5900 4050
Wire Wire Line
	5650 4050 5900 4050
Wire Wire Line
	5650 4350 6400 4350
Wire Wire Line
	5650 4450 6400 4450
$Sheet
S 2550 3850 1450 1100
U 60441CDA
F0 "ADC 3" 50
F1 "ADC3.sch" 50
F2 "AD_COMP3" O R 4000 3950 50 
F3 "ADIN3" I L 2550 3950 50 
F4 "FGPA3_AD_IIN" I R 4000 4050 50 
F5 "FGPA3_AD_IRP" I R 4000 4150 50 
F6 "FGPA3_AD_ID" I R 4000 4250 50 
F7 "FGPA3_AD_IRN" I R 4000 4350 50 
F8 "VREF_N7V_LPF" I L 2550 4150 50 
F9 "FPGA3_SW_VRH" I R 4000 4450 50 
F10 "FPGA3_MUX_ADIN" I R 4000 4550 50 
F11 "FPGA3_MUX_GND" I R 4000 4650 50 
F12 "FPGA3_MUX_P10V" I R 4000 4750 50 
F13 "FPGA3_MUX_N7V" I R 4000 4850 50 
$EndSheet
Wire Wire Line
	4000 3950 4150 3950
Wire Wire Line
	4150 4050 4000 4050
Wire Wire Line
	4000 4150 4150 4150
Wire Wire Line
	4150 4250 4000 4250
Wire Wire Line
	4000 4350 4150 4350
Wire Wire Line
	4000 4450 4150 4450
Wire Wire Line
	4000 4550 4150 4550
Wire Wire Line
	4150 4650 4000 4650
Wire Wire Line
	4000 4750 4150 4750
Wire Wire Line
	4150 4850 4000 4850
Wire Wire Line
	2550 3950 2300 3950
Wire Wire Line
	2550 4150 2450 4150
Connection ~ 2450 4150
Wire Wire Line
	2450 4150 2450 2850
Wire Wire Line
	6400 4550 5650 4550
Wire Wire Line
	5650 3250 6400 3250
Wire Wire Line
	5650 1950 6400 1950
$EndSCHEMATC
