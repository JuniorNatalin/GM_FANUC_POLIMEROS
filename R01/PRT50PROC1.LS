/PROG  PRT50PROC1
/ATTR
OWNER		= simulati;
COMMENT		= "PRT50PROC1";
PROG_SIZE	= 5564;
CREATE		= DATE 02-03-11  TIME 21:33:30;
MODIFIED	= DATE 22-03-12  TIME 16:52:04;
FILE_NAME	= PRT50PRO;
VERSION		= 0;
LINE_COUNT	= 104;
MEMORY_SIZE	= 5904;
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
/MN
   1:  !******************************** ;
   2:  !GENERAL MOTORS ;
   3:  !ROBOT: KM3200_1_R01 ;
   4:  !STYLE: 50 ;
   5:  !ASSEMBLY: REAR_FASCIA_UPPER ;
   6:  !******************************** ;
   7:  !PROCESS SIMULATE: v15.1 ;
   8:  !TEACH: Fanuc RJ v2.72 ;
   9:  !XML  : v8.3_R30iB_GM_global4 ;
  10:  !STUDY: JCCC1_FRONT_UPPER_and_REA ;
  11:  !USER : HZFLTF ;
  12:  !DATE : 2022-03-11 ;
  13:  !******************************** ;
  14:  SET SEGMENT(50) ;
  15:  UFRAME_NUM=0 ;
  16:  UTOOL_NUM=4 ;
  17:J P[1] 100% FINE    ;
  18:J P[2] 100% FINE    ;
  19:J P[3] 100% FINE    ;
  20:J P[4] 100% FINE    ;
  21:   ;
  22:  UFRAME_NUM=1 ;
  23:J P[5] 100% FINE    ;
  24:J P[6] 100% FINE    ;
  25:J P[7] 100% FINE    ;
  26:J P[8] 100% FINE    ;
  27:J P[9] 100% FINE    ;
  28:J P[10] 100% FINE    ;
  29:J P[11] 100% FINE    ;
  30:  UFRAME_NUM=0 ;
  31:J P[12] 100% FINE    ;
  32:J P[13] 100% FINE    ;
  33:  UFRAME_NUM=1 ;
  34:J P[14] 100% FINE    ;
  35:J P[15] 100% FINE    ;
  36:J P[16] 100% FINE    ;
  37:J P[17] 100% FINE    ;
  38:J P[18] 100% FINE    ;
  39:J P[19] 100% FINE    ;
  40:J P[20] 100% FINE    ;
  41:  UFRAME_NUM=0 ;
  42:J P[21] 100% FINE    ;
  43:J P[22] 100% FINE    ;
  44:L P[23] 2000mm/sec FINE    ;
  45:  UFRAME_NUM=1 ;
  46:J P[24] 100% FINE    ;
  47:J P[25] 100% FINE    ;
  48:J P[26] 100% FINE    ;
  49:J P[27] 100% FINE    ;
  50:J P[28] 100% FINE    ;
  51:J P[29] 100% FINE    ;
  52:  UFRAME_NUM=0 ;
  53:J P[30] 100% FINE    ;
  54:J P[31] 100% FINE    ;
  55:  UFRAME_NUM=1 ;
  56:J P[32] 100% FINE    ;
  57:J P[33] 100% FINE    ;
  58:J P[34] 100% FINE    ;
  59:J P[35] 100% FINE    ;
  60:J P[36] 100% FINE    ;
  61:J P[37] 100% FINE    ;
  62:  UFRAME_NUM=0 ;
  63:J P[38] 100% FINE    ;
  64:J P[39] 100% FINE    ;
  65:  UFRAME_NUM=1 ;
  66:J P[40] 100% FINE    ;
  67:J P[41] 100% FINE    ;
  68:J P[42] 100% FINE    ;
  69:J P[43] 100% FINE    ;
  70:J P[44] 100% FINE    ;
  71:  UFRAME_NUM=0 ;
  72:J P[45] 100% FINE    ;
  73:J P[46] 100% FINE    ;
  74:J P[47] 100% FINE    ;
  75:  UFRAME_NUM=1 ;
  76:J P[48] 100% FINE    ;
  77:J P[49] 100% FINE    ;
  78:J P[50] 100% FINE    ;
  79:J P[51] 100% FINE    ;
  80:J P[52] 100% FINE    ;
  81:J P[53] 100% FINE    ;
  82:J P[54] 100% FINE    ;
  83:  UFRAME_NUM=0 ;
  84:L P[55] 2000mm/sec FINE    ;
  85:L P[56] 2000mm/sec FINE    ;
  86:J P[57] 100% FINE    ;
  87:J P[58] 100% FINE    ;
  88:J P[59] 100% FINE    ;
  89:L P[60] 2000mm/sec FINE    ;
  90:L P[61] 2000mm/sec FINE    ;
  91:  UFRAME_NUM=1 ;
  92:J P[62] 100% FINE    ;
  93:J P[63] 100% FINE    ;
  94:J P[64] 100% FINE    ;
  95:J P[65] 100% FINE    ;
  96:J P[66] 100% FINE    ;
  97:J P[67] 100% FINE    ;
  98:J P[68] 100% FINE    ;
  99:J P[69] 100% FINE    ;
 100:J P[70] 100% FINE    ;
 101:J P[71] 100% FINE    ;
 102:J P[72] 100% FINE    ;
 103:J P[73] 100% FINE    ;
 104:J P[74] 100% FINE    ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X =   165.851  mm,	Y = -2411.062  mm,	Z =   509.290  mm,
	W =   179.924 deg,	P =    14.537 deg,	R =   -91.974 deg
};
P[2]{
   GP1:
	UF : 0, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X =  -753.773  mm,	Y = -3127.683  mm,	Z =   589.375  mm,
	W =  -177.350 deg,	P =     5.674 deg,	R =   -95.474 deg
};
P[3]{
   GP1:
	UF : 0, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X = -1447.426  mm,	Y = -3203.929  mm,	Z =   352.638  mm,
	W =  -178.082 deg,	P =    -1.538 deg,	R =   -97.591 deg
};
P[4]{
   GP1:
	UF : 0, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X = -1481.903  mm,	Y = -3255.987  mm,	Z =   376.496  mm,
	W =  -178.082 deg,	P =    -1.538 deg,	R =   -97.591 deg
};
P[5]{
   GP1:
	UF : 1, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X =  1141.170  mm,	Y =  -132.892  mm,	Z =  -139.292  mm,
	W =   163.914 deg,	P =    58.559 deg,	R =   -48.949 deg
};
P[6]{
   GP1:
	UF : 1, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X =  1148.403  mm,	Y =  -128.582  mm,	Z =  -103.319  mm,
	W =   163.764 deg,	P =    56.112 deg,	R =   -48.532 deg
};
P[7]{
   GP1:
	UF : 1, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X =  1153.663  mm,	Y =  -133.633  mm,	Z =  -101.847  mm,
	W =   163.764 deg,	P =    56.112 deg,	R =   -48.532 deg
};
P[8]{
   GP1:
	UF : 1, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X =  1163.656  mm,	Y =  -125.869  mm,	Z =   -44.867  mm,
	W =   165.362 deg,	P =    53.279 deg,	R =   -46.492 deg
};
P[9]{
   GP1:
	UF : 1, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X =  1169.361  mm,	Y =  -129.838  mm,	Z =   -34.844  mm,
	W =   165.506 deg,	P =    52.811 deg,	R =   -46.273 deg
};
P[10]{
   GP1:
	UF : 1, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X =  1173.147  mm,	Y =  -134.511  mm,	Z =   -35.394  mm,
	W =   165.947 deg,	P =    53.151 deg,	R =   -45.932 deg
};
P[11]{
   GP1:
	UF : 1, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X =  1176.252  mm,	Y =  -139.373  mm,	Z =   -38.988  mm,
	W =   166.643 deg,	P =    53.790 deg,	R =   -45.412 deg
};
P[12]{
   GP1:
	UF : 0, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X = -1366.813  mm,	Y = -2938.727  mm,	Z =   424.650  mm,
	W =  -174.831 deg,	P =    -1.477 deg,	R =   -90.474 deg
};
P[13]{
   GP1:
	UF : 0, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X = -1522.273  mm,	Y = -2633.341  mm,	Z =   438.794  mm,
	W =  -169.443 deg,	P =      .800 deg,	R =   -82.223 deg
};
P[14]{
   GP1:
	UF : 1, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X =  1100.094  mm,	Y =  -338.517  mm,	Z =   410.031  mm,
	W =  -165.500 deg,	P =    62.726 deg,	R =   -31.115 deg
};
P[15]{
   GP1:
	UF : 1, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X =  1124.502  mm,	Y =  -350.594  mm,	Z =   350.532  mm,
	W =  -162.666 deg,	P =    65.870 deg,	R =   -27.880 deg
};
P[16]{
   GP1:
	UF : 1, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X =  1129.030  mm,	Y =  -356.028  mm,	Z =   348.690  mm,
	W =  -162.812 deg,	P =    65.876 deg,	R =   -28.005 deg
};
P[17]{
   GP1:
	UF : 1, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X =  1139.179  mm,	Y =  -362.118  mm,	Z =   320.688  mm,
	W =  -161.078 deg,	P =    67.312 deg,	R =   -26.140 deg
};
P[18]{
   GP1:
	UF : 1, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X =  1144.992  mm,	Y =  -367.511  mm,	Z =   307.572  mm,
	W =  -160.201 deg,	P =    67.929 deg,	R =   -25.220 deg
};
P[19]{
   GP1:
	UF : 1, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X =  1147.813  mm,	Y =  -370.245  mm,	Z =   305.808  mm,
	W =  -160.585 deg,	P =    67.946 deg,	R =   -25.555 deg
};
P[20]{
   GP1:
	UF : 1, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X =  1147.645  mm,	Y =  -372.167  mm,	Z =   316.107  mm,
	W =  -161.872 deg,	P =    67.328 deg,	R =   -26.833 deg
};
P[21]{
   GP1:
	UF : 0, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X = -1496.863  mm,	Y = -2920.925  mm,	Z =   490.704  mm,
	W =  -169.819 deg,	P =     5.594 deg,	R =   -81.074 deg
};
P[22]{
   GP1:
	UF : 0, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X = -1503.310  mm,	Y = -3013.463  mm,	Z =   447.290  mm,
	W =   173.629 deg,	P =     4.956 deg,	R =   -87.065 deg
};
P[23]{
   GP1:
	UF : 0, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X = -1434.324  mm,	Y = -3041.716  mm,	Z =   348.645  mm,
	W =   158.417 deg,	P =   -13.587 deg,	R =   -99.739 deg
};
P[24]{
   GP1:
	UF : 1, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X =  1261.632  mm,	Y =   150.648  mm,	Z =   161.519  mm,
	W =   157.163 deg,	P =    50.244 deg,	R =   -29.351 deg
};
P[25]{
   GP1:
	UF : 1, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X =  1257.778  mm,	Y =   139.201  mm,	Z =   164.586  mm,
	W =   157.163 deg,	P =    50.244 deg,	R =   -29.351 deg
};
P[26]{
   GP1:
	UF : 1, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X =  1256.924  mm,	Y =   132.325  mm,	Z =   166.429  mm,
	W =   157.163 deg,	P =    50.244 deg,	R =   -29.351 deg
};
P[27]{
   GP1:
	UF : 1, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X =  1254.411  mm,	Y =   125.617  mm,	Z =   168.226  mm,
	W =   157.163 deg,	P =    50.244 deg,	R =   -29.351 deg
};
P[28]{
   GP1:
	UF : 1, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X =  1253.632  mm,	Y =   118.292  mm,	Z =   170.189  mm,
	W =   157.163 deg,	P =    50.244 deg,	R =   -29.351 deg
};
P[29]{
   GP1:
	UF : 1, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X =  1252.242  mm,	Y =   111.350  mm,	Z =   172.001  mm,
	W =   157.163 deg,	P =    50.244 deg,	R =   -29.351 deg
};
P[30]{
   GP1:
	UF : 0, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X = -1432.783  mm,	Y = -3027.335  mm,	Z =   451.819  mm,
	W =   158.417 deg,	P =   -13.587 deg,	R =   -99.739 deg
};
P[31]{
   GP1:
	UF : 0, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X = -1299.921  mm,	Y = -2771.860  mm,	Z =   273.487  mm,
	W =   155.568 deg,	P =    -6.899 deg,	R =   -83.845 deg
};
P[32]{
   GP1:
	UF : 1, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X =  1289.353  mm,	Y =  -111.164  mm,	Z =   103.962  mm,
	W =  -143.991 deg,	P =    66.282 deg,	R =    14.024 deg
};
P[33]{
   GP1:
	UF : 1, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X =  1284.396  mm,	Y =  -120.161  mm,	Z =   101.422  mm,
	W =  -143.991 deg,	P =    66.282 deg,	R =    14.024 deg
};
P[34]{
   GP1:
	UF : 1, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X =  1282.513  mm,	Y =  -127.668  mm,	Z =    99.411  mm,
	W =  -143.991 deg,	P =    66.282 deg,	R =    14.024 deg
};
P[35]{
   GP1:
	UF : 1, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X =  1279.918  mm,	Y =  -133.637  mm,	Z =    97.811  mm,
	W =  -143.991 deg,	P =    66.282 deg,	R =    14.024 deg
};
P[36]{
   GP1:
	UF : 1, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X =  1279.040  mm,	Y =  -139.325  mm,	Z =    96.287  mm,
	W =  -143.991 deg,	P =    66.282 deg,	R =    14.024 deg
};
P[37]{
   GP1:
	UF : 1, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X =  1277.871  mm,	Y =  -143.984  mm,	Z =    95.039  mm,
	W =  -143.991 deg,	P =    66.282 deg,	R =    14.024 deg
};
P[38]{
   GP1:
	UF : 0, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X = -1644.607  mm,	Y = -2984.783  mm,	Z =   512.104  mm,
	W =   156.324 deg,	P =    -9.982 deg,	R =  -101.923 deg
};
P[39]{
   GP1:
	UF : 0, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X = -1781.193  mm,	Y = -2934.280  mm,	Z =   524.938  mm,
	W =   140.305 deg,	P =   -13.099 deg,	R =   -98.957 deg
};
P[40]{
   GP1:
	UF : 1, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X =  1245.499  mm,	Y =   -99.357  mm,	Z =   227.665  mm,
	W =   153.275 deg,	P =    54.318 deg,	R =   -15.100 deg
};
P[41]{
   GP1:
	UF : 1, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X =  1246.473  mm,	Y =  -109.118  mm,	Z =   230.281  mm,
	W =   153.275 deg,	P =    54.318 deg,	R =   -15.100 deg
};
P[42]{
   GP1:
	UF : 1, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X =  1246.937  mm,	Y =  -116.553  mm,	Z =   232.273  mm,
	W =   153.275 deg,	P =    54.318 deg,	R =   -15.100 deg
};
P[43]{
   GP1:
	UF : 1, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X =  1248.079  mm,	Y =  -123.146  mm,	Z =   234.040  mm,
	W =   153.275 deg,	P =    54.318 deg,	R =   -15.100 deg
};
P[44]{
   GP1:
	UF : 1, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X =  1250.511  mm,	Y =  -132.840  mm,	Z =   236.637  mm,
	W =   153.275 deg,	P =    54.318 deg,	R =   -15.100 deg
};
P[45]{
   GP1:
	UF : 0, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X = -1781.193  mm,	Y = -2934.280  mm,	Z =   524.938  mm,
	W =   140.305 deg,	P =   -13.099 deg,	R =   -98.957 deg
};
P[46]{
   GP1:
	UF : 0, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X = -1695.783  mm,	Y = -2784.844  mm,	Z =   441.422  mm,
	W =   140.608 deg,	P =     2.678 deg,	R =   -74.577 deg
};
P[47]{
   GP1:
	UF : 0, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X = -1748.686  mm,	Y = -2792.048  mm,	Z =   408.099  mm,
	W =   140.608 deg,	P =     2.678 deg,	R =   -74.577 deg
};
P[48]{
   GP1:
	UF : 1, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X =  1245.636  mm,	Y =  -326.096  mm,	Z =    46.414  mm,
	W =  -146.536 deg,	P =    61.349 deg,	R =    30.003 deg
};
P[49]{
   GP1:
	UF : 1, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X =  1229.412  mm,	Y =  -363.275  mm,	Z =   150.662  mm,
	W =  -151.491 deg,	P =    57.217 deg,	R =    24.428 deg
};
P[50]{
   GP1:
	UF : 1, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X =  1229.382  mm,	Y =  -368.113  mm,	Z =   149.394  mm,
	W =  -151.491 deg,	P =    57.217 deg,	R =    24.428 deg
};
P[51]{
   GP1:
	UF : 1, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X =  1229.353  mm,	Y =  -372.950  mm,	Z =   148.128  mm,
	W =  -151.491 deg,	P =    57.217 deg,	R =    24.428 deg
};
P[52]{
   GP1:
	UF : 1, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X =  1229.324  mm,	Y =  -377.786  mm,	Z =   146.860  mm,
	W =  -151.491 deg,	P =    57.217 deg,	R =    24.428 deg
};
P[53]{
   GP1:
	UF : 1, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X =  1229.321  mm,	Y =  -382.615  mm,	Z =   145.566  mm,
	W =  -151.491 deg,	P =    57.217 deg,	R =    24.428 deg
};
P[54]{
   GP1:
	UF : 1, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X =  1245.416  mm,	Y =  -365.261  mm,	Z =    35.544  mm,
	W =  -146.358 deg,	P =    61.295 deg,	R =    30.158 deg
};
P[55]{
   GP1:
	UF : 0, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X = -1689.327  mm,	Y = -2944.920  mm,	Z =   489.798  mm,
	W =   125.572 deg,	P =   -11.094 deg,	R =  -106.800 deg
};
P[56]{
   GP1:
	UF : 0, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X = -1773.155  mm,	Y = -2948.043  mm,	Z =   361.845  mm,
	W =   125.572 deg,	P =   -11.094 deg,	R =  -106.800 deg
};
P[57]{
   GP1:
	UF : 0, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X = -2032.919  mm,	Y = -2911.562  mm,	Z =   531.139  mm,
	W =   125.572 deg,	P =   -11.094 deg,	R =  -106.800 deg
};
P[58]{
   GP1:
	UF : 0, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X = -1759.410  mm,	Y = -2910.366  mm,	Z =   392.451  mm,
	W =   101.635 deg,	P =   -17.291 deg,	R =  -101.235 deg
};
P[59]{
   GP1:
	UF : 0, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X = -1756.620  mm,	Y = -3132.320  mm,	Z =   396.039  mm,
	W =   101.635 deg,	P =   -17.291 deg,	R =  -101.235 deg
};
P[60]{
   GP1:
	UF : 0, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X = -1995.668  mm,	Y = -3089.176  mm,	Z =   443.640  mm,
	W =   124.435 deg,	P =   -11.094 deg,	R =  -105.737 deg
};
P[61]{
   GP1:
	UF : 0, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X = -2025.215  mm,	Y = -3134.226  mm,	Z =   464.097  mm,
	W =   124.435 deg,	P =   -11.094 deg,	R =  -105.737 deg
};
P[62]{
   GP1:
	UF : 1, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X =  1175.381  mm,	Y =  -101.609  mm,	Z =   -46.214  mm,
	W =   139.039 deg,	P =    62.775 deg,	R =   -12.403 deg
};
P[63]{
   GP1:
	UF : 1, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X =  1171.665  mm,	Y =  -103.749  mm,	Z =   -41.625  mm,
	W =   139.485 deg,	P =    62.618 deg,	R =   -11.954 deg
};
P[64]{
   GP1:
	UF : 1, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X =  1167.576  mm,	Y =  -107.630  mm,	Z =   -43.719  mm,
	W =   139.557 deg,	P =    62.761 deg,	R =   -11.925 deg
};
P[65]{
   GP1:
	UF : 1, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X =  1159.622  mm,	Y =  -122.028  mm,	Z =   -76.000  mm,
	W =   136.036 deg,	P =    64.198 deg,	R =   -15.536 deg
};
P[66]{
   GP1:
	UF : 1, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X =  1153.657  mm,	Y =  -126.234  mm,	Z =   -75.347  mm,
	W =   136.156 deg,	P =    64.227 deg,	R =   -15.433 deg
};
P[67]{
   GP1:
	UF : 1, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X =  1138.445  mm,	Y =  -151.671  mm,	Z =  -142.474  mm,
	W =   127.660 deg,	P =    66.907 deg,	R =   -24.014 deg
};
P[68]{
   GP1:
	UF : 1, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X =   950.008  mm,	Y =   577.592  mm,	Z =   566.587  mm,
	W =  -165.634 deg,	P =    43.098 deg,	R =    77.875 deg
};
P[69]{
   GP1:
	UF : 1, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X =   945.654  mm,	Y =   577.200  mm,	Z =   563.063  mm,
	W =  -166.680 deg,	P =    43.988 deg,	R =    77.003 deg
};
P[70]{
   GP1:
	UF : 1, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X =   945.559  mm,	Y =   571.547  mm,	Z =   558.664  mm,
	W =  -166.551 deg,	P =    44.082 deg,	R =    77.122 deg
};
P[71]{
   GP1:
	UF : 1, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X =   943.175  mm,	Y =   565.714  mm,	Z =   562.335  mm,
	W =  -166.853 deg,	P =    43.963 deg,	R =    76.849 deg
};
P[72]{
   GP1:
	UF : 1, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X =   938.293  mm,	Y =   535.301  mm,	Z =   588.079  mm,
	W =  -166.712 deg,	P =    41.727 deg,	R =    76.872 deg
};
P[73]{
   GP1:
	UF : 1, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X =   943.189  mm,	Y =   570.800  mm,	Z =   533.781  mm,
	W =  -166.848 deg,	P =    45.857 deg,	R =    76.953 deg
};
P[74]{
   GP1:
	UF : 1, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X =   940.298  mm,	Y =   562.474  mm,	Z =   534.330  mm,
	W =  -167.035 deg,	P =    45.884 deg,	R =    76.785 deg
};
/END
