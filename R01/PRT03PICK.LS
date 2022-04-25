/PROG  PRT03PICK
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Pick Core 335";
PROG_SIZE	= 3307;
CREATE		= DATE 19-03-05  TIME 13:33:58;
MODIFIED	= DATE 19-03-05  TIME 13:46:12;
FILE_NAME	= PRT01PIC;
VERSION		= 0;
LINE_COUNT	= 101;
MEMORY_SIZE	= 3659;
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
   9:  !* Tool ID: TOOL 03 ;
  10:  !* Part ID: PART 03 ;
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
  22:  UTOOL_NUM=3 ;
  23:  UFRAME_NUM=1 ;
  24:   ;
  25:  !--------IMPORTANT-------- ;
  26:  !for MH tool changers ;
  27:  !make sure Set MH TOOL(AR) ;
  28:  !matches tool number ;
  29:  Set MH Tool(3) ;
  30:  !++++++++++++++++++++++++++++++++ ;
  31:   ;
  32:  !******************************** ;
  33:  !BEGINNING OF PROGRAM PATH ;
  34:  !MOVE TO PRESS CORE PICK ;
  35:  !******************************** ;
  36:   ;
  37:  !Check for EOAT In Correct ;
  38:  !State. Prepare to Pick(1) ;
  39:  Prepare to Pick(6,7) ;
  40:   ;
  41:  !SET SEGMENT(12), Pick2 Approach ;
  42:  SET SEGMENT(12) ;
  43:   ;
  44:J P[1:Pounce] 100% CNT100    ;
  45:J P[2:Abv Press] 100% CNT100    ;
  46:   ;
  47:L P[12:In Press] 2000mm/sec CNT100    ;
  48:L P[13:In Press] 2000mm/sec CNT100    ;
  49:L P[3:In Press] 2000mm/sec CNT100    ;
  50:   ;
  51:  REQUEST CONTINUE    ;
  52:   ;
  53:L P[4:B4 Core Pick] 2000mm/sec CNT50    ;
  54:   ;
  55:  !Robot at Pick2 ;
  56:L P[5:At Core Pick] 500mm/sec FINE    ;
  57:   ;
  58:  !Turn on Valves to Grip Part ;
  59:   ;
  60:  Grip Part(5) ;
  61:  VACUUM CAN 1 ON(6,7) ;
  62:  CHK PART PRESENT(1) ;
  63:  Release Part(5) ;
  64:   ;
  65:  REQUEST CONTINUE    ;
  66:   ;
  67:  !Set Payload= Gripper & Part ;
  68:  R[221]=2    ;
  69:  PAYLOAD[R[221]] ;
  70:  !CHECK PART IN EOAT ;
  71:  CHK PART PRESENT(1) ;
  72:   ;
  73:  SET SEGMENT(13) ;
  74:  !SET SEGMENT(13), At Pick2 ;
  75:   ;
  76:  !MOVE BACK FROM PICK POS ;
  77:  !TO CHECK PART IN TOOL ;
  78:L P[6:Core Pick Retret] 200mm/sec FINE    ;
  79:   ;
  80:  REQUEST CONTINUE    ;
  81:   ;
  82:  !MOVE CLEAR OF PRESS PICK ;
  83:L P[7:In Press] 2000mm/sec CNT100    ;
  84:   ;
  85:L P[8:Out Press] 2000mm/sec CNT100    ;
  86:  CHK PART PRESENT(1) ;
  87:   ;
  88:  SET SEGMENT(14) ;
  89:  !SET SEGMENT(14), Pick2-Depart ;
  90:   ;
  91:  !MOVE TOWARDS CELL ;
  92:  !Set World Tool and World UFrame ;
  93:  UTOOL_NUM=1 ;
  94:  UFRAME_NUM=0 ;
  95:   ;
  96:J P[9:Rotate Cell] 100% CNT100    ;
  97:J P[10:Leoni Clear] 100% CNT100    ;
  98:J P[11] 100% CNT100    ;
  99:  Grip Part(5) ;
 100:  CHK PART PRESENT(1) ;
 101:   ;
/POS
P[1:"Pounce"]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  1108.783  mm,	Y =  1720.504  mm,	Z =    29.149  mm,
	W =   174.231 deg,	P =    19.507 deg,	R =     3.761 deg
};
P[2:"Abv Press"]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =   341.197  mm,	Y =  1807.561  mm,	Z = -1168.890  mm,
	W =  -127.292 deg,	P =    88.071 deg,	R =    53.245 deg
};
P[3:"In Press"]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =   288.013  mm,	Y =  1778.580  mm,	Z = -2509.432  mm,
	W =   132.848 deg,	P =    88.281 deg,	R =   -46.644 deg
};
P[4:"B4 Core Pick"]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =   240.133  mm,	Y =  1778.579  mm,	Z = -2509.432  mm,
	W =   132.848 deg,	P =    88.281 deg,	R =   -46.643 deg
};
P[5:"At Core Pick"]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =   146.595  mm,	Y =  1763.779  mm,	Z = -2518.765  mm,
	W =   139.842 deg,	P =    87.443 deg,	R =   -39.986 deg
};
P[6:"Core Pick Retret"]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =   283.336  mm,	Y =  1764.217  mm,	Z = -2514.114  mm,
	W =   139.830 deg,	P =    87.442 deg,	R =   -39.999 deg
};
P[7:"In Press"]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =   339.084  mm,	Y =  1765.294  mm,	Z = -2436.693  mm,
	W =   122.550 deg,	P =    88.047 deg,	R =   -57.750 deg
};
P[8:"Out Press"]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =   770.539  mm,	Y =  1863.826  mm,	Z =  -508.722  mm,
	W =  -176.990 deg,	P =    66.387 deg,	R =     3.855 deg
};
P[9:"Rotate Cell"]{
   GP1:
	UF : 0, UT : 1,	
	J1=     9.603 deg,	J2=   -80.169 deg,	J3=    92.068 deg,
	J4=   -34.610 deg,	J5=   -87.008 deg,	J6=   -58.005 deg
};
P[10:"Leoni Clear"]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1615.890  mm,	Y = -1694.692  mm,	Z =  1448.489  mm,
	W =  -159.676 deg,	P =    -8.479 deg,	R =   -69.267 deg
};
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -181.278  mm,	Y = -2021.502  mm,	Z =  1791.610  mm,
	W =   177.608 deg,	P =   -24.250 deg,	R =   -88.344 deg
};
P[12:"In Press"]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =   386.159  mm,	Y =  1829.893  mm,	Z = -2028.877  mm,
	W =  -127.311 deg,	P =    88.071 deg,	R =    53.225 deg
};
P[13:"In Press"]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =   290.585  mm,	Y =  1817.278  mm,	Z = -2474.681  mm,
	W =  -127.305 deg,	P =    88.071 deg,	R =    53.232 deg
};
/END
