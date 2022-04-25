/PROG  PRT20DROP2_CONVEYOR
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "ROBOT DROP 300";
PROG_SIZE	= 1983;
CREATE		= DATE 19-12-16  TIME 15:06:48;
MODIFIED	= DATE 19-12-16  TIME 16:44:38;
FILE_NAME	= PRT05DRO;
VERSION		= 0;
LINE_COUNT	= 55;
MEMORY_SIZE	= 2263;
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
  12:  Set MH Tool(5) ;
  13:   ;
  14:  UTOOL_NUM=5 ;
  15:  UFRAME_NUM=0 ;
  16:  PAYLOAD[11] ;
  17:  ENTER I-ZONE(1) ;
  18:  ENTER I-ZONE(2) ;
  19:   ;
  20:J P[3] 100% CNT100    ;
  21:J P[1] 100% CNT100    ;
  22:J P[2] 100% CNT100    ;
  23:   ;
  24:L P[4] 2000mm/sec CNT50    ;
  25:L P[5:Abv Drop] 2000mm/sec CNT50    ;
  26:   ;
  27:  !Robot at conveyor ;
  28:L P[6:At Drop] 2000mm/sec FINE    ;
  29:   ;
  30:  Release Part(5) ;
  31:   ;
  32:  VACUUM CAN 1 OFF(6,7) ;
  33:  PAYLOAD[10] ;
  34:   ;
  35:  !verify no part in tool ;
  36:L P[7] 2000mm/sec CNT50    ;
  37:   ;
  38:  REQUEST CONTINUE    ;
  39:   ;
  40:  !Robot clear of conveyor ;
  41:  SET SEGMENT(33) ;
  42:   ;
  43:L P[8] 2000mm/sec CNT100    ;
  44:   ;
  45:J P[10] 100% CNT100    ;
  46:J P[15] 100% CNT100    ;
  47:J P[11] 100% CNT100    ;
  48:J P[12] 100% CNT100    ;
  49:J P[13] 100% FINE    ;
  50:   ;
  51:  EXIT I-ZONE(1) ;
  52:  EXIT I-ZONE(2) ;
  53:   ;
  54:  !Robot clear of all ;
  55:  SET SEGMENT(63) ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1256.656  mm,	Y = -2889.285  mm,	Z =  -132.490  mm,
	W =  -179.451 deg,	P =     1.170 deg,	R =  -174.056 deg
};
P[2]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1628.657  mm,	Y = -2692.487  mm,	Z = -1130.891  mm,
	W =  -179.451 deg,	P =     1.170 deg,	R =  -174.056 deg
};
P[3]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X =   663.372  mm,	Y = -2475.172  mm,	Z =  1063.059  mm,
	W =  -175.130 deg,	P =     -.499 deg,	R =   -86.320 deg
};
P[4]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1944.148  mm,	Y = -2518.107  mm,	Z = -1752.162  mm,
	W =  -173.608 deg,	P =    16.101 deg,	R =  -173.562 deg
};
P[5:"Abv Drop"]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2117.543  mm,	Y = -2494.980  mm,	Z = -2038.740  mm,
	W =  -173.007 deg,	P =    14.067 deg,	R =  -173.821 deg
};
P[6:"At Drop"]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2057.076  mm,	Y = -2517.708  mm,	Z = -2268.887  mm,
	W =  -173.007 deg,	P =    14.067 deg,	R =  -173.821 deg
};
P[7]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2117.543  mm,	Y = -2494.980  mm,	Z = -2038.740  mm,
	W =  -173.007 deg,	P =    14.067 deg,	R =  -173.821 deg
};
P[8]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1944.148  mm,	Y = -2518.107  mm,	Z = -1752.162  mm,
	W =  -173.608 deg,	P =    16.101 deg,	R =  -173.562 deg
};
P[10]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1628.657  mm,	Y = -2692.486  mm,	Z = -1130.891  mm,
	W =  -179.451 deg,	P =     1.170 deg,	R =  -174.056 deg
};
P[11]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X =  1189.806  mm,	Y = -2312.651  mm,	Z =   519.866  mm,
	W =   179.636 deg,	P =     9.412 deg,	R =   -75.731 deg
};
P[12]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X =  2354.837  mm,	Y =  -800.993  mm,	Z =   605.255  mm,
	W =  -177.770 deg,	P =    11.110 deg,	R =   -25.039 deg
};
P[13]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X =  2417.461  mm,	Y =   133.003  mm,	Z =   520.409  mm,
	W =  -176.136 deg,	P =    15.400 deg,	R =      .533 deg
};
P[15]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X =  -825.407  mm,	Y = -2603.615  mm,	Z =   494.856  mm,
	W =  -161.049 deg,	P =   -15.652 deg,	R =  -154.995 deg
};
/END
