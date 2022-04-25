/PROG  PRT13PROC1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "DEGATE 331";
PROG_SIZE	= 5235;
CREATE		= DATE 21-06-08  TIME 18:34:56;
MODIFIED	= DATE 21-06-08  TIME 21:30:00;
FILE_NAME	= PRT17PRO;
VERSION		= 0;
LINE_COUNT	= 118;
MEMORY_SIZE	= 5667;
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
   1:  !TOOL 07 DEGATE ;
   2:   ;
   3:  IF DO[66:OFF]=ON,JMP LBL[99] ;
   4:  SET SEGMENT(22) ;
   5:  !TOOL 02 DEGATE ;
   6:   ;
   7:  IF DO[66:OFF]=ON,JMP LBL[99] ;
   8:  SET SEGMENT(22) ;
   9:  ENTER I-ZONE(1) ;
  10:  ENTER I-ZONE(2) ;
  11:   ;
  12:  Set MH Tool(7) ;
  13:   ;
  14:  UTOOL_NUM=7 ;
  15:  UFRAME_NUM=0 ;
  16:  PAYLOAD[7] ;
  17:   ;
  18:  !Request Knife Repo ;
  19:  CALL REQ_KNIFE_AT_WK    ;
  20:   ;
  21:J P[1] 100% CNT100    ;
  22:  //J P[2] 100% CNT100    ;
  23:  //    ;
  24:  //L P[3] 2000mm/sec CNT50    ;
  25:  //L P[4] 500mm/sec CNT10    ;
  26:  //    ;
  27:  //!Swipe1 ;
  28:  //L P[5] 500mm/sec FINE    ;
  29:  //L P[6] 500mm/sec FINE    ;
  30:  //L P[7] 500mm/sec FINE    ;
  31:  //L P[8] 500mm/sec FINE    ;
  32:  //    ;
  33:  //L P[9] 1000mm/sec FINE    ;
  34:  //L P[10] 1000mm/sec FINE    ;
  35:  //L P[11] 1000mm/sec CNT50    ;
  36:  //    ;
  37:  //!Swipe2 ;
  38:  //L P[12] 500mm/sec FINE    ;
  39:  //L P[13] 500mm/sec FINE    ;
  40:  //L P[14] 500mm/sec FINE    ;
  41:  //    ;
  42:  //L P[15] 2000mm/sec CNT50    ;
  43:  //L P[16] 2000mm/sec CNT100    ;
  44:  //L P[17] 2000mm/sec CNT50    ;
  45:  //L P[18] 2000mm/sec CNT50    ;
  46:  //L P[19] 2000mm/sec CNT50    ;
  47:  //L P[20] 2000mm/sec CNT50    ;
  48:  //    ;
  49:  //!Swipe3 ;
  50:  //L P[21] 500mm/sec FINE    ;
  51:  //L P[22] 500mm/sec FINE    ;
  52:  //L P[23] 500mm/sec FINE    ;
  53:  //L P[24] 500mm/sec FINE    ;
  54:  //    ;
  55:  //L P[25] 2000mm/sec CNT50    ;
  56:  //L P[26] 2000mm/sec CNT50    ;
  57:  //L P[27] 2000mm/sec CNT50    ;
  58:  //L P[28] 2000mm/sec CNT50    ;
  59:  //    ;
  60:  //!Swipe4 ;
  61:  //L P[29] 500mm/sec FINE    ;
  62:  //L P[30] 500mm/sec FINE    ;
  63:  //L P[31] 500mm/sec FINE    ;
  64:  //L P[32] 500mm/sec FINE    ;
  65:  //L P[33] 500mm/sec FINE    ;
  66:  //L P[34] 500mm/sec FINE    ;
  67:  //    ;
  68:  //L P[35] 2000mm/sec CNT50    ;
  69:  //L P[36] 2000mm/sec CNT100    ;
  70:  //L P[37] 2000mm/sec CNT50    ;
  71:  //L P[38] 2000mm/sec CNT50    ;
  72:  //    ;
  73:  //!Swipe5 ;
  74:  //L P[39] 500mm/sec FINE    ;
  75:  //L P[40] 300mm/sec FINE    ;
  76:  //L P[41] 300mm/sec FINE    ;
  77:  //L P[42] 500mm/sec FINE    ;
  78:  //    ;
  79:  //L P[43] 1000mm/sec CNT100    ;
  80:  //L P[44] 1000mm/sec CNT100    ;
  81:  //    ;
  82:  //J P[45] 100% CNT100    ;
  83:  //J P[46] 100% CNT100    ;
  84:  //    ;
  85:  //L P[47] 1000mm/sec CNT50    ;
  86:  //L P[48] 200mm/sec CNT30    ;
  87:  //    ;
  88:  //!Swipe6 ;
  89:  //L P[49] 500mm/sec FINE    ;
  90:  //L P[50] 300mm/sec FINE    ;
  91:  //L P[51] 500mm/sec FINE    ;
  92:  //L P[52] 500mm/sec FINE    ;
  93:  //    ;
  94:  //L P[53] 200mm/sec CNT100    ;
  95:  //L P[54] 1000mm/sec CNT100    ;
  96:  //L P[55] 200mm/sec CNT100    ;
  97:  //L P[68] 200mm/sec CNT100    ;
  98:  //L P[64] 2000mm/sec CNT100    ;
  99:  //    ;
 100:  //L P[57] 200mm/sec CNT50    ;
 101:  //L P[58] 200mm/sec FINE    ;
 102:  //    ;
 103:  //!Swipe7 ;
 104:  //L P[60] 500mm/sec FINE    ;
 105:  //    ;
 106:  //L P[61] 2000mm/sec CNT100    ;
 107:  //L P[62] 2000mm/sec CNT100    ;
 108:  //L P[63] 200mm/sec CNT100    ;
 109:  //    ;
 110:  //J P[66] 100% CNT100    ;
 111:  //J P[69] 100% CNT100    ;
 112:  //J P[56] 100% CNT100    ;
 113:  //J P[67] 100% CNT100    ;
 114:  //    ;
 115:  //LBL[*99:PROGRAM END] ;
 116:  //END ;
 117:  //CALL REQ_KNIFE_AT_HM    ;
 118:   ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =   663.381  mm,	Y = -2475.163  mm,	Z =  1063.155  mm,
	W =  -175.130 deg,	P =     -.502 deg,	R =   -86.319 deg
};
P[2]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1722.200  mm,	Y = -2904.754  mm,	Z =   368.161  mm,
	W =   155.239 deg,	P =     8.853 deg,	R =   -81.946 deg
};
P[3]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1930.191  mm,	Y = -2885.311  mm,	Z =    69.916  mm,
	W =   155.518 deg,	P =     6.414 deg,	R =   -79.661 deg
};
P[4]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1936.444  mm,	Y = -2890.736  mm,	Z =     8.567  mm,
	W =   155.519 deg,	P =     6.414 deg,	R =   -79.661 deg
};
P[5]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1920.583  mm,	Y = -2892.100  mm,	Z =    -7.583  mm,
	W =   155.602 deg,	P =     6.743 deg,	R =   -78.933 deg
};
P[6]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1912.092  mm,	Y = -2889.964  mm,	Z =   -11.521  mm,
	W =   155.602 deg,	P =     6.743 deg,	R =   -78.933 deg
};
P[7]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1907.210  mm,	Y = -2888.736  mm,	Z =   -13.786  mm,
	W =   155.602 deg,	P =     6.743 deg,	R =   -78.933 deg
};
P[8]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1892.989  mm,	Y = -2885.159  mm,	Z =   -20.382  mm,
	W =   155.602 deg,	P =     6.743 deg,	R =   -78.933 deg
};
P[9]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1874.256  mm,	Y = -2870.980  mm,	Z =   -28.802  mm,
	W =   155.602 deg,	P =     6.743 deg,	R =   -78.933 deg
};
P[10]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1851.227  mm,	Y = -2863.351  mm,	Z =   -54.747  mm,
	W =   155.602 deg,	P =     6.743 deg,	R =   -78.933 deg
};
P[11]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1841.398  mm,	Y = -2876.517  mm,	Z =   -59.748  mm,
	W =   155.602 deg,	P =     6.743 deg,	R =   -78.933 deg
};
P[12]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1829.723  mm,	Y = -2873.581  mm,	Z =   -65.163  mm,
	W =   155.602 deg,	P =     6.742 deg,	R =   -78.933 deg
};
P[13]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1824.083  mm,	Y = -2872.162  mm,	Z =   -67.778  mm,
	W =   155.602 deg,	P =     6.742 deg,	R =   -78.933 deg
};
P[14]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1811.711  mm,	Y = -2869.050  mm,	Z =   -73.516  mm,
	W =   155.602 deg,	P =     6.742 deg,	R =   -78.933 deg
};
P[15]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1791.547  mm,	Y = -2863.978  mm,	Z =   -82.870  mm,
	W =   155.602 deg,	P =     6.742 deg,	R =   -78.933 deg
};
P[16]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1799.057  mm,	Y = -2825.580  mm,	Z =   -78.244  mm,
	W =   155.602 deg,	P =     6.742 deg,	R =   -78.933 deg
};
P[17]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1749.761  mm,	Y = -2828.542  mm,	Z =    26.440  mm,
	W =   155.602 deg,	P =     6.742 deg,	R =   -78.932 deg
};
P[18]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1884.920  mm,	Y = -2850.084  mm,	Z =    73.370  mm,
	W =   155.602 deg,	P =     6.742 deg,	R =   -78.932 deg
};
P[19]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1883.860  mm,	Y = -2807.125  mm,	Z =     8.238  mm,
	W =   155.281 deg,	P =     5.510 deg,	R =   -81.740 deg
};
P[20]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1883.537  mm,	Y = -2806.507  mm,	Z =     7.094  mm,
	W =   155.333 deg,	P =     5.730 deg,	R =   -81.243 deg
};
P[21]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1864.794  mm,	Y = -2802.738  mm,	Z =    -1.632  mm,
	W =   155.333 deg,	P =     5.729 deg,	R =   -81.243 deg
};
P[22]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1829.479  mm,	Y = -2795.635  mm,	Z =   -18.079  mm,
	W =   155.333 deg,	P =     5.729 deg,	R =   -81.243 deg
};
P[23]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1815.858  mm,	Y = -2792.894  mm,	Z =   -24.421  mm,
	W =   155.333 deg,	P =     5.729 deg,	R =   -81.243 deg
};
P[24]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1847.318  mm,	Y = -2794.912  mm,	Z =   -14.309  mm,
	W =   155.602 deg,	P =     6.741 deg,	R =   -78.932 deg
};
P[25]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1835.219  mm,	Y = -2791.868  mm,	Z =   -19.920  mm,
	W =   155.602 deg,	P =     6.741 deg,	R =   -78.932 deg
};
P[26]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1797.334  mm,	Y = -2842.958  mm,	Z =    41.084  mm,
	W =   155.602 deg,	P =     6.741 deg,	R =   -78.932 deg
};
P[27]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1254.568  mm,	Y = -3046.217  mm,	Z =  -350.212  mm,
	W =   145.821 deg,	P =     6.740 deg,	R =   -78.932 deg
};
P[28]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1275.868  mm,	Y = -3057.294  mm,	Z =  -412.698  mm,
	W =   145.821 deg,	P =     6.740 deg,	R =   -78.931 deg
};
P[29]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1286.312  mm,	Y = -3097.012  mm,	Z =  -436.921  mm,
	W =   145.825 deg,	P =     4.385 deg,	R =   -83.290 deg
};
P[30]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1271.356  mm,	Y = -3087.956  mm,	Z =  -452.957  mm,
	W =   145.825 deg,	P =     4.385 deg,	R =   -83.290 deg
};
P[31]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1229.112  mm,	Y = -3083.652  mm,	Z =  -444.344  mm,
	W =   145.825 deg,	P =     4.385 deg,	R =   -83.290 deg
};
P[32]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1209.745  mm,	Y = -3062.659  mm,	Z =  -437.060  mm,
	W =   145.085 deg,	P =     1.867 deg,	R =   -81.527 deg
};
P[33]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1261.538  mm,	Y = -3109.097  mm,	Z =  -435.807  mm,
	W =   144.328 deg,	P =     3.918 deg,	R =   -83.071 deg
};
P[34]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1254.625  mm,	Y = -3107.906  mm,	Z =  -440.851  mm,
	W =   143.722 deg,	P =     3.918 deg,	R =   -83.071 deg
};
P[35]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1157.379  mm,	Y = -3171.290  mm,	Z =  -261.792  mm,
	W =   145.420 deg,	P =     3.918 deg,	R =   -83.071 deg
};
P[36]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1378.522  mm,	Y = -3400.004  mm,	Z =  -102.676  mm,
	W =   145.437 deg,	P =     3.918 deg,	R =   -83.071 deg
};
P[37]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1446.545  mm,	Y = -3398.398  mm,	Z =  -210.583  mm,
	W =   145.437 deg,	P =     3.918 deg,	R =   -83.071 deg
};
P[38]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1427.958  mm,	Y = -3358.951  mm,	Z =  -272.659  mm,
	W =   145.437 deg,	P =     3.918 deg,	R =   -83.071 deg
};
P[39]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1420.350  mm,	Y = -3357.661  mm,	Z =  -277.956  mm,
	W =   145.437 deg,	P =     3.917 deg,	R =   -83.070 deg
};
P[40]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1410.484  mm,	Y = -3355.989  mm,	Z =  -284.825  mm,
	W =   145.437 deg,	P =     3.917 deg,	R =   -83.070 deg
};
P[41]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1396.606  mm,	Y = -3353.636  mm,	Z =  -294.489  mm,
	W =   145.437 deg,	P =     3.917 deg,	R =   -83.070 deg
};
P[42]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1382.963  mm,	Y = -3351.201  mm,	Z =  -305.743  mm,
	W =   145.437 deg,	P =     3.917 deg,	R =   -83.070 deg
};
P[43]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1401.824  mm,	Y = -3407.347  mm,	Z =  -275.020  mm,
	W =   145.437 deg,	P =     3.918 deg,	R =   -83.071 deg
};
P[44]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1213.058  mm,	Y = -3403.179  mm,	Z =    -2.913  mm,
	W =   145.437 deg,	P =     3.918 deg,	R =   -83.071 deg
};
P[45]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1272.216  mm,	Y = -3222.908  mm,	Z =   -45.413  mm,
	W =   139.412 deg,	P =    21.447 deg,	R =   -67.918 deg
};
P[46]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 1',
	X = -1618.208  mm,	Y = -2154.594  mm,	Z =   478.905  mm,
	W =  -152.352 deg,	P =    -5.167 deg,	R =    85.137 deg
};
P[47]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 1',
	X = -1939.436  mm,	Y = -2147.987  mm,	Z =   267.548  mm,
	W =  -152.352 deg,	P =    -5.167 deg,	R =    85.137 deg
};
P[48]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 1',
	X = -2040.215  mm,	Y = -2179.732  mm,	Z =   288.306  mm,
	W =  -153.055 deg,	P =   -10.984 deg,	R =    96.364 deg
};
P[49]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 1',
	X = -2019.223  mm,	Y = -2179.779  mm,	Z =   300.512  mm,
	W =  -153.055 deg,	P =   -10.984 deg,	R =    96.364 deg
};
P[50]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 1',
	X = -1978.482  mm,	Y = -2171.203  mm,	Z =   279.829  mm,
	W =  -153.102 deg,	P =   -11.107 deg,	R =    96.611 deg
};
P[51]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 1',
	X = -1983.882  mm,	Y = -2170.779  mm,	Z =   282.627  mm,
	W =  -153.000 deg,	P =   -10.842 deg,	R =    96.080 deg
};
P[52]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 1',
	X = -1959.223  mm,	Y = -2169.342  mm,	Z =   288.798  mm,
	W =  -153.000 deg,	P =   -10.842 deg,	R =    96.079 deg
};
P[53]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 1',
	X = -1911.836  mm,	Y = -2147.988  mm,	Z =   267.548  mm,
	W =  -152.352 deg,	P =    -5.167 deg,	R =    85.137 deg
};
P[54]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 1',
	X = -1863.004  mm,	Y = -2160.721  mm,	Z =   362.100  mm,
	W =  -152.352 deg,	P =    -5.167 deg,	R =    85.137 deg
};
P[55]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 1',
	X = -1906.640  mm,	Y = -2355.787  mm,	Z =   301.230  mm,
	W =  -152.352 deg,	P =    -5.167 deg,	R =    85.137 deg
};
P[56]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =  -213.932  mm,	Y = -2471.756  mm,	Z =   914.826  mm,
	W =   153.881 deg,	P =    14.284 deg,	R =   -71.493 deg
};
P[57]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 1',
	X = -1815.706  mm,	Y = -2249.041  mm,	Z =    69.560  mm,
	W =  -146.857 deg,	P =    -9.828 deg,	R =   106.933 deg
};
P[58]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 1',
	X = -1836.871  mm,	Y = -2237.240  mm,	Z =    80.868  mm,
	W =  -147.288 deg,	P =   -10.538 deg,	R =   109.298 deg
};
P[60]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 1',
	X = -1693.787  mm,	Y = -2183.647  mm,	Z =   318.120  mm,
	W =  -147.235 deg,	P =   -10.352 deg,	R =   109.003 deg
};
P[61]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 1',
	X = -1693.787  mm,	Y = -2183.647  mm,	Z =   318.119  mm,
	W =  -145.827 deg,	P =     1.029 deg,	R =    91.889 deg
};
P[62]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 1',
	X = -1627.747  mm,	Y = -2179.538  mm,	Z =   425.593  mm,
	W =  -146.416 deg,	P =     6.806 deg,	R =    83.283 deg
};
P[63]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 1',
	X = -1627.747  mm,	Y = -2179.538  mm,	Z =   425.593  mm,
	W =  -145.017 deg,	P =    16.661 deg,	R =    90.128 deg
};
P[64]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 1',
	X = -1871.406  mm,	Y = -2263.943  mm,	Z =    65.289  mm,
	W =  -146.856 deg,	P =    -9.828 deg,	R =   106.933 deg
};
P[66]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1329.830  mm,	Y = -2027.185  mm,	Z =  1038.948  mm,
	W =  -147.093 deg,	P =    64.364 deg,	R =    58.355 deg
};
P[67]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =   663.375  mm,	Y = -2475.173  mm,	Z =  1063.052  mm,
	W =  -175.130 deg,	P =     -.498 deg,	R =   -86.320 deg
};
P[68]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 1',
	X = -1893.105  mm,	Y = -2251.442  mm,	Z =   108.921  mm,
	W =  -147.237 deg,	P =   -10.352 deg,	R =   109.003 deg
};
P[69]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1188.750  mm,	Y = -2532.124  mm,	Z =  1055.432  mm,
	W =   113.589 deg,	P =    30.373 deg,	R =   -65.542 deg
};
/END
