/PROG  PRT19PICK
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Pick Core 301";
PROG_SIZE	= 3420;
CREATE		= DATE 21-04-29  TIME 11:18:06;
MODIFIED	= DATE 21-04-29  TIME 11:18:06;
FILE_NAME	= PRT19PIC;
VERSION		= 0;
LINE_COUNT	= 105;
MEMORY_SIZE	= 3756;
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
  49:L P[10] 2000mm/sec CNT100    ;
  50:   ;
  51:L P[4:Pick ] 2000mm/sec CNT100    ;
  52:   ;
  53:  REQUEST CONTINUE    ;
  54:  WAIT    .50(sec) ;
  55:   ;
  56:  Grip Part(5) ;
  57:   ;
  58:  VACUUM CAN 1 ON(6,7) ;
  59:  WAIT   2.50(sec) ;
  60:   ;
  61:  CHK PART PRESENT(1) ;
  62:   ;
  63:  Release Part(5) ;
  64:   ;
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
  78:   ;
  79:L P[8] 20mm/sec FINE    ;
  80:L P[9] 200mm/sec FINE    ;
  81:L P[5] 200mm/sec FINE    ;
  82:L P[6] 1500mm/sec CNT100    ;
  83:   ;
  84:  CHK PART PRESENT(1) ;
  85:  REQUEST CONTINUE    ;
  86:   ;
  87:  !MOVE CLEAR OF PRESS PICK ;
  88:L P[14] 2000mm/sec CNT100    ;
  89:L P[15] 2000mm/sec CNT100    ;
  90:   ;
  91:J P[16] 100% CNT100    ;
  92:J P[17] 100% CNT100    ;
  93:J P[18] 100% FINE    ;
  94:  CHK PART PRESENT(1) ;
  95:   ;
  96:  SET SEGMENT(14) ;
  97:  !SET SEGMENT(14), Pick2-Depart ;
  98:   ;
  99:  !MOVE TOWARDS CELL ;
 100:  !Set World Tool and World UFrame ;
 101:   ;
 102:J P[19:Rotate Cell] 100% CNT100    ;
 103:J P[20:Leoni Clear] 100% CNT100    ;
 104:J P[21:Leoni Clear] 100% CNT100    ;
 105:J P[22:Cell Pounce] 100% CNT100    ;
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
P[4:"Pick "]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X =   576.678  mm,	Y =  2775.700  mm,	Z = -1921.689  mm,
	W =   -48.251 deg,	P =    87.253 deg,	R =   128.339 deg
};
P[5]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X =   938.588  mm,	Y =  2741.474  mm,	Z = -1708.826  mm,
	W =   -45.508 deg,	P =    87.462 deg,	R =   130.143 deg
};
P[6]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X =   996.238  mm,	Y =  2771.281  mm,	Z =  -856.497  mm,
	W =  -169.690 deg,	P =    70.514 deg,	R =     6.676 deg
};
P[8]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X =   722.230  mm,	Y =  2764.931  mm,	Z = -1926.233  mm,
	W =   -45.496 deg,	P =    87.462 deg,	R =   130.155 deg
};
P[9]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X =   841.220  mm,	Y =  2755.944  mm,	Z = -1929.936  mm,
	W =   -45.498 deg,	P =    87.462 deg,	R =   130.153 deg
};
P[10:""]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X =   722.231  mm,	Y =  2764.930  mm,	Z = -1926.233  mm,
	W =   -45.496 deg,	P =    87.462 deg,	R =   130.155 deg
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
/END
