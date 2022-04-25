/PROG  PRT07PROC1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "DEGATE 311";
PROG_SIZE	= 3891;
CREATE		= DATE 19-06-18  TIME 15:23:22;
MODIFIED	= DATE 19-09-19  TIME 04:16:28;
FILE_NAME	= PRT07PRO;
VERSION		= 0;
LINE_COUNT	= 101;
MEMORY_SIZE	= 4391;
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
  24:L P[6] 2000mm/sec CNT50    ;
  25:L P[49] 500mm/sec FINE    ;
  26:   ;
  27:L P[11] 1000mm/sec FINE    ;
  28:L P[12] 1000mm/sec FINE    ;
  29:L P[3] 1000mm/sec FINE    ;
  30:   ;
  31:L P[13] 1000mm/sec CNT50    ;
  32:   ;
  33:  !Swipe2 ;
  34:L P[4] 1000mm/sec FINE    ;
  35:L P[14] 800mm/sec FINE    ;
  36:L P[15] 100mm/sec FINE    ;
  37:   ;
  38:L P[16] 2000mm/sec CNT50    ;
  39:L P[17] 2000mm/sec CNT100    ;
  40:L P[33] 2000mm/sec CNT50    ;
  41:   ;
  42:  !Swipe3 ;
  43:L P[34] 800mm/sec FINE    ;
  44:L P[35] 800mm/sec FINE    ;
  45:L P[36] 1000mm/sec FINE    ;
  46:L P[37] 1000mm/sec FINE    ;
  47:   ;
  48:L P[38] 2000mm/sec CNT50    ;
  49:L P[39] 2000mm/sec CNT50    ;
  50:   ;
  51:  !Swipe4 ;
  52:L P[43] 800mm/sec FINE    ;
  53:L P[44] 800mm/sec FINE    ;
  54:L P[45] 800mm/sec FINE    ;
  55:L P[46] 800mm/sec FINE    ;
  56:   ;
  57:L P[47] 2000mm/sec CNT50    ;
  58:L P[48] 2000mm/sec CNT100    ;
  59:   ;
  60:J P[18] 100% FINE    ;
  61:   ;
  62:  !Request Knife Repo ;
  63:  CALL REQ_KNIFE_AT_HM    ;
  64:   ;
  65:   ;
  66:   ;
  67:J P[19] 100% CNT100    ;
  68:   ;
  69:L P[20] 2000mm/sec CNT30    ;
  70:L P[41] 2000mm/sec CNT10    ;
  71:   ;
  72:  !Swipe5 ;
  73:L P[5] 800mm/sec FINE    ;
  74:L P[21] 500mm/sec FINE    ;
  75:L P[22] 500mm/sec FINE    ;
  76:L P[23] 1000mm/sec FINE    ;
  77:   ;
  78:   ;
  79:L P[25] 1500mm/sec CNT100    ;
  80:L P[26] 1500mm/sec CNT100    ;
  81:L P[27] 1500mm/sec CNT30    ;
  82:   ;
  83:  !Swipe6 ;
  84:L P[7] 1000mm/sec FINE    ;
  85:L P[28] 500mm/sec FINE    ;
  86:L P[29] 1000mm/sec FINE    ;
  87:L P[30] 1000mm/sec FINE    ;
  88:   ;
  89:L P[31] 1500mm/sec CNT100    ;
  90:L P[32] 1500mm/sec CNT100    ;
  91:   ;
  92:J P[40] 80% CNT100    ;
  93:J P[8] 80% CNT100    ;
  94:   ;
  95:  EXIT I-ZONE(1) ;
  96:  EXIT I-ZONE(2) ;
  97:   ;
  98:  LBL[99:PROGRAM END] ;
  99:  END ;
 100:  CALL REQ_KNIFE_AT_HM    ;
 101:   ;
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
	X = -1861.263  mm,	Y = -2742.517  mm,	Z =   -63.823  mm,
	W =   155.388 deg,	P =     6.355 deg,	R =   -79.936 deg
};
P[4]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1896.627  mm,	Y = -2744.096  mm,	Z =    11.865  mm,
	W =   157.194 deg,	P =    12.977 deg,	R =   -85.764 deg
};
P[5]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -2480.645  mm,	Y = -2565.317  mm,	Z =   571.904  mm,
	W =  -178.143 deg,	P =   -27.616 deg,	R =  -175.595 deg
};
P[6]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1980.000  mm,	Y = -2743.467  mm,	Z =   105.732  mm,
	W =   155.593 deg,	P =     5.174 deg,	R =   -78.515 deg
};
P[7]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -2499.962  mm,	Y = -2858.893  mm,	Z =   495.852  mm,
	W =  -178.299 deg,	P =   -25.397 deg,	R =  -176.661 deg
};
P[8]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =   663.372  mm,	Y = -2475.169  mm,	Z =  1063.104  mm,
	W =  -175.130 deg,	P =     -.500 deg,	R =   -86.320 deg
};
P[11]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1906.484  mm,	Y = -2747.853  mm,	Z =   -36.670  mm,
	W =   155.571 deg,	P =     7.067 deg,	R =   -78.366 deg
};
P[12]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1895.239  mm,	Y = -2741.572  mm,	Z =   -47.716  mm,
	W =   155.571 deg,	P =     7.067 deg,	R =   -78.366 deg
};
P[13]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1844.374  mm,	Y = -2680.259  mm,	Z =    18.558  mm,
	W =   155.666 deg,	P =     7.403 deg,	R =   -77.618 deg
};
P[14]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1884.815  mm,	Y = -2743.052  mm,	Z =     6.761  mm,
	W =   157.195 deg,	P =    12.986 deg,	R =   -85.777 deg
};
P[15]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1845.582  mm,	Y = -2728.394  mm,	Z =   -16.048  mm,
	W =   157.195 deg,	P =    12.986 deg,	R =   -85.776 deg
};
P[16]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1845.707  mm,	Y = -2687.976  mm,	Z =    16.369  mm,
	W =   155.593 deg,	P =     5.173 deg,	R =   -78.515 deg
};
P[17]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1973.797  mm,	Y = -2744.423  mm,	Z =   396.138  mm,
	W =   152.446 deg,	P =     5.171 deg,	R =   -78.517 deg
};
P[18]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -2249.202  mm,	Y = -2858.338  mm,	Z =   686.112  mm,
	W =  -178.635 deg,	P =   -14.008 deg,	R =  -138.694 deg
};
P[19]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -2768.189  mm,	Y = -2699.745  mm,	Z =   791.378  mm,
	W =  -178.602 deg,	P =   -20.619 deg,	R =  -151.316 deg
};
P[20]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -2564.882  mm,	Y = -2544.108  mm,	Z =   589.870  mm,
	W =   177.924 deg,	P =   -25.398 deg,	R =  -169.616 deg
};
P[21]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -2479.696  mm,	Y = -2612.466  mm,	Z =   566.768  mm,
	W =  -178.143 deg,	P =   -27.616 deg,	R =  -175.594 deg
};
P[22]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -2470.919  mm,	Y = -2649.350  mm,	Z =   569.246  mm,
	W =  -179.838 deg,	P =   -27.750 deg,	R =  -172.977 deg
};
P[23]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -2490.349  mm,	Y = -2643.230  mm,	Z =   580.186  mm,
	W =  -179.838 deg,	P =   -27.750 deg,	R =  -172.977 deg
};
P[25]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -2576.299  mm,	Y = -2581.455  mm,	Z =   597.578  mm,
	W =   179.421 deg,	P =   -25.445 deg,	R =  -171.351 deg
};
P[26]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -2545.432  mm,	Y = -2790.397  mm,	Z =   595.563  mm,
	W =   179.420 deg,	P =   -25.443 deg,	R =  -171.350 deg
};
P[27]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -2548.363  mm,	Y = -2790.154  mm,	Z =   522.511  mm,
	W =   179.420 deg,	P =   -25.443 deg,	R =  -171.350 deg
};
P[28]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -2496.170  mm,	Y = -2912.232  mm,	Z =   497.288  mm,
	W =  -178.299 deg,	P =   -25.397 deg,	R =  -176.661 deg
};
P[29]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -2481.483  mm,	Y = -2972.074  mm,	Z =   493.974  mm,
	W =   179.420 deg,	P =   -25.444 deg,	R =  -171.350 deg
};
P[30]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -2505.452  mm,	Y = -2975.724  mm,	Z =   505.507  mm,
	W =   179.420 deg,	P =   -25.444 deg,	R =  -171.350 deg
};
P[31]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -2558.334  mm,	Y = -2921.557  mm,	Z =   535.169  mm,
	W =   179.420 deg,	P =   -25.444 deg,	R =  -171.350 deg
};
P[32]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -2461.149  mm,	Y = -2909.106  mm,	Z =   741.043  mm,
	W =   179.420 deg,	P =   -25.444 deg,	R =  -171.350 deg
};
P[33]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1546.036  mm,	Y = -3263.404  mm,	Z =   113.302  mm,
	W =   150.392 deg,	P =      .304 deg,	R =   -75.992 deg
};
P[34]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1524.019  mm,	Y = -3195.863  mm,	Z =    15.710  mm,
	W =   150.391 deg,	P =     -.174 deg,	R =   -76.784 deg
};
P[35]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1468.195  mm,	Y = -3173.435  mm,	Z =   -13.282  mm,
	W =   150.392 deg,	P =     -.290 deg,	R =   -76.976 deg
};
P[36]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1458.460  mm,	Y = -3215.523  mm,	Z =   -13.063  mm,
	W =   150.392 deg,	P =     -.290 deg,	R =   -76.976 deg
};
P[37]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1497.811  mm,	Y = -3204.299  mm,	Z =    34.459  mm,
	W =   150.392 deg,	P =      .305 deg,	R =   -75.992 deg
};
P[38]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1473.853  mm,	Y = -3247.756  mm,	Z =    26.970  mm,
	W =   150.392 deg,	P =      .305 deg,	R =   -75.992 deg
};
P[39]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1326.161  mm,	Y = -3195.358  mm,	Z =   -61.587  mm,
	W =   150.392 deg,	P =      .304 deg,	R =   -75.992 deg
};
P[40]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1669.281  mm,	Y = -3145.199  mm,	Z =   874.876  mm,
	W =   178.057 deg,	P =   -17.179 deg,	R =  -153.054 deg
};
P[41]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -2526.642  mm,	Y = -2550.157  mm,	Z =   587.849  mm,
	W =   179.072 deg,	P =   -25.439 deg,	R =  -170.945 deg
};
P[43]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1271.690  mm,	Y = -3135.299  mm,	Z =  -112.775  mm,
	W =   150.390 deg,	P =      .178 deg,	R =   -76.425 deg
};
P[44]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1234.934  mm,	Y = -3126.359  mm,	Z =  -134.273  mm,
	W =   150.390 deg,	P =      .178 deg,	R =   -76.425 deg
};
P[45]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1189.922  mm,	Y = -3115.410  mm,	Z =  -160.600  mm,
	W =   150.388 deg,	P =      .614 deg,	R =   -76.673 deg
};
P[46]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1196.188  mm,	Y = -3116.185  mm,	Z =  -164.718  mm,
	W =   150.392 deg,	P =      .304 deg,	R =   -75.992 deg
};
P[47]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1214.973  mm,	Y = -3186.948  mm,	Z =  -124.143  mm,
	W =   150.392 deg,	P =      .304 deg,	R =   -75.992 deg
};
P[48]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1054.824  mm,	Y = -3217.678  mm,	Z =   135.849  mm,
	W =   150.392 deg,	P =      .304 deg,	R =   -75.992 deg
};
P[49]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1904.145  mm,	Y = -2717.807  mm,	Z =    -1.718  mm,
	W =   155.666 deg,	P =     7.405 deg,	R =   -77.619 deg
};
/END
