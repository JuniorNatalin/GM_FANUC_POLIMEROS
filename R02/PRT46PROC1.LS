/PROG  PRT46PROC1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "s18proc1";
PROG_SIZE	= 4903;
CREATE		= DATE 22-03-05  TIME 20:35:50;
MODIFIED	= DATE 22-04-15  TIME 18:07:42;
FILE_NAME	= S18PROC1;
VERSION		= 0;
LINE_COUNT	= 94;
MEMORY_SIZE	= 5155;
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
   3:  !ROBOT: KM3200_M01_R02 ;
   4:  !STYLE: 18 ;
   5:  !ASSEMBLY: REAR_FASCIA_UPPER ;
   6:  !******************************** ;
   7:  !PROCESS SIMULATE: v15.1 ;
   8:  !TEACH: Fanuc RJ v2.72 ;
   9:  !XML  : v8.3_R30iB_GM_global4 ;
  10:  !STUDY: JCCC1_FRONT_FASCIA_UPPER ;
  11:  !USER : HZFLTF ;
  12:  !DATE : 2021-11-04 ;
  13:  !******************************** ;
  14:   ;
  15:  SET SEGMENT(22) ;
  16:   ;
  17:J P[85] 100% FINE    ;
  18:   ;
  19:  UFRAME_NUM=1 ;
  20:   ;
  21:J P[87] 100% FINE    ;
  22:J P[1] 100% FINE    ;
  23:  UFRAME_NUM=1 ;
  24:   ;
  25:J P[2] 66% CNT100    ;
  26:J P[3] 100% CNT100    ;
  27:J P[4] 100% CNT100    ;
  28:J P[5] 100% CNT100    ;
  29:J P[6] 100% CNT100    ;
  30:J P[7] 100% CNT100    ;
  31:J P[8] 100% CNT100    ;
  32:J P[9] 100% CNT100    ;
  33:J P[10] 100% CNT100    ;
  34:J P[11] 100% CNT100    ;
  35:J P[12] 100% CNT100    ;
  36:J P[13] 100% CNT100    ;
  37:J P[14] 100% CNT100    ;
  38:J P[15] 100% CNT100    ;
  39:J P[16] 100% CNT100    ;
  40:J P[17] 100% CNT100    ;
  41:J P[18] 100% CNT100    ;
  42:J P[19] 100% CNT100    ;
  43:J P[20] 100% CNT100    ;
  44:J P[21] 100% CNT100    ;
  45:J P[22] 100% CNT100    ;
  46:J P[23] 100% CNT100    ;
  47:J P[24] 100% CNT100    ;
  48:J P[25] 100% CNT100    ;
  49:J P[26] 100% CNT100    ;
  50:J P[27] 100% CNT100    ;
  51:J P[28] 100% CNT100    ;
  52:J P[29] 100% CNT100    ;
  53:J P[30] 100% CNT100    ;
  54:J P[31] 100% CNT100    ;
  55:J P[32] 66% CNT100    ;
  56:J P[33] 66% CNT100    ;
  57:J P[34] 66% CNT100    ;
  58:   ;
  59:  UFRAME_NUM=0 ;
  60:J P[37] 100% CNT100    ;
  61:  UFRAME_NUM=1 ;
  62:   ;
  63:J P[84] 100% CNT100    ;
  64:J P[39] 100% CNT100    ;
  65:  UFRAME_NUM=1 ;
  66:J P[40] 100% CNT100    ;
  67:J P[41] 100% CNT100    ;
  68:J P[42] 100% CNT100    ;
  69:J P[44] 100% CNT100    ;
  70:J P[45] 100% CNT100    ;
  71:J P[46] 100% CNT100    ;
  72:J P[47] 100% CNT100    ;
  73:J P[48] 100% CNT100    ;
  74:J P[49] 100% CNT100    ;
  75:J P[50] 100% CNT100    ;
  76:J P[52] 100% CNT100    ;
  77:J P[55] 100% CNT100    ;
  78:J P[57] 100% CNT100    ;
  79:J P[60] 100% CNT100    ;
  80:J P[61] 100% CNT100    ;
  81:J P[62] 100% CNT100    ;
  82:J P[63] 100% CNT100    ;
  83:  //J P[66] 100% CNT100    ;
  84:  //J P[67] 100% CNT100    ;
  85:J P[68] 100% CNT50    ;
  86:  //J P[69] 100% CNT100    ;
  87:  //J P[70] 100% CNT100    ;
  88:   ;
  89:J P[82] 100% CNT100    ;
  90:J P[83] 100% FINE    ;
  91:   ;
  92:  REQUEST CONTINUE    ;
  93:   ;
  94:   ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   545.109  mm,	Y =  1228.182  mm,	Z =  1485.290  mm,
	W =  -152.025 deg,	P =    24.169 deg,	R =  -121.193 deg
};
P[2]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  -519.011  mm,	Y =  -365.871  mm,	Z =   562.358  mm,
	W =    74.526 deg,	P =    14.262 deg,	R =   125.164 deg
};
P[3]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  -501.454  mm,	Y =  -338.448  mm,	Z =   628.504  mm,
	W =    80.068 deg,	P =     5.254 deg,	R =   114.921 deg
};
P[4]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  -389.879  mm,	Y =  -401.451  mm,	Z =   676.318  mm,
	W =    84.429 deg,	P =     5.247 deg,	R =   129.411 deg
};
P[5]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  -487.774  mm,	Y =  -490.687  mm,	Z =   524.543  mm,
	W =    73.448 deg,	P =     4.838 deg,	R =   119.950 deg
};
P[6]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  -633.841  mm,	Y =  -532.059  mm,	Z =   470.217  mm,
	W =    53.886 deg,	P =    20.134 deg,	R =   120.385 deg
};
P[7]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  -364.666  mm,	Y =  -494.875  mm,	Z =   468.090  mm,
	W =    71.569 deg,	P =    15.171 deg,	R =   130.688 deg
};
P[8]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  -412.756  mm,	Y =  -571.756  mm,	Z =   388.106  mm,
	W =    49.357 deg,	P =    21.755 deg,	R =   130.964 deg
};
P[9]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  -357.697  mm,	Y =  -510.681  mm,	Z =   243.120  mm,
	W =    52.438 deg,	P =    15.608 deg,	R =   129.944 deg
};
P[10]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  -338.395  mm,	Y =  -492.092  mm,	Z =   152.832  mm,
	W =    32.120 deg,	P =    18.641 deg,	R =   131.659 deg
};
P[11]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  -239.873  mm,	Y =  -503.321  mm,	Z =    98.676  mm,
	W =    28.458 deg,	P =    18.998 deg,	R =   145.563 deg
};
P[12]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  -386.278  mm,	Y =  -368.411  mm,	Z =   254.648  mm,
	W =    51.193 deg,	P =    20.905 deg,	R =   135.164 deg
};
P[13]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  -403.738  mm,	Y =  -489.084  mm,	Z =   212.292  mm,
	W =    49.719 deg,	P =     9.928 deg,	R =   138.021 deg
};
P[14]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  -550.581  mm,	Y =  -464.735  mm,	Z =   395.365  mm,
	W =    55.812 deg,	P =     8.036 deg,	R =   128.404 deg
};
P[15]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  -697.491  mm,	Y =  -495.802  mm,	Z =   370.333  mm,
	W =    55.677 deg,	P =     9.169 deg,	R =   126.678 deg
};
P[16]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  -754.283  mm,	Y =  -581.947  mm,	Z =   322.915  mm,
	W =    58.973 deg,	P =     3.562 deg,	R =   123.363 deg
};
P[17]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  -802.376  mm,	Y =  -513.088  mm,	Z =   479.449  mm,
	W =    65.821 deg,	P =    11.609 deg,	R =   126.647 deg
};
P[18]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  -948.483  mm,	Y =  -468.564  mm,	Z =   412.873  mm,
	W =    61.584 deg,	P =    11.015 deg,	R =   116.520 deg
};
P[19]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  -869.457  mm,	Y =  -534.405  mm,	Z =   367.428  mm,
	W =    59.794 deg,	P =     8.389 deg,	R =   115.111 deg
};
P[20]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  -840.698  mm,	Y =  -562.864  mm,	Z =   375.257  mm,
	W =    56.694 deg,	P =     4.439 deg,	R =   112.258 deg
};
P[21]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  -792.348  mm,	Y =  -620.828  mm,	Z =   359.883  mm,
	W =    51.709 deg,	P =    11.608 deg,	R =   109.574 deg
};
P[22]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  -758.568  mm,	Y =  -674.006  mm,	Z =   375.126  mm,
	W =    51.470 deg,	P =    12.228 deg,	R =   110.073 deg
};
P[23]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  -582.645  mm,	Y =  -702.707  mm,	Z =   443.169  mm,
	W =    47.902 deg,	P =    22.286 deg,	R =   121.154 deg
};
P[24]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  -572.935  mm,	Y =  -597.827  mm,	Z =   311.351  mm,
	W =    47.819 deg,	P =    14.335 deg,	R =   113.689 deg
};
P[25]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  -483.897  mm,	Y =  -645.741  mm,	Z =   243.220  mm,
	W =    38.698 deg,	P =     8.538 deg,	R =   115.545 deg
};
P[26]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  -359.739  mm,	Y =  -689.824  mm,	Z =   122.890  mm,
	W =    27.452 deg,	P =    10.189 deg,	R =   122.011 deg
};
P[27]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  -249.434  mm,	Y =  -574.029  mm,	Z =    40.722  mm,
	W =    22.291 deg,	P =     7.500 deg,	R =   132.483 deg
};
P[28]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  -308.593  mm,	Y =  -620.123  mm,	Z =   150.221  mm,
	W =    32.134 deg,	P =     5.883 deg,	R =   119.097 deg
};
P[29]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  -304.466  mm,	Y =  -498.804  mm,	Z =   299.195  mm,
	W =    49.658 deg,	P =     9.497 deg,	R =   114.993 deg
};
P[30]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =      .883  mm,	Y =  -634.558  mm,	Z =    80.895  mm,
	W =    24.630 deg,	P =     5.641 deg,	R =   140.636 deg
};
P[31]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   -49.803  mm,	Y =  -557.751  mm,	Z =   -15.905  mm,
	W =    18.270 deg,	P =    -1.192 deg,	R =   137.369 deg
};
P[32]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    32.641  mm,	Y =  -466.977  mm,	Z =   -52.598  mm,
	W =     8.170 deg,	P =    13.739 deg,	R =   136.699 deg
};
P[33]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   121.891  mm,	Y =  -333.179  mm,	Z =  -111.268  mm,
	W =    -4.349 deg,	P =    22.194 deg,	R =   132.745 deg
};
P[34]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   158.730  mm,	Y =  -341.089  mm,	Z =   -91.540  mm,
	W =    -4.604 deg,	P =    23.653 deg,	R =   132.261 deg
};
P[37]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1206.581  mm,	Y =   136.219  mm,	Z =  1779.083  mm,
	W =   128.786 deg,	P =    35.373 deg,	R =  -172.191 deg
};
P[39]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   443.285  mm,	Y =   605.850  mm,	Z =  1806.892  mm,
	W =  -120.793 deg,	P =     9.783 deg,	R =   -23.380 deg
};
P[40]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -448.196  mm,	Y =   268.185  mm,	Z =  -247.156  mm,
	W =     1.506 deg,	P =    -1.374 deg,	R =   -30.750 deg
};
P[41]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -486.053  mm,	Y =   150.328  mm,	Z =  -315.176  mm,
	W =     3.720 deg,	P =    -5.625 deg,	R =   -30.869 deg
};
P[42]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -487.417  mm,	Y =   -17.684  mm,	Z =  -163.850  mm,
	W =    -4.121 deg,	P =     6.358 deg,	R =   -30.833 deg
};
P[44]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -534.937  mm,	Y =  -314.786  mm,	Z =   -49.226  mm,
	W =   -19.848 deg,	P =    -1.410 deg,	R =   -26.585 deg
};
P[45]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -611.338  mm,	Y =  -206.609  mm,	Z =    14.121  mm,
	W =   -26.822 deg,	P =    -1.441 deg,	R =   -41.847 deg
};
P[46]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -634.088  mm,	Y =    37.133  mm,	Z =   182.857  mm,
	W =   -48.501 deg,	P =   -20.621 deg,	R =   -60.232 deg
};
P[47]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -670.754  mm,	Y =   -88.673  mm,	Z =   -70.014  mm,
	W =   -21.391 deg,	P =   -14.007 deg,	R =   -45.455 deg
};
P[48]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -708.241  mm,	Y =  -255.209  mm,	Z =     -.887  mm,
	W =   -23.228 deg,	P =    -5.469 deg,	R =   -36.676 deg
};
P[49]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -771.899  mm,	Y =  -314.848  mm,	Z =   -52.358  mm,
	W =   -22.873 deg,	P =    -9.363 deg,	R =   -38.249 deg
};
P[50]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -819.614  mm,	Y =  -274.439  mm,	Z =  -251.949  mm,
	W =   -13.501 deg,	P =   -17.678 deg,	R =   -47.269 deg
};
P[52]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -968.263  mm,	Y =  -168.699  mm,	Z =   162.971  mm,
	W =   -50.596 deg,	P =   -26.456 deg,	R =   -46.283 deg
};
P[55]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -976.413  mm,	Y =   -55.540  mm,	Z =   527.890  mm,
	W =   -73.013 deg,	P =   -15.993 deg,	R =   -51.913 deg
};
P[57]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1032.155  mm,	Y =    27.038  mm,	Z =   435.596  mm,
	W =   -61.284 deg,	P =    -9.082 deg,	R =   -73.936 deg
};
P[60]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1156.437  mm,	Y =    23.772  mm,	Z =   179.759  mm,
	W =   -53.590 deg,	P =    -8.756 deg,	R =   -75.251 deg
};
P[61]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -988.797  mm,	Y =    86.337  mm,	Z =   616.840  mm,
	W =   -79.861 deg,	P =   -23.080 deg,	R =   -65.010 deg
};
P[62]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -920.523  mm,	Y =  -154.991  mm,	Z =   565.153  mm,
	W =   -77.672 deg,	P =   -30.284 deg,	R =   -52.289 deg
};
P[63]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -915.422  mm,	Y =   -37.673  mm,	Z =   524.145  mm,
	W =   -76.358 deg,	P =   -29.460 deg,	R =   -56.807 deg
};
P[66]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -831.495  mm,	Y =  -147.306  mm,	Z =   138.985  mm,
	W =   -40.461 deg,	P =   -33.185 deg,	R =   -68.690 deg
};
P[67]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -783.430  mm,	Y =  -143.343  mm,	Z =    52.684  mm,
	W =   -36.934 deg,	P =   -29.709 deg,	R =   -62.395 deg
};
P[68]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -713.923  mm,	Y =  -159.671  mm,	Z =    33.497  mm,
	W =   -37.291 deg,	P =   -27.746 deg,	R =   -59.509 deg
};
P[69]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -588.966  mm,	Y =  -174.302  mm,	Z =    75.092  mm,
	W =   -34.342 deg,	P =   -17.936 deg,	R =   -49.262 deg
};
P[70]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -661.900  mm,	Y =    21.520  mm,	Z =   154.440  mm,
	W =   -35.246 deg,	P =      .068 deg,	R =   -65.829 deg
};
P[82]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -787.444  mm,	Y =  -315.326  mm,	Z =   353.648  mm,
	W =   -54.348 deg,	P =   -23.691 deg,	R =   -50.078 deg
};
P[83]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1249.159  mm,	Y =  -441.339  mm,	Z =   -26.088  mm,
	W =   -39.384 deg,	P =   -24.226 deg,	R =   -76.496 deg
};
P[84]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -626.090  mm,	Y =  -730.196  mm,	Z = -1408.307  mm,
	W =    58.195 deg,	P =   -40.048 deg,	R =    71.974 deg
};
P[85]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   403.245  mm,	Y =   832.404  mm,	Z =  1623.893  mm,
	W =  -125.587 deg,	P =   -12.891 deg,	R =   -48.297 deg
};
P[87]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -785.044  mm,	Y =  -708.431  mm,	Z =  -530.402  mm,
	W =    51.001 deg,	P =    24.537 deg,	R =    48.249 deg
};
/END
