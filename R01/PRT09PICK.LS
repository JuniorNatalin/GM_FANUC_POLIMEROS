/PROG  PRT09PICK
/ATTR
OWNER		= SHIFT;
COMMENT		= "Pick Core 336";
PROG_SIZE	= 3816;
CREATE		= DATE 18-11-26  TIME 14:49:32;
MODIFIED	= DATE 19-02-13  TIME 08:10:24;
FILE_NAME	= PRT07PIC;
VERSION		= 0;
LINE_COUNT	= 107;
MEMORY_SIZE	= 4144;
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
  22:  UTOOL_NUM=9 ;
  23:  UFRAME_NUM=0 ;
  24:  PAYLOAD[8] ;
  25:   ;
  26:  !--------IMPORTANT-------- ;
  27:  !for MH tool changers ;
  28:  !make sure Set MH TOOL(AR) ;
  29:  !matches tool number ;
  30:  Set MH Tool(9) ;
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
  52:L P[5:B4 Core Pick] 1000mm/sec CNT100    ;
  53:L P[20] 1000mm/sec FINE    ;
  54:  !Robot at Pick2 ;
  55:L P[6:At Core Pick] 1500mm/sec FINE    ;
  56:L P[24] 500mm/sec FINE    ;
  57:   ;
  58:   ;
  59:  !Turn on Valves to Grip Part ;
  60:   ;
  61:  Grip Part(5) ;
  62:  VACUUM CAN 1 ON(6,7) ;
  63:  CHK PART PRESENT(1) ;
  64:   ;
  65:  REQUEST CONTINUE    ;
  66:   ;
  67:  !Set Payload= Gripper & Part ;
  68:  PAYLOAD[9] ;
  69:   ;
  70:  !CHECK PART IN EOAT ;
  71:  CHK PART PRESENT(1) ;
  72:   ;
  73:  SET SEGMENT(13) ;
  74:  !SET SEGMENT(13), At Pick2 ;
  75:   ;
  76:  !MOVE BACK FROM PICK POS ;
  77:  !TO CHECK PART IN TOOL ;
  78:L P[21] 5mm/sec FINE    ;
  79:L P[23] 200mm/sec FINE    ;
  80:L P[22] 1000mm/sec FINE    ;
  81:L P[7:Core Pick Retret] 1000mm/sec FINE    ;
  82:L P[8] 1000mm/sec CNT50    ;
  83:L P[9] 2000mm/sec CNT50    ;
  84:  CHK PART PRESENT(1) ;
  85:   ;
  86:  REQUEST CONTINUE    ;
  87:   ;
  88:  !MOVE CLEAR OF PRESS PICK ;
  89:L P[10:In Press] 2000mm/sec CNT100    ;
  90:L P[11] 2000mm/sec CNT100    ;
  91:L P[12] 2000mm/sec CNT100    ;
  92:   ;
  93:J P[13] 100% CNT100    ;
  94:J P[14] 100% CNT100    ;
  95:J P[15] 100% FINE    ;
  96:  CHK PART PRESENT(1) ;
  97:   ;
  98:  SET SEGMENT(14) ;
  99:  !SET SEGMENT(14), Pick2-Depart ;
 100:   ;
 101:  !MOVE TOWARDS CELL ;
 102:  !Set World Tool and World UFrame ;
 103:   ;
 104:J P[16:Rotate Cell] 100% CNT100    ;
 105:J P[17:Leoni Clear] 100% CNT100    ;
 106:J P[18:Leoni Clear] 100% CNT100    ;
 107:J P[19:Cell Pounce] 100% CNT100    ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X =  1180.818  mm,	Y =  2674.389  mm,	Z =   539.175  mm,
	W =  -174.091 deg,	P =    57.925 deg,	R =     1.541 deg
};
P[2]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X =  1180.817  mm,	Y =  2674.390  mm,	Z =  -130.186  mm,
	W =  -174.091 deg,	P =    57.925 deg,	R =     1.541 deg
};
P[3]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X =   995.574  mm,	Y =  2758.842  mm,	Z =  -857.242  mm,
	W =  -169.690 deg,	P =    70.514 deg,	R =     6.676 deg
};
P[4:"In Press"]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X =   763.149  mm,	Y =  2776.995  mm,	Z = -1959.281  mm,
	W =   -75.262 deg,	P =    85.473 deg,	R =   101.316 deg
};
P[5:"B4 Core Pick"]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X =   653.364  mm,	Y =  2784.539  mm,	Z = -1930.054  mm,
	W =   -72.124 deg,	P =    85.480 deg,	R =   101.988 deg
};
P[6:"At Core Pick"]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X =   438.809  mm,	Y =  2753.822  mm,	Z = -1959.330  mm,
	W =   -55.650 deg,	P =    87.633 deg,	R =   117.887 deg
};
P[7:"Core Pick Retret"]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X =   891.407  mm,	Y =  2784.049  mm,	Z = -1459.600  mm,
	W =   -75.473 deg,	P =    85.474 deg,	R =   101.814 deg
};
P[8]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X =   891.407  mm,	Y =  2784.049  mm,	Z = -1417.600  mm,
	W =   -75.473 deg,	P =    85.474 deg,	R =   101.814 deg
};
P[9]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X =   891.407  mm,	Y =  2784.049  mm,	Z = -1370.800  mm,
	W =   -75.473 deg,	P =    85.474 deg,	R =   101.813 deg
};
P[10:"In Press"]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X =   891.407  mm,	Y =  2784.049  mm,	Z = -1097.199  mm,
	W =   -75.473 deg,	P =    85.474 deg,	R =   101.814 deg
};
P[11]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X =   995.574  mm,	Y =  2758.842  mm,	Z =  -857.242  mm,
	W =  -169.690 deg,	P =    70.514 deg,	R =     6.676 deg
};
P[12]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X =  1180.817  mm,	Y =  2674.390  mm,	Z =  -130.186  mm,
	W =  -174.091 deg,	P =    57.925 deg,	R =     1.541 deg
};
P[13]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X =   723.188  mm,	Y =  2735.118  mm,	Z =   883.045  mm,
	W =  -178.360 deg,	P =    20.481 deg,	R =     7.501 deg
};
P[14]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X =   723.048  mm,	Y =  2734.503  mm,	Z =   901.344  mm,
	W =  -178.030 deg,	P =    20.299 deg,	R =     7.609 deg
};
P[15]{
   GP1:
	UF : 0, UT : 9,	
	J1=    78.120 deg,	J2=   -75.893 deg,	J3=   105.661 deg,
	J4=    10.798 deg,	J5=  -104.515 deg,	J6=   -70.668 deg
};
P[16:"Rotate Cell"]{
   GP1:
	UF : 0, UT : 9,	
	J1=     9.603 deg,	J2=   -94.338 deg,	J3=   113.973 deg,
	J4=    10.075 deg,	J5=   -77.157 deg,	J6=   -69.150 deg
};
P[17:"Leoni Clear"]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X =  2520.294  mm,	Y = -1341.438  mm,	Z =  1185.614  mm,
	W =  -142.484 deg,	P =    17.133 deg,	R =   -67.638 deg
};
P[18:"Leoni Clear"]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X =  1389.854  mm,	Y = -2398.698  mm,	Z =  1065.076  mm,
	W =  -178.772 deg,	P =     -.407 deg,	R =   -74.932 deg
};
P[19:"Cell Pounce"]{
   GP1:
	UF : 0, UT : 9,	
	J1=   -78.957 deg,	J2=  -103.573 deg,	J3=   105.816 deg,
	J4=     4.234 deg,	J5=   -75.306 deg,	J6=   -11.576 deg
};
P[20]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X =   522.809  mm,	Y =  2753.822  mm,	Z = -1959.330  mm,
	W =   -55.650 deg,	P =    87.633 deg,	R =   117.888 deg
};
P[21]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X =   448.653  mm,	Y =  2760.062  mm,	Z = -1977.563  mm,
	W =   -42.661 deg,	P =    87.510 deg,	R =   131.849 deg
};
P[22]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X =   666.889  mm,	Y =  2760.063  mm,	Z = -1912.206  mm,
	W =   -42.662 deg,	P =    87.510 deg,	R =   131.848 deg
};
P[23]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X =   604.890  mm,	Y =  2760.063  mm,	Z = -1977.563  mm,
	W =   -42.662 deg,	P =    87.510 deg,	R =   131.847 deg
};
P[24]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X =   438.809  mm,	Y =  2753.822  mm,	Z = -1974.928  mm,
	W =   -55.651 deg,	P =    87.633 deg,	R =   117.887 deg
};
/END
