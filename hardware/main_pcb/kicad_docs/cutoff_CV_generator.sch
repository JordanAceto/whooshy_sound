EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 8
Title "Whooshy Sound Filter Pedal"
Date "2021-08-05"
Rev "0.1"
Comp ""
Comment1 "creativecommons.org/licenses/by/4.0/"
Comment2 "License: CC by 4.0"
Comment3 "Author: Jordan Aceto"
Comment4 ""
$EndDescr
$Comp
L power:-5V #PWR043
U 1 1 61263952
P 6400 4150
F 0 "#PWR043" H 6400 4250 50  0001 C CNN
F 1 "-5V" H 6415 4323 50  0000 C CNN
F 2 "" H 6400 4150 50  0001 C CNN
F 3 "" H 6400 4150 50  0001 C CNN
	1    6400 4150
	-1   0    0    1   
$EndComp
$Comp
L power:-5V #PWR041
U 1 1 61263452
P 4350 850
F 0 "#PWR041" H 4350 950 50  0001 C CNN
F 1 "-5V" H 4365 1023 50  0000 C CNN
F 2 "" H 4350 850 50  0001 C CNN
F 3 "" H 4350 850 50  0001 C CNN
	1    4350 850 
	-1   0    0    1   
$EndComp
Text Notes 5550 2850 0    79   ~ 0
range: [-5v, 0v]
Text Notes 5550 3250 0    79   ~ 0
range: [0v, +2v]
Text Notes 5550 3650 0    79   ~ 0
range: [0v, +2v]
Text Notes 5850 4750 0    79   ~ 0
range: [0v, +5v]
Text Notes 8200 3600 0    79   ~ 0
approximate useful range: [0v, 2v]
Wire Wire Line
	6400 4050 6550 4050
Wire Wire Line
	6400 4150 6400 4050
Wire Wire Line
	7100 3700 7300 3700
Connection ~ 7100 3700
Wire Wire Line
	7100 4050 7100 3700
Wire Wire Line
	6850 4050 7100 4050
$Comp
L Device:R R20
U 1 1 61011516
P 6700 4050
F 0 "R20" V 6493 4050 50  0000 C CNN
F 1 "270k" V 6584 4050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6630 4050 50  0001 C CNN
F 3 "~" H 6700 4050 50  0001 C CNN
	1    6700 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	7300 5400 7300 5300
$Comp
L power:GND #PWR044
U 1 1 60FFDC96
P 7300 5400
F 0 "#PWR044" H 7300 5150 50  0001 C CNN
F 1 "GND" H 7305 5227 50  0000 C CNN
F 2 "" H 7300 5400 50  0001 C CNN
F 3 "" H 7300 5400 50  0001 C CNN
	1    7300 5400
	1    0    0    -1  
$EndComp
Connection ~ 7300 4850
Wire Wire Line
	7300 4850 7300 3900
Wire Wire Line
	6700 4850 6850 4850
Wire Wire Line
	7300 4850 7150 4850
Wire Wire Line
	7300 5000 7300 4850
$Comp
L Device:R R22
U 1 1 60FF0EAE
P 7300 5150
F 0 "R22" H 7370 5196 50  0000 L CNN
F 1 "15k" H 7370 5105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7230 5150 50  0001 C CNN
F 3 "~" H 7300 5150 50  0001 C CNN
	1    7300 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R21
U 1 1 60FF0888
P 7000 4850
F 0 "R21" V 6793 4850 50  0000 C CNN
F 1 "120k" V 6884 4850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6930 4850 50  0001 C CNN
F 3 "~" H 7000 4850 50  0001 C CNN
	1    7000 4850
	0    1    1    0   
$EndComp
Wire Wire Line
	4850 700  4850 850 
Wire Wire Line
	4350 700  4850 700 
Wire Wire Line
	4350 850  4350 700 
Wire Wire Line
	8100 3700 8100 3350
Connection ~ 8100 3700
Wire Wire Line
	8250 3700 8100 3700
$Comp
L Amplifier_Operational:TL072 U5
U 1 1 60F56D4A
P 7700 3800
F 0 "U5" H 7900 3950 50  0000 C CNN
F 1 "TL072" H 7900 4050 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 7700 3800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 7700 3800 50  0001 C CNN
	1    7700 3800
	1    0    0    1   
$EndComp
Text Notes 5000 850  0    50   ~ 0
manual\ncutoff
Wire Wire Line
	6550 3700 4600 3700
Connection ~ 5100 1000
Wire Wire Line
	5500 2900 6550 2900
Wire Wire Line
	5500 1000 5500 2900
Wire Wire Line
	5100 1000 5500 1000
Wire Wire Line
	4850 1500 4850 1150
Connection ~ 4850 1500
Wire Wire Line
	5100 1500 4850 1500
Wire Wire Line
	5100 1400 5100 1500
Wire Wire Line
	4850 1550 4850 1500
Wire Wire Line
	5100 1000 5000 1000
Wire Wire Line
	5100 1100 5100 1000
$Comp
L Device:C C30
U 1 1 60E92680
P 5100 1250
F 0 "C30" H 5215 1296 50  0000 L CNN
F 1 "100n" H 5215 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5138 1100 50  0001 C CNN
F 3 "~" H 5100 1250 50  0001 C CNN
	1    5100 1250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR042
U 1 1 60E92180
P 4850 1550
F 0 "#PWR042" H 4850 1300 50  0001 C CNN
F 1 "GND" H 4855 1377 50  0000 C CNN
F 2 "" H 4850 1550 50  0001 C CNN
F 3 "" H 4850 1550 50  0001 C CNN
	1    4850 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV4
U 1 1 60E90D6F
P 4850 1000
F 0 "RV4" H 4780 954 50  0000 R CNN
F 1 "10k" H 4780 1045 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 4850 1000 50  0001 C CNN
F 3 "~" H 4850 1000 50  0001 C CNN
	1    4850 1000
	1    0    0    1   
$EndComp
Wire Wire Line
	6950 2900 6950 3300
Wire Wire Line
	6850 2900 6950 2900
$Comp
L Device:R R17
U 1 1 60E8D5E9
P 6700 2900
F 0 "R17" V 6493 2900 50  0000 C CNN
F 1 "220k" V 6584 2900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6630 2900 50  0001 C CNN
F 3 "~" H 6700 2900 50  0001 C CNN
	1    6700 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	5250 2150 5250 3300
Wire Wire Line
	5250 2150 4600 2150
Wire Wire Line
	5250 3300 6550 3300
Wire Wire Line
	7300 3900 7400 3900
Connection ~ 7300 3700
Connection ~ 6950 3700
Wire Wire Line
	6950 3700 7100 3700
Wire Wire Line
	6950 3300 6950 3700
Connection ~ 6950 3300
Wire Wire Line
	6850 3300 6950 3300
Wire Wire Line
	6950 3700 6850 3700
Connection ~ 7300 3350
Wire Wire Line
	7300 2900 7300 3350
Wire Wire Line
	7550 2900 7300 2900
Connection ~ 8100 3350
Wire Wire Line
	8100 2900 8100 3350
Wire Wire Line
	7850 2900 8100 2900
Wire Wire Line
	8100 3350 7850 3350
Wire Wire Line
	8100 3800 8100 3700
Wire Wire Line
	8000 3800 8100 3800
Wire Wire Line
	7300 3350 7550 3350
Wire Wire Line
	7300 3700 7300 3350
Wire Wire Line
	7400 3700 7300 3700
$Comp
L Device:C C31
U 1 1 60CD2B91
P 7700 2900
F 0 "C31" V 7448 2900 50  0000 C CNN
F 1 "22n" V 7539 2900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7738 2750 50  0001 C CNN
F 3 "~" H 7700 2900 50  0001 C CNN
	1    7700 2900
	0    1    1    0   
$EndComp
$Comp
L Device:R R18
U 1 1 60CD2365
P 6700 3300
F 0 "R18" V 6493 3300 50  0000 C CNN
F 1 "100k" V 6584 3300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6630 3300 50  0001 C CNN
F 3 "~" H 6700 3300 50  0001 C CNN
	1    6700 3300
	0    1    1    0   
$EndComp
$Comp
L Device:R R19
U 1 1 60CD1E84
P 6700 3700
F 0 "R19" V 6493 3700 50  0000 C CNN
F 1 "100k" V 6584 3700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6630 3700 50  0001 C CNN
F 3 "~" H 6700 3700 50  0001 C CNN
	1    6700 3700
	0    1    1    0   
$EndComp
$Comp
L Device:R R23
U 1 1 60CD19EE
P 7700 3350
F 0 "R23" V 7493 3350 50  0000 C CNN
F 1 "100k" V 7584 3350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7630 3350 50  0001 C CNN
F 3 "~" H 7700 3350 50  0001 C CNN
	1    7700 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	2450 2150 2600 2150
$Sheet
S 2600 3450 2000 1000
U 60CBD033
F0 "LFO" 50
F1 "LFO.sch" 50
F2 "LFO_out" O R 4600 3700 50 
$EndSheet
Text HLabel 6700 4850 0    50   Input ~ 0
ext_cutoff_CV_in
Text HLabel 2450 2150 0    50   Input ~ 0
envelope_follower_audio_in
$Sheet
S 2600 1950 2000 1000
U 60CA7C25
F0 "envelope_follower" 50
F1 "envelope_follower.sch" 50
F2 "audio_in" I L 2600 2150 50 
F3 "envelope_follower_out" O R 4600 2150 50 
$EndSheet
Text HLabel 8250 3700 2    50   Output ~ 0
summed_cutoff_CV_out
Text Notes 1800 6200 0    79   ~ 0
Adjust such that +5v is developed\nacross an expression pedal connected\nvia a Tip-Ring-Sleeve jack.\n\nIf an expression pedal is not needed, \nsimply do not fit the trim pot and resistor.
Wire Wire Line
	1450 6700 1450 6450
Connection ~ 1450 5650
Wire Wire Line
	1450 5550 1450 5650
$Comp
L power:+9V #PWR?
U 1 1 6132E4EE
P 1450 5550
AR Path="/6132E4EE" Ref="#PWR?"  Part="1" 
AR Path="/60C8BB05/6132E4EE" Ref="#PWR040"  Part="1" 
F 0 "#PWR040" H 1450 5400 50  0001 C CNN
F 1 "+9V" H 1465 5723 50  0000 C CNN
F 2 "" H 1450 5550 50  0001 C CNN
F 3 "" H 1450 5550 50  0001 C CNN
	1    1450 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 5650 1450 5750
Wire Wire Line
	1700 5650 1450 5650
Wire Wire Line
	1700 5900 1700 5650
Wire Wire Line
	1600 5900 1700 5900
Wire Wire Line
	1450 6050 1450 6150
$Comp
L Device:R R?
U 1 1 6132E4E3
P 1450 6300
AR Path="/6132E4E3" Ref="R?"  Part="1" 
AR Path="/60C8BB05/6132E4E3" Ref="R16"  Part="1" 
F 0 "R16" H 1520 6346 50  0000 L CNN
F 1 "10k" H 1520 6255 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1380 6300 50  0001 C CNN
F 3 "~" H 1450 6300 50  0001 C CNN
	1    1450 6300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV?
U 1 1 6132E4DD
P 1450 5900
AR Path="/6132E4DD" Ref="RV?"  Part="1" 
AR Path="/60C8BB05/6132E4DD" Ref="RV3"  Part="1" 
F 0 "RV3" H 1381 5854 50  0000 R CNN
F 1 "100k trim" H 1381 5945 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296W_Vertical" H 1450 5900 50  0001 C CNN
F 3 "~" H 1450 5900 50  0001 C CNN
	1    1450 5900
	1    0    0    1   
$EndComp
Text HLabel 1450 6700 2    50   Output ~ 0
expression_pedal_ring_current
$Comp
L Device:R R?
U 1 1 60DCD05B
P 9850 5950
AR Path="/60C8ED37/60DCD05B" Ref="R?"  Part="1" 
AR Path="/60C8BB05/60DCD05B" Ref="R37"  Part="1" 
F 0 "R37" H 9920 5996 50  0000 L CNN
F 1 "100R" H 9920 5905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9780 5950 50  0001 C CNN
F 3 "~" H 9850 5950 50  0001 C CNN
	1    9850 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 60DCD061
P 9850 4800
AR Path="/60C8ED37/60DCD061" Ref="D?"  Part="1" 
AR Path="/60C8BB05/60DCD061" Ref="D8"  Part="1" 
F 0 "D8" V 9889 4682 50  0000 R CNN
F 1 "LED" V 9798 4682 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 9850 4800 50  0001 C CNN
F 3 "~" H 9850 4800 50  0001 C CNN
	1    9850 4800
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J11
U 1 1 60DCD067
P 8350 5750
F 0 "J11" H 8268 5967 50  0000 C CNN
F 1 "LED_switch" H 8268 5876 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 8350 5750 50  0001 C CNN
F 3 "~" H 8350 5750 50  0001 C CNN
	1    8350 5750
	-1   0    0    -1  
$EndComp
$Comp
L power:+9V #PWR072
U 1 1 60DCD06D
P 9850 4550
F 0 "#PWR072" H 9850 4400 50  0001 C CNN
F 1 "+9V" H 9865 4723 50  0000 C CNN
F 2 "" H 9850 4550 50  0001 C CNN
F 3 "" H 9850 4550 50  0001 C CNN
	1    9850 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60DCD073
P 9850 6100
AR Path="/60C8ED37/60DCD073" Ref="#PWR?"  Part="1" 
AR Path="/60C8BB05/60DCD073" Ref="#PWR073"  Part="1" 
F 0 "#PWR073" H 9850 5850 50  0001 C CNN
F 1 "GND" H 9855 5927 50  0000 C CNN
F 2 "" H 9850 6100 50  0001 C CNN
F 3 "" H 9850 6100 50  0001 C CNN
	1    9850 6100
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MMBT3904 Q2
U 1 1 60DDA460
P 9750 5250
F 0 "Q2" H 9941 5296 50  0000 L CNN
F 1 "MMBT3904" H 9941 5205 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9950 5175 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 9750 5250 50  0001 L CNN
	1    9750 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R38
U 1 1 60DEC003
P 8450 5250
F 0 "R38" V 8243 5250 50  0000 C CNN
F 1 "100k" V 8334 5250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8380 5250 50  0001 C CNN
F 3 "~" H 8450 5250 50  0001 C CNN
	1    8450 5250
	0    1    1    0   
$EndComp
Wire Wire Line
	8300 5250 8100 5250
Wire Wire Line
	8100 5250 8100 3800
Connection ~ 8100 3800
$Comp
L Transistor_BJT:MMBT3904 Q1
U 1 1 60DB3AE2
P 9450 5650
F 0 "Q1" H 9641 5696 50  0000 L CNN
F 1 "MMBT3904" H 9641 5605 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9650 5575 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 9450 5650 50  0001 L CNN
	1    9450 5650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9650 5650 9850 5650
Wire Wire Line
	9850 5650 9850 5450
Wire Wire Line
	9850 5650 9850 5800
Connection ~ 9850 5650
Wire Wire Line
	9350 5450 9350 5250
Wire Wire Line
	9350 5250 9550 5250
$Comp
L Device:R R39
U 1 1 60DC4685
P 9100 4700
F 0 "R39" H 8950 4650 50  0000 C CNN
F 1 "1M" H 8950 4750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9030 4700 50  0001 C CNN
F 3 "~" H 9100 4700 50  0001 C CNN
	1    9100 4700
	-1   0    0    1   
$EndComp
Wire Wire Line
	8600 5250 8750 5250
Connection ~ 9350 5250
Wire Wire Line
	9100 4850 9100 5250
Connection ~ 9100 5250
Wire Wire Line
	9100 5250 9350 5250
$Comp
L power:+9V #PWR070
U 1 1 60DC8931
P 9100 4550
F 0 "#PWR070" H 9100 4400 50  0001 C CNN
F 1 "+9V" H 9115 4723 50  0000 C CNN
F 2 "" H 9100 4550 50  0001 C CNN
F 3 "" H 9100 4550 50  0001 C CNN
	1    9100 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60DC9601
P 9350 6100
AR Path="/60C8ED37/60DC9601" Ref="#PWR?"  Part="1" 
AR Path="/60C8BB05/60DC9601" Ref="#PWR071"  Part="1" 
F 0 "#PWR071" H 9350 5850 50  0001 C CNN
F 1 "GND" H 9355 5927 50  0000 C CNN
F 2 "" H 9350 6100 50  0001 C CNN
F 3 "" H 9350 6100 50  0001 C CNN
	1    9350 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 6100 9350 5850
$Comp
L power:GND #PWR?
U 1 1 60DD68B8
P 8750 6100
AR Path="/60C8ED37/60DD68B8" Ref="#PWR?"  Part="1" 
AR Path="/60C8BB05/60DD68B8" Ref="#PWR069"  Part="1" 
F 0 "#PWR069" H 8750 5850 50  0001 C CNN
F 1 "GND" H 8755 5927 50  0000 C CNN
F 2 "" H 8750 6100 50  0001 C CNN
F 3 "" H 8750 6100 50  0001 C CNN
	1    8750 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 6100 8750 5850
Wire Wire Line
	8750 5850 8550 5850
Wire Wire Line
	8550 5750 8750 5750
Wire Wire Line
	8750 5750 8750 5250
Connection ~ 8750 5250
Wire Wire Line
	8750 5250 9100 5250
Wire Wire Line
	9850 4650 9850 4550
Wire Wire Line
	9850 4950 9850 5050
Text Notes 9350 4300 0    79   ~ 0
bypass/on indicator\nalso shows the strength \nof the modulation
Text Notes 7500 5900 0    79   ~ 0
short to \nturn LED off
$EndSCHEMATC
