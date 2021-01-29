EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 8 17
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
L Connector_Generic:Conn_02x02_Odd_Even J801
U 1 1 60F397AF
P 4050 2250
F 0 "J801" H 4100 2467 50  0000 C CNN
F 1 "Conn_02x02_Odd_Even" H 4100 2376 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x02_P2.54mm_Vertical" H 4050 2250 50  0001 C CNN
F 3 "~" H 4050 2250 50  0001 C CNN
	1    4050 2250
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J802
U 1 1 60F3B522
P 5650 2250
F 0 "J802" H 5700 2567 50  0000 C CNN
F 1 "Conn_02x04_Odd_Even" H 5700 2476 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x04_P2.54mm_Vertical" H 5650 2250 50  0001 C CNN
F 3 "~" H 5650 2250 50  0001 C CNN
	1    5650 2250
	1    0    0    -1  
$EndComp
Text HLabel 3850 2250 0    50   BiDi ~ 0
EXT_TRIG
Text HLabel 4350 2250 2    50   BiDi ~ 0
EXT_TRIG
$Comp
L ETH3CDAQ1:GND_TRIG #PWR0801
U 1 1 5FDB7CC9
P 3850 2350
F 0 "#PWR0801" H 3850 2100 50  0001 C CNN
F 1 "GND_TRIG" V 3855 2222 50  0000 R CNN
F 2 "" H 3850 2350 50  0001 C CNN
F 3 "" H 3850 2350 50  0001 C CNN
	1    3850 2350
	0    1    1    0   
$EndComp
$Comp
L ETH3CDAQ1:GND_TRIG #PWR0802
U 1 1 5FDB7FF2
P 4350 2350
F 0 "#PWR0802" H 4350 2100 50  0001 C CNN
F 1 "GND_TRIG" V 4355 2222 50  0000 R CNN
F 2 "" H 4350 2350 50  0001 C CNN
F 3 "" H 4350 2350 50  0001 C CNN
	1    4350 2350
	0    -1   -1   0   
$EndComp
$Comp
L power:Earth #PWR0803
U 1 1 5FDBA93E
P 5450 2150
F 0 "#PWR0803" H 5450 1900 50  0001 C CNN
F 1 "Earth" H 5450 2000 50  0001 C CNN
F 2 "" H 5450 2150 50  0001 C CNN
F 3 "~" H 5450 2150 50  0001 C CNN
	1    5450 2150
	0    1    1    0   
$EndComp
$Comp
L power:Earth #PWR0804
U 1 1 5FDBADF8
P 5450 2450
F 0 "#PWR0804" H 5450 2200 50  0001 C CNN
F 1 "Earth" H 5450 2300 50  0001 C CNN
F 2 "" H 5450 2450 50  0001 C CNN
F 3 "~" H 5450 2450 50  0001 C CNN
	1    5450 2450
	0    1    1    0   
$EndComp
$Comp
L power:Earth #PWR0806
U 1 1 5FDBB1CB
P 5950 2450
F 0 "#PWR0806" H 5950 2200 50  0001 C CNN
F 1 "Earth" H 5950 2300 50  0001 C CNN
F 2 "" H 5950 2450 50  0001 C CNN
F 3 "~" H 5950 2450 50  0001 C CNN
	1    5950 2450
	0    -1   -1   0   
$EndComp
$Comp
L power:Earth #PWR0805
U 1 1 5FDBB5A5
P 5950 2150
F 0 "#PWR0805" H 5950 1900 50  0001 C CNN
F 1 "Earth" H 5950 2000 50  0001 C CNN
F 2 "" H 5950 2150 50  0001 C CNN
F 3 "~" H 5950 2150 50  0001 C CNN
	1    5950 2150
	0    -1   -1   0   
$EndComp
Text HLabel 5950 2250 2    50   BiDi ~ 0
TX+
Text HLabel 5950 2350 2    50   BiDi ~ 0
TX-
Text HLabel 5450 2250 0    50   BiDi ~ 0
RX+
Text HLabel 5450 2350 0    50   BiDi ~ 0
RX-
$EndSCHEMATC
