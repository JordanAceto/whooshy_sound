EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 8
Title "Whooshy Sound Filter Pedal"
Date "2021-06-15"
Rev "0"
Comp ""
Comment1 "creativecommons.org/licenses/by/4.0/"
Comment2 "Licencse: CC by 4.0"
Comment3 "Author: Jordan Aceto"
Comment4 ""
$EndDescr
$Comp
L power:-5V #PWR043
U 1 1 61263952
P 7150 4800
F 0 "#PWR043" H 7150 4900 50  0001 C CNN
F 1 "-5V" H 7165 4973 50  0000 C CNN
F 2 "" H 7150 4800 50  0001 C CNN
F 3 "" H 7150 4800 50  0001 C CNN
	1    7150 4800
	-1   0    0    1   
$EndComp
$Comp
L power:-5V #PWR041
U 1 1 61263452
P 5300 1500
F 0 "#PWR041" H 5300 1600 50  0001 C CNN
F 1 "-5V" H 5315 1673 50  0000 C CNN
F 2 "" H 5300 1500 50  0001 C CNN
F 3 "" H 5300 1500 50  0001 C CNN
	1    5300 1500
	-1   0    0    1   
$EndComp
Text Notes 6550 3500 0    50   ~ 0
range: [-5v, 0v]
Text Notes 6550 3900 0    50   ~ 0
range: [0v, +2v]
Text Notes 6550 4300 0    50   ~ 0
range: [0v, +2v]
Text Notes 6750 5400 0    50   ~ 0
range: [0v, +5v]
Text Notes 8950 4250 0    50   ~ 0
approximate useful range: [0v, 2v]
Wire Wire Line
	7150 4700 7300 4700
Wire Wire Line
	7150 4800 7150 4700
Wire Wire Line
	7850 4350 8050 4350
Connection ~ 7850 4350
Wire Wire Line
	7850 4700 7850 4350
Wire Wire Line
	7600 4700 7850 4700
$Comp
L Device:R R20
U 1 1 61011516
P 7450 4700
F 0 "R20" V 7243 4700 50  0000 C CNN
F 1 "560k" V 7334 4700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7380 4700 50  0001 C CNN
F 3 "~" H 7450 4700 50  0001 C CNN
	1    7450 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	8050 6050 8050 5950
$Comp
L power:GND #PWR044
U 1 1 60FFDC96
P 8050 6050
F 0 "#PWR044" H 8050 5800 50  0001 C CNN
F 1 "GND" H 8055 5877 50  0000 C CNN
F 2 "" H 8050 6050 50  0001 C CNN
F 3 "" H 8050 6050 50  0001 C CNN
	1    8050 6050
	1    0    0    -1  
$EndComp
Connection ~ 8050 5500
Wire Wire Line
	8050 5500 8050 4550
Wire Wire Line
	7450 5500 7600 5500
Wire Wire Line
	8050 5500 7900 5500
Wire Wire Line
	8050 5650 8050 5500
$Comp
L Device:R R22
U 1 1 60FF0EAE
P 8050 5800
F 0 "R22" H 8120 5846 50  0000 L CNN
F 1 "18k" H 8120 5755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7980 5800 50  0001 C CNN
F 3 "~" H 8050 5800 50  0001 C CNN
	1    8050 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R21
U 1 1 60FF0888
P 7750 5500
F 0 "R21" V 7543 5500 50  0000 C CNN
F 1 "82k" V 7634 5500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7680 5500 50  0001 C CNN
F 3 "~" H 7750 5500 50  0001 C CNN
	1    7750 5500
	0    1    1    0   
$EndComp
Wire Wire Line
	5800 1350 5800 1500
Wire Wire Line
	5300 1350 5800 1350
Wire Wire Line
	5300 1500 5300 1350
Wire Wire Line
	8850 4350 8850 4000
Connection ~ 8850 4350
Wire Wire Line
	9000 4350 8850 4350
$Comp
L Amplifier_Operational:TL072 U5
U 1 1 60F56D4A
P 8450 4450
F 0 "U5" H 8650 4600 50  0000 C CNN
F 1 "TL072" H 8650 4700 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 8450 4450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 8450 4450 50  0001 C CNN
	1    8450 4450
	1    0    0    1   
$EndComp
Text Notes 5950 1500 0    50   ~ 0
manual\ncutoff
Wire Wire Line
	7300 4350 5350 4350
Connection ~ 6050 1650
Wire Wire Line
	6450 3550 7300 3550
Wire Wire Line
	6450 1650 6450 3550
Wire Wire Line
	6050 1650 6450 1650
Wire Wire Line
	5800 2150 5800 1800
Connection ~ 5800 2150
Wire Wire Line
	6050 2150 5800 2150
Wire Wire Line
	6050 2050 6050 2150
Wire Wire Line
	5800 2200 5800 2150
Wire Wire Line
	6050 1650 5950 1650
Wire Wire Line
	6050 1750 6050 1650
$Comp
L Device:C C30
U 1 1 60E92680
P 6050 1900
F 0 "C30" H 6165 1946 50  0000 L CNN
F 1 "100n" H 6165 1855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6088 1750 50  0001 C CNN
F 3 "~" H 6050 1900 50  0001 C CNN
	1    6050 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR042
U 1 1 60E92180
P 5800 2200
F 0 "#PWR042" H 5800 1950 50  0001 C CNN
F 1 "GND" H 5805 2027 50  0000 C CNN
F 2 "" H 5800 2200 50  0001 C CNN
F 3 "" H 5800 2200 50  0001 C CNN
	1    5800 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV4
U 1 1 60E90D6F
P 5800 1650
F 0 "RV4" H 5730 1604 50  0000 R CNN
F 1 "10k" H 5730 1695 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 5800 1650 50  0001 C CNN
F 3 "~" H 5800 1650 50  0001 C CNN
	1    5800 1650
	1    0    0    1   
$EndComp
Wire Wire Line
	7700 3550 7700 3950
Wire Wire Line
	7600 3550 7700 3550
$Comp
L Device:R R17
U 1 1 60E8D5E9
P 7450 3550
F 0 "R17" V 7243 3550 50  0000 C CNN
F 1 "220k" V 7334 3550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7380 3550 50  0001 C CNN
F 3 "~" H 7450 3550 50  0001 C CNN
	1    7450 3550
	0    1    1    0   
$EndComp
Wire Wire Line
	6000 2800 6000 3950
Wire Wire Line
	6000 2800 5350 2800
Wire Wire Line
	6000 3950 7300 3950
Wire Wire Line
	8050 4550 8150 4550
Connection ~ 8050 4350
Connection ~ 7700 4350
Wire Wire Line
	7700 4350 7850 4350
Wire Wire Line
	7700 3950 7700 4350
Connection ~ 7700 3950
Wire Wire Line
	7600 3950 7700 3950
Wire Wire Line
	7700 4350 7600 4350
Connection ~ 8050 4000
Wire Wire Line
	8050 3550 8050 4000
Wire Wire Line
	8300 3550 8050 3550
Connection ~ 8850 4000
Wire Wire Line
	8850 3550 8850 4000
Wire Wire Line
	8600 3550 8850 3550
Wire Wire Line
	8850 4000 8600 4000
Wire Wire Line
	8850 4450 8850 4350
Wire Wire Line
	8750 4450 8850 4450
Wire Wire Line
	8050 4000 8300 4000
Wire Wire Line
	8050 4350 8050 4000
Wire Wire Line
	8150 4350 8050 4350
$Comp
L Device:C C31
U 1 1 60CD2B91
P 8450 3550
F 0 "C31" V 8198 3550 50  0000 C CNN
F 1 "22n" V 8289 3550 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8488 3400 50  0001 C CNN
F 3 "~" H 8450 3550 50  0001 C CNN
	1    8450 3550
	0    1    1    0   
$EndComp
$Comp
L Device:R R18
U 1 1 60CD2365
P 7450 3950
F 0 "R18" V 7243 3950 50  0000 C CNN
F 1 "100k" V 7334 3950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7380 3950 50  0001 C CNN
F 3 "~" H 7450 3950 50  0001 C CNN
	1    7450 3950
	0    1    1    0   
$EndComp
$Comp
L Device:R R19
U 1 1 60CD1E84
P 7450 4350
F 0 "R19" V 7243 4350 50  0000 C CNN
F 1 "100k" V 7334 4350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7380 4350 50  0001 C CNN
F 3 "~" H 7450 4350 50  0001 C CNN
	1    7450 4350
	0    1    1    0   
$EndComp
$Comp
L Device:R R23
U 1 1 60CD19EE
P 8450 4000
F 0 "R23" V 8243 4000 50  0000 C CNN
F 1 "100k" V 8334 4000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8380 4000 50  0001 C CNN
F 3 "~" H 8450 4000 50  0001 C CNN
	1    8450 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	3200 2800 3350 2800
$Sheet
S 3350 4100 2000 1000
U 60CBD033
F0 "LFO" 50
F1 "LFO.sch" 50
F2 "LFO_out" O R 5350 4350 50 
$EndSheet
Text HLabel 7450 5500 0    50   Input ~ 0
ext_cutoff_CV_in
Text HLabel 3200 2800 0    50   Input ~ 0
envelope_follower_audio_in
$Sheet
S 3350 2600 2000 1000
U 60CA7C25
F0 "envelope_follower" 50
F1 "envelope_follower.sch" 50
F2 "audio_in" I L 3350 2800 50 
F3 "envelope_follower_out" O R 5350 2800 50 
$EndSheet
Text HLabel 9000 4350 2    50   Output ~ 0
summed_cutoff_CV_out
Text Notes 1650 6400 0    50   ~ 0
Adjust such that +5v is developed\nacross an expression pedal connected\nvia a Tip-Ring-Sleeve jack.\n\nIf an expression pedal is not needed, \nsimply do not fit the trim pot and resistor.
Wire Wire Line
	1300 6900 1300 6650
Connection ~ 1300 5850
Wire Wire Line
	1300 5750 1300 5850
$Comp
L power:+9V #PWR?
U 1 1 6132E4EE
P 1300 5750
AR Path="/6132E4EE" Ref="#PWR?"  Part="1" 
AR Path="/60C8BB05/6132E4EE" Ref="#PWR040"  Part="1" 
F 0 "#PWR040" H 1300 5600 50  0001 C CNN
F 1 "+9V" H 1315 5923 50  0000 C CNN
F 2 "" H 1300 5750 50  0001 C CNN
F 3 "" H 1300 5750 50  0001 C CNN
	1    1300 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 5850 1300 5950
Wire Wire Line
	1550 5850 1300 5850
Wire Wire Line
	1550 6100 1550 5850
Wire Wire Line
	1450 6100 1550 6100
Wire Wire Line
	1300 6250 1300 6350
$Comp
L Device:R R?
U 1 1 6132E4E3
P 1300 6500
AR Path="/6132E4E3" Ref="R?"  Part="1" 
AR Path="/60C8BB05/6132E4E3" Ref="R16"  Part="1" 
F 0 "R16" H 1370 6546 50  0000 L CNN
F 1 "10k" H 1370 6455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1230 6500 50  0001 C CNN
F 3 "~" H 1300 6500 50  0001 C CNN
	1    1300 6500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV?
U 1 1 6132E4DD
P 1300 6100
AR Path="/6132E4DD" Ref="RV?"  Part="1" 
AR Path="/60C8BB05/6132E4DD" Ref="RV3"  Part="1" 
F 0 "RV3" H 1231 6054 50  0000 R CNN
F 1 "100k trim" H 1231 6145 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296W_Vertical" H 1300 6100 50  0001 C CNN
F 3 "~" H 1300 6100 50  0001 C CNN
	1    1300 6100
	1    0    0    1   
$EndComp
Text HLabel 1300 6900 2    50   Output ~ 0
expression_pedal_ring_current
$EndSCHEMATC
