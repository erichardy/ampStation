EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Station ampèremétrique"
Date "2021-03-24"
Rev "1.0"
Comp "EH"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Amplifier_Operational:TL072 U1
U 1 1 605B9BC0
P 4600 1600
F 0 "U1" H 4600 1967 50  0000 C CNN
F 1 "LM348D" H 4600 1876 50  0000 C CNN
F 2 "" H 4600 1600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 4600 1600 50  0001 C CNN
F 4 "X" H 4600 1600 50  0001 C CNN "Spice_Primitive"
F 5 "LM348" H 4600 1600 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4600 1600 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/Volumes/SSD/Dev/_Electronique/ampStation/Kicad-libs/LM348.lib" H 4600 1600 50  0001 C CNN "Spice_Lib_File"
F 8 "3 2 8 4 1" H 4600 1600 50  0001 C CNN "Spice_Node_Sequence"
	1    4600 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 605BAC0A
P 4600 2150
F 0 "R2" V 4807 2150 50  0000 C CNN
F 1 "10k" V 4716 2150 50  0000 C CNN
F 2 "" V 4530 2150 50  0001 C CNN
F 3 "~" H 4600 2150 50  0001 C CNN
	1    4600 2150
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 605BB7B2
P 3850 1700
F 0 "R1" V 3643 1700 50  0000 C CNN
F 1 "1k" V 3734 1700 50  0000 C CNN
F 2 "" V 3780 1700 50  0001 C CNN
F 3 "~" H 3850 1700 50  0001 C CNN
	1    3850 1700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 605C1B26
P 3800 850
F 0 "#PWR01" H 3800 600 50  0001 C CNN
F 1 "GND" H 3805 677 50  0000 C CNN
F 2 "" H 3800 850 50  0001 C CNN
F 3 "" H 3800 850 50  0001 C CNN
	1    3800 850 
	1    0    0    -1  
$EndComp
$Comp
L Regulator_SwitchedCapacitor:MAX1044 U2
U 1 1 605C67EF
P 4400 3800
F 0 "U2" H 4400 4367 50  0000 C CNN
F 1 "MAX1044" H 4400 4276 50  0000 C CNN
F 2 "" H 4500 3700 50  0001 C CNN
F 3 "http://datasheets.maximintegrated.com/en/ds/ICL7660-MAX1044.pdf" H 4500 3700 50  0001 C CNN
F 4 "X" H 4400 3800 50  0001 C CNN "Spice_Primitive"
F 5 "TL072" H 4400 3800 50  0001 C CNN "Spice_Model"
F 6 "N" H 4400 3800 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/Volumes/SSD/Dev/_Electronique/ampStation/Kicad-libs/TL072.lib" H 4400 3800 50  0001 C CNN "Spice_Lib_File"
	1    4400 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C3
U 1 1 605C96CB
P 5050 3900
F 0 "C3" H 5168 3946 50  0000 L CNN
F 1 "10u" H 5168 3855 50  0000 L CNN
F 2 "" H 5088 3750 50  0001 C CNN
F 3 "~" H 5050 3900 50  0001 C CNN
	1    5050 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 605CF0F7
P 4900 3300
F 0 "C2" H 5018 3346 50  0000 L CNN
F 1 "10u" H 5018 3255 50  0000 L CNN
F 2 "" H 4938 3150 50  0001 C CNN
F 3 "~" H 4900 3300 50  0001 C CNN
	1    4900 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 1700 4150 1700
Wire Wire Line
	4150 1700 4150 2150
Wire Wire Line
	4150 2150 4450 2150
Connection ~ 4150 1700
Wire Wire Line
	4150 1700 4300 1700
Wire Wire Line
	4750 2150 5100 2150
Wire Wire Line
	5100 2150 5100 1600
Wire Wire Line
	5100 1600 4900 1600
Wire Wire Line
	4300 1500 4300 750 
Wire Wire Line
	4300 750  3800 750 
Wire Wire Line
	3800 750  3800 850 
$Comp
L Amplifier_Operational:TL072 U1
U 3 1 605F9529
P 5600 3100
F 0 "U1" H 5558 3146 50  0000 L CNN
F 1 "TL072" H 5558 3055 50  0000 L CNN
F 2 "" H 5600 3100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 5600 3100 50  0001 C CNN
	3    5600 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 3700 5050 3700
Wire Wire Line
	5050 3700 5050 3750
Wire Wire Line
	4800 4100 5050 4100
Wire Wire Line
	5050 4100 5050 4050
$Comp
L power:GND #PWR07
U 1 1 60603A06
P 5250 3000
F 0 "#PWR07" H 5250 2750 50  0001 C CNN
F 1 "GND" H 5255 2827 50  0000 C CNN
F 2 "" H 5250 3000 50  0001 C CNN
F 3 "" H 5250 3000 50  0001 C CNN
	1    5250 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 3500 4900 3500
Wire Wire Line
	4900 3500 4900 3450
Wire Wire Line
	4900 3500 5500 3500
Wire Wire Line
	5500 3500 5500 3400
Connection ~ 4900 3500
Wire Wire Line
	4900 3150 4900 2950
Wire Wire Line
	4900 2950 5250 2950
Wire Wire Line
	5250 2950 5250 3000
$Comp
L power:GND #PWR06
U 1 1 60607759
P 4400 4400
F 0 "#PWR06" H 4400 4150 50  0001 C CNN
F 1 "GND" H 4405 4227 50  0000 C CNN
F 2 "" H 4400 4400 50  0001 C CNN
F 3 "" H 4400 4400 50  0001 C CNN
	1    4400 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 60633DB8
P 5350 1850
F 0 "C1" H 5468 1896 50  0000 L CNN
F 1 "10u" H 5468 1805 50  0000 L CNN
F 2 "" H 5388 1700 50  0001 C CNN
F 3 "~" H 5350 1850 50  0001 C CNN
	1    5350 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 606343F6
P 6500 1350
F 0 "R3" H 6570 1396 50  0000 L CNN
F 1 "10k" H 6570 1305 50  0000 L CNN
F 2 "" V 6430 1350 50  0001 C CNN
F 3 "~" H 6500 1350 50  0001 C CNN
	1    6500 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 60634BE6
P 6500 1850
F 0 "R4" H 6570 1896 50  0000 L CNN
F 1 "10k" H 6570 1805 50  0000 L CNN
F 2 "" V 6430 1850 50  0001 C CNN
F 3 "~" H 6500 1850 50  0001 C CNN
	1    6500 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 6063820D
P 5350 2100
F 0 "#PWR02" H 5350 1850 50  0001 C CNN
F 1 "GND" H 5355 1927 50  0000 C CNN
F 2 "" H 5350 2100 50  0001 C CNN
F 3 "" H 5350 2100 50  0001 C CNN
	1    5350 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 2000 5350 2100
Wire Wire Line
	5350 1700 5350 1600
Wire Wire Line
	5350 1600 5100 1600
Connection ~ 5100 1600
$Comp
L power:GND #PWR04
U 1 1 60652093
P 6500 2100
F 0 "#PWR04" H 6500 1850 50  0001 C CNN
F 1 "GND" H 6505 1927 50  0000 C CNN
F 2 "" H 6500 2100 50  0001 C CNN
F 3 "" H 6500 2100 50  0001 C CNN
	1    6500 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 1600 6500 1700
Wire Wire Line
	6500 1500 6500 1600
Connection ~ 6500 1600
Wire Wire Line
	6500 2000 6500 2100
NoConn ~ 4000 3800
NoConn ~ 4000 4000
Wire Wire Line
	4400 4300 4400 4400
$Comp
L Device:CP C4
U 1 1 60611391
P 5950 1600
F 0 "C4" V 6100 1650 50  0000 L CNN
F 1 "10u" V 5750 1550 50  0000 L CNN
F 2 "" H 5988 1450 50  0001 C CNN
F 3 "~" H 5950 1600 50  0001 C CNN
	1    5950 1600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5350 1600 5800 1600
Connection ~ 5350 1600
Wire Wire Line
	6100 1600 6500 1600
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 605D37B0
P 2900 1700
F 0 "J1" H 2818 1917 50  0000 C CNN
F 1 "Conn_01x02" H 2818 1826 50  0000 C CNN
F 2 "" H 2900 1700 50  0001 C CNN
F 3 "~" H 2900 1700 50  0001 C CNN
F 4 "V" H 2900 1700 50  0001 C CNN "Spice_Primitive"
F 5 "ac 60m 0" H 2900 1700 50  0001 C CNN "Spice_Model"
F 6 "Y" H 2900 1700 50  0001 C CNN "Spice_Netlist_Enabled"
	1    2900 1700
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 605D597B
P 3200 1950
F 0 "#PWR09" H 3200 1700 50  0001 C CNN
F 1 "GND" H 3205 1777 50  0000 C CNN
F 2 "" H 3200 1950 50  0001 C CNN
F 3 "" H 3200 1950 50  0001 C CNN
	1    3200 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 1800 3200 1800
Wire Wire Line
	3200 1800 3200 1950
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 605D6C5A
P 7250 1600
F 0 "J2" H 7330 1592 50  0000 L CNN
F 1 "Conn_01x02" H 7330 1501 50  0000 L CNN
F 2 "" H 7250 1600 50  0001 C CNN
F 3 "~" H 7250 1600 50  0001 C CNN
F 4 "I" H 7250 1600 50  0001 C CNN "Spice_Primitive"
F 5 "N" H 7250 1600 50  0001 C CNN "Spice_Netlist_Enabled"
	1    7250 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 605D7D22
P 6900 1800
F 0 "#PWR011" H 6900 1550 50  0001 C CNN
F 1 "GND" H 6905 1627 50  0000 C CNN
F 2 "" H 6900 1800 50  0001 C CNN
F 3 "" H 6900 1800 50  0001 C CNN
	1    6900 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 1600 7050 1600
Wire Wire Line
	7050 1700 6900 1700
Wire Wire Line
	6900 1700 6900 1800
Wire Wire Line
	3100 1700 3700 1700
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 605DDC07
P 3200 3500
F 0 "J3" H 3118 3717 50  0000 C CNN
F 1 "Conn_01x02" H 3118 3626 50  0000 C CNN
F 2 "" H 3200 3500 50  0001 C CNN
F 3 "~" H 3200 3500 50  0001 C CNN
F 4 "I" H 3200 3500 50  0001 C CNN "Spice_Primitive"
F 5 "dc 5" H 3200 3500 50  0001 C CNN "Spice_Model"
F 6 "Y" H 3200 3500 50  0001 C CNN "Spice_Netlist_Enabled"
	1    3200 3500
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 605DF297
P 3750 3750
F 0 "#PWR012" H 3750 3500 50  0001 C CNN
F 1 "GND" H 3755 3577 50  0000 C CNN
F 2 "" H 3750 3750 50  0001 C CNN
F 3 "" H 3750 3750 50  0001 C CNN
	1    3750 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 3600 3750 3600
Text Notes 2900 1350 0    50   ~ 0
* Entrée du signal
Wire Wire Line
	3750 3750 3750 3600
$Comp
L power:VCC #PWR?
U 1 1 60602642
P 3750 3200
F 0 "#PWR?" H 3750 3050 50  0001 C CNN
F 1 "VCC" H 3767 3373 50  0000 C CNN
F 2 "" H 3750 3200 50  0001 C CNN
F 3 "" H 3750 3200 50  0001 C CNN
	1    3750 3200
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 60602D61
P 5500 2600
F 0 "#PWR?" H 5500 2450 50  0001 C CNN
F 1 "VCC" H 5517 2773 50  0000 C CNN
F 2 "" H 5500 2600 50  0001 C CNN
F 3 "" H 5500 2600 50  0001 C CNN
	1    5500 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 3500 3750 3500
Wire Wire Line
	3750 3500 3750 3200
Connection ~ 3750 3500
Wire Wire Line
	3750 3500 4000 3500
Wire Wire Line
	5500 2600 5500 2800
$Comp
L power:VCC #PWR?
U 1 1 6060556A
P 6500 1000
F 0 "#PWR?" H 6500 850 50  0001 C CNN
F 1 "VCC" H 6517 1173 50  0000 C CNN
F 2 "" H 6500 1000 50  0001 C CNN
F 3 "" H 6500 1000 50  0001 C CNN
	1    6500 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 1200 6500 1000
Text Notes 2850 3150 0    50   ~ 0
* Alimentation 5V
Text Notes 7050 1450 0    50   ~ 0
* Sortie vers microcontroleur
Text Notes 6250 3650 0    50   ~ 0
- Les résistances R1 et R2 doivent être ajustées\n   en fonction du gain désiré\n- Les résistances R3 et R4 doivent être ajustées\n   en fonction de l'OFFSET désiré.\n- On doit donc avoir des supports pour ces \n   4 résistances (et non les souder sur la plaque de prototypage)
$EndSCHEMATC
