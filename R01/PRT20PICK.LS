/PROG  PRT20PICK
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Pick Core 300";
PROG_SIZE	= 3582;
CREATE		= DATE 21-10-20  TIME 12:34:20;
MODIFIED	= DATE 21-10-20  TIME 12:52:28;
FILE_NAME	= PRT20PIC;
VERSION		= 0;
LINE_COUNT	= 103;
MEMORY_SIZE	= 3926;
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
  22:  UTOOL_NUM=5 ;
  23:  UFRAME_NUM=0 ;
  24:  PAYLOAD[10] ;
  25:   ;
  26:  !--------IMPORTANT-------- ;
  27:  !for MH tool changers ;
  28:  !make sure Set MH TOOL(AR) ;
  29:  !matches tool number ;
  30:  Set MH Tool(5) ;
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
  52:L P[5:B4 Core Pick] 2000mm/sec CNT100    ;
  53:L P[6] 2000mm/sec FINE    ;
  54:  !Robot at Pick2 ;
  55:L P[7:At Core Pick] 2000mm/sec FINE    ;
  56:   ;
  57:  !Turn on Valves to Grip Part ;
  58:   ;
  59:  Grip Part(5) ;
  60:  WAIT   2.00(sec) ;
  61:  VACUUM CAN 1 ON(6,7) ;
  62:  CHK PART PRESENT(1) ;
  63:   ;
  64:  Release Part(5) ;
  65:  REQUEST CONTINUE    ;
  66:   ;
  67:  !Set Payload= Gripper & Part ;
  68:  PAYLOAD[11] ;
  69:   ;
  70:  !CHECK PART IN EOAT ;
  71:  CHK PART PRESENT(1) ;
  72:   ;
  73:  SET SEGMENT(13) ;
  74:  !SET SEGMENT(13), At Pick2 ;
  75:   ;
  76:  !MOVE BACK FROM PICK POS ;
  77:  !TO CHECK PART IN TOOL ;
  78:L P[8] 10mm/sec FINE    ;
  79:L P[9] 100mm/sec FINE    ;
  80:L P[23] 1000mm/sec CNT100    ;
  81:  CHK PART PRESENT(1) ;
  82:  REQUEST CONTINUE    ;
  83:   ;
  84:  !MOVE CLEAR OF PRESS PICK ;
  85:L P[13:In Press] 2000mm/sec CNT100    ;
  86:L P[14] 2000mm/sec CNT100    ;
  87:L P[15] 2000mm/sec CNT100    ;
  88:   ;
  89:J P[16] 100% CNT100    ;
  90:J P[17] 100% CNT100    ;
  91:J P[18] 100% FINE    ;
  92:  CHK PART PRESENT(1) ;
  93:   ;
  94:  SET SEGMENT(14) ;
  95:  !SET SEGMENT(14), Pick2-Depart ;
  96:   ;
  97:  !MOVE TOWARDS CELL ;
  98:  !Set World Tool and World UFrame ;
  99:   ;
 100:J P[19:Rotate Cell] 100% CNT100    ;
 101:J P[20:Leoni Clear] 100% CNT100    ;
 102:J P[21:Leoni Clear] 100% CNT100    ;
 103:J P[22:Cell Pounce] 100% CNT100    ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X =  1180.818  mm,	Y =  2674.389  mm,	Z =   539.175  mm,
	W =  -174.091 deg,	P =    57.925 deg,	R =     1.541 deg
};
P[2]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X =  1180.817  mm,	Y =  2674.390  mm,	Z =  -130.186  mm,
	W =  -174.091 deg,	P =    57.925 deg,	R =     1.541 deg
};
P[3]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X =   995.574  mm,	Y =  2758.842  mm,	Z =  -857.242  mm,
	W =  -169.690 deg,	P =    70.514 deg,	R =     6.676 deg
};
P[4:"In Press"]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X =   764.219  mm,	Y =  2771.215  mm,	Z = -2065.383  mm,
	W =   -57.881 deg,	P =    88.162 deg,	R =   117.752 deg
};
P[5:"B4 Core Pick"]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X =   678.058  mm,	Y =  2768.091  mm,	Z = -2105.460  mm,
	W =   -57.898 deg,	P =    88.162 deg,	R =   117.735 deg
};
P[6]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X =   536.995  mm,	Y =  2775.072  mm,	Z = -2105.270  mm,
	W =   -57.909 deg,	P =    88.163 deg,	R =   117.724 deg
};
P[7:"At Core Pick"]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X =   446.064  mm,	Y =  2779.572  mm,	Z = -2105.148  mm,
	W =   -57.906 deg,	P =    88.162 deg,	R =   117.727 deg
};
P[8]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X =   456.341  mm,	Y =  2779.063  mm,	Z = -2105.162  mm,
	W =   -57.911 deg,	P =    88.163 deg,	R =   117.722 deg
};
P[9]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X =   536.995  mm,	Y =  2775.072  mm,	Z = -2105.270  mm,
	W =   -57.909 deg,	P =    88.163 deg,	R =   117.724 deg
};
P[13:"In Press"]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X =   825.450  mm,	Y =  2747.571  mm,	Z = -1540.841  mm,
	W =   -77.553 deg,	P =    84.538 deg,	R =    99.114 deg
};
P[14]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X =   995.574  mm,	Y =  2758.842  mm,	Z =  -857.242  mm,
	W =  -169.690 deg,	P =    70.514 deg,	R =     6.676 deg
};
P[15]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X =  1184.657  mm,	Y =  2720.468  mm,	Z =  -130.186  mm,
	W =  -174.091 deg,	P =    57.925 deg,	R =     1.541 deg
};
P[16]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X =   723.188  mm,	Y =  2735.118  mm,	Z =   883.045  mm,
	W =  -178.360 deg,	P =    20.481 deg,	R =     7.501 deg
};
P[17]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X =   723.048  mm,	Y =  2734.503  mm,	Z =   901.344  mm,
	W =  -178.030 deg,	P =    20.299 deg,	R =     7.609 deg
};
P[18]{
   GP1:
	UF : 0, UT : 5,	
	J1=    78.120 deg,	J2=   -75.893 deg,	J3=   105.661 deg,
	J4=    10.798 deg,	J5=  -104.515 deg,	J6=   -70.668 deg
};
P[19:"Rotate Cell"]{
   GP1:
	UF : 0, UT : 5,	
	J1=     9.603 deg,	J2=   -94.338 deg,	J3=   113.973 deg,
	J4=    10.075 deg,	J5=   -77.157 deg,	J6=   -69.150 deg
};
P[20:"Leoni Clear"]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X =  2520.294  mm,	Y = -1341.438  mm,	Z =  1185.614  mm,
	W =  -142.484 deg,	P =    17.133 deg,	R =   -67.638 deg
};
P[21:"Leoni Clear"]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X =  1389.854  mm,	Y = -2398.698  mm,	Z =  1065.076  mm,
	W =  -178.772 deg,	P =     -.407 deg,	R =   -74.932 deg
};
P[22:"Cell Pounce"]{
   GP1:
	UF : 0, UT : 5,	
	J1=   -78.957 deg,	J2=  -103.573 deg,	J3=   105.816 deg,
	J4=     4.234 deg,	J5=   -75.306 deg,	J6=   -11.576 deg
};
P[23]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X =   678.058  mm,	Y =  2768.091  mm,	Z = -2105.460  mm,
	W =   -57.925 deg,	P =    88.163 deg,	R =   117.708 deg
};
/END
