EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "No-Brim project"
Date "2020-06-16"
Rev ""
Comp "AFP 2019-2020"
Comment1 "Schema elettrico scheda per Arduino"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L No-Brim-Scheme-rescue:IRLML0030-Transistor_FET Q4
U 1 1 5EE486A6
P 4550 6600
F 0 "Q4" H 4754 6646 50  0000 L CNN
F 1 "IRLML0030" H 4754 6555 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4750 6525 50  0001 L CIN
F 3 "https://www.infineon.com/dgdl/irlml0030pbf.pdf?fileId=5546d462533600a401535664773825df" H 4550 6600 50  0001 L CNN
	1    4550 6600
	1    0    0    -1  
$EndComp
$Comp
L No-Brim-Scheme-rescue:Conn_01x02-Connector_Generic J6
U 1 1 5EE486AC
P 4950 6000
F 0 "J6" H 5030 5992 50  0000 L CNN
F 1 "Elettrovalve_4M1" H 5030 5901 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 4950 6000 50  0001 C CNN
F 3 "~" H 4950 6000 50  0001 C CNN
	1    4950 6000
	1    0    0    -1  
$EndComp
$Comp
L No-Brim-Scheme-rescue:R-Device R4
U 1 1 5EE486B2
P 4200 6750
F 0 "R4" H 4270 6796 50  0000 L CNN
F 1 "R" H 4270 6705 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 4130 6750 50  0001 C CNN
F 3 "~" H 4200 6750 50  0001 C CNN
	1    4200 6750
	1    0    0    -1  
$EndComp
$Comp
L No-Brim-Scheme-rescue:D-Device D4
U 1 1 5EE486B8
P 4400 6200
F 0 "D4" H 4400 6417 50  0000 C CNN
F 1 "D" H 4400 6326 50  0000 C CNN
F 2 "Diode_SMD:D_2010_5025Metric_Pad1.52x2.65mm_HandSolder" H 4400 6200 50  0001 C CNN
F 3 "~" H 4400 6200 50  0001 C CNN
	1    4400 6200
	0    1    1    0   
$EndComp
Wire Wire Line
	4650 6350 4400 6350
Wire Wire Line
	4650 6400 4650 6350
Wire Wire Line
	4750 6100 4650 6100
Wire Wire Line
	4750 6000 4600 6000
Wire Wire Line
	4400 6000 4400 6050
$Comp
L No-Brim-Scheme-rescue:+24V-power #PWR09
U 1 1 5EE486C6
P 4600 5950
F 0 "#PWR09" H 4600 5800 50  0001 C CNN
F 1 "+24V" H 4615 6123 50  0000 C CNN
F 2 "" H 4600 5950 50  0001 C CNN
F 3 "" H 4600 5950 50  0001 C CNN
	1    4600 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 5950 4600 6000
Connection ~ 4600 6000
Wire Wire Line
	4600 6000 4400 6000
$Comp
L No-Brim-Scheme-rescue:GND-power #PWR010
U 1 1 5EE486CF
P 4650 7000
F 0 "#PWR010" H 4650 6750 50  0001 C CNN
F 1 "GND" H 4655 6827 50  0000 C CNN
F 2 "" H 4650 7000 50  0001 C CNN
F 3 "" H 4650 7000 50  0001 C CNN
	1    4650 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 7000 4650 6950
Wire Wire Line
	4350 6600 4200 6600
Wire Wire Line
	4200 6900 4200 6950
Wire Wire Line
	4200 6950 4650 6950
Wire Wire Line
	4200 6600 3950 6600
Connection ~ 4200 6600
Wire Wire Line
	4650 6100 4650 6350
Connection ~ 4650 6350
Wire Wire Line
	4650 6800 4650 6950
Connection ~ 4650 6950
$Comp
L No-Brim-Scheme-rescue:IRLML0030-Transistor_FET Q3
U 1 1 5EE59E99
P 3850 5100
F 0 "Q3" H 4054 5146 50  0000 L CNN
F 1 "IRLML0030" H 4054 5055 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4050 5025 50  0001 L CIN
F 3 "https://www.infineon.com/dgdl/irlml0030pbf.pdf?fileId=5546d462533600a401535664773825df" H 3850 5100 50  0001 L CNN
	1    3850 5100
	1    0    0    -1  
$EndComp
$Comp
L No-Brim-Scheme-rescue:Conn_01x02-Connector_Generic J5
U 1 1 5EE59E9F
P 4250 4500
F 0 "J5" H 4330 4492 50  0000 L CNN
F 1 "Elettrovalve_3M1" H 4330 4401 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 4250 4500 50  0001 C CNN
F 3 "~" H 4250 4500 50  0001 C CNN
	1    4250 4500
	1    0    0    -1  
$EndComp
$Comp
L No-Brim-Scheme-rescue:R-Device R3
U 1 1 5EE59EA5
P 3500 5250
F 0 "R3" H 3570 5296 50  0000 L CNN
F 1 "R" H 3570 5205 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 3430 5250 50  0001 C CNN
F 3 "~" H 3500 5250 50  0001 C CNN
	1    3500 5250
	1    0    0    -1  
$EndComp
$Comp
L No-Brim-Scheme-rescue:D-Device D3
U 1 1 5EE59EAB
P 3700 4700
F 0 "D3" H 3700 4917 50  0000 C CNN
F 1 "D" H 3700 4826 50  0000 C CNN
F 2 "Diode_SMD:D_2010_5025Metric_Pad1.52x2.65mm_HandSolder" H 3700 4700 50  0001 C CNN
F 3 "~" H 3700 4700 50  0001 C CNN
	1    3700 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	3950 4850 3700 4850
Wire Wire Line
	3950 4900 3950 4850
Wire Wire Line
	4050 4600 3950 4600
Wire Wire Line
	4050 4500 3900 4500
Wire Wire Line
	3700 4500 3700 4550
$Comp
L No-Brim-Scheme-rescue:+24V-power #PWR07
U 1 1 5EE59EB6
P 3900 4450
F 0 "#PWR07" H 3900 4300 50  0001 C CNN
F 1 "+24V" H 3915 4623 50  0000 C CNN
F 2 "" H 3900 4450 50  0001 C CNN
F 3 "" H 3900 4450 50  0001 C CNN
	1    3900 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 4450 3900 4500
Connection ~ 3900 4500
Wire Wire Line
	3900 4500 3700 4500
$Comp
L No-Brim-Scheme-rescue:GND-power #PWR08
U 1 1 5EE59EBF
P 3950 5550
F 0 "#PWR08" H 3950 5300 50  0001 C CNN
F 1 "GND" H 3955 5377 50  0000 C CNN
F 2 "" H 3950 5550 50  0001 C CNN
F 3 "" H 3950 5550 50  0001 C CNN
	1    3950 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 5100 3500 5100
Wire Wire Line
	3500 5400 3500 5450
Wire Wire Line
	3500 5450 3950 5450
Wire Wire Line
	3500 5100 3250 5100
Connection ~ 3500 5100
Wire Wire Line
	3950 4600 3950 4850
Connection ~ 3950 4850
Wire Wire Line
	3950 5300 3950 5450
Connection ~ 3950 5450
$Comp
L No-Brim-Scheme-rescue:IRLML0030-Transistor_FET Q2
U 1 1 5EE5C5AD
P 3800 3450
F 0 "Q2" H 4004 3496 50  0000 L CNN
F 1 "IRLML0030" H 4004 3405 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4000 3375 50  0001 L CIN
F 3 "https://www.infineon.com/dgdl/irlml0030pbf.pdf?fileId=5546d462533600a401535664773825df" H 3800 3450 50  0001 L CNN
	1    3800 3450
	1    0    0    -1  
$EndComp
$Comp
L No-Brim-Scheme-rescue:Conn_01x02-Connector_Generic J4
U 1 1 5EE5C5B3
P 4200 2850
F 0 "J4" H 4280 2842 50  0000 L CNN
F 1 "Elettrovalve_2M1" H 4280 2751 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 4200 2850 50  0001 C CNN
F 3 "~" H 4200 2850 50  0001 C CNN
	1    4200 2850
	1    0    0    -1  
$EndComp
$Comp
L No-Brim-Scheme-rescue:R-Device R2
U 1 1 5EE5C5B9
P 3450 3600
F 0 "R2" H 3520 3646 50  0000 L CNN
F 1 "R" H 3520 3555 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 3380 3600 50  0001 C CNN
F 3 "~" H 3450 3600 50  0001 C CNN
	1    3450 3600
	1    0    0    -1  
$EndComp
$Comp
L No-Brim-Scheme-rescue:D-Device D2
U 1 1 5EE5C5BF
P 3650 3050
F 0 "D2" H 3650 3267 50  0000 C CNN
F 1 "D" H 3650 3176 50  0000 C CNN
F 2 "Diode_SMD:D_2010_5025Metric_Pad1.52x2.65mm_HandSolder" H 3650 3050 50  0001 C CNN
F 3 "~" H 3650 3050 50  0001 C CNN
	1    3650 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	3900 3200 3650 3200
Wire Wire Line
	3900 3250 3900 3200
Wire Wire Line
	4000 2950 3900 2950
Wire Wire Line
	4000 2850 3850 2850
Wire Wire Line
	3650 2850 3650 2900
$Comp
L No-Brim-Scheme-rescue:+24V-power #PWR05
U 1 1 5EE5C5CA
P 3850 2800
F 0 "#PWR05" H 3850 2650 50  0001 C CNN
F 1 "+24V" H 3865 2973 50  0000 C CNN
F 2 "" H 3850 2800 50  0001 C CNN
F 3 "" H 3850 2800 50  0001 C CNN
	1    3850 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 2800 3850 2850
Connection ~ 3850 2850
Wire Wire Line
	3850 2850 3650 2850
$Comp
L No-Brim-Scheme-rescue:GND-power #PWR06
U 1 1 5EE5C5D3
P 3900 3850
F 0 "#PWR06" H 3900 3600 50  0001 C CNN
F 1 "GND" H 3905 3677 50  0000 C CNN
F 2 "" H 3900 3850 50  0001 C CNN
F 3 "" H 3900 3850 50  0001 C CNN
	1    3900 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 3850 3900 3800
Wire Wire Line
	3600 3450 3450 3450
Wire Wire Line
	3450 3750 3450 3800
Wire Wire Line
	3450 3800 3900 3800
Wire Wire Line
	3450 3450 3200 3450
Connection ~ 3450 3450
Wire Wire Line
	3900 2950 3900 3200
Connection ~ 3900 3200
Wire Wire Line
	3900 3650 3900 3800
Connection ~ 3900 3800
$Comp
L No-Brim-Scheme-rescue:IRLML0030-Transistor_FET Q1
U 1 1 5EE5FB93
P 3750 1800
F 0 "Q1" H 3954 1846 50  0000 L CNN
F 1 "IRLML0030" H 3954 1755 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3950 1725 50  0001 L CIN
F 3 "https://www.infineon.com/dgdl/irlml0030pbf.pdf?fileId=5546d462533600a401535664773825df" H 3750 1800 50  0001 L CNN
	1    3750 1800
	1    0    0    -1  
$EndComp
$Comp
L No-Brim-Scheme-rescue:Conn_01x02-Connector_Generic J3
U 1 1 5EE5FB99
P 4150 1200
F 0 "J3" H 4230 1192 50  0000 L CNN
F 1 "Elettrovalve_1M1" H 4230 1101 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 4150 1200 50  0001 C CNN
F 3 "~" H 4150 1200 50  0001 C CNN
	1    4150 1200
	1    0    0    -1  
$EndComp
$Comp
L No-Brim-Scheme-rescue:R-Device R1
U 1 1 5EE5FB9F
P 3400 1950
F 0 "R1" H 3470 1996 50  0000 L CNN
F 1 "R" H 3470 1905 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 3330 1950 50  0001 C CNN
F 3 "~" H 3400 1950 50  0001 C CNN
	1    3400 1950
	1    0    0    -1  
$EndComp
$Comp
L No-Brim-Scheme-rescue:D-Device D1
U 1 1 5EE5FBA5
P 3600 1400
F 0 "D1" H 3600 1617 50  0000 C CNN
F 1 "D" H 3600 1526 50  0000 C CNN
F 2 "Diode_SMD:D_2010_5025Metric_Pad1.52x2.65mm_HandSolder" H 3600 1400 50  0001 C CNN
F 3 "~" H 3600 1400 50  0001 C CNN
	1    3600 1400
	0    1    1    0   
$EndComp
Wire Wire Line
	3850 1550 3600 1550
Wire Wire Line
	3850 1600 3850 1550
Wire Wire Line
	3950 1300 3850 1300
Wire Wire Line
	3950 1200 3800 1200
Wire Wire Line
	3600 1200 3600 1250
$Comp
L No-Brim-Scheme-rescue:+24V-power #PWR03
U 1 1 5EE5FBB0
P 3800 1150
F 0 "#PWR03" H 3800 1000 50  0001 C CNN
F 1 "+24V" H 3815 1323 50  0000 C CNN
F 2 "" H 3800 1150 50  0001 C CNN
F 3 "" H 3800 1150 50  0001 C CNN
	1    3800 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 1150 3800 1200
Connection ~ 3800 1200
Wire Wire Line
	3800 1200 3600 1200
$Comp
L No-Brim-Scheme-rescue:GND-power #PWR04
U 1 1 5EE5FBB9
P 3850 2200
F 0 "#PWR04" H 3850 1950 50  0001 C CNN
F 1 "GND" H 3855 2027 50  0000 C CNN
F 2 "" H 3850 2200 50  0001 C CNN
F 3 "" H 3850 2200 50  0001 C CNN
	1    3850 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 2200 3850 2150
Wire Wire Line
	3550 1800 3400 1800
Wire Wire Line
	3400 2100 3400 2150
Wire Wire Line
	3400 2150 3850 2150
Wire Wire Line
	3400 1800 3150 1800
Connection ~ 3400 1800
Wire Wire Line
	3850 1300 3850 1550
Connection ~ 3850 1550
Wire Wire Line
	3850 2000 3850 2150
Connection ~ 3850 2150
$Comp
L No-Brim-Scheme-rescue:IRLML0030-Transistor_FET Q8
U 1 1 5EE6A0B9
P 7950 2750
F 0 "Q8" H 8154 2796 50  0000 L CNN
F 1 "IRLML0030" H 8154 2705 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8150 2675 50  0001 L CIN
F 3 "https://www.infineon.com/dgdl/irlml0030pbf.pdf?fileId=5546d462533600a401535664773825df" H 7950 2750 50  0001 L CNN
	1    7950 2750
	1    0    0    -1  
$EndComp
$Comp
L No-Brim-Scheme-rescue:Conn_01x02-Connector_Generic J10
U 1 1 5EE6A0BF
P 8350 2150
F 0 "J10" H 8430 2142 50  0000 L CNN
F 1 "Motor 24v" H 8430 2051 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 8350 2150 50  0001 C CNN
F 3 "~" H 8350 2150 50  0001 C CNN
	1    8350 2150
	1    0    0    -1  
$EndComp
$Comp
L No-Brim-Scheme-rescue:R-Device R8
U 1 1 5EE6A0C5
P 7600 2900
F 0 "R8" H 7670 2946 50  0000 L CNN
F 1 "R" H 7670 2855 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 7530 2900 50  0001 C CNN
F 3 "~" H 7600 2900 50  0001 C CNN
	1    7600 2900
	1    0    0    -1  
$EndComp
$Comp
L No-Brim-Scheme-rescue:D-Device D8
U 1 1 5EE6A0CB
P 7800 2350
F 0 "D8" H 7800 2567 50  0000 C CNN
F 1 "D" H 7800 2476 50  0000 C CNN
F 2 "Diode_SMD:D_2010_5025Metric_Pad1.52x2.65mm_HandSolder" H 7800 2350 50  0001 C CNN
F 3 "~" H 7800 2350 50  0001 C CNN
	1    7800 2350
	0    1    1    0   
$EndComp
Wire Wire Line
	8050 2500 7800 2500
Wire Wire Line
	8050 2550 8050 2500
Wire Wire Line
	8150 2250 8050 2250
Wire Wire Line
	8150 2150 8000 2150
Wire Wire Line
	7800 2150 7800 2200
$Comp
L No-Brim-Scheme-rescue:+24V-power #PWR017
U 1 1 5EE6A0D6
P 8000 2100
F 0 "#PWR017" H 8000 1950 50  0001 C CNN
F 1 "+24V" H 8015 2273 50  0000 C CNN
F 2 "" H 8000 2100 50  0001 C CNN
F 3 "" H 8000 2100 50  0001 C CNN
	1    8000 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 2100 8000 2150
Connection ~ 8000 2150
Wire Wire Line
	8000 2150 7800 2150
$Comp
L No-Brim-Scheme-rescue:GND-power #PWR018
U 1 1 5EE6A0DF
P 8050 3150
F 0 "#PWR018" H 8050 2900 50  0001 C CNN
F 1 "GND" H 8055 2977 50  0000 C CNN
F 2 "" H 8050 3150 50  0001 C CNN
F 3 "" H 8050 3150 50  0001 C CNN
	1    8050 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 3150 8050 3100
Wire Wire Line
	7750 2750 7600 2750
Wire Wire Line
	7600 3050 7600 3100
Wire Wire Line
	7600 3100 8050 3100
Wire Wire Line
	7600 2750 7350 2750
Connection ~ 7600 2750
Wire Wire Line
	8050 2250 8050 2500
Connection ~ 8050 2500
Wire Wire Line
	8050 2950 8050 3100
Connection ~ 8050 3100
$Comp
L No-Brim-Scheme-rescue:Conn_01x02-Connector_Generic J2
U 1 1 5EE7C8EA
P 1050 2700
F 0 "J2" H 1130 2692 50  0000 L CNN
F 1 "24V" H 1130 2601 50  0000 L CNN
F 2 "Connector_PinSocket_2.00mm:PinSocket_1x02_P2.00mm_Vertical" H 1050 2700 50  0001 C CNN
F 3 "~" H 1050 2700 50  0001 C CNN
	1    1050 2700
	-1   0    0    -1  
$EndComp
$Comp
L No-Brim-Scheme-rescue:+24V-power #PWR01
U 1 1 5EE8CA09
P 1450 2700
F 0 "#PWR01" H 1450 2550 50  0001 C CNN
F 1 "+24V" V 1400 2650 50  0000 C CNN
F 2 "" H 1450 2700 50  0001 C CNN
F 3 "" H 1450 2700 50  0001 C CNN
	1    1450 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	1450 2700 1250 2700
$Comp
L No-Brim-Scheme-rescue:GND-power #PWR02
U 1 1 5EE915B2
P 1450 2850
F 0 "#PWR02" H 1450 2600 50  0001 C CNN
F 1 "GND" H 1600 2800 50  0000 C CNN
F 2 "" H 1450 2850 50  0001 C CNN
F 3 "" H 1450 2850 50  0001 C CNN
	1    1450 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 2850 1450 2800
Wire Wire Line
	1450 2800 1250 2800
Text GLabel 7350 2750 0    50   Input ~ 0
Motor_24v
Text GLabel 1150 1000 2    50   Input ~ 0
1M1_1
Text GLabel 1150 1700 2    50   Input ~ 0
Motor_24v
Text GLabel 1150 1800 2    50   Input ~ 0
Motor_230v
$Comp
L No-Brim-Scheme-rescue:IRLML0030-Transistor_FET Q9
U 1 1 5EE55838
P 8000 4750
F 0 "Q9" H 8204 4796 50  0000 L CNN
F 1 "IRLML0030" H 8204 4705 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8200 4675 50  0001 L CIN
F 3 "https://www.infineon.com/dgdl/irlml0030pbf.pdf?fileId=5546d462533600a401535664773825df" H 8000 4750 50  0001 L CNN
	1    8000 4750
	1    0    0    -1  
$EndComp
$Comp
L No-Brim-Scheme-rescue:R-Device R9
U 1 1 5EE55844
P 7650 4900
F 0 "R9" H 7720 4946 50  0000 L CNN
F 1 "R" H 7720 4855 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 7580 4900 50  0001 C CNN
F 3 "~" H 7650 4900 50  0001 C CNN
	1    7650 4900
	1    0    0    -1  
$EndComp
$Comp
L No-Brim-Scheme-rescue:D-Device D9
U 1 1 5EE5584A
P 7850 4000
F 0 "D9" H 7850 4217 50  0000 C CNN
F 1 "D" H 7850 4126 50  0000 C CNN
F 2 "Diode_SMD:D_2010_5025Metric_Pad1.52x2.65mm_HandSolder" H 7850 4000 50  0001 C CNN
F 3 "~" H 7850 4000 50  0001 C CNN
	1    7850 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	8100 4500 7850 4500
Wire Wire Line
	8100 4550 8100 4500
Wire Wire Line
	7850 3800 7850 3850
$Comp
L No-Brim-Scheme-rescue:+24V-power #PWR019
U 1 1 5EE55855
P 8050 3750
F 0 "#PWR019" H 8050 3600 50  0001 C CNN
F 1 "+24V" H 8065 3923 50  0000 C CNN
F 2 "" H 8050 3750 50  0001 C CNN
F 3 "" H 8050 3750 50  0001 C CNN
	1    8050 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 3750 8050 3800
Wire Wire Line
	8050 3800 7850 3800
$Comp
L No-Brim-Scheme-rescue:GND-power #PWR020
U 1 1 5EE5585E
P 8100 5150
F 0 "#PWR020" H 8100 4900 50  0001 C CNN
F 1 "GND" H 8105 4977 50  0000 C CNN
F 2 "" H 8100 5150 50  0001 C CNN
F 3 "" H 8100 5150 50  0001 C CNN
	1    8100 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 5150 8100 5100
Wire Wire Line
	7800 4750 7650 4750
Wire Wire Line
	7650 5050 7650 5100
Wire Wire Line
	7650 5100 8100 5100
Wire Wire Line
	7650 4750 7400 4750
Connection ~ 7650 4750
Wire Wire Line
	8100 4950 8100 5100
Connection ~ 8100 5100
Text GLabel 7400 4750 0    50   Input ~ 0
Motor_230v
$Comp
L No-Brim-Scheme-rescue:DIPxx-1Cxx-51x-Relay K1
U 1 1 5EE59E6C
P 8450 4150
F 0 "K1" H 8880 4196 50  0000 L CNN
F 1 "DIPxx-1Cxx-51x" H 8880 4105 50  0000 L CNN
F 2 "Relay_THT:Relay_StandexMeder_DIP_LowProfile" H 8900 4100 50  0001 L CNN
F 3 "https://standexelectronics.com/wp-content/uploads/datasheet_reed_relay_DIP.pdf" H 8450 4150 50  0001 C CNN
	1    8450 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 4150 7850 4500
Wire Wire Line
	8250 3850 8250 3800
Wire Wire Line
	8250 3800 8050 3800
Connection ~ 8050 3800
Wire Wire Line
	8250 4450 8250 4500
Wire Wire Line
	8250 4500 8100 4500
Connection ~ 8100 4500
Text GLabel 1150 1100 2    50   Input ~ 0
1M1_2
Text GLabel 1150 1200 2    50   Input ~ 0
2M1_1
Text GLabel 1150 1300 2    50   Input ~ 0
2M1_2
Text GLabel 1150 1400 2    50   Input ~ 0
3M1_1
Text GLabel 1150 1500 2    50   Input ~ 0
3M1_2
Text GLabel 1150 1600 2    50   Input ~ 0
4M1_1
$Comp
L No-Brim-Scheme-rescue:IRLML0030-Transistor_FET Q7
U 1 1 5EEDF32C
P 5550 5100
F 0 "Q7" H 5754 5146 50  0000 L CNN
F 1 "IRLML0030" H 5754 5055 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5750 5025 50  0001 L CIN
F 3 "https://www.infineon.com/dgdl/irlml0030pbf.pdf?fileId=5546d462533600a401535664773825df" H 5550 5100 50  0001 L CNN
	1    5550 5100
	1    0    0    -1  
$EndComp
$Comp
L No-Brim-Scheme-rescue:Conn_01x02-Connector_Generic J9
U 1 1 5EEDF332
P 5950 4500
F 0 "J9" H 6030 4492 50  0000 L CNN
F 1 "Elettrovalve_3M2" H 6030 4401 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 5950 4500 50  0001 C CNN
F 3 "~" H 5950 4500 50  0001 C CNN
	1    5950 4500
	1    0    0    -1  
$EndComp
$Comp
L No-Brim-Scheme-rescue:R-Device R7
U 1 1 5EEDF338
P 5200 5250
F 0 "R7" H 5270 5296 50  0000 L CNN
F 1 "R" H 5270 5205 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5130 5250 50  0001 C CNN
F 3 "~" H 5200 5250 50  0001 C CNN
	1    5200 5250
	1    0    0    -1  
$EndComp
$Comp
L No-Brim-Scheme-rescue:D-Device D7
U 1 1 5EEDF33E
P 5400 4700
F 0 "D7" H 5400 4917 50  0000 C CNN
F 1 "D" H 5400 4826 50  0000 C CNN
F 2 "Diode_SMD:D_2010_5025Metric_Pad1.52x2.65mm_HandSolder" H 5400 4700 50  0001 C CNN
F 3 "~" H 5400 4700 50  0001 C CNN
	1    5400 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	5650 4850 5400 4850
Wire Wire Line
	5650 4900 5650 4850
Wire Wire Line
	5750 4600 5650 4600
Wire Wire Line
	5750 4500 5600 4500
Wire Wire Line
	5400 4500 5400 4550
$Comp
L No-Brim-Scheme-rescue:+24V-power #PWR015
U 1 1 5EEDF349
P 5600 4450
F 0 "#PWR015" H 5600 4300 50  0001 C CNN
F 1 "+24V" H 5615 4623 50  0000 C CNN
F 2 "" H 5600 4450 50  0001 C CNN
F 3 "" H 5600 4450 50  0001 C CNN
	1    5600 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 4450 5600 4500
Connection ~ 5600 4500
Wire Wire Line
	5600 4500 5400 4500
$Comp
L No-Brim-Scheme-rescue:GND-power #PWR016
U 1 1 5EEDF352
P 5650 5500
F 0 "#PWR016" H 5650 5250 50  0001 C CNN
F 1 "GND" H 5655 5327 50  0000 C CNN
F 2 "" H 5650 5500 50  0001 C CNN
F 3 "" H 5650 5500 50  0001 C CNN
	1    5650 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 5500 5650 5450
Wire Wire Line
	5350 5100 5200 5100
Wire Wire Line
	5200 5400 5200 5450
Wire Wire Line
	5200 5450 5650 5450
Wire Wire Line
	5200 5100 4950 5100
Connection ~ 5200 5100
Wire Wire Line
	5650 4600 5650 4850
Connection ~ 5650 4850
Wire Wire Line
	5650 5300 5650 5450
Connection ~ 5650 5450
$Comp
L No-Brim-Scheme-rescue:IRLML0030-Transistor_FET Q6
U 1 1 5EEDF362
P 5500 3450
F 0 "Q6" H 5704 3496 50  0000 L CNN
F 1 "IRLML0030" H 5704 3405 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5700 3375 50  0001 L CIN
F 3 "https://www.infineon.com/dgdl/irlml0030pbf.pdf?fileId=5546d462533600a401535664773825df" H 5500 3450 50  0001 L CNN
	1    5500 3450
	1    0    0    -1  
$EndComp
$Comp
L No-Brim-Scheme-rescue:Conn_01x02-Connector_Generic J8
U 1 1 5EEDF368
P 5900 2850
F 0 "J8" H 5980 2842 50  0000 L CNN
F 1 "Elettrovalve_2M2" H 5980 2751 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 5900 2850 50  0001 C CNN
F 3 "~" H 5900 2850 50  0001 C CNN
	1    5900 2850
	1    0    0    -1  
$EndComp
$Comp
L No-Brim-Scheme-rescue:R-Device R6
U 1 1 5EEDF36E
P 5150 3600
F 0 "R6" H 5220 3646 50  0000 L CNN
F 1 "R" H 5220 3555 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5080 3600 50  0001 C CNN
F 3 "~" H 5150 3600 50  0001 C CNN
	1    5150 3600
	1    0    0    -1  
$EndComp
$Comp
L No-Brim-Scheme-rescue:D-Device D6
U 1 1 5EEDF374
P 5350 3050
F 0 "D6" H 5350 3267 50  0000 C CNN
F 1 "D" H 5350 3176 50  0000 C CNN
F 2 "Diode_SMD:D_2010_5025Metric_Pad1.52x2.65mm_HandSolder" H 5350 3050 50  0001 C CNN
F 3 "~" H 5350 3050 50  0001 C CNN
	1    5350 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	5600 3200 5350 3200
Wire Wire Line
	5600 3250 5600 3200
Wire Wire Line
	5700 2950 5600 2950
Wire Wire Line
	5700 2850 5550 2850
Wire Wire Line
	5350 2850 5350 2900
$Comp
L No-Brim-Scheme-rescue:+24V-power #PWR013
U 1 1 5EEDF37F
P 5550 2800
F 0 "#PWR013" H 5550 2650 50  0001 C CNN
F 1 "+24V" H 5565 2973 50  0000 C CNN
F 2 "" H 5550 2800 50  0001 C CNN
F 3 "" H 5550 2800 50  0001 C CNN
	1    5550 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 2800 5550 2850
Connection ~ 5550 2850
Wire Wire Line
	5550 2850 5350 2850
$Comp
L No-Brim-Scheme-rescue:GND-power #PWR014
U 1 1 5EEDF388
P 5600 3850
F 0 "#PWR014" H 5600 3600 50  0001 C CNN
F 1 "GND" H 5605 3677 50  0000 C CNN
F 2 "" H 5600 3850 50  0001 C CNN
F 3 "" H 5600 3850 50  0001 C CNN
	1    5600 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 3850 5600 3800
Wire Wire Line
	5300 3450 5150 3450
Wire Wire Line
	5150 3750 5150 3800
Wire Wire Line
	5150 3800 5600 3800
Wire Wire Line
	5150 3450 4900 3450
Connection ~ 5150 3450
Wire Wire Line
	5600 2950 5600 3200
Connection ~ 5600 3200
Wire Wire Line
	5600 3650 5600 3800
Connection ~ 5600 3800
$Comp
L No-Brim-Scheme-rescue:IRLML0030-Transistor_FET Q5
U 1 1 5EEDF398
P 5450 1800
F 0 "Q5" H 5654 1846 50  0000 L CNN
F 1 "IRLML0030" H 5654 1755 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5650 1725 50  0001 L CIN
F 3 "https://www.infineon.com/dgdl/irlml0030pbf.pdf?fileId=5546d462533600a401535664773825df" H 5450 1800 50  0001 L CNN
	1    5450 1800
	1    0    0    -1  
$EndComp
$Comp
L No-Brim-Scheme-rescue:Conn_01x02-Connector_Generic J7
U 1 1 5EEDF39E
P 5850 1200
F 0 "J7" H 5930 1192 50  0000 L CNN
F 1 "Elettrovalve_1M2" H 5930 1101 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 5850 1200 50  0001 C CNN
F 3 "~" H 5850 1200 50  0001 C CNN
	1    5850 1200
	1    0    0    -1  
$EndComp
$Comp
L No-Brim-Scheme-rescue:R-Device R5
U 1 1 5EEDF3A4
P 5100 1950
F 0 "R5" H 5170 1996 50  0000 L CNN
F 1 "R" H 5170 1905 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5030 1950 50  0001 C CNN
F 3 "~" H 5100 1950 50  0001 C CNN
	1    5100 1950
	1    0    0    -1  
$EndComp
$Comp
L No-Brim-Scheme-rescue:D-Device D5
U 1 1 5EEDF3AA
P 5300 1400
F 0 "D5" H 5300 1617 50  0000 C CNN
F 1 "D" H 5300 1526 50  0000 C CNN
F 2 "Diode_SMD:D_2010_5025Metric_Pad1.52x2.65mm_HandSolder" H 5300 1400 50  0001 C CNN
F 3 "~" H 5300 1400 50  0001 C CNN
	1    5300 1400
	0    1    1    0   
$EndComp
Wire Wire Line
	5550 1550 5300 1550
Wire Wire Line
	5550 1600 5550 1550
Wire Wire Line
	5650 1300 5550 1300
Wire Wire Line
	5650 1200 5500 1200
Wire Wire Line
	5300 1200 5300 1250
$Comp
L No-Brim-Scheme-rescue:+24V-power #PWR011
U 1 1 5EEDF3B5
P 5500 1150
F 0 "#PWR011" H 5500 1000 50  0001 C CNN
F 1 "+24V" H 5515 1323 50  0000 C CNN
F 2 "" H 5500 1150 50  0001 C CNN
F 3 "" H 5500 1150 50  0001 C CNN
	1    5500 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 1150 5500 1200
Connection ~ 5500 1200
Wire Wire Line
	5500 1200 5300 1200
$Comp
L No-Brim-Scheme-rescue:GND-power #PWR012
U 1 1 5EEDF3BE
P 5550 2200
F 0 "#PWR012" H 5550 1950 50  0001 C CNN
F 1 "GND" H 5555 2027 50  0000 C CNN
F 2 "" H 5550 2200 50  0001 C CNN
F 3 "" H 5550 2200 50  0001 C CNN
	1    5550 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 2200 5550 2150
Wire Wire Line
	5250 1800 5100 1800
Wire Wire Line
	5100 2100 5100 2150
Wire Wire Line
	5100 2150 5550 2150
Wire Wire Line
	5100 1800 4850 1800
Connection ~ 5100 1800
Wire Wire Line
	5550 1300 5550 1550
Connection ~ 5550 1550
Wire Wire Line
	5550 2000 5550 2150
Connection ~ 5550 2150
Text GLabel 3150 1800 0    50   Input ~ 0
1M1_1
Text GLabel 4850 1800 0    50   Input ~ 0
1M1_2
Text GLabel 3200 3450 0    50   Input ~ 0
2M1_1
Text GLabel 4900 3450 0    50   Input ~ 0
2M1_2
Text GLabel 3250 5100 0    50   Input ~ 0
3M1_1
Text GLabel 4950 5100 0    50   Input ~ 0
3M1_2
Text GLabel 3950 6600 0    50   Input ~ 0
4M1_1
Wire Wire Line
	3950 5450 3950 5550
$Comp
L Connector_Generic:Conn_01x10 J1
U 1 1 5EE90DB9
P 950 1400
F 0 "J1" H 1030 1392 50  0000 L CNN
F 1 "Conn_01x10" H 1030 1301 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x10_P2.54mm_Vertical" H 950 1400 50  0001 C CNN
F 3 "~" H 950 1400 50  0001 C CNN
	1    950  1400
	-1   0    0    -1  
$EndComp
$Comp
L No-Brim-Scheme-rescue:GND-power #PWR0101
U 1 1 5EE9BC2F
P 1150 1900
F 0 "#PWR0101" H 1150 1650 50  0001 C CNN
F 1 "GND-power" H 1155 1727 50  0000 C CNN
F 2 "" H 1150 1900 50  0001 C CNN
F 3 "" H 1150 1900 50  0001 C CNN
	1    1150 1900
	1    0    0    -1  
$EndComp
$EndSCHEMATC
