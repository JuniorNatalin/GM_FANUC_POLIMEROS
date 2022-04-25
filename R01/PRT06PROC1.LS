/PROG  PRT06PROC1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "DEGATE 274";
PROG_SIZE	= 3572;
CREATE		= DATE 19-03-06  TIME 14:45:32;
MODIFIED	= DATE 19-08-06  TIME 09:59:16;
FILE_NAME	= PRT03PRO;
VERSION		= 0;
LINE_COUNT	= 87;
MEMORY_SIZE	= 4000;
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
   1:  ENTER I-ZONE(1) ;
   2:  ENTER I-ZONE(2) ;
   3:   ;
   4:  !TOOL 02 DEGATE ;
   5:   ;
   6:  IF DO[66:OFF]=ON,JMP LBL[99] ;
   7:  SET SEGMENT(22) ;
   8:   ;
   9:  Set MH Tool(6) ;
  10:   ;
  11:  UTOOL_NUM=2 ;
  12:  UFRAME_NUM=0 ;
  13:  PAYLOAD[5] ;
  14:   ;
  15:  !Request Knife Repo ;
  16:  CALL REQ_KNIFE_AT_HM    ;
  17:   ;
  18:J P[12] 100% CNT100    ;
  19:J P[1] 100% CNT100    ;
  20:J P[31] 100% CNT100    ;
  21:   ;
  22:L P[4] 1000mm/sec FINE    ;
  23:   ;
  24:  !Swipe1 ;
  25:L P[2] 800mm/sec FINE    ;
  26:L P[3] 500mm/sec FINE    ;
  27:L P[5] 300mm/sec FINE    ;
  28:L P[22] 1000mm/sec FINE    ;
  29:   ;
  30:  !Swipe2 ;
  31:   ;
  32:L P[23] 500mm/sec FINE    ;
  33:L P[24] 500mm/sec FINE    ;
  34:L P[6] 300mm/sec FINE    ;
  35:L P[7] 100mm/sec FINE    ;
  36:L P[8] 2000mm/sec CNT50    ;
  37:   ;
  38:J P[29] 100% CNT100    ;
  39:   ;
  40:  CALL REQ_KNIFE_AT_WK    ;
  41:   ;
  42:J P[10] 100% CNT100    ;
  43:   ;
  44:L P[13] 2000mm/sec CNT30    ;
  45:   ;
  46:  !Swipe3 ;
  47:   ;
  48:L P[15] 500mm/sec FINE    ;
  49:L P[18] 500mm/sec FINE    ;
  50:L P[19] 500mm/sec FINE    ;
  51:L P[20] 500mm/sec FINE    ;
  52:L P[25] 500mm/sec FINE    ;
  53:   ;
  54:L P[26] 2000mm/sec CNT50    ;
  55:L P[27] 2000mm/sec CNT100    ;
  56:   ;
  57:J P[28] 100% CNT100    ;
  58:J P[11] 100% CNT100    ;
  59:J P[41] 100% CNT100    ;
  60:J P[32] 100% CNT100    ;
  61:   ;
  62:  !Swipe5 ;
  63:L P[33] 2000mm/sec CNT20    ;
  64:L P[34] 500mm/sec FINE    ;
  65:L P[35] 500mm/sec FINE    ;
  66:L P[36] 500mm/sec FINE    ;
  67:L P[37] 500mm/sec FINE    ;
  68:   ;
  69:L P[38] 2000mm/sec CNT50    ;
  70:   ;
  71:J P[39] 100% CNT100    ;
  72:J P[40] 100% CNT100    ;
  73:J P[14] 100% CNT50    ;
  74:   ;
  75:  !Swipe5 ;
  76:L P[42] 2000mm/sec FINE    ;
  77:L P[16] 300mm/sec FINE    ;
  78:L P[17] 300mm/sec FINE    ;
  79:L P[9] 200mm/sec FINE    ;
  80:   ;
  81:  !Move to Proc2 ;
  82:J P[30] 100% CNT100    ;
  83:J P[21] 100% CNT100    ;
  84:   ;
  85:  LBL[99:PROGRAM END] ;
  86:  END ;
  87:  CALL REQ_KNIFE_AT_HM    ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1619.146  mm,	Y = -2691.228  mm,	Z =   578.499  mm,
	W =  -174.574 deg,	P =    -7.519 deg,	R =  -178.688 deg
};
P[2]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1860.106  mm,	Y = -2750.497  mm,	Z =    12.462  mm,
	W =   179.881 deg,	P =   -46.588 deg,	R =  -168.417 deg
};
P[3]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1860.107  mm,	Y = -2792.735  mm,	Z =    12.463  mm,
	W =   179.881 deg,	P =   -46.588 deg,	R =  -168.417 deg
};
P[4]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1884.372  mm,	Y = -2738.040  mm,	Z =    93.172  mm,
	W =  -176.598 deg,	P =   -31.008 deg,	R =  -174.975 deg
};
P[5]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1860.107  mm,	Y = -2859.932  mm,	Z =    12.462  mm,
	W =   179.881 deg,	P =   -46.588 deg,	R =  -168.417 deg
};
P[6]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1824.107  mm,	Y = -3158.955  mm,	Z =     8.142  mm,
	W =   179.942 deg,	P =   -46.384 deg,	R =  -169.297 deg
};
P[7]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1818.132  mm,	Y = -3232.930  mm,	Z =     8.119  mm,
	W =   179.942 deg,	P =   -46.384 deg,	R =  -169.297 deg
};
P[8]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1413.226  mm,	Y = -3201.193  mm,	Z =     8.142  mm,
	W =   179.942 deg,	P =   -46.384 deg,	R =  -169.298 deg
};
P[9]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1145.114  mm,	Y = -2572.895  mm,	Z =  -227.394  mm,
	W =   140.048 deg,	P =     9.901 deg,	R =   -86.897 deg
};
P[10]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X = -1281.291  mm,	Y = -2776.405  mm,	Z =    -8.874  mm,
	W =  -120.348 deg,	P =    -4.385 deg,	R =   117.741 deg
};
P[11]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1261.888  mm,	Y = -2793.648  mm,	Z =  -170.862  mm,
	W =   107.641 deg,	P =    10.045 deg,	R =  -106.720 deg
};
P[12]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   663.381  mm,	Y = -2475.163  mm,	Z =  1063.155  mm,
	W =  -175.130 deg,	P =     -.502 deg,	R =   -86.319 deg
};
P[13]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X = -1716.915  mm,	Y = -2834.985  mm,	Z =  -205.767  mm,
	W =  -113.244 deg,	P =      .542 deg,	R =   106.824 deg
};
P[14]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1395.035  mm,	Y = -2609.559  mm,	Z =  -397.252  mm,
	W =   136.522 deg,	P =    13.449 deg,	R =   -89.827 deg
};
P[15]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X = -1710.075  mm,	Y = -2786.989  mm,	Z =  -205.767  mm,
	W =  -113.244 deg,	P =      .542 deg,	R =   106.824 deg
};
P[16]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1363.873  mm,	Y = -2628.969  mm,	Z =  -400.181  mm,
	W =   140.048 deg,	P =     9.901 deg,	R =   -86.897 deg
};
P[17]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1282.850  mm,	Y = -2626.089  mm,	Z =  -404.011  mm,
	W =   140.048 deg,	P =     9.901 deg,	R =   -86.897 deg
};
P[18]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X = -1683.607  mm,	Y = -2785.674  mm,	Z =  -211.489  mm,
	W =  -113.244 deg,	P =      .542 deg,	R =   106.824 deg
};
P[19]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X = -1677.316  mm,	Y = -2784.589  mm,	Z =  -216.207  mm,
	W =  -113.244 deg,	P =      .542 deg,	R =   106.823 deg
};
P[20]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X = -1662.795  mm,	Y = -2781.830  mm,	Z =  -223.528  mm,
	W =  -113.244 deg,	P =      .542 deg,	R =   106.824 deg
};
P[21]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   663.372  mm,	Y = -2475.169  mm,	Z =  1063.104  mm,
	W =  -175.130 deg,	P =     -.500 deg,	R =   -86.320 deg
};
P[22]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1766.027  mm,	Y = -2859.931  mm,	Z =    12.462  mm,
	W =   179.881 deg,	P =   -46.588 deg,	R =  -168.417 deg
};
P[23]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1766.027  mm,	Y = -3098.001  mm,	Z =    12.462  mm,
	W =   179.881 deg,	P =   -46.588 deg,	R =  -168.417 deg
};
P[24]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1824.107  mm,	Y = -3120.558  mm,	Z =     8.142  mm,
	W =   179.942 deg,	P =   -46.384 deg,	R =  -169.297 deg
};
P[25]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X = -1628.238  mm,	Y = -2774.990  mm,	Z =  -232.525  mm,
	W =  -113.244 deg,	P =      .543 deg,	R =   106.824 deg
};
P[26]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X = -1604.237  mm,	Y = -2774.989  mm,	Z =  -232.525  mm,
	W =  -113.244 deg,	P =      .543 deg,	R =   106.824 deg
};
P[27]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X = -1604.238  mm,	Y = -2809.308  mm,	Z =  -153.565  mm,
	W =  -113.244 deg,	P =      .543 deg,	R =   106.824 deg
};
P[28]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X = -1551.727  mm,	Y = -2681.100  mm,	Z =   115.113  mm,
	W =  -120.207 deg,	P =   -10.265 deg,	R =   115.789 deg
};
P[29]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1366.112  mm,	Y = -2946.780  mm,	Z =   151.361  mm,
	W =  -156.159 deg,	P =   -41.048 deg,	R =   165.497 deg
};
P[30]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -782.516  mm,	Y = -2346.935  mm,	Z =   728.031  mm,
	W =   145.703 deg,	P =    -5.674 deg,	R =  -101.862 deg
};
P[31]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1723.346  mm,	Y = -2775.678  mm,	Z =   311.203  mm,
	W =  -175.958 deg,	P =   -23.220 deg,	R =  -177.912 deg
};
P[32]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1813.136  mm,	Y = -3145.613  mm,	Z =    43.370  mm,
	W =   144.332 deg,	P =    12.746 deg,	R =   -88.093 deg
};
P[33]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1837.430  mm,	Y = -2955.670  mm,	Z =   -52.474  mm,
	W =   144.548 deg,	P =     2.462 deg,	R =   -75.322 deg
};
P[34]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1807.550  mm,	Y = -2952.068  mm,	Z =   -73.834  mm,
	W =   144.548 deg,	P =     2.462 deg,	R =   -75.322 deg
};
P[35]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1786.429  mm,	Y = -2949.188  mm,	Z =   -85.354  mm,
	W =   144.548 deg,	P =     2.462 deg,	R =   -75.322 deg
};
P[36]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1771.670  mm,	Y = -2944.268  mm,	Z =   -98.194  mm,
	W =   144.548 deg,	P =     2.462 deg,	R =   -75.322 deg
};
P[37]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1751.512  mm,	Y = -2939.468  mm,	Z =  -110.674  mm,
	W =   144.548 deg,	P =     2.462 deg,	R =   -75.321 deg
};
P[38]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1764.902  mm,	Y = -3011.924  mm,	Z =  -115.743  mm,
	W =   144.729 deg,	P =     1.507 deg,	R =   -82.963 deg
};
P[39]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1813.137  mm,	Y = -3124.613  mm,	Z =    43.370  mm,
	W =   144.332 deg,	P =    12.746 deg,	R =   -88.093 deg
};
P[40]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1275.452  mm,	Y = -2626.227  mm,	Z =   108.779  mm,
	W =   139.563 deg,	P =    13.687 deg,	R =   -92.388 deg
};
P[41]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1515.449  mm,	Y = -2967.026  mm,	Z =  -109.622  mm,
	W =   139.563 deg,	P =    13.686 deg,	R =   -92.388 deg
};
P[42]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1377.311  mm,	Y = -2630.791  mm,	Z =  -401.449  mm,
	W =   138.968 deg,	P =    11.033 deg,	R =   -87.782 deg
};
/END
