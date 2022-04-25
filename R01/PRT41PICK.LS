/PROG  PRT41PICK
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Pick Core 375";
PROG_SIZE	= 3298;
CREATE		= DATE 22-01-24  TIME 06:32:36;
MODIFIED	= DATE 22-01-24  TIME 08:30:58;
FILE_NAME	= PRT41PIC;
VERSION		= 0;
LINE_COUNT	= 105;
MEMORY_SIZE	= 3634;
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
  31:  !++++++++++++++++++++++++++++++++ ;
  32:   ;
  33:  !******************************** ;
  34:  !BEGINNING OF PROGRAM PATH ;
  35:  !MOVE TO PRESS CORE PICK ;
  36:  !******************************** ;
  37:   ;
  38:  !Check for EOAT In Correct ;
  39:  !State. Prepare to Pick(1) ;
  40:   ;
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
  52:L P[5:B4 Core Pick] 2000mm/sec FINE    ;
  53:   ;
  54:  !Robot at Pick2 ;
  55:L P[6:At Core Pick] 300mm/sec FINE    ;
  56:   ;
  57:  !Turn on Valves to Grip Part ;
  58:   ;
  59:  Grip Part(5) ;
  60:  WAIT   1.50(sec) ;
  61:   ;
  62:  Grip Part(1) ;
  63:  WAIT    .50(sec) ;
  64:   ;
  65:  VACUUM CAN 1 ON(6,7) ;
  66:  CHK PART PRESENT(1) ;
  67:   ;
  68:  Release Part(5) ;
  69:  REQUEST CONTINUE    ;
  70:   ;
  71:  !Set Payload= Gripper & Part ;
  72:  PAYLOAD[15] ;
  73:   ;
  74:  !CHECK PART IN EOAT ;
  75:  CHK PART PRESENT(1) ;
  76:   ;
  77:  SET SEGMENT(13) ;
  78:  !SET SEGMENT(13), At Pick2 ;
  79:   ;
  80:  !MOVE BACK FROM PICK POS ;
  81:  !TO CHECK PART IN TOOL ;
  82:L P[7] 15mm/sec FINE    ;
  83:L P[8] 1000mm/sec FINE    ;
  84:L P[9] 2000mm/sec CNT80    ;
  85:   ;
  86:  CHK PART PRESENT(1) ;
  87:   ;
  88:  REQUEST CONTINUE    ;
  89:   ;
  90:  !MOVE CLEAR OF PRESS PICK ;
  91:L P[10:In Press] 2000mm/sec CNT100    ;
  92:   ;
  93:J P[11] 100% CNT100    ;
  94:   ;
  95:  CHK PART PRESENT(1) ;
  96:   ;
  97:  SET SEGMENT(14) ;
  98:  !SET SEGMENT(14), Pick2-Depart ;
  99:   ;
 100:  !MOVE TOWARDS CELL ;
 101:  !Set World Tool and World UFrame ;
 102:   ;
 103:J P[12:Rotate Cell] 100% CNT100    ;
 104:J P[13:Leoni Clear] 100% CNT100    ;
 105:J P[14:Cell Pounce] 100% CNT100    ;
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
	X =  1020.916  mm,	Y =  2185.113  mm,	Z =  -831.284  mm,
	W =   175.271 deg,	P =    87.787 deg,	R =   170.959 deg
};
P[3]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =  1055.463  mm,	Y =  2286.831  mm,	Z = -1226.141  mm,
	W =    96.521 deg,	P =    89.653 deg,	R =    92.215 deg
};
P[4:"In Press"]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =  1095.085  mm,	Y =  2286.807  mm,	Z = -2049.949  mm,
	W =    96.484 deg,	P =    89.653 deg,	R =    92.178 deg
};
P[5:"B4 Core Pick"]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =  1487.948  mm,	Y =  2286.829  mm,	Z = -2053.877  mm,
	W =    96.469 deg,	P =    89.653 deg,	R =    92.163 deg
};
P[6:"At Core Pick"]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =  1661.617  mm,	Y =  2286.817  mm,	Z = -2053.937  mm,
	W =    96.786 deg,	P =    89.655 deg,	R =    92.481 deg
};
P[7]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =  1613.661  mm,	Y =  2289.208  mm,	Z = -2053.520  mm,
	W =    98.293 deg,	P =    89.667 deg,	R =    93.974 deg
};
P[8]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =  1116.683  mm,	Y =  2286.830  mm,	Z = -2053.877  mm,
	W =    96.473 deg,	P =    89.653 deg,	R =    92.167 deg
};
P[9]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =   861.929  mm,	Y =  2286.830  mm,	Z = -1451.741  mm,
	W =    96.476 deg,	P =    89.653 deg,	R =    92.170 deg
};
P[10:"In Press"]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =   952.755  mm,	Y =  2185.113  mm,	Z =    63.917  mm,
	W =   175.271 deg,	P =    87.787 deg,	R =   170.959 deg
};
P[11]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =  1187.151  mm,	Y =  2297.362  mm,	Z =   433.208  mm,
	W =    16.467 deg,	P =    88.511 deg,	R =    12.187 deg
};
P[12:"Rotate Cell"]{
   GP1:
	UF : 0, UT : 7,	
	J1=     9.603 deg,	J2=   -94.338 deg,	J3=   113.973 deg,
	J4=    10.075 deg,	J5=   -77.157 deg,	J6=   -69.150 deg
};
P[13:"Leoni Clear"]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =  2520.294  mm,	Y = -1341.438  mm,	Z =  1185.614  mm,
	W =  -142.484 deg,	P =    17.133 deg,	R =   -67.638 deg
};
P[14:"Cell Pounce"]{
   GP1:
	UF : 0, UT : 7,	
	J1=   -78.957 deg,	J2=  -103.573 deg,	J3=   105.816 deg,
	J4=     4.234 deg,	J5=   -75.306 deg,	J6=   -11.576 deg
};
/END
