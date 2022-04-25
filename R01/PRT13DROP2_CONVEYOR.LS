/PROG  PRT13DROP2_CONVEYOR
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "ROBOT DROP 331";
PROG_SIZE	= 1968;
CREATE		= DATE 21-06-08  TIME 15:39:48;
MODIFIED	= DATE 21-06-08  TIME 15:39:48;
FILE_NAME	= PRT17DRO;
VERSION		= 0;
LINE_COUNT	= 51;
MEMORY_SIZE	= 2264;
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
  12:  Set MH Tool(7) ;
  13:   ;
  14:  UTOOL_NUM=7 ;
  15:  UFRAME_NUM=0 ;
  16:  PAYLOAD[7] ;
  17:   ;
  18:J P[8] 100% CNT100    ;
  19:J P[7] 100% CNT100    ;
  20:J P[14] 100% CNT100    ;
  21:J P[9] 100% CNT100    ;
  22:   ;
  23:L P[2:Abv Drop] 2000mm/sec CNT50    ;
  24:   ;
  25:  !Robot at conveyor ;
  26:L P[3:At Drop] 2000mm/sec FINE    ;
  27:   ;
  28:  Release Part(5) ;
  29:   ;
  30:  VACUUM CAN 1 OFF(6,7) ;
  31:  PAYLOAD[6] ;
  32:   ;
  33:  !verify no part in tool ;
  34:L P[4] 1500mm/sec CNT50    ;
  35:   ;
  36:  REQUEST CONTINUE    ;
  37:   ;
  38:  !Robot clear of conveyor ;
  39:  SET SEGMENT(33) ;
  40:   ;
  41:L P[1] 1000mm/sec CNT100    ;
  42:   ;
  43:J P[5] 50% CNT100    ;
  44:J P[11] 50% CNT100    ;
  45:J P[12] 50% CNT100    ;
  46:J P[13] 100% CNT100    ;
  47:J P[6] 100% CNT100    ;
  48:J P[15] 100% FINE    ;
  49:   ;
  50:  !Robot clear of all ;
  51:  SET SEGMENT(63) ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1823.656  mm,	Y = -2464.858  mm,	Z = -1596.826  mm,
	W =  -176.511 deg,	P =    -2.325 deg,	R =  -176.332 deg
};
P[2:"Abv Drop"]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -2151.861  mm,	Y = -2516.957  mm,	Z = -2045.817  mm,
	W =  -174.508 deg,	P =    20.771 deg,	R =  -174.961 deg
};
P[3:"At Drop"]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -2151.892  mm,	Y = -2516.893  mm,	Z = -2177.341  mm,
	W =  -174.791 deg,	P =     9.742 deg,	R =  -176.031 deg
};
P[4]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -2151.892  mm,	Y = -2516.893  mm,	Z = -1678.621  mm,
	W =  -174.791 deg,	P =     9.742 deg,	R =  -176.031 deg
};
P[5]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1443.955  mm,	Y = -3013.243  mm,	Z =  -783.794  mm,
	W =   178.525 deg,	P =    -9.893 deg,	R =  -160.854 deg
};
P[6]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =  2354.837  mm,	Y =  -800.993  mm,	Z =   605.255  mm,
	W =  -177.770 deg,	P =    11.110 deg,	R =   -25.039 deg
};
P[7]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1256.656  mm,	Y = -2889.285  mm,	Z =  -132.490  mm,
	W =  -179.451 deg,	P =     1.170 deg,	R =  -174.056 deg
};
P[8]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =   663.374  mm,	Y = -2475.173  mm,	Z =  1063.052  mm,
	W =  -175.130 deg,	P =     -.498 deg,	R =   -86.320 deg
};
P[9]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -2113.970  mm,	Y = -2511.721  mm,	Z = -1789.965  mm,
	W =  -174.976 deg,	P =    12.990 deg,	R =  -177.744 deg
};
P[11]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =  -733.124  mm,	Y = -3194.134  mm,	Z =   -30.989  mm,
	W =   175.360 deg,	P =    -6.703 deg,	R =  -142.121 deg
};
P[12]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =  -446.904  mm,	Y = -2879.351  mm,	Z =   212.489  mm,
	W =   175.570 deg,	P =    -4.290 deg,	R =  -133.588 deg
};
P[13]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =   802.995  mm,	Y = -2498.405  mm,	Z =   502.419  mm,
	W =   179.150 deg,	P =     8.897 deg,	R =   -86.469 deg
};
P[14]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1566.258  mm,	Y = -2699.123  mm,	Z = -1219.875  mm,
	W =  -177.644 deg,	P =    -8.522 deg,	R =  -177.451 deg
};
P[15]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =  2417.461  mm,	Y =   133.003  mm,	Z =   520.409  mm,
	W =  -176.136 deg,	P =    15.400 deg,	R =      .533 deg
};
/END
