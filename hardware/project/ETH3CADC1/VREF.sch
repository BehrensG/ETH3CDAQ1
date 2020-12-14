EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 13
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Connection ~ 7000 3600
Wire Wire Line
	7000 4100 7000 4000
Wire Wire Line
	7000 3600 6850 3600
Wire Wire Line
	7000 3700 7000 3600
$Comp
L Device:C C?
U 1 1 600E5AA9
P 7000 3850
AR Path="/5FD74AB8/600E5AA9" Ref="C?"  Part="1" 
AR Path="/600E050E/600E5AA9" Ref="C301"  Part="1" 
F 0 "C301" H 7115 3896 50  0000 L CNN
F 1 "100n" H 7115 3805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric_Pad0.74x0.62mm_HandSolder" H 7038 3700 50  0001 C CNN
F 3 "~" H 7000 3850 50  0001 C CNN
	1    7000 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 3600 6350 3650
Wire Wire Line
	6550 3600 6350 3600
$Comp
L Device:R R?
U 1 1 600E5AB1
P 6700 3600
AR Path="/5FD74AB8/600E5AB1" Ref="R?"  Part="1" 
AR Path="/600E050E/600E5AB1" Ref="R309"  Part="1" 
F 0 "R309" V 6493 3600 50  0000 C CNN
F 1 "62/.1%" V 6584 3600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 6630 3600 50  0001 C CNN
F 3 "~" H 6700 3600 50  0001 C CNN
	1    6700 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	6350 4050 6350 4100
$Comp
L ETH3CDAQ1:LM399H U?
U 1 1 600E5AB8
P 6250 3850
AR Path="/600E5AB8" Ref="U?"  Part="1" 
AR Path="/5FCCC067/600E5AB8" Ref="U?"  Part="1" 
AR Path="/5FD74AB8/600E5AB8" Ref="U?"  Part="1" 
AR Path="/600E050E/600E5AB8" Ref="U302"  Part="1" 
F 0 "U302" H 6478 3896 50  0000 L CNN
F 1 "LM399H" H 6478 3805 50  0000 L CNN
F 2 "ETH3CDAQ1:LMx99" H 5350 4300 50  0001 C CNN
F 3 "" H 5350 4300 50  0001 C CNN
	1    6250 3850
	1    0    0    1   
$EndComp
Wire Wire Line
	7000 3600 7450 3600
$Comp
L ETH3CDAQ1:+18VF #PWR?
U 1 1 600E5AC8
P 6150 4050
AR Path="/600E5AC8" Ref="#PWR?"  Part="1" 
AR Path="/5FCCC067/600E5AC8" Ref="#PWR?"  Part="1" 
AR Path="/5FD74AB8/600E5AC8" Ref="#PWR?"  Part="1" 
AR Path="/600E050E/600E5AC8" Ref="#PWR0307"  Part="1" 
F 0 "#PWR0307" H 6150 3900 50  0001 C CNN
F 1 "+18VF" H 6165 4223 50  0000 C CNN
F 2 "" H 6150 4050 50  0001 C CNN
F 3 "" H 6150 4050 50  0001 C CNN
	1    6150 4050
	-1   0    0    1   
$EndComp
$Comp
L ETH3CDAQ1:-18VF #PWR?
U 1 1 600E5ACE
P 6150 3650
AR Path="/600E5ACE" Ref="#PWR?"  Part="1" 
AR Path="/5FCCC067/600E5ACE" Ref="#PWR?"  Part="1" 
AR Path="/5FD74AB8/600E5ACE" Ref="#PWR?"  Part="1" 
AR Path="/600E050E/600E5ACE" Ref="#PWR0306"  Part="1" 
F 0 "#PWR0306" H 6150 3500 50  0001 C CNN
F 1 "-18VF" H 6165 3823 50  0000 C CNN
F 2 "" H 6150 3650 50  0001 C CNN
F 3 "" H 6150 3650 50  0001 C CNN
	1    6150 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 4100 6650 4100
$Comp
L ETH3CDAQ1:AGNDF #PWR?
U 1 1 600E5AD5
P 6650 4150
AR Path="/600E5AD5" Ref="#PWR?"  Part="1" 
AR Path="/5FCCC067/600E5AD5" Ref="#PWR?"  Part="1" 
AR Path="/5FD74AB8/600E5AD5" Ref="#PWR?"  Part="1" 
AR Path="/600E050E/600E5AD5" Ref="#PWR0308"  Part="1" 
F 0 "#PWR0308" H 6650 3900 50  0001 C CNN
F 1 "AGNDF" H 6655 3977 50  0000 C CNN
F 2 "" H 6650 4150 50  0001 C CNN
F 3 "" H 6650 4150 50  0001 C CNN
	1    6650 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 4150 6650 4100
Connection ~ 6650 4100
Wire Wire Line
	6650 4100 7000 4100
Wire Wire Line
	7000 3600 7000 3300
$Comp
L Device:R R?
U 1 1 600E5ADF
P 5750 3300
AR Path="/5FD74AB8/600E5ADF" Ref="R?"  Part="1" 
AR Path="/600E050E/600E5ADF" Ref="R308"  Part="1" 
F 0 "R308" V 5543 3300 50  0000 C CNN
F 1 "12k" V 5634 3300 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric_Pad0.72x0.64mm_HandSolder" V 5680 3300 50  0001 C CNN
F 3 "~" H 5750 3300 50  0001 C CNN
	1    5750 3300
	0    1    1    0   
$EndComp
$Comp
L Device:D D?
U 1 1 600E5AE5
P 5450 3300
AR Path="/5FD74AB8/600E5AE5" Ref="D?"  Part="1" 
AR Path="/600E050E/600E5AE5" Ref="D302"  Part="1" 
F 0 "D302" H 5450 3517 50  0000 C CNN
F 1 "BAV21W" H 5450 3426 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 5450 3300 50  0001 C CNN
F 3 "~" H 5450 3300 50  0001 C CNN
	1    5450 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 600E5AEB
P 5150 3700
AR Path="/5FD74AB8/600E5AEB" Ref="R?"  Part="1" 
AR Path="/600E050E/600E5AEB" Ref="R306"  Part="1" 
F 0 "R306" H 5220 3746 50  0000 L CNN
F 1 "120k" H 5220 3655 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric_Pad0.72x0.64mm_HandSolder" V 5080 3700 50  0001 C CNN
F 3 "~" H 5150 3700 50  0001 C CNN
	1    5150 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 3550 5150 3300
Wire Wire Line
	5150 3300 5300 3300
$Comp
L ETH3CDAQ1:AGNDF #PWR?
U 1 1 600E5AF3
P 5150 4000
AR Path="/600E5AF3" Ref="#PWR?"  Part="1" 
AR Path="/5FCCC067/600E5AF3" Ref="#PWR?"  Part="1" 
AR Path="/5FD74AB8/600E5AF3" Ref="#PWR?"  Part="1" 
AR Path="/600E050E/600E5AF3" Ref="#PWR0305"  Part="1" 
F 0 "#PWR0305" H 5150 3750 50  0001 C CNN
F 1 "AGNDF" H 5155 3827 50  0000 C CNN
F 2 "" H 5150 4000 50  0001 C CNN
F 3 "" H 5150 4000 50  0001 C CNN
	1    5150 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 2850 7450 2850
Connection ~ 6350 3600
Wire Wire Line
	5900 3300 7000 3300
Wire Wire Line
	5150 4000 5150 3850
Connection ~ 5150 3300
$Comp
L Device:R R?
U 1 1 600E5B23
P 3800 1800
AR Path="/5FD74AB8/600E5B23" Ref="R?"  Part="1" 
AR Path="/600E050E/600E5B23" Ref="R303"  Part="1" 
F 0 "R303" H 3870 1846 50  0000 L CNN
F 1 "4k7/.1%" H 3870 1755 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 3730 1800 50  0001 C CNN
F 3 "~" H 3800 1800 50  0001 C CNN
	1    3800 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 600E5B29
P 3450 2500
AR Path="/5FD74AB8/600E5B29" Ref="R?"  Part="1" 
AR Path="/600E050E/600E5B29" Ref="R301"  Part="1" 
F 0 "R301" V 3243 2500 50  0000 C CNN
F 1 "4k7/.1%" V 3334 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 3380 2500 50  0001 C CNN
F 3 "~" H 3450 2500 50  0001 C CNN
	1    3450 2500
	0    1    1    0   
$EndComp
$Comp
L Device:D_Zener D?
U 1 1 600E5B2F
P 3800 2300
AR Path="/5FD74AB8/600E5B2F" Ref="D?"  Part="1" 
AR Path="/600E050E/600E5B2F" Ref="D301"  Part="1" 
F 0 "D301" V 3754 2379 50  0000 L CNN
F 1 "BZT585B15TQ-13" V 3845 2379 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-523" H 3800 2300 50  0001 C CNN
F 3 "~" H 3800 2300 50  0001 C CNN
	1    3800 2300
	0    1    1    0   
$EndComp
$Comp
L ETH3CDAQ1:-14VF #PWR?
U 1 1 600E5B35
P 3200 2850
AR Path="/600E5B35" Ref="#PWR?"  Part="1" 
AR Path="/5FCCC067/600E5B35" Ref="#PWR?"  Part="1" 
AR Path="/5FD74AB8/600E5B35" Ref="#PWR?"  Part="1" 
AR Path="/600E050E/600E5B35" Ref="#PWR0301"  Part="1" 
F 0 "#PWR0301" H 3200 2700 50  0001 C CNN
F 1 "-14VF" V 3200 3100 50  0000 C CNN
F 2 "" H 3200 2850 50  0001 C CNN
F 3 "" H 3200 2850 50  0001 C CNN
	1    3200 2850
	0    -1   -1   0   
$EndComp
$Comp
L ETH3CDAQ1:+18VF #PWR?
U 1 1 600E5B3B
P 3800 1650
AR Path="/600E5B3B" Ref="#PWR?"  Part="1" 
AR Path="/5FCCC067/600E5B3B" Ref="#PWR?"  Part="1" 
AR Path="/5FD74AB8/600E5B3B" Ref="#PWR?"  Part="1" 
AR Path="/600E050E/600E5B3B" Ref="#PWR0302"  Part="1" 
F 0 "#PWR0302" H 3800 1500 50  0001 C CNN
F 1 "+18VF" H 3815 1823 50  0000 C CNN
F 2 "" H 3800 1650 50  0001 C CNN
F 3 "" H 3800 1650 50  0001 C CNN
	1    3800 1650
	1    0    0    -1  
$EndComp
$Comp
L ETH3CDAQ1:MMBTA55 Q?
U 1 1 600E5B41
P 3800 2750
AR Path="/600E5B41" Ref="Q?"  Part="1" 
AR Path="/5FCCC067/600E5B41" Ref="Q?"  Part="1" 
AR Path="/5FD74AB8/600E5B41" Ref="Q?"  Part="1" 
AR Path="/600E050E/600E5B41" Ref="Q301"  Part="1" 
F 0 "Q301" V 4035 2750 50  0000 C CNN
F 1 "MMBTA55" V 4126 2750 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4000 2675 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/MMBTA92LT1-D.PDF" H 3800 2750 50  0001 L CNN
	1    3800 2750
	0    -1   1    0   
$EndComp
Wire Wire Line
	3800 2500 3600 2500
Wire Wire Line
	3250 2500 3250 2850
Wire Wire Line
	3250 2850 3200 2850
Wire Wire Line
	3300 2500 3250 2500
Wire Wire Line
	3250 2850 3600 2850
Connection ~ 3250 2850
Wire Wire Line
	3800 2550 3800 2500
Connection ~ 3800 2500
Wire Wire Line
	3800 2500 3800 2450
$Comp
L ETH3CDAQ1:LT1021-7 U?
U 1 1 600E5B50
P 4850 2150
AR Path="/600E5B50" Ref="U?"  Part="1" 
AR Path="/5FCCC067/600E5B50" Ref="U?"  Part="1" 
AR Path="/5FD74AB8/600E5B50" Ref="U?"  Part="1" 
AR Path="/600E050E/600E5B50" Ref="U301"  Part="1" 
F 0 "U301" H 4850 2517 50  0000 C CNN
F 1 "LT1021-7" H 4850 2426 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5350 1900 50  0001 C CIN
F 3 "" H 4850 2150 50  0001 C CIN
	1    4850 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 2850 4850 2450
$Comp
L ETH3CDAQ1:AGNDF #PWR?
U 1 1 600E5B57
P 5150 2050
AR Path="/600E5B57" Ref="#PWR?"  Part="1" 
AR Path="/5FCCC067/600E5B57" Ref="#PWR?"  Part="1" 
AR Path="/5FD74AB8/600E5B57" Ref="#PWR?"  Part="1" 
AR Path="/600E050E/600E5B57" Ref="#PWR0304"  Part="1" 
F 0 "#PWR0304" H 5150 1800 50  0001 C CNN
F 1 "AGNDF" V 5155 1922 50  0000 R CNN
F 2 "" H 5150 2050 50  0001 C CNN
F 3 "" H 5150 2050 50  0001 C CNN
	1    5150 2050
	0    -1   -1   0   
$EndComp
Connection ~ 4850 2850
Wire Wire Line
	3800 1950 3800 2050
Wire Wire Line
	4000 2850 4850 2850
Wire Wire Line
	3800 2050 4550 2050
Connection ~ 3800 2050
Wire Wire Line
	3800 2050 3800 2150
$Comp
L Device:R R?
U 1 1 600E5B65
P 5250 2850
AR Path="/5FD74AB8/600E5B65" Ref="R?"  Part="1" 
AR Path="/600E050E/600E5B65" Ref="R307"  Part="1" 
F 0 "R307" V 5043 2850 50  0000 C CNN
F 1 "0" V 5134 2850 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric_Pad0.72x0.64mm_HandSolder" V 5180 2850 50  0001 C CNN
F 3 "~" H 5250 2850 50  0001 C CNN
	1    5250 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	4750 3300 5150 3300
Wire Wire Line
	4850 2850 5100 2850
Wire Wire Line
	5400 2850 6350 2850
Connection ~ 6350 2850
Wire Wire Line
	6350 2850 6350 3600
Text HLabel 7450 2850 2    50   Output ~ 0
VREF_N7V
Text HLabel 7450 3600 2    50   Output ~ 0
VREF_N7V_LPF
$Comp
L Device:R R?
U 1 1 600E5B6F
P 4750 3700
AR Path="/5FD74AB8/600E5B6F" Ref="R?"  Part="1" 
AR Path="/600E050E/600E5B6F" Ref="R305"  Part="1" 
F 0 "R305" H 4680 3654 50  0000 R CNN
F 1 "0" H 4680 3745 50  0000 R CNN
F 2 "Resistor_SMD:R_0402_1005Metric_Pad0.72x0.64mm_HandSolder" V 4680 3700 50  0001 C CNN
F 3 "~" H 4750 3700 50  0001 C CNN
	1    4750 3700
	-1   0    0    1   
$EndComp
Wire Wire Line
	4750 3850 4750 3950
Wire Wire Line
	4750 3550 4750 3300
$Comp
L ETH3CDAQ1:-14VF #PWR?
U 1 1 600E5AFD
P 4250 4000
AR Path="/600E5AFD" Ref="#PWR?"  Part="1" 
AR Path="/5FCCC067/600E5AFD" Ref="#PWR?"  Part="1" 
AR Path="/5FD74AB8/600E5AFD" Ref="#PWR?"  Part="1" 
AR Path="/600E050E/600E5AFD" Ref="#PWR0303"  Part="1" 
F 0 "#PWR0303" H 4250 3850 50  0001 C CNN
F 1 "-14VF" H 4265 4173 50  0000 C CNN
F 2 "" H 4250 4000 50  0001 C CNN
F 3 "" H 4250 4000 50  0001 C CNN
	1    4250 4000
	-1   0    0    1   
$EndComp
Wire Wire Line
	4250 3350 4250 3300
Wire Wire Line
	4250 3750 4250 3950
$Comp
L Device:R R?
U 1 1 600E5B04
P 3800 3750
AR Path="/5FD74AB8/600E5B04" Ref="R?"  Part="1" 
AR Path="/600E050E/600E5B04" Ref="R304"  Part="1" 
F 0 "R304" H 3870 3796 50  0000 L CNN
F 1 "620k" H 3870 3705 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric_Pad0.72x0.64mm_HandSolder" V 3730 3750 50  0001 C CNN
F 3 "~" H 3800 3750 50  0001 C CNN
	1    3800 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 3600 3800 3550
Wire Wire Line
	3800 3550 3950 3550
Connection ~ 3800 3550
Wire Wire Line
	3800 3550 3700 3550
$Comp
L Device:R R?
U 1 1 600E5B10
P 3550 3550
AR Path="/5FD74AB8/600E5B10" Ref="R?"  Part="1" 
AR Path="/600E050E/600E5B10" Ref="R302"  Part="1" 
F 0 "R302" V 3343 3550 50  0000 C CNN
F 1 "120k" V 3434 3550 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric_Pad0.72x0.64mm_HandSolder" V 3480 3550 50  0001 C CNN
F 3 "~" H 3550 3550 50  0001 C CNN
	1    3550 3550
	0    1    1    0   
$EndComp
Text HLabel 3350 3550 0    50   Input ~ 0
MCU_AD_RFS
Wire Wire Line
	3350 3550 3400 3550
$Comp
L Transistor_BJT:BC847 Q?
U 1 1 600E5B1C
P 4150 3550
AR Path="/5FD74AB8/600E5B1C" Ref="Q?"  Part="1" 
AR Path="/600E050E/600E5B1C" Ref="Q302"  Part="1" 
F 0 "Q302" H 4341 3596 50  0000 L CNN
F 1 "BC847" H 4341 3505 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4350 3475 50  0001 L CIN
F 3 "http://www.infineon.com/dgdl/Infineon-BC847SERIES_BC848SERIES_BC849SERIES_BC850SERIES-DS-v01_01-en.pdf?fileId=db3a304314dca389011541d4630a1657" H 4150 3550 50  0001 L CNN
	1    4150 3550
	1    0    0    -1  
$EndComp
Connection ~ 4750 3300
Wire Wire Line
	4250 3300 4750 3300
Wire Wire Line
	3800 3900 3800 3950
Wire Wire Line
	3800 3950 4250 3950
Connection ~ 4250 3950
Wire Wire Line
	4250 3950 4250 4000
Wire Wire Line
	4750 3950 4250 3950
$EndSCHEMATC