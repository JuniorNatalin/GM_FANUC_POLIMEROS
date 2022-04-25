/PROG  PRT41PROC1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "DEGATE 375";
PROG_SIZE	= 4880;
CREATE		= DATE 21-02-22  TIME 14:46:26;
MODIFIED	= DATE 21-09-10  TIME 10:01:14;
FILE_NAME	= PRT41PRO;
VERSION		= 0;
LINE_COUNT	= 132;
MEMORY_SIZE	= 5384;
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
  10:  Set MH Tool(7) ;
  11:   ;
  12:  UTOOL_NUM=7 ;
  13:  UFRAME_NUM=0 ;
  14:  PAYLOAD[7] ;
  15:  ENTER I-ZONE(1) ;
  16:  ENTER I-ZONE(2) ;
  17:   ;
  18:  !Request Knife Repo ;
  19:  CALL REQ_KNIFE_AT_WK    ;
  20:   ;
  21:J P[1] 100% CNT100    ;
  22:J P[2] 100% CNT100    ;
  23:   ;
  24:L P[3] 2000mm/sec CNT50    ;
  25:L P[4] 2000mm/sec CNT50    ;
  26:   ;
  27:  !galho interno inf ;
  28:L P[5] 1000mm/sec FINE    ;
  29:L P[6] 1200mm/sec FINE    ;
  30:L P[7] 1400mm/sec FINE    ;
  31:   ;
  32:  !galho interno fim ;
  33:   ;
  34:L P[8] 2000mm/sec CNT50    ;
  35:L P[9] 2000mm/sec CNT50    ;
  36:   ;
  37:  !galho interno sup ;
  38:L P[10] 800mm/sec FINE    ;
  39:L P[11] 1000mm/sec FINE    ;
  40:L P[12] 1200mm/sec FINE    ;
  41:L P[13] 2000mm/sec FINE    ;
  42:   ;
  43:  !galho interno fim ;
  44:   ;
  45:L P[14] 2000mm/sec CNT50    ;
  46:L P[15] 2000mm/sec CNT100    ;
  47:   ;
  48:  !galho interno sup ;
  49:  //L P[16] 1000mm/sec FINE    ;
  50:  //L P[17] 1200mm/sec FINE    ;
  51:  //L P[18] 300mm/sec FINE    ;
  52:  //L P[54] 300mm/sec FINE    ;
  53:   ;
  54:   ;
  55:   ;
  56:L P[55] 1500mm/sec FINE    ;
  57:L P[56] 1000mm/sec FINE    ;
  58:L P[57] 300mm/sec FINE    ;
  59:L P[58] 300mm/sec FINE    ;
  60:   ;
  61:   ;
  62:   ;
  63:   ;
  64:  !galho interno fim ;
  65:   ;
  66:L P[19] 2000mm/sec CNT50    ;
  67:L P[20] 2000mm/sec CNT50    ;
  68:   ;
  69:  !galho interno inf ;
  70:L P[21] 800mm/sec FINE    ;
  71:L P[22] 1000mm/sec FINE    ;
  72:L P[23] 1200mm/sec FINE    ;
  73:L P[24] 2000mm/sec FINE    ;
  74:  !galho interno fim ;
  75:   ;
  76:L P[25] 2000mm/sec CNT100    ;
  77:   ;
  78:J P[26] 100% CNT100    ;
  79:J P[27] 100% CNT100    ;
  80:J P[28] 100% CNT100    ;
  81:   ;
  82:L P[29] 2000mm/sec CNT100    ;
  83:L P[30] 2000mm/sec FINE    ;
  84:   ;
  85:  !orelha A ;
  86:L P[31] 1200mm/sec FINE    ;
  87:L P[32] 1400mm/sec FINE    ;
  88:   ;
  89:   ;
  90:L P[33] 2000mm/sec CNT50    ;
  91:L P[34] 2000mm/sec CNT100    ;
  92:L P[35] 2000mm/sec CNT100    ;
  93:   ;
  94:  !orelha B ;
  95:L P[36] 2000mm/sec FINE    ;
  96:L P[37] 1200mm/sec FINE    ;
  97:L P[38] 1400mm/sec FINE    ;
  98:   ;
  99:   ;
 100:   ;
 101:L P[39] 2000mm/sec CNT50    ;
 102:L P[40] 2000mm/sec CNT100    ;
 103:L P[41] 2000mm/sec CNT100    ;
 104:L P[42] 2000mm/sec CNT50    ;
 105:   ;
 106:  !orelha C ;
 107:L P[43] 1200mm/sec FINE    ;
 108:L P[44] 1400mm/sec FINE    ;
 109:L P[45] 2000mm/sec CNT50    ;
 110:   ;
 111:   ;
 112:L P[46] 2000mm/sec CNT100    ;
 113:   ;
 114:   ;
 115:  !orelha D ;
 116:L P[47] 2000mm/sec FINE    ;
 117:L P[48] 1200mm/sec FINE    ;
 118:L P[49] 1400mm/sec FINE    ;
 119:L P[50] 2000mm/sec FINE    ;
 120:   ;
 121:   ;
 122:L P[51] 2000mm/sec CNT50    ;
 123:L P[52] 2000mm/sec CNT100    ;
 124:J P[53] 100% CNT100    ;
 125:   ;
 126:  EXIT I-ZONE(1) ;
 127:  EXIT I-ZONE(2) ;
 128:   ;
 129:  LBL[99:PROGRAM END] ;
 130:  END ;
 131:  CALL REQ_KNIFE_AT_HM    ;
 132:   ;
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
	X = -1955.082  mm,	Y = -2937.802  mm,	Z =   477.943  mm,
	W =   155.239 deg,	P =     8.853 deg,	R =   -81.946 deg
};
P[3]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1888.145  mm,	Y = -2888.327  mm,	Z =   535.794  mm,
	W =   156.572 deg,	P =    -3.973 deg,	R =   -91.323 deg
};
P[4]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -2070.347  mm,	Y = -2893.155  mm,	Z =   405.741  mm,
	W =   156.572 deg,	P =    -3.973 deg,	R =   -91.323 deg
};
P[5]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -2061.937  mm,	Y = -2728.350  mm,	Z =   399.299  mm,
	W =   156.996 deg,	P =   -14.883 deg,	R =   -92.875 deg
};
P[6]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -2045.331  mm,	Y = -2701.867  mm,	Z =   375.586  mm,
	W =   155.136 deg,	P =   -14.361 deg,	R =   -83.498 deg
};
P[7]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -2002.635  mm,	Y = -2716.282  mm,	Z =   355.670  mm,
	W =   154.728 deg,	P =    -9.979 deg,	R =   -77.347 deg
};
P[8]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -2024.461  mm,	Y = -2948.521  mm,	Z =   360.453  mm,
	W =   157.112 deg,	P =     3.267 deg,	R =   -96.049 deg
};
P[9]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1494.742  mm,	Y = -2906.907  mm,	Z =    80.839  mm,
	W =   156.996 deg,	P =     2.090 deg,	R =   -88.448 deg
};
P[10]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1481.768  mm,	Y = -2712.802  mm,	Z =    91.795  mm,
	W =   157.637 deg,	P =   -11.247 deg,	R =   -82.209 deg
};
P[11]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1422.541  mm,	Y = -2663.608  mm,	Z =    33.233  mm,
	W =   154.822 deg,	P =    -6.411 deg,	R =   -77.024 deg
};
P[12]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1416.062  mm,	Y = -2652.950  mm,	Z =    16.453  mm,
	W =   154.145 deg,	P =    -4.917 deg,	R =   -75.584 deg
};
P[13]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1468.570  mm,	Y = -2820.983  mm,	Z =    79.270  mm,
	W =   158.141 deg,	P =    -1.278 deg,	R =   -85.934 deg
};
P[14]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1408.276  mm,	Y = -2885.357  mm,	Z =    42.407  mm,
	W =   157.012 deg,	P =     -.258 deg,	R =   -87.451 deg
};
P[15]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1507.066  mm,	Y = -2901.887  mm,	Z =   100.134  mm,
	W =   157.006 deg,	P =     3.436 deg,	R =   -76.098 deg
};
P[16]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1420.914  mm,	Y = -3038.366  mm,	Z =    37.363  mm,
	W =   156.603 deg,	P =     4.734 deg,	R =   -78.925 deg
};
P[17]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1404.936  mm,	Y = -3032.924  mm,	Z =    30.299  mm,
	W =   156.629 deg,	P =     4.580 deg,	R =   -78.858 deg
};
P[18]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1400.985  mm,	Y = -3059.446  mm,	Z =    29.836  mm,
	W =   156.463 deg,	P =     3.708 deg,	R =   -81.031 deg
};
P[19]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1369.939  mm,	Y = -2890.273  mm,	Z =    35.460  mm,
	W =   157.158 deg,	P =     4.375 deg,	R =   -73.869 deg
};
P[20]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1841.054  mm,	Y = -3031.794  mm,	Z =   379.117  mm,
	W =   151.229 deg,	P =    11.256 deg,	R =   -65.299 deg
};
P[21]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1814.539  mm,	Y = -3120.734  mm,	Z =   282.234  mm,
	W =   151.225 deg,	P =    11.577 deg,	R =   -65.631 deg
};
P[22]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1805.175  mm,	Y = -3119.936  mm,	Z =   276.946  mm,
	W =   151.225 deg,	P =    11.577 deg,	R =   -65.630 deg
};
P[23]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1785.141  mm,	Y = -3111.763  mm,	Z =   254.810  mm,
	W =   151.225 deg,	P =    11.576 deg,	R =   -65.630 deg
};
P[24]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1801.639  mm,	Y = -3064.857  mm,	Z =   273.986  mm,
	W =   150.425 deg,	P =     9.783 deg,	R =   -65.987 deg
};
P[25]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1821.423  mm,	Y = -2891.477  mm,	Z =   417.906  mm,
	W =   153.159 deg,	P =     7.947 deg,	R =   -61.884 deg
};
P[26]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1661.968  mm,	Y = -3100.488  mm,	Z =   616.958  mm,
	W =   165.120 deg,	P =    -1.942 deg,	R =  -116.773 deg
};
P[27]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1669.281  mm,	Y = -3145.199  mm,	Z =   874.876  mm,
	W =   178.057 deg,	P =   -17.179 deg,	R =  -153.054 deg
};
P[28]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1920.721  mm,	Y = -2565.733  mm,	Z =   848.242  mm,
	W =   162.542 deg,	P =   -52.001 deg,	R =  -149.890 deg
};
P[29]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1955.843  mm,	Y = -2484.620  mm,	Z =   685.251  mm,
	W =   170.112 deg,	P =   -53.406 deg,	R =  -159.398 deg
};
P[30]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -2046.949  mm,	Y = -2503.985  mm,	Z =   592.762  mm,
	W =   179.598 deg,	P =   -54.035 deg,	R =  -171.072 deg
};
P[31]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -2084.431  mm,	Y = -2516.404  mm,	Z =   624.247  mm,
	W =   179.537 deg,	P =   -54.036 deg,	R =  -171.058 deg
};
P[32]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -2076.222  mm,	Y = -2509.502  mm,	Z =   613.542  mm,
	W =   179.537 deg,	P =   -54.035 deg,	R =  -171.058 deg
};
P[33]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -2080.766  mm,	Y = -2550.588  mm,	Z =   631.472  mm,
	W =   170.112 deg,	P =   -53.407 deg,	R =  -159.398 deg
};
P[34]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1863.750  mm,	Y = -2461.658  mm,	Z =   495.722  mm,
	W =   170.112 deg,	P =   -53.407 deg,	R =  -159.398 deg
};
P[35]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -2027.998  mm,	Y = -2492.133  mm,	Z =   522.415  mm,
	W =   173.268 deg,	P =   -29.163 deg,	R =  -164.072 deg
};
P[36]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1924.280  mm,	Y = -2514.488  mm,	Z =   371.805  mm,
	W =   172.060 deg,	P =   -28.885 deg,	R =  -161.583 deg
};
P[37]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1928.451  mm,	Y = -2520.514  mm,	Z =   358.436  mm,
	W =   172.790 deg,	P =   -26.116 deg,	R =  -161.962 deg
};
P[38]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1931.204  mm,	Y = -2522.730  mm,	Z =   370.763  mm,
	W =   172.786 deg,	P =   -23.742 deg,	R =  -162.015 deg
};
P[39]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1947.386  mm,	Y = -2501.472  mm,	Z =   407.196  mm,
	W =   173.268 deg,	P =   -29.163 deg,	R =  -164.072 deg
};
P[40]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1854.248  mm,	Y = -2497.714  mm,	Z =   569.537  mm,
	W =   173.268 deg,	P =   -29.163 deg,	R =  -164.072 deg
};
P[41]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1519.553  mm,	Y = -3515.827  mm,	Z =   645.601  mm,
	W =  -172.102 deg,	P =   -29.165 deg,	R =  -164.073 deg
};
P[42]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1665.865  mm,	Y = -3489.261  mm,	Z =   425.156  mm,
	W =  -172.102 deg,	P =   -29.165 deg,	R =  -164.072 deg
};
P[43]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1717.760  mm,	Y = -3470.798  mm,	Z =   378.506  mm,
	W =  -169.795 deg,	P =   -28.497 deg,	R =  -168.855 deg
};
P[44]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1692.477  mm,	Y = -3463.227  mm,	Z =   388.777  mm,
	W =  -169.482 deg,	P =   -25.543 deg,	R =  -168.514 deg
};
P[45]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1699.567  mm,	Y = -3471.998  mm,	Z =   390.148  mm,
	W =  -169.198 deg,	P =   -28.501 deg,	R =  -169.139 deg
};
P[46]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1608.353  mm,	Y = -3461.188  mm,	Z =   526.582  mm,
	W =  -161.605 deg,	P =   -67.652 deg,	R =  -177.301 deg
};
P[47]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1634.318  mm,	Y = -3431.330  mm,	Z =   549.121  mm,
	W =  -165.554 deg,	P =   -68.125 deg,	R =  -173.040 deg
};
P[48]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1658.302  mm,	Y = -3436.645  mm,	Z =   570.957  mm,
	W =  -165.553 deg,	P =   -68.126 deg,	R =  -173.041 deg
};
P[49]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1674.921  mm,	Y = -3441.602  mm,	Z =   582.213  mm,
	W =  -165.443 deg,	P =   -68.296 deg,	R =  -173.159 deg
};
P[50]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1671.678  mm,	Y = -3440.406  mm,	Z =   582.112  mm,
	W =  -165.443 deg,	P =   -68.296 deg,	R =  -173.159 deg
};
P[51]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1620.440  mm,	Y = -3492.831  mm,	Z =   534.930  mm,
	W =  -171.601 deg,	P =   -68.612 deg,	R =  -166.535 deg
};
P[52]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1312.255  mm,	Y = -3365.336  mm,	Z =   663.943  mm,
	W =  -171.601 deg,	P =   -68.612 deg,	R =  -166.535 deg
};
P[53]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =   117.409  mm,	Y = -2626.726  mm,	Z =  1021.202  mm,
	W =  -178.295 deg,	P =    -2.919 deg,	R =  -105.983 deg
};
P[54]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1378.235  mm,	Y = -3055.193  mm,	Z =    19.780  mm,
	W =   156.463 deg,	P =     3.708 deg,	R =   -81.031 deg
};
P[55]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1449.142  mm,	Y = -3130.021  mm,	Z =   -63.163  mm,
	W =   155.503 deg,	P =    18.977 deg,	R =   -84.524 deg
};
P[56]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1424.283  mm,	Y = -3150.032  mm,	Z =   -81.832  mm,
	W =   155.503 deg,	P =    18.977 deg,	R =   -84.524 deg
};
P[57]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1410.597  mm,	Y = -3146.644  mm,	Z =   -87.842  mm,
	W =   155.502 deg,	P =    18.977 deg,	R =   -84.524 deg
};
P[58]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1393.957  mm,	Y = -3145.995  mm,	Z =   -91.636  mm,
	W =   155.502 deg,	P =    18.976 deg,	R =   -84.524 deg
};
/END
