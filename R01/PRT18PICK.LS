/PROG  PRT18PICK
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Pick Core 298";
PROG_SIZE	= 3541;
CREATE		= DATE 20-02-28  TIME 10:46:46;
MODIFIED	= DATE 20-02-28  TIME 10:46:46;
FILE_NAME	= PRT18PIC;
VERSION		= 0;
LINE_COUNT	= 101;
MEMORY_SIZE	= 3893;
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
  52:   ;
  53:  !Robot at Pick2 ;
  54:L P[23:At Core Pick] 750mm/sec FINE    ;
  55:   ;
  56:  !Turn on Valves to Grip Part ;
  57:   ;
  58:  Grip Part(5) ;
  59:  VACUUM CAN 1 ON(6,7) ;
  60:  CHK PART PRESENT(1) ;
  61:   ;
  62:  Release Part(5) ;
  63:  REQUEST CONTINUE    ;
  64:   ;
  65:  !Set Payload= Gripper & Part ;
  66:  PAYLOAD[7] ;
  67:   ;
  68:  !CHECK PART IN EOAT ;
  69:  CHK PART PRESENT(1) ;
  70:   ;
  71:  SET SEGMENT(13) ;
  72:  !SET SEGMENT(13), At Pick2 ;
  73:   ;
  74:  !MOVE BACK FROM PICK POS ;
  75:  !TO CHECK PART IN TOOL ;
  76:L P[24:Core Pick Retret] 50mm/sec FINE    ;
  77:L P[1] 1700mm/sec CNT50    ;
  78:L P[2] 1800mm/sec CNT50    ;
  79:  CHK PART PRESENT(1) ;
  80:   ;
  81:  REQUEST CONTINUE    ;
  82:   ;
  83:  !MOVE CLEAR OF PRESS PICK ;
  84:L P[25:In Press] 2000mm/sec CNT100    ;
  85:L P[26] 2000mm/sec CNT100    ;
  86:L P[27] 2000mm/sec CNT100    ;
  87:   ;
  88:J P[28] 100% CNT100    ;
  89:J P[29] 100% CNT100    ;
  90:  CHK PART PRESENT(1) ;
  91:   ;
  92:  SET SEGMENT(14) ;
  93:  !SET SEGMENT(14), Pick2-Depart ;
  94:   ;
  95:  !MOVE TOWARDS CELL ;
  96:  !Set World Tool and World UFrame ;
  97:   ;
  98:J P[31:Rotate Cell] 100% CNT100    ;
  99:J P[32:Leoni Clear] 100% CNT100    ;
 100:J P[33:Leoni Clear] 100% CNT100    ;
 101:J P[34:Cell Pounce] 100% CNT100    ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =   768.352  mm,	Y =  2735.333  mm,	Z = -2003.174  mm,
	W =  -101.027 deg,	P =    89.434 deg,	R =    74.304 deg
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
	X =   699.193  mm,	Y =  2775.275  mm,	Z = -2076.845  mm,
	W =  -141.440 deg,	P =    87.514 deg,	R =    34.583 deg
};
P[23:"At Core Pick"]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =   438.334  mm,	Y =  2769.882  mm,	Z = -2068.812  mm,
	W =   -23.295 deg,	P =    88.474 deg,	R =   152.049 deg
};
P[24:"Core Pick Retret"]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =   599.034  mm,	Y =  2756.740  mm,	Z = -2072.802  mm,
	W =   -23.253 deg,	P =    88.476 deg,	R =   152.091 deg
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
	X =   723.188  mm,	Y =  2735.119  mm,	Z =   883.047  mm,
	W =  -170.488 deg,	P =    19.139 deg,	R =     6.815 deg
};
P[29]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =   723.188  mm,	Y =  2735.118  mm,	Z =   961.768  mm,
	W =  -170.488 deg,	P =    19.139 deg,	R =     6.815 deg
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
