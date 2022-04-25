/PROG  PRT07DROP1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "ROBOT DROP 311";
PROG_SIZE	= 2152;
CREATE		= DATE 20-07-01  TIME 10:44:32;
MODIFIED	= DATE 20-07-01  TIME 10:44:32;
FILE_NAME	= PRT07DRO;
VERSION		= 0;
LINE_COUNT	= 60;
MEMORY_SIZE	= 2412;
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
   1:  !DROPOFF PART TO CONVEYOR ;
   2:  !******************************** ;
   3:   ;
   4:  !ASSIGN PATH SEGEMENT VALUES ;
   5:  SET SEGMENT(35) ;
   6:   ;
   7:  !******IMPORTANT************ ;
   8:  !for MH tool changers ;
   9:  !make sure Set MH TOOL(AR) ;
  10:  !matches tool number ;
  11:  Set MH Tool(6) ;
  12:   ;
  13:  UTOOL_NUM=2 ;
  14:  UFRAME_NUM=0 ;
  15:  PAYLOAD[5] ;
  16:   ;
  17:  ENTER I-ZONE(1) ;
  18:  ENTER I-ZONE(2) ;
  19:   ;
  20:J P[1] 100% CNT100    ;
  21:J P[2] 100% CNT100    ;
  22:J P[3] 100% CNT100    ;
  23:J P[4] 100% CNT100    ;
  24:J P[5] 100% CNT100    ;
  25:J P[6] 100% CNT100    ;
  26:J P[7] 100% CNT100    ;
  27:   ;
  28:L P[8:Abv Drop] 1000mm/sec CNT50    ;
  29:   ;
  30:  !Robot at conveyor ;
  31:L P[9:At Drop] 1000mm/sec FINE    ;
  32:   ;
  33:  EXIT I-ZONE(1) ;
  34:   ;
  35:  !ROBOT WAITING R02 ;
  36:  REQUEST CONTINUE    ;
  37:   ;
  38:  !Robot Leavig The Drop Pos ;
  39:  SET SEGMENT(36) ;
  40:   ;
  41:  Release Part(5) ;
  42:   ;
  43:  VACUUM CAN 1 OFF(6,7) ;
  44:  PAYLOAD[4] ;
  45:   ;
  46:  !verify no part in tool ;
  47:L P[10] 500mm/sec CNT50    ;
  48:L P[11] 1500mm/sec CNT50    ;
  49:   ;
  50:J P[12] 100% CNT100    ;
  51:J P[13] 100% CNT100    ;
  52:J P[14] 100% FINE    ;
  53:   ;
  54:  EXIT I-ZONE(1) ;
  55:  EXIT I-ZONE(2) ;
  56:  !Robot clear of conveyor ;
  57:  SET SEGMENT(63) ;
  58:   ;
  59:J P[15] 100% CNT100    ;
  60:J P[16] 100% CNT100    ;
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
	X =  -476.060  mm,	Y = -1339.037  mm,	Z = -1250.979  mm,
	W =  -175.178 deg,	P =     6.445 deg,	R =    92.266 deg
};
P[11]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -476.137  mm,	Y = -1302.874  mm,	Z = -1238.934  mm,
	W =  -175.177 deg,	P =     6.445 deg,	R =    92.266 deg
};
P[12]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -475.947  mm,	Y = -1276.346  mm,	Z = -1216.099  mm,
	W =  -175.124 deg,	P =     6.631 deg,	R =    92.265 deg
};
P[13]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -468.423  mm,	Y = -1265.270  mm,	Z = -1123.461  mm,
	W =  -175.124 deg,	P =     6.631 deg,	R =    92.265 deg
};
P[14]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -482.577  mm,	Y = -1362.633  mm,	Z =  -904.084  mm,
	W =  -174.858 deg,	P =     7.426 deg,	R =    91.871 deg
};
P[15]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -605.411  mm,	Y = -2670.838  mm,	Z =  1674.957  mm,
	W =  -104.774 deg,	P =     2.920 deg,	R =  -172.524 deg
};
P[16]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1648.491  mm,	Y = -1969.720  mm,	Z =   542.781  mm,
	W =  -179.667 deg,	P =    10.058 deg,	R =   -61.175 deg
};
/END
