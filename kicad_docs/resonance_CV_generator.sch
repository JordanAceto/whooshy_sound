EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 8
Title "Whooshy Sound Filter Pedal"
Date "2021-06-15"
Rev "0"
Comp ""
Comment1 "creativecommons.org/licenses/by/4.0/"
Comment2 "Licencse: CC by 4.0"
Comment3 "Author: Jordan Aceto"
Comment4 ""
$EndDescr
Text HLabel 6650 3850 2    50   Output ~ 0
summed_resonance_CV_out
Text HLabel 5150 4700 0    50   Input ~ 0
ext_resonance_CV_in
$Comp
L Device:R R?
U 1 1 60CB6B42
P 5700 4950
F 0 "R?" H 5770 4996 50  0000 L CNN
F 1 "18k" H 5770 4905 50  0000 L CNN
F 2 "" V 5630 4950 50  0001 C CNN
F 3 "~" H 5700 4950 50  0001 C CNN
	1    5700 4950
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL072 U?
U 2 1 60F636C4
P 6150 3850
F 0 "U?" H 6350 4050 50  0000 C CNN
F 1 "TL072" H 6350 4150 50  0000 C CNN
F 2 "" H 6150 3850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 6150 3850 50  0001 C CNN
	2    6150 3850
	1    0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 60F678CE
P 6150 3350
F 0 "R?" V 5943 3350 50  0000 C CNN
F 1 "100k" V 6034 3350 50  0000 C CNN
F 2 "" V 6080 3350 50  0001 C CNN
F 3 "~" H 6150 3350 50  0001 C CNN
	1    6150 3350
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 60F67F74
P 6150 2950
F 0 "C?" V 5898 2950 50  0000 C CNN
F 1 "22n" V 5989 2950 50  0000 C CNN
F 2 "" H 6188 2800 50  0001 C CNN
F 3 "~" H 6150 2950 50  0001 C CNN
	1    6150 2950
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 60F682DF
P 5300 2950
F 0 "R?" V 5093 2950 50  0000 C CNN
F 1 "220k" V 5184 2950 50  0000 C CNN
F 2 "" V 5230 2950 50  0001 C CNN
F 3 "~" H 5300 2950 50  0001 C CNN
	1    5300 2950
	0    1    1    0   
$EndComp
$Comp
L Device:R_POT RV?
U 1 1 60F6D28A
P 4000 2950
F 0 "RV?" H 3930 2904 50  0000 R CNN
F 1 "10k" H 3930 2995 50  0000 R CNN
F 2 "" H 4000 2950 50  0001 C CNN
F 3 "~" H 4000 2950 50  0001 C CNN
	1    4000 2950
	1    0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 60F720B7
P 5300 4700
F 0 "R?" V 5093 4700 50  0000 C CNN
F 1 "82k" V 5184 4700 50  0000 C CNN
F 2 "" V 5230 4700 50  0001 C CNN
F 3 "~" H 5300 4700 50  0001 C CNN
	1    5300 4700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60F73B74
P 4000 3650
F 0 "#PWR?" H 4000 3400 50  0001 C CNN
F 1 "GND" H 4005 3477 50  0000 C CNN
F 2 "" H 4000 3650 50  0001 C CNN
F 3 "" H 4000 3650 50  0001 C CNN
	1    4000 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60F7B9CC
P 5700 5100
F 0 "#PWR?" H 5700 4850 50  0001 C CNN
F 1 "GND" H 5705 4927 50  0000 C CNN
F 2 "" H 5700 5100 50  0001 C CNN
F 3 "" H 5700 5100 50  0001 C CNN
	1    5700 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 2800 3500 2650
Wire Wire Line
	3500 2650 4000 2650
Wire Wire Line
	4000 2650 4000 2800
Wire Wire Line
	4150 2950 4300 2950
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
L Device:C C?
U 1 1 60F8C8BB
P 4300 3300
F 0 "C?" H 4415 3346 50  0000 L CNN
F 1 "100n" H 4415 3255 50  0000 L CNN
F 2 "" H 4338 3150 50  0001 C CNN
F 3 "~" H 4300 3300 50  0001 C CNN
	1    4300 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 3100 4000 3550
Wire Wire Line
	4300 3450 4300 3550
Wire Wire Line
	4300 3550 4000 3550
Connection ~ 4000 3550
Wire Wire Line
	4000 3550 4000 3650
Wire Wire Line
	4300 3150 4300 2950
Connection ~ 4300 2950
Wire Wire Line
	4300 2950 5150 2950
$Comp
L Device:R R?
U 1 1 6102ECB0
P 5300 3750
F 0 "R?" V 5093 3750 50  0000 C CNN
F 1 "560k" V 5184 3750 50  0000 C CNN
F 2 "" V 5230 3750 50  0001 C CNN
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
Text Notes 4350 2900 0    50   ~ 0
range: [-5v .. 0v]
Text Notes 4300 4600 0    50   ~ 0
range: [0v .. +5v]
$Comp
L power:-5V #PWR?
U 1 1 6126C044
P 3500 2800
F 0 "#PWR?" H 3500 2900 50  0001 C CNN
F 1 "-5V" H 3515 2973 50  0000 C CNN
F 2 "" H 3500 2800 50  0001 C CNN
F 3 "" H 3500 2800 50  0001 C CNN
	1    3500 2800
	-1   0    0    1   
$EndComp
$Comp
L power:-5V #PWR?
U 1 1 6126BC27
P 5050 3850
F 0 "#PWR?" H 5050 3950 50  0001 C CNN
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
AR Path="/60CB527C/613382EC" Ref="RV?"  Part="1" 
F 0 "RV?" H 1481 6104 50  0000 R CNN
F 1 "100k" H 1481 6195 50  0000 R CNN
F 2 "" H 1550 6150 50  0001 C CNN
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
AR Path="/60CB527C/613382F2" Ref="R?"  Part="1" 
F 0 "R?" H 1620 6596 50  0000 L CNN
F 1 "10k" H 1620 6505 50  0000 L CNN
F 2 "" V 1480 6550 50  0001 C CNN
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
AR Path="/60CB527C/613382FD" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1550 5650 50  0001 C CNN
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
$EndSCHEMATC
