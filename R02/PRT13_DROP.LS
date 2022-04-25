/PROG  PRT13_DROP
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "331";
PROG_SIZE	= 2752;
CREATE		= DATE 21-06-08  TIME 23:07:24;
MODIFIED	= DATE 21-06-09  TIME 00:17:08;
FILE_NAME	= PRT07DRO;
VERSION		= 0;
LINE_COUNT	= 84;
MEMORY_SIZE	= 3044;
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
  30:   ;
  31:L P[6:Drop_PRT_17] 300mm/sec FINE    ;
  32:  DO[817]=OFF ;
  33:  DO[818]=ON ;
  34:  WAIT    .50(sec) ;
  35:  DO[818]=OFF ;
  36:  PAYLOAD[2] ;
  37:   ;
  38:L P[27] 300mm/sec FINE    ;
  39:L P[29] 300mm/sec FINE    ;
  40:   ;
  41:L P[28] 300mm/sec FINE    ;
  42:   ;
  43:   ;
  44:   ;
  45:  !verify no part in tool ;
  46:L P[11] 1000mm/sec FINE    ;
  47:L P[20] 1000mm/sec FINE    ;
  48:L P[21] 1000mm/sec FINE    ;
  49:L P[22] 1000mm/sec FINE    ;
  50:L P[23] 1000mm/sec FINE    ;
  51:L P[24] 1000mm/sec FINE    ;
  52:L P[25] 1000mm/sec FINE    ;
  53:L P[26] 1000mm/sec FINE    ;
  54:   ;
  55:  DO[819]=OFF ;
  56:  DO[820]=ON ;
  57:  WAIT    .50(sec) ;
  58:  DO[820]=OFF ;
  59:  Release Part(5) ;
  60:   ;
  61:   ;
  62:   ;
  63:   ;
  64:   ;
  65:   ;
  66:   ;
  67:  REQUEST CONTINUE    ;
  68:   ;
  69:  !Robot clear of conveyor ;
  70:  SET SEGMENT(33) ;
  71:   ;
  72:J P[14] 100% CNT100    ;
  73:J P[2] 100% CNT100    ;
  74:   ;
  75:J P[7] 100% CNT100    ;
  76:J P[8] 100% CNT100    ;
  77:J P[9] 100% CNT100    ;
  78:J P[10] 100% CNT100    ;
  79:   ;
  80:  EXIT I-ZONE(1) ;
  81:  EXIT I-ZONE(2) ;
  82:   ;
  83:  !Robot clear of all ;
  84:  SET SEGMENT(63) ;
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
	X =   908.847  mm,	Y = -1082.161  mm,	Z =   571.365  mm,
	W =  -164.777 deg,	P =   -11.270 deg,	R =   -98.881 deg
};
P[4]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1354.320  mm,	Y =  -309.091  mm,	Z =   966.146  mm,
	W =   -94.506 deg,	P =    -1.696 deg,	R =   175.013 deg
};
P[6:"Drop_PRT_17"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =  1643.765  mm,	Y =  -382.770  mm,	Z =   335.190  mm,
	W =   -98.019 deg,	P =     -.526 deg,	R =  -157.680 deg
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
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =  1723.453  mm,	Y =  -256.636  mm,	Z =   598.151  mm,
	W =   -89.583 deg,	P =    -5.553 deg,	R =   175.317 deg
};
P[12]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   590.502  mm,	Y =   -71.318  mm,	Z =  1842.135  mm,
	W =  -127.550 deg,	P =    23.822 deg,	R =  -113.761 deg
};
P[13]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =  1616.176  mm,	Y =  -295.700  mm,	Z =   597.876  mm,
	W =   -94.506 deg,	P =    -1.696 deg,	R =   175.012 deg
};
P[14]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1030.899  mm,	Y = -1277.503  mm,	Z =   -84.967  mm,
	W =  -135.487 deg,	P =   -11.017 deg,	R =   -89.819 deg
};
P[15]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   574.063  mm,	Y =   -84.883  mm,	Z =  1787.976  mm,
	W =  -122.750 deg,	P =    22.624 deg,	R =  -117.302 deg
};
P[20]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1520.763  mm,	Y =  -181.440  mm,	Z =   664.309  mm,
	W =  -143.856 deg,	P =    -5.067 deg,	R =   178.331 deg
};
P[21]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1522.424  mm,	Y =  -181.179  mm,	Z =   818.836  mm,
	W =  -179.885 deg,	P =    -5.067 deg,	R =   178.331 deg
};
P[22]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1394.563  mm,	Y =  -637.504  mm,	Z =  1103.272  mm,
	W =  -179.885 deg,	P =    -5.068 deg,	R =   178.330 deg
};
P[23]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1264.499  mm,	Y =  -714.354  mm,	Z =   591.051  mm,
	W =  -161.628 deg,	P =     4.347 deg,	R =  -147.423 deg
};
P[24]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   908.847  mm,	Y = -1082.161  mm,	Z =   571.365  mm,
	W =  -164.777 deg,	P =   -11.270 deg,	R =   -98.881 deg
};
P[25]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1030.899  mm,	Y = -1277.503  mm,	Z =   -84.967  mm,
	W =  -135.487 deg,	P =   -11.017 deg,	R =   -89.819 deg
};
P[26]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1017.106  mm,	Y = -1291.649  mm,	Z =  -235.756  mm,
	W =  -135.489 deg,	P =   -11.015 deg,	R =   -89.816 deg
};
P[27]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =  1651.605  mm,	Y =  -349.029  mm,	Z =   294.339  mm,
	W =  -108.951 deg,	P =      .406 deg,	R =  -157.680 deg
};
P[28]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =  1590.611  mm,	Y =  -193.624  mm,	Z =   317.217  mm,
	W =  -108.950 deg,	P =      .406 deg,	R =  -157.680 deg
};
P[29]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =  1614.526  mm,	Y =  -250.008  mm,	Z =   234.666  mm,
	W =  -108.951 deg,	P =      .406 deg,	R =  -157.680 deg
};
/END
