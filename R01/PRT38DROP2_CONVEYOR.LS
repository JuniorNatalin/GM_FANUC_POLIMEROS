/PROG  PRT38DROP2_CONVEYOR
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "ROBOT DROP 373";
PROG_SIZE	= 2096;
CREATE		= DATE 21-01-14  TIME 13:13:56;
MODIFIED	= DATE 21-05-19  TIME 09:59:42;
FILE_NAME	= PRT38DRO;
VERSION		= 0;
LINE_COUNT	= 70;
MEMORY_SIZE	= 2444;
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
  17:   ;
  18:  PAYLOAD[7] ;
  19:   ;
  20:  ENTER I-ZONE(1) ;
  21:  ENTER I-ZONE(2) ;
  22:   ;
  23:J P[1] 100% CNT100    ;
  24:J P[2] 100% CNT100    ;
  25:J P[3] 100% CNT100    ;
  26:   ;
  27:  !Robot at conveyor ;
  28:   ;
  29:   ;
  30:  Grip Part(2) ;
  31:  Release Part(1) ;
  32:  Release Part(5) ;
  33:  DO[802:ON ]=OFF ;
  34:  DO[801:OFF]=ON ;
  35:   ;
  36:   ;
  37:  VACUUM CAN 1 OFF(6,7) ;
  38:  Release Part(2) ;
  39:  Grip Part(5) ;
  40:  Release Part(5) ;
  41:   ;
  42:   ;
  43:  PAYLOAD[6] ;
  44:  //WAIT   2.50(sec) ;
  45:  !verify no part in tool ;
  46:   ;
  47:   ;
  48:   ;
  49:  REQUEST CONTINUE    ;
  50:   ;
  51:  !Robot clear of conveyor ;
  52:  SET SEGMENT(33) ;
  53:  //L P[8] 250mm/sec CNT100    ;
  54:  WAIT   1.00(sec) ;
  55:  //L P[9] 250mm/sec CNT100    ;
  56:   ;
  57:L P[10] 2000mm/sec CNT100    ;
  58:   ;
  59:J P[11] 100% CNT100    ;
  60:J P[12] 100% CNT100    ;
  61:J P[13] 100% CNT100    ;
  62:J P[14] 100% CNT100    ;
  63:J P[15] 100% CNT100    ;
  64:J P[16] 100% FINE    ;
  65:   ;
  66:  EXIT I-ZONE(1) ;
  67:  EXIT I-ZONE(2) ;
  68:   ;
  69:  !Robot clear of all ;
  70:  SET SEGMENT(63) ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1256.656  mm,	Y = -2889.285  mm,	Z =  -132.490  mm,
	W =  -179.451 deg,	P =     1.170 deg,	R =  -174.056 deg
};
P[2]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1566.258  mm,	Y = -2699.123  mm,	Z = -1219.875  mm,
	W =  -177.644 deg,	P =    -8.522 deg,	R =  -177.451 deg
};
P[3]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1823.682  mm,	Y = -2688.032  mm,	Z = -1608.034  mm,
	W =  -175.347 deg,	P =    -7.681 deg,	R =   168.409 deg
};
P[8]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -2169.067  mm,	Y = -2392.909  mm,	Z = -1995.669  mm,
	W =  -169.199 deg,	P =    -5.323 deg,	R =   154.963 deg
};
P[9]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -2057.042  mm,	Y = -2429.535  mm,	Z = -1962.696  mm,
	W =   168.438 deg,	P =   -10.008 deg,	R =   164.769 deg
};
P[10]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1823.656  mm,	Y = -2464.857  mm,	Z = -1596.826  mm,
	W =   174.910 deg,	P =    -2.440 deg,	R =  -176.339 deg
};
P[11]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1443.955  mm,	Y = -3013.243  mm,	Z =  -783.794  mm,
	W =   178.525 deg,	P =    -9.893 deg,	R =  -160.854 deg
};
P[12]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =  -733.124  mm,	Y = -3194.134  mm,	Z =   -30.989  mm,
	W =   175.360 deg,	P =    -6.703 deg,	R =  -142.121 deg
};
P[13]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =  -446.904  mm,	Y = -2879.351  mm,	Z =   212.489  mm,
	W =   175.570 deg,	P =    -4.290 deg,	R =  -133.588 deg
};
P[14]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =   802.995  mm,	Y = -2498.405  mm,	Z =   502.419  mm,
	W =   179.150 deg,	P =     8.897 deg,	R =   -86.469 deg
};
P[15]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =  2354.837  mm,	Y =  -800.993  mm,	Z =   605.255  mm,
	W =  -177.770 deg,	P =    11.110 deg,	R =   -25.039 deg
};
P[16]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =  2417.461  mm,	Y =   133.003  mm,	Z =   520.409  mm,
	W =  -176.136 deg,	P =    15.400 deg,	R =      .533 deg
};
/END
