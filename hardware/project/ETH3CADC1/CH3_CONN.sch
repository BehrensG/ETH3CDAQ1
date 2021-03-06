EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 11 17
Title "CH3 Connector"
Date "2021-01-31"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_02x10_Odd_Even J?
U 1 1 60C2783C
P 5700 3600
AR Path="/60C206FB/60C2783C" Ref="J?"  Part="1" 
AR Path="/60C27246/60C2783C" Ref="J1101"  Part="1" 
F 0 "J1101" H 5750 4217 50  0000 C CNN
F 1 "Conn_02x10_Odd_Even" H 5750 4126 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x10_P2.54mm_Vertical" H 5700 3600 50  0001 C CNN
F 3 "~" H 5700 3600 50  0001 C CNN
	1    5700 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60626C67
P 5500 3200
AR Path="/60C206FB/60626C67" Ref="#PWR?"  Part="1" 
AR Path="/60C27246/60626C67" Ref="#PWR01101"  Part="1" 
F 0 "#PWR01101" H 5500 2950 50  0001 C CNN
F 1 "GND" V 5505 3072 50  0000 R CNN
F 2 "" H 5500 3200 50  0001 C CNN
F 3 "" H 5500 3200 50  0001 C CNN
	1    5500 3200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60626C6D
P 5500 3300
AR Path="/60C206FB/60626C6D" Ref="#PWR?"  Part="1" 
AR Path="/60C27246/60626C6D" Ref="#PWR01102"  Part="1" 
F 0 "#PWR01102" H 5500 3050 50  0001 C CNN
F 1 "GND" V 5505 3172 50  0000 R CNN
F 2 "" H 5500 3300 50  0001 C CNN
F 3 "" H 5500 3300 50  0001 C CNN
	1    5500 3300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60626C73
P 5500 3500
AR Path="/60C206FB/60626C73" Ref="#PWR?"  Part="1" 
AR Path="/60C27246/60626C73" Ref="#PWR01103"  Part="1" 
F 0 "#PWR01103" H 5500 3250 50  0001 C CNN
F 1 "GND" V 5505 3372 50  0000 R CNN
F 2 "" H 5500 3500 50  0001 C CNN
F 3 "" H 5500 3500 50  0001 C CNN
	1    5500 3500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60626C79
P 6000 3500
AR Path="/60C206FB/60626C79" Ref="#PWR?"  Part="1" 
AR Path="/60C27246/60626C79" Ref="#PWR01107"  Part="1" 
F 0 "#PWR01107" H 6000 3250 50  0001 C CNN
F 1 "GND" V 6005 3372 50  0000 R CNN
F 2 "" H 6000 3500 50  0001 C CNN
F 3 "" H 6000 3500 50  0001 C CNN
	1    6000 3500
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60626C7F
P 5500 3800
AR Path="/60C206FB/60626C7F" Ref="#PWR?"  Part="1" 
AR Path="/60C27246/60626C7F" Ref="#PWR01104"  Part="1" 
F 0 "#PWR01104" H 5500 3550 50  0001 C CNN
F 1 "GND" V 5505 3672 50  0000 R CNN
F 2 "" H 5500 3800 50  0001 C CNN
F 3 "" H 5500 3800 50  0001 C CNN
	1    5500 3800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60626C85
P 6000 3800
AR Path="/60C206FB/60626C85" Ref="#PWR?"  Part="1" 
AR Path="/60C27246/60626C85" Ref="#PWR01108"  Part="1" 
F 0 "#PWR01108" H 6000 3550 50  0001 C CNN
F 1 "GND" V 6005 3672 50  0000 R CNN
F 2 "" H 6000 3800 50  0001 C CNN
F 3 "" H 6000 3800 50  0001 C CNN
	1    6000 3800
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 60626C8B
P 5500 3900
AR Path="/60C206FB/60626C8B" Ref="#PWR?"  Part="1" 
AR Path="/60C27246/60626C8B" Ref="#PWR01105"  Part="1" 
F 0 "#PWR01105" H 5500 3750 50  0001 C CNN
F 1 "+3.3V" V 5500 4050 50  0000 L CNN
F 2 "" H 5500 3900 50  0001 C CNN
F 3 "" H 5500 3900 50  0001 C CNN
	1    5500 3900
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 60626C91
P 6000 3900
AR Path="/60C206FB/60626C91" Ref="#PWR?"  Part="1" 
AR Path="/60C27246/60626C91" Ref="#PWR01109"  Part="1" 
F 0 "#PWR01109" H 6000 3750 50  0001 C CNN
F 1 "+3.3V" V 6000 4050 50  0000 L CNN
F 2 "" H 6000 3900 50  0001 C CNN
F 3 "" H 6000 3900 50  0001 C CNN
	1    6000 3900
	0    1    1    0   
$EndComp
NoConn ~ 5500 4000
$Comp
L power:+5V #PWR?
U 1 1 60626C98
P 6000 4000
AR Path="/60C206FB/60626C98" Ref="#PWR?"  Part="1" 
AR Path="/60C27246/60626C98" Ref="#PWR01110"  Part="1" 
F 0 "#PWR01110" H 6000 3850 50  0001 C CNN
F 1 "+5V" V 6000 4150 50  0000 L CNN
F 2 "" H 6000 4000 50  0001 C CNN
F 3 "" H 6000 4000 50  0001 C CNN
	1    6000 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	6000 3600 6050 3600
Wire Wire Line
	6050 3600 6050 3700
Wire Wire Line
	6050 3700 6000 3700
Wire Wire Line
	5500 3700 5450 3700
Wire Wire Line
	5450 3700 5450 3600
Wire Wire Line
	5450 3600 5500 3600
Text HLabel 6100 3600 2    50   Output ~ 0
ADIN3
Wire Wire Line
	6100 3600 6050 3600
Connection ~ 6050 3600
Text HLabel 5400 3600 0    50   Output ~ 0
ADIN3
Wire Wire Line
	5400 3600 5450 3600
Connection ~ 5450 3600
$Comp
L ETH3CDAQ1:+18VF #PWR?
U 1 1 60626CAA
P 6000 4100
AR Path="/60C206FB/60626CAA" Ref="#PWR?"  Part="1" 
AR Path="/60C27246/60626CAA" Ref="#PWR01111"  Part="1" 
F 0 "#PWR01111" H 6000 3950 50  0001 C CNN
F 1 "+18VF" V 6000 4250 50  0000 L CNN
F 2 "" H 6000 4100 50  0001 C CNN
F 3 "" H 6000 4100 50  0001 C CNN
	1    6000 4100
	0    1    1    0   
$EndComp
$Comp
L ETH3CDAQ1:-18VF #PWR?
U 1 1 60626CB0
P 5500 4100
AR Path="/60C206FB/60626CB0" Ref="#PWR?"  Part="1" 
AR Path="/60C27246/60626CB0" Ref="#PWR01106"  Part="1" 
F 0 "#PWR01106" H 5500 3950 50  0001 C CNN
F 1 "-18VF" V 5500 4250 50  0000 L CNN
F 2 "" H 5500 4100 50  0001 C CNN
F 3 "" H 5500 4100 50  0001 C CNN
	1    5500 4100
	0    -1   -1   0   
$EndComp
Text HLabel 5500 3400 0    50   BiDi ~ 0
CANH
Text HLabel 6000 3400 2    50   BiDi ~ 0
CANL
Text HLabel 6000 3200 2    50   BiDi ~ 0
I2C_SCL
Text HLabel 6000 3300 2    50   BiDi ~ 0
I2C_SDA
$EndSCHEMATC
