/PROG  PRT38PICK
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Pick Core 373";
PROG_SIZE	= 3350;
CREATE		= DATE 21-10-21  TIME 22:02:04;
MODIFIED	= DATE 21-10-21  TIME 22:02:04;
FILE_NAME	= PRT38PIC;
VERSION		= 0;
LINE_COUNT	= 97;
MEMORY_SIZE	= 3718;
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
  11:  !* Program: PRT38PICK2 ;
  12:  !* Application: MH PICK ;
  13:  !* Model: 373 ;
  14:  !******************************** ;
  15:  ! Author: Esys Automation ;
  16:  !******************************** ;
  17:   ;
  18:  !++++++++++++++++++++++++++++++++ ;
  19:  !ASSIGN PROGRAM PATH VALUES ;
  20:  !-------------------------------- ;
  21:  !Set Robot Tool and Press UFrame ;
  22:  UTOOL_NUM=7 ;
  23:  UFRAME_NUM=0 ;
  24:  PAYLOAD[14] ;
  25:   ;
  26:  !--------IMPORTANT-------- ;
  27:  !for MH tool changers ;
  28:  !make sure Set MH TOOL(AR) ;
  29:  !matches tool number ;
  30:  Set MH Tool(7) ;
  31:   ;
  32:  !SET SEGMENT(12), Pick2 Approach ;
  33:  SET SEGMENT(12) ;
  34:  Grip Part(1) ;
  35:   ;
  36:J P[1] 100% CNT100    ;
  37:J P[2] 100% CNT100    ;
  38:J P[3] 100% CNT100    ;
  39:   ;
  40:L P[4:In Press] 2000mm/sec CNT100    ;
  41:  Grip Part(2) ;
  42:   ;
  43:L P[5:B4 Core Pick] 2000mm/sec CNT100    ;
  44:   ;
  45:  !Robot at Pick2 ;
  46:L P[6:At Core Pick] 90mm/sec FINE    ;
  47:   ;
  48:  !Turn on Valves to Grip Part ;
  49:  WAIT    .20(sec) ;
  50:   ;
  51:  Grip Part(5) ;
  52:  Release Part(1) ;
  53:   ;
  54:  VACUUM CAN 1 ON(6,7) ;
  55:   ;
  56:  Release Part(5) ;
  57:   ;
  58:  !Set Payload= Gripper & Part ;
  59:  PAYLOAD[15] ;
  60:   ;
  61:  !CHECK PART IN EOAT ;
  62:  CHK PART PRESENT(1) ;
  63:   ;
  64:  SET SEGMENT(13) ;
  65:  !SET SEGMENT(13), At Pick2 ;
  66:   ;
  67:  !MOVE BACK FROM PICK POS ;
  68:  !TO CHECK PART IN TOOL ;
  69:L P[7:Core Pick Retret] 5mm/sec FINE    ;
  70:L P[8] 30mm/sec FINE    ;
  71:L P[9] 1200mm/sec FINE    ;
  72:L P[10] 2000mm/sec CNT50    ;
  73:  CHK PART PRESENT(1) ;
  74:   ;
  75:  REQUEST CONTINUE    ;
  76:   ;
  77:  !MOVE CLEAR OF PRESS PICK ;
  78:L P[11:In Press] 2000mm/sec CNT100    ;
  79:L P[12] 2000mm/sec CNT100    ;
  80:L P[13] 2000mm/sec CNT100    ;
  81:   ;
  82:J P[14] 100% CNT100    ;
  83:J P[15] 100% CNT100    ;
  84:J P[16] 100% FINE    ;
  85:   ;
  86:  CHK PART PRESENT(1) ;
  87:   ;
  88:  SET SEGMENT(14) ;
  89:  !SET SEGMENT(14), Pick2-Depart ;
  90:   ;
  91:  !MOVE TOWARDS CELL ;
  92:  !Set World Tool and World UFrame ;
  93:   ;
  94:J P[17:Rotate Cell] 100% CNT100    ;
  95:J P[18:Leoni Clear] 100% CNT100    ;
  96:J P[19:Leoni Clear] 100% CNT100    ;
  97:J P[20:Cell Pounce] 100% CNT100    ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =   952.755  mm,	Y =  2185.113  mm,	Z =    63.917  mm,
	W =   175.271 deg,	P =    87.787 deg,	R =   170.959 deg
};
P[2]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =  1171.636  mm,	Y =  2185.115  mm,	Z =  -831.284  mm,
	W =   175.271 deg,	P =    87.787 deg,	R =   170.959 deg
};
P[3]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =  1223.365  mm,	Y =  2308.281  mm,	Z = -1963.492  mm,
	W =   175.246 deg,	P =    87.845 deg,	R =   170.918 deg
};
P[4:"In Press"]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =  1541.235  mm,	Y =  2286.871  mm,	Z = -2035.124  mm,
	W =   175.273 deg,	P =    87.787 deg,	R =   170.961 deg
};
P[5:"B4 Core Pick"]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =  1636.943  mm,	Y =  2308.235  mm,	Z = -2036.834  mm,
	W =    95.215 deg,	P =    89.490 deg,	R =    90.953 deg
};
P[6:"At Core Pick"]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =  1698.240  mm,	Y =  2303.846  mm,	Z = -2035.521  mm,
	W =    96.090 deg,	P =    89.489 deg,	R =    91.829 deg
};
P[7:"Core Pick Retret"]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =  1668.303  mm,	Y =  2306.019  mm,	Z = -2035.538  mm,
	W =    96.226 deg,	P =    89.490 deg,	R =    91.965 deg
};
P[8]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =  1668.302  mm,	Y =  2306.069  mm,	Z = -2041.297  mm,
	W =    96.226 deg,	P =    89.490 deg,	R =    91.965 deg
};
P[9]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =  1348.861  mm,	Y =  2302.408  mm,	Z = -2048.190  mm,
	W =    96.093 deg,	P =    89.488 deg,	R =    91.830 deg
};
P[10]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =  1234.192  mm,	Y =  2297.361  mm,	Z = -1812.236  mm,
	W =    16.467 deg,	P =    88.511 deg,	R =    12.187 deg
};
P[11:"In Press"]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =  1187.151  mm,	Y =  2297.361  mm,	Z = -1127.754  mm,
	W =    16.467 deg,	P =    88.511 deg,	R =    12.187 deg
};
P[12]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =  1187.151  mm,	Y =  2297.361  mm,	Z =  -415.433  mm,
	W =    16.467 deg,	P =    88.511 deg,	R =    12.187 deg
};
P[13]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =  1187.151  mm,	Y =  2297.361  mm,	Z =   -43.912  mm,
	W =    16.467 deg,	P =    88.511 deg,	R =    12.187 deg
};
P[14]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =  1187.151  mm,	Y =  2297.362  mm,	Z =   433.208  mm,
	W =    16.467 deg,	P =    88.511 deg,	R =    12.187 deg
};
P[15]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =  1187.151  mm,	Y =  2297.362  mm,	Z =   612.728  mm,
	W =    16.467 deg,	P =    88.511 deg,	R =    12.187 deg
};
P[16]{
   GP1:
	UF : 0, UT : 7,	
	J1=    76.766 deg,	J2=   -80.450 deg,	J3=    86.852 deg,
	J4=    51.518 deg,	J5=   -76.583 deg,	J6=    91.489 deg
};
P[17:"Rotate Cell"]{
   GP1:
	UF : 0, UT : 7,	
	J1=     9.603 deg,	J2=   -94.338 deg,	J3=   113.973 deg,
	J4=    10.075 deg,	J5=   -77.157 deg,	J6=   -69.150 deg
};
P[18:"Leoni Clear"]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =  2520.294  mm,	Y = -1341.438  mm,	Z =  1185.614  mm,
	W =  -142.484 deg,	P =    17.133 deg,	R =   -67.638 deg
};
P[19:"Leoni Clear"]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =  1389.854  mm,	Y = -2398.698  mm,	Z =  1065.076  mm,
	W =  -178.772 deg,	P =     -.407 deg,	R =   -74.932 deg
};
P[20:"Cell Pounce"]{
   GP1:
	UF : 0, UT : 7,	
	J1=   -78.957 deg,	J2=  -103.573 deg,	J3=   105.816 deg,
	J4=     4.234 deg,	J5=   -75.306 deg,	J6=   -11.576 deg
};
/END
