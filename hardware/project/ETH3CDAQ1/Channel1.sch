EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 8 9
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ETH3CDAQ1:ADAQ798x U807
U 1 1 5FAF1074
P 14150 3300
F 0 "U807" H 14200 3350 50  0000 R CNN
F 1 "ADAQ798x" H 14350 3200 50  0000 R CNN
F 2 "" H 15325 3850 50  0001 C CNN
F 3 "" H 15325 3850 50  0001 C CNN
	1    14150 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	13850 3950 13850 4000
Wire Wire Line
	13850 4000 13950 4000
Wire Wire Line
	14450 4000 14450 3950
Wire Wire Line
	14350 3950 14350 4000
Connection ~ 14350 4000
Wire Wire Line
	14350 4000 14450 4000
Wire Wire Line
	14250 3950 14250 4000
Connection ~ 14250 4000
Wire Wire Line
	14250 4000 14350 4000
Wire Wire Line
	14150 3950 14150 4000
Connection ~ 14150 4000
Wire Wire Line
	14150 4000 14250 4000
Wire Wire Line
	14050 3950 14050 4000
Connection ~ 14050 4000
Wire Wire Line
	14050 4000 14150 4000
Wire Wire Line
	13950 3950 13950 4000
Connection ~ 13950 4000
Wire Wire Line
	13950 4000 14050 4000
Wire Wire Line
	14150 4050 14150 4000
$Comp
L power:+3.3V #PWR0825
U 1 1 5FAF38B5
P 15250 3100
F 0 "#PWR0825" H 15250 2950 50  0001 C CNN
F 1 "+3.3V" V 15250 3250 50  0000 L CNN
F 2 "" H 15250 3100 50  0001 C CNN
F 3 "" H 15250 3100 50  0001 C CNN
	1    15250 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	15250 3100 15200 3100
$Comp
L power:+5V #PWR0823
U 1 1 5FAF6A7B
P 14750 2550
F 0 "#PWR0823" H 14750 2400 50  0001 C CNN
F 1 "+5V" H 14765 2723 50  0000 C CNN
F 2 "" H 14750 2550 50  0001 C CNN
F 3 "" H 14750 2550 50  0001 C CNN
	1    14750 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	14650 2650 14650 2600
Wire Wire Line
	14650 2600 14750 2600
Wire Wire Line
	14750 2600 14750 2650
Wire Wire Line
	14750 2550 14750 2600
Connection ~ 14750 2600
$Comp
L power:+5V #PWR0804
U 1 1 5FAFA039
P 5950 9750
F 0 "#PWR0804" H 5950 9600 50  0001 C CNN
F 1 "+5V" H 5965 9923 50  0000 C CNN
F 2 "" H 5950 9750 50  0001 C CNN
F 3 "" H 5950 9750 50  0001 C CNN
	1    5950 9750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C802
U 1 1 5FAFA3DD
P 5950 10000
F 0 "C802" H 6065 10046 50  0000 L CNN
F 1 "2u2" H 6065 9955 50  0000 L CNN
F 2 "" H 5988 9850 50  0001 C CNN
F 3 "~" H 5950 10000 50  0001 C CNN
	1    5950 10000
	1    0    0    -1  
$EndComp
$Comp
L power:+7.5V #PWR0818
U 1 1 5FAFC412
P 13950 2550
F 0 "#PWR0818" H 13950 2400 50  0001 C CNN
F 1 "+7.5V" H 13965 2723 50  0000 C CNN
F 2 "" H 13950 2550 50  0001 C CNN
F 3 "" H 13950 2550 50  0001 C CNN
	1    13950 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	13850 2650 13850 2600
Wire Wire Line
	13850 2600 13950 2600
Wire Wire Line
	14050 2600 14050 2650
Connection ~ 13950 2600
Wire Wire Line
	13950 2600 14050 2600
Wire Wire Line
	13950 2650 13950 2600
Wire Wire Line
	13950 2550 13950 2600
$Comp
L power:-2V5 #PWR0820
U 1 1 5FAFE9C0
P 14250 2550
F 0 "#PWR0820" H 14250 2650 50  0001 C CNN
F 1 "-2V5" H 14265 2723 50  0000 C CNN
F 2 "" H 14250 2550 50  0001 C CNN
F 3 "" H 14250 2550 50  0001 C CNN
	1    14250 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	14250 2550 14250 2650
Wire Wire Line
	13550 2650 13550 2250
Text Label 13550 2250 3    50   ~ 0
REF_OUT
Wire Wire Line
	13650 2650 13650 2250
Text Label 13650 2250 3    50   ~ 0
VREF
NoConn ~ 14450 2650
Wire Wire Line
	15200 3200 15250 3200
Text HLabel 15250 3200 2    50   BiDi ~ 0
CH1_SDO
Text HLabel 15250 3500 2    50   Input ~ 0
CH1_CNV
Wire Wire Line
	15250 3500 15200 3500
Text HLabel 15250 3300 2    50   Input ~ 0
CH1_SCK
Wire Wire Line
	15250 3300 15200 3300
Text HLabel 15250 3400 2    50   BiDi ~ 0
CH1_SDI
Wire Wire Line
	15250 3400 15200 3400
$Comp
L Device:R_Pack04_SIP_Split RN802
U 1 1 5FB101AA
P 12750 3500
F 0 "RN802" V 12650 3500 50  0000 C CNN
F 1 "1k" V 12750 3500 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP8" V 12670 3500 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 12750 3500 50  0001 C CNN
	1    12750 3500
	0    1    1    0   
$EndComp
$Comp
L Device:R_Pack04_SIP_Split RN802
U 2 1 5FB14240
P 12250 3300
F 0 "RN802" V 12150 3300 50  0000 C CNN
F 1 "1k" V 12250 3300 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP8" V 12170 3300 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 12250 3300 50  0001 C CNN
	2    12250 3300
	0    1    1    0   
$EndComp
$Comp
L Device:R_Pack04_SIP_Split RN802
U 3 1 5FB146CF
P 11900 3300
F 0 "RN802" V 11800 3300 50  0000 C CNN
F 1 "1k" V 11900 3300 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP8" V 11820 3300 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 11900 3300 50  0001 C CNN
	3    11900 3300
	0    1    1    0   
$EndComp
$Comp
L Device:R_Pack04_SIP_Split RN802
U 4 1 5FB14C70
P 12750 3750
F 0 "RN802" V 12650 3750 50  0000 C CNN
F 1 "1k" V 12750 3750 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP8" V 12670 3750 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 12750 3750 50  0001 C CNN
	4    12750 3750
	0    1    1    0   
$EndComp
$Comp
L Device:R_Pack04_SIP_Split RN801
U 1 1 5FB1977B
P 12200 1700
F 0 "RN801" V 12100 1700 50  0000 C CNN
F 1 "1k" V 12200 1700 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP8" V 12120 1700 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 12200 1700 50  0001 C CNN
	1    12200 1700
	0    1    1    0   
$EndComp
$Comp
L Device:R_Pack04_SIP_Split RN801
U 2 1 5FB19781
P 12200 1950
F 0 "RN801" V 12100 1950 50  0000 C CNN
F 1 "1k" V 12200 1950 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP8" V 12120 1950 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 12200 1950 50  0001 C CNN
	2    12200 1950
	0    1    1    0   
$EndComp
$Comp
L Device:R_Pack04_SIP_Split RN801
U 3 1 5FB19787
P 12200 2200
F 0 "RN801" V 12100 2200 50  0000 C CNN
F 1 "1k" V 12200 2200 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP8" V 12120 2200 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 12200 2200 50  0001 C CNN
	3    12200 2200
	0    1    1    0   
$EndComp
$Comp
L Device:R_Pack04_SIP_Split RN801
U 4 1 5FB1978D
P 12200 2450
F 0 "RN801" V 12100 2450 50  0000 C CNN
F 1 "1k" V 12200 2450 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP8" V 12120 2450 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 12200 2450 50  0001 C CNN
	4    12200 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	12050 2200 11750 2200
Wire Wire Line
	11750 2200 11750 1950
Wire Wire Line
	11750 1700 12050 1700
Wire Wire Line
	12050 1950 11750 1950
Connection ~ 11750 1950
Wire Wire Line
	11750 1950 11750 1700
Wire Wire Line
	12350 1950 12700 1950
Wire Wire Line
	12700 1950 12700 2200
Wire Wire Line
	12700 2200 12350 2200
Wire Wire Line
	12350 2450 12700 2450
Wire Wire Line
	12700 2450 12700 2200
Connection ~ 12700 2200
$Comp
L Device:C C801
U 1 1 5FB2315A
P 12700 2650
F 0 "C801" H 12815 2696 50  0000 L CNN
F 1 "C" H 12815 2605 50  0000 L CNN
F 2 "" H 12738 2500 50  0001 C CNN
F 3 "~" H 12700 2650 50  0001 C CNN
	1    12700 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0802
U 1 1 5FB24A42
P 12700 2900
F 0 "#PWR0802" H 12700 2650 50  0001 C CNN
F 1 "GNDA" H 12705 2727 50  0000 C CNN
F 2 "" H 12700 2900 50  0001 C CNN
F 3 "" H 12700 2900 50  0001 C CNN
	1    12700 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	12700 2850 11750 2850
Wire Wire Line
	11750 2850 11750 2450
Wire Wire Line
	11750 2450 12050 2450
Wire Wire Line
	12700 2450 12700 2500
Wire Wire Line
	12700 2800 12700 2850
Connection ~ 12700 2450
Wire Wire Line
	12700 2900 12700 2850
Connection ~ 12700 2850
Wire Wire Line
	12350 1700 12700 1700
Wire Wire Line
	12700 1700 12700 1650
$Comp
L power:+5VP #PWR0801
U 1 1 5FB6887A
P 12700 1650
F 0 "#PWR0801" H 12700 1500 50  0001 C CNN
F 1 "+5VP" H 12715 1823 50  0000 C CNN
F 2 "" H 12700 1650 50  0001 C CNN
F 3 "" H 12700 1650 50  0001 C CNN
	1    12700 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	12700 2200 13050 2200
Wire Wire Line
	13100 3100 13050 3100
Wire Wire Line
	12600 3750 12500 3750
Wire Wire Line
	12500 3750 12500 3500
Wire Wire Line
	12600 3500 12500 3500
Connection ~ 12500 3500
Wire Wire Line
	12500 3500 12500 3300
Text Notes 6200 9600 0    50   ~ 0
RN -  ACASA1001S1001P100
Wire Wire Line
	12900 3750 13000 3750
Wire Wire Line
	13000 3750 13000 3500
Wire Wire Line
	13000 3500 13100 3500
Wire Wire Line
	12900 3500 13000 3500
Connection ~ 13000 3500
Connection ~ 13000 3750
Text Label 12350 4500 0    50   ~ 0
REF_OUT
Wire Wire Line
	12350 4500 12700 4500
$Comp
L Device:C C803
U 1 1 5FBB273C
P 12750 4150
F 0 "C803" V 12498 4150 50  0000 C CNN
F 1 "C" V 12589 4150 50  0000 C CNN
F 2 "" H 12788 4000 50  0001 C CNN
F 3 "~" H 12750 4150 50  0001 C CNN
	1    12750 4150
	0    1    1    0   
$EndComp
Wire Wire Line
	12900 4150 13000 4150
Wire Wire Line
	13000 3750 13000 4150
Wire Wire Line
	12600 4150 12500 4150
Wire Wire Line
	12500 4150 12500 3750
Connection ~ 12500 3750
$Comp
L power:GNDA #PWR0819
U 1 1 5FBBF496
P 14150 4050
F 0 "#PWR0819" H 14150 3800 50  0001 C CNN
F 1 "GNDA" H 14155 3877 50  0000 C CNN
F 2 "" H 14150 4050 50  0001 C CNN
F 3 "" H 14150 4050 50  0001 C CNN
	1    14150 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0817
U 1 1 5FBBF813
P 13350 4500
F 0 "#PWR0817" H 13350 4250 50  0001 C CNN
F 1 "GNDA" V 13350 4350 50  0000 R CNN
F 2 "" H 13350 4500 50  0001 C CNN
F 3 "" H 13350 4500 50  0001 C CNN
	1    13350 4500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	13000 4300 13000 4150
Connection ~ 13000 4150
Wire Wire Line
	12050 3300 12100 3300
$Comp
L power:GNDA #PWR0805
U 1 1 5FBF59AF
P 5950 10250
F 0 "#PWR0805" H 5950 10000 50  0001 C CNN
F 1 "GNDA" H 5955 10077 50  0000 C CNN
F 2 "" H 5950 10250 50  0001 C CNN
F 3 "" H 5950 10250 50  0001 C CNN
	1    5950 10250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 9750 5950 9850
Wire Wire Line
	5950 10150 5950 10250
$Comp
L ETH3CDAQ1:DG211 U801
U 4 1 5FC0C75E
P 3250 5250
F 0 "U801" H 3250 5517 50  0000 C CNN
F 1 "DG211" H 3250 5426 50  0000 C CNN
F 2 "" H 3250 5150 50  0001 C CNN
F 3 "" H 3250 5250 50  0001 C CNN
	4    3250 5250
	1    0    0    -1  
$EndComp
$Comp
L ETH3CDAQ1:DG211 U801
U 3 1 5FC0A1DE
P 3250 4550
F 0 "U801" H 3250 4817 50  0000 C CNN
F 1 "DG211" H 3250 4726 50  0000 C CNN
F 2 "" H 3250 4450 50  0001 C CNN
F 3 "" H 3250 4550 50  0001 C CNN
	3    3250 4550
	1    0    0    -1  
$EndComp
$Comp
L ETH3CDAQ1:DG211 U801
U 2 1 5FC081C7
P 3250 3850
F 0 "U801" H 3250 4117 50  0000 C CNN
F 1 "DG211" H 3250 4026 50  0000 C CNN
F 2 "" H 3250 3750 50  0001 C CNN
F 3 "" H 3250 3850 50  0001 C CNN
	2    3250 3850
	1    0    0    -1  
$EndComp
$Comp
L ETH3CDAQ1:DG211 U801
U 1 1 5FC06C63
P 3250 3150
F 0 "U801" H 3250 3417 50  0000 C CNN
F 1 "DG211" H 3250 3326 50  0000 C CNN
F 2 "" H 3250 3050 50  0001 C CNN
F 3 "" H 3250 3150 50  0001 C CNN
	1    3250 3150
	1    0    0    -1  
$EndComp
$Comp
L ETH3CDAQ1:DG211 U801
U 5 1 5FC450D7
P 3250 9950
F 0 "U801" H 3530 9996 50  0000 L CNN
F 1 "DG211" H 3530 9905 50  0000 L CNN
F 2 "" H 3250 9850 50  0001 C CNN
F 3 "" H 3250 9950 50  0001 C CNN
	5    3250 9950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R802
U 1 1 5FC711E0
P 2750 4550
F 0 "R802" V 2543 4550 50  0000 C CNN
F 1 "10k" V 2634 4550 50  0000 C CNN
F 2 "" V 2680 4550 50  0001 C CNN
F 3 "~" H 2750 4550 50  0001 C CNN
	1    2750 4550
	0    1    1    0   
$EndComp
$Comp
L Device:R R803
U 1 1 5FC72F39
P 2750 5250
F 0 "R803" V 2543 5250 50  0000 C CNN
F 1 "10k" V 2634 5250 50  0000 C CNN
F 2 "" V 2680 5250 50  0001 C CNN
F 3 "~" H 2750 5250 50  0001 C CNN
	1    2750 5250
	0    1    1    0   
$EndComp
$Comp
L Device:R R801
U 1 1 5FC77D1C
P 2750 3850
F 0 "R801" V 2543 3850 50  0000 C CNN
F 1 "10k" V 2634 3850 50  0000 C CNN
F 2 "" V 2680 3850 50  0001 C CNN
F 3 "~" H 2750 3850 50  0001 C CNN
	1    2750 3850
	0    1    1    0   
$EndComp
$Comp
L ETH3CDAQ1:AD8251 U804
U 1 1 5FD03554
P 11150 3300
F 0 "U804" H 11450 3800 50  0000 C CNN
F 1 "AD8251" H 11450 3700 50  0000 C CNN
F 2 "" H 11350 3350 50  0001 C CNN
F 3 "" H 11350 3450 50  0001 C CNN
	1    11150 3300
	1    0    0    -1  
$EndComp
$Comp
L ETH3CDAQ1:AD8251 U804
U 2 1 5FD04724
P 11200 5850
F 0 "U804" H 11200 6250 50  0000 C CNN
F 1 "AD8251" H 11200 6150 50  0000 C CNN
F 2 "" H 11400 5900 50  0001 C CNN
F 3 "" H 11400 6000 50  0001 C CNN
	2    11200 5850
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR0809
U 1 1 5FD08D95
P 11150 3750
F 0 "#PWR0809" H 11150 3850 50  0001 C CNN
F 1 "-15V" H 11165 3923 50  0000 C CNN
F 2 "" H 11150 3750 50  0001 C CNN
F 3 "" H 11150 3750 50  0001 C CNN
	1    11150 3750
	-1   0    0    1   
$EndComp
$Comp
L power:+15V #PWR0808
U 1 1 5FD09CAA
P 11150 2850
F 0 "#PWR0808" H 11150 2700 50  0001 C CNN
F 1 "+15V" H 11165 3023 50  0000 C CNN
F 2 "" H 11150 2850 50  0001 C CNN
F 3 "" H 11150 2850 50  0001 C CNN
	1    11150 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0812
U 1 1 5FD19307
P 11750 3500
F 0 "#PWR0812" H 11750 3250 50  0001 C CNN
F 1 "GNDA" V 11750 3350 50  0000 R CNN
F 2 "" H 11750 3500 50  0001 C CNN
F 3 "" H 11750 3500 50  0001 C CNN
	1    11750 3500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	11750 3500 11700 3500
$Comp
L power:GNDA #PWR0810
U 1 1 5FD20E0F
P 11200 6200
F 0 "#PWR0810" H 11200 5950 50  0001 C CNN
F 1 "GNDA" H 11205 6027 50  0000 C CNN
F 2 "" H 11200 6200 50  0001 C CNN
F 3 "" H 11200 6200 50  0001 C CNN
	1    11200 6200
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR0811
U 1 1 5FD23C84
P 11550 5750
F 0 "#PWR0811" H 11550 5850 50  0001 C CNN
F 1 "-15V" V 11550 5900 50  0000 L CNN
F 2 "" H 11550 5750 50  0001 C CNN
F 3 "" H 11550 5750 50  0001 C CNN
	1    11550 5750
	0    1    1    0   
$EndComp
$Comp
L power:GNDA #PWR0807
U 1 1 5FD35DC6
P 10550 3750
F 0 "#PWR0807" H 10550 3500 50  0001 C CNN
F 1 "GNDA" H 10555 3577 50  0000 C CNN
F 2 "" H 10550 3750 50  0001 C CNN
F 3 "" H 10550 3750 50  0001 C CNN
	1    10550 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10550 3750 10550 3450
Wire Wire Line
	10550 3450 10600 3450
Wire Wire Line
	11700 3300 11750 3300
$Comp
L Analog_Switch:DG419LDY U802
U 1 1 5FD6822C
P 4300 3050
F 0 "U802" H 4300 3292 50  0000 C CNN
F 1 "DG419LDY" H 4300 3201 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 4300 2750 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/DG417-DG419.pdf" H 4300 3050 50  0001 C CNN
	1    4300 3050
	1    0    0    -1  
$EndComp
$Comp
L Analog_Switch:DG419LDY U802
U 2 1 5FD69DA0
P 4000 9950
F 0 "U802" H 4280 9996 50  0000 L CNN
F 1 "DG419LDY" H 4280 9905 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 4000 9650 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/DG417-DG419.pdf" H 4000 9950 50  0001 C CNN
	2    4000 9950
	1    0    0    -1  
$EndComp
$Comp
L Analog_Switch:DG419LDY U803
U 1 1 5FD7D785
P 9600 3050
F 0 "U803" H 9600 3292 50  0000 C CNN
F 1 "DG419LDY" H 9600 3201 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 9600 2750 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/DG417-DG419.pdf" H 9600 3050 50  0001 C CNN
	1    9600 3050
	-1   0    0    -1  
$EndComp
$Comp
L Analog_Switch:DG419LDY U803
U 2 1 5FD7D78B
P 4850 9950
F 0 "U803" H 5130 9996 50  0000 L CNN
F 1 "DG419LDY" H 5130 9905 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 4850 9650 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/DG417-DG419.pdf" H 4850 9950 50  0001 C CNN
	2    4850 9950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R804
U 1 1 5FDCB62B
P 10100 3150
F 0 "R804" V 9893 3150 50  0000 C CNN
F 1 "R" V 9984 3150 50  0000 C CNN
F 2 "" V 10030 3150 50  0001 C CNN
F 3 "~" H 10100 3150 50  0001 C CNN
	1    10100 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	10250 3150 10300 3150
$Comp
L Device:R R805
U 1 1 5FDD1669
P 10300 3350
F 0 "R805" H 10230 3304 50  0000 R CNN
F 1 "R" H 10230 3395 50  0000 R CNN
F 2 "" V 10230 3350 50  0001 C CNN
F 3 "~" H 10300 3350 50  0001 C CNN
	1    10300 3350
	-1   0    0    1   
$EndComp
$Comp
L power:GNDA #PWR0806
U 1 1 5FDD201B
P 10300 3550
F 0 "#PWR0806" H 10300 3300 50  0001 C CNN
F 1 "GNDA" H 10305 3377 50  0000 C CNN
F 2 "" H 10300 3550 50  0001 C CNN
F 3 "" H 10300 3550 50  0001 C CNN
	1    10300 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 3550 10300 3500
Wire Wire Line
	10300 3200 10300 3150
Connection ~ 10300 3150
Wire Wire Line
	10300 3150 10600 3150
Wire Wire Line
	9900 3150 9950 3150
Wire Wire Line
	12500 3300 13100 3300
Wire Wire Line
	12400 3300 12500 3300
Connection ~ 12500 3300
$Comp
L power:GNDA #PWR0803
U 1 1 5FE258C1
P 2600 3850
F 0 "#PWR0803" H 2600 3600 50  0001 C CNN
F 1 "GNDA" V 2605 3723 50  0000 R CNN
F 2 "" H 2600 3850 50  0001 C CNN
F 3 "" H 2600 3850 50  0001 C CNN
	1    2600 3850
	0    1    1    0   
$EndComp
Wire Wire Line
	3250 3450 3250 3500
Wire Wire Line
	3250 3500 3800 3500
Wire Wire Line
	3250 4150 3250 4200
Wire Wire Line
	3250 4200 3800 4200
Wire Wire Line
	3250 4850 3250 4900
Wire Wire Line
	3250 4900 3800 4900
Wire Wire Line
	3250 5550 3250 5600
Wire Wire Line
	3250 5600 3800 5600
Wire Wire Line
	3550 3150 3950 3150
Wire Wire Line
	3550 3850 3950 3850
Wire Wire Line
	3950 3850 3950 3150
Connection ~ 3950 3150
Wire Wire Line
	3950 3150 4000 3150
Wire Wire Line
	3550 4550 3950 4550
Wire Wire Line
	3950 4550 3950 3850
Connection ~ 3950 3850
Wire Wire Line
	3550 5250 3950 5250
Wire Wire Line
	3950 5250 3950 4550
Connection ~ 3950 4550
$Comp
L 74xGxx:SN74LVC1G14DBV U805
U 1 1 5FEC66BA
P 12350 5850
F 0 "U805" H 11900 6150 50  0000 R CNN
F 1 "SN74LVC1G14DBVR" H 12250 6050 50  0000 R CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 12350 5600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74lvc1g14.pdf" H 12350 5850 50  0001 C CNN
	1    12350 5850
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0813
U 1 1 5FEF373C
P 12350 5650
F 0 "#PWR0813" H 12350 5500 50  0001 C CNN
F 1 "+5V" H 12365 5823 50  0000 C CNN
F 2 "" H 12350 5650 50  0001 C CNN
F 3 "" H 12350 5650 50  0001 C CNN
	1    12350 5650
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0814
U 1 1 5FEF4075
P 12350 6050
F 0 "#PWR0814" H 12350 5800 50  0001 C CNN
F 1 "GNDA" H 12355 5877 50  0000 C CNN
F 2 "" H 12350 6050 50  0001 C CNN
F 3 "" H 12350 6050 50  0001 C CNN
	1    12350 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	12050 5850 11550 5850
$Comp
L Diode:BAT54SW D801
U 1 1 5FB964EA
P 13000 4500
F 0 "D801" H 13000 4633 50  0000 C CNN
F 1 "BAT54SW" H 13000 4724 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-323_SC-70" H 13075 4625 50  0001 L CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/BAT54W_SER.pdf" H 12880 4500 50  0001 C CNN
	1    13000 4500
	-1   0    0    1   
$EndComp
Wire Wire Line
	13350 4500 13300 4500
$Comp
L 74xGxx:SN74LVC1G14DBV U806
U 1 1 5FF0284F
P 12350 6750
F 0 "U806" H 11900 7050 50  0000 R CNN
F 1 "SN74LVC1G14DBVR" H 12250 6950 50  0000 R CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 12350 6500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74lvc1g14.pdf" H 12350 6750 50  0001 C CNN
	1    12350 6750
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0815
U 1 1 5FF02855
P 12350 6550
F 0 "#PWR0815" H 12350 6400 50  0001 C CNN
F 1 "+5V" H 12365 6723 50  0000 C CNN
F 2 "" H 12350 6550 50  0001 C CNN
F 3 "" H 12350 6550 50  0001 C CNN
	1    12350 6550
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0816
U 1 1 5FF0285B
P 12350 6950
F 0 "#PWR0816" H 12350 6700 50  0001 C CNN
F 1 "GNDA" H 12355 6777 50  0000 C CNN
F 2 "" H 12350 6950 50  0001 C CNN
F 3 "" H 12350 6950 50  0001 C CNN
	1    12350 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	12050 6750 11850 6750
Wire Wire Line
	11850 6750 11850 5950
Wire Wire Line
	11850 5950 11550 5950
Wire Wire Line
	14550 5800 14500 5800
Wire Wire Line
	14550 5900 14500 5900
Wire Wire Line
	14550 6000 14500 6000
Wire Wire Line
	14550 6100 14500 6100
Wire Wire Line
	14550 6200 14500 6200
Wire Wire Line
	14550 6300 14500 6300
Wire Wire Line
	14550 6400 14500 6400
NoConn ~ 14550 6500
$Comp
L Device:R R812
U 1 1 5FF7F50F
P 14350 6400
F 0 "R812" V 14300 6150 50  0000 C CNN
F 1 "620" V 14350 6400 50  0000 C CNN
F 2 "" V 14280 6400 50  0001 C CNN
F 3 "~" H 14350 6400 50  0001 C CNN
	1    14350 6400
	0    1    1    0   
$EndComp
$Comp
L Device:R R811
U 1 1 5FF7F173
P 14350 6300
F 0 "R811" V 14300 6050 50  0000 C CNN
F 1 "620" V 14350 6300 50  0000 C CNN
F 2 "" V 14280 6300 50  0001 C CNN
F 3 "~" H 14350 6300 50  0001 C CNN
	1    14350 6300
	0    1    1    0   
$EndComp
$Comp
L Device:R R810
U 1 1 5FF7EB70
P 14350 6200
F 0 "R810" V 14300 5950 50  0000 C CNN
F 1 "620" V 14350 6200 50  0000 C CNN
F 2 "" V 14280 6200 50  0001 C CNN
F 3 "~" H 14350 6200 50  0001 C CNN
	1    14350 6200
	0    1    1    0   
$EndComp
$Comp
L Device:R R809
U 1 1 5FF7E89F
P 14350 6100
F 0 "R809" V 14300 5850 50  0000 C CNN
F 1 "620" V 14350 6100 50  0000 C CNN
F 2 "" V 14280 6100 50  0001 C CNN
F 3 "~" H 14350 6100 50  0001 C CNN
	1    14350 6100
	0    1    1    0   
$EndComp
$Comp
L Device:R R808
U 1 1 5FF7E5B6
P 14350 6000
F 0 "R808" V 14300 5750 50  0000 C CNN
F 1 "620" V 14350 6000 50  0000 C CNN
F 2 "" V 14280 6000 50  0001 C CNN
F 3 "~" H 14350 6000 50  0001 C CNN
	1    14350 6000
	0    1    1    0   
$EndComp
$Comp
L Device:R R807
U 1 1 5FF7E304
P 14350 5900
F 0 "R807" V 14300 5650 50  0000 C CNN
F 1 "620" V 14350 5900 50  0000 C CNN
F 2 "" V 14280 5900 50  0001 C CNN
F 3 "~" H 14350 5900 50  0001 C CNN
	1    14350 5900
	0    1    1    0   
$EndComp
$Comp
L Device:R R806
U 1 1 5FF790EF
P 14350 5800
F 0 "R806" V 14300 5550 50  0000 C CNN
F 1 "620" V 14350 5800 50  0000 C CNN
F 2 "" V 14280 5800 50  0001 C CNN
F 3 "~" H 14350 5800 50  0001 C CNN
	1    14350 5800
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0824
U 1 1 5FF76A26
P 15350 6100
F 0 "#PWR0824" H 15350 5950 50  0001 C CNN
F 1 "+5V" V 15350 6250 50  0000 L CNN
F 2 "" H 15350 6100 50  0001 C CNN
F 3 "" H 15350 6100 50  0001 C CNN
	1    15350 6100
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0821
U 1 1 5FF75B4C
P 14950 5600
F 0 "#PWR0821" H 14950 5450 50  0001 C CNN
F 1 "+5V" H 14965 5773 50  0000 C CNN
F 2 "" H 14950 5600 50  0001 C CNN
F 3 "" H 14950 5600 50  0001 C CNN
	1    14950 5600
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0822
U 1 1 5FF73261
P 14950 6900
F 0 "#PWR0822" H 14950 6650 50  0001 C CNN
F 1 "GNDA" H 14955 6727 50  0000 C CNN
F 2 "" H 14950 6900 50  0001 C CNN
F 3 "" H 14950 6900 50  0001 C CNN
	1    14950 6900
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HCT595 U808
U 1 1 5FF6B670
P 14950 6200
F 0 "U808" H 14650 6900 50  0000 C CNN
F 1 "74HCT595" H 14650 6800 50  0000 C CNN
F 2 "Package_SO:TSSOP-16_4.4x5mm_P0.65mm" H 14950 6200 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT595.pdf" H 14950 6200 50  0001 C CNN
	1    14950 6200
	-1   0    0    -1  
$EndComp
$Comp
L ETH3CDAQ1:OPA140 U809
U 1 1 5FFF6C81
P 2050 3150
F 0 "U809" H 2150 3400 50  0000 L CNN
F 1 "OPA140" H 2100 3300 50  0000 L CNN
F 2 "" H 2100 3200 50  0001 C CNN
F 3 "" H 2200 3300 50  0001 C CNN
	1    2050 3150
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR0101
U 1 1 5FFFBA42
P 1950 3450
F 0 "#PWR0101" H 1950 3550 50  0001 C CNN
F 1 "-15V" H 1965 3623 50  0000 C CNN
F 2 "" H 1950 3450 50  0001 C CNN
F 3 "" H 1950 3450 50  0001 C CNN
	1    1950 3450
	-1   0    0    1   
$EndComp
NoConn ~ 2050 3450
NoConn ~ 2150 3450
$Comp
L power:+15V #PWR0102
U 1 1 60009014
P 1950 2850
F 0 "#PWR0102" H 1950 2700 50  0001 C CNN
F 1 "+15V" H 1965 3023 50  0000 C CNN
F 2 "" H 1950 2850 50  0001 C CNN
F 3 "" H 1950 2850 50  0001 C CNN
	1    1950 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 3250 1650 3250
Wire Wire Line
	1650 3250 1650 3700
Wire Wire Line
	1650 3700 2450 3700
Wire Wire Line
	2450 3700 2450 3150
Wire Wire Line
	2450 3150 2350 3150
$Comp
L Device:R R814
U 1 1 60017844
P 2750 3150
F 0 "R814" V 2543 3150 50  0000 C CNN
F 1 "R" V 2634 3150 50  0000 C CNN
F 2 "" V 2680 3150 50  0001 C CNN
F 3 "~" H 2750 3150 50  0001 C CNN
	1    2750 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	2450 3150 2600 3150
Wire Wire Line
	2900 3150 2950 3150
Connection ~ 2450 3150
$Comp
L Device:R R813
U 1 1 6001E7CE
P 2050 2450
F 0 "R813" V 1843 2450 50  0000 C CNN
F 1 "R" V 1934 2450 50  0000 C CNN
F 2 "" V 1980 2450 50  0001 C CNN
F 3 "~" H 2050 2450 50  0001 C CNN
	1    2050 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	1900 2450 1650 2450
Wire Wire Line
	1650 2450 1650 3250
Connection ~ 1650 3250
Wire Wire Line
	2200 2450 2450 2450
Wire Wire Line
	2450 2450 2450 3150
$Comp
L power:-10V #PWR0103
U 1 1 6002E67D
P 2550 5250
F 0 "#PWR0103" H 2550 5350 50  0001 C CNN
F 1 "-10V" V 2565 5378 50  0000 L CNN
F 2 "" H 2550 5250 50  0001 C CNN
F 3 "" H 2550 5250 50  0001 C CNN
	1    2550 5250
	0    -1   -1   0   
$EndComp
$Comp
L power:+10V #PWR0104
U 1 1 6002FA85
P 2550 4550
F 0 "#PWR0104" H 2550 4400 50  0001 C CNN
F 1 "+10V" V 2565 4678 50  0000 L CNN
F 2 "" H 2550 4550 50  0001 C CNN
F 3 "" H 2550 4550 50  0001 C CNN
	1    2550 4550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2550 5250 2600 5250
Wire Wire Line
	2900 5250 2950 5250
Wire Wire Line
	2550 4550 2600 4550
Wire Wire Line
	2900 4550 2950 4550
Wire Wire Line
	14200 5800 13450 5800
Wire Wire Line
	14200 5900 13450 5900
Wire Wire Line
	14200 6000 13450 6000
Wire Wire Line
	14200 6100 13450 6100
Wire Wire Line
	14200 6200 13450 6200
Wire Wire Line
	14200 6300 13450 6300
Wire Wire Line
	14200 6400 13450 6400
Text Label 13450 5800 0    50   ~ 0
CH1_A1
Text Label 13450 5900 0    50   ~ 0
CH1_A0
Text Label 13450 6000 0    50   ~ 0
CH1_M_IN
Text Label 13450 6100 0    50   ~ 0
CH1_M_GND
Text Label 13450 6200 0    50   ~ 0
CH1_M_P10V
Text Label 13450 6300 0    50   ~ 0
CH1_M_N10V
Text Label 13450 6400 0    50   ~ 0
CH1_M_LPF
Text Label 3800 3500 2    50   ~ 0
CH1_M_IN
Text Label 3800 4200 2    50   ~ 0
CH1_M_GND
Text Label 3800 4900 2    50   ~ 0
CH1_M_P10V
Text Label 3800 5600 2    50   ~ 0
CH1_M_N10V
Text Label 13050 7650 2    50   ~ 0
CH1_M_LPF
Wire Wire Line
	4300 3450 4300 3650
Text Label 4300 3650 1    50   ~ 0
LPF
Wire Wire Line
	9600 3450 9600 3650
Text Label 9600 3650 1    50   ~ 0
LPF
$Comp
L 74xGxx:SN74LVC1G14DBV U810
U 1 1 600D36B1
P 12350 7650
F 0 "U810" H 11900 7950 50  0000 R CNN
F 1 "SN74LVC1G14DBVR" H 12250 7850 50  0000 R CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 12350 7400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74lvc1g14.pdf" H 12350 7650 50  0001 C CNN
	1    12350 7650
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0105
U 1 1 600D36B7
P 12350 7450
F 0 "#PWR0105" H 12350 7300 50  0001 C CNN
F 1 "+5V" H 12365 7623 50  0000 C CNN
F 2 "" H 12350 7450 50  0001 C CNN
F 3 "" H 12350 7450 50  0001 C CNN
	1    12350 7450
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0106
U 1 1 600D36BD
P 12350 7850
F 0 "#PWR0106" H 12350 7600 50  0001 C CNN
F 1 "GNDA" H 12355 7677 50  0000 C CNN
F 2 "" H 12350 7850 50  0001 C CNN
F 3 "" H 12350 7850 50  0001 C CNN
	1    12350 7850
	1    0    0    -1  
$EndComp
Wire Wire Line
	12050 7650 11750 7650
Wire Wire Line
	13050 7650 12550 7650
Text Label 11750 7650 0    50   ~ 0
LPF
Wire Wire Line
	9300 3050 4600 3050
Wire Wire Line
	1750 3050 1250 3050
Text HLabel 850  3050 0    50   Input ~ 0
CH1_IN
$Comp
L power:+15V #PWR0107
U 1 1 60128EF2
P 3100 9350
F 0 "#PWR0107" H 3100 9200 50  0001 C CNN
F 1 "+15V" H 3115 9523 50  0000 C CNN
F 2 "" H 3100 9350 50  0001 C CNN
F 3 "" H 3100 9350 50  0001 C CNN
	1    3100 9350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 9450 3250 9400
Wire Wire Line
	3250 9400 3100 9400
Wire Wire Line
	3100 9400 3100 9350
$Comp
L power:+5V #PWR0108
U 1 1 60134492
P 3500 9350
F 0 "#PWR0108" H 3500 9200 50  0001 C CNN
F 1 "+5V" H 3515 9523 50  0000 C CNN
F 2 "" H 3500 9350 50  0001 C CNN
F 3 "" H 3500 9350 50  0001 C CNN
	1    3500 9350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 9450 3350 9400
Wire Wire Line
	3350 9400 3500 9400
Wire Wire Line
	3500 9400 3500 9350
$Comp
L power:GND #PWR0109
U 1 1 6013D83E
P 3100 10550
F 0 "#PWR0109" H 3100 10300 50  0001 C CNN
F 1 "GND" H 3105 10377 50  0000 C CNN
F 2 "" H 3100 10550 50  0001 C CNN
F 3 "" H 3100 10550 50  0001 C CNN
	1    3100 10550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 10550 3100 10500
Wire Wire Line
	3100 10500 3250 10500
Wire Wire Line
	3250 10500 3250 10450
$Comp
L power:-15V #PWR0110
U 1 1 60149D4A
P 3500 10550
F 0 "#PWR0110" H 3500 10650 50  0001 C CNN
F 1 "-15V" H 3515 10723 50  0000 C CNN
F 2 "" H 3500 10550 50  0001 C CNN
F 3 "" H 3500 10550 50  0001 C CNN
	1    3500 10550
	-1   0    0    1   
$EndComp
Wire Wire Line
	3500 10550 3500 10500
Wire Wire Line
	3500 10500 3350 10500
Wire Wire Line
	3350 10500 3350 10450
$Comp
L power:+15V #PWR0111
U 1 1 60159DB7
P 3850 9350
F 0 "#PWR0111" H 3850 9200 50  0001 C CNN
F 1 "+15V" H 3865 9523 50  0000 C CNN
F 2 "" H 3850 9350 50  0001 C CNN
F 3 "" H 3850 9350 50  0001 C CNN
	1    3850 9350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 9450 4000 9400
Wire Wire Line
	4000 9400 3850 9400
Wire Wire Line
	3850 9400 3850 9350
$Comp
L power:+5V #PWR0112
U 1 1 60159DC0
P 4250 9350
F 0 "#PWR0112" H 4250 9200 50  0001 C CNN
F 1 "+5V" H 4265 9523 50  0000 C CNN
F 2 "" H 4250 9350 50  0001 C CNN
F 3 "" H 4250 9350 50  0001 C CNN
	1    4250 9350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 9450 4100 9400
Wire Wire Line
	4100 9400 4250 9400
Wire Wire Line
	4250 9400 4250 9350
$Comp
L power:GND #PWR0113
U 1 1 60163D5E
P 3850 10550
F 0 "#PWR0113" H 3850 10300 50  0001 C CNN
F 1 "GND" H 3855 10377 50  0000 C CNN
F 2 "" H 3850 10550 50  0001 C CNN
F 3 "" H 3850 10550 50  0001 C CNN
	1    3850 10550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 10550 3850 10500
Wire Wire Line
	3850 10500 4000 10500
Wire Wire Line
	4000 10500 4000 10450
$Comp
L power:-15V #PWR0114
U 1 1 60163D67
P 4250 10550
F 0 "#PWR0114" H 4250 10650 50  0001 C CNN
F 1 "-15V" H 4265 10723 50  0000 C CNN
F 2 "" H 4250 10550 50  0001 C CNN
F 3 "" H 4250 10550 50  0001 C CNN
	1    4250 10550
	-1   0    0    1   
$EndComp
Wire Wire Line
	4250 10550 4250 10500
Wire Wire Line
	4250 10500 4100 10500
Wire Wire Line
	4100 10500 4100 10450
$Comp
L power:GND #PWR0115
U 1 1 6016CF54
P 4700 10550
F 0 "#PWR0115" H 4700 10300 50  0001 C CNN
F 1 "GND" H 4705 10377 50  0000 C CNN
F 2 "" H 4700 10550 50  0001 C CNN
F 3 "" H 4700 10550 50  0001 C CNN
	1    4700 10550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 10550 4700 10500
Wire Wire Line
	4700 10500 4850 10500
Wire Wire Line
	4850 10500 4850 10450
$Comp
L power:-15V #PWR0116
U 1 1 6016CF5D
P 5100 10550
F 0 "#PWR0116" H 5100 10650 50  0001 C CNN
F 1 "-15V" H 5115 10723 50  0000 C CNN
F 2 "" H 5100 10550 50  0001 C CNN
F 3 "" H 5100 10550 50  0001 C CNN
	1    5100 10550
	-1   0    0    1   
$EndComp
Wire Wire Line
	5100 10550 5100 10500
Wire Wire Line
	5100 10500 4950 10500
Wire Wire Line
	4950 10500 4950 10450
$Comp
L power:+15V #PWR0117
U 1 1 60177A9C
P 4700 9350
F 0 "#PWR0117" H 4700 9200 50  0001 C CNN
F 1 "+15V" H 4715 9523 50  0000 C CNN
F 2 "" H 4700 9350 50  0001 C CNN
F 3 "" H 4700 9350 50  0001 C CNN
	1    4700 9350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 9450 4850 9400
Wire Wire Line
	4850 9400 4700 9400
Wire Wire Line
	4700 9400 4700 9350
$Comp
L power:+5V #PWR0118
U 1 1 60177AA5
P 5100 9350
F 0 "#PWR0118" H 5100 9200 50  0001 C CNN
F 1 "+5V" H 5115 9523 50  0000 C CNN
F 2 "" H 5100 9350 50  0001 C CNN
F 3 "" H 5100 9350 50  0001 C CNN
	1    5100 9350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 9450 4950 9400
Wire Wire Line
	4950 9400 5100 9400
Wire Wire Line
	5100 9400 5100 9350
Wire Wire Line
	13050 3100 13050 2200
Wire Wire Line
	12550 5850 13050 5850
Wire Wire Line
	12550 6750 13050 6750
Text Label 13050 5850 2    50   ~ 0
CH1_A1
Text Label 13050 6750 2    50   ~ 0
CH1_A0
$Comp
L Device:R R?
U 1 1 603869C1
P 1050 3050
F 0 "R?" V 843 3050 50  0000 C CNN
F 1 "R" V 934 3050 50  0000 C CNN
F 2 "" V 980 3050 50  0001 C CNN
F 3 "~" H 1050 3050 50  0001 C CNN
	1    1050 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	900  3050 850  3050
$Comp
L Device:R R?
U 1 1 6039B180
P 1250 3250
F 0 "R?" H 1320 3296 50  0000 L CNN
F 1 "R" H 1320 3205 50  0000 L CNN
F 2 "" V 1180 3250 50  0001 C CNN
F 3 "~" H 1250 3250 50  0001 C CNN
	1    1250 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 3100 1250 3050
Connection ~ 1250 3050
Wire Wire Line
	1250 3050 1200 3050
$Comp
L power:GNDA #PWR?
U 1 1 603A8CEC
P 1250 3450
F 0 "#PWR?" H 1250 3200 50  0001 C CNN
F 1 "GNDA" H 1255 3277 50  0000 C CNN
F 2 "" H 1250 3450 50  0001 C CNN
F 3 "" H 1250 3450 50  0001 C CNN
	1    1250 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 3450 1250 3400
$EndSCHEMATC
