/PROG  PRT17PICK
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Pick Core 142";
PROG_SIZE	= 3571;
CREATE		= DATE 18-11-26  TIME 14:50:36;
MODIFIED	= DATE 20-06-18  TIME 10:25:18;
FILE_NAME	= PRT07PIC;
VERSION		= 0;
LINE_COUNT	= 106;
MEMORY_SIZE	= 3903;
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
   9:  !* Tool ID: TOOL 17 ;
  10:  !* Part ID: PART 17 ;
  11:  !* Program: PRT03PICK2 ;
  12:  !* Application: MH PICK ;
  13:  !* Model: 142 ;
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
  40:  Prepare to Pick(6,7) ;
  41:   ;
  42:  !SET SEGMENT(12), Pick2 Approach ;
  43:  SET SEGMENT(12) ;
  44:   ;
  45:J P[1] 100% CNT100    ;
  46:J P[2] 100% CNT100    ;
  47:J P[3] 100% CNT100    ;
  48:   ;
  49:L P[4:In Press] 1000mm/sec CNT100    ;
  50:  REQUEST CONTINUE    ;
  51:   ;
  52:L P[5:B4 Core Pick] 800mm/sec CNT100    ;
  53:   ;
  54:  !Robot at Pick2 ;
  55:L P[6:At Core Pick] 1500mm/sec FINE    ;
  56:   ;
  57:  !Turn on Valves to Grip Part ;
  58:   ;
  59:  Grip Part(5) ;
  60:  VACUUM CAN 1 ON(6,7) ;
  61:   ;
  62:   ;
  63:  CHK PART PRESENT(1) ;
  64:   ;
  65:  Release Part(5) ;
  66:  REQUEST CONTINUE    ;
  67:   ;
  68:  !Set Payload= Gripper & Part ;
  69:  PAYLOAD[7] ;
  70:   ;
  71:  !CHECK PART IN EOAT ;
  72:  CHK PART PRESENT(1) ;
  73:   ;
  74:  SET SEGMENT(13) ;
  75:  !SET SEGMENT(13), At Pick2 ;
  76:   ;
  77:  !MOVE BACK FROM PICK POS ;
  78:  !TO CHECK PART IN TOOL ;
  79:L P[7:Core Pick Retret] 20mm/sec FINE    ;
  80:L P[8] 500mm/sec CNT50    ;
  81:L P[9] 1000mm/sec CNT50    ;
  82:  CHK PART PRESENT(1) ;
  83:   ;
  84:  REQUEST CONTINUE    ;
  85:   ;
  86:  !MOVE CLEAR OF PRESS PICK ;
  87:L P[10:In Press] 2000mm/sec CNT100    ;
  88:L P[11] 2000mm/sec CNT100    ;
  89:L P[12] 2000mm/sec CNT100    ;
  90:   ;
  91:J P[13] 100% CNT100    ;
  92:J P[14] 100% CNT100    ;
  93:J P[15] 100% FINE    ;
  94:  CHK PART PRESENT(1) ;
  95:   ;
  96:  SET SEGMENT(14) ;
  97:  !SET SEGMENT(14), Pick2-Depart ;
  98:   ;
  99:  !MOVE TOWARDS CELL ;
 100:  !Set World Tool and World UFrame ;
 101:   ;
 102:J P[16:Rotate Cell] 100% CNT100    ;
 103:J P[17:Leoni Clear] 100% CNT100    ;
 104:J P[18:Leoni Clear] 100% CNT100    ;
 105:J P[19:Cell Pounce] 100% CNT100    ;
 106:   ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =  1180.818  mm,	Y =  2674.389  mm,	Z =   539.175  mm,
	W =  -174.091 deg,	P =    57.925 deg,	R =     1.541 deg
};
P[2]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =  1180.817  mm,	Y =  2674.390  mm,	Z =  -130.186  mm,
	W =  -174.091 deg,	P =    57.925 deg,	R =     1.541 deg
};
P[3]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =   995.574  mm,	Y =  2758.842  mm,	Z =  -857.242  mm,
	W =  -169.690 deg,	P =    70.514 deg,	R =     6.676 deg
};
P[4:"In Press"]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =   792.295  mm,	Y =  2766.526  mm,	Z = -1835.478  mm,
	W =  -170.197 deg,	P =    87.619 deg,	R =     5.235 deg
};
P[5:"B4 Core Pick"]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =   515.490  mm,	Y =  2766.449  mm,	Z = -2175.585  mm,
	W =  -170.198 deg,	P =    87.619 deg,	R =     5.234 deg
};
P[6:"At Core Pick"]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =   378.664  mm,	Y =  2783.709  mm,	Z = -2156.037  mm,
	W =  -134.198 deg,	P =    86.609 deg,	R =    42.495 deg
};
P[7:"Core Pick Retret"]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =   410.981  mm,	Y =  2781.813  mm,	Z = -2154.701  mm,
	W =  -134.198 deg,	P =    86.609 deg,	R =    42.495 deg
};
P[8]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =   738.673  mm,	Y =  2752.993  mm,	Z = -1915.541  mm,
	W =  -134.202 deg,	P =    86.609 deg,	R =    42.491 deg
};
P[9]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =   861.895  mm,	Y =  2766.525  mm,	Z = -1318.282  mm,
	W =  -170.197 deg,	P =    87.619 deg,	R =     5.234 deg
};
P[10:"In Press"]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =   825.647  mm,	Y =  2742.218  mm,	Z = -1111.526  mm,
	W =  -138.891 deg,	P =    83.333 deg,	R =    37.451 deg
};
P[11]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =   995.574  mm,	Y =  2758.842  mm,	Z =  -857.242  mm,
	W =  -169.690 deg,	P =    70.514 deg,	R =     6.676 deg
};
P[12]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =  1180.817  mm,	Y =  2674.390  mm,	Z =  -130.186  mm,
	W =  -174.091 deg,	P =    57.925 deg,	R =     1.541 deg
};
P[13]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =   723.188  mm,	Y =  2735.118  mm,	Z =   883.045  mm,
	W =  -178.360 deg,	P =    20.481 deg,	R =     7.501 deg
};
P[14]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =   723.048  mm,	Y =  2734.503  mm,	Z =   901.344  mm,
	W =  -178.030 deg,	P =    20.299 deg,	R =     7.609 deg
};
P[15]{
   GP1:
	UF : 0, UT : 7,	
	J1=    78.120 deg,	J2=   -75.893 deg,	J3=   105.661 deg,
	J4=    10.798 deg,	J5=  -104.515 deg,	J6=   -70.668 deg
};
P[16:"Rotate Cell"]{
   GP1:
	UF : 0, UT : 7,	
	J1=     9.603 deg,	J2=   -94.338 deg,	J3=   113.973 deg,
	J4=    10.075 deg,	J5=   -77.157 deg,	J6=   -69.150 deg
};
P[17:"Leoni Clear"]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =  2520.294  mm,	Y = -1341.438  mm,	Z =  1185.614  mm,
	W =  -142.484 deg,	P =    17.133 deg,	R =   -67.638 deg
};
P[18:"Leoni Clear"]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =  1389.854  mm,	Y = -2398.698  mm,	Z =  1065.076  mm,
	W =  -178.772 deg,	P =     -.407 deg,	R =   -74.932 deg
};
P[19:"Cell Pounce"]{
   GP1:
	UF : 0, UT : 7,	
	J1=   -78.957 deg,	J2=  -103.573 deg,	J3=   105.816 deg,
	J4=     4.234 deg,	J5=   -75.306 deg,	J6=   -11.576 deg
};
/END
