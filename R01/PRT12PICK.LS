/PROG  PRT12PICK
/ATTR
OWNER		= SHIFT;
COMMENT		= "Pick Core 332";
PROG_SIZE	= 3601;
CREATE		= DATE 18-11-26  TIME 14:50:00;
MODIFIED	= DATE 19-03-04  TIME 14:26:40;
FILE_NAME	= PRT06PIC;
VERSION		= 0;
LINE_COUNT	= 108;
MEMORY_SIZE	= 3925;
PROTECT		= READ_WRITE;
STORAGE		= SHADOW;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
  HANDLING : TRUE ; 
/MN
   1:  !******************************** ;
   2:  !* PATH - pick from press ;
   3:  !*    core (moving) end ;
   4:  !******************************** ;
   5:  !* Robot ID: IM010R01B1 ;
   6:  !*    F-196839 ;
   7:  !* Line: 1 ;
   8:  !* Platform: XX ;
   9:  !* Tool ID: TOOL 02 ;
  10:  !* Part ID: PART 02 ;
  11:  !* Program: PRT03PICK2 ;
  12:  !* Application: MH PICK ;
  13:  !* Model: 335 ;
  14:  !******************************** ;
  15:  ! Author: Esys Automation ;
  16:  !******************************** ;
  17:   ;
  18:  !++++++++++++++++++++++++++++++++ ;
  19:  !ASSIGN PROGRAM PATH VALUES ;
  20:  !-------------------------------- ;
  21:  !Set Robot Tool and Press UFrame ;
  22:  UTOOL_NUM=12 ;
  23:  UFRAME_NUM=0 ;
  24:  PAYLOAD[12] ;
  25:   ;
  26:  !--------IMPORTANT-------- ;
  27:  !for MH tool changers ;
  28:  !make sure Set MH TOOL(AR) ;
  29:  !matches tool number ;
  30:  Set MH Tool(12) ;
  31:  !++++++++++++++++++++++++++++++++ ;
  32:   ;
  33:  !******************************** ;
  34:  !BEGINNING OF PROGRAM PATH ;
  35:  !MOVE TO PRESS CORE PICK ;
  36:  !******************************** ;
  37:   ;
  38:  !Check for EOAT In Correct ;
  39:  !State. Prepare to Pick(1) ;
  40:  Prepare to Pick(6,7) ;
  41:   ;
  42:  !SET SEGMENT(12), Pick2 Approach ;
  43:  SET SEGMENT(12) ;
  44:   ;
  45:J P[1] 100% CNT100    ;
  46:J P[2] 100% CNT100    ;
  47:J P[3] 100% CNT100    ;
  48:   ;
  49:L P[4:In Press] 2000mm/sec CNT100    ;
  50:  REQUEST CONTINUE    ;
  51:   ;
  52:L P[5] 500mm/sec FINE    ;
  53:   ;
  54:  !Robot at Pick2 ;
  55:L P[6:At Core Pick] 250mm/sec FINE    ;
  56:   ;
  57:  !Turn on Valves to Grip Part ;
  58:   ;
  59:  Grip Part(5) ;
  60:  VACUUM CAN 1 ON(6,7) ;
  61:  CHK PART PRESENT(1) ;
  62:   ;
  63:  Release Part(5) ;
  64:  REQUEST CONTINUE    ;
  65:   ;
  66:  !Set Payload= Gripper & Part ;
  67:  PAYLOAD[13] ;
  68:   ;
  69:  !CHECK PART IN EOAT ;
  70:  CHK PART PRESENT(1) ;
  71:   ;
  72:  SET SEGMENT(13) ;
  73:  !SET SEGMENT(13), At Pick2 ;
  74:   ;
  75:  !MOVE BACK FROM PICK POS ;
  76:  !TO CHECK PART IN TOOL ;
  77:L P[18] 10mm/sec FINE    ;
  78:L P[19] 150mm/sec FINE    ;
  79:L P[7:Core Pick Retret] 1000mm/sec CNT50    ;
  80:   ;
  81:  !CHECK PART IN EOAT ;
  82:  CHK PART PRESENT(1) ;
  83:   ;
  84:  REQUEST CONTINUE    ;
  85:   ;
  86:  !MOVE CLEAR OF PRESS PICK ;
  87:L P[8:In Press] 2000mm/sec CNT100    ;
  88:  CHK PART PRESENT(1) ;
  89:   ;
  90:L P[9] 2000mm/sec CNT50    ;
  91:L P[10] 2000mm/sec CNT100    ;
  92:   ;
  93:J P[11] 100% CNT100    ;
  94:J P[12] 100% CNT100    ;
  95:J P[13] 100% FINE    ;
  96:  CHK PART PRESENT(1) ;
  97:   ;
  98:  SET SEGMENT(14) ;
  99:  !SET SEGMENT(14), Pick2-Depart ;
 100:   ;
 101:  !MOVE TOWARDS CELL ;
 102:  !Set World Tool and World UFrame ;
 103:   ;
 104:J P[14:Rotate Cell] 100% CNT100    ;
 105:J P[15:Leoni Clear] 100% CNT100    ;
 106:J P[16:Leoni Clear] 100% CNT100    ;
 107:J P[17:Cell Pounce] 100% CNT100    ;
 108:   ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X =  1180.817  mm,	Y =  2720.707  mm,	Z =   400.215  mm,
	W =  -174.091 deg,	P =    57.925 deg,	R =     1.541 deg
};
P[2]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X =  1180.817  mm,	Y =  2720.707  mm,	Z =  -130.185  mm,
	W =  -174.091 deg,	P =    57.925 deg,	R =     1.541 deg
};
P[3]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X =   995.574  mm,	Y =  2758.842  mm,	Z =  -857.242  mm,
	W =  -169.690 deg,	P =    70.514 deg,	R =     6.676 deg
};
P[4:"In Press"]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X =   764.430  mm,	Y =  2759.371  mm,	Z = -1947.443  mm,
	W =   -61.123 deg,	P =    88.324 deg,	R =   113.929 deg
};
P[5]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X =   614.432  mm,	Y =  2759.371  mm,	Z = -2076.976  mm,
	W =   -61.123 deg,	P =    88.324 deg,	R =   113.929 deg
};
P[6:"At Core Pick"]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X =   429.941  mm,	Y =  2759.409  mm,	Z = -2076.951  mm,
	W =   -61.136 deg,	P =    88.324 deg,	R =   113.917 deg
};
P[7:"Core Pick Retret"]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X =   811.182  mm,	Y =  2759.409  mm,	Z = -2037.108  mm,
	W =  -137.554 deg,	P =    87.484 deg,	R =    37.535 deg
};
P[8:"In Press"]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X =   930.086  mm,	Y =  2736.087  mm,	Z = -1893.365  mm,
	W =  -174.017 deg,	P =    80.438 deg,	R =     2.570 deg
};
P[9]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X =   995.574  mm,	Y =  2758.842  mm,	Z =  -857.242  mm,
	W =  -169.690 deg,	P =    70.514 deg,	R =     6.676 deg
};
P[10]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X =  1180.817  mm,	Y =  2674.390  mm,	Z =  -130.186  mm,
	W =  -174.091 deg,	P =    57.925 deg,	R =     1.541 deg
};
P[11]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X =  1185.498  mm,	Y =  2724.303  mm,	Z =   314.752  mm,
	W =  -173.963 deg,	P =    58.044 deg,	R =     1.602 deg
};
P[12]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X =  1180.817  mm,	Y =  2720.707  mm,	Z =   400.215  mm,
	W =  -174.091 deg,	P =    57.925 deg,	R =     1.541 deg
};
P[13]{
   GP1:
	UF : 0, UT : 12,	
	J1=    59.029 deg,	J2=   -63.927 deg,	J3=    89.176 deg,
	J4=   -24.021 deg,	J5=  -103.193 deg,	J6=   -64.959 deg
};
P[14:"Rotate Cell"]{
   GP1:
	UF : 0, UT : 12,	
	J1=     9.603 deg,	J2=   -94.338 deg,	J3=   113.973 deg,
	J4=    10.075 deg,	J5=   -77.157 deg,	J6=   -69.150 deg
};
P[15:"Leoni Clear"]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X =  2520.294  mm,	Y = -1341.438  mm,	Z =  1185.614  mm,
	W =  -142.484 deg,	P =    17.133 deg,	R =   -67.638 deg
};
P[16:"Leoni Clear"]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X =  1389.854  mm,	Y = -2398.698  mm,	Z =  1065.076  mm,
	W =  -178.772 deg,	P =     -.407 deg,	R =   -74.932 deg
};
P[17:"Cell Pounce"]{
   GP1:
	UF : 0, UT : 12,	
	J1=   -78.957 deg,	J2=  -103.573 deg,	J3=   105.816 deg,
	J4=     4.234 deg,	J5=   -75.306 deg,	J6=   -11.576 deg
};
P[18]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X =   486.821  mm,	Y =  2759.410  mm,	Z = -2076.950  mm,
	W =   -61.136 deg,	P =    88.324 deg,	R =   113.917 deg
};
P[19]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X =   546.340  mm,	Y =  2759.410  mm,	Z = -2076.950  mm,
	W =   -61.136 deg,	P =    88.324 deg,	R =   113.917 deg
};
/END
