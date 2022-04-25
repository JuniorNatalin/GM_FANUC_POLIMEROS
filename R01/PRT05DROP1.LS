/PROG  PRT05DROP1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "ROBOT DROP 239";
PROG_SIZE	= 2308;
CREATE		= DATE 19-05-06  TIME 14:14:34;
MODIFIED	= DATE 19-12-18  TIME 17:49:22;
FILE_NAME	= PRT05DRO;
VERSION		= 0;
LINE_COUNT	= 63;
MEMORY_SIZE	= 2556;
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
   2:  !DROPOFF PART TO CONVEYOR ;
   3:  !******************************** ;
   4:   ;
   5:  !ASSIGN PATH SEGEMENT VALUES ;
   6:  SET SEGMENT(35) ;
   7:   ;
   8:  !******IMPORTANT************ ;
   9:  !for MH tool changers ;
  10:  !make sure Set MH TOOL(AR) ;
  11:  !matches tool number ;
  12:  Set MH Tool(5) ;
  13:   ;
  14:  UTOOL_NUM=2 ;
  15:  UFRAME_NUM=0 ;
  16:  PAYLOAD[5] ;
  17:   ;
  18:  ENTER I-ZONE(1) ;
  19:  ENTER I-ZONE(2) ;
  20:   ;
  21:J P[1] 100% CNT100    ;
  22:J P[2] 100% CNT100    ;
  23:J P[3] 100% CNT100    ;
  24:J P[4] 100% CNT100    ;
  25:J P[5] 100% CNT100    ;
  26:J P[6] 100% CNT100    ;
  27:J P[7] 100% CNT100    ;
  28:   ;
  29:L P[8:Abv Drop] 1000mm/sec CNT50    ;
  30:   ;
  31:  !Robot at conveyor ;
  32:L P[9:At Drop] 1000mm/sec FINE    ;
  33:   ;
  34:  EXIT I-ZONE(1) ;
  35:   ;
  36:  !ROBOT WAITING R02 ;
  37:  REQUEST CONTINUE    ;
  38:   ;
  39:  !Robot Leavig The Drop Pos ;
  40:  SET SEGMENT(36) ;
  41:   ;
  42:  Release Part(5) ;
  43:   ;
  44:  VACUUM CAN 1 OFF(6,7) ;
  45:  PAYLOAD[4] ;
  46:   ;
  47:  !verify no part in tool ;
  48:L P[17] 200mm/sec FINE    ;
  49:L P[18] 500mm/sec FINE    ;
  50:L P[10] 800mm/sec CNT20    ;
  51:L P[11] 800mm/sec CNT30    ;
  52:   ;
  53:J P[12] 80% CNT100    ;
  54:J P[13] 80% CNT100    ;
  55:J P[14] 90% FINE    ;
  56:   ;
  57:  EXIT I-ZONE(1) ;
  58:  EXIT I-ZONE(2) ;
  59:  !Robot clear of conveyor ;
  60:  SET SEGMENT(63) ;
  61:   ;
  62:J P[15] 90% CNT100    ;
  63:J P[16] 90% CNT100    ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   663.372  mm,	Y = -2475.175  mm,	Z =  1063.050  mm,
	W =  -175.130 deg,	P =     -.498 deg,	R =   -86.320 deg
};
P[2]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =    53.718  mm,	Y = -2475.188  mm,	Z =  1063.052  mm,
	W =  -175.130 deg,	P =     -.499 deg,	R =   -86.321 deg
};
P[3]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   -38.633  mm,	Y = -2560.737  mm,	Z =  1189.137  mm,
	W =  -156.929 deg,	P =    -6.621 deg,	R =  -114.565 deg
};
P[4]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -455.983  mm,	Y = -2720.371  mm,	Z =  1560.683  mm,
	W =   -95.410 deg,	P =    29.106 deg,	R =  -161.756 deg
};
P[5]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -433.264  mm,	Y = -1700.427  mm,	Z =   942.204  mm,
	W =  -178.402 deg,	P =    14.938 deg,	R =    91.637 deg
};
P[6]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -395.115  mm,	Y = -1367.020  mm,	Z =   212.877  mm,
	W =   179.316 deg,	P =    -1.767 deg,	R =    91.193 deg
};
P[7]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -403.278  mm,	Y = -1353.336  mm,	Z =  -418.040  mm,
	W =   179.780 deg,	P =    -2.488 deg,	R =    94.810 deg
};
P[8:"Abv Drop"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -403.278  mm,	Y = -1353.336  mm,	Z =  -998.840  mm,
	W =  -177.787 deg,	P =    -3.528 deg,	R =    94.664 deg
};
P[9:"At Drop"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -472.528  mm,	Y = -1359.501  mm,	Z = -1256.919  mm,
	W =  -175.176 deg,	P =     6.447 deg,	R =    92.265 deg
};
P[10]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -473.246  mm,	Y = -1252.223  mm,	Z = -1081.480  mm,
	W =  -175.177 deg,	P =     6.446 deg,	R =    92.265 deg
};
P[11]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -473.246  mm,	Y = -1252.224  mm,	Z =  -817.480  mm,
	W =  -175.177 deg,	P =     6.446 deg,	R =    92.265 deg
};
P[12]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -486.267  mm,	Y = -1337.075  mm,	Z =  -253.060  mm,
	W =  -176.026 deg,	P =    -6.854 deg,	R =    90.727 deg
};
P[13]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -506.645  mm,	Y = -1511.195  mm,	Z =   319.248  mm,
	W =  -173.390 deg,	P =    11.001 deg,	R =    90.253 deg
};
P[14]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -506.645  mm,	Y = -1511.195  mm,	Z =   319.248  mm,
	W =  -173.390 deg,	P =    11.001 deg,	R =    90.253 deg
};
P[15]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -570.240  mm,	Y = -2352.424  mm,	Z =  2045.321  mm,
	W =   -94.119 deg,	P =      .270 deg,	R =  -172.226 deg
};
P[16]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1648.491  mm,	Y = -1969.720  mm,	Z =   542.781  mm,
	W =  -179.667 deg,	P =    10.058 deg,	R =   -61.175 deg
};
P[17]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -472.528  mm,	Y = -1359.501  mm,	Z = -1226.199  mm,
	W =  -175.176 deg,	P =     6.447 deg,	R =    92.265 deg
};
P[18]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -473.247  mm,	Y = -1252.223  mm,	Z = -1226.198  mm,
	W =  -175.177 deg,	P =     6.446 deg,	R =    92.265 deg
};
/END
