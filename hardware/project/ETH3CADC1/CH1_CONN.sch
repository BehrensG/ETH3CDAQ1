EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 10 15
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
L Connector_Generic:Conn_02x10_Odd_Even J1001
U 1 1 60C21FE5
P 5550 3450
F 0 "J1001" H 5600 4067 50  0000 C CNN
F 1 "Conn_02x10_Odd_Even" H 5600 3976 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x10_P2.54mm_Vertical" H 5550 3450 50  0001 C CNN
F 3 "~" H 5550 3450 50  0001 C CNN
	1    5550 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01001
U 1 1 602209FD
P 5350 3050
F 0 "#PWR01001" H 5350 2800 50  0001 C CNN
F 1 "GND" V 5355 2922 50  0000 R CNN
F 2 "" H 5350 3050 50  0001 C CNN
F 3 "" H 5350 3050 50  0001 C CNN
	1    5350 3050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR01002
U 1 1 60220E99
P 5350 3150
F 0 "#PWR01002" H 5350 2900 50  0001 C CNN
F 1 "GND" V 5355 3022 50  0000 R CNN
F 2 "" H 5350 3150 50  0001 C CNN
F 3 "" H 5350 3150 50  0001 C CNN
	1    5350 3150
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR01003
U 1 1 60222DE0
P 5350 3350
F 0 "#PWR01003" H 5350 3100 50  0001 C CNN
F 1 "GND" V 5355 3222 50  0000 R CNN
F 2 "" H 5350 3350 50  0001 C CNN
F 3 "" H 5350 3350 50  0001 C CNN
	1    5350 3350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR01007
U 1 1 60223109
P 5850 3350
F 0 "#PWR01007" H 5850 3100 50  0001 C CNN
F 1 "GND" V 5855 3222 50  0000 R CNN
F 2 "" H 5850 3350 50  0001 C CNN
F 3 "" H 5850 3350 50  0001 C CNN
	1    5850 3350
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR01004
U 1 1 60223752
P 5350 3650
F 0 "#PWR01004" H 5350 3400 50  0001 C CNN
F 1 "GND" V 5355 3522 50  0000 R CNN
F 2 "" H 5350 3650 50  0001 C CNN
F 3 "" H 5350 3650 50  0001 C CNN
	1    5350 3650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR01008
U 1 1 60223BA8
P 5850 3650
F 0 "#PWR01008" H 5850 3400 50  0001 C CNN
F 1 "GND" V 5855 3522 50  0000 R CNN
F 2 "" H 5850 3650 50  0001 C CNN
F 3 "" H 5850 3650 50  0001 C CNN
	1    5850 3650
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR01005
U 1 1 6022456D
P 5350 3750
F 0 "#PWR01005" H 5350 3600 50  0001 C CNN
F 1 "+3.3V" V 5350 3900 50  0000 L CNN
F 2 "" H 5350 3750 50  0001 C CNN
F 3 "" H 5350 3750 50  0001 C CNN
	1    5350 3750
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR01009
U 1 1 60224CD0
P 5850 3750
F 0 "#PWR01009" H 5850 3600 50  0001 C CNN
F 1 "+3.3V" V 5850 3900 50  0000 L CNN
F 2 "" H 5850 3750 50  0001 C CNN
F 3 "" H 5850 3750 50  0001 C CNN
	1    5850 3750
	0    1    1    0   
$EndComp
NoConn ~ 5350 3850
$Comp
L power:+5V #PWR01010
U 1 1 6022B65E
P 5850 3850
F 0 "#PWR01010" H 5850 3700 50  0001 C CNN
F 1 "+5V" V 5850 4000 50  0000 L CNN
F 2 "" H 5850 3850 50  0001 C CNN
F 3 "" H 5850 3850 50  0001 C CNN
	1    5850 3850
	0    1    1    0   
$EndComp
Wire Wire Line
	5850 3450 5900 3450
Wire Wire Line
	5900 3450 5900 3550
Wire Wire Line
	5900 3550 5850 3550
Wire Wire Line
	5350 3550 5300 3550
Wire Wire Line
	5300 3550 5300 3450
Wire Wire Line
	5300 3450 5350 3450
Text HLabel 5950 3450 2    50   Output ~ 0
ADIN1
Wire Wire Line
	5950 3450 5900 3450
Connection ~ 5900 3450
Text HLabel 5250 3450 0    50   Output ~ 0
ADIN1
Wire Wire Line
	5250 3450 5300 3450
Connection ~ 5300 3450
$Comp
L ETH3CDAQ1:+18VF #PWR01011
U 1 1 5FE8BDA6
P 5850 3950
F 0 "#PWR01011" H 5850 3800 50  0001 C CNN
F 1 "+18VF" V 5850 4100 50  0000 L CNN
F 2 "" H 5850 3950 50  0001 C CNN
F 3 "" H 5850 3950 50  0001 C CNN
	1    5850 3950
	0    1    1    0   
$EndComp
$Comp
L ETH3CDAQ1:-18VF #PWR01006
U 1 1 5FE8C7FC
P 5350 3950
F 0 "#PWR01006" H 5350 3800 50  0001 C CNN
F 1 "-18VF" V 5350 4100 50  0000 L CNN
F 2 "" H 5350 3950 50  0001 C CNN
F 3 "" H 5350 3950 50  0001 C CNN
	1    5350 3950
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
