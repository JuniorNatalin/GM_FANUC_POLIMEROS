/PROG  PRT43PICK
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Pick Core 377";
PROG_SIZE	= 3722;
CREATE		= DATE 20-07-01  TIME 10:33:34;
MODIFIED	= DATE 20-07-01  TIME 10:33:34;
FILE_NAME	= PRT43PIC;
VERSION		= 0;
LINE_COUNT	= 106;
MEMORY_SIZE	= 4054;
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
  49:L P[4:In Press] 1800mm/sec CNT100    ;
  50:  REQUEST CONTINUE    ;
  51:   ;
  52:L P[5:B4 Core Pick] 2000mm/sec CNT100    ;
  53:L P[20] 2000mm/sec FINE    ;
  54:  !Robot at Pick2 ;
  55:L P[6:At Core Pick] 1800mm/sec FINE    ;
  56:L P[24] 500mm/sec FINE    ;
  57:   ;
  58:   ;
  59:  !Turn on Valves to Grip Part ;
  60:   ;
  61:  Grip Part(5) ;
  62:  VACUUM CAN 1 ON(6,7) ;
  63:  CHK PART PRESENT(1) ;
  64:  Release Part(5) ;
  65:   ;
  66:  REQUEST CONTINUE    ;
  67:   ;
  68:  !Set Payload= Gripper & Part ;
  69:  PAYLOAD[9] ;
  70:   ;
  71:  !CHECK PART IN EOAT ;
  72:  CHK PART PRESENT(1) ;
  73:   ;
  74:  SET SEGMENT(13) ;
  75:  !SET SEGMENT(13), At Pick2 ;
  76:   ;
  77:  !MOVE BACK FROM PICK POS ;
  78:  !TO CHECK PART IN TOOL ;
  79:L P[21] 200mm/sec FINE    ;
  80:L P[23] 1000mm/sec FINE    ;
  81:L P[22] 2000mm/sec FINE    ;
  82:L P[7:Core Pick Retret] 1000mm/sec FINE    ;
  83:L P[8] 2000mm/sec CNT50    ;
  84:L P[9] 2000mm/sec CNT50    ;
  85:  CHK PART PRESENT(1) ;
  86:   ;
  87:  REQUEST CONTINUE    ;
  88:   ;
  89:  !MOVE CLEAR OF PRESS PICK ;
  90:L P[10:In Press] 2000mm/sec CNT100    ;
  91:L P[11] 2000mm/sec CNT100    ;
  92:L P[12] 2000mm/sec CNT100    ;
  93:   ;
  94:J P[13] 100% CNT100    ;
  95:  CHK PART PRESENT(1) ;
  96:   ;
  97:  SET SEGMENT(14) ;
  98:  !SET SEGMENT(14), Pick2-Depart ;
  99:   ;
 100:  !MOVE TOWARDS CELL ;
 101:  !Set World Tool and World UFrame ;
 102:   ;
 103:J P[16:Rotate Cell] 100% CNT100    ;
 104:J P[17:Leoni Clear] 100% CNT100    ;
 105:J P[18:Leoni Clear] 100% CNT100    ;
 106:J P[19:Cell Pounce] 100% CNT100    ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X =  1180.818  mm,	Y =  2674.390  mm,	Z =   539.175  mm,
	W =  -174.779 deg,	P =    37.030 deg,	R =     1.025 deg
};
P[2]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X =  1180.818  mm,	Y =  2751.909  mm,	Z =  -130.186  mm,
	W =  -174.091 deg,	P =    57.925 deg,	R =     1.541 deg
};
P[3]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X =   877.233  mm,	Y =  2759.283  mm,	Z =  -496.578  mm,
	W =  -173.598 deg,	P =    65.571 deg,	R =     1.973 deg
};
P[4:"In Press"]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X =   877.232  mm,	Y =  2759.283  mm,	Z =  -556.579  mm,
	W =   -11.889 deg,	P =    87.128 deg,	R =   163.486 deg
};
P[5:"B4 Core Pick"]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X =   877.232  mm,	Y =  2759.283  mm,	Z = -1084.579  mm,
	W =   -11.889 deg,	P =    87.128 deg,	R =   163.486 deg
};
P[6:"At Core Pick"]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X =   631.072  mm,	Y =  2761.200  mm,	Z = -2002.471  mm,
	W =   -11.891 deg,	P =    87.129 deg,	R =   163.484 deg
};
P[7:"Core Pick Retret"]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X =   918.824  mm,	Y =  2761.208  mm,	Z = -1814.432  mm,
	W =    -4.127 deg,	P =    84.889 deg,	R =   171.646 deg
};
P[8]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X =   951.942  mm,	Y =  2761.208  mm,	Z = -1310.680  mm,
	W =   -38.118 deg,	P =    88.898 deg,	R =   137.683 deg
};
P[9]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X =   951.942  mm,	Y =  2761.208  mm,	Z =  -784.599  mm,
	W =   -38.119 deg,	P =    88.898 deg,	R =   137.682 deg
};
P[10:"In Press"]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X =   951.943  mm,	Y =  2761.208  mm,	Z =  -219.398  mm,
	W =  -174.487 deg,	P =    60.647 deg,	R =     1.513 deg
};
P[11]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X =   951.942  mm,	Y =  2761.207  mm,	Z =   545.723  mm,
	W =  -175.656 deg,	P =    11.456 deg,	R =      .756 deg
};
P[12]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X =   951.941  mm,	Y =  2761.206  mm,	Z =   802.524  mm,
	W =  -169.522 deg,	P =      .920 deg,	R =     1.421 deg
};
P[13]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X =   951.941  mm,	Y =  2761.206  mm,	Z =   842.124  mm,
	W =  -169.522 deg,	P =      .920 deg,	R =     1.421 deg
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
	X =   824.993  mm,	Y =  2759.283  mm,	Z = -1641.045  mm,
	W =   -11.889 deg,	P =    87.128 deg,	R =   163.486 deg
};
P[21]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X =   559.077  mm,	Y =  2761.205  mm,	Z = -2097.984  mm,
	W =    -1.532 deg,	P =    82.607 deg,	R =   174.227 deg
};
P[22]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X =   672.594  mm,	Y =  2761.207  mm,	Z = -2028.983  mm,
	W =    -4.127 deg,	P =    84.889 deg,	R =   171.646 deg
};
P[23]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X =   606.355  mm,	Y =  2761.207  mm,	Z = -2063.783  mm,
	W =    -1.531 deg,	P =    82.607 deg,	R =   174.227 deg
};
P[24]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X =   480.116  mm,	Y =  2761.201  mm,	Z = -2097.986  mm,
	W =    -1.532 deg,	P =    82.606 deg,	R =   174.227 deg
};
/END
