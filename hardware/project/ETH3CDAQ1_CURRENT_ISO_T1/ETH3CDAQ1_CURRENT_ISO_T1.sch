EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L Connector_Generic:Conn_02x10_Odd_Even J2
U 1 1 5FC09F6C
P 10100 4000
F 0 "J2" H 10150 4617 50  0000 C CNN
F 1 "Conn_02x10_Odd_Even" H 10150 4526 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x10_P2.54mm_Vertical" H 10100 4000 50  0001 C CNN
F 3 "~" H 10100 4000 50  0001 C CNN
	1    10100 4000
	1    0    0    -1  
$EndComp
$Comp
L ETH3CDAQ1:T60404-N4646-X400 U3
U 1 1 5FC0FA47
P 3300 2950
F 0 "U3" H 3300 3537 60  0000 C CNN
F 1 "T60404-N4646-X400" H 3300 3431 60  0000 C CNN
F 2 "" H 3100 2950 60  0001 C CNN
F 3 "" H 3100 2950 60  0001 C CNN
	1    3300 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 2850 2600 2850
Wire Wire Line
	2600 2850 2600 2750
Wire Wire Line
	2600 2650 2650 2650
Wire Wire Line
	2650 2750 2600 2750
Connection ~ 2600 2750
Wire Wire Line
	2600 2750 2600 2650
Wire Wire Line
	2650 3050 2600 3050
Wire Wire Line
	2600 3050 2600 3150
Wire Wire Line
	2600 3250 2650 3250
Wire Wire Line
	2650 3150 2600 3150
Connection ~ 2600 3150
Wire Wire Line
	2600 3150 2600 3250
$Comp
L Device:Varistor RV1
U 1 1 5FC11AF4
P 2100 2950
F 0 "RV1" H 2203 2996 50  0000 L CNN
F 1 "B72660M" H 2203 2905 50  0000 L CNN
F 2 "" V 2030 2950 50  0001 C CNN
F 3 "~" H 2100 2950 50  0001 C CNN
	1    2100 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 2750 2100 2750
Wire Wire Line
	2100 2750 2100 2800
Wire Wire Line
	2100 3100 2100 3150
Wire Wire Line
	2100 3150 2600 3150
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 5FC1305F
P 1250 2900
F 0 "J1" H 1168 3117 50  0000 C CNN
F 1 "PC 5/2-G-7.62" H 1168 3026 50  0000 C CNN
F 2 "" H 1250 2900 50  0001 C CNN
F 3 "~" H 1250 2900 50  0001 C CNN
	1    1250 2900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1450 3000 1750 3000
Wire Wire Line
	1750 3150 2100 3150
Wire Wire Line
	1750 3000 1750 3150
Connection ~ 2100 3150
Wire Wire Line
	1450 2900 1750 2900
Wire Wire Line
	1750 2900 1750 2750
Wire Wire Line
	1750 2750 2100 2750
Connection ~ 2100 2750
$Comp
L power:+15V #PWR07
U 1 1 5FC16288
P 3950 2850
F 0 "#PWR07" H 3950 2700 50  0001 C CNN
F 1 "+15V" V 3950 3000 50  0000 L CNN
F 2 "" H 3950 2850 50  0001 C CNN
F 3 "" H 3950 2850 50  0001 C CNN
	1    3950 2850
	0    1    1    0   
$EndComp
$Comp
L power:-15V #PWR08
U 1 1 5FC1737D
P 3950 3150
F 0 "#PWR08" H 3950 3250 50  0001 C CNN
F 1 "-15V" V 3950 3300 50  0000 L CNN
F 2 "" H 3950 3150 50  0001 C CNN
F 3 "" H 3950 3150 50  0001 C CNN
	1    3950 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	3950 2650 4450 2650
Text Label 4450 2650 2    50   ~ 0
Is
$Comp
L Device:R R1
U 1 1 5FC1D20B
P 5250 2850
F 0 "R1" H 5320 2896 50  0000 L CNN
F 1 "22" H 5320 2805 50  0000 L CNN
F 2 "" V 5180 2850 50  0001 C CNN
F 3 "~" H 5250 2850 50  0001 C CNN
	1    5250 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5FC1DE1F
P 5650 2850
F 0 "C6" H 5765 2896 50  0000 L CNN
F 1 "C" H 5765 2805 50  0000 L CNN
F 2 "" H 5688 2700 50  0001 C CNN
F 3 "~" H 5650 2850 50  0001 C CNN
	1    5650 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5FC1E7BE
P 5250 3100
F 0 "#PWR09" H 5250 2850 50  0001 C CNN
F 1 "GND" H 5255 2927 50  0000 C CNN
F 2 "" H 5250 3100 50  0001 C CNN
F 3 "" H 5250 3100 50  0001 C CNN
	1    5250 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 3000 5250 3050
Wire Wire Line
	5250 3050 5650 3050
Wire Wire Line
	5650 3050 5650 3000
Wire Wire Line
	5250 3100 5250 3050
Connection ~ 5250 3050
Wire Wire Line
	5250 2700 5250 2650
Wire Wire Line
	5250 2650 5650 2650
Wire Wire Line
	5650 2650 5650 2700
Wire Wire Line
	5250 2650 5000 2650
Connection ~ 5250 2650
Text Label 5000 2650 0    50   ~ 0
Is
$Comp
L Device:R R3
U 1 1 5FC22051
P 5950 2650
F 0 "R3" V 5743 2650 50  0000 C CNN
F 1 "0" V 5834 2650 50  0000 C CNN
F 2 "" V 5880 2650 50  0001 C CNN
F 3 "~" H 5950 2650 50  0001 C CNN
	1    5950 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	5800 2650 5650 2650
Connection ~ 5650 2650
Wire Wire Line
	6100 2650 6300 2650
Text Label 6300 2650 2    50   ~ 0
Vs1
Text Notes 5000 2400 0    50   ~ 0
OPTION A
$Comp
L Device:R R2
U 1 1 5FC23A44
P 5500 4450
F 0 "R2" V 5293 4450 50  0000 C CNN
F 1 "R" V 5384 4450 50  0000 C CNN
F 2 "" V 5430 4450 50  0001 C CNN
F 3 "~" H 5500 4450 50  0001 C CNN
	1    5500 4450
	0    1    1    0   
$EndComp
$Comp
L Device:C C5
U 1 1 5FC24497
P 5500 4050
F 0 "C5" V 5248 4050 50  0000 C CNN
F 1 "C" V 5339 4050 50  0000 C CNN
F 2 "" H 5538 3900 50  0001 C CNN
F 3 "~" H 5500 4050 50  0001 C CNN
	1    5500 4050
	0    1    1    0   
$EndComp
$Comp
L ETH3CDAQ1:PCA9557PW U7
U 1 1 5FC25841
P 10050 1450
F 0 "U7" H 10400 2150 60  0000 C CNN
F 1 "PCA9557PW" H 10400 2000 60  0000 C CNN
F 2 "" H 10050 1450 60  0001 C CNN
F 3 "" H 10050 1450 60  0001 C CNN
	1    10050 1450
	1    0    0    -1  
$EndComp
NoConn ~ 9500 1100
$Comp
L power:GND #PWR016
U 1 1 5FC26DC0
P 10050 2100
F 0 "#PWR016" H 10050 1850 50  0001 C CNN
F 1 "GND" H 10055 1927 50  0000 C CNN
F 2 "" H 10050 2100 50  0001 C CNN
F 3 "" H 10050 2100 50  0001 C CNN
	1    10050 2100
	1    0    0    -1  
$EndComp
$Comp
L Memory_EEPROM:24LC08 U6
U 1 1 5FC27944
P 7750 1200
F 0 "U6" H 8150 1550 50  0000 C CNN
F 1 "24LC08B-E/MS" H 8150 1450 50  0000 C CNN
F 2 "" H 7750 1200 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21710J.pdf" H 7750 1200 50  0001 C CNN
	1    7750 1200
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR010
U 1 1 5FC2878D
P 7750 900
F 0 "#PWR010" H 7750 750 50  0001 C CNN
F 1 "+3.3V" H 7765 1073 50  0000 C CNN
F 2 "" H 7750 900 50  0001 C CNN
F 3 "" H 7750 900 50  0001 C CNN
	1    7750 900 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5FC28F0C
P 7750 1500
F 0 "#PWR011" H 7750 1250 50  0001 C CNN
F 1 "GND" H 7755 1327 50  0000 C CNN
F 2 "" H 7750 1500 50  0001 C CNN
F 3 "" H 7750 1500 50  0001 C CNN
	1    7750 1500
	1    0    0    -1  
$EndComp
Text Label 9000 1200 0    50   ~ 0
EEPROM_WP
Wire Wire Line
	9500 1200 9000 1200
Text Label 9750 3600 0    50   ~ 0
A0
Wire Wire Line
	9750 3600 9900 3600
Text Label 9750 3700 0    50   ~ 0
A1
Wire Wire Line
	9750 3700 9900 3700
Text Label 9750 3800 0    50   ~ 0
A2
Wire Wire Line
	9750 3800 9900 3800
Text Label 8650 1300 2    50   ~ 0
EEPROM_WP
Wire Wire Line
	8150 1300 8650 1300
Text Label 10750 1600 2    50   ~ 0
A0
Wire Wire Line
	10750 1600 10600 1600
Text Label 10750 1700 2    50   ~ 0
A1
Wire Wire Line
	10750 1700 10600 1700
Text Label 10750 1800 2    50   ~ 0
A2
Wire Wire Line
	10750 1800 10600 1800
$Comp
L power:+3.3V #PWR015
U 1 1 5FC34F96
P 10050 800
F 0 "#PWR015" H 10050 650 50  0001 C CNN
F 1 "+3.3V" H 10065 973 50  0000 C CNN
F 2 "" H 10050 800 50  0001 C CNN
F 3 "" H 10050 800 50  0001 C CNN
	1    10050 800 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5FC3610C
P 9900 4200
F 0 "#PWR012" H 9900 3950 50  0001 C CNN
F 1 "GND" V 9900 4050 50  0000 R CNN
F 2 "" H 9900 4200 50  0001 C CNN
F 3 "" H 9900 4200 50  0001 C CNN
	1    9900 4200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR020
U 1 1 5FC36471
P 10400 4200
F 0 "#PWR020" H 10400 3950 50  0001 C CNN
F 1 "GND" V 10400 4050 50  0000 R CNN
F 2 "" H 10400 4200 50  0001 C CNN
F 3 "" H 10400 4200 50  0001 C CNN
	1    10400 4200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9900 4100 9850 4100
Wire Wire Line
	9850 4100 9850 4000
Wire Wire Line
	9850 3900 9900 3900
Wire Wire Line
	9900 4000 9850 4000
Connection ~ 9850 4000
Wire Wire Line
	9850 4000 9850 3900
Text Label 9350 4000 0    50   ~ 0
ANALOG_OUT
Wire Wire Line
	9850 4000 9350 4000
Wire Wire Line
	10400 4100 10450 4100
Wire Wire Line
	10450 4100 10450 4000
Wire Wire Line
	10450 3900 10400 3900
Wire Wire Line
	10400 4000 10450 4000
Connection ~ 10450 4000
Wire Wire Line
	10450 4000 10450 3900
Text Label 10950 4000 2    50   ~ 0
ANALOG_OUT
Wire Wire Line
	10450 4000 10950 4000
NoConn ~ 9900 4400
$Comp
L power:+3.3V #PWR013
U 1 1 5FC3BFC8
P 9900 4300
F 0 "#PWR013" H 9900 4150 50  0001 C CNN
F 1 "+3.3V" V 9900 4450 50  0000 L CNN
F 2 "" H 9900 4300 50  0001 C CNN
F 3 "" H 9900 4300 50  0001 C CNN
	1    9900 4300
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR021
U 1 1 5FC3C665
P 10400 4300
F 0 "#PWR021" H 10400 4150 50  0001 C CNN
F 1 "+3.3V" V 10400 4450 50  0000 L CNN
F 2 "" H 10400 4300 50  0001 C CNN
F 3 "" H 10400 4300 50  0001 C CNN
	1    10400 4300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR019
U 1 1 5FC3CF72
P 10400 3800
F 0 "#PWR019" H 10400 3550 50  0001 C CNN
F 1 "GND" V 10400 3650 50  0000 R CNN
F 2 "" H 10400 3800 50  0001 C CNN
F 3 "" H 10400 3800 50  0001 C CNN
	1    10400 3800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10400 3600 10700 3600
Text Label 10700 3600 2    50   ~ 0
I2C_SCL
Wire Wire Line
	10400 3700 10700 3700
Text Label 10700 3700 2    50   ~ 0
I2C_SDA
Text Label 8650 1200 2    50   ~ 0
I2C_SCL
Text Label 8650 1100 2    50   ~ 0
I2C_SDA
Wire Wire Line
	8150 1100 8650 1100
Wire Wire Line
	8150 1200 8650 1200
Wire Wire Line
	10600 1300 10900 1300
Text Label 10900 1300 2    50   ~ 0
I2C_SCL
Wire Wire Line
	10600 1400 10900 1400
Text Label 10900 1400 2    50   ~ 0
I2C_SDA
Text Label 7200 1100 0    50   ~ 0
A0
Wire Wire Line
	7200 1100 7350 1100
Text Label 7200 1200 0    50   ~ 0
A1
Wire Wire Line
	7200 1200 7350 1200
Text Label 7200 1300 0    50   ~ 0
A2
Wire Wire Line
	7200 1300 7350 1300
Wire Wire Line
	10600 1100 10900 1100
Text Label 10900 1100 2    50   ~ 0
nRESET
Text Label 10450 5350 2    50   ~ 0
nRESET
$Comp
L Device:R R4
U 1 1 5FC49107
P 10050 5150
F 0 "R4" H 10120 5196 50  0000 L CNN
F 1 "10k" H 10120 5105 50  0000 L CNN
F 2 "" V 9980 5150 50  0001 C CNN
F 3 "~" H 10050 5150 50  0001 C CNN
	1    10050 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 5350 10050 5300
Wire Wire Line
	10050 5350 10450 5350
$Comp
L Device:C C7
U 1 1 5FC4ABF7
P 10050 5550
F 0 "C7" H 10165 5596 50  0000 L CNN
F 1 "100n" H 10165 5505 50  0000 L CNN
F 2 "" H 10088 5400 50  0001 C CNN
F 3 "~" H 10050 5550 50  0001 C CNN
	1    10050 5550
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR017
U 1 1 5FC4B1A3
P 10050 5000
F 0 "#PWR017" H 10050 4850 50  0001 C CNN
F 1 "+3.3V" H 10065 5173 50  0000 C CNN
F 2 "" H 10050 5000 50  0001 C CNN
F 3 "" H 10050 5000 50  0001 C CNN
	1    10050 5000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR018
U 1 1 5FC4B8D5
P 10050 5700
F 0 "#PWR018" H 10050 5450 50  0001 C CNN
F 1 "GND" H 10055 5527 50  0000 C CNN
F 2 "" H 10050 5700 50  0001 C CNN
F 3 "" H 10050 5700 50  0001 C CNN
	1    10050 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 5400 10050 5350
Connection ~ 10050 5350
NoConn ~ 10400 4400
$Comp
L ETH3CDAQ1:-18V #PWR014
U 1 1 5FC529D4
P 9900 4500
F 0 "#PWR014" H 9900 4350 50  0001 C CNN
F 1 "-18V" V 9900 4650 50  0000 L CNN
F 2 "" H 9900 4500 50  0001 C CNN
F 3 "" H 9900 4500 50  0001 C CNN
	1    9900 4500
	0    -1   -1   0   
$EndComp
$Comp
L ETH3CDAQ1:+18V #PWR022
U 1 1 5FC533A9
P 10400 4500
F 0 "#PWR022" H 10400 4350 50  0001 C CNN
F 1 "+18V" V 10400 4650 50  0000 L CNN
F 2 "" H 10400 4500 50  0001 C CNN
F 3 "" H 10400 4500 50  0001 C CNN
	1    10400 4500
	0    1    1    0   
$EndComp
$Comp
L Regulator_Linear:L78L15_SOT89 U1
U 1 1 5FC5479B
P 1700 6100
F 0 "U1" H 1700 6342 50  0000 C CNN
F 1 "L78L15_SOT89" H 1700 6251 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-89-3" H 1700 6300 50  0001 C CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/15/55/e5/aa/23/5b/43/fd/CD00000446.pdf/files/CD00000446.pdf/jcr:content/translations/en.CD00000446.pdf" H 1700 6050 50  0001 C CNN
	1    1700 6100
	-1   0    0    -1  
$EndComp
$Comp
L Regulator_Linear:L79L15_SOT89 U2
U 1 1 5FC55993
P 1700 7000
F 0 "U2" H 1700 6851 50  0000 C CNN
F 1 "L79L15_SOT89" H 1700 6760 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-89-3" H 1700 6800 50  0001 C CIN
F 3 "http://www.farnell.com/datasheets/1827870.pdf" H 1700 7000 50  0001 C CNN
	1    1700 7000
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5FC5C1FE
P 2400 6350
F 0 "C3" H 2515 6396 50  0000 L CNN
F 1 "10u/35V" H 2515 6305 50  0000 L CNN
F 2 "" H 2438 6200 50  0001 C CNN
F 3 "~" H 2400 6350 50  0001 C CNN
	1    2400 6350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5FC5CDD0
P 1000 6350
F 0 "C1" H 1115 6396 50  0000 L CNN
F 1 "10u/35V" H 1115 6305 50  0000 L CNN
F 2 "" H 1038 6200 50  0001 C CNN
F 3 "~" H 1000 6350 50  0001 C CNN
	1    1000 6350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5FC5D5E0
P 1000 6750
F 0 "C2" H 1115 6796 50  0000 L CNN
F 1 "10u/35V" H 1115 6705 50  0000 L CNN
F 2 "" H 1038 6600 50  0001 C CNN
F 3 "~" H 1000 6750 50  0001 C CNN
	1    1000 6750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5FC5DA79
P 2400 6750
F 0 "C4" H 2515 6796 50  0000 L CNN
F 1 "10u/35V" H 2515 6705 50  0000 L CNN
F 2 "" H 2438 6600 50  0001 C CNN
F 3 "~" H 2400 6750 50  0001 C CNN
	1    2400 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 6500 1000 6550
Wire Wire Line
	2400 6550 2400 6500
Connection ~ 1000 6550
Wire Wire Line
	1000 6550 1000 6600
Wire Wire Line
	2400 6550 2400 6600
Connection ~ 2400 6550
Wire Wire Line
	1700 6700 1700 6550
Connection ~ 1700 6550
Wire Wire Line
	1700 6400 1700 6550
Wire Wire Line
	1700 6550 2400 6550
Wire Wire Line
	1000 6550 1700 6550
Wire Wire Line
	1000 6200 1000 6100
Wire Wire Line
	1000 6100 1250 6100
Wire Wire Line
	2400 6100 2400 6200
Wire Wire Line
	2000 6100 2200 6100
Wire Wire Line
	1000 6900 1000 7000
Wire Wire Line
	1000 7000 1250 7000
Wire Wire Line
	2400 7000 2400 6900
Wire Wire Line
	2000 7000 2200 7000
$Comp
L ETH3CDAQ1:+18V #PWR04
U 1 1 5FC700EA
P 2400 6050
F 0 "#PWR04" H 2400 5900 50  0001 C CNN
F 1 "+18V" H 2415 6223 50  0000 C CNN
F 2 "" H 2400 6050 50  0001 C CNN
F 3 "" H 2400 6050 50  0001 C CNN
	1    2400 6050
	1    0    0    -1  
$EndComp
$Comp
L ETH3CDAQ1:-18V #PWR05
U 1 1 5FC7103C
P 2400 7050
F 0 "#PWR05" H 2400 6900 50  0001 C CNN
F 1 "-18V" H 2415 7223 50  0000 C CNN
F 2 "" H 2400 7050 50  0001 C CNN
F 3 "" H 2400 7050 50  0001 C CNN
	1    2400 7050
	-1   0    0    1   
$EndComp
Wire Wire Line
	2400 7050 2400 7000
Connection ~ 2400 7000
Wire Wire Line
	2400 6050 2400 6100
Connection ~ 2400 6100
$Comp
L power:+15V #PWR02
U 1 1 5FC75F93
P 1000 6050
F 0 "#PWR02" H 1000 5900 50  0001 C CNN
F 1 "+15V" H 1015 6223 50  0000 C CNN
F 2 "" H 1000 6050 50  0001 C CNN
F 3 "" H 1000 6050 50  0001 C CNN
	1    1000 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 6050 1000 6100
Connection ~ 1000 6100
$Comp
L power:-15V #PWR03
U 1 1 5FC78FBE
P 1000 7050
F 0 "#PWR03" H 1000 7150 50  0001 C CNN
F 1 "-15V" H 1015 7223 50  0000 C CNN
F 2 "" H 1000 7050 50  0001 C CNN
F 3 "" H 1000 7050 50  0001 C CNN
	1    1000 7050
	-1   0    0    1   
$EndComp
Wire Wire Line
	1000 7000 1000 7050
Connection ~ 1000 7000
$Comp
L power:GND #PWR01
U 1 1 5FC84C64
P 950 6550
F 0 "#PWR01" H 950 6300 50  0001 C CNN
F 1 "GND" V 955 6422 50  0000 R CNN
F 2 "" H 950 6550 50  0001 C CNN
F 3 "" H 950 6550 50  0001 C CNN
	1    950  6550
	0    1    1    0   
$EndComp
Wire Wire Line
	950  6550 1000 6550
$Comp
L power:GND #PWR06
U 1 1 5FC87894
P 2450 6550
F 0 "#PWR06" H 2450 6300 50  0001 C CNN
F 1 "GND" V 2455 6422 50  0000 R CNN
F 2 "" H 2450 6550 50  0001 C CNN
F 3 "" H 2450 6550 50  0001 C CNN
	1    2450 6550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2450 6550 2400 6550
$Comp
L Device:Ferrite_Bead FB1
U 1 1 5FC8E291
P 1700 5650
F 0 "FB1" V 1426 5650 50  0000 C CNN
F 1 "Ferrite_Bead" V 1517 5650 50  0000 C CNN
F 2 "" V 1630 5650 50  0001 C CNN
F 3 "~" H 1700 5650 50  0001 C CNN
	1    1700 5650
	0    1    1    0   
$EndComp
Wire Wire Line
	1550 5650 1250 5650
Wire Wire Line
	1250 5650 1250 6100
Connection ~ 1250 6100
Wire Wire Line
	1250 6100 1400 6100
Wire Wire Line
	1850 5650 2200 5650
Wire Wire Line
	2200 5650 2200 6100
Connection ~ 2200 6100
Wire Wire Line
	2200 6100 2400 6100
$Comp
L Device:Ferrite_Bead FB2
U 1 1 5FC98DFF
P 1750 7450
F 0 "FB2" V 1476 7450 50  0000 C CNN
F 1 "Ferrite_Bead" V 1567 7450 50  0000 C CNN
F 2 "" V 1680 7450 50  0001 C CNN
F 3 "~" H 1750 7450 50  0001 C CNN
	1    1750 7450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1900 7450 2200 7450
Wire Wire Line
	2200 7450 2200 7000
Wire Wire Line
	1600 7450 1250 7450
Wire Wire Line
	1250 7450 1250 7000
Connection ~ 1250 7000
Wire Wire Line
	1250 7000 1400 7000
Connection ~ 2200 7000
Wire Wire Line
	2200 7000 2400 7000
$Comp
L MCU_ST_STM32F0:STM32F042K6Tx U4
U 1 1 5FCB7020
P 5750 5900
F 0 "U4" H 5750 4811 50  0000 C CNN
F 1 "STM32F042K6Tx" H 5750 4720 50  0000 C CNN
F 2 "Package_QFP:LQFP-32_7x7mm_P0.8mm" H 5350 5000 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00105814.pdf" H 5750 5900 50  0001 C CNN
	1    5750 5900
	1    0    0    -1  
$EndComp
$Comp
L Interface_CAN_LIN:MCP2551-I-SN U5
U 1 1 5FCB9237
P 7600 5550
F 0 "U5" H 7600 6131 50  0000 C CNN
F 1 "MCP2551-I-SN" H 7600 6040 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 7600 5050 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/devicedoc/21667d.pdf" H 7600 5550 50  0001 C CNN
	1    7600 5550
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 5FCBBD26
P 1800 4250
F 0 "H1" H 1900 4296 50  0000 L CNN
F 1 "MountingHole" H 1900 4205 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_DIN965_Pad" H 1800 4250 50  0001 C CNN
F 3 "~" H 1800 4250 50  0001 C CNN
	1    1800 4250
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5FCBC381
P 1800 4500
F 0 "H2" H 1900 4546 50  0000 L CNN
F 1 "MountingHole" H 1900 4455 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_DIN965_Pad" H 1800 4500 50  0001 C CNN
F 3 "~" H 1800 4500 50  0001 C CNN
	1    1800 4500
	1    0    0    -1  
$EndComp
$EndSCHEMATC
