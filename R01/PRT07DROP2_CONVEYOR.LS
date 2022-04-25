/PROG  PRT07DROP2_CONVEYOR
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "ROBOT DROP 311";
PROG_SIZE	= 1971;
CREATE		= DATE 18-10-14  TIME 13:17:20;
MODIFIED	= DATE 18-11-04  TIME 16:54:48;
FILE_NAME	= PRT06DRO;
VERSION		= 0;
LINE_COUNT	= 55;
MEMORY_SIZE	= 2251;
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
   1:   ;
   2:  !******************************** ;
   3:  !DROPOFF PART TO CONVEYOR ;
   4:  !******************************** ;
   5:   ;
   6:  !ASSIGN PATH SEGEMENT VALUES ;
   7:  SET SEGMENT(32) ;
   8:   ;
   9:  !******IMPORTANT************ ;
  10:  !for MH tool changers ;
  11:  !make sure Set MH TOOL(AR) ;
  12:  !matches tool number ;
  13:  Set MH Tool(7) ;
  14:   ;
  15:  UTOOL_NUM=7 ;
  16:  UFRAME_NUM=0 ;
  17:  PAYLOAD[7] ;
  18:  ENTER I-ZONE(1) ;
  19:  ENTER I-ZONE(2) ;
  20:   ;
  21:J P[7] 100% CNT100    ;
  22:J P[14] 100% CNT100    ;
  23:J P[9] 100% CNT100    ;
  24:   ;
  25:L P[2:Abv Drop] 2000mm/sec CNT50    ;
  26:   ;
  27:  !Robot at conveyor ;
  28:L P[3:At Drop] 2000mm/sec FINE    ;
  29:   ;
  30:  Release Part(5) ;
  31:   ;
  32:  VACUUM CAN 1 OFF(6,7) ;
  33:  PAYLOAD[6] ;
  34:  WAIT   1.00(sec) ;
  35:  !verify no part in tool ;
  36:L P[4] 200mm/sec CNT50    ;
  37:   ;
  38:  REQUEST CONTINUE    ;
  39:   ;
  40:  !Robot clear of conveyor ;
  41:  SET SEGMENT(33) ;
  42:   ;
  43:L P[1] 2000mm/sec CNT100    ;
  44:   ;
  45:J P[5] 100% CNT100    ;
  46:J P[11] 100% CNT100    ;
  47:J P[12] 100% CNT100    ;
  48:J P[13] 100% CNT100    ;
  49:J P[6] 100% CNT100    ;
  50:J P[15] 100% FINE    ;
  51:   ;
  52:  EXIT I-ZONE(1) ;
  53:  EXIT I-ZONE(2) ;
  54:  !Robot clear of all ;
  55:  SET SEGMENT(63) ;
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
	X = -2340.259  mm,	Y = -2516.957  mm,	Z = -2009.819  mm,
	W =  -174.508 deg,	P =    20.771 deg,	R =  -174.961 deg
};
P[3:"At Drop"]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -2253.497  mm,	Y = -2509.597  mm,	Z = -2239.396  mm,
	W =  -174.508 deg,	P =    20.771 deg,	R =  -174.961 deg
};
P[4]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -2340.259  mm,	Y = -2516.957  mm,	Z = -2009.819  mm,
	W =  -174.508 deg,	P =    20.771 deg,	R =  -174.961 deg
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
P[9]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -2124.770  mm,	Y = -2613.720  mm,	Z = -1789.967  mm,
	W =   178.695 deg,	P =    13.051 deg,	R =  -179.177 deg
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
