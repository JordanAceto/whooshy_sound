EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 8
Title "Whooshy Sound Filter Pedal"
Date "2021-08-05"
Rev "0.1"
Comp ""
Comment1 "creativecommons.org/licenses/by/4.0/"
Comment2 "License: CC by 4.0"
Comment3 "Author: Jordan Aceto"
Comment4 ""
$EndDescr
Text HLabel 4950 3650 0    50   Input ~ 0
raw_wet_signal_in
Text HLabel 7150 3750 2    50   Output ~ 0
buffered_wet_signal_out
Wire Wire Line
	5250 3850 5100 3850
Wire Wire Line
	5100 3850 5100 4200
Wire Wire Line
	5100 4200 6050 4200
Wire Wire Line
	6050 4200 6050 3750
Wire Wire Line
	6050 3750 5850 3750
$Comp
L Device:C C2
U 1 1 60D906DD
P 6700 3750
F 0 "C2" V 6448 3750 50  0000 C CNN
F 1 "10u np" V 6539 3750 50  0000 C CNN
F 2 "Capacitor_THT:C_Radial_D6.3mm_H11.0mm_P2.50mm" H 6738 3600 50  0001 C CNN
F 3 "~" H 6700 3750 50  0001 C CNN
	1    6700 3750
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 60D90BBF
P 6300 3750
F 0 "R3" V 6093 3750 50  0000 C CNN
F 1 "1k2" V 6184 3750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6230 3750 50  0001 C CNN
F 3 "~" H 6300 3750 50  0001 C CNN
	1    6300 3750
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 60D94C84
P 7000 4050
F 0 "R4" H 7070 4096 50  0000 L CNN
F 1 "1M" H 7070 4005 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6930 4050 50  0001 C CNN
F 3 "~" H 7000 4050 50  0001 C CNN
	1    7000 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 60D95250
P 7000 4200
F 0 "#PWR014" H 7000 3950 50  0001 C CNN
F 1 "GND" H 7005 4027 50  0000 C CNN
F 2 "" H 7000 4200 50  0001 C CNN
F 3 "" H 7000 4200 50  0001 C CNN
	1    7000 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 3900 7000 3750
Wire Wire Line
	7000 3750 6850 3750
Wire Wire Line
	6550 3750 6450 3750
Wire Wire Line
	6150 3750 6050 3750
Connection ~ 6050 3750
Wire Wire Line
	7150 3750 7000 3750
Connection ~ 7000 3750
Wire Wire Line
	4950 3650 5250 3650
$Comp
L Amplifier_Operational:TL072 U1
U 2 1 60DA0D7C
P 5550 3750
F 0 "U1" H 5550 4117 50  0000 C CNN
F 1 "TL072" H 5550 4026 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5550 3750 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 5550 3750 50  0001 C CNN
	2    5550 3750
	1    0    0    -1  
$EndComp
$EndSCHEMATC
