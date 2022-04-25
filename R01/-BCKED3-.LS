/PROG  -BCKED3-
/ATTR
OWNER		= BACKGRND;
COMMENT		= "PRT12PICK";
PROG_SIZE	= 3574;
CREATE		= DATE 19-01-29  TIME 05:21:22;
MODIFIED	= DATE 19-01-29  TIME 05:21:44;
FILE_NAME	= PRT12PIC;
VERSION		= 0;
LINE_COUNT	= 109;
MEMORY_SIZE	= 3894;
PROTECT		= READ_WRITE;
STORAGE		= CMOS;
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
  49:L P[4:In Press] 2000mm/sec CNT50    ;
  50:  REQUEST CONTINUE    ;
  51:   ;
  52:L P[19] 500mm/sec FINE    ;
  53:   ;
  54:  !Robot at Pick2 ;
  55:L P[6:At Core Pick] 250mm/sec FINE    ;
  56:   ;
  57:  !Turn on Valves to Grip Part ;
  58:   ;
  59:  Grip Part(5) ;
  60:  VACUUM CAN 1 ON(6,7) ;
  61:  WAIT   3.00(sec) ;
  62:  CHK PART PRESENT(1) ;
  63:   ;
  64:  Release Part(5) ;
  65:  REQUEST CONTINUE    ;
  66:   ;
  67:  !Set Payload= Gripper & Part ;
  68:  PAYLOAD[13] ;
  69:   ;
  70:  !CHECK PART IN EOAT ;
  71:  CHK PART PRESENT(1) ;
  72:   ;
  73:  SET SEGMENT(13) ;
  74:  !SET SEGMENT(13), At Pick2 ;
  75:   ;
  76:  !MOVE BACK FROM PICK POS ;
  77:  !TO CHECK PART IN TOOL ;
  78:L P[18] 10mm/sec FINE    ;
  79:L P[19] 150mm/sec FINE    ;
  80:L P[7:Core Pick Retret] 600mm/sec FINE    ;
  81:   ;
  82:  !CHECK PART IN EOAT ;
  83:  CHK PART PRESENT(1) ;
  84:   ;
  85:  REQUEST CONTINUE    ;
  86:   ;
  87:  !MOVE CLEAR OF PRESS PICK ;
  88:L P[8:In Press] 1800mm/sec CNT50    ;
  89:  CHK PART PRESENT(1) ;
  90:   ;
  91:L P[9] 2000mm/sec CNT50    ;
  92:L P[10] 2000mm/sec CNT100    ;
  93:   ;
  94:J P[11] 100% CNT100    ;
  95:J P[12] 100% CNT100    ;
  96:J P[13] 100% FINE    ;
  97:  CHK PART PRESENT(1) ;
  98:   ;
  99:  SET SEGMENT(14) ;
 100:  !SET SEGMENT(14), Pick2-Depart ;
 101:   ;
 102:  !MOVE TOWARDS CELL ;
 103:  !Set World Tool and World UFrame ;
 104:   ;
 105:J P[14:Rotate Cell] 100% CNT100    ;
 106:J P[15:Leoni Clear] 100% CNT100    ;
 107:J P[16:Leoni Clear] 100% CNT100    ;
 108:J P[17:Cell Pounce] 100% CNT100    ;
 109:   ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X =   722.947  mm,	Y =  2733.984  mm,	Z =   541.469  mm,
	W =   179.270 deg,	P =    21.780 deg,	R =     6.666 deg
};
P[2]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X =  1180.817  mm,	Y =  2674.390  mm,	Z =  -130.186  mm,
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
	X =   700.029  mm,	Y =  2760.675  mm,	Z = -1959.280  mm,
	W =   -75.262 deg,	P =    85.473 deg,	R =   101.317 deg
};
P[6:"At Core Pick"]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X =   415.294  mm,	Y =  2762.282  mm,	Z = -2060.636  mm,
	W =   -75.267 deg,	P =    85.474 deg,	R =   101.311 deg
};
P[7:"Core Pick Retret"]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X =   673.297  mm,	Y =  2762.284  mm,	Z = -2060.635  mm,
	W =   -75.267 deg,	P =    85.474 deg,	R =   101.311 deg
};
P[8:"In Press"]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X =   917.845  mm,	Y =  2736.086  mm,	Z = -1963.568  mm,
	W =   -75.274 deg,	P =    85.473 deg,	R =   101.305 deg
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
	X =   723.188  mm,	Y =  2735.118  mm,	Z =   883.045  mm,
	W =  -178.360 deg,	P =    20.481 deg,	R =     7.501 deg
};
P[12]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X =   723.048  mm,	Y =  2734.503  mm,	Z =   901.344  mm,
	W =  -178.030 deg,	P =    20.299 deg,	R =     7.609 deg
};
P[13]{
   GP1:
	UF : 0, UT : 12,	
	J1=    78.120 deg,	J2=   -75.893 deg,	J3=   105.661 deg,
	J4=    10.798 deg,	J5=  -104.515 deg,	J6=   -70.668 deg
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
	X =   444.575  mm,	Y =  2762.282  mm,	Z = -2060.636  mm,
	W =   -75.267 deg,	P =    85.474 deg,	R =   101.311 deg
};
P[19]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X =   488.016  mm,	Y =  2762.284  mm,	Z = -2060.635  mm,
	W =   -75.267 deg,	P =    85.474 deg,	R =   101.311 deg
};
/END
