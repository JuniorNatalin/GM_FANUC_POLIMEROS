/PROG  PRT42DROP2_CONVEYOR
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "ROBOT DROP 376";
PROG_SIZE	= 2056;
CREATE		= DATE 19-06-22  TIME 08:43:48;
MODIFIED	= DATE 19-06-22  TIME 08:43:48;
FILE_NAME	= PRT06DRO;
VERSION		= 0;
LINE_COUNT	= 58;
MEMORY_SIZE	= 2324;
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
   6:  SET SEGMENT(32) ;
   7:   ;
   8:  !******IMPORTANT************ ;
   9:  !for MH tool changers ;
  10:  !make sure Set MH TOOL(AR) ;
  11:  !matches tool number ;
  12:  Set MH Tool(6) ;
  13:   ;
  14:  UTOOL_NUM=2 ;
  15:  UFRAME_NUM=0 ;
  16:  PAYLOAD[5] ;
  17:   ;
  18:  ENTER I-ZONE(1) ;
  19:  ENTER I-ZONE(2) ;
  20:   ;
  21:J P[8] 100% CNT100    ;
  22:J P[7] 100% CNT100    ;
  23:J P[14] 100% CNT100    ;
  24:J P[9] 100% CNT100    ;
  25:   ;
  26:L P[2:Abv Drop] 1000mm/sec CNT50    ;
  27:   ;
  28:  !Robot at conveyor ;
  29:L P[3:At Drop] 100mm/sec FINE    ;
  30:   ;
  31:  Release Part(5) ;
  32:   ;
  33:  VACUUM CAN 1 OFF(6,7) ;
  34:  PAYLOAD[4] ;
  35:   ;
  36:  !verify no part in tool ;
  37:L P[4] 500mm/sec FINE    ;
  38:   ;
  39:  REQUEST CONTINUE    ;
  40:   ;
  41:  !Robot clear of conveyor ;
  42:  SET SEGMENT(33) ;
  43:   ;
  44:L P[1] 2000mm/sec CNT100    ;
  45:   ;
  46:J P[5] 100% CNT100    ;
  47:J P[11] 100% CNT100    ;
  48:J P[12] 100% CNT100    ;
  49:   ;
  50:J P[13] 100% CNT100    ;
  51:J P[6] 100% CNT100    ;
  52:J P[15] 100% FINE    ;
  53:   ;
  54:  EXIT I-ZONE(1) ;
  55:  EXIT I-ZONE(2) ;
  56:   ;
  57:  !Robot clear of all ;
  58:  SET SEGMENT(63) ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1823.656  mm,	Y = -2464.858  mm,	Z = -1596.826  mm,
	W =  -176.511 deg,	P =    -2.325 deg,	R =  -176.332 deg
};
P[2:"Abv Drop"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1797.137  mm,	Y = -2486.568  mm,	Z = -1958.031  mm,
	W =  -176.511 deg,	P =    -2.326 deg,	R =  -176.333 deg
};
P[3:"At Drop"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1718.421  mm,	Y = -2488.090  mm,	Z = -2075.229  mm,
	W =  -176.515 deg,	P =    -2.322 deg,	R =  -176.333 deg
};
P[4]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1718.422  mm,	Y = -2488.089  mm,	Z = -1729.629  mm,
	W =  -176.515 deg,	P =    -2.322 deg,	R =  -176.333 deg
};
P[5]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1443.955  mm,	Y = -3013.243  mm,	Z =  -783.794  mm,
	W =   178.525 deg,	P =    -9.893 deg,	R =  -160.854 deg
};
P[6]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  2354.837  mm,	Y =  -800.993  mm,	Z =   605.255  mm,
	W =  -177.770 deg,	P =    11.110 deg,	R =   -25.039 deg
};
P[7]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1256.656  mm,	Y = -2889.285  mm,	Z =  -132.490  mm,
	W =  -179.451 deg,	P =     1.170 deg,	R =  -174.056 deg
};
P[8]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   663.381  mm,	Y = -2475.163  mm,	Z =  1063.155  mm,
	W =  -175.130 deg,	P =     -.502 deg,	R =   -86.319 deg
};
P[9]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1767.275  mm,	Y = -2471.681  mm,	Z = -1702.233  mm,
	W =  -176.511 deg,	P =    -2.325 deg,	R =  -176.333 deg
};
P[11]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -733.124  mm,	Y = -3194.134  mm,	Z =   -30.989  mm,
	W =   175.360 deg,	P =    -6.703 deg,	R =  -142.121 deg
};
P[12]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -446.904  mm,	Y = -2879.351  mm,	Z =   212.489  mm,
	W =   175.570 deg,	P =    -4.290 deg,	R =  -133.588 deg
};
P[13]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   802.995  mm,	Y = -2498.405  mm,	Z =   502.419  mm,
	W =   179.150 deg,	P =     8.897 deg,	R =   -86.469 deg
};
P[14]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1566.258  mm,	Y = -2699.123  mm,	Z = -1219.874  mm,
	W =  -177.644 deg,	P =    -8.522 deg,	R =  -177.451 deg
};
P[15]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  2417.461  mm,	Y =   133.004  mm,	Z =   520.409  mm,
	W =  -176.136 deg,	P =    15.400 deg,	R =      .533 deg
};
/END
