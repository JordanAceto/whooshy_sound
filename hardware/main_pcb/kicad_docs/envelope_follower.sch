EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 8
Title "Whooshy Sound Filter Pedal"
Date "2021-06-29"
Rev "0"
Comp ""
Comment1 "creativecommons.org/licenses/by/4.0/"
Comment2 "License: CC by 4.0"
Comment3 "Author: Jordan Aceto"
Comment4 ""
$EndDescr
Text HLabel 950  3100 0    50   Input ~ 0
audio_in
$Comp
L Amplifier_Operational:TL072 U6
U 1 1 60DA4594
P 1900 3200
F 0 "U6" H 2100 3350 50  0000 C CNN
F 1 "TL072" H 2100 3450 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 1900 3200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 1900 3200 50  0001 C CNN
	1    1900 3200
	1    0    0    1   
$EndComp
$Comp
L Device:R R24
U 1 1 60DA594C
P 1100 3100
F 0 "R24" V 893 3100 50  0000 C CNN
F 1 "100k" V 984 3100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1030 3100 50  0001 C CNN
F 3 "~" H 1100 3100 50  0001 C CNN
	1    1100 3100
	0    1    1    0   
$EndComp
$Comp
L Device:R R25
U 1 1 60DA612E
P 1750 2500
F 0 "R25" V 1543 2500 50  0000 C CNN
F 1 "100k" V 1634 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1680 2500 50  0001 C CNN
F 3 "~" H 1750 2500 50  0001 C CNN
	1    1750 2500
	0    1    1    0   
$EndComp
$Comp
L Device:R R26
U 1 1 60DA66AC
P 1800 3900
F 0 "R26" V 1593 3900 50  0000 C CNN
F 1 "100k" V 1684 3900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1730 3900 50  0001 C CNN
F 3 "~" H 1800 3900 50  0001 C CNN
	1    1800 3900
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148W D6
U 1 1 60DA7453
P 2400 2850
F 0 "D6" V 2446 2770 50  0000 R CNN
F 1 "1N4148W" V 2355 2770 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-123" H 2400 2675 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85748/1n4148w.pdf" H 2400 2850 50  0001 C CNN
	1    2400 2850
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4148W D7
U 1 1 60DA81B8
P 2400 3550
F 0 "D7" V 2446 3470 50  0000 R CNN
F 1 "1N4148W" V 2355 3470 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-123" H 2400 3375 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85748/1n4148w.pdf" H 2400 3550 50  0001 C CNN
	1    2400 3550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2400 3400 2400 3200
Wire Wire Line
	2200 3200 2400 3200
Connection ~ 2400 3200
Wire Wire Line
	2400 3200 2400 3000
Wire Wire Line
	1600 3100 1500 3100
Wire Wire Line
	1600 2500 1500 2500
Wire Wire Line
	1500 2500 1500 3100
Connection ~ 1500 3100
Wire Wire Line
	1500 3100 1350 3100
Wire Wire Line
	1900 2500 2400 2500
Wire Wire Line
	2400 2500 2400 2700
$Comp
L power:GND #PWR045
U 1 1 60DAC770
P 1500 3400
F 0 "#PWR045" H 1500 3150 50  0001 C CNN
F 1 "GND" H 1505 3227 50  0000 C CNN
F 2 "" H 1500 3400 50  0001 C CNN
F 3 "" H 1500 3400 50  0001 C CNN
	1    1500 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 3400 1500 3300
Wire Wire Line
	1500 3300 1600 3300
Wire Wire Line
	1350 3100 1350 3900
Wire Wire Line
	1350 3900 1650 3900
Connection ~ 1350 3100
Wire Wire Line
	1350 3100 1250 3100
Wire Wire Line
	1950 3900 2400 3900
Wire Wire Line
	2400 3900 2400 3700
$Comp
L Amplifier_Operational:TL072 U6
U 2 1 60DB5F20
P 4050 3200
F 0 "U6" H 4250 3350 50  0000 C CNN
F 1 "TL072" H 4250 3450 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 4050 3200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 4050 3200 50  0001 C CNN
	2    4050 3200
	1    0    0    1   
$EndComp
$Comp
L Device:R R27
U 1 1 60DB7D11
P 3400 3100
F 0 "R27" V 3193 3100 50  0000 C CNN
F 1 "100k" V 3284 3100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3330 3100 50  0001 C CNN
F 3 "~" H 3400 3100 50  0001 C CNN
	1    3400 3100
	0    1    1    0   
$EndComp
$Comp
L Device:R R29
U 1 1 60DB8344
P 4050 2750
F 0 "R29" V 3843 2750 50  0000 C CNN
F 1 "100k" V 3934 2750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3980 2750 50  0001 C CNN
F 3 "~" H 4050 2750 50  0001 C CNN
	1    4050 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	3750 3100 3650 3100
Wire Wire Line
	3650 3100 3650 2750
Wire Wire Line
	3650 2750 3900 2750
Connection ~ 3650 3100
Wire Wire Line
	3650 3100 3550 3100
Wire Wire Line
	4350 3200 4450 3200
Wire Wire Line
	4450 3200 4450 3100
Wire Wire Line
	4450 2750 4200 2750
Wire Wire Line
	2400 3900 3150 3900
Wire Wire Line
	3150 3900 3150 3300
Wire Wire Line
	3150 3300 3650 3300
Connection ~ 2400 3900
Wire Wire Line
	2400 2500 3150 2500
Wire Wire Line
	3150 2500 3150 3100
Wire Wire Line
	3150 3100 3250 3100
Connection ~ 2400 2500
$Comp
L Device:R R28
U 1 1 60DBF395
P 3650 3600
F 0 "R28" H 3580 3554 50  0000 R CNN
F 1 "100k" H 3580 3645 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3580 3600 50  0001 C CNN
F 3 "~" H 3650 3600 50  0001 C CNN
	1    3650 3600
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR046
U 1 1 60DBFACD
P 3650 3850
F 0 "#PWR046" H 3650 3600 50  0001 C CNN
F 1 "GND" H 3655 3677 50  0000 C CNN
F 2 "" H 3650 3850 50  0001 C CNN
F 3 "" H 3650 3850 50  0001 C CNN
	1    3650 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 3850 3650 3750
Wire Wire Line
	3650 3450 3650 3300
Connection ~ 3650 3300
Wire Wire Line
	3650 3300 3750 3300
$Comp
L Device:R R30
U 1 1 60DC1FCC
P 4750 3100
F 0 "R30" V 4543 3100 50  0000 C CNN
F 1 "1k" V 4634 3100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4680 3100 50  0001 C CNN
F 3 "~" H 4750 3100 50  0001 C CNN
	1    4750 3100
	0    1    1    0   
$EndComp
$Comp
L Device:R_POT RV5
U 1 1 60DC31EA
P 5150 3100
F 0 "RV5" V 5035 3100 50  0000 C CNN
F 1 "100k" V 4944 3100 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 5150 3100 50  0001 C CNN
F 3 "~" H 5150 3100 50  0001 C CNN
	1    5150 3100
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C32
U 1 1 60DC5017
P 5550 3450
F 0 "C32" H 5665 3496 50  0000 L CNN
F 1 "2u2" H 5665 3405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5588 3300 50  0001 C CNN
F 3 "~" H 5550 3450 50  0001 C CNN
	1    5550 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR047
U 1 1 60DC5DDF
P 5550 3700
F 0 "#PWR047" H 5550 3450 50  0001 C CNN
F 1 "GND" H 5555 3527 50  0000 C CNN
F 2 "" H 5550 3700 50  0001 C CNN
F 3 "" H 5550 3700 50  0001 C CNN
	1    5550 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 3700 5550 3600
$Comp
L Amplifier_Operational:TL072 U7
U 1 1 60DCC5FC
P 6350 3200
F 0 "U7" H 6350 3550 50  0000 C CNN
F 1 "TL072" H 6350 3450 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 6350 3200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 6350 3200 50  0001 C CNN
	1    6350 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 3300 5950 3300
Wire Wire Line
	6800 3200 6650 3200
Wire Wire Line
	6050 3100 5550 3100
Wire Wire Line
	5550 3100 5550 3300
Wire Wire Line
	4600 3100 4450 3100
Connection ~ 4450 3100
Wire Wire Line
	4450 3100 4450 2750
Wire Wire Line
	4900 3100 5000 3100
Wire Wire Line
	5300 3100 5400 3100
Connection ~ 5550 3100
Wire Wire Line
	5400 3100 5400 2850
Wire Wire Line
	5400 2850 5150 2850
Wire Wire Line
	5150 2850 5150 2950
Connection ~ 5400 3100
Wire Wire Line
	5400 3100 5550 3100
Text Notes 5050 2800 0    50   ~ 0
Attack
$Comp
L Device:R R31
U 1 1 60DEA54D
P 5950 4250
F 0 "R31" H 5880 4204 50  0000 R CNN
F 1 "2k2" H 5880 4295 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5880 4250 50  0001 C CNN
F 3 "~" H 5950 4250 50  0001 C CNN
	1    5950 4250
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR048
U 1 1 60DEA553
P 5950 4500
F 0 "#PWR048" H 5950 4250 50  0001 C CNN
F 1 "GND" H 5955 4327 50  0000 C CNN
F 2 "" H 5950 4500 50  0001 C CNN
F 3 "" H 5950 4500 50  0001 C CNN
	1    5950 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 4500 5950 4400
$Comp
L Device:R_POT RV6
U 1 1 60DEB1EE
P 6400 3750
F 0 "RV6" V 6193 3750 50  0000 C CNN
F 1 "100k trim" V 6284 3750 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296W_Vertical" H 6400 3750 50  0001 C CNN
F 3 "~" H 6400 3750 50  0001 C CNN
	1    6400 3750
	0    1    1    0   
$EndComp
Wire Wire Line
	6550 3750 6800 3750
Wire Wire Line
	6800 3200 6800 3750
Wire Wire Line
	6250 3750 6150 3750
Wire Wire Line
	5950 3300 5950 3750
Wire Wire Line
	5950 4100 5950 3750
Connection ~ 5950 3750
Wire Wire Line
	6150 3750 6150 4000
Wire Wire Line
	6150 4000 6400 4000
Wire Wire Line
	6400 4000 6400 3900
Connection ~ 6150 3750
Wire Wire Line
	6150 3750 5950 3750
Text Notes 6450 3900 0    50   ~ 0
envelope trim
$Comp
L Device:R R32
U 1 1 60E16310
P 7750 3100
F 0 "R32" V 7650 2950 50  0000 C CNN
F 1 "100k" V 7634 3100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7680 3100 50  0001 C CNN
F 3 "~" H 7750 3100 50  0001 C CNN
	1    7750 3100
	0    1    1    0   
$EndComp
$Comp
L Device:R R33
U 1 1 60E17797
P 7750 3300
F 0 "R33" V 7850 3150 50  0000 C CNN
F 1 "100k" V 7850 3300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7680 3300 50  0001 C CNN
F 3 "~" H 7750 3300 50  0001 C CNN
	1    7750 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	7450 3100 7600 3100
Wire Wire Line
	7450 3300 7600 3300
Wire Wire Line
	6800 3200 7450 3200
Connection ~ 6800 3200
Text Notes 6700 3150 0    50   ~ 0
trim for approx.\nrange: [0v, 2v]
Wire Wire Line
	7450 3100 7450 3200
Connection ~ 7450 3200
Wire Wire Line
	7450 3200 7450 3300
Wire Wire Line
	8000 3850 8000 4150
Wire Wire Line
	7900 3100 8000 3100
Connection ~ 8000 3100
Wire Wire Line
	8000 3550 8000 3100
Text Notes 9750 3850 0    50   ~ 0
envelope\nlevel
Wire Wire Line
	8000 3100 8600 3100
Connection ~ 9400 3200
Wire Wire Line
	9650 3200 9400 3200
Wire Wire Line
	9400 2750 9400 3200
Text Notes 7400 5400 0    50   ~ 0
When the switch is set such that the opamp\nis inverting, a negative bias voltage is also \napplied which "pushes up" the signal. This\nkeeps the signal voltage positive in either\nnormal or inverting modes.
Wire Wire Line
	9650 3850 9650 3750
$Comp
L power:GND #PWR051
U 1 1 60E6CC94
P 9650 3850
F 0 "#PWR051" H 9650 3600 50  0001 C CNN
F 1 "GND" H 9655 3677 50  0000 C CNN
F 2 "" H 9650 3850 50  0001 C CNN
F 3 "" H 9650 3850 50  0001 C CNN
	1    9650 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 3450 9650 3200
$Comp
L Device:R_POT RV7
U 1 1 60E610B4
P 9650 3600
F 0 "RV7" H 9580 3554 50  0000 R CNN
F 1 "10k" H 9580 3645 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 9650 3600 50  0001 C CNN
F 3 "~" H 9650 3600 50  0001 C CNN
	1    9650 3600
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR050
U 1 1 60E3EB51
P 8700 4650
F 0 "#PWR050" H 8700 4400 50  0001 C CNN
F 1 "GND" H 8705 4477 50  0000 C CNN
F 2 "" H 8700 4650 50  0001 C CNN
F 3 "" H 8700 4650 50  0001 C CNN
	1    8700 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 3300 8700 3300
Connection ~ 8600 3300
Wire Wire Line
	8600 4150 8600 3300
Wire Wire Line
	7900 3300 8600 3300
Wire Wire Line
	9400 2750 9150 2750
Wire Wire Line
	9300 3200 9400 3200
Connection ~ 8600 3100
Wire Wire Line
	8600 2750 8850 2750
Wire Wire Line
	8600 3100 8600 2750
Wire Wire Line
	8700 3100 8600 3100
$Comp
L Device:R R35
U 1 1 60E16316
P 9000 2750
F 0 "R35" V 8793 2750 50  0000 C CNN
F 1 "100k" V 8884 2750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8930 2750 50  0001 C CNN
F 3 "~" H 9000 2750 50  0001 C CNN
	1    9000 2750
	0    1    1    0   
$EndComp
$Comp
L Amplifier_Operational:TL072 U7
U 2 1 60E1630A
P 9000 3200
F 0 "U7" H 9200 3350 50  0000 C CNN
F 1 "TL072" H 9200 3450 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 9000 3200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 9000 3200 50  0001 C CNN
	2    9000 3200
	1    0    0    1   
$EndComp
$Comp
L Device:R R34
U 1 1 60F140AD
P 8000 3700
F 0 "R34" H 8070 3746 50  0000 L CNN
F 1 "270k" H 8070 3655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7930 3700 50  0001 C CNN
F 3 "~" H 8000 3700 50  0001 C CNN
	1    8000 3700
	1    0    0    -1  
$EndComp
Text Notes 8050 4100 0    50   ~ 0
invert/normal\nswitch
Wire Wire Line
	8100 4650 8100 4550
$Comp
L Switch:SW_DPDT_x2 SW1
U 2 1 610D5DE3
P 8600 4350
F 0 "SW1" V 8554 4498 50  0000 L CNN
F 1 "env_invert" V 8645 4498 50  0000 L CNN
F 2 "whooshy_sound_footprints:DPDT_on_on" H 8600 4350 50  0001 C CNN
F 3 "~" H 8600 4350 50  0001 C CNN
	2    8600 4350
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_DPDT_x2 SW1
U 1 1 610C49CD
P 8000 4350
F 0 "SW1" V 7950 4100 50  0000 R CNN
F 1 "env_invert" V 8050 4200 50  0000 R CNN
F 2 "whooshy_sound_footprints:DPDT_on_on" H 8000 4350 50  0001 C CNN
F 3 "~" H 8000 4350 50  0001 C CNN
	1    8000 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	9800 3600 10000 3600
Text Notes 9950 3500 0    50   ~ 0
approx. range: [0v, 2v]
Text HLabel 10000 3600 2    50   Output ~ 0
envelope_follower_out
$Comp
L power:-5V #PWR049
U 1 1 612A3EEE
P 8100 4650
F 0 "#PWR049" H 8100 4750 50  0001 C CNN
F 1 "-5V" H 8115 4823 50  0000 C CNN
F 2 "" H 8100 4650 50  0001 C CNN
F 3 "" H 8100 4650 50  0001 C CNN
	1    8100 4650
	-1   0    0    1   
$EndComp
NoConn ~ 7900 4550
Wire Wire Line
	8700 4650 8700 4550
NoConn ~ 8500 4550
$EndSCHEMATC
