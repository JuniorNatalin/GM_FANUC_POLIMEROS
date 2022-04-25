/PROG  PRT31PICK
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Pick Core 383";
PROG_SIZE	= 3380;
CREATE		= DATE 20-12-08  TIME 21:25:36;
MODIFIED	= DATE 20-12-08  TIME 21:25:36;
FILE_NAME	= PRT31PIC;
VERSION		= 0;
LINE_COUNT	= 102;
MEMORY_SIZE	= 3728;
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
  46:   ;
  47:L P[4:In Press] 1800mm/sec CNT100    ;
  48:  REQUEST CONTINUE    ;
  49:   ;
  50:L P[5:B4 Core Pick] 1000mm/sec CNT100    ;
  51:L P[20] 1000mm/sec FINE    ;
  52:  !Robot at Pick2 ;
  53:L P[6:At Core Pick] 1500mm/sec FINE    ;
  54:L P[24] 500mm/sec FINE    ;
  55:   ;
  56:   ;
  57:  !Turn on Valves to Grip Part ;
  58:   ;
  59:  Grip Part(5) ;
  60:  VACUUM CAN 1 ON(6,7) ;
  61:  CHK PART PRESENT(1) ;
  62:  //Release Part(5) ;
  63:   ;
  64:  REQUEST CONTINUE    ;
  65:   ;
  66:  !Set Payload= Gripper & Part ;
  67:  PAYLOAD[9] ;
  68:   ;
  69:  !CHECK PART IN EOAT ;
  70:  CHK PART PRESENT(1) ;
  71:   ;
  72:  SET SEGMENT(13) ;
  73:  !SET SEGMENT(13), At Pick2 ;
  74:   ;
  75:  !MOVE BACK FROM PICK POS ;
  76:  !TO CHECK PART IN TOOL ;
  77:L P[21] 100mm/sec FINE    ;
  78:L P[2] 800mm/sec FINE    ;
  79:  CHK PART PRESENT(1) ;
  80:   ;
  81:  //REQUEST CONTINUE    ;
  82:   ;
  83:  !MOVE CLEAR OF PRESS PICK ;
  84:L P[10:In Press] 2000mm/sec CNT100    ;
  85:L P[11] 2000mm/sec CNT100    ;
  86:  REQUEST CONTINUE    ;
  87:   ;
  88:L P[12] 2000mm/sec CNT100    ;
  89:   ;
  90:J P[13] 100% CNT100    ;
  91:  CHK PART PRESENT(1) ;
  92:   ;
  93:  SET SEGMENT(14) ;
  94:  !SET SEGMENT(14), Pick2-Depart ;
  95:   ;
  96:  !MOVE TOWARDS CELL ;
  97:  !Set World Tool and World UFrame ;
  98:   ;
  99:J P[16:Rotate Cell] 100% CNT100    ;
 100:J P[17:Leoni Clear] 100% CNT100    ;
 101:J P[18:Leoni Clear] 100% CNT100    ;
 102:J P[19:Cell Pounce] 100% CNT100    ;
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
	X =   874.874  mm,	Y =  2768.133  mm,	Z =  -752.667  mm,
	W =   -85.661 deg,	P =    88.264 deg,	R =    89.782 deg
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
	X =   980.068  mm,	Y =  2784.962  mm,	Z =  -597.202  mm,
	W =   -11.890 deg,	P =    87.129 deg,	R =   163.485 deg
};
P[6:"At Core Pick"]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X =   831.727  mm,	Y =  2772.503  mm,	Z = -2032.745  mm,
	W =   -86.238 deg,	P =    88.303 deg,	R =    89.199 deg
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
	X =  1017.603  mm,	Y =  2782.193  mm,	Z = -1072.259  mm,
	W =   -86.242 deg,	P =    88.301 deg,	R =    89.194 deg
};
P[21]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X =   874.874  mm,	Y =  2768.132  mm,	Z = -2032.811  mm,
	W =   -85.658 deg,	P =    88.264 deg,	R =    89.784 deg
};
P[24]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X =   711.582  mm,	Y =  2770.921  mm,	Z = -2031.189  mm,
	W =   -82.576 deg,	P =    88.088 deg,	R =    92.643 deg
};
/END
