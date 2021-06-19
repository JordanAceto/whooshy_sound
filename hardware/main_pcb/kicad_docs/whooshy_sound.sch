EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 8
Title "Whooshy Sound Filter Pedal"
Date "2021-06-15"
Rev "0"
Comp ""
Comment1 "creativecommons.org/licenses/by/4.0/"
Comment2 "License: CC by 4.0"
Comment3 "Author: Jordan Aceto"
Comment4 ""
$EndDescr
$Sheet
S 2150 1900 2000 1000
U 60C8BA02
F0 "input_buffer" 50
F1 "input_buffer.sch" 50
F2 "raw_dry_signal_in" I L 2150 2350 50 
F3 "buffered_dry_signal_out" O R 4150 2350 50 
$EndSheet
$Sheet
S 7650 1900 2000 1000
U 60C8BA54
F0 "output_buffer" 50
F1 "output_buffer.sch" 50
F2 "raw_wet_signal_in" I L 7650 2350 50 
F3 "buffered_wet_signal_out" O R 9650 2350 50 
$EndSheet
$Comp
L Connector_Generic:Conn_01x04 J6
U 1 1 60C8BB71
P 5350 2200
F 0 "J6" H 5200 2550 50  0000 L CNN
F 1 "signal_in" H 5050 2450 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 5350 2200 50  0001 C CNN
F 3 "~" H 5350 2200 50  0001 C CNN
	1    5350 2200
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J8
U 1 1 60C8C301
P 5350 4500
F 0 "J8" H 5100 4850 50  0000 L CNN
F 1 "cutoff_CV_in" H 4900 4750 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 5350 4500 50  0001 C CNN
F 3 "~" H 5350 4500 50  0001 C CNN
	1    5350 4500
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J7
U 1 1 60C8C8F8
P 6450 2200
F 0 "J7" H 6368 2517 50  0000 C CNN
F 1 "signal_out" H 6300 2450 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 6450 2200 50  0001 C CNN
F 3 "~" H 6450 2200 50  0001 C CNN
	1    6450 2200
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x08 J9
U 1 1 60C8D3AC
P 6450 4350
F 0 "J9" H 6250 4900 50  0000 C CNN
F 1 "rez_CV_and_PS" H 6200 4800 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 6450 4350 50  0001 C CNN
F 3 "~" H 6450 4350 50  0001 C CNN
	1    6450 4350
	-1   0    0    -1  
$EndComp
$Sheet
S 8500 5050 2000 1000
U 60C8ED37
F0 "power_supply" 50
F1 "power_supply.sch" 50
F2 "9VDC_in" I L 8500 5300 50 
F3 "power_gnd_in" I L 8500 5400 50 
$EndSheet
Wire Notes Line
	5400 1850 5400 4900
Wire Notes Line
	6400 4900 6400 1850
Wire Wire Line
	5150 2200 5050 2200
Wire Wire Line
	5050 2200 5050 2150
Wire Wire Line
	5050 2100 5150 2100
Wire Wire Line
	5150 2300 5050 2300
Wire Wire Line
	5050 2300 5050 2350
Wire Wire Line
	5050 2400 5150 2400
Wire Wire Line
	6650 2200 6750 2200
Wire Wire Line
	6750 2200 6750 2150
Wire Wire Line
	6750 2100 6650 2100
Wire Wire Line
	6650 2300 6750 2300
Wire Wire Line
	6750 2300 6750 2350
Wire Wire Line
	6750 2400 6650 2400
Wire Wire Line
	6650 4150 6750 4150
Wire Wire Line
	6750 4150 6750 4100
Wire Wire Line
	6750 4050 6650 4050
Wire Wire Line
	6650 4250 6750 4250
Wire Wire Line
	6750 4350 6650 4350
Wire Wire Line
	6650 4450 6750 4450
Wire Wire Line
	6750 4450 6750 4500
Wire Wire Line
	6750 4550 6650 4550
Wire Wire Line
	6650 4650 6750 4650
Wire Wire Line
	6750 4650 6750 4700
Wire Wire Line
	6750 4750 6650 4750
Wire Wire Line
	5150 4500 5050 4500
Wire Wire Line
	5050 4500 5050 4450
Wire Wire Line
	5050 4400 5150 4400
Wire Wire Line
	5150 4600 5050 4600
Wire Wire Line
	5050 4600 5050 4650
Wire Wire Line
	5050 4700 5150 4700
Wire Wire Line
	5050 2350 4300 2350
Connection ~ 5050 2350
Wire Wire Line
	5050 2350 5050 2400
Wire Wire Line
	5050 4650 4150 4650
Connection ~ 5050 4650
Wire Wire Line
	5050 4650 5050 4700
Wire Wire Line
	6750 2350 7650 2350
Connection ~ 6750 2350
Wire Wire Line
	6750 2350 6750 2400
$Comp
L power:GND #PWR06
U 1 1 60C9A78B
P 6850 2150
F 0 "#PWR06" H 6850 1900 50  0001 C CNN
F 1 "GND" V 6855 2022 50  0000 R CNN
F 2 "" H 6850 2150 50  0001 C CNN
F 3 "" H 6850 2150 50  0001 C CNN
	1    6850 2150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6850 2150 6750 2150
Connection ~ 6750 2150
Wire Wire Line
	6750 2150 6750 2100
$Comp
L power:GND #PWR07
U 1 1 60C9B927
P 6850 4100
F 0 "#PWR07" H 6850 3850 50  0001 C CNN
F 1 "GND" V 6855 3972 50  0000 R CNN
F 2 "" H 6850 4100 50  0001 C CNN
F 3 "" H 6850 4100 50  0001 C CNN
	1    6850 4100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6850 4100 6750 4100
Connection ~ 6750 4100
Wire Wire Line
	6750 4100 6750 4050
$Comp
L power:GND #PWR05
U 1 1 60C9C900
P 4950 4450
F 0 "#PWR05" H 4950 4200 50  0001 C CNN
F 1 "GND" V 4955 4322 50  0000 R CNN
F 2 "" H 4950 4450 50  0001 C CNN
F 3 "" H 4950 4450 50  0001 C CNN
	1    4950 4450
	0    1    1    0   
$EndComp
Wire Wire Line
	4950 4450 5050 4450
$Comp
L power:GND #PWR04
U 1 1 60C9D375
P 4950 2150
F 0 "#PWR04" H 4950 1900 50  0001 C CNN
F 1 "GND" V 4955 2022 50  0000 R CNN
F 2 "" H 4950 2150 50  0001 C CNN
F 3 "" H 4950 2150 50  0001 C CNN
	1    4950 2150
	0    1    1    0   
$EndComp
Wire Wire Line
	4950 2150 5050 2150
Connection ~ 5050 2150
Wire Wire Line
	5050 2150 5050 2100
Connection ~ 5050 4450
Wire Wire Line
	5050 4450 5050 4400
$Comp
L power:+12V #PWR09
U 1 1 60C9F445
P 6850 4700
F 0 "#PWR09" H 6850 4550 50  0001 C CNN
F 1 "+12V" V 6865 4828 50  0000 L CNN
F 2 "" H 6850 4700 50  0001 C CNN
F 3 "" H 6850 4700 50  0001 C CNN
	1    6850 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	6850 4700 6750 4700
Connection ~ 6750 4700
Wire Wire Line
	6750 4700 6750 4750
$Comp
L power:-12V #PWR08
U 1 1 60CA0C18
P 6850 4500
F 0 "#PWR08" H 6850 4600 50  0001 C CNN
F 1 "-12V" V 6865 4628 50  0000 L CNN
F 2 "" H 6850 4500 50  0001 C CNN
F 3 "" H 6850 4500 50  0001 C CNN
	1    6850 4500
	0    1    1    0   
$EndComp
Wire Wire Line
	6850 4500 6750 4500
Connection ~ 6750 4500
Wire Wire Line
	6750 4500 6750 4550
$Sheet
S 2150 5900 2000 1000
U 60CB527C
F0 "resonance_CV_generator" 50
F1 "resonance_CV_generator.sch" 50
F2 "summed_resonance_CV_out" O R 4150 6300 50 
F3 "ext_resonance_CV_in" I L 2150 6650 50 
F4 "expression_pedal_ring_current" O L 2150 6750 50 
$EndSheet
$Sheet
S 2150 3900 2000 1000
U 60C8BB05
F0 "cutoff_CV_generator" 50
F1 "cutoff_CV_generator.sch" 50
F2 "summed_cutoff_CV_out" O R 4150 4650 50 
F3 "envelope_follower_audio_in" I L 2150 4100 50 
F4 "ext_cutoff_CV_in" I L 2150 4350 50 
F5 "expression_pedal_ring_current" O L 2150 4450 50 
$EndSheet
Wire Notes Line
	6400 1850 5400 1850
Wire Notes Line
	5400 4900 6400 4900
$Comp
L Connector_Generic:Conn_01x03 J3
U 1 1 6130D098
P 1250 4450
F 0 "J3" H 1168 4767 50  0000 C CNN
F 1 "extern_cutoff_CV_TRS" H 1168 4676 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 1250 4450 50  0001 C CNN
F 3 "~" H 1250 4450 50  0001 C CNN
	1    1250 4450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1450 4350 2150 4350
Wire Wire Line
	1450 4450 2150 4450
$Comp
L power:GND #PWR02
U 1 1 61314EEC
P 1550 4650
F 0 "#PWR02" H 1550 4400 50  0001 C CNN
F 1 "GND" H 1555 4477 50  0000 C CNN
F 2 "" H 1550 4650 50  0001 C CNN
F 3 "" H 1550 4650 50  0001 C CNN
	1    1550 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 4650 1550 4550
Wire Wire Line
	1550 4550 1450 4550
$Comp
L Connector_Generic:Conn_01x03 J4
U 1 1 6131F865
P 1250 6750
F 0 "J4" H 1200 7100 50  0000 L CNN
F 1 "extern_rez_CV_TRS" H 950 7000 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 1250 6750 50  0001 C CNN
F 3 "~" H 1250 6750 50  0001 C CNN
	1    1250 6750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1450 6650 2150 6650
Wire Wire Line
	1450 6750 2150 6750
$Comp
L power:GND #PWR03
U 1 1 6131F86E
P 1550 6950
F 0 "#PWR03" H 1550 6700 50  0001 C CNN
F 1 "GND" H 1555 6777 50  0000 C CNN
F 2 "" H 1550 6950 50  0001 C CNN
F 3 "" H 1550 6950 50  0001 C CNN
	1    1550 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 6950 1550 6850
Wire Wire Line
	1550 6850 1450 6850
Wire Wire Line
	2150 4100 2000 4100
Wire Wire Line
	2000 3400 4300 3400
Wire Wire Line
	4300 3400 4300 2350
Wire Wire Line
	2000 3400 2000 4100
Connection ~ 4300 2350
Wire Wire Line
	4300 2350 4150 2350
Wire Wire Line
	1550 2450 1450 2450
Wire Wire Line
	1550 2550 1550 2450
$Comp
L power:GND #PWR01
U 1 1 6134CD62
P 1550 2550
F 0 "#PWR01" H 1550 2300 50  0001 C CNN
F 1 "GND" H 1555 2377 50  0000 C CNN
F 2 "" H 1550 2550 50  0001 C CNN
F 3 "" H 1550 2550 50  0001 C CNN
	1    1550 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 2350 2150 2350
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 6134A48F
P 1250 2350
F 0 "J1" H 1168 2567 50  0000 C CNN
F 1 "audio_in" H 1168 2476 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1250 2350 50  0001 C CNN
F 3 "~" H 1250 2350 50  0001 C CNN
	1    1250 2350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10050 2450 10150 2450
Wire Wire Line
	10050 2550 10050 2450
$Comp
L power:GND #PWR011
U 1 1 61350FA5
P 10050 2550
F 0 "#PWR011" H 10050 2300 50  0001 C CNN
F 1 "GND" H 10055 2377 50  0000 C CNN
F 2 "" H 10050 2550 50  0001 C CNN
F 3 "" H 10050 2550 50  0001 C CNN
	1    10050 2550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10150 2350 9650 2350
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 61350FAC
P 10350 2350
F 0 "J2" H 10430 2342 50  0000 L CNN
F 1 "audio_out" H 10430 2251 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 10350 2350 50  0001 C CNN
F 3 "~" H 10350 2350 50  0001 C CNN
	1    10350 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 5400 8250 5400
Wire Wire Line
	8350 5500 8350 5400
$Comp
L power:GND #PWR010
U 1 1 61356033
P 8350 5500
F 0 "#PWR010" H 8350 5250 50  0001 C CNN
F 1 "GND" H 8355 5327 50  0000 C CNN
F 2 "" H 8350 5500 50  0001 C CNN
F 3 "" H 8350 5500 50  0001 C CNN
	1    8350 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 5300 8500 5300
$Comp
L Connector_Generic:Conn_01x02 J5
U 1 1 6135603A
P 8050 5300
F 0 "J5" H 7968 5517 50  0000 C CNN
F 1 "9VDC_in" H 7968 5426 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 8050 5300 50  0001 C CNN
F 3 "~" H 8050 5300 50  0001 C CNN
	1    8050 5300
	-1   0    0    -1  
$EndComp
Text Notes 5300 1500 0    118  ~ 0
VCF Plug-In \nBoard Port
Text Notes 5300 1750 0    50   ~ 0
For various compatible VCF boards visit:\ngithub.com/JordanAceto/VCF_plug_in_boards
Wire Wire Line
	6750 4250 6750 4300
Wire Wire Line
	7400 6300 7400 4300
Wire Wire Line
	7400 4300 6750 4300
Wire Wire Line
	4150 6300 7400 6300
Connection ~ 6750 4300
Wire Wire Line
	6750 4300 6750 4350
Wire Wire Line
	8350 5400 8500 5400
Connection ~ 8350 5400
$EndSCHEMATC
