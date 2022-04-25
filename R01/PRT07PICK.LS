/PROG  PRT07PICK
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Pick Core 311";
PROG_SIZE	= 3665;
CREATE		= DATE 19-10-04  TIME 08:33:46;
MODIFIED	= DATE 19-10-04  TIME 08:33:46;
FILE_NAME	= PRT07PIC;
VERSION		= 0;
LINE_COUNT	= 103;
MEMORY_SIZE	= 4009;
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
  22:  UTOOL_NUM=7 ;
  23:  UFRAME_NUM=0 ;
  24:  PAYLOAD[6] ;
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
  45:J P[3] 100% CNT100    ;
  46:J P[19] 100% CNT100    ;
  47:J P[20] 100% CNT100    ;
  48:   ;
  49:L P[21:In Press] 2000mm/sec CNT100    ;
  50:  REQUEST CONTINUE    ;
  51:   ;
  52:L P[22:B4 Core Pick] 2000mm/sec CNT100    ;
  53:   ;
  54:  !Robot at Pick2 ;
  55:L P[23:At Core Pick] 500mm/sec FINE    ;
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
  67:  PAYLOAD[7] ;
  68:   ;
  69:  !CHECK PART IN EOAT ;
  70:  CHK PART PRESENT(1) ;
  71:   ;
  72:  SET SEGMENT(13) ;
  73:  !SET SEGMENT(13), At Pick2 ;
  74:   ;
  75:  !MOVE BACK FROM PICK POS ;
  76:  !TO CHECK PART IN TOOL ;
  77:L P[24:Core Pick Retret] 10mm/sec FINE    ;
  78:L P[1] 200mm/sec CNT50    ;
  79:L P[2] 1500mm/sec CNT50    ;
  80:  CHK PART PRESENT(1) ;
  81:   ;
  82:  REQUEST CONTINUE    ;
  83:   ;
  84:  !MOVE CLEAR OF PRESS PICK ;
  85:L P[25:In Press] 1500mm/sec CNT100    ;
  86:L P[26] 1800mm/sec CNT100    ;
  87:L P[27] 2000mm/sec CNT100    ;
  88:   ;
  89:J P[28] 100% CNT100    ;
  90:J P[29] 100% CNT100    ;
  91:J P[30] 100% FINE    ;
  92:  CHK PART PRESENT(1) ;
  93:   ;
  94:  SET SEGMENT(14) ;
  95:  !SET SEGMENT(14), Pick2-Depart ;
  96:   ;
  97:  !MOVE TOWARDS CELL ;
  98:  !Set World Tool and World UFrame ;
  99:   ;
 100:J P[31:Rotate Cell] 100% CNT100    ;
 101:J P[32:Leoni Clear] 100% CNT100    ;
 102:J P[33:Leoni Clear] 100% CNT100    ;
 103:J P[34:Cell Pounce] 100% CNT100    ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =   541.571  mm,	Y =  2762.640  mm,	Z = -2036.698  mm,
	W =   -40.807 deg,	P =    88.842 deg,	R =   134.903 deg
};
P[2]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =   740.923  mm,	Y =  2762.640  mm,	Z = -1910.784  mm,
	W =   -40.807 deg,	P =    88.842 deg,	R =   134.903 deg
};
P[3]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =  1180.818  mm,	Y =  2674.389  mm,	Z =   539.175  mm,
	W =  -174.091 deg,	P =    57.925 deg,	R =     1.541 deg
};
P[19]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =  1180.817  mm,	Y =  2674.390  mm,	Z =  -130.186  mm,
	W =  -174.091 deg,	P =    57.925 deg,	R =     1.541 deg
};
P[20]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =   995.574  mm,	Y =  2758.842  mm,	Z =  -857.242  mm,
	W =  -169.690 deg,	P =    70.514 deg,	R =     6.676 deg
};
P[21:"In Press"]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =   700.029  mm,	Y =  2760.675  mm,	Z = -1959.280  mm,
	W =   -75.262 deg,	P =    85.473 deg,	R =   101.317 deg
};
P[22:"B4 Core Pick"]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =   605.987  mm,	Y =  2762.639  mm,	Z = -2082.699  mm,
	W =   -40.806 deg,	P =    88.842 deg,	R =   134.904 deg
};
P[23:"At Core Pick"]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =   424.069  mm,	Y =  2762.641  mm,	Z = -2082.702  mm,
	W =   -40.807 deg,	P =    88.842 deg,	R =   134.904 deg
};
P[24:"Core Pick Retret"]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =   468.692  mm,	Y =  2762.639  mm,	Z = -2082.699  mm,
	W =   -40.806 deg,	P =    88.842 deg,	R =   134.904 deg
};
P[25:"In Press"]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =   748.202  mm,	Y =  2762.641  mm,	Z = -1512.539  mm,
	W =   -40.808 deg,	P =    88.842 deg,	R =   134.902 deg
};
P[26]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =   995.574  mm,	Y =  2758.842  mm,	Z =  -857.242  mm,
	W =  -169.690 deg,	P =    70.514 deg,	R =     6.676 deg
};
P[27]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =  1180.817  mm,	Y =  2674.390  mm,	Z =  -130.186  mm,
	W =  -174.091 deg,	P =    57.925 deg,	R =     1.541 deg
};
P[28]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =   723.188  mm,	Y =  2735.118  mm,	Z =   883.045  mm,
	W =  -178.360 deg,	P =    20.481 deg,	R =     7.501 deg
};
P[29]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =   723.048  mm,	Y =  2734.503  mm,	Z =   901.344  mm,
	W =  -178.030 deg,	P =    20.299 deg,	R =     7.609 deg
};
P[30]{
   GP1:
	UF : 0, UT : 7,	
	J1=    78.120 deg,	J2=   -75.893 deg,	J3=   105.661 deg,
	J4=    10.798 deg,	J5=  -104.515 deg,	J6=   -70.668 deg
};
P[31:"Rotate Cell"]{
   GP1:
	UF : 0, UT : 7,	
	J1=     9.603 deg,	J2=   -94.338 deg,	J3=   113.973 deg,
	J4=    10.075 deg,	J5=   -77.157 deg,	J6=   -69.150 deg
};
P[32:"Leoni Clear"]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =  2520.294  mm,	Y = -1341.438  mm,	Z =  1185.614  mm,
	W =  -142.484 deg,	P =    17.133 deg,	R =   -67.638 deg
};
P[33:"Leoni Clear"]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =  1389.854  mm,	Y = -2398.698  mm,	Z =  1065.076  mm,
	W =  -178.772 deg,	P =     -.407 deg,	R =   -74.932 deg
};
P[34:"Cell Pounce"]{
   GP1:
	UF : 0, UT : 7,	
	J1=   -78.957 deg,	J2=  -103.573 deg,	J3=   105.816 deg,
	J4=     4.234 deg,	J5=   -75.306 deg,	J6=   -11.576 deg
};
/END
