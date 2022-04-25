/PROG  PRT43_DROP
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "377";
PROG_SIZE	= 2132;
CREATE		= DATE 19-06-26  TIME 14:56:12;
MODIFIED	= DATE 19-06-26  TIME 14:56:12;
FILE_NAME	= PRT09_DR;
VERSION		= 0;
LINE_COUNT	= 58;
MEMORY_SIZE	= 2400;
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

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : TRUE;
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
  12:  Set MH Tool(1) ;
  13:   ;
  14:  !Place Part ;
  15:  UTOOL_NUM=2 ;
  16:  UFRAME_NUM=0 ;
  17:  PAYLOAD[3] ;
  18:   ;
  19:  ENTER I-ZONE(1) ;
  20:  ENTER I-ZONE(2) ;
  21:   ;
  22:J P[1] 100% CNT100    ;
  23:J P[15] 100% CNT100    ;
  24:J P[12] 100% CNT100    ;
  25:J P[4] 100% CNT100    ;
  26:   ;
  27:L P[13] 500mm/sec CNT50    ;
  28:   ;
  29:  !Robot at conveyor ;
  30:L P[6:Drop_PRT_17] 300mm/sec FINE    ;
  31:  Turn OFF Vacuum(6,7) ;
  32:  Release Part(5) ;
  33:   ;
  34:  PAYLOAD[2] ;
  35:   ;
  36:  !verify no part in tool ;
  37:L P[11] 300mm/sec FINE    ;
  38:L P[5:Abv Drop] 500mm/sec FINE    ;
  39:   ;
  40:  REQUEST CONTINUE    ;
  41:   ;
  42:  !Robot clear of conveyor ;
  43:  SET SEGMENT(33) ;
  44:   ;
  45:J P[14] 100% CNT100    ;
  46:J P[3] 100% CNT100    ;
  47:J P[2] 100% CNT100    ;
  48:   ;
  49:J P[7] 100% CNT100    ;
  50:J P[8] 100% CNT100    ;
  51:J P[9] 100% CNT100    ;
  52:J P[10] 100% CNT100    ;
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
	X =   379.344  mm,	Y =    96.118  mm,	Z =  2088.807  mm,
	W =  -111.918 deg,	P =    15.065 deg,	R =   -52.247 deg
};
P[2]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   762.502  mm,	Y =  -129.789  mm,	Z =  1676.334  mm,
	W =  -122.750 deg,	P =    22.624 deg,	R =  -117.302 deg
};
P[3]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1427.855  mm,	Y =  -589.835  mm,	Z =  1200.626  mm,
	W =   177.876 deg,	P =     2.069 deg,	R =   179.651 deg
};
P[4]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1352.790  mm,	Y =  -587.865  mm,	Z =   962.835  mm,
	W =   177.925 deg,	P =    -5.918 deg,	R =   179.650 deg
};
P[5:"Abv Drop"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1176.586  mm,	Y =  -439.526  mm,	Z =   992.313  mm,
	W =  -179.373 deg,	P =   -18.712 deg,	R =   176.842 deg
};
P[6:"Drop_PRT_17"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1840.243  mm,	Y =  -446.910  mm,	Z =   855.818  mm,
	W =  -179.052 deg,	P =   -14.419 deg,	R =   176.346 deg
};
P[7]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   623.193  mm,	Y =   458.132  mm,	Z =  1676.334  mm,
	W =  -122.750 deg,	P =    22.624 deg,	R =   -71.321 deg
};
P[8]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   337.504  mm,	Y =   723.850  mm,	Z =  2196.500  mm,
	W =  -121.035 deg,	P =   -19.005 deg,	R =      .714 deg
};
P[9]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -360.724  mm,	Y =  1269.352  mm,	Z =  2187.499  mm,
	W =  -157.003 deg,	P =   -36.155 deg,	R =    78.238 deg
};
P[10]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1544.176  mm,	Y =  1312.796  mm,	Z =  1091.707  mm,
	W =   178.170 deg,	P =     3.650 deg,	R =   145.534 deg
};
P[11]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1423.688  mm,	Y =  -430.068  mm,	Z =   963.833  mm,
	W =  -179.085 deg,	P =   -14.914 deg,	R =   176.401 deg
};
P[12]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   590.502  mm,	Y =   -71.318  mm,	Z =  1842.135  mm,
	W =  -127.550 deg,	P =    23.822 deg,	R =  -113.761 deg
};
P[13]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1776.617  mm,	Y =  -446.377  mm,	Z =   904.143  mm,
	W =  -176.556 deg,	P =   -14.419 deg,	R =   176.346 deg
};
P[14]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1176.585  mm,	Y =  -439.526  mm,	Z =   992.314  mm,
	W =  -179.393 deg,	P =    12.237 deg,	R =   177.172 deg
};
P[15]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   574.063  mm,	Y =   -84.883  mm,	Z =  1787.976  mm,
	W =  -122.750 deg,	P =    22.624 deg,	R =  -117.302 deg
};
/END
