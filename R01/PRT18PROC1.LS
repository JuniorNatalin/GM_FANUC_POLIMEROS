/PROG  PRT18PROC1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "DEGATE 298";
PROG_SIZE	= 4794;
CREATE		= DATE 19-08-12  TIME 11:15:14;
MODIFIED	= DATE 19-08-27  TIME 04:16:04;
FILE_NAME	= PRT18PRO;
VERSION		= 0;
LINE_COUNT	= 108;
MEMORY_SIZE	= 5266;
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
  23:L P[21] 2000mm/sec FINE    ;
  24:L P[6] 1000mm/sec FINE    ;
  25:L P[49] 200mm/sec FINE    ;
  26:L P[11] 1200mm/sec FINE    ;
  27:L P[12] 1200mm/sec FINE    ;
  28:L P[3] 1000mm/sec FINE    ;
  29:L P[13] 200mm/sec FINE    ;
  30:L P[9] 200mm/sec FINE    ;
  31:L P[5] 2000mm/sec FINE    ;
  32:   ;
  33:  !Swipe2 ;
  34:L P[4] 1000mm/sec FINE    ;
  35:L P[14] 800mm/sec FINE    ;
  36:L P[15] 150mm/sec FINE    ;
  37:L P[16] 200mm/sec FINE    ;
  38:L P[17] 2000mm/sec FINE    ;
  39:   ;
  40:  !Swipe3 ;
  41:L P[33] 2000mm/sec FINE    ;
  42:L P[10] 1000mm/sec FINE    ;
  43:L P[34] 200mm/sec FINE    ;
  44:L P[42] 1200mm/sec FINE    ;
  45:   ;
  46:  !Swipe3 ;
  47:L P[50] 2000mm/sec FINE    ;
  48:L P[51] 2000mm/sec FINE    ;
  49:L P[7] 500mm/sec FINE    ;
  50:L P[18] 200mm/sec FINE    ;
  51:L P[53] 200mm/sec FINE    ;
  52:L P[54] 200mm/sec FINE    ;
  53:L P[55] 2000mm/sec FINE    ;
  54:   ;
  55:  !Swipe4 ;
  56:L P[56] 2000mm/sec FINE    ;
  57:L P[57] 2000mm/sec FINE    ;
  58:L P[58] 500mm/sec FINE    ;
  59:L P[59] 200mm/sec FINE    ;
  60:L P[22] 200mm/sec FINE    ;
  61:   ;
  62:  !Swipe5 ;
  63:L P[60] 2000mm/sec FINE    ;
  64:L P[61] 2000mm/sec FINE    ;
  65:L P[62] 500mm/sec FINE    ;
  66:L P[63] 200mm/sec FINE    ;
  67:L P[64] 200mm/sec FINE    ;
  68:L P[65] 2000mm/sec FINE    ;
  69:   ;
  70:  !Swipe6 ;
  71:L P[66] 1000mm/sec FINE    ;
  72:L P[67] 200mm/sec FINE    ;
  73:L P[68] 200mm/sec FINE    ;
  74:L P[69] 2000mm/sec FINE    ;
  75:   ;
  76:L P[70] 2000mm/sec FINE    ;
  77:J P[71] 100% CNT100    ;
  78:J P[72] 100% CNT100    ;
  79:   ;
  80:  !Swipe6 ;
  81:L P[73] 2000mm/sec FINE    ;
  82:L P[74] 2000mm/sec FINE    ;
  83:L P[75] 200mm/sec FINE    ;
  84:L P[76] 200mm/sec FINE    ;
  85:L P[23] 2000mm/sec FINE    ;
  86:L P[24] 2000mm/sec FINE    ;
  87:L P[77] 2000mm/sec FINE    ;
  88:   ;
  89:  !Swipe7 ;
  90:L P[78] 500mm/sec FINE    ;
  91:L P[79] 200mm/sec FINE    ;
  92:L P[80] 200mm/sec FINE    ;
  93:L P[81] 2000mm/sec FINE    ;
  94:   ;
  95:L P[82] 2000mm/sec FINE    ;
  96:J P[19] 100% CNT100    ;
  97:J P[20] 100% CNT100    ;
  98:   ;
  99:   ;
 100:J P[8] 80% CNT100    ;
 101:   ;
 102:  EXIT I-ZONE(1) ;
 103:  EXIT I-ZONE(2) ;
 104:   ;
 105:  LBL[99:PROGRAM END] ;
 106:  END ;
 107:  CALL REQ_KNIFE_AT_HM    ;
 108:   ;
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
	X = -1765.032  mm,	Y = -2783.312  mm,	Z =   -46.556  mm,
	W =   166.148 deg,	P =     3.374 deg,	R =   -81.104 deg
};
P[4]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1754.526  mm,	Y = -2912.673  mm,	Z =   -64.268  mm,
	W =   165.777 deg,	P =     -.027 deg,	R =   -80.871 deg
};
P[5]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1712.234  mm,	Y = -2788.950  mm,	Z =   -55.435  mm,
	W =   166.160 deg,	P =     3.424 deg,	R =   -80.587 deg
};
P[6]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -2089.690  mm,	Y = -2845.052  mm,	Z =    77.971  mm,
	W =   166.211 deg,	P =     3.641 deg,	R =   -81.259 deg
};
P[7]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1215.073  mm,	Y = -2881.839  mm,	Z =  -235.158  mm,
	W =   157.040 deg,	P =     3.056 deg,	R =   -78.151 deg
};
P[8]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =   663.372  mm,	Y = -2475.169  mm,	Z =  1063.104  mm,
	W =  -175.130 deg,	P =     -.500 deg,	R =   -86.320 deg
};
P[9]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1710.957  mm,	Y = -2774.395  mm,	Z =   -60.066  mm,
	W =   166.111 deg,	P =     3.213 deg,	R =   -81.754 deg
};
P[10]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1968.528  mm,	Y = -2918.606  mm,	Z =    48.641  mm,
	W =   175.550 deg,	P =    -2.984 deg,	R =   -74.867 deg
};
P[11]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1852.086  mm,	Y = -2830.191  mm,	Z =   112.382  mm,
	W =   166.211 deg,	P =     3.641 deg,	R =   -81.259 deg
};
P[12]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1754.904  mm,	Y = -2806.458  mm,	Z =    21.730  mm,
	W =   166.160 deg,	P =     3.424 deg,	R =   -82.155 deg
};
P[13]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1739.595  mm,	Y = -2778.953  mm,	Z =   -52.908  mm,
	W =   166.148 deg,	P =     3.374 deg,	R =   -81.104 deg
};
P[14]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1711.085  mm,	Y = -2902.829  mm,	Z =   -82.988  mm,
	W =   165.777 deg,	P =     -.027 deg,	R =   -80.871 deg
};
P[15]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1793.440  mm,	Y = -2889.950  mm,	Z =   -29.371  mm,
	W =   165.736 deg,	P =     -.803 deg,	R =   -80.784 deg
};
P[16]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1819.358  mm,	Y = -2887.551  mm,	Z =   -29.372  mm,
	W =   165.736 deg,	P =     -.803 deg,	R =   -80.784 deg
};
P[17]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1863.990  mm,	Y = -2888.087  mm,	Z =    -6.642  mm,
	W =   165.663 deg,	P =    -1.231 deg,	R =   -80.964 deg
};
P[18]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1233.074  mm,	Y = -2922.156  mm,	Z =  -243.076  mm,
	W =   157.040 deg,	P =     3.056 deg,	R =   -81.746 deg
};
P[19]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =  -712.453  mm,	Y = -2695.156  mm,	Z =   210.890  mm,
	W =   139.645 deg,	P =    42.220 deg,	R =   -65.982 deg
};
P[20]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =  -673.095  mm,	Y = -2903.925  mm,	Z =   240.871  mm,
	W =   147.768 deg,	P =    13.905 deg,	R =  -100.713 deg
};
P[21]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -2094.126  mm,	Y = -2872.526  mm,	Z =    78.391  mm,
	W =   166.211 deg,	P =     3.641 deg,	R =   -81.259 deg
};
P[22]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1256.513  mm,	Y = -3118.654  mm,	Z =  -129.348  mm,
	W =   157.025 deg,	P =     2.933 deg,	R =   -79.568 deg
};
P[23]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 1',
	X = -1934.873  mm,	Y = -2046.181  mm,	Z =   167.165  mm,
	W =  -149.757 deg,	P =     7.712 deg,	R =   102.715 deg
};
P[24]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 1',
	X = -1774.665  mm,	Y = -2345.120  mm,	Z =   382.468  mm,
	W =  -149.757 deg,	P =     7.711 deg,	R =   102.715 deg
};
P[33]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1963.350  mm,	Y = -2928.406  mm,	Z =    70.157  mm,
	W =   175.550 deg,	P =    -2.984 deg,	R =   -81.346 deg
};
P[34]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1991.885  mm,	Y = -2924.820  mm,	Z =    50.519  mm,
	W =   175.550 deg,	P =    -2.984 deg,	R =   -74.867 deg
};
P[42]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1978.267  mm,	Y = -2914.004  mm,	Z =   113.320  mm,
	W =   175.550 deg,	P =    -2.984 deg,	R =   -73.363 deg
};
P[49]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -2045.851  mm,	Y = -2835.573  mm,	Z =    53.915  mm,
	W =   166.211 deg,	P =     3.640 deg,	R =   -81.259 deg
};
P[50]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1260.671  mm,	Y = -2902.003  mm,	Z =   259.720  mm,
	W =   175.550 deg,	P =    -2.984 deg,	R =   -73.363 deg
};
P[51]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1215.073  mm,	Y = -2863.600  mm,	Z =  -189.077  mm,
	W =   157.040 deg,	P =     3.056 deg,	R =   -78.151 deg
};
P[53]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1212.435  mm,	Y = -2922.155  mm,	Z =  -243.077  mm,
	W =   157.040 deg,	P =     3.056 deg,	R =   -81.746 deg
};
P[54]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1172.595  mm,	Y = -2922.155  mm,	Z =  -243.076  mm,
	W =   157.040 deg,	P =     3.056 deg,	R =   -82.206 deg
};
P[55]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1190.356  mm,	Y = -2914.238  mm,	Z =  -187.636  mm,
	W =   157.040 deg,	P =     3.056 deg,	R =   -79.133 deg
};
P[56]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1190.356  mm,	Y = -3175.836  mm,	Z =    23.564  mm,
	W =   157.040 deg,	P =     3.056 deg,	R =   -79.133 deg
};
P[57]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1312.757  mm,	Y = -3180.635  mm,	Z =   -94.036  mm,
	W =   157.040 deg,	P =     3.056 deg,	R =   -79.133 deg
};
P[58]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1300.582  mm,	Y = -3131.261  mm,	Z =  -110.205  mm,
	W =   157.030 deg,	P =     2.975 deg,	R =   -79.472 deg
};
P[59]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1278.094  mm,	Y = -3123.118  mm,	Z =  -120.019  mm,
	W =   157.040 deg,	P =     3.055 deg,	R =   -79.279 deg
};
P[60]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1245.620  mm,	Y = -3194.019  mm,	Z =    31.637  mm,
	W =   162.158 deg,	P =     1.971 deg,	R =   -79.502 deg
};
P[61]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1572.020  mm,	Y = -3206.020  mm,	Z =    60.438  mm,
	W =   162.158 deg,	P =     1.971 deg,	R =   -79.502 deg
};
P[62]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1581.590  mm,	Y = -3175.574  mm,	Z =    64.036  mm,
	W =   162.167 deg,	P =     2.054 deg,	R =   -79.243 deg
};
P[63]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1619.216  mm,	Y = -3183.176  mm,	Z =    76.376  mm,
	W =   162.167 deg,	P =     2.054 deg,	R =   -79.243 deg
};
P[64]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1659.724  mm,	Y = -3191.429  mm,	Z =    97.340  mm,
	W =   162.159 deg,	P =     1.977 deg,	R =   -79.482 deg
};
P[65]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1671.616  mm,	Y = -3239.619  mm,	Z =    84.201  mm,
	W =   162.779 deg,	P =     1.881 deg,	R =   -81.738 deg
};
P[66]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1829.641  mm,	Y = -3237.301  mm,	Z =   163.699  mm,
	W =   162.780 deg,	P =     1.883 deg,	R =   -81.739 deg
};
P[67]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1829.643  mm,	Y = -3237.302  mm,	Z =   163.699  mm,
	W =   159.301 deg,	P =     2.208 deg,	R =   -81.469 deg
};
P[68]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1860.422  mm,	Y = -3242.460  mm,	Z =   175.479  mm,
	W =   159.306 deg,	P =     2.256 deg,	R =   -81.341 deg
};
P[69]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1868.243  mm,	Y = -3283.955  mm,	Z =   159.131  mm,
	W =   154.000 deg,	P =     3.131 deg,	R =   -82.124 deg
};
P[70]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =  -929.884  mm,	Y = -3283.932  mm,	Z =   175.777  mm,
	W =   154.002 deg,	P =     3.133 deg,	R =   -82.125 deg
};
P[71]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1210.548  mm,	Y = -2871.344  mm,	Z =   410.993  mm,
	W =  -134.517 deg,	P =    59.870 deg,	R =   116.852 deg
};
P[72]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 1',
	X = -1210.234  mm,	Y = -1975.658  mm,	Z =   406.607  mm,
	W =  -155.702 deg,	P =    10.176 deg,	R =   103.120 deg
};
P[73]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 1',
	X = -1899.035  mm,	Y = -2129.258  mm,	Z =   188.212  mm,
	W =  -156.020 deg,	P =     4.778 deg,	R =   101.957 deg
};
P[74]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 1',
	X = -1903.958  mm,	Y = -2194.579  mm,	Z =   179.331  mm,
	W =  -156.091 deg,	P =     5.141 deg,	R =   101.133 deg
};
P[75]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 1',
	X = -1926.298  mm,	Y = -2199.755  mm,	Z =   170.810  mm,
	W =  -156.092 deg,	P =     5.141 deg,	R =   101.133 deg
};
P[76]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 1',
	X = -1964.740  mm,	Y = -2207.147  mm,	Z =   170.558  mm,
	W =  -156.159 deg,	P =     5.462 deg,	R =   100.403 deg
};
P[77]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 1',
	X = -1709.196  mm,	Y = -2331.817  mm,	Z =   -37.148  mm,
	W =  -142.626 deg,	P =     6.759 deg,	R =   105.705 deg
};
P[78]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 1',
	X = -1702.116  mm,	Y = -2350.967  mm,	Z =   -76.944  mm,
	W =  -142.629 deg,	P =     6.756 deg,	R =   105.703 deg
};
P[79]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 1',
	X = -1727.296  mm,	Y = -2357.166  mm,	Z =   -69.752  mm,
	W =  -142.629 deg,	P =     6.755 deg,	R =   105.703 deg
};
P[80]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 1',
	X = -1748.019  mm,	Y = -2363.458  mm,	Z =   -73.507  mm,
	W =  -142.629 deg,	P =     6.755 deg,	R =   105.703 deg
};
P[81]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 1',
	X = -1766.098  mm,	Y = -2364.136  mm,	Z =   278.788  mm,
	W =  -142.629 deg,	P =     6.756 deg,	R =   105.703 deg
};
P[82]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 1',
	X = -1070.140  mm,	Y = -2364.095  mm,	Z =   530.710  mm,
	W =  -142.631 deg,	P =     6.754 deg,	R =   105.702 deg
};
/END
