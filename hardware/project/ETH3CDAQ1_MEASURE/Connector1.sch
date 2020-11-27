EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 15
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
L Connector_Generic:Conn_02x02_Odd_Even J701
U 1 1 5FC8AAE4
P 5200 3350
F 0 "J701" H 5250 3567 50  0000 C CNN
F 1 "Conn_02x02_Odd_Even" H 5250 3476 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x02_P2.54mm_Vertical" H 5200 3350 50  0001 C CNN
F 3 "~" H 5200 3350 50  0001 C CNN
	1    5200 3350
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J702
U 1 1 5FC8B9F5
P 6650 3450
F 0 "J702" H 6700 3767 50  0000 C CNN
F 1 "Conn_02x04_Odd_Even" H 6700 3676 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x04_P2.54mm_Vertical" H 6650 3450 50  0001 C CNN
F 3 "~" H 6650 3450 50  0001 C CNN
	1    6650 3450
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR0703
U 1 1 5FB875C1
P 6450 3350
F 0 "#PWR0703" H 6450 3100 50  0001 C CNN
F 1 "Earth" H 6450 3200 50  0001 C CNN
F 2 "" H 6450 3350 50  0001 C CNN
F 3 "~" H 6450 3350 50  0001 C CNN
	1    6450 3350
	0    1    1    0   
$EndComp
$Comp
L power:Earth #PWR0704
U 1 1 5FB87E11
P 6450 3650
F 0 "#PWR0704" H 6450 3400 50  0001 C CNN
F 1 "Earth" H 6450 3500 50  0001 C CNN
F 2 "" H 6450 3650 50  0001 C CNN
F 3 "~" H 6450 3650 50  0001 C CNN
	1    6450 3650
	0    1    1    0   
$EndComp
$Comp
L power:Earth #PWR0706
U 1 1 5FB880DB
P 6950 3650
F 0 "#PWR0706" H 6950 3400 50  0001 C CNN
F 1 "Earth" H 6950 3500 50  0001 C CNN
F 2 "" H 6950 3650 50  0001 C CNN
F 3 "~" H 6950 3650 50  0001 C CNN
	1    6950 3650
	0    -1   -1   0   
$EndComp
$Comp
L power:Earth #PWR0705
U 1 1 5FB8868B
P 6950 3350
F 0 "#PWR0705" H 6950 3100 50  0001 C CNN
F 1 "Earth" H 6950 3200 50  0001 C CNN
F 2 "" H 6950 3350 50  0001 C CNN
F 3 "~" H 6950 3350 50  0001 C CNN
	1    6950 3350
	0    -1   -1   0   
$EndComp
Text HLabel 6400 3450 0    50   BiDi ~ 0
RX+
Wire Wire Line
	6400 3450 6450 3450
Text HLabel 6400 3550 0    50   BiDi ~ 0
RX-
Wire Wire Line
	6400 3550 6450 3550
Text HLabel 7000 3450 2    50   BiDi ~ 0
TX+
Wire Wire Line
	7000 3450 6950 3450
Text HLabel 7000 3550 2    50   BiDi ~ 0
TX-
Wire Wire Line
	7000 3550 6950 3550
Text HLabel 4950 3350 0    50   BiDi ~ 0
EXT_TRIG
Text HLabel 5550 3350 2    50   BiDi ~ 0
EXT_TRIG
Wire Wire Line
	5550 3350 5500 3350
Wire Wire Line
	5000 3350 4950 3350
$Comp
L ETH3CDAQ1:GND_TRIG #PWR0701
U 1 1 5FB990E0
P 4950 3450
F 0 "#PWR0701" H 4950 3200 50  0001 C CNN
F 1 "GND_TRIG" V 4955 3322 50  0000 R CNN
F 2 "" H 4950 3450 50  0001 C CNN
F 3 "" H 4950 3450 50  0001 C CNN
	1    4950 3450
	0    1    1    0   
$EndComp
$Comp
L ETH3CDAQ1:GND_TRIG #PWR0702
U 1 1 5FB992B6
P 5550 3450
F 0 "#PWR0702" H 5550 3200 50  0001 C CNN
F 1 "GND_TRIG" V 5555 3322 50  0000 R CNN
F 2 "" H 5550 3450 50  0001 C CNN
F 3 "" H 5550 3450 50  0001 C CNN
	1    5550 3450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5550 3450 5500 3450
Wire Wire Line
	5000 3450 4950 3450
$EndSCHEMATC
