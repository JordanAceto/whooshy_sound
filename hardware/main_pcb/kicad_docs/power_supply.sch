EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 8 8
Title "Whooshy Sound Filter Pedal"
Date "2021-08-05"
Rev "0.1"
Comp ""
Comment1 "creativecommons.org/licenses/by/4.0/"
Comment2 "License: CC by 4.0"
Comment3 "Author: Jordan Aceto"
Comment4 ""
$EndDescr
Text HLabel 1100 1350 0    50   Input ~ 0
9VDC_in
$Comp
L Reference_Voltage:LM4040DBZ-5 U2
U 1 1 61358642
P 9500 1300
F 0 "U2" V 9546 1212 50  0000 R CNN
F 1 "LM4040DBZ-5" V 9455 1212 50  0000 R CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9500 1100 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm4040-n.pdf" H 9500 1300 50  0001 C CIN
	1    9500 1300
	0    -1   -1   0   
$EndComp
$Comp
L lt3467A:LT3467A U3
U 1 1 6135A0EC
P 5950 4150
F 0 "U3" H 5950 4665 50  0000 C CNN
F 1 "LT3467A" H 5950 4574 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TSOT-23-6" H 5850 4650 50  0001 C CNN
F 3 "" H 5450 4650 50  0001 C CNN
	1    5950 4150
	1    0    0    -1  
$EndComp
$Comp
L power:-12V #PWR032
U 1 1 6135A8B7
P 8400 6150
F 0 "#PWR032" H 8400 6250 50  0001 C CNN
F 1 "-12V" H 8415 6323 50  0000 C CNN
F 2 "" H 8400 6150 50  0001 C CNN
F 3 "" H 8400 6150 50  0001 C CNN
	1    8400 6150
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR034
U 1 1 6135AE53
P 9050 3750
F 0 "#PWR034" H 9050 3600 50  0001 C CNN
F 1 "+12V" H 9065 3923 50  0000 C CNN
F 2 "" H 9050 3750 50  0001 C CNN
F 3 "" H 9050 3750 50  0001 C CNN
	1    9050 3750
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR020
U 1 1 6135B225
P 10400 1750
F 0 "#PWR020" H 10400 1850 50  0001 C CNN
F 1 "-5V" H 10415 1923 50  0000 C CNN
F 2 "" H 10400 1750 50  0001 C CNN
F 3 "" H 10400 1750 50  0001 C CNN
	1    10400 1750
	-1   0    0    1   
$EndComp
$Comp
L Regulator_Linear:LT1117-3.3 U4
U 1 1 6135BC22
P 4700 1300
F 0 "U4" H 4700 1542 50  0000 C CNN
F 1 "LT1117-3.3" H 4700 1451 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 4700 1300 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/1117fd.pdf" H 4700 1300 50  0001 C CNN
	1    4700 1300
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR030
U 1 1 6135DBFD
P 5300 1200
F 0 "#PWR030" H 5300 1050 50  0001 C CNN
F 1 "+3.3V" H 5315 1373 50  0000 C CNN
F 2 "" H 5300 1200 50  0001 C CNN
F 3 "" H 5300 1200 50  0001 C CNN
	1    5300 1200
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VA #PWR031
U 1 1 6135E101
P 7000 1200
F 0 "#PWR031" H 7000 1050 50  0001 C CNN
F 1 "+3.3VA" H 7015 1373 50  0000 C CNN
F 2 "" H 7000 1200 50  0001 C CNN
F 3 "" H 7000 1200 50  0001 C CNN
	1    7000 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky D1
U 1 1 613612ED
P 1650 1350
F 0 "D1" H 1650 1133 50  0000 C CNN
F 1 "B5819W" H 1650 1224 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 1650 1350 50  0001 C CNN
F 3 "~" H 1650 1350 50  0001 C CNN
	1    1650 1350
	-1   0    0    1   
$EndComp
$Comp
L Device:C C3
U 1 1 61362177
P 4100 1600
F 0 "C3" H 4215 1646 50  0000 L CNN
F 1 "10u" H 4215 1555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4138 1450 50  0001 C CNN
F 3 "~" H 4100 1600 50  0001 C CNN
	1    4100 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 61362A11
P 5200 1550
F 0 "C4" H 5315 1596 50  0000 L CNN
F 1 "10u" H 5315 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5238 1400 50  0001 C CNN
F 3 "~" H 5200 1550 50  0001 C CNN
	1    5200 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:Ferrite_Bead_Small FB1
U 1 1 61363196
P 3800 1300
F 0 "FB1" V 3563 1300 50  0000 C CNN
F 1 "100R @ 100MHz" V 3654 1300 50  0000 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric" V 3730 1300 50  0001 C CNN
F 3 "~" H 3800 1300 50  0001 C CNN
	1    3800 1300
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 61365218
P 9500 1800
F 0 "R5" H 9570 1846 50  0000 L CNN
F 1 "2k2" H 9570 1755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9430 1800 50  0001 C CNN
F 3 "~" H 9500 1800 50  0001 C CNN
	1    9500 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C13
U 1 1 61365860
P 8900 1550
F 0 "C13" H 9015 1596 50  0000 L CNN
F 1 "100n" H 9015 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8938 1400 50  0001 C CNN
F 3 "~" H 8900 1550 50  0001 C CNN
	1    8900 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C14
U 1 1 61365E02
P 10400 1300
F 0 "C14" H 10515 1346 50  0000 L CNN
F 1 "100n" H 10515 1255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 10438 1150 50  0001 C CNN
F 3 "~" H 10400 1300 50  0001 C CNN
	1    10400 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 1400 8900 1000
Wire Wire Line
	9500 1000 9500 1150
Wire Wire Line
	9500 1950 9500 2100
Wire Wire Line
	9500 2100 8900 2100
Wire Wire Line
	8900 2100 8900 1700
Wire Wire Line
	9500 1450 9500 1550
Wire Wire Line
	9500 1550 10400 1550
Wire Wire Line
	10400 1550 10400 1450
Connection ~ 9500 1550
Wire Wire Line
	9500 1550 9500 1650
Wire Wire Line
	10400 1150 10400 1000
Wire Wire Line
	10400 1000 9500 1000
Connection ~ 9500 1000
Wire Wire Line
	10400 1750 10400 1650
Connection ~ 10400 1550
Wire Wire Line
	9500 2200 9500 2100
Connection ~ 9500 2100
$Comp
L Device:Ferrite_Bead_Small FB2
U 1 1 61370CA8
P 6300 1300
F 0 "FB2" V 6063 1300 50  0000 C CNN
F 1 "100R @ 100MHz" V 6154 1300 50  0000 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric" V 6230 1300 50  0001 C CNN
F 3 "~" H 6300 1300 50  0001 C CNN
	1    6300 1300
	0    1    1    0   
$EndComp
$Comp
L Device:Ferrite_Bead_Small FB3
U 1 1 613729AF
P 4350 3900
F 0 "FB3" V 4113 3900 50  0000 C CNN
F 1 "100R @ 100MHz" V 4204 3900 50  0000 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric" V 4280 3900 50  0001 C CNN
F 3 "~" H 4350 3900 50  0001 C CNN
	1    4350 3900
	0    1    1    0   
$EndComp
$Comp
L Device:C C7
U 1 1 6137490B
P 4800 4350
F 0 "C7" H 4915 4396 50  0000 L CNN
F 1 "4u7" H 4915 4305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4838 4200 50  0001 C CNN
F 3 "~" H 4800 4350 50  0001 C CNN
	1    4800 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 613751DF
P 5250 4750
F 0 "C8" H 5365 4796 50  0000 L CNN
F 1 "100n" H 5365 4705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5288 4600 50  0001 C CNN
F 3 "~" H 5250 4750 50  0001 C CNN
	1    5250 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 4200 4800 3900
Connection ~ 4800 3900
Wire Wire Line
	4800 3900 4450 3900
Wire Wire Line
	5500 3900 5400 3900
Wire Wire Line
	5250 4600 5250 4400
Wire Wire Line
	5250 4400 5500 4400
Wire Wire Line
	5500 4150 5250 4150
Wire Wire Line
	5250 4150 5250 3900
Connection ~ 5250 3900
Wire Wire Line
	5250 3900 5000 3900
Wire Wire Line
	5250 4900 5250 5150
Wire Wire Line
	5250 5150 5950 5150
Wire Wire Line
	5950 5150 5950 4650
Wire Wire Line
	5250 5150 4800 5150
Wire Wire Line
	4800 5150 4800 4500
Connection ~ 5250 5150
$Comp
L Device:C C9
U 1 1 6137956D
P 6700 4150
F 0 "C9" H 6815 4196 50  0000 L CNN
F 1 "1u" H 6815 4105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6738 4000 50  0001 C CNN
F 3 "~" H 6700 4150 50  0001 C CNN
	1    6700 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 4000 6700 3900
Wire Wire Line
	6700 3900 6500 3900
$Comp
L Diode:PMEG2010AEH D3
U 1 1 6137BD4C
P 7950 3900
F 0 "D3" H 7950 3684 50  0000 C CNN
F 1 "PMEG2010AEH" H 7950 3775 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123F" H 7950 3725 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/PMEG2010AEH_PMEG2010AET.pdf" H 7950 3900 50  0001 C CNN
	1    7950 3900
	-1   0    0    1   
$EndComp
$Comp
L Device:R R7
U 1 1 6137D6D0
P 7600 4150
F 0 "R7" H 7530 4104 50  0000 R CNN
F 1 "1R" H 7530 4195 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7530 4150 50  0001 C CNN
F 3 "~" H 7600 4150 50  0001 C CNN
	1    7600 4150
	-1   0    0    1   
$EndComp
$Comp
L Diode:PMEG2010AEH D2
U 1 1 6137E7ED
P 7600 4650
F 0 "D2" V 7554 4729 50  0000 L CNN
F 1 "PMEG2010AEH" V 7645 4729 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123F" H 7600 4475 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/PMEG2010AEH_PMEG2010AET.pdf" H 7600 4650 50  0001 C CNN
	1    7600 4650
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 6137F772
P 8500 4150
F 0 "R8" H 8430 4104 50  0000 R CNN
F 1 "114k" H 8430 4195 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8430 4150 50  0001 C CNN
F 3 "~" H 8500 4150 50  0001 C CNN
	1    8500 4150
	-1   0    0    1   
$EndComp
$Comp
L Device:R R9
U 1 1 6137FC56
P 8500 4650
F 0 "R9" H 8430 4604 50  0000 R CNN
F 1 "13k3" H 8430 4695 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8430 4650 50  0001 C CNN
F 3 "~" H 8500 4650 50  0001 C CNN
	1    8500 4650
	-1   0    0    1   
$EndComp
$Comp
L Device:C C11
U 1 1 61380A97
P 9050 4400
F 0 "C11" H 9165 4446 50  0000 L CNN
F 1 "4u7" H 9165 4355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9088 4250 50  0001 C CNN
F 3 "~" H 9050 4400 50  0001 C CNN
	1    9050 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 3900 7600 3900
Wire Wire Line
	7600 4000 7600 3900
Connection ~ 7600 3900
Wire Wire Line
	7600 3900 7300 3900
Wire Wire Line
	7600 4300 7600 4500
Wire Wire Line
	8100 3900 8500 3900
Wire Wire Line
	8500 3900 8500 4000
Wire Wire Line
	8500 4300 8500 4400
Wire Wire Line
	6400 4400 8500 4400
Connection ~ 8500 4400
Wire Wire Line
	8500 4400 8500 4500
Wire Wire Line
	8500 3900 9050 3900
Wire Wire Line
	9050 3900 9050 4000
Connection ~ 8500 3900
Wire Wire Line
	5950 5150 7050 5150
Wire Wire Line
	8500 5150 8500 4800
Wire Wire Line
	7600 4800 7600 5150
Connection ~ 7600 5150
Wire Wire Line
	8500 5150 9050 5150
Wire Wire Line
	9050 5150 9050 4550
Connection ~ 8500 5150
Connection ~ 9050 3900
$Comp
L Device:C C12
U 1 1 61390B55
P 8400 5550
F 0 "C12" H 8515 5596 50  0000 L CNN
F 1 "4u7" H 8515 5505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8438 5400 50  0001 C CNN
F 3 "~" H 8400 5550 50  0001 C CNN
	1    8400 5550
	1    0    0    -1  
$EndComp
$Comp
L Diode:PMEG2010AEH D5
U 1 1 61392EA5
P 8000 6050
F 0 "D5" H 8000 6266 50  0000 C CNN
F 1 "PMEG2010AEH" H 8000 6175 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123F" H 8000 5875 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/PMEG2010AEH_PMEG2010AET.pdf" H 8000 6050 50  0001 C CNN
	1    8000 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 6050 8400 6050
Wire Wire Line
	8400 6050 8400 5950
Wire Wire Line
	8400 5400 8400 5150
Connection ~ 8400 6050
Wire Wire Line
	7600 6050 7850 6050
Wire Wire Line
	7050 5700 7050 6050
$Comp
L Device:R R6
U 1 1 613924AF
P 7450 6050
F 0 "R6" V 7657 6050 50  0000 C CNN
F 1 "1R" V 7566 6050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7380 6050 50  0001 C CNN
F 3 "~" H 7450 6050 50  0001 C CNN
	1    7450 6050
	0    -1   -1   0   
$EndComp
$Comp
L Diode:PMEG2010AEH D4
U 1 1 613912A4
P 7050 5550
F 0 "D4" V 7004 5629 50  0000 L CNN
F 1 "PMEG2010AEH" V 7095 5629 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123F" H 7050 5375 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/PMEG2010AEH_PMEG2010AET.pdf" H 7050 5550 50  0001 C CNN
	1    7050 5550
	0    1    1    0   
$EndComp
Connection ~ 8400 5150
Wire Wire Line
	8400 5150 8500 5150
Wire Wire Line
	7600 5150 8400 5150
Wire Wire Line
	6700 4300 6700 6050
Wire Wire Line
	6700 6050 7050 6050
Connection ~ 7050 6050
Wire Wire Line
	7050 6050 7300 6050
Wire Wire Line
	7050 5400 7050 5150
Connection ~ 7050 5150
Wire Wire Line
	7050 5150 7600 5150
Connection ~ 6700 3900
Connection ~ 5950 5150
$Comp
L Device:C C10
U 1 1 613C38EA
P 7150 3900
F 0 "C10" V 6898 3900 50  0000 C CNN
F 1 "1u" V 6989 3900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7188 3750 50  0001 C CNN
F 3 "~" H 7150 3900 50  0001 C CNN
	1    7150 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	7000 3900 6700 3900
$Comp
L power:GND #PWR028
U 1 1 613E049A
P 4800 5150
F 0 "#PWR028" H 4800 4900 50  0001 C CNN
F 1 "GND" H 4805 4977 50  0000 C CNN
F 2 "" H 4800 5150 50  0001 C CNN
F 3 "" H 4800 5150 50  0001 C CNN
	1    4800 5150
	1    0    0    -1  
$EndComp
Connection ~ 4800 5150
$Comp
L power:+9V #PWR024
U 1 1 613E14B2
P 3800 3800
F 0 "#PWR024" H 3800 3650 50  0001 C CNN
F 1 "+9V" H 3815 3973 50  0000 C CNN
F 2 "" H 3800 3800 50  0001 C CNN
F 3 "" H 3800 3800 50  0001 C CNN
	1    3800 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 3800 3800 3900
Wire Wire Line
	3800 3900 4250 3900
$Comp
L power:+9V #PWR021
U 1 1 613E5AF0
P 2050 1200
F 0 "#PWR021" H 2050 1050 50  0001 C CNN
F 1 "+9V" H 2065 1373 50  0000 C CNN
F 2 "" H 2050 1200 50  0001 C CNN
F 3 "" H 2050 1200 50  0001 C CNN
	1    2050 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 1350 1100 1350
Wire Wire Line
	1800 1350 2050 1350
Wire Wire Line
	2050 1350 2050 1200
$Comp
L Device:C C5
U 1 1 613E92C6
P 6750 1600
F 0 "C5" H 6865 1646 50  0000 L CNN
F 1 "1u" H 6865 1555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6788 1450 50  0001 C CNN
F 3 "~" H 6750 1600 50  0001 C CNN
	1    6750 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 613E985C
P 7400 1600
F 0 "C6" H 7515 1646 50  0000 L CNN
F 1 "100n" H 7515 1555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7438 1450 50  0001 C CNN
F 3 "~" H 7400 1600 50  0001 C CNN
	1    7400 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 1450 4100 1300
Wire Wire Line
	4100 1300 4250 1300
Wire Wire Line
	4100 1300 3900 1300
Connection ~ 4100 1300
Wire Wire Line
	4100 1750 4100 1950
Wire Wire Line
	4100 1950 4600 1950
Wire Wire Line
	5200 1950 5200 1700
Wire Wire Line
	5200 1400 5200 1300
Wire Wire Line
	5200 1300 5000 1300
Wire Wire Line
	4700 1600 4700 1950
Connection ~ 4700 1950
Wire Wire Line
	4700 1950 5200 1950
$Comp
L power:GND #PWR029
U 1 1 613F1EE6
P 4600 2100
F 0 "#PWR029" H 4600 1850 50  0001 C CNN
F 1 "GND" H 4605 1927 50  0000 C CNN
F 2 "" H 4600 2100 50  0001 C CNN
F 3 "" H 4600 2100 50  0001 C CNN
	1    4600 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 2100 4600 1950
Connection ~ 4600 1950
Wire Wire Line
	4600 1950 4700 1950
Connection ~ 5200 1300
Wire Wire Line
	5200 1300 5300 1300
Wire Wire Line
	5300 1200 5300 1300
Connection ~ 5300 1300
Wire Wire Line
	6400 1300 6750 1300
Wire Wire Line
	7000 1300 7000 1200
Wire Wire Line
	6750 1450 6750 1300
Connection ~ 6750 1300
Wire Wire Line
	6750 1300 7000 1300
Wire Wire Line
	7000 1300 7400 1300
Wire Wire Line
	7400 1300 7400 1450
Connection ~ 7000 1300
Wire Wire Line
	7400 1750 7400 1950
Wire Wire Line
	7400 1950 7050 1950
Wire Wire Line
	6750 1950 6750 1750
$Comp
L power:GND #PWR033
U 1 1 6140E6AB
P 7050 2100
F 0 "#PWR033" H 7050 1850 50  0001 C CNN
F 1 "GND" H 7055 1927 50  0000 C CNN
F 2 "" H 7050 2100 50  0001 C CNN
F 3 "" H 7050 2100 50  0001 C CNN
	1    7050 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 2100 7050 1950
$Comp
L power:+9V #PWR027
U 1 1 61413879
P 3250 1200
F 0 "#PWR027" H 3250 1050 50  0001 C CNN
F 1 "+9V" H 3265 1373 50  0000 C CNN
F 2 "" H 3250 1200 50  0001 C CNN
F 3 "" H 3250 1200 50  0001 C CNN
	1    3250 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 1200 3250 1300
Wire Wire Line
	3250 1300 3700 1300
Connection ~ 7050 1950
Wire Wire Line
	7050 1950 6750 1950
$Comp
L Device:Ferrite_Bead_Small FB4
U 1 1 6143CF7E
P 9500 2300
F 0 "FB4" H 9400 2254 50  0000 R CNN
F 1 "100R @ 100MHz" H 9400 2345 50  0000 R CNN
F 2 "Inductor_SMD:L_0805_2012Metric" V 9430 2300 50  0001 C CNN
F 3 "~" H 9500 2300 50  0001 C CNN
	1    9500 2300
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 60D2BA34
P 2400 1200
F 0 "#FLG02" H 2400 1275 50  0001 C CNN
F 1 "PWR_FLAG" H 2400 1373 50  0000 C CNN
F 2 "" H 2400 1200 50  0001 C CNN
F 3 "~" H 2400 1200 50  0001 C CNN
	1    2400 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 1200 2400 1350
Wire Wire Line
	2400 1350 2050 1350
Connection ~ 2050 1350
$Comp
L power:PWR_FLAG #FLG01
U 1 1 60D2E894
P 10750 1750
F 0 "#FLG01" H 10750 1825 50  0001 C CNN
F 1 "PWR_FLAG" H 10750 1923 50  0000 C CNN
F 2 "" H 10750 1750 50  0001 C CNN
F 3 "~" H 10750 1750 50  0001 C CNN
	1    10750 1750
	-1   0    0    1   
$EndComp
Wire Wire Line
	10400 1650 10750 1650
Connection ~ 10400 1650
Wire Wire Line
	10400 1650 10400 1550
$Comp
L power:PWR_FLAG #FLG05
U 1 1 60D42128
P 7400 1200
F 0 "#FLG05" H 7400 1275 50  0001 C CNN
F 1 "PWR_FLAG" H 7400 1373 50  0000 C CNN
F 2 "" H 7400 1200 50  0001 C CNN
F 3 "~" H 7400 1200 50  0001 C CNN
	1    7400 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 1200 7400 1300
Connection ~ 7400 1300
$Comp
L power:PWR_FLAG #FLG06
U 1 1 60D48C27
P 9400 3750
F 0 "#FLG06" H 9400 3825 50  0001 C CNN
F 1 "PWR_FLAG" H 9400 3923 50  0000 C CNN
F 2 "" H 9400 3750 50  0001 C CNN
F 3 "~" H 9400 3750 50  0001 C CNN
	1    9400 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 3750 9050 3900
Wire Wire Line
	9050 4000 9400 4000
Wire Wire Line
	9400 4000 9400 3750
Connection ~ 9050 4000
Wire Wire Line
	9050 4000 9050 4250
$Comp
L power:PWR_FLAG #FLG04
U 1 1 60D563E4
P 8750 6150
F 0 "#FLG04" H 8750 6225 50  0001 C CNN
F 1 "PWR_FLAG" H 8750 6323 50  0000 C CNN
F 2 "" H 8750 6150 50  0001 C CNN
F 3 "~" H 8750 6150 50  0001 C CNN
	1    8750 6150
	-1   0    0    1   
$EndComp
Wire Wire Line
	8400 6050 8400 6150
Wire Wire Line
	8400 5950 8750 5950
Connection ~ 8400 5950
Wire Wire Line
	8400 5950 8400 5700
Wire Wire Line
	8750 6150 8750 5950
Wire Wire Line
	10750 1750 10750 1650
Text Notes 8750 850  0    118  ~ 0
-5 volt reference
Text Notes 4850 3100 0    118  ~ 0
+/-12 volt DC-DC converter
Text Notes 4300 850  0    118  ~ 0
3.3 volt regulator
Text Notes 850  850  0    118  ~ 0
9 volt power entry
$Comp
L Device:C C15
U 1 1 60E0314D
P 1000 4800
F 0 "C15" H 1115 4846 50  0000 L CNN
F 1 "100n" H 1115 4755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1038 4650 50  0001 C CNN
F 3 "~" H 1000 4800 50  0001 C CNN
	1    1000 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C16
U 1 1 60E0449B
P 1000 5300
F 0 "C16" H 1115 5346 50  0000 L CNN
F 1 "100n" H 1115 5255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1038 5150 50  0001 C CNN
F 3 "~" H 1000 5300 50  0001 C CNN
	1    1000 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C18
U 1 1 60E0491C
P 1500 5300
F 0 "C18" H 1615 5346 50  0000 L CNN
F 1 "100n" H 1615 5255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1538 5150 50  0001 C CNN
F 3 "~" H 1500 5300 50  0001 C CNN
	1    1500 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C20
U 1 1 60E04BFA
P 2000 5300
F 0 "C20" H 2115 5346 50  0000 L CNN
F 1 "100n" H 2115 5255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2038 5150 50  0001 C CNN
F 3 "~" H 2000 5300 50  0001 C CNN
	1    2000 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C22
U 1 1 60E04F1D
P 2500 5300
F 0 "C22" H 2615 5346 50  0000 L CNN
F 1 "100n" H 2615 5255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2538 5150 50  0001 C CNN
F 3 "~" H 2500 5300 50  0001 C CNN
	1    2500 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C17
U 1 1 60E062E1
P 1500 4800
F 0 "C17" H 1615 4846 50  0000 L CNN
F 1 "100n" H 1615 4755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1538 4650 50  0001 C CNN
F 3 "~" H 1500 4800 50  0001 C CNN
	1    1500 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C19
U 1 1 60E062E7
P 2000 4800
F 0 "C19" H 2115 4846 50  0000 L CNN
F 1 "100n" H 2115 4755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2038 4650 50  0001 C CNN
F 3 "~" H 2000 4800 50  0001 C CNN
	1    2000 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C21
U 1 1 60E062ED
P 2500 4800
F 0 "C21" H 2615 4846 50  0000 L CNN
F 1 "100n" H 2615 4755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2538 4650 50  0001 C CNN
F 3 "~" H 2500 4800 50  0001 C CNN
	1    2500 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 4650 1000 4500
Wire Wire Line
	1000 4500 1500 4500
Wire Wire Line
	2500 4500 2500 4650
Wire Wire Line
	2500 4950 2500 5050
Wire Wire Line
	2500 5450 2500 5650
Wire Wire Line
	2500 5650 2000 5650
Wire Wire Line
	1000 5650 1000 5450
Wire Wire Line
	2500 5050 2000 5050
Connection ~ 2500 5050
Wire Wire Line
	2500 5050 2500 5150
Wire Wire Line
	1000 4950 1000 5050
Connection ~ 1000 5050
Wire Wire Line
	1000 5050 1000 5150
Wire Wire Line
	1500 4950 1500 5050
Connection ~ 1500 5050
Wire Wire Line
	1500 5050 1000 5050
Wire Wire Line
	1500 5050 1500 5150
Wire Wire Line
	2000 5150 2000 5050
Connection ~ 2000 5050
Wire Wire Line
	2000 5050 1500 5050
Wire Wire Line
	2000 5050 2000 4950
Wire Wire Line
	2000 4650 2000 4500
Connection ~ 2000 4500
Wire Wire Line
	2000 4500 2500 4500
Wire Wire Line
	1500 4650 1500 4500
Connection ~ 1500 4500
Wire Wire Line
	1500 4500 2000 4500
Wire Wire Line
	1500 5450 1500 5650
Connection ~ 1500 5650
Wire Wire Line
	1500 5650 1000 5650
Wire Wire Line
	2000 5450 2000 5650
Connection ~ 2000 5650
Wire Wire Line
	2000 5650 1500 5650
$Comp
L power:+12V #PWR016
U 1 1 60E42D46
P 1000 4500
F 0 "#PWR016" H 1000 4350 50  0001 C CNN
F 1 "+12V" H 1015 4673 50  0000 C CNN
F 2 "" H 1000 4500 50  0001 C CNN
F 3 "" H 1000 4500 50  0001 C CNN
	1    1000 4500
	1    0    0    -1  
$EndComp
Connection ~ 1000 4500
$Comp
L power:-12V #PWR017
U 1 1 60E43AB2
P 1000 5650
F 0 "#PWR017" H 1000 5750 50  0001 C CNN
F 1 "-12V" H 1015 5823 50  0000 C CNN
F 2 "" H 1000 5650 50  0001 C CNN
F 3 "" H 1000 5650 50  0001 C CNN
	1    1000 5650
	-1   0    0    1   
$EndComp
Connection ~ 1000 5650
$Comp
L power:GND #PWR015
U 1 1 60E444C4
P 850 5050
F 0 "#PWR015" H 850 4800 50  0001 C CNN
F 1 "GND" V 850 4850 50  0000 C CNN
F 2 "" H 850 5050 50  0001 C CNN
F 3 "" H 850 5050 50  0001 C CNN
	1    850  5050
	0    1    1    0   
$EndComp
Wire Wire Line
	850  5050 1000 5050
Text Notes 950  4150 0    118  ~ 0
Opamp decoupling
$Comp
L Device:C C23
U 1 1 60EA2A17
P 1000 7150
F 0 "C23" H 1115 7196 50  0000 L CNN
F 1 "10u" H 1115 7105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1038 7000 50  0001 C CNN
F 3 "~" H 1000 7150 50  0001 C CNN
	1    1000 7150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C24
U 1 1 60EA2E65
P 1450 7150
F 0 "C24" H 1565 7196 50  0000 L CNN
F 1 "100n" H 1565 7105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1488 7000 50  0001 C CNN
F 3 "~" H 1450 7150 50  0001 C CNN
	1    1450 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 7300 1000 7450
Wire Wire Line
	1000 7450 1450 7450
Wire Wire Line
	1450 7450 1450 7300
Wire Wire Line
	1450 7000 1450 6850
Wire Wire Line
	1450 6850 1000 6850
Wire Wire Line
	1000 6850 1000 7000
$Comp
L power:GND #PWR023
U 1 1 60EAEDD9
P 1000 7450
F 0 "#PWR023" H 1000 7200 50  0001 C CNN
F 1 "GND" H 1005 7277 50  0000 C CNN
F 2 "" H 1000 7450 50  0001 C CNN
F 3 "" H 1000 7450 50  0001 C CNN
	1    1000 7450
	1    0    0    -1  
$EndComp
Connection ~ 1000 7450
$Comp
L power:+3.3V #PWR022
U 1 1 60EB0AAF
P 1000 6850
F 0 "#PWR022" H 1000 6700 50  0001 C CNN
F 1 "+3.3V" H 1015 7023 50  0000 C CNN
F 2 "" H 1000 6850 50  0001 C CNN
F 3 "" H 1000 6850 50  0001 C CNN
	1    1000 6850
	1    0    0    -1  
$EndComp
Connection ~ 1000 6850
Text Notes 650  6500 0    118  ~ 0
DAC decoupling
$Comp
L Device:C C25
U 1 1 60EBE6BD
P 3000 7150
F 0 "C25" H 3115 7196 50  0000 L CNN
F 1 "10u" H 3115 7105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3038 7000 50  0001 C CNN
F 3 "~" H 3000 7150 50  0001 C CNN
	1    3000 7150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C26
U 1 1 60EBE6C3
P 3450 7150
F 0 "C26" H 3565 7196 50  0000 L CNN
F 1 "100n" H 3565 7105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3488 7000 50  0001 C CNN
F 3 "~" H 3450 7150 50  0001 C CNN
	1    3450 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 7300 3000 7450
Wire Wire Line
	3000 7450 3450 7450
Wire Wire Line
	3450 7450 3450 7300
Wire Wire Line
	3450 7000 3450 6850
Wire Wire Line
	3450 6850 3000 6850
Wire Wire Line
	3000 6850 3000 7000
$Comp
L power:GND #PWR026
U 1 1 60EBE6CF
P 3000 7450
F 0 "#PWR026" H 3000 7200 50  0001 C CNN
F 1 "GND" H 3005 7277 50  0000 C CNN
F 2 "" H 3000 7450 50  0001 C CNN
F 3 "" H 3000 7450 50  0001 C CNN
	1    3000 7450
	1    0    0    -1  
$EndComp
Connection ~ 3000 7450
$Comp
L power:+3.3V #PWR025
U 1 1 60EBE6D6
P 3000 6850
F 0 "#PWR025" H 3000 6700 50  0001 C CNN
F 1 "+3.3V" H 3015 7023 50  0000 C CNN
F 2 "" H 3000 6850 50  0001 C CNN
F 3 "" H 3000 6850 50  0001 C CNN
	1    3000 6850
	1    0    0    -1  
$EndComp
Connection ~ 3000 6850
$Comp
L Device:C C27
U 1 1 60EC55B1
P 3900 7150
F 0 "C27" H 4015 7196 50  0000 L CNN
F 1 "100n" H 4015 7105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3938 7000 50  0001 C CNN
F 3 "~" H 3900 7150 50  0001 C CNN
	1    3900 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 7450 3900 7450
Wire Wire Line
	3900 7450 3900 7300
Wire Wire Line
	3900 7000 3900 6850
Wire Wire Line
	3900 6850 3450 6850
Text Notes 2850 6500 0    118  ~ 0
STM32 decoupling
$Comp
L Amplifier_Operational:TL072 U1
U 3 1 60E0CC97
P 1100 3050
F 0 "U1" H 1058 3096 50  0000 L CNN
F 1 "TL072" H 1058 3005 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 1100 3050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 1100 3050 50  0001 C CNN
	3    1100 3050
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL072 U5
U 3 1 60E17ED2
P 1600 3050
F 0 "U5" H 1558 3096 50  0000 L CNN
F 1 "TL072" H 1558 3005 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 1600 3050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 1600 3050 50  0001 C CNN
	3    1600 3050
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL072 U6
U 3 1 60E1CFB7
P 2100 3050
F 0 "U6" H 2058 3096 50  0000 L CNN
F 1 "TL072" H 2058 3005 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 2100 3050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 2100 3050 50  0001 C CNN
	3    2100 3050
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL072 U7
U 3 1 60E1ECAD
P 2600 3050
F 0 "U7" H 2558 3096 50  0000 L CNN
F 1 "TL072" H 2558 3005 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 2600 3050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 2600 3050 50  0001 C CNN
	3    2600 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 2750 2500 2650
Wire Wire Line
	1000 2650 1000 2750
Wire Wire Line
	1500 2750 1500 2650
Connection ~ 1500 2650
Wire Wire Line
	1500 2650 1000 2650
Wire Wire Line
	2000 2750 2000 2650
Wire Wire Line
	1500 2650 2000 2650
Connection ~ 2000 2650
Wire Wire Line
	2000 2650 2500 2650
Wire Wire Line
	1000 3350 1000 3450
Wire Wire Line
	1000 3450 1500 3450
Wire Wire Line
	2500 3450 2500 3350
Wire Wire Line
	2000 3350 2000 3450
Connection ~ 2000 3450
Wire Wire Line
	2000 3450 2500 3450
Wire Wire Line
	1500 3350 1500 3450
Connection ~ 1500 3450
Wire Wire Line
	1500 3450 2000 3450
$Comp
L power:+12V #PWR0101
U 1 1 60E54197
P 1000 2650
F 0 "#PWR0101" H 1000 2500 50  0001 C CNN
F 1 "+12V" H 1015 2823 50  0000 C CNN
F 2 "" H 1000 2650 50  0001 C CNN
F 3 "" H 1000 2650 50  0001 C CNN
	1    1000 2650
	1    0    0    -1  
$EndComp
Connection ~ 1000 2650
$Comp
L power:-12V #PWR0102
U 1 1 60E55810
P 1000 3450
F 0 "#PWR0102" H 1000 3550 50  0001 C CNN
F 1 "-12V" H 1015 3623 50  0000 C CNN
F 2 "" H 1000 3450 50  0001 C CNN
F 3 "" H 1000 3450 50  0001 C CNN
	1    1000 3450
	-1   0    0    1   
$EndComp
Connection ~ 1000 3450
$Comp
L pspice:INDUCTOR L1
U 1 1 60E6DB11
P 5950 3400
F 0 "L1" H 5950 3615 50  0000 C CNN
F 1 "10uH, 1.2A" H 5950 3524 50  0000 C CNN
F 2 "Inductor_SMD:L_Taiyo-Yuden_NR-50xx" H 5950 3400 50  0001 C CNN
F 3 "~" H 5950 3400 50  0001 C CNN
	1    5950 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 3400 5400 3400
Wire Wire Line
	5400 3400 5400 3900
Connection ~ 5400 3900
Wire Wire Line
	5400 3900 5250 3900
Wire Wire Line
	6200 3400 6500 3400
Wire Wire Line
	6500 3400 6500 3900
Connection ~ 6500 3900
Wire Wire Line
	6500 3900 6400 3900
Connection ~ 3450 6850
Connection ~ 3450 7450
Text Notes 950  2350 0    118  ~ 0
Opamp power pins
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 6112CE18
P 4250 1200
F 0 "#FLG0101" H 4250 1275 50  0001 C CNN
F 1 "PWR_FLAG" H 4250 1373 50  0000 C CNN
F 2 "" H 4250 1200 50  0001 C CNN
F 3 "~" H 4250 1200 50  0001 C CNN
	1    4250 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 1200 4250 1300
Connection ~ 4250 1300
Wire Wire Line
	4250 1300 4400 1300
Wire Wire Line
	5300 1300 6200 1300
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 61139444
P 5000 3800
F 0 "#FLG0102" H 5000 3875 50  0001 C CNN
F 1 "PWR_FLAG" H 5000 3973 50  0000 C CNN
F 2 "" H 5000 3800 50  0001 C CNN
F 3 "~" H 5000 3800 50  0001 C CNN
	1    5000 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 3800 5000 3900
Connection ~ 5000 3900
Wire Wire Line
	5000 3900 4800 3900
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 61148D6C
P 2400 1700
F 0 "#FLG0103" H 2400 1775 50  0001 C CNN
F 1 "PWR_FLAG" H 2400 1873 50  0000 C CNN
F 2 "" H 2400 1700 50  0001 C CNN
F 3 "~" H 2400 1700 50  0001 C CNN
	1    2400 1700
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 6114B735
P 2050 1700
F 0 "#PWR0103" H 2050 1450 50  0001 C CNN
F 1 "GND" H 2055 1527 50  0000 C CNN
F 2 "" H 2050 1700 50  0001 C CNN
F 3 "" H 2050 1700 50  0001 C CNN
	1    2050 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 1700 2400 1600
Wire Wire Line
	2400 1600 2050 1600
Text HLabel 1100 1600 0    50   Input ~ 0
power_gnd_in
Wire Wire Line
	2050 1700 2050 1600
Wire Wire Line
	2050 1600 1100 1600
Connection ~ 2050 1600
Wire Wire Line
	8900 1000 9500 1000
$Comp
L power:GND #PWR018
U 1 1 60E3D478
P 8600 1200
F 0 "#PWR018" H 8600 950 50  0001 C CNN
F 1 "GND" H 8605 1027 50  0000 C CNN
F 2 "" H 8600 1200 50  0001 C CNN
F 3 "" H 8600 1200 50  0001 C CNN
	1    8600 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 1200 8600 1000
Wire Wire Line
	8600 1000 8900 1000
Connection ~ 8900 1000
$Comp
L power:-12V #PWR019
U 1 1 60E4AA03
P 9500 2400
F 0 "#PWR019" H 9500 2500 50  0001 C CNN
F 1 "-12V" H 9515 2573 50  0000 C CNN
F 2 "" H 9500 2400 50  0001 C CNN
F 3 "" H 9500 2400 50  0001 C CNN
	1    9500 2400
	-1   0    0    1   
$EndComp
$EndSCHEMATC
