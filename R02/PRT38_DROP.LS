/PROG  PRT38_DROP
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "373";
PROG_SIZE	= 2413;
CREATE		= DATE 20-10-05  TIME 18:36:02;
MODIFIED	= DATE 21-12-04  TIME 11:30:44;
FILE_NAME	= PRT38_DR;
VERSION		= 0;
LINE_COUNT	= 64;
MEMORY_SIZE	= 2785;
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
  23:J P[2] 100% CNT100    ;
  24:  //J P[3] 100% CNT100    ;
  25:J P[19] 100% CNT100    ;
  26:J P[4] 100% CNT100    ;
  27:   ;
  28:  !Robot at conveyor ;
  29:   ;
  30:L P[5] 1500mm/sec CNT50    ;
  31:   ;
  32:  Turn OFF Vacuum(6,7) ;
  33:  Grip Part(5) ;
  34:   ;
  35:  PAYLOAD[2] ;
  36:   ;
  37:  !verify no part in tool ;
  38:L P[6] 1800mm/sec FINE    ;
  39:L P[7:Abv Drop] 2000mm/sec FINE    ;
  40:   ;
  41:  REQUEST CONTINUE    ;
  42:   ;
  43:  !Robot clear of conveyor ;
  44:  SET SEGMENT(33) ;
  45:   ;
  46:  //J P[8] 100% CNT100    ;
  47:J P[9] 100% CNT100    ;
  48:   ;
  49:J P[10] 100% CNT100    ;
  50:J P[11] 100% CNT100    ;
  51:J P[20] 100% CNT100    ;
  52:J P[12] 100% CNT100    ;
  53:  //J P[13] 100% CNT100    ;
  54:J P[14] 100% CNT100    ;
  55:J P[15] 100% CNT100    ;
  56:  //J P[16] 100% CNT100    ;
  57:  //J P[17] 100% CNT100    ;
  58:J P[18] 100% CNT100    ;
  59:   ;
  60:  EXIT I-ZONE(1) ;
  61:  EXIT I-ZONE(2) ;
  62:   ;
  63:  !Robot clear of all ;
  64:  SET SEGMENT(63) ;
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
	X =   574.063  mm,	Y =   -84.883  mm,	Z =  1787.977  mm,
	W =  -119.618 deg,	P =    26.748 deg,	R =  -109.815 deg
};
P[3]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   590.503  mm,	Y =   -71.319  mm,	Z =  1842.135  mm,
	W =  -137.377 deg,	P =    40.739 deg,	R =  -131.855 deg
};
P[4]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1352.790  mm,	Y =  -587.865  mm,	Z =   962.835  mm,
	W =   177.925 deg,	P =    -5.918 deg,	R =   179.650 deg
};
P[5]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1520.949  mm,	Y =  -600.197  mm,	Z =   535.081  mm,
	W =   177.882 deg,	P =    -1.307 deg,	R =  -179.702 deg
};
P[6]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1344.449  mm,	Y =  -593.144  mm,	Z =   675.050  mm,
	W =   177.839 deg,	P =    -8.313 deg,	R =   179.738 deg
};
P[7:"Abv Drop"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1103.302  mm,	Y =  -665.813  mm,	Z =  1028.007  mm,
	W =   178.175 deg,	P =     5.931 deg,	R =   179.273 deg
};
P[8]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1176.585  mm,	Y =  -439.526  mm,	Z =   992.314  mm,
	W =  -179.393 deg,	P =    12.237 deg,	R =   177.172 deg
};
P[9]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1295.910  mm,	Y =  -425.419  mm,	Z =  1033.994  mm,
	W =  -178.622 deg,	P =     9.076 deg,	R =   178.982 deg
};
P[10]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1362.917  mm,	Y =  -475.135  mm,	Z =  1538.206  mm,
	W =  -169.163 deg,	P =    29.343 deg,	R =  -178.740 deg
};
P[11]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   813.701  mm,	Y =  -504.728  mm,	Z =  2109.009  mm,
	W =  -121.954 deg,	P =    25.011 deg,	R =  -125.936 deg
};
P[12]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   822.715  mm,	Y =  -648.547  mm,	Z =  2181.901  mm,
	W =  -113.295 deg,	P =     2.895 deg,	R =  -113.613 deg
};
P[13]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   828.570  mm,	Y =  -515.627  mm,	Z =  2122.495  mm,
	W =  -127.764 deg,	P =    18.449 deg,	R =  -127.979 deg
};
P[14]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1054.982  mm,	Y =     5.976  mm,	Z =  2109.655  mm,
	W =  -121.237 deg,	P =    10.908 deg,	R =   -88.982 deg
};
P[15]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -324.143  mm,	Y =  1098.052  mm,	Z =  2026.869  mm,
	W =  -141.694 deg,	P =   -12.059 deg,	R =    39.815 deg
};
P[16]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -360.707  mm,	Y =  1269.321  mm,	Z =  2187.499  mm,
	W =  -157.003 deg,	P =   -36.154 deg,	R =    78.237 deg
};
P[17]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -377.584  mm,	Y =  1166.031  mm,	Z =  2056.427  mm,
	W =  -137.299 deg,	P =   -15.929 deg,	R =    50.884 deg
};
P[18]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1544.176  mm,	Y =  1312.796  mm,	Z =  1091.707  mm,
	W =   178.170 deg,	P =     3.650 deg,	R =   145.534 deg
};
P[19]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   590.502  mm,	Y =   -71.319  mm,	Z =  1842.135  mm,
	W =  -127.018 deg,	P =    46.804 deg,	R =  -129.574 deg
};
P[20]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   813.701  mm,	Y =  -504.728  mm,	Z =  2109.009  mm,
	W =  -112.469 deg,	P =    25.011 deg,	R =  -125.936 deg
};
/END
