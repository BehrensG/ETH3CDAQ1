EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 9
Title "SDRAM"
Date "2020-03-07"
Rev "1.00"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Memory_RAM:IS42S16400J-xC U301
U 1 1 5EB98CAA
P 5650 3200
F 0 "U301" H 6400 4600 50  0000 C CNN
F 1 "IS42S16400J-xC" H 6400 4500 50  0000 C CNN
F 2 "ETH3CDAQ1:TSSOP-54" H 5650 3200 50  0001 C CNN
F 3 "http://www.issi.com/WW/pdf/42-45S16400J.pdf" H 5050 4450 50  0001 C CNN
	1    5650 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 4600 5350 4650
Wire Wire Line
	5350 4650 5450 4650
Wire Wire Line
	5950 4650 5950 4600
Wire Wire Line
	5850 4600 5850 4650
Connection ~ 5850 4650
Wire Wire Line
	5850 4650 5950 4650
Wire Wire Line
	5750 4600 5750 4650
Connection ~ 5750 4650
Wire Wire Line
	5750 4650 5850 4650
Wire Wire Line
	5650 4600 5650 4650
Connection ~ 5650 4650
Wire Wire Line
	5650 4650 5750 4650
Wire Wire Line
	5550 4600 5550 4650
Connection ~ 5550 4650
Wire Wire Line
	5550 4650 5650 4650
Wire Wire Line
	5450 4600 5450 4650
Connection ~ 5450 4650
Wire Wire Line
	5450 4650 5550 4650
Wire Wire Line
	5650 4700 5650 4650
Wire Wire Line
	5350 1800 5350 1750
Wire Wire Line
	5350 1750 5450 1750
Wire Wire Line
	5950 1750 5950 1800
Wire Wire Line
	5850 1800 5850 1750
Connection ~ 5850 1750
Wire Wire Line
	5850 1750 5950 1750
Wire Wire Line
	5750 1800 5750 1750
Connection ~ 5750 1750
Wire Wire Line
	5750 1750 5850 1750
Wire Wire Line
	5650 1800 5650 1750
Connection ~ 5650 1750
Wire Wire Line
	5650 1750 5750 1750
Wire Wire Line
	5550 1800 5550 1750
Connection ~ 5550 1750
Wire Wire Line
	5550 1750 5650 1750
Wire Wire Line
	5450 1800 5450 1750
Connection ~ 5450 1750
Wire Wire Line
	5450 1750 5550 1750
Wire Wire Line
	5650 1700 5650 1750
Wire Wire Line
	6450 2100 6700 2100
Text Label 6700 2100 2    50   ~ 0
D0
Wire Wire Line
	6450 2200 6700 2200
Text Label 6700 2200 2    50   ~ 0
D1
Wire Wire Line
	6450 2300 6700 2300
Text Label 6700 2300 2    50   ~ 0
D2
Text Label 6700 2400 2    50   ~ 0
D3
Wire Wire Line
	6450 2500 6700 2500
Wire Wire Line
	6450 2600 6700 2600
Text Label 6700 2600 2    50   ~ 0
D5
Wire Wire Line
	6450 2700 6700 2700
Text Label 6700 2700 2    50   ~ 0
D6
Wire Wire Line
	6450 2800 6700 2800
Text Label 6700 2800 2    50   ~ 0
D7
Wire Wire Line
	6450 2900 6700 2900
Text Label 6700 2900 2    50   ~ 0
D8
Wire Wire Line
	6450 3000 6700 3000
Text Label 6700 3000 2    50   ~ 0
D9
Wire Wire Line
	6450 3100 6700 3100
Text Label 6700 3100 2    50   ~ 0
D10
Wire Wire Line
	6450 3200 6700 3200
Text Label 6700 3200 2    50   ~ 0
D11
Wire Wire Line
	6450 3300 6700 3300
Text Label 6700 3300 2    50   ~ 0
D12
Wire Wire Line
	6450 3400 6700 3400
Text Label 6700 3400 2    50   ~ 0
D13
Wire Wire Line
	6450 3500 6700 3500
Text Label 6700 3500 2    50   ~ 0
D14
Wire Wire Line
	6450 3600 6700 3600
Text Label 6700 3600 2    50   ~ 0
D15
Text Label 6700 2500 2    50   ~ 0
D4
Wire Wire Line
	6450 2400 6700 2400
Wire Wire Line
	4850 2300 4600 2300
Text Label 4600 2300 0    50   ~ 0
A0
Wire Wire Line
	4850 2500 4600 2500
Wire Wire Line
	4850 2600 4600 2600
Wire Wire Line
	4850 2700 4600 2700
Wire Wire Line
	4850 2800 4600 2800
Wire Wire Line
	4850 2900 4600 2900
Wire Wire Line
	4850 3000 4600 3000
Wire Wire Line
	4850 3100 4600 3100
Wire Wire Line
	4850 3200 4600 3200
Wire Wire Line
	4850 3300 4600 3300
Wire Wire Line
	4850 3400 4600 3400
Wire Wire Line
	4850 2400 4600 2400
Text HLabel 4850 2100 0    50   BiDi ~ 0
BA0
Text HLabel 4850 2200 0    50   BiDi ~ 0
BA1
Text Label 4600 2400 0    50   ~ 0
A1
Text Label 4600 2500 0    50   ~ 0
A2
Text Label 4600 2600 0    50   ~ 0
A3
Text Label 4600 2700 0    50   ~ 0
A4
Text Label 4600 2800 0    50   ~ 0
A5
Text Label 4600 2900 0    50   ~ 0
A6
Text Label 4600 3000 0    50   ~ 0
A7
Text Label 4600 3100 0    50   ~ 0
A8
Text Label 4600 3200 0    50   ~ 0
A9
Text Label 4600 3300 0    50   ~ 0
A10
Text Label 4600 3400 0    50   ~ 0
A11
Text HLabel 4850 3600 0    50   BiDi ~ 0
~CS
Text HLabel 4850 3700 0    50   BiDi ~ 0
CKE
Text HLabel 4850 3800 0    50   BiDi ~ 0
CLK
Text HLabel 4850 3900 0    50   BiDi ~ 0
LDQM
Text HLabel 4850 4000 0    50   BiDi ~ 0
UDQM
Text HLabel 4850 4100 0    50   BiDi ~ 0
~WE
Text HLabel 4850 4200 0    50   BiDi ~ 0
~CAS
Text HLabel 4850 4300 0    50   BiDi ~ 0
~RAS
Entry Wire Line
	6700 2100 6800 2200
Entry Wire Line
	6700 2200 6800 2300
Entry Wire Line
	6700 2300 6800 2400
Entry Wire Line
	6700 2400 6800 2500
Entry Wire Line
	6700 2500 6800 2600
Entry Wire Line
	6700 2600 6800 2700
Entry Wire Line
	6700 2700 6800 2800
Entry Wire Line
	6700 2800 6800 2900
Entry Wire Line
	6700 2900 6800 3000
Entry Wire Line
	6700 3000 6800 3100
Entry Wire Line
	6700 3100 6800 3200
Entry Wire Line
	6700 3200 6800 3300
Entry Wire Line
	6700 3300 6800 3400
Entry Wire Line
	6700 3400 6800 3500
Entry Wire Line
	6700 3500 6800 3600
Entry Wire Line
	6700 3600 6800 3700
Entry Wire Line
	4600 2300 4500 2400
Entry Wire Line
	4600 2400 4500 2500
Entry Wire Line
	4600 2500 4500 2600
Entry Wire Line
	4600 2600 4500 2700
Entry Wire Line
	4600 2700 4500 2800
Entry Wire Line
	4600 2800 4500 2900
Entry Wire Line
	4600 2900 4500 3000
Entry Wire Line
	4600 3000 4500 3100
Entry Wire Line
	4600 3100 4500 3200
Entry Wire Line
	4600 3200 4500 3300
Entry Wire Line
	4600 3300 4500 3400
Entry Wire Line
	4600 3400 4500 3500
Wire Bus Line
	4500 2200 4000 2200
Wire Bus Line
	6800 2100 7150 2100
Text Label 7150 2100 2    50   ~ 0
D[0..15]
Text Label 4000 2200 0    50   ~ 0
A[0..11]
Text HLabel 4000 2200 0    50   BiDi ~ 0
A[0..11]
Text HLabel 7150 2100 2    50   BiDi ~ 0
D[0..15]
$Comp
L Device:C C301
U 1 1 5F12988C
P 1000 7250
F 0 "C301" H 1115 7296 50  0000 L CNN
F 1 "100n" H 1115 7205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1038 7100 50  0001 C CNN
F 3 "~" H 1000 7250 50  0001 C CNN
	1    1000 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C302
U 1 1 5F12BD5A
P 1500 7250
F 0 "C302" H 1615 7296 50  0000 L CNN
F 1 "100n" H 1615 7205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1538 7100 50  0001 C CNN
F 3 "~" H 1500 7250 50  0001 C CNN
	1    1500 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C303
U 1 1 5F12CAA5
P 2000 7250
F 0 "C303" H 2115 7296 50  0000 L CNN
F 1 "100n" H 2115 7205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2038 7100 50  0001 C CNN
F 3 "~" H 2000 7250 50  0001 C CNN
	1    2000 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C304
U 1 1 5F12CAAB
P 2500 7250
F 0 "C304" H 2615 7296 50  0000 L CNN
F 1 "100n" H 2615 7205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2538 7100 50  0001 C CNN
F 3 "~" H 2500 7250 50  0001 C CNN
	1    2500 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C305
U 1 1 5F12F1B4
P 3000 7250
F 0 "C305" H 3115 7296 50  0000 L CNN
F 1 "100n" H 3115 7205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3038 7100 50  0001 C CNN
F 3 "~" H 3000 7250 50  0001 C CNN
	1    3000 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C306
U 1 1 5F12F1BA
P 3500 7250
F 0 "C306" H 3615 7296 50  0000 L CNN
F 1 "100n" H 3615 7205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3538 7100 50  0001 C CNN
F 3 "~" H 3500 7250 50  0001 C CNN
	1    3500 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C307
U 1 1 5F12F1C0
P 4000 7250
F 0 "C307" H 4115 7296 50  0000 L CNN
F 1 "100n" H 4115 7205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4038 7100 50  0001 C CNN
F 3 "~" H 4000 7250 50  0001 C CNN
	1    4000 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 7400 1000 7450
Wire Wire Line
	1000 7450 1500 7450
Wire Wire Line
	4000 7450 4000 7400
Wire Wire Line
	3500 7400 3500 7450
Connection ~ 3500 7450
Wire Wire Line
	3500 7450 4000 7450
Wire Wire Line
	3000 7400 3000 7450
Connection ~ 3000 7450
Wire Wire Line
	3000 7450 3500 7450
Wire Wire Line
	2500 7400 2500 7450
Connection ~ 2500 7450
Wire Wire Line
	2500 7450 3000 7450
Wire Wire Line
	2000 7400 2000 7450
Connection ~ 2000 7450
Wire Wire Line
	2000 7450 2500 7450
Wire Wire Line
	1500 7400 1500 7450
Connection ~ 1500 7450
Wire Wire Line
	1500 7450 2000 7450
Wire Wire Line
	1000 7100 1000 7050
Wire Wire Line
	1000 7050 1500 7050
Wire Wire Line
	4000 7050 4000 7100
Wire Wire Line
	3500 7100 3500 7050
Connection ~ 3500 7050
Wire Wire Line
	3500 7050 4000 7050
Wire Wire Line
	3000 7100 3000 7050
Connection ~ 3000 7050
Wire Wire Line
	3000 7050 3500 7050
Wire Wire Line
	2500 7100 2500 7050
Connection ~ 2500 7050
Wire Wire Line
	2500 7050 3000 7050
Wire Wire Line
	2000 7100 2000 7050
Connection ~ 2000 7050
Wire Wire Line
	2000 7050 2500 7050
Wire Wire Line
	1500 7100 1500 7050
Connection ~ 1500 7050
Wire Wire Line
	1500 7050 2000 7050
Wire Wire Line
	2500 7500 2500 7450
Wire Wire Line
	2500 7000 2500 7050
Wire Bus Line
	4500 2200 4500 3500
Wire Bus Line
	6800 2100 6800 3700
$Comp
L power:GND #PWR0302
U 1 1 6038237F
P 2500 7500
F 0 "#PWR0302" H 2500 7250 50  0001 C CNN
F 1 "GND" H 2505 7327 50  0000 C CNN
F 2 "" H 2500 7500 50  0001 C CNN
F 3 "" H 2500 7500 50  0001 C CNN
	1    2500 7500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0304
U 1 1 603828AC
P 5650 4700
F 0 "#PWR0304" H 5650 4450 50  0001 C CNN
F 1 "GND" H 5655 4527 50  0000 C CNN
F 2 "" H 5650 4700 50  0001 C CNN
F 3 "" H 5650 4700 50  0001 C CNN
	1    5650 4700
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0303
U 1 1 60383841
P 5650 1700
F 0 "#PWR0303" H 5650 1550 50  0001 C CNN
F 1 "+3.3V" H 5665 1873 50  0000 C CNN
F 2 "" H 5650 1700 50  0001 C CNN
F 3 "" H 5650 1700 50  0001 C CNN
	1    5650 1700
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0301
U 1 1 60384354
P 2500 7000
F 0 "#PWR0301" H 2500 6850 50  0001 C CNN
F 1 "+3.3V" H 2515 7173 50  0000 C CNN
F 2 "" H 2500 7000 50  0001 C CNN
F 3 "" H 2500 7000 50  0001 C CNN
	1    2500 7000
	1    0    0    -1  
$EndComp
$EndSCHEMATC
