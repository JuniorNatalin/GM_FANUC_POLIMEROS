/PROG  PRT43PROC1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "DEGATE 377";
PROG_SIZE	= 4564;
CREATE		= DATE 19-10-09  TIME 13:44:26;
MODIFIED	= DATE 19-10-09  TIME 13:44:26;
FILE_NAME	= PRT43PRO;
VERSION		= 0;
LINE_COUNT	= 115;
MEMORY_SIZE	= 5000;
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
   9:   ;
  10:  Set MH Tool(9) ;
  11:   ;
  12:  UTOOL_NUM=9 ;
  13:  UFRAME_NUM=0 ;
  14:  PAYLOAD[9] ;
  15:   ;
  16:  !Request Knife Repo ;
  17:  CALL REQ_KNIFE_AT_WK    ;
  18:   ;
  19:J P[1] 100% CNT100    ;
  20:J P[2] 100% CNT100    ;
  21:   ;
  22:L P[3] 2000mm/sec CNT50    ;
  23:L P[4] 1000mm/sec CNT10    ;
  24:   ;
  25:  !Swipe1 ;
  26:L P[5] 500mm/sec FINE    ;
  27:L P[6] 500mm/sec FINE    ;
  28:L P[7] 500mm/sec FINE    ;
  29:   ;
  30:L P[8] 2000mm/sec CNT50    ;
  31:L P[9] 2000mm/sec CNT50    ;
  32:L P[10] 500mm/sec CNT100    ;
  33:L P[11] 800mm/sec CNT50    ;
  34:   ;
  35:  !Swipe2 ;
  36:L P[12] 200mm/sec FINE    ;
  37:L P[24] 200mm/sec FINE    ;
  38:L P[13] 200mm/sec FINE    ;
  39:L P[14] 800mm/sec FINE    ;
  40:L P[16] 2000mm/sec CNT100    ;
  41:L P[17] 2000mm/sec CNT50    ;
  42:L P[15] 2000mm/sec CNT50    ;
  43:   ;
  44:  !Swipe3 ;
  45:L P[18] 500mm/sec FINE    ;
  46:L P[19] 500mm/sec FINE    ;
  47:L P[20] 500mm/sec FINE    ;
  48:L P[21] 1000mm/sec FINE    ;
  49:   ;
  50:L P[22] 2000mm/sec CNT50    ;
  51:L P[50] 2000mm/sec CNT100    ;
  52:   ;
  53:L P[51] 200mm/sec CNT100    ;
  54:   ;
  55:  !Swipe4 ;
  56:   ;
  57:L P[23] 100mm/sec FINE    ;
  58:L P[25] 200mm/sec FINE    ;
  59:L P[26] 2000mm/sec FINE    ;
  60:   ;
  61:  !Swipe5 ;
  62:   ;
  63:L P[27] 2000mm/sec FINE    ;
  64:L P[28] 500mm/sec FINE    ;
  65:L P[29] 200mm/sec FINE    ;
  66:L P[30] 200mm/sec FINE    ;
  67:L P[31] 2000mm/sec FINE    ;
  68:L P[32] 2000mm/sec FINE    ;
  69:   ;
  70:J P[33] 100% CNT100    ;
  71:   ;
  72:   ;
  73:   ;
  74:   ;
  75:   ;
  76:   ;
  77:   ;
  78:   ;
  79:  !Swipe6 ;
  80:   ;
  81:L P[34] 1000mm/sec CNT100    ;
  82:L P[61] 2000mm/sec FINE    ;
  83:L P[35] 500mm/sec FINE    ;
  84:L P[36] 200mm/sec FINE    ;
  85:L P[38] 2000mm/sec FINE    ;
  86:L P[39] 2000mm/sec FINE    ;
  87:   ;
  88:  !Swipe7 ;
  89:   ;
  90:L P[40] 1000mm/sec FINE    ;
  91:L P[41] 200mm/sec FINE    ;
  92:L P[42] 200mm/sec FINE    ;
  93:L P[45] 2000mm/sec FINE    ;
  94:L P[46] 2000mm/sec FINE    ;
  95:   ;
  96:  !Swipe8 ;
  97:   ;
  98:L P[47] 1000mm/sec FINE    ;
  99:L P[48] 200mm/sec FINE    ;
 100:L P[49] 200mm/sec FINE    ;
 101:L P[52] 2000mm/sec FINE    ;
 102:L P[53] 2000mm/sec FINE    ;
 103:   ;
 104:  !Swipe9 ;
 105:   ;
 106:L P[54] 2000mm/sec FINE    ;
 107:L P[55] 2000mm/sec FINE    ;
 108:L P[56] 200mm/sec FINE    ;
 109:L P[57] 200mm/sec FINE    ;
 110:L P[58] 2000mm/sec FINE    ;
 111:   ;
 112:J P[59] 100% CNT100    ;
 113:J P[60] 100% CNT100    ;
 114:   ;
 115:   ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X =   663.381  mm,	Y = -2475.163  mm,	Z =  1063.155  mm,
	W =  -175.130 deg,	P =     -.502 deg,	R =   -86.319 deg
};
P[2]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1835.794  mm,	Y = -2655.186  mm,	Z =   448.632  mm,
	W =   169.826 deg,	P =    -2.477 deg,	R =   -86.488 deg
};
P[3]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1670.537  mm,	Y = -2660.628  mm,	Z =    89.033  mm,
	W =   169.826 deg,	P =    -2.478 deg,	R =   -86.488 deg
};
P[4]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1676.127  mm,	Y = -2609.529  mm,	Z =    15.741  mm,
	W =   168.941 deg,	P =   -20.062 deg,	R =   -76.664 deg
};
P[5]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1648.006  mm,	Y = -2604.821  mm,	Z =    10.518  mm,
	W =   168.941 deg,	P =   -20.062 deg,	R =   -76.664 deg
};
P[6]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1620.399  mm,	Y = -2600.198  mm,	Z =     5.391  mm,
	W =   168.941 deg,	P =   -20.062 deg,	R =   -76.664 deg
};
P[7]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1632.390  mm,	Y = -2549.630  mm,	Z =   -13.592  mm,
	W =   168.941 deg,	P =   -20.062 deg,	R =   -76.664 deg
};
P[8]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1453.997  mm,	Y = -2515.108  mm,	Z =   -34.286  mm,
	W =   157.371 deg,	P =   -21.088 deg,	R =   -76.449 deg
};
P[9]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1324.267  mm,	Y = -2632.646  mm,	Z =   -22.544  mm,
	W =   157.371 deg,	P =   -21.088 deg,	R =   -76.449 deg
};
P[10]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1338.225  mm,	Y = -2626.061  mm,	Z =  -190.898  mm,
	W =   158.331 deg,	P =   -13.527 deg,	R =   -79.670 deg
};
P[11]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1319.473  mm,	Y = -2597.690  mm,	Z =  -177.027  mm,
	W =   156.400 deg,	P =   -26.271 deg,	R =   -74.034 deg
};
P[12]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1334.802  mm,	Y = -2601.174  mm,	Z =  -231.099  mm,
	W =   155.298 deg,	P =   -30.066 deg,	R =   -72.100 deg
};
P[13]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1281.557  mm,	Y = -2608.780  mm,	Z =  -237.420  mm,
	W =   156.400 deg,	P =   -26.271 deg,	R =   -74.034 deg
};
P[14]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1290.034  mm,	Y = -2619.035  mm,	Z =  -231.285  mm,
	W =   150.541 deg,	P =   -26.254 deg,	R =   -73.877 deg
};
P[15]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1373.117  mm,	Y = -2310.948  mm,	Z =   108.123  mm,
	W =   143.547 deg,	P =   -63.829 deg,	R =   -42.041 deg
};
P[16]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1115.687  mm,	Y = -2540.645  mm,	Z =   257.706  mm,
	W =   141.006 deg,	P =   -55.213 deg,	R =   -51.358 deg
};
P[17]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1358.101  mm,	Y = -2319.284  mm,	Z =   135.715  mm,
	W =   148.261 deg,	P =   -59.926 deg,	R =   -47.619 deg
};
P[18]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1279.535  mm,	Y = -2375.649  mm,	Z =    79.617  mm,
	W =   145.175 deg,	P =   -59.997 deg,	R =   -47.530 deg
};
P[19]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1246.875  mm,	Y = -2369.058  mm,	Z =    69.690  mm,
	W =   145.174 deg,	P =   -59.998 deg,	R =   -47.529 deg
};
P[20]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1257.375  mm,	Y = -2206.562  mm,	Z =   142.984  mm,
	W =   145.174 deg,	P =   -59.998 deg,	R =   -47.529 deg
};
P[21]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1147.294  mm,	Y = -2396.353  mm,	Z =   438.037  mm,
	W =   162.965 deg,	P =    -9.360 deg,	R =   -76.122 deg
};
P[22]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1513.381  mm,	Y = -2944.006  mm,	Z =   296.016  mm,
	W =   162.965 deg,	P =    -9.361 deg,	R =   -76.123 deg
};
P[23]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1551.916  mm,	Y = -2982.085  mm,	Z =  -198.866  mm,
	W =   162.807 deg,	P =    13.664 deg,	R =   -83.801 deg
};
P[24]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1297.660  mm,	Y = -2592.370  mm,	Z =  -253.871  mm,
	W =   155.033 deg,	P =   -30.009 deg,	R =   -71.559 deg
};
P[25]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1520.873  mm,	Y = -2976.399  mm,	Z =  -208.329  mm,
	W =   162.807 deg,	P =    13.664 deg,	R =   -83.801 deg
};
P[26]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1511.519  mm,	Y = -3062.514  mm,	Z =  -229.387  mm,
	W =   162.807 deg,	P =    13.664 deg,	R =   -83.801 deg
};
P[27]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1904.974  mm,	Y = -3134.589  mm,	Z =  -109.439  mm,
	W =   162.807 deg,	P =    13.664 deg,	R =   -83.801 deg
};
P[28]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1907.770  mm,	Y = -3029.733  mm,	Z =   -55.611  mm,
	W =   162.995 deg,	P =    10.128 deg,	R =   -82.688 deg
};
P[29]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1843.143  mm,	Y = -3017.893  mm,	Z =   -75.363  mm,
	W =   162.995 deg,	P =    10.128 deg,	R =   -82.688 deg
};
P[30]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1837.299  mm,	Y = -3016.821  mm,	Z =   -77.149  mm,
	W =   162.995 deg,	P =    10.128 deg,	R =   -82.688 deg
};
P[31]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1823.702  mm,	Y = -3122.791  mm,	Z =   -96.230  mm,
	W =   165.551 deg,	P =     9.635 deg,	R =   -83.733 deg
};
P[32]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1078.429  mm,	Y = -3149.860  mm,	Z =   455.505  mm,
	W =   165.552 deg,	P =     9.635 deg,	R =   -83.733 deg
};
P[33]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1648.129  mm,	Y = -2553.379  mm,	Z =   589.819  mm,
	W =  -156.247 deg,	P =    12.789 deg,	R =   104.637 deg
};
P[34]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 1',
	X = -1838.249  mm,	Y = -2473.116  mm,	Z =   279.517  mm,
	W =  -154.637 deg,	P =    55.697 deg,	R =   117.960 deg
};
P[35]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 1',
	X = -1835.359  mm,	Y = -2412.120  mm,	Z =  -231.469  mm,
	W =  -122.734 deg,	P =    75.720 deg,	R =   140.057 deg
};
P[36]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 1',
	X = -1749.537  mm,	Y = -2480.444  mm,	Z =    52.169  mm,
	W =  -121.847 deg,	P =    75.720 deg,	R =   140.056 deg
};
P[38]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 1',
	X = -2096.181  mm,	Y = -2441.173  mm,	Z =   140.940  mm,
	W =  -113.536 deg,	P =    45.793 deg,	R =   153.565 deg
};
P[39]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 1',
	X = -2251.843  mm,	Y = -2423.686  mm,	Z =  -159.589  mm,
	W =   -95.567 deg,	P =    50.170 deg,	R =   178.016 deg
};
P[40]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 1',
	X = -2233.016  mm,	Y = -2432.625  mm,	Z =  -176.163  mm,
	W =   -95.568 deg,	P =    50.170 deg,	R =   178.015 deg
};
P[41]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 1',
	X = -2182.379  mm,	Y = -2427.973  mm,	Z =  -218.235  mm,
	W =   -95.568 deg,	P =    50.170 deg,	R =   178.015 deg
};
P[42]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 1',
	X = -1964.226  mm,	Y = -2435.530  mm,	Z =    43.482  mm,
	W =   -95.568 deg,	P =    50.170 deg,	R =   178.015 deg
};
P[45]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 1',
	X = -1666.343  mm,	Y = -2511.923  mm,	Z =   384.419  mm,
	W =  -139.983 deg,	P =     3.231 deg,	R =    97.514 deg
};
P[46]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 1',
	X = -2083.797  mm,	Y = -2481.148  mm,	Z =   133.960  mm,
	W =  -139.983 deg,	P =     3.231 deg,	R =    97.514 deg
};
P[47]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 1',
	X = -2049.305  mm,	Y = -2521.710  mm,	Z =    25.699  mm,
	W =  -140.482 deg,	P =    -6.330 deg,	R =   102.796 deg
};
P[48]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 1',
	X = -2022.961  mm,	Y = -2513.150  mm,	Z =     3.083  mm,
	W =  -140.404 deg,	P =    -5.718 deg,	R =   102.051 deg
};
P[49]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 1',
	X = -1989.359  mm,	Y = -2505.740  mm,	Z =      .796  mm,
	W =  -140.404 deg,	P =    -5.719 deg,	R =   102.051 deg
};
P[50]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1623.196  mm,	Y = -3012.878  mm,	Z =  -180.723  mm,
	W =   162.805 deg,	P =    13.662 deg,	R =   -83.801 deg
};
P[51]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1588.839  mm,	Y = -2988.882  mm,	Z =  -187.528  mm,
	W =   162.805 deg,	P =    13.662 deg,	R =   -83.801 deg
};
P[52]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 1',
	X = -1951.748  mm,	Y = -2405.481  mm,	Z =    84.245  mm,
	W =  -140.482 deg,	P =    -6.331 deg,	R =   102.796 deg
};
P[53]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 1',
	X = -1785.896  mm,	Y = -2236.241  mm,	Z =   106.199  mm,
	W =  -140.482 deg,	P =    -6.331 deg,	R =   102.796 deg
};
P[54]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 1',
	X = -1784.792  mm,	Y = -2096.323  mm,	Z =    15.719  mm,
	W =  -138.572 deg,	P =    16.115 deg,	R =   112.418 deg
};
P[55]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 1',
	X = -1944.005  mm,	Y = -2112.046  mm,	Z =  -231.150  mm,
	W =  -134.812 deg,	P =    29.068 deg,	R =   122.803 deg
};
P[56]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 1',
	X = -1929.742  mm,	Y = -2117.095  mm,	Z =  -252.684  mm,
	W =  -134.812 deg,	P =    29.068 deg,	R =   122.803 deg
};
P[57]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 1',
	X = -1883.471  mm,	Y = -2098.156  mm,	Z =  -269.141  mm,
	W =  -134.812 deg,	P =    29.068 deg,	R =   122.803 deg
};
P[58]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 1',
	X = -1710.908  mm,	Y = -2006.964  mm,	Z =   -27.647  mm,
	W =  -138.572 deg,	P =    16.114 deg,	R =   112.419 deg
};
P[59]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 1',
	X = -1357.677  mm,	Y = -1711.844  mm,	Z =   450.366  mm,
	W =  -138.572 deg,	P =    16.114 deg,	R =   112.419 deg
};
P[60]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X =  -254.043  mm,	Y = -1539.033  mm,	Z =   274.418  mm,
	W =  -172.669 deg,	P =    10.176 deg,	R =    92.648 deg
};
P[61]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 1',
	X = -1875.512  mm,	Y = -2406.884  mm,	Z =  -207.396  mm,
	W =  -127.354 deg,	P =    75.720 deg,	R =   140.056 deg
};
/END
