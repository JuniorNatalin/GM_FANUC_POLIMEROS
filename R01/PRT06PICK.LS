/PROG  PRT06PICK
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Pick Core 274";
PROG_SIZE	= 3358;
CREATE		= DATE 19-03-06  TIME 14:55:58;
MODIFIED	= DATE 19-03-06  TIME 15:10:18;
FILE_NAME	= PRT03PIC;
VERSION		= 0;
LINE_COUNT	= 100;
MEMORY_SIZE	= 3714;
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
  22:  UTOOL_NUM=2 ;
  23:  UFRAME_NUM=0 ;
  24:  PAYLOAD[4] ;
  25:   ;
  26:  !--------IMPORTANT-------- ;
  27:  !for MH tool changers ;
  28:  !make sure Set MH TOOL(AR) ;
  29:  !matches tool number ;
  30:  Set MH Tool(6) ;
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
  45:J P[13] 100% CNT100    ;
  46:J P[2] 100% CNT100    ;
  47:J P[14] 100% CNT100    ;
  48:   ;
  49:L P[3:In Press] 2000mm/sec CNT100    ;
  50:  REQUEST CONTINUE    ;
  51:   ;
  52:L P[4:B4 Core Pick] 2000mm/sec CNT50    ;
  53:   ;
  54:  !Robot at Pick2 ;
  55:L P[5:At Core Pick] 1500mm/sec FINE    ;
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
  67:  PAYLOAD[5] ;
  68:   ;
  69:  !CHECK PART IN EOAT ;
  70:  CHK PART PRESENT(1) ;
  71:   ;
  72:  SET SEGMENT(13) ;
  73:  !SET SEGMENT(13), At Pick2 ;
  74:   ;
  75:  !MOVE BACK FROM PICK POS ;
  76:  !TO CHECK PART IN TOOL ;
  77:L P[6:Core Pick Retret] 250mm/sec FINE    ;
  78:   ;
  79:  REQUEST CONTINUE    ;
  80:   ;
  81:  !MOVE CLEAR OF PRESS PICK ;
  82:L P[7] 2000mm/sec CNT50    ;
  83:   ;
  84:J P[17] 100% CNT100    ;
  85:J P[16] 100% CNT100    ;
  86:J P[1] 100% CNT100    ;
  87:J P[8] 100% FINE    ;
  88:   ;
  89:  CHK PART PRESENT(1) ;
  90:   ;
  91:  SET SEGMENT(14) ;
  92:  !SET SEGMENT(14), Pick2-Depart ;
  93:   ;
  94:  !MOVE TOWARDS CELL ;
  95:  !Set World Tool and World UFrame ;
  96:   ;
  97:J P[9:Rotate Cell] 100% CNT100    ;
  98:J P[11:Leoni Clear] 100% CNT100    ;
  99:J P[18:Leoni Clear] 100% CNT100    ;
 100:J P[10:Cell Pounce] 100% CNT100    ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   773.985  mm,	Y =  2830.061  mm,	Z =   941.251  mm,
	W =  -169.702 deg,	P =    16.761 deg,	R =    11.253 deg
};
P[2]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1181.516  mm,	Y =  2735.476  mm,	Z =  -122.023  mm,
	W =  -174.091 deg,	P =    57.925 deg,	R =     1.541 deg
};
P[3:"In Press"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   696.790  mm,	Y =  2782.033  mm,	Z = -1959.279  mm,
	W =   -72.081 deg,	P =    86.451 deg,	R =   104.490 deg
};
P[4:"B4 Core Pick"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   600.625  mm,	Y =  2796.114  mm,	Z = -1959.280  mm,
	W =   -73.877 deg,	P =    85.960 deg,	R =   102.698 deg
};
P[5:"At Core Pick"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   438.987  mm,	Y =  2788.195  mm,	Z = -1959.279  mm,
	W =   -73.878 deg,	P =    85.960 deg,	R =   102.697 deg
};
P[6:"Core Pick Retret"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   493.378  mm,	Y =  2789.302  mm,	Z = -1938.560  mm,
	W =   -75.272 deg,	P =    85.474 deg,	R =   101.308 deg
};
P[7]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   816.117  mm,	Y =  2786.587  mm,	Z = -1965.724  mm,
	W =   -75.275 deg,	P =    85.474 deg,	R =   101.305 deg
};
P[8]{
   GP1:
	UF : 0, UT : 2,	
	J1=    77.423 deg,	J2=   -77.192 deg,	J3=   104.644 deg,
	J4=    10.659 deg,	J5=   -94.935 deg,	J6=   -70.732 deg
};
P[9:"Rotate Cell"]{
   GP1:
	UF : 0, UT : 2,	
	J1=     9.603 deg,	J2=   -94.338 deg,	J3=   113.973 deg,
	J4=    10.075 deg,	J5=   -77.157 deg,	J6=   -69.150 deg
};
P[10:"Cell Pounce"]{
   GP1:
	UF : 0, UT : 2,	
	J1=   -78.957 deg,	J2=  -103.573 deg,	J3=   105.816 deg,
	J4=     4.234 deg,	J5=   -75.306 deg,	J6=   -11.576 deg
};
P[11:"Leoni Clear"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  2520.294  mm,	Y = -1341.438  mm,	Z =  1185.614  mm,
	W =  -142.484 deg,	P =    17.133 deg,	R =   -67.638 deg
};
P[13]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   722.226  mm,	Y =  2733.873  mm,	Z =   539.646  mm,
	W =  -169.444 deg,	P =    21.780 deg,	R =     6.666 deg
};
P[14]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   995.574  mm,	Y =  2758.842  mm,	Z =  -857.242  mm,
	W =  -169.690 deg,	P =    70.514 deg,	R =     6.676 deg
};
P[16]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1180.817  mm,	Y =  2791.825  mm,	Z =  -130.186  mm,
	W =  -174.091 deg,	P =    57.925 deg,	R =     1.541 deg
};
P[17]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1145.919  mm,	Y =  2747.682  mm,	Z =  -804.861  mm,
	W =  -169.690 deg,	P =    70.514 deg,	R =     6.676 deg
};
P[18:"Leoni Clear"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1389.854  mm,	Y = -2398.698  mm,	Z =  1065.076  mm,
	W =  -178.772 deg,	P =     -.407 deg,	R =   -74.932 deg
};
/END
