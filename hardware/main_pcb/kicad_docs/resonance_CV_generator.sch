EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 8
Title "Whooshy Sound Filter Pedal"
Date "2021-06-29"
Rev "0"
Comp ""
Comment1 "creativecommons.org/licenses/by/4.0/"
Comment2 "License: CC by 4.0"
Comment3 "Author: Jordan Aceto"
Comment4 ""
$EndDescr
Text HLabel 6650 3850 2    50   Output ~ 0
summed_resonance_CV_out
Text HLabel 5150 4700 0    50   Input ~ 0
ext_resonance_CV_in
$Comp
L Device:R R14
U 1 1 60CB6B42
P 5700 4950
F 0 "R14" H 5770 4996 50  0000 L CNN
F 1 "18k" H 5770 4905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5630 4950 50  0001 C CNN
F 3 "~" H 5700 4950 50  0001 C CNN
	1    5700 4950
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL072 U5
U 2 1 60F636C4
P 6150 3850
F 0 "U5" H 6350 4050 50  0000 C CNN
F 1 "TL072" H 6350 4150 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 6150 3850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 6150 3850 50  0001 C CNN
	2    6150 3850
	1    0    0    1   
$EndComp
$Comp
L Device:R R15
U 1 1 60F678CE
P 6150 3350
F 0 "R15" V 5943 3350 50  0000 C CNN
F 1 "100k" V 6034 3350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6080 3350 50  0001 C CNN
F 3 "~" H 6150 3350 50  0001 C CNN
	1    6150 3350
	0    1    1    0   
$EndComp
$Comp
L Device:C C29
U 1 1 60F67F74
P 6150 2950
F 0 "C29" V 5898 2950 50  0000 C CNN
F 1 "22n" V 5989 2950 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6188 2800 50  0001 C CNN
F 3 "~" H 6150 2950 50  0001 C CNN
	1    6150 2950
	0    1    1    0   
$EndComp
$Comp
L Device:R R11
U 1 1 60F682DF
P 5300 2950
F 0 "R11" V 5093 2950 50  0000 C CNN
F 1 "220k" V 5184 2950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5230 2950 50  0001 C CNN
F 3 "~" H 5300 2950 50  0001 C CNN
	1    5300 2950
	0    1    1    0   
$EndComp
$Comp
L Device:R_POT RV2
U 1 1 60F6D28A
P 3750 2950
F 0 "RV2" H 3680 2904 50  0000 R CNN
F 1 "10k" H 3680 2995 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 3750 2950 50  0001 C CNN
F 3 "~" H 3750 2950 50  0001 C CNN
	1    3750 2950
	1    0    0    1   
$EndComp
$Comp
L Device:R R13
U 1 1 60F720B7
P 5300 4700
F 0 "R13" V 5093 4700 50  0000 C CNN
F 1 "82k" V 5184 4700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5230 4700 50  0001 C CNN
F 3 "~" H 5300 4700 50  0001 C CNN
	1    5300 4700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR037
U 1 1 60F73B74
P 3750 3650
F 0 "#PWR037" H 3750 3400 50  0001 C CNN
F 1 "GND" H 3755 3477 50  0000 C CNN
F 2 "" H 3750 3650 50  0001 C CNN
F 3 "" H 3750 3650 50  0001 C CNN
	1    3750 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR039
U 1 1 60F7B9CC
P 5700 5100
F 0 "#PWR039" H 5700 4850 50  0001 C CNN
F 1 "GND" H 5705 4927 50  0000 C CNN
F 2 "" H 5700 5100 50  0001 C CNN
F 3 "" H 5700 5100 50  0001 C CNN
	1    5700 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 2800 3250 2650
Wire Wire Line
	3250 2650 3750 2650
Wire Wire Line
	3750 2650 3750 2800
Wire Wire Line
	3900 2950 4050 2950
Wire Wire Line
	6000 3350 5700 3350
Wire Wire Line
	5700 3350 5700 3750
Wire Wire Line
	5700 3750 5850 3750
Wire Wire Line
	6450 3850 6650 3850
Wire Wire Line
	6650 3350 6300 3350
Wire Wire Line
	6000 2950 5700 2950
Wire Wire Line
	5700 2950 5700 3350
Connection ~ 5700 3350
Wire Wire Line
	6300 2950 6650 2950
Wire Wire Line
	6650 2950 6650 3350
Connection ~ 6650 3350
Wire Wire Line
	6650 3350 6650 3850
Wire Wire Line
	5700 4800 5700 4700
Wire Wire Line
	5700 4700 5450 4700
Wire Wire Line
	5700 4700 5700 3950
Wire Wire Line
	5700 3950 5850 3950
Connection ~ 5700 4700
$Comp
L Device:C C28
U 1 1 60F8C8BB
P 4050 3300
F 0 "C28" H 4165 3346 50  0000 L CNN
F 1 "100n" H 4165 3255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4088 3150 50  0001 C CNN
F 3 "~" H 4050 3300 50  0001 C CNN
	1    4050 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 3100 3750 3550
Wire Wire Line
	4050 3450 4050 3550
Wire Wire Line
	4050 3550 3750 3550
Connection ~ 3750 3550
Wire Wire Line
	3750 3550 3750 3650
Wire Wire Line
	4050 3150 4050 2950
Connection ~ 4050 2950
Wire Wire Line
	4050 2950 5150 2950
$Comp
L Device:R R12
U 1 1 6102ECB0
P 5300 3750
F 0 "R12" V 5093 3750 50  0000 C CNN
F 1 "560k" V 5184 3750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5230 3750 50  0001 C CNN
F 3 "~" H 5300 3750 50  0001 C CNN
	1    5300 3750
	0    1    1    0   
$EndComp
Wire Wire Line
	5450 3750 5550 3750
Connection ~ 5700 3750
Wire Wire Line
	5550 3750 5550 2950
Wire Wire Line
	5450 2950 5550 2950
Connection ~ 5550 3750
Wire Wire Line
	5550 3750 5700 3750
Wire Wire Line
	5050 3850 5050 3750
Wire Wire Line
	5050 3750 5150 3750
Text Notes 6750 3750 0    50   ~ 0
approximate useful range: [0v .. +2v]
Text Notes 4400 2900 0    50   ~ 0
range: [-5v .. 0v]
Text Notes 4300 4600 0    50   ~ 0
range: [0v .. +5v]
$Comp
L power:-5V #PWR036
U 1 1 6126C044
P 3250 2800
F 0 "#PWR036" H 3250 2900 50  0001 C CNN
F 1 "-5V" H 3265 2973 50  0000 C CNN
F 2 "" H 3250 2800 50  0001 C CNN
F 3 "" H 3250 2800 50  0001 C CNN
	1    3250 2800
	-1   0    0    1   
$EndComp
$Comp
L power:-5V #PWR038
U 1 1 6126BC27
P 5050 3850
F 0 "#PWR038" H 5050 3950 50  0001 C CNN
F 1 "-5V" H 5065 4023 50  0000 C CNN
F 2 "" H 5050 3850 50  0001 C CNN
F 3 "" H 5050 3850 50  0001 C CNN
	1    5050 3850
	-1   0    0    1   
$EndComp
Text HLabel 1550 6950 2    50   Output ~ 0
expression_pedal_ring_current
$Comp
L Device:R_POT RV?
U 1 1 613382EC
P 1550 6150
AR Path="/613382EC" Ref="RV?"  Part="1" 
AR Path="/60C8BB05/613382EC" Ref="RV?"  Part="1" 
AR Path="/60CB527C/613382EC" Ref="RV1"  Part="1" 
F 0 "RV1" H 1481 6104 50  0000 R CNN
F 1 "100k trim" H 1481 6195 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296W_Vertical" H 1550 6150 50  0001 C CNN
F 3 "~" H 1550 6150 50  0001 C CNN
	1    1550 6150
	1    0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 613382F2
P 1550 6550
AR Path="/613382F2" Ref="R?"  Part="1" 
AR Path="/60C8BB05/613382F2" Ref="R?"  Part="1" 
AR Path="/60CB527C/613382F2" Ref="R10"  Part="1" 
F 0 "R10" H 1620 6596 50  0000 L CNN
F 1 "10k" H 1620 6505 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1480 6550 50  0001 C CNN
F 3 "~" H 1550 6550 50  0001 C CNN
	1    1550 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 6300 1550 6400
Wire Wire Line
	1700 6150 1800 6150
Wire Wire Line
	1800 6150 1800 5900
Wire Wire Line
	1800 5900 1550 5900
Wire Wire Line
	1550 5900 1550 6000
$Comp
L power:+9V #PWR?
U 1 1 613382FD
P 1550 5800
AR Path="/613382FD" Ref="#PWR?"  Part="1" 
AR Path="/60C8BB05/613382FD" Ref="#PWR?"  Part="1" 
AR Path="/60CB527C/613382FD" Ref="#PWR035"  Part="1" 
F 0 "#PWR035" H 1550 5650 50  0001 C CNN
F 1 "+9V" H 1565 5973 50  0000 C CNN
F 2 "" H 1550 5800 50  0001 C CNN
F 3 "" H 1550 5800 50  0001 C CNN
	1    1550 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 5800 1550 5900
Connection ~ 1550 5900
Wire Wire Line
	1550 6950 1550 6700
Text Notes 1900 6450 0    50   ~ 0
Adjust such that +5v is developed\nacross an expression pedal connected\nvia a Tip-Ring-Sleeve jack.\n\nIf an expression pedal is not needed, \nsimply do not fit the trim pot and resistor.
Text Notes 3800 2750 0    50   ~ 0
manual\nresonance
$EndSCHEMATC
