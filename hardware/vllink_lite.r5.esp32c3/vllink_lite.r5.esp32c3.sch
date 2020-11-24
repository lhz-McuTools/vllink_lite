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
Wire Wire Line
	6550 5000 6550 4800
$Comp
L power:GND #PWR08
U 1 1 5DD68826
P 6550 5800
F 0 "#PWR08" H 6550 5550 50  0001 C CNN
F 1 "GND" H 6555 5627 50  0000 C CNN
F 2 "" H 6550 5800 50  0001 C CNN
F 3 "" H 6550 5800 50  0001 C CNN
	1    6550 5800
	1    0    0    -1  
$EndComp
Text Label 6550 5000 1    50   ~ 0
VCC
Wire Wire Line
	6050 5500 5750 5500
Wire Wire Line
	7350 5200 7050 5200
Wire Wire Line
	7350 5300 7050 5300
Text Label 5750 5500 0    50   ~ 0
SPI1_CLK
$Comp
L Device:R R16
U 1 1 5DD6D149
P 5750 4950
F 0 "R16" H 5820 4996 50  0000 L CNN
F 1 "10k, NC" H 5820 4905 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5680 4950 50  0001 C CNN
F 3 "~" H 5750 4950 50  0001 C CNN
	1    5750 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 5100 5750 5300
Wire Wire Line
	5750 5300 6050 5300
Wire Wire Line
	5750 4800 6550 4800
Text Label 7050 5300 0    50   ~ 0
SPI1_MISO
Text Label 7050 5200 0    50   ~ 0
SPI1_MOSI
$Comp
L Memory_Flash:W25Q32JVSS U3
U 1 1 5DD56EF8
P 6550 5400
F 0 "U3" H 6800 5800 50  0000 C CNN
F 1 "W25Q64, NC" H 6850 5000 50  0000 C CNN
F 2 "vllogic:SOIC-8_P1.27mm_Common" H 6550 5400 50  0001 C CNN
F 3 "http://www.winbond.com/resource-files/w25q32jv%20revg%2003272018%20plus.pdf" H 6550 5400 50  0001 C CNN
	1    6550 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R17
U 1 1 5F214DCE
P 7200 5500
F 0 "R17" V 7100 5400 50  0000 C CNN
F 1 "10k, NC" V 7100 5650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7130 5500 50  0001 C CNN
F 3 "~" H 7200 5500 50  0001 C CNN
	1    7200 5500
	0    1    1    0   
$EndComp
$Comp
L Device:R R18
U 1 1 5F215BE8
P 7200 5600
F 0 "R18" V 7300 5500 50  0000 C CNN
F 1 "10k, NC" V 7300 5750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7130 5600 50  0001 C CNN
F 3 "~" H 7200 5600 50  0001 C CNN
	1    7200 5600
	0    1    1    0   
$EndComp
Text Label 5750 5300 0    50   ~ 0
SPI1_CS
$Comp
L power:GND #PWR0101
U 1 1 5F22F834
P 7350 5600
F 0 "#PWR0101" H 7350 5350 50  0001 C CNN
F 1 "GND" V 7355 5472 50  0000 R CNN
F 2 "" H 7350 5600 50  0001 C CNN
F 3 "" H 7350 5600 50  0001 C CNN
	1    7350 5600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7350 5500 7350 5600
Connection ~ 7350 5600
$Comp
L Regulator_Linear:AP1117-33 U2
U 1 1 5F8D8DB2
P 3800 1100
F 0 "U2" H 3800 1342 50  0000 C CNN
F 1 "AP1117-3.3" H 3800 1251 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-89-3" H 3800 1300 50  0001 C CNN
F 3 "http://www.diodes.com/datasheets/AP1117.pdf" H 3900 850 50  0001 C CNN
	1    3800 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5F8D8DB3
P 3200 1250
F 0 "C5" H 3315 1296 50  0000 L CNN
F 1 "4.7uF" H 3315 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3238 1100 50  0001 C CNN
F 3 "~" H 3200 1250 50  0001 C CNN
	1    3200 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5F8D8DB4
P 4350 1250
F 0 "C6" H 4465 1296 50  0000 L CNN
F 1 "4.7uF" H 4465 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4388 1100 50  0001 C CNN
F 3 "~" H 4350 1250 50  0001 C CNN
	1    4350 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5F8D8DB5
P 4800 1250
F 0 "C7" H 4915 1296 50  0000 L CNN
F 1 "0.1uF" H 4915 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4838 1100 50  0001 C CNN
F 3 "~" H 4800 1250 50  0001 C CNN
	1    4800 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 1100 3500 1100
Wire Wire Line
	4100 1100 4350 1100
Connection ~ 4350 1100
Wire Wire Line
	4350 1100 4800 1100
Wire Wire Line
	4800 1400 4350 1400
Connection ~ 3800 1400
Wire Wire Line
	3800 1400 3200 1400
Connection ~ 4350 1400
Wire Wire Line
	4350 1400 3800 1400
$Comp
L power:GND #PWR07
U 1 1 5F8D8DB6
P 3800 1400
F 0 "#PWR07" H 3800 1150 50  0001 C CNN
F 1 "GND" H 3805 1227 50  0000 C CNN
F 2 "" H 3800 1400 50  0001 C CNN
F 3 "" H 3800 1400 50  0001 C CNN
	1    3800 1400
	1    0    0    -1  
$EndComp
Text Label 3200 1100 0    50   ~ 0
USB_5V
Text Label 4350 1100 0    50   ~ 0
VCC
Text Label 2400 1050 0    50   ~ 0
USB_5V
$Comp
L Device:R R6
U 1 1 5E5F9031
P 2250 1750
F 0 "R6" V 2150 1650 50  0000 C CNN
F 1 "22" V 2150 1800 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2180 1750 50  0001 C CNN
F 3 "~" H 2250 1750 50  0001 C CNN
	1    2250 1750
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5E5F9AD9
P 2250 1250
F 0 "R3" V 2200 1050 50  0000 C CNN
F 1 "5.1k" V 2200 1450 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2180 1250 50  0001 C CNN
F 3 "~" H 2250 1250 50  0001 C CNN
	1    2250 1250
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5E5FA509
P 2250 1350
F 0 "R4" V 2200 1150 50  0000 C CNN
F 1 "5.1k" V 2200 1550 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2180 1350 50  0001 C CNN
F 3 "~" H 2250 1350 50  0001 C CNN
	1    2250 1350
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5E5FA99A
P 2250 1550
F 0 "R5" V 2150 1450 50  0000 C CNN
F 1 "22" V 2150 1600 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2180 1550 50  0001 C CNN
F 3 "~" H 2250 1550 50  0001 C CNN
	1    2250 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	2100 1550 2000 1550
Wire Wire Line
	2100 1750 2050 1750
Wire Wire Line
	2100 1250 1900 1250
Wire Wire Line
	2100 1350 1900 1350
$Comp
L power:GND #PWR02
U 1 1 5E61C880
P 1300 2850
F 0 "#PWR02" H 1300 2600 50  0001 C CNN
F 1 "GND" H 1305 2677 50  0000 C CNN
F 2 "" H 1300 2850 50  0001 C CNN
F 3 "" H 1300 2850 50  0001 C CNN
	1    1300 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 6004D1FA
P 2650 1250
F 0 "#PWR06" H 2650 1000 50  0001 C CNN
F 1 "GND" V 2655 1122 50  0000 R CNN
F 2 "" H 2650 1250 50  0001 C CNN
F 3 "" H 2650 1250 50  0001 C CNN
	1    2650 1250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2400 1250 2650 1250
Wire Wire Line
	2400 1350 2650 1350
Wire Wire Line
	2650 1350 2650 1250
Connection ~ 2650 1250
Wire Wire Line
	1000 2850 1300 2850
Wire Wire Line
	2400 1550 2750 1550
Wire Wire Line
	1900 1050 1950 1050
Wire Wire Line
	2400 1750 2750 1750
$Comp
L Device:R R1
U 1 1 6004D1FB
P 1000 2700
F 0 "R1" H 1070 2746 50  0000 L CNN
F 1 "0" H 1070 2655 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 930 2700 50  0001 C CNN
F 3 "~" H 1000 2700 50  0001 C CNN
	1    1000 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 1650 1900 1550
Wire Wire Line
	1900 1850 1900 1750
$Comp
L Device:D_TVS D2
U 1 1 5F84A494
P 2250 2000
F 0 "D2" H 2350 1900 50  0000 C CNN
F 1 "LESD3Z5.0C,NC" H 2000 1900 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323" H 2250 2000 50  0001 C CNN
F 3 "~" H 2250 2000 50  0001 C CNN
	1    2250 2000
	-1   0    0    1   
$EndComp
Wire Wire Line
	1950 1050 1950 2000
Wire Wire Line
	1950 2000 2100 2000
Wire Wire Line
	2000 1550 2000 2200
Wire Wire Line
	2000 2200 2100 2200
Connection ~ 2000 1550
Wire Wire Line
	2000 1550 1900 1550
Wire Wire Line
	2050 1750 2050 2400
Wire Wire Line
	2050 2400 2100 2400
Connection ~ 2050 1750
Wire Wire Line
	2050 1750 1900 1750
Wire Wire Line
	2400 2000 2750 2000
Wire Wire Line
	2750 2000 2750 2200
Wire Wire Line
	2400 2200 2750 2200
Connection ~ 2750 2200
Wire Wire Line
	2750 2200 2750 2400
Wire Wire Line
	2400 2400 2750 2400
Connection ~ 2750 2400
Wire Wire Line
	2750 2400 2750 2550
$Comp
L Device:D_TVS D3
U 1 1 5FA38F19
P 2250 2200
F 0 "D3" H 2350 2100 50  0000 C CNN
F 1 "LESD3Z5.0C,NC" H 2000 2100 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323" H 2250 2200 50  0001 C CNN
F 3 "~" H 2250 2200 50  0001 C CNN
	1    2250 2200
	-1   0    0    1   
$EndComp
$Comp
L Device:D_TVS D4
U 1 1 5FA39252
P 2250 2400
F 0 "D4" H 2350 2300 50  0000 C CNN
F 1 "LESD3Z5.0C,NC" H 2000 2300 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323" H 2250 2400 50  0001 C CNN
F 3 "~" H 2250 2400 50  0001 C CNN
	1    2250 2400
	-1   0    0    1   
$EndComp
Wire Wire Line
	2100 1050 1950 1050
Connection ~ 1950 1050
Wire Wire Line
	2400 1050 2750 1050
$Comp
L Device:Polyfuse F1
U 1 1 6004D1FC
P 2250 1050
F 0 "F1" V 2025 1050 50  0000 C CNN
F 1 "Polyfuse,2A" V 2116 1050 50  0000 C CNN
F 2 "Fuse:Fuse_1206_3216Metric" H 2300 850 50  0001 L CNN
F 3 "~" H 2250 1050 50  0001 C CNN
	1    2250 1050
	0    1    1    0   
$EndComp
Text Label 9350 4600 0    50   ~ 0
TDI
Text Label 9350 4700 0    50   ~ 0
TMS|SWDIO
Text Label 9350 4800 0    50   ~ 0
TCK|SWCLK
Text Label 9350 4900 0    50   ~ 0
SRST|SWRST
Text Label 9350 5000 0    50   ~ 0
TDO|RX2
Text Label 10350 4800 0    50   ~ 0
TRST|TX2
Wire Wire Line
	9350 4600 9800 4600
Wire Wire Line
	9350 4700 9800 4700
Wire Wire Line
	9350 4800 9800 4800
Wire Wire Line
	9350 4900 9800 4900
Wire Wire Line
	9350 5000 9800 5000
Wire Wire Line
	10350 4600 10800 4600
Wire Wire Line
	10350 4800 10800 4800
Wire Wire Line
	10350 4900 10800 4900
Wire Wire Line
	10350 5000 10800 5000
$Comp
L Device:R_Pack04 RN1
U 1 1 5E26B4B3
P 9800 3350
F 0 "RN1" V 9500 3350 50  0000 C CNN
F 1 "220" V 10000 3350 50  0000 C CNN
F 2 "Resistor_SMD:R_Array_Concave_4x0402" V 10075 3350 50  0001 C CNN
F 3 "~" H 9800 3350 50  0001 C CNN
	1    9800 3350
	0    1    1    0   
$EndComp
$Comp
L Device:R_Pack04 RN2
U 1 1 5E278159
P 9800 3950
F 0 "RN2" V 9500 3950 50  0000 C CNN
F 1 "220" V 10000 3950 50  0000 C CNN
F 2 "Resistor_SMD:R_Array_Concave_4x0402" V 10075 3950 50  0001 C CNN
F 3 "~" H 9800 3950 50  0001 C CNN
	1    9800 3950
	0    1    1    0   
$EndComp
$Comp
L Device:R_Pack04 RN3
U 1 1 5E27AF58
P 10650 3350
F 0 "RN3" V 10350 3350 50  0000 C CNN
F 1 "220k" V 10850 3350 50  0000 C CNN
F 2 "Resistor_SMD:R_Array_Concave_4x0402" V 10925 3350 50  0001 C CNN
F 3 "~" H 10650 3350 50  0001 C CNN
	1    10650 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	10000 3150 10450 3150
Wire Wire Line
	10000 3250 10450 3250
Wire Wire Line
	10000 3350 10450 3350
Wire Wire Line
	10000 3450 10450 3450
Wire Wire Line
	10000 3750 10450 3750
Wire Wire Line
	10000 3850 10450 3850
Wire Wire Line
	10000 3950 10450 3950
Wire Wire Line
	10000 4050 10450 4050
Text Label 10000 3150 0    50   ~ 0
TDI
Text Label 10000 3250 0    50   ~ 0
TMS|SWDIO
Text Label 10000 3350 0    50   ~ 0
TCK|SWCLK
Wire Wire Line
	10850 3150 10850 3250
Connection ~ 10850 3250
Wire Wire Line
	10850 3250 10850 3350
Connection ~ 10850 3350
Wire Wire Line
	10850 3350 10850 3450
Connection ~ 10850 3450
Text Label 10350 4700 0    50   ~ 0
GND
Wire Wire Line
	10350 4700 10800 4700
$Comp
L power:GND #PWR016
U 1 1 5F081993
P 10850 4200
F 0 "#PWR016" H 10850 3950 50  0001 C CNN
F 1 "GND" H 10855 4027 50  0000 C CNN
F 2 "" H 10850 4200 50  0001 C CNN
F 3 "" H 10850 4200 50  0001 C CNN
	1    10850 4200
	1    0    0    -1  
$EndComp
Text Label 10350 4900 0    50   ~ 0
TX1
Text Label 10350 5000 0    50   ~ 0
RX1
$Comp
L power:GND #PWR015
U 1 1 5F67F0AF
P 10850 2500
F 0 "#PWR015" H 10850 2250 50  0001 C CNN
F 1 "GND" H 10855 2327 50  0000 C CNN
F 2 "" H 10850 2500 50  0001 C CNN
F 3 "" H 10850 2500 50  0001 C CNN
	1    10850 2500
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5DDEB552
P 10600 2450
F 0 "SW1" H 10450 2550 50  0000 C CNN
F 1 "SW_Push" H 10600 2400 50  0000 C CNN
F 2 "vllogic:SW_PUSH_4.5mm_Hxx_SMT" H 10600 2650 50  0001 C CNN
F 3 "~" H 10600 2650 50  0001 C CNN
	1    10600 2450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10800 2450 10850 2450
Wire Wire Line
	10850 2450 10850 2500
Wire Wire Line
	10850 3450 10850 3750
$Comp
L Device:R_Pack04 RN4
U 1 1 5E27AF5E
P 10650 3950
F 0 "RN4" V 10350 3950 50  0000 C CNN
F 1 "220k" V 10850 3950 50  0000 C CNN
F 2 "Resistor_SMD:R_Array_Concave_4x0402" V 10925 3950 50  0001 C CNN
F 3 "~" H 10650 3950 50  0001 C CNN
	1    10650 3950
	0    1    1    0   
$EndComp
Wire Wire Line
	10850 4050 10850 3950
Connection ~ 10850 3750
Connection ~ 10850 3850
Wire Wire Line
	10850 3850 10850 3750
Connection ~ 10850 3950
Wire Wire Line
	10850 3950 10850 3850
Wire Wire Line
	10850 4200 10850 4050
Connection ~ 10850 4050
$Comp
L Device:R R2
U 1 1 6046F00D
P 4600 6700
F 0 "R2" H 4670 6746 50  0000 L CNN
F 1 "10k" H 4670 6655 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4530 6700 50  0001 C CNN
F 3 "~" H 4600 6700 50  0001 C CNN
	1    4600 6700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 6047016B
P 4600 7300
F 0 "C4" H 4715 7346 50  0000 L CNN
F 1 "0.1uF" H 4715 7255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4638 7150 50  0001 C CNN
F 3 "~" H 4600 7300 50  0001 C CNN
	1    4600 7300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 60471E14
P 4600 7450
F 0 "#PWR05" H 4600 7200 50  0001 C CNN
F 1 "GND" H 4605 7277 50  0000 C CNN
F 2 "" H 4600 7450 50  0001 C CNN
F 3 "" H 4600 7450 50  0001 C CNN
	1    4600 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 7150 4600 6850
Text Label 4600 7150 1    50   ~ 0
CHIP_EN
Wire Wire Line
	4600 6550 4600 6250
Text Label 10000 3450 0    50   ~ 0
TRST|TX2
Text Label 2400 1550 0    50   ~ 0
USB_DM
Text Label 2400 1750 0    50   ~ 0
USB_DP
$Comp
L Device:CP C1
U 1 1 606F915D
P 5350 7100
F 0 "C1" H 5468 7146 50  0000 L CNN
F 1 "100uF,6.3V" H 5468 7055 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric" H 5388 6950 50  0001 C CNN
F 3 "~" H 5350 7100 50  0001 C CNN
	1    5350 7100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 606FA5D8
P 6000 7100
F 0 "C2" H 6115 7146 50  0000 L CNN
F 1 "1uF" H 6115 7055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6038 6950 50  0001 C CNN
F 3 "~" H 6000 7100 50  0001 C CNN
	1    6000 7100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 60712887
P 6400 7100
F 0 "C3" H 6515 7146 50  0000 L CNN
F 1 "0.1uF" H 6515 7055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6438 6950 50  0001 C CNN
F 3 "~" H 6400 7100 50  0001 C CNN
	1    6400 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 6950 6000 6950
Connection ~ 6000 6950
Wire Wire Line
	6000 6950 6400 6950
$Comp
L power:GND #PWR01
U 1 1 6073D571
P 5350 7250
F 0 "#PWR01" H 5350 7000 50  0001 C CNN
F 1 "GND" H 5355 7077 50  0000 C CNN
F 2 "" H 5350 7250 50  0001 C CNN
F 3 "" H 5350 7250 50  0001 C CNN
	1    5350 7250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 6073DBA6
P 6000 7250
F 0 "#PWR03" H 6000 7000 50  0001 C CNN
F 1 "GND" H 6005 7077 50  0000 C CNN
F 2 "" H 6000 7250 50  0001 C CNN
F 3 "" H 6000 7250 50  0001 C CNN
	1    6000 7250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 6073DFF2
P 6400 7250
F 0 "#PWR04" H 6400 7000 50  0001 C CNN
F 1 "GND" H 6405 7077 50  0000 C CNN
F 2 "" H 6400 7250 50  0001 C CNN
F 3 "" H 6400 7250 50  0001 C CNN
	1    6400 7250
	1    0    0    -1  
$EndComp
Text Label 7250 3300 0    50   ~ 0
IOSPI_MISO
$Comp
L 74xGxx:74AHC1G08 U3
U 1 1 5F8FA0BE
P 8100 3250
F 0 "U3" H 8250 3400 50  0000 C CNN
F 1 "74AHC1G08" H 8400 3100 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 8100 3250 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 8100 3250 50  0001 C CNN
	1    8100 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:D D5
U 1 1 5F9072E7
P 8500 3250
F 0 "D5" H 8500 3033 50  0000 C CNN
F 1 "RB521S30" H 8500 3124 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-523" H 8500 3250 50  0001 C CNN
F 3 "~" H 8500 3250 50  0001 C CNN
	1    8500 3250
	-1   0    0    1   
$EndComp
Wire Wire Line
	8100 3150 8100 3100
Wire Wire Line
	8100 3350 8100 3400
Wire Wire Line
	8650 3250 8650 3500
Text Label 2850 4600 1    50   ~ 0
TXD0
Text Label 2950 4600 1    50   ~ 0
RXD0
Wire Wire Line
	8950 3750 9600 3750
Wire Wire Line
	8950 3850 9600 3850
Text Label 8950 4050 0    50   ~ 0
RXD0
Wire Wire Line
	8950 4050 9600 4050
Text Label 8950 3750 0    50   ~ 0
TXD0
Wire Wire Line
	8950 3950 9600 3950
Wire Wire Line
	8950 3150 9600 3150
Text Label 7250 3200 0    50   ~ 0
FSPI_MOSI_B
Wire Wire Line
	7250 3200 7800 3200
Wire Wire Line
	7250 3300 7800 3300
Text Label 7250 3100 0    50   ~ 0
VCC
$Comp
L Device:C C8
U 1 1 5FA6F08F
P 6900 3250
F 0 "C8" H 7015 3296 50  0000 L CNN
F 1 "0.1uF" H 7015 3205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6938 3100 50  0001 C CNN
F 3 "~" H 6900 3250 50  0001 C CNN
	1    6900 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 3100 8100 3100
Wire Wire Line
	7250 3500 8650 3500
Text Label 7250 3400 0    50   ~ 0
GND
Wire Wire Line
	6900 3400 8100 3400
Text Label 7250 3500 0    50   ~ 0
FSPI_MISO_B
Text Label 4600 6550 1    50   ~ 0
VCC
Text Label 10350 4600 0    50   ~ 0
VCC
$Comp
L Connector_Generic:Conn_01x05 IO_A1
U 1 1 5F97DD6A
P 10000 4800
F 0 "IO_A1" H 9850 5100 50  0000 L CNN
F 1 "Conn_01x05" H 9600 4500 50  0000 L CNN
F 2 "vllogic:PinSocket_1x5_P2.54mm_SMD" H 10000 4800 50  0001 C CNN
F 3 "~" H 10000 4800 50  0001 C CNN
	1    10000 4800
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x05 IO_B1
U 1 1 5F97F0DD
P 10150 4800
F 0 "IO_B1" H 10000 5100 50  0000 L CNN
F 1 "Conn_01x05" H 9750 4500 50  0000 L CNN
F 2 "vllogic:PinSocket_1x5_P2.54mm_SMD" H 10150 4800 50  0001 C CNN
F 3 "~" H 10150 4800 50  0001 C CNN
	1    10150 4800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8650 3250 9600 3250
Connection ~ 8650 3250
Text Label 10000 3750 0    50   ~ 0
TX1
Text Label 10000 3850 0    50   ~ 0
SRST|SWRST
Text Label 10000 4050 0    50   ~ 0
RX1
Text Label 10000 3950 0    50   ~ 0
TDO|RX2
Wire Wire Line
	9600 3450 8950 3450
Wire Wire Line
	8950 3350 9600 3350
$Comp
L Connector:USB_C_Receptacle_USB2.0 J1
U 1 1 6004D1FD
P 1300 1650
F 0 "J1" H 1650 2500 50  0000 C CNN
F 1 "USB_C_Receptacle_USB2.0" H 1350 2400 50  0000 C CNN
F 2 "vllogic:USB_C_Receptacle_Palconn_UTC16-G_SMT" H 1450 1650 50  0001 C CNN
F 3 "https://www.usb.org/sites/default/files/documents/usb_type-c.zip" H 1450 1650 50  0001 C CNN
	1    1300 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 2550 1900 2550
Wire Wire Line
	1300 2850 1300 2550
Connection ~ 1300 2850
Connection ~ 1300 2550
Wire Wire Line
	1900 2150 1900 2250
Wire Wire Line
	1900 2250 1900 2550
Connection ~ 1900 2250
Connection ~ 1900 2550
Wire Wire Line
	1900 2550 1300 2550
$Comp
L vllogic_chip:ESP32-C3 U?
U 1 1 5FC12483
P 2800 5550
F 0 "U?" H 3450 6500 50  0000 L CNN
F 1 "ESP32-C3" H 3350 4600 50  0000 L CNN
F 2 "" H 1850 6100 50  0001 C CNN
F 3 "" H 1850 6100 50  0001 C CNN
	1    2800 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 5300 4400 5300
Wire Wire Line
	3750 5600 4400 5600
Wire Wire Line
	3750 5700 4400 5700
Wire Wire Line
	3750 5400 4400 5400
Wire Wire Line
	3750 5500 4400 5500
Wire Wire Line
	3750 5200 4400 5200
Wire Wire Line
	3750 5800 4400 5800
Wire Wire Line
	3750 5900 4400 5900
Wire Wire Line
	1200 5300 1850 5300
Wire Wire Line
	1200 5600 1850 5600
Wire Wire Line
	1200 5700 1850 5700
Wire Wire Line
	1200 5400 1850 5400
Wire Wire Line
	1200 5500 1850 5500
Wire Wire Line
	1200 5200 1850 5200
Wire Wire Line
	1200 5800 1850 5800
Wire Wire Line
	1200 5900 1850 5900
Wire Wire Line
	2550 4600 2550 3950
Wire Wire Line
	2850 4600 2850 3950
Wire Wire Line
	2950 4600 2950 3950
Wire Wire Line
	2650 4600 2650 3950
Wire Wire Line
	2750 4600 2750 3950
Wire Wire Line
	2450 4600 2450 3950
Wire Wire Line
	3050 4600 3050 3950
Wire Wire Line
	3150 4600 3150 3950
Wire Wire Line
	2550 7150 2550 6500
Wire Wire Line
	2850 7150 2850 6500
Wire Wire Line
	2950 7150 2950 6500
Wire Wire Line
	2650 7150 2650 6500
Wire Wire Line
	2750 7150 2750 6500
Wire Wire Line
	2450 7150 2450 6500
Wire Wire Line
	3050 7150 3050 6500
Wire Wire Line
	3150 7150 3150 6500
Text Label 3150 4600 1    50   ~ 0
USB_DM
Text Label 3050 4600 1    50   ~ 0
USB_DP
Text Label 2750 7150 1    50   ~ 0
FSPI_CLK
Text Label 1200 5700 0    50   ~ 0
FSPI_MISO
Text Label 2850 7150 1    50   ~ 0
FSPI_MOSI
Text Label 8950 3950 0    50   ~ 0
FSPI_MISO
Text Label 8950 3350 0    50   ~ 0
FSPI_CLK
Text Label 8950 3150 0    50   ~ 0
FSPI_MOSI
Text Label 2450 7150 1    50   ~ 0
FSPI_MOSI_B
Text Label 1200 5900 0    50   ~ 0
FSPI_MISO_B
Text Label 2550 7150 1    50   ~ 0
IOSPI_MISO
Text Label 8950 3450 0    50   ~ 0
GPIO0
Text Label 8950 3850 0    50   ~ 0
GPIO1
Text Label 1200 5500 0    50   ~ 0
GPIO0
Text Label 1200 5600 0    50   ~ 0
GPIO1
Wire Wire Line
	10100 2150 9700 2150
Wire Wire Line
	10400 2150 10500 2150
$Comp
L Device:R R15
U 1 1 5F177B8D
P 10250 2150
F 0 "R15" V 10150 2050 50  0000 C CNN
F 1 "4.7k" V 10150 2300 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 10180 2150 50  0001 C CNN
F 3 "~" H 10250 2150 50  0001 C CNN
	1    10250 2150
	0    1    1    0   
$EndComp
Wire Wire Line
	10100 1800 9700 1800
Wire Wire Line
	10400 1800 10500 1800
$Comp
L Device:R R14
U 1 1 5F0E1732
P 10250 1800
F 0 "R14" V 10150 1700 50  0000 C CNN
F 1 "4.7k" V 10150 1950 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 10180 1800 50  0001 C CNN
F 3 "~" H 10250 1800 50  0001 C CNN
	1    10250 1800
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5FFEC93D
P 10650 1800
F 0 "D?" H 10643 1545 50  0000 C CNN
F 1 "LED" H 10643 1636 50  0000 C CNN
F 2 "" H 10650 1800 50  0001 C CNN
F 3 "~" H 10650 1800 50  0001 C CNN
	1    10650 1800
	-1   0    0    1   
$EndComp
Text Label 2950 7150 1    50   ~ 0
GPIO8
Text Label 3050 7150 1    50   ~ 0
GPIO9
Text Label 3150 7150 1    50   ~ 0
GPIO10
Text Label 9700 1800 0    50   ~ 0
GPIO8
Text Label 9700 2150 0    50   ~ 0
GPIO9
Text Label 9700 2450 0    50   ~ 0
GPIO10
Wire Wire Line
	9700 2450 10400 2450
$Comp
L Device:LED D?
U 1 1 5FFED2B9
P 10650 2150
F 0 "D?" H 10643 1895 50  0000 C CNN
F 1 "LED" H 10643 1986 50  0000 C CNN
F 2 "" H 10650 2150 50  0001 C CNN
F 3 "~" H 10650 2150 50  0001 C CNN
	1    10650 2150
	-1   0    0    1   
$EndComp
Wire Wire Line
	10800 1800 10850 1800
Wire Wire Line
	10850 1800 10850 2150
Connection ~ 10850 2450
Wire Wire Line
	10800 2150 10850 2150
Connection ~ 10850 2150
Wire Wire Line
	10850 2150 10850 2450
$EndSCHEMATC
