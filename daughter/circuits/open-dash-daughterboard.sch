EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLedger 17000 11000
encoding utf-8
Sheet 1 8
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 7200 6750 0    50   ~ 0
SCL
Text Label 7200 6850 0    50   ~ 0
SDA
Text Label 7300 8500 0    50   ~ 0
MAIN_EN
Text Label 5900 8200 2    50   ~ 0
BATTERY
Text Label 5700 5850 2    50   ~ 0
MAIN_EN
Text Label 7200 6000 0    50   ~ 0
TXD
Text Label 7200 6100 0    50   ~ 0
RXD
Text Label 5700 5950 2    50   ~ 0
AUDIO_STBY
Text Label 5700 6050 2    50   ~ 0
AUDIO_MUTE
Text Label 9250 8550 2    50   ~ 0
AUDIO_STBY
Text Label 9250 8450 2    50   ~ 0
AUDIO_MUTE
Text Label 7300 8400 0    50   ~ 0
DISPLAY_EN
Text Label 5700 5750 2    50   ~ 0
DISPLAY_EN
Text Label 5900 8300 2    50   ~ 0
5V
Text Label 7900 4200 2    50   ~ 0
CAN_RX
Text Label 7900 4300 2    50   ~ 0
CAN_TX
Text Label 8850 4000 0    50   ~ 0
CAN+
Text Label 8850 4100 0    50   ~ 0
CAN-
Text Label 10000 4000 2    50   ~ 0
5V
Text Label 10000 4100 2    50   ~ 0
ESP_EN
Text Label 10000 4200 2    50   ~ 0
PROG
$Comp
L Open_Automation:radio-housing-mounts U?
U 1 1 5CCA1F9C
P 1150 1000
AR Path="/5ABD187E/5CCA1F9C" Ref="U?"  Part="1" 
AR Path="/5CCA1F9C" Ref="U1"  Part="1" 
F 0 "U1" H 1275 1225 60  0000 L CNN
F 1 "radio-housing-mounts" H 650 800 60  0000 L CNN
F 2 "Open_Automation:radio-housing-mounts" H 1300 1300 60  0001 C CNN
F 3 "" H 1150 1050 60  0001 C CNN
	1    1150 1000
	1    0    0    -1  
$EndComp
Text Label 10900 8400 0    50   ~ 0
LR+
Text Label 10900 8600 0    50   ~ 0
RR+
Text Label 10900 8500 0    50   ~ 0
RF+
Text Label 10900 9050 0    50   ~ 0
RR-
Text Label 10900 8950 0    50   ~ 0
RF-
Text Label 10900 8750 0    50   ~ 0
LF-
Text Label 10900 8850 0    50   ~ 0
LR-
$Sheet
S 5950 8100 1300 1050
U 5A7BADB8
F0 "Power" 50
F1 "power.sch" 50
F2 "CURRENT_SENSE" I R 7250 8650 50 
F3 "3V3" I L 5950 8400 50 
F4 "5V" I L 5950 8300 50 
F5 "MAIN_EN" I R 7250 8500 50 
F6 "DISPLAY_EN" I R 7250 8400 50 
F7 "BATTERY" I L 5950 8200 50 
F8 "BATT_ADC" I R 7250 8750 50 
F9 "DISPLAY_POWER" I R 7250 8200 50 
F10 "MAIN_POWER" I R 7250 8300 50 
F11 "TRIGGER0" I L 5950 8750 50 
F12 "SENSE0" I L 5950 8850 50 
F13 "TRIGGER1" I L 5950 8950 50 
F14 "SENSE1" I L 5950 9050 50 
$EndSheet
Wire Wire Line
	5950 8200 5900 8200
Wire Wire Line
	5950 8300 5900 8300
Text Label 5900 8400 2    50   ~ 0
3V3
Wire Wire Line
	5950 8400 5900 8400
Wire Wire Line
	7250 8500 7300 8500
Wire Wire Line
	7250 8400 7300 8400
Text Label 7300 8650 0    50   ~ 0
CURRENT_SENSE
Wire Wire Line
	7150 6850 7200 6850
Wire Wire Line
	7200 6750 7150 6750
Wire Wire Line
	7150 6100 7200 6100
Wire Wire Line
	7200 6000 7150 6000
$Sheet
S 9300 8200 1550 950 
U 5ABD1806
F0 "Audio Amplifier" 50
F1 "audio-amplifier.sch" 50
F2 "LR_AUDIO_OUT+" I R 10850 8400 50 
F3 "RR_AUDIO_OUT+" I R 10850 8600 50 
F4 "LF_AUDIO_OUT-" I R 10850 8750 50 
F5 "RF_AUDIO_OUT-" I R 10850 8950 50 
F6 "RF_AUDIO_OUT+" I R 10850 8500 50 
F7 "RR_AUDIO_OUT-" I R 10850 9050 50 
F8 "LF_AUDIO_OUT+" I R 10850 8300 50 
F9 "LR_AUDIO_OUT-" I R 10850 8850 50 
F10 "AUDIO_STBY" I L 9300 8550 50 
F11 "AUDIO_POWER" I L 9300 8300 50 
F12 "AUDIO_MUTE" I L 9300 8450 50 
$EndSheet
Text Label 10900 8300 0    50   ~ 0
LF+
Wire Wire Line
	10900 9050 10850 9050
Wire Wire Line
	10850 8950 10900 8950
Wire Wire Line
	10900 8850 10850 8850
Wire Wire Line
	10850 8750 10900 8750
Wire Wire Line
	10900 8600 10850 8600
Wire Wire Line
	10850 8500 10900 8500
Wire Wire Line
	10900 8400 10850 8400
Wire Wire Line
	10850 8300 10900 8300
Wire Wire Line
	9300 8300 9250 8300
Wire Wire Line
	9250 8450 9300 8450
Wire Wire Line
	9250 8550 9300 8550
Text Label 9250 8300 2    50   ~ 0
BATTERY
Wire Wire Line
	8850 4000 8800 4000
Wire Wire Line
	8800 4100 8850 4100
Wire Wire Line
	10000 4000 10050 4000
Wire Wire Line
	10000 4200 10050 4200
Text Label 5700 6650 2    50   ~ 0
CURRENT_SENSE
Text Label 4900 1650 2    50   ~ 0
J1850
Wire Wire Line
	4900 1650 4950 1650
Text Label 4900 1750 2    50   ~ 0
INSIDE_AIR_TEMP
Wire Wire Line
	4900 1750 4950 1750
Text Label 4900 1850 2    50   ~ 0
UPPER_RIGHT_AIR_TEMP
Wire Wire Line
	4900 1850 4950 1850
Text Label 4900 1950 2    50   ~ 0
LOW_REF
Wire Wire Line
	4900 1950 4950 1950
Text Label 4900 2050 2    50   ~ 0
AMBIENT_AIR_TEMP
Wire Wire Line
	4900 2050 4950 2050
Text Label 4900 2150 2    50   ~ 0
DRIVER_SUNLOAD
Wire Wire Line
	4900 2150 4950 2150
Text Label 4900 2250 2    50   ~ 0
PASSENGER_SUNLOAD
Wire Wire Line
	4900 2250 4950 2250
Text Label 4900 2350 2    50   ~ 0
AMBIENT_LIGHT
Wire Wire Line
	4900 2350 4950 2350
Wire Wire Line
	5500 1650 5450 1650
Wire Wire Line
	5500 1750 5450 1750
Wire Wire Line
	5500 1950 5450 1950
Wire Wire Line
	5450 1850 5500 1850
Text Label 4900 2450 2    50   ~ 0
UPPER_LEFT_AIR_TEMP
Wire Wire Line
	4900 2450 4950 2450
Text Label 4900 2550 2    50   ~ 0
REAR_DEFOG
Wire Wire Line
	4900 2550 4950 2550
Text Label 4900 2650 2    50   ~ 0
INSIDE_AIR_TEMP_BLOWER
Wire Wire Line
	4900 2650 4950 2650
Text Label 5500 1650 0    50   ~ 0
PASSENGER_HEATED_SEAT_STATUS
Wire Wire Line
	4900 2750 4950 2750
Text Label 5500 1750 0    50   ~ 0
DRIVER_HEATED_SEAT_STATUS
Text Label 5500 1850 0    50   ~ 0
IGNITION
Text Label 5500 1950 0    50   ~ 0
BATTERY
Text Label 5500 2050 0    50   ~ 0
BLOWER_MOTOR
Wire Wire Line
	5500 2050 5450 2050
Text Label 5500 2150 0    50   ~ 0
PASSENGER_SEAT_TEMP_CONTROL
Wire Wire Line
	5500 2150 5450 2150
Text Label 5500 2250 0    50   ~ 0
DRIVER_SEAT_TEMP_CONTROL
Wire Wire Line
	5500 2250 5450 2250
Text Label 8750 1600 2    50   ~ 0
LEFT_AIR_TEMP_CONTROL_A
Wire Wire Line
	5500 2350 5450 2350
Wire Wire Line
	5500 2450 5450 2450
Text Label 8750 1700 2    50   ~ 0
RIGHT_AIR_TEMP_CONTROL_A
Text Label 8750 1900 2    50   ~ 0
RECIRCULATION_A
Wire Wire Line
	5500 2650 5450 2650
Wire Wire Line
	5500 2550 5450 2550
Text Label 8750 1800 2    50   ~ 0
MODE_A
Wire Wire Line
	5500 2750 5450 2750
Wire Wire Line
	8750 1600 8800 1600
Wire Wire Line
	8750 1700 8800 1700
Wire Wire Line
	8750 1800 8800 1800
Wire Wire Line
	8750 1900 8800 1900
Text Label 8750 2600 2    50   ~ 0
LOW_REF
Wire Wire Line
	8750 2000 8800 2000
Text Label 8750 2000 2    50   ~ 0
LOWER_LEFT_AIR_TEMP
Wire Wire Line
	8750 2100 8800 2100
Text Label 9350 2000 0    50   ~ 0
LOWER_RIGHT_AIR_TEMP
Wire Wire Line
	8750 2200 8800 2200
Text Label 9350 1600 0    50   ~ 0
LEFT_AIR_TEMP_CONTROL_B
Text Label 9350 1700 0    50   ~ 0
RIGHT_AIR_TEMP_CONTROL_B
Wire Wire Line
	8750 2300 8800 2300
Wire Wire Line
	8750 2400 8800 2400
Text Label 9350 1900 0    50   ~ 0
RECIRCULATION_B
Wire Wire Line
	8750 2500 8800 2500
Text Label 9350 1800 0    50   ~ 0
MODE_B
Wire Wire Line
	8750 2600 8800 2600
Text Label 5500 2350 0    50   ~ 0
INSTRUMENT_SUPPLY_VOLTAGE_4
Text Label 10750 5450 0    50   ~ 0
INSTRUMENT_SUPPLY_VOLTAGE_4
Text Label 7300 8750 0    50   ~ 0
BATTERY_VOLTAGE_SENSE
Wire Wire Line
	7300 8750 7250 8750
Wire Wire Line
	7300 8650 7250 8650
$Sheet
S 5900 3850 900  600 
U 6063934A
F0 "J1850" 50
F1 "j1850.sch" 50
F2 "3V3" I R 6800 3950 50 
F3 "J1850_TX" I R 6800 4200 50 
F4 "J1850" I L 5900 4200 50 
F5 "J1850_RX" I R 6800 4100 50 
F6 "BATTERY" I L 5900 4050 50 
$EndSheet
Text Label 6850 3950 0    50   ~ 0
3V3
Wire Wire Line
	6850 3950 6800 3950
Text Label 5850 4200 2    50   ~ 0
J1850
Wire Wire Line
	5850 4200 5900 4200
Text Label 5850 4050 2    50   ~ 0
BATTERY
Wire Wire Line
	5850 4050 5900 4050
Text Label 5900 8750 2    50   ~ 0
IGNITION
Text Label 5900 8850 2    50   ~ 0
IGNITION_SENSE
$Sheet
S 5750 5550 1400 1550
U 6077D777
F0 "Microcontroller" 50
F1 "microcontroller.sch" 50
F2 "RXD" I R 7150 6100 50 
F3 "TXD" I R 7150 6000 50 
F4 "IO5" I R 7150 6350 50 
F5 "3V3" I R 7150 5650 50 
F6 "IO4" I R 7150 6600 50 
F7 "SCL" I R 7150 6750 50 
F8 "SDA" I R 7150 6850 50 
F9 "IO33" I L 5750 6550 50 
F10 "IO32" I L 5750 6450 50 
F11 "IO18" I L 5750 5850 50 
F12 "ESP_EN" I R 7150 5750 50 
F13 "PROG" I R 7150 5850 50 
F14 "IO35" I L 5750 6750 50 
F15 "IO34" I L 5750 6650 50 
F16 "IO16" I R 7150 6500 50 
F17 "IO17" I R 7150 6250 50 
F18 "IO13" I L 5750 5650 50 
F19 "IO15" I L 5750 5750 50 
F20 "IO25" I L 5750 6150 50 
F21 "IO19" I L 5750 5950 50 
F22 "IO23" I L 5750 6050 50 
F23 "IO26" I L 5750 6250 50 
F24 "IO27" I L 5750 6350 50 
F25 "FACT" I L 5750 6900 50 
$EndSheet
Text Label 7200 5650 0    50   ~ 0
3V3
Text Label 6850 4100 0    50   ~ 0
J1850_RX
Text Label 6850 4200 0    50   ~ 0
J1850_TX
Wire Wire Line
	6800 4100 6850 4100
Wire Wire Line
	6850 4200 6800 4200
Text Label 7200 6500 0    50   ~ 0
J1850_RX
Text Label 7200 6600 0    50   ~ 0
J1850_TX
Wire Wire Line
	7150 6500 7200 6500
Wire Wire Line
	7200 6600 7150 6600
Wire Wire Line
	7200 6250 7150 6250
Wire Wire Line
	7150 6350 7200 6350
Text Label 7200 6350 0    50   ~ 0
CAN_TX
Text Label 7200 6250 0    50   ~ 0
CAN_RX
Wire Wire Line
	7200 5650 7150 5650
Text Label 7200 5750 0    50   ~ 0
ESP_EN
Wire Wire Line
	7200 5750 7150 5750
Wire Wire Line
	7200 5850 7150 5850
Text Label 7200 5850 0    50   ~ 0
PROG
Wire Wire Line
	5700 5750 5750 5750
Wire Wire Line
	5700 5850 5750 5850
Wire Wire Line
	5700 6550 5750 6550
Wire Wire Line
	5750 6450 5700 6450
Wire Wire Line
	5700 6650 5750 6650
Wire Wire Line
	5700 6750 5750 6750
Text Label 11650 2350 2    50   ~ 0
LR+
Text Label 11650 2250 2    50   ~ 0
RR+
Text Label 12250 2250 0    50   ~ 0
RR-
Text Label 11650 2450 2    50   ~ 0
LF-
Text Label 12250 2350 0    50   ~ 0
LR-
Text Label 12250 2450 0    50   ~ 0
LF+
Wire Wire Line
	11650 2450 11700 2450
Wire Wire Line
	11700 2550 11650 2550
Wire Wire Line
	11700 2750 11650 2750
Wire Wire Line
	12200 2750 12250 2750
Wire Wire Line
	12200 2550 12250 2550
Wire Wire Line
	12250 2450 12200 2450
Wire Wire Line
	12250 1750 12200 1750
Wire Wire Line
	12250 1650 12200 1650
Wire Wire Line
	12250 1850 12200 1850
Text Label 12250 2650 0    50   ~ 0
J1850
Text Label 12250 2750 0    50   ~ 0
CAN+
Wire Wire Line
	11650 2650 11700 2650
Text Label 11650 2550 2    50   ~ 0
RF-
Wire Wire Line
	11700 1750 11650 1750
Text Label 11650 2750 2    50   ~ 0
CAN-
Wire Wire Line
	12250 2650 12200 2650
Text Label 12250 2550 0    50   ~ 0
RF+
$Comp
L open-dash-daughterboard-rescue:GND-open-automation #PWR?
U 1 1 60B52478
P 11650 2650
AR Path="/5B15E02A/60B52478" Ref="#PWR?"  Part="1" 
AR Path="/5C04BFCE/60B52478" Ref="#PWR?"  Part="1" 
AR Path="/60B52478" Ref="#PWR08"  Part="1" 
F 0 "#PWR08" H 11650 2400 50  0001 C CNN
F 1 "GND" V 11600 2500 50  0000 C CNN
F 2 "" H 11650 2650 50  0000 C CNN
F 3 "" H 11650 2650 50  0000 C CNN
	1    11650 2650
	0    1    1    0   
$EndComp
Text Label 12250 1950 0    50   ~ 0
BATTERY
Text Label 11650 1850 2    50   ~ 0
WHEEL_CONTROLS_SIGNAL
Wire Wire Line
	11650 1850 11700 1850
Wire Wire Line
	12250 1950 12200 1950
$Comp
L open-dash-daughterboard-rescue:GND-open-automation #PWR?
U 1 1 60B901EE
P 11650 1950
AR Path="/5B15E02A/60B901EE" Ref="#PWR?"  Part="1" 
AR Path="/5C04BFCE/60B901EE" Ref="#PWR?"  Part="1" 
AR Path="/60B901EE" Ref="#PWR09"  Part="1" 
F 0 "#PWR09" H 11650 1700 50  0001 C CNN
F 1 "GND" V 11600 1800 50  0000 C CNN
F 2 "" H 11650 1950 50  0000 C CNN
F 3 "" H 11650 1950 50  0000 C CNN
	1    11650 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	11650 1950 11700 1950
Wire Wire Line
	12250 2050 12200 2050
Wire Wire Line
	12250 2150 12200 2150
Wire Wire Line
	8750 2700 8800 2700
Wire Wire Line
	9350 2700 9300 2700
Wire Wire Line
	9300 2600 9350 2600
Text Label 12250 2150 0    50   ~ 0
IGNITION
Text Label 8750 2400 2    50   ~ 0
IO27
Wire Wire Line
	5700 6350 5750 6350
Wire Wire Line
	5750 6250 5700 6250
Wire Wire Line
	5700 6150 5750 6150
Wire Wire Line
	5750 6050 5700 6050
Wire Wire Line
	5700 5950 5750 5950
Wire Wire Line
	9300 1600 9350 1600
Wire Wire Line
	9300 1700 9350 1700
Wire Wire Line
	9300 1800 9350 1800
Wire Wire Line
	9300 1900 9350 1900
Wire Wire Line
	9300 2000 9350 2000
Text Label 7300 8200 0    50   ~ 0
DISPLAY_POWER
Text Label 7300 8300 0    50   ~ 0
MAIN_POWER
Wire Wire Line
	7300 8300 7250 8300
Wire Wire Line
	7250 8200 7300 8200
Text Label 12250 1650 0    50   ~ 0
DISPLAY_POWER
Text Label 12250 1750 0    50   ~ 0
MAIN_POWER
Wire Wire Line
	12250 2350 12200 2350
Wire Wire Line
	12200 2250 12250 2250
Wire Wire Line
	11600 2050 11700 2050
Text Label 5700 6450 2    50   ~ 0
IO32
Text Label 5700 6250 2    50   ~ 0
IO26
Text Label 5700 6150 2    50   ~ 0
IO25
Text Label 5700 6350 2    50   ~ 0
IO27
Text Label 5700 5650 2    50   ~ 0
IO13
Wire Wire Line
	5700 5650 5750 5650
$Sheet
S 7950 3900 850  550 
U 60D3331D
F0 "CANbus" 50
F1 "canbus.sch" 50
F2 "5V" I L 7950 4000 50 
F3 "CAN_RX" I L 7950 4200 50 
F4 "CAN_TX" I L 7950 4300 50 
F5 "CAN-" I R 8800 4100 50 
F6 "CAN+" I R 8800 4000 50 
$EndSheet
Wire Wire Line
	7950 4300 7900 4300
Wire Wire Line
	7900 4200 7950 4200
Text Label 7900 4000 2    50   ~ 0
5V
Wire Wire Line
	7900 4000 7950 4000
$Sheet
S 10050 3900 700  500 
U 60DDD162
F0 "USB" 50
F1 "usb.sch" 50
F2 "RXD" I R 10750 4050 50 
F3 "TXD" I R 10750 4150 50 
F4 "ESP_EN" I L 10050 4100 50 
F5 "5V" I L 10050 4000 50 
F6 "PROG" I L 10050 4200 50 
$EndSheet
Wire Wire Line
	10000 4100 10050 4100
Text Label 10800 4050 0    50   ~ 0
RXD
Text Label 10800 4150 0    50   ~ 0
TXD
Wire Wire Line
	10800 4050 10750 4050
Wire Wire Line
	10750 4150 10800 4150
Text Label 11750 3200 2    50   ~ 0
3V3
Text Label 5700 6550 2    50   ~ 0
WHEEL_CONTROLS_SIGNAL
Text Label 8750 2500 2    50   ~ 0
IO32
Text Label 8750 2100 2    50   ~ 0
IO13
Wire Wire Line
	9350 2200 9300 2200
Wire Wire Line
	9350 2300 9300 2300
Text Label 9350 2100 0    50   ~ 0
3V3
Wire Wire Line
	9350 2100 9300 2100
Wire Wire Line
	9350 2500 9300 2500
Wire Wire Line
	9350 2400 9300 2400
Text Label 9350 2600 0    50   ~ 0
5V
Text Label 5500 2650 0    50   ~ 0
5V
Text Label 5500 2550 0    50   ~ 0
3V3
Text Label 11650 2150 2    50   ~ 0
5V
Text Label 11650 1650 2    50   ~ 0
3V3
Wire Wire Line
	11650 2150 11700 2150
Wire Wire Line
	11650 2250 11700 2250
Wire Wire Line
	11650 2350 11700 2350
Text Label 12250 1850 0    50   ~ 0
WHEEL_CONTROLS_SUPPLY
Text Label 12150 3200 0    50   ~ 0
WHEEL_CONTROLS_SUPPLY
Wire Wire Line
	11750 3200 11800 3200
Wire Wire Line
	12100 3200 12150 3200
Text Label 5150 3000 2    50   ~ 0
LOW_REF
Wire Wire Line
	5200 3000 5150 3000
$Comp
L Open_Automation:D_1N5819HW D1
U 1 1 5FC75BB4
P 11950 3200
F 0 "D1" H 11800 3250 50  0000 C CNN
F 1 "D_1N5819HW" H 11950 3075 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 11950 3025 50  0001 C CNN
F 3 "http://www.diodes.com/_files/datasheets/ds23022.pdf" H 11950 3200 50  0001 C CNN
F 4 "https://www.digikey.com/product-detail/en/diodes-incorporated/1N5819HW-7-F/1N5819HW-FDICT-ND/815283" H 12050 3400 50  0001 C CNN "Website"
F 5 "1N5819HW-7-F" H 11950 3500 50  0001 C CNN "Part Number"
F 6 "C117948" H 0   0   50  0001 C CNN "LCSC"
	1    11950 3200
	-1   0    0    1   
$EndComp
$Comp
L Open_Automation:Molex_Mini-Fit_Jr_5566 J2
U 1 1 5FD129DC
P 5150 2150
F 0 "J2" H 5200 2867 50  0000 C CNN
F 1 "Molex_Mini-Fit_Jr_5566" H 5200 2776 50  0000 C CNN
F 2 "Connector_Molex:Molex_Mini-Fit_Jr_5566-24A2_2x12_P4.20mm_Vertical" H 5200 2950 50  0001 C CNN
F 3 "https://www.molex.com/webdocs/datasheets/pdf/en-us/0039299243_PCB_HEADERS.pdf" H 5150 2150 50  0001 C CNN
F 4 "39299243" H 5200 1350 50  0001 C CNN "Part Number"
F 5 "https://www.molex.com/molex/products/part-detail/pcb_headers/0039299243" H 5150 2850 50  0001 C CNN "Website"
	1    5150 2150
	1    0    0    -1  
$EndComp
$Comp
L Open_Automation:Molex_Mini-Fit_Jr_5566 J3
U 1 1 5FD1543D
P 9000 2100
F 0 "J3" H 9050 2817 50  0000 C CNN
F 1 "Molex_Mini-Fit_Jr_5566" H 9050 2726 50  0000 C CNN
F 2 "Connector_Molex:Molex_Mini-Fit_Jr_5566-24A2_2x12_P4.20mm_Vertical" H 9050 2900 50  0001 C CNN
F 3 "https://www.molex.com/webdocs/datasheets/pdf/en-us/0039299243_PCB_HEADERS.pdf" H 9000 2100 50  0001 C CNN
F 4 "39299243" H 9050 1300 50  0001 C CNN "Part Number"
F 5 "https://www.molex.com/molex/products/part-detail/pcb_headers/0039299243" H 9000 2800 50  0001 C CNN "Website"
	1    9000 2100
	1    0    0    -1  
$EndComp
$Comp
L Open_Automation:Molex_Mini-Fit_Jr_5566 J4
U 1 1 5FD16ADB
P 11900 2150
F 0 "J4" H 11950 2867 50  0000 C CNN
F 1 "Molex_Mini-Fit_Jr_5566" H 11950 2776 50  0000 C CNN
F 2 "Connector_Molex:Molex_Mini-Fit_Jr_5566-24A2_2x12_P4.20mm_Vertical" H 11950 2950 50  0001 C CNN
F 3 "https://www.molex.com/webdocs/datasheets/pdf/en-us/0039299243_PCB_HEADERS.pdf" H 11900 2150 50  0001 C CNN
F 4 "39299243" H 11950 1350 50  0001 C CNN "Part Number"
F 5 "https://www.molex.com/molex/products/part-detail/pcb_headers/0039299243" H 11900 2850 50  0001 C CNN "Website"
	1    11900 2150
	1    0    0    -1  
$EndComp
Text Label 2550 4300 2    50   ~ 0
5V
$Comp
L power:GND #PWR?
U 1 1 601BEF81
P 4900 2750
AR Path="/5ABD187E/601BEF81" Ref="#PWR?"  Part="1" 
AR Path="/601BEF81" Ref="#PWR03"  Part="1" 
AR Path="/5A7BADB8/601BEF81" Ref="#PWR?"  Part="1" 
F 0 "#PWR03" H 4900 2500 50  0001 C CNN
F 1 "GND" V 4950 2600 50  0000 C CNN
F 2 "" H 4900 2750 50  0001 C CNN
F 3 "" H 4900 2750 50  0001 C CNN
	1    4900 2750
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 601BF455
P 5500 2750
AR Path="/5ABD187E/601BF455" Ref="#PWR?"  Part="1" 
AR Path="/601BF455" Ref="#PWR05"  Part="1" 
AR Path="/5A7BADB8/601BF455" Ref="#PWR?"  Part="1" 
F 0 "#PWR05" H 5500 2500 50  0001 C CNN
F 1 "GND" V 5450 2600 50  0000 C CNN
F 2 "" H 5500 2750 50  0001 C CNN
F 3 "" H 5500 2750 50  0001 C CNN
	1    5500 2750
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 601BFAAA
P 5200 3000
AR Path="/5ABD187E/601BFAAA" Ref="#PWR?"  Part="1" 
AR Path="/601BFAAA" Ref="#PWR04"  Part="1" 
AR Path="/5A7BADB8/601BFAAA" Ref="#PWR?"  Part="1" 
F 0 "#PWR04" H 5200 2750 50  0001 C CNN
F 1 "GND" V 5150 2850 50  0000 C CNN
F 2 "" H 5200 3000 50  0001 C CNN
F 3 "" H 5200 3000 50  0001 C CNN
	1    5200 3000
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 601C110C
P 9350 2700
AR Path="/5ABD187E/601C110C" Ref="#PWR?"  Part="1" 
AR Path="/601C110C" Ref="#PWR07"  Part="1" 
AR Path="/5A7BADB8/601C110C" Ref="#PWR?"  Part="1" 
F 0 "#PWR07" H 9350 2450 50  0001 C CNN
F 1 "GND" V 9300 2550 50  0000 C CNN
F 2 "" H 9350 2700 50  0001 C CNN
F 3 "" H 9350 2700 50  0001 C CNN
	1    9350 2700
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 601C1687
P 8750 2700
AR Path="/5ABD187E/601C1687" Ref="#PWR?"  Part="1" 
AR Path="/601C1687" Ref="#PWR06"  Part="1" 
AR Path="/5A7BADB8/601C1687" Ref="#PWR?"  Part="1" 
F 0 "#PWR06" H 8750 2450 50  0001 C CNN
F 1 "GND" V 8800 2550 50  0000 C CNN
F 2 "" H 8750 2700 50  0001 C CNN
F 3 "" H 8750 2700 50  0001 C CNN
	1    8750 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	5950 8850 5900 8850
Wire Wire Line
	5900 8750 5950 8750
Text Label 5900 8950 2    50   ~ 0
TRIGGER1
Text Label 5900 9050 2    50   ~ 0
SENSE1
Wire Wire Line
	5950 9050 5900 9050
Wire Wire Line
	5900 8950 5950 8950
Text Label 11600 2050 2    50   ~ 0
TRIGGER1
Text Label 12250 2050 0    50   ~ 0
SENSE1
Text Label 3150 4200 0    50   ~ 0
TXD
Wire Wire Line
	3100 4000 3150 4000
Text Label 3150 4300 0    50   ~ 0
RXD
Wire Wire Line
	2600 4600 2550 4600
Wire Wire Line
	3100 4100 3150 4100
Text Label 3150 4100 0    50   ~ 0
SCL
Text Label 3150 4000 0    50   ~ 0
SDA
Wire Wire Line
	3100 4300 3150 4300
Wire Wire Line
	3150 4200 3100 4200
Wire Wire Line
	2600 4200 2550 4200
Text Label 2550 4500 2    50   ~ 0
PROG
Wire Wire Line
	2600 4500 2550 4500
Text Label 2550 4000 2    50   ~ 0
FACT
Text Label 2550 4100 2    50   ~ 0
ESP_EN
Wire Wire Line
	2600 4100 2550 4100
Wire Wire Line
	2550 4000 2600 4000
$Comp
L power:GND #PWR?
U 1 1 5FE25541
P 2500 3800
AR Path="/5ABD187E/5FE25541" Ref="#PWR?"  Part="1" 
AR Path="/5FE25541" Ref="#PWR02"  Part="1" 
AR Path="/5A7BADDB/5FE25541" Ref="#PWR?"  Part="1" 
AR Path="/6077D777/5FE25541" Ref="#PWR?"  Part="1" 
F 0 "#PWR02" H 2500 3550 50  0001 C CNN
F 1 "GND" V 2500 3600 50  0000 C CNN
F 2 "" H 2500 3800 50  0001 C CNN
F 3 "" H 2500 3800 50  0001 C CNN
	1    2500 3800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FE25547
P 2550 4600
AR Path="/5ABD187E/5FE25547" Ref="#PWR?"  Part="1" 
AR Path="/5FE25547" Ref="#PWR01"  Part="1" 
AR Path="/5A7BADDB/5FE25547" Ref="#PWR?"  Part="1" 
AR Path="/6077D777/5FE25547" Ref="#PWR?"  Part="1" 
F 0 "#PWR01" H 2550 4350 50  0001 C CNN
F 1 "GND" V 2500 4450 50  0000 C CNN
F 2 "" H 2550 4600 50  0001 C CNN
F 3 "" H 2550 4600 50  0001 C CNN
	1    2550 4600
	0    1    1    0   
$EndComp
Text Label 2550 4200 2    50   ~ 0
3V3
Wire Wire Line
	2550 4300 2600 4300
Wire Wire Line
	2550 4400 2600 4400
Wire Wire Line
	3100 4400 3150 4400
Text Label 5700 6900 2    50   ~ 0
FACT
Wire Wire Line
	5700 6900 5750 6900
Wire Wire Line
	3100 4600 3150 4600
Wire Wire Line
	3150 4500 3100 4500
Text Label 3150 4600 0    50   ~ 0
IO26
Text Label 3150 4500 0    50   ~ 0
IO25
$Comp
L Connector_Generic:Conn_02x09_Odd_Even J1
U 1 1 600AFE56
P 2800 4200
F 0 "J1" H 2850 4817 50  0000 C CNN
F 1 "Conn_02x09_Odd_Even" H 2850 4726 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x09_P2.54mm_Vertical_SMD" H 2800 4200 50  0001 C CNN
F 3 "~" H 2800 4200 50  0001 C CNN
	1    2800 4200
	1    0    0    -1  
$EndComp
$Sheet
S 9550 5400 1150 1850
U 601F213A
F0 "HVAC" 50
F1 "hvac.sch" 50
F2 "3V3" I L 9550 5550 50 
F3 "AIN1" I L 9550 6050 50 
F4 "AIN3" I L 9550 6250 50 
F5 "AIN4" I L 9550 6350 50 
F6 "AIN2" I L 9550 6150 50 
F7 "AIN5" I L 9550 6450 50 
F8 "AIN0" I L 9550 5950 50 
F9 "AIN6" I L 9550 6550 50 
F10 "AIN8" I L 9550 6750 50 
F11 "OUT8" I R 10700 6400 50 
F12 "OUT4" I R 10700 6000 50 
F13 "OUT5" I R 10700 6100 50 
F14 "OUT7" I R 10700 6300 50 
F15 "OUT10" I R 10700 6600 50 
F16 "OUT3" I R 10700 5900 50 
F17 "OUT1" I R 10700 5700 50 
F18 "OUT6" I R 10700 6200 50 
F19 "OUT9" I R 10700 6500 50 
F20 "OUT2" I R 10700 5800 50 
F21 "OUT0" I R 10700 5600 50 
F22 "SDA" I L 9550 5800 50 
F23 "SCL" I L 9550 5700 50 
F24 "TRIGGER0" I L 9550 7100 50 
F25 "TRIGGER1" I L 9550 7200 50 
F26 "CONTROL0" I R 10700 6850 50 
F27 "CONTROL1" I R 10700 6950 50 
F28 "SUPPLY" I R 10700 5450 50 
F29 "AIN7" I L 9550 6650 50 
F30 "POWER" I L 9550 5450 50 
F31 "OUT11" I R 10700 6700 50 
F32 "AIN10" I L 9550 6950 50 
F33 "AIN9" I L 9550 6850 50 
$EndSheet
Text Label 9500 5700 2    50   ~ 0
SCL
Text Label 9500 5800 2    50   ~ 0
SDA
Text Label 9500 5550 2    50   ~ 0
3V3
Text Label 10750 5600 0    50   ~ 0
LEFT_AIR_TEMP_CONTROL_A
Text Label 10750 5800 0    50   ~ 0
RIGHT_AIR_TEMP_CONTROL_A
Text Label 10750 5700 0    50   ~ 0
LEFT_AIR_TEMP_CONTROL_B
Text Label 10750 5900 0    50   ~ 0
RIGHT_AIR_TEMP_CONTROL_B
Text Label 10750 6500 0    50   ~ 0
BLOWER_MOTOR
Text Label 10750 6400 0    50   ~ 0
INSIDE_AIR_TEMP_BLOWER
Text Label 10750 6200 0    50   ~ 0
RECIRCULATION_A
Text Label 10750 6000 0    50   ~ 0
MODE_A
Text Label 10750 6300 0    50   ~ 0
RECIRCULATION_B
Text Label 10750 6100 0    50   ~ 0
MODE_B
Text Label 10750 6600 0    50   ~ 0
REAR_DEFOG
Text Label 9500 5450 2    50   ~ 0
BATTERY
Text Label 10750 6700 0    50   ~ 0
OUT11
Text Label 9500 5950 2    50   ~ 0
INSIDE_AIR_TEMP
Text Label 9500 6050 2    50   ~ 0
AMBIENT_AIR_TEMP
Text Label 9500 6150 2    50   ~ 0
UPPER_RIGHT_AIR_TEMP
Text Label 9500 6250 2    50   ~ 0
UPPER_LEFT_AIR_TEMP
Text Label 9500 6350 2    50   ~ 0
LOWER_RIGHT_AIR_TEMP
Text Label 9500 6450 2    50   ~ 0
LOWER_LEFT_AIR_TEMP
Text Label 9500 6550 2    50   ~ 0
AMBIENT_LIGHT
Text Label 9500 6650 2    50   ~ 0
DRIVER_SUNLOAD
Text Label 9500 6750 2    50   ~ 0
PASSENGER_SUNLOAD
Text Label 9500 7200 2    50   ~ 0
PASSENGER_HEATED_SEAT_STATUS
Text Label 9500 7100 2    50   ~ 0
DRIVER_HEATED_SEAT_STATUS
Text Label 10750 6950 0    50   ~ 0
PASSENGER_SEAT_TEMP_CONTROL
Text Label 10750 6850 0    50   ~ 0
DRIVER_SEAT_TEMP_CONTROL
Text Label 9500 6850 2    50   ~ 0
AIN9
Text Label 9500 6950 2    50   ~ 0
AIN10
Wire Wire Line
	9500 5450 9550 5450
Wire Wire Line
	9550 5550 9500 5550
Wire Wire Line
	9500 5700 9550 5700
Wire Wire Line
	9550 5800 9500 5800
Wire Wire Line
	9500 5950 9550 5950
Wire Wire Line
	9550 6050 9500 6050
Wire Wire Line
	9500 6150 9550 6150
Wire Wire Line
	9550 6250 9500 6250
Wire Wire Line
	9500 6350 9550 6350
Wire Wire Line
	9550 6450 9500 6450
Wire Wire Line
	9500 6550 9550 6550
Wire Wire Line
	9550 6650 9500 6650
Wire Wire Line
	9500 6750 9550 6750
Wire Wire Line
	9550 6850 9500 6850
Wire Wire Line
	9500 6950 9550 6950
Wire Wire Line
	9550 7100 9500 7100
Wire Wire Line
	9500 7200 9550 7200
Wire Wire Line
	10750 6950 10700 6950
Wire Wire Line
	10700 6850 10750 6850
Wire Wire Line
	10750 6700 10700 6700
Wire Wire Line
	10700 6600 10750 6600
Wire Wire Line
	10750 6500 10700 6500
Wire Wire Line
	10700 6400 10750 6400
Wire Wire Line
	10750 6300 10700 6300
Wire Wire Line
	10700 6200 10750 6200
Wire Wire Line
	10750 6100 10700 6100
Wire Wire Line
	10700 6000 10750 6000
Wire Wire Line
	10750 5900 10700 5900
Wire Wire Line
	10700 5800 10750 5800
Wire Wire Line
	10750 5700 10700 5700
Wire Wire Line
	10700 5600 10750 5600
Wire Wire Line
	10750 5450 10700 5450
Text Label 3150 3800 0    50   ~ 0
OUT11
Text Label 3150 4400 0    50   ~ 0
AIN9
Text Label 3150 3900 0    50   ~ 0
AIN10
Wire Wire Line
	3150 3900 3100 3900
Wire Wire Line
	3150 3800 3100 3800
Text Label 2550 3900 2    50   ~ 0
5V
Wire Wire Line
	2500 3800 2600 3800
Wire Wire Line
	2550 3900 2600 3900
Text Label 5700 6750 2    50   ~ 0
BATTERY_VOLTAGE_SENSE
Wire Wire Line
	11650 1650 11700 1650
Text Label 9350 2300 0    50   ~ 0
BATTERY
Text Label 9350 2500 0    50   ~ 0
5V
Text Label 9350 2200 0    50   ~ 0
3V3
$Comp
L power:GND #PWR?
U 1 1 5FD4D8D5
P 9350 2400
AR Path="/5ABD187E/5FD4D8D5" Ref="#PWR?"  Part="1" 
AR Path="/5FD4D8D5" Ref="#PWR0143"  Part="1" 
AR Path="/5A7BADB8/5FD4D8D5" Ref="#PWR?"  Part="1" 
F 0 "#PWR0143" H 9350 2150 50  0001 C CNN
F 1 "GND" V 9400 2250 50  0000 C CNN
F 2 "" H 9350 2400 50  0001 C CNN
F 3 "" H 9350 2400 50  0001 C CNN
	1    9350 2400
	0    -1   -1   0   
$EndComp
Text Label 2550 4400 2    50   ~ 0
BATTERY
Text Label 5500 2450 0    50   ~ 0
BATTERY
$Comp
L open-dash-daughterboard-rescue:GND-open-automation #PWR?
U 1 1 5FD3DF83
P 11650 1750
AR Path="/5B15E02A/5FD3DF83" Ref="#PWR?"  Part="1" 
AR Path="/5C04BFCE/5FD3DF83" Ref="#PWR?"  Part="1" 
AR Path="/5FD3DF83" Ref="#PWR0144"  Part="1" 
F 0 "#PWR0144" H 11650 1500 50  0001 C CNN
F 1 "GND" V 11600 1600 50  0000 C CNN
F 2 "" H 11650 1750 50  0000 C CNN
F 3 "" H 11650 1750 50  0000 C CNN
	1    11650 1750
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FD70CA6
P 8750 2300
AR Path="/5ABD187E/5FD70CA6" Ref="#PWR?"  Part="1" 
AR Path="/5FD70CA6" Ref="#PWR0145"  Part="1" 
AR Path="/5A7BADB8/5FD70CA6" Ref="#PWR?"  Part="1" 
F 0 "#PWR0145" H 8750 2050 50  0001 C CNN
F 1 "GND" V 8750 2100 50  0000 C CNN
F 2 "" H 8750 2300 50  0001 C CNN
F 3 "" H 8750 2300 50  0001 C CNN
	1    8750 2300
	0    1    1    0   
$EndComp
Text Label 8750 2200 2    50   ~ 0
BATTERY
$EndSCHEMATC
