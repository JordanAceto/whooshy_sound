EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 8
Title "Whooshy Sound Filter Pedal"
Date "2021-06-15"
Rev "0"
Comp ""
Comment1 "creativecommons.org/licenses/by/4.0/"
Comment2 "Licencse: CC by 4.0"
Comment3 "Author: Jordan Aceto"
Comment4 ""
$EndDescr
Text HLabel 4100 3350 0    50   Input ~ 0
raw_dry_signal_in
Text HLabel 6550 3450 2    50   Output ~ 0
buffered_dry_signal_out
Wire Wire Line
	5750 3550 5600 3550
Wire Wire Line
	5600 3550 5600 3950
Wire Wire Line
	5600 3950 6550 3950
Wire Wire Line
	6550 3950 6550 3450
Wire Wire Line
	6550 3450 6350 3450
$Comp
L Device:R R?
U 1 1 60D8220C
P 4850 3650
F 0 "R?" H 4920 3696 50  0000 L CNN
F 1 "2M2" H 4920 3605 50  0000 L CNN
F 2 "" V 4780 3650 50  0001 C CNN
F 3 "~" H 4850 3650 50  0001 C CNN
	1    4850 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60D8265C
P 4550 3350
F 0 "C?" V 4298 3350 50  0000 C CNN
F 1 "4n7" V 4389 3350 50  0000 C CNN
F 2 "" H 4588 3200 50  0001 C CNN
F 3 "~" H 4550 3350 50  0001 C CNN
	1    4550 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	4850 3500 4850 3350
Wire Wire Line
	4850 3350 4700 3350
Wire Wire Line
	4850 3350 5750 3350
Connection ~ 4850 3350
$Comp
L power:GND #PWR?
U 1 1 60D8506D
P 4850 3800
F 0 "#PWR?" H 4850 3550 50  0001 C CNN
F 1 "GND" H 4855 3627 50  0000 C CNN
F 2 "" H 4850 3800 50  0001 C CNN
F 3 "" H 4850 3800 50  0001 C CNN
	1    4850 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60D88283
P 4250 3650
F 0 "R?" H 4320 3696 50  0000 L CNN
F 1 "2M2" H 4320 3605 50  0000 L CNN
F 2 "" V 4180 3650 50  0001 C CNN
F 3 "~" H 4250 3650 50  0001 C CNN
	1    4250 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 3500 4250 3350
$Comp
L power:GND #PWR?
U 1 1 60D8828A
P 4250 3800
F 0 "#PWR?" H 4250 3550 50  0001 C CNN
F 1 "GND" H 4255 3627 50  0000 C CNN
F 2 "" H 4250 3800 50  0001 C CNN
F 3 "" H 4250 3800 50  0001 C CNN
	1    4250 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 3350 4400 3350
Wire Wire Line
	4250 3350 4100 3350
Connection ~ 4250 3350
$Comp
L Amplifier_Operational:TL072 U?
U 1 1 60D9E066
P 6050 3450
F 0 "U?" H 6050 3817 50  0000 C CNN
F 1 "TL072" H 6050 3726 50  0000 C CNN
F 2 "" H 6050 3450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 6050 3450 50  0001 C CNN
	1    6050 3450
	1    0    0    -1  
$EndComp
$EndSCHEMATC
