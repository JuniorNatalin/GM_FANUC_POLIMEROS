/PROG  PRT41DROP2_CONVEYOR
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "ROBOT DROP 375";
PROG_SIZE	= 2011;
CREATE		= DATE 21-05-26  TIME 09:44:44;
MODIFIED	= DATE 21-05-26  TIME 09:44:44;
FILE_NAME	= PRT41DRO;
VERSION		= 0;
LINE_COUNT	= 57;
MEMORY_SIZE	= 2283;
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
  31:  Release Part(1) ;
  32:   ;
  33:   ;
  34:  VACUUM CAN 1 OFF(6,7) ;
  35:  PAYLOAD[6] ;
  36:  WAIT    .50(sec) ;
  37:  !verify no part in tool ;
  38:L P[4] 200mm/sec CNT50    ;
  39:   ;
  40:  REQUEST CONTINUE    ;
  41:   ;
  42:  !Robot clear of conveyor ;
  43:  SET SEGMENT(33) ;
  44:   ;
  45:L P[1] 2000mm/sec CNT100    ;
  46:   ;
  47:J P[5] 100% CNT100    ;
  48:J P[11] 100% CNT100    ;
  49:J P[12] 100% CNT100    ;
  50:J P[13] 100% CNT100    ;
  51:J P[6] 100% CNT100    ;
  52:J P[15] 100% FINE    ;
  53:   ;
  54:  EXIT I-ZONE(1) ;
  55:  EXIT I-ZONE(2) ;
  56:  !Robot clear of all ;
  57:  SET SEGMENT(63) ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1850.476  mm,	Y = -2614.292  mm,	Z = -1575.358  mm,
	W =  -176.604 deg,	P =    15.139 deg,	R =  -177.528 deg
};
P[2:"Abv Drop"]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1907.764  mm,	Y = -2674.217  mm,	Z = -1810.677  mm,
	W =  -176.979 deg,	P =     6.513 deg,	R =  -177.462 deg
};
P[3:"At Drop"]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -2251.835  mm,	Y = -2639.321  mm,	Z = -2147.508  mm,
	W =  -175.031 deg,	P =     8.063 deg,	R =  -177.759 deg
};
P[4]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -2300.222  mm,	Y = -2611.909  mm,	Z = -1813.831  mm,
	W =  -175.033 deg,	P =     8.081 deg,	R =  -177.758 deg
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
	X = -1907.765  mm,	Y = -2674.218  mm,	Z = -1645.077  mm,
	W =  -177.645 deg,	P =    -8.521 deg,	R =  -177.450 deg
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
