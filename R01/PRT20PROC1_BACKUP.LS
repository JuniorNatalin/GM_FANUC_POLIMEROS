/PROG  PRT20PROC1_BACKUP
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "DEGATE 300";
PROG_SIZE	= 3637;
CREATE		= DATE 21-06-15  TIME 15:50:24;
MODIFIED	= DATE 21-06-15  TIME 15:50:24;
FILE_NAME	= PRT20PRO;
VERSION		= 0;
LINE_COUNT	= 81;
MEMORY_SIZE	= 4081;
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
   4:  !TOOL 07 DEGATE ;
   5:   ;
   6:  IF DO[66:OFF]=ON,JMP LBL[99] ;
   7:  SET SEGMENT(22) ;
   8:  Set MH Tool(5) ;
   9:   ;
  10:  UTOOL_NUM=5 ;
  11:  UFRAME_NUM=0 ;
  12:  PAYLOAD[11] ;
  13:   ;
  14:  !Request Knife Repo ;
  15:  CALL REQ_KNIFE_AT_HM    ;
  16:   ;
  17:J P[1] 100% CNT100    ;
  18:J P[2] 100% CNT100    ;
  19:J P[3] 100% CNT100    ;
  20:   ;
  21:L P[4] 2000mm/sec CNT100    ;
  22:L P[5] 2000mm/sec CNT50    ;
  23:L P[6] 500mm/sec CNT10    ;
  24:   ;
  25:  !Swipe1 ;
  26:L P[7] 500mm/sec FINE    ;
  27:L P[8] 500mm/sec FINE    ;
  28:L P[9] 500mm/sec FINE    ;
  29:   ;
  30:L P[10] 2000mm/sec CNT50    ;
  31:L P[11] 2000mm/sec CNT100    ;
  32:L P[12] 2000mm/sec CNT100    ;
  33:L P[13] 2000mm/sec CNT50    ;
  34:L P[14] 2000mm/sec CNT50    ;
  35:   ;
  36:  !Swipe2 ;
  37:L P[15] 500mm/sec FINE    ;
  38:L P[16] 500mm/sec FINE    ;
  39:   ;
  40:L P[17] 2000mm/sec CNT50    ;
  41:L P[18] 2000mm/sec CNT100    ;
  42:L P[19] 2000mm/sec CNT100    ;
  43:L P[20] 2000mm/sec CNT100    ;
  44:L P[21] 2000mm/sec CNT20    ;
  45:   ;
  46:  !Swipe3 ;
  47:L P[22] 1000mm/sec CNT20    ;
  48:L P[23] 500mm/sec FINE    ;
  49:L P[24] 500mm/sec FINE    ;
  50:L P[25] 500mm/sec FINE    ;
  51:L P[26] 2000mm/sec CNT50    ;
  52:L P[27] 2000mm/sec CNT50    ;
  53:L P[28] 2000mm/sec CNT50    ;
  54:   ;
  55:  !Swipe4 ;
  56:L P[29] 500mm/sec FINE    ;
  57:L P[30] 500mm/sec FINE    ;
  58:L P[31] 500mm/sec FINE    ;
  59:L P[32] 1000mm/sec FINE    ;
  60:L P[33] 2000mm/sec CNT50    ;
  61:L P[34] 2000mm/sec CNT50    ;
  62:L P[35] 2000mm/sec CNT50    ;
  63:L P[36] 2000mm/sec CNT50    ;
  64:L P[37] 2000mm/sec CNT50    ;
  65:   ;
  66:  !Swipe5 ;
  67:L P[38] 500mm/sec FINE    ;
  68:L P[39] 500mm/sec FINE    ;
  69:L P[40] 500mm/sec FINE    ;
  70:   ;
  71:L P[41] 2000mm/sec CNT50    ;
  72:L P[42] 2000mm/sec CNT50    ;
  73:   ;
  74:J P[43] 100% CNT100    ;
  75:J P[44] 100% CNT100    ;
  76:J P[45] 100% CNT100    ;
  77:   ;
  78:  LBL[99:PROGRAM END] ;
  79:  END ;
  80:  CALL REQ_KNIFE_AT_HM    ;
  81:   ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X =   663.372  mm,	Y = -2475.172  mm,	Z =  1063.059  mm,
	W =  -175.130 deg,	P =     -.499 deg,	R =   -86.320 deg
};
P[2]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1299.748  mm,	Y = -2627.935  mm,	Z =   793.173  mm,
	W =   162.300 deg,	P =   -29.183 deg,	R =  -150.572 deg
};
P[3]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1715.728  mm,	Y = -2481.163  mm,	Z =   473.610  mm,
	W =   160.798 deg,	P =   -42.433 deg,	R =  -155.658 deg
};
P[4]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1910.129  mm,	Y = -2481.164  mm,	Z =   226.411  mm,
	W =   160.798 deg,	P =   -42.433 deg,	R =  -155.658 deg
};
P[5]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1970.369  mm,	Y = -2534.036  mm,	Z =   210.628  mm,
	W =   160.798 deg,	P =   -42.434 deg,	R =  -155.657 deg
};
P[6]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1969.756  mm,	Y = -2536.616  mm,	Z =   209.362  mm,
	W =   160.714 deg,	P =   -42.434 deg,	R =  -155.657 deg
};
P[7]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1971.154  mm,	Y = -2539.734  mm,	Z =   210.628  mm,
	W =   160.714 deg,	P =   -42.434 deg,	R =  -155.657 deg
};
P[8]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1970.445  mm,	Y = -2551.024  mm,	Z =   211.936  mm,
	W =   160.714 deg,	P =   -42.434 deg,	R =  -155.657 deg
};
P[9]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1970.961  mm,	Y = -2569.811  mm,	Z =   211.488  mm,
	W =   160.840 deg,	P =   -42.434 deg,	R =  -155.657 deg
};
P[10]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1969.701  mm,	Y = -2576.208  mm,	Z =   209.862  mm,
	W =   160.840 deg,	P =   -42.434 deg,	R =  -155.657 deg
};
P[11]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1958.620  mm,	Y = -2585.844  mm,	Z =   224.050  mm,
	W =   175.188 deg,	P =   -36.434 deg,	R =  -158.237 deg
};
P[12]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1911.331  mm,	Y = -2938.588  mm,	Z =   138.550  mm,
	W =   172.042 deg,	P =   -36.499 deg,	R =  -159.273 deg
};
P[13]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2050.221  mm,	Y = -2966.701  mm,	Z =   123.721  mm,
	W =   179.761 deg,	P =   -37.238 deg,	R =  -172.103 deg
};
P[14]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2104.201  mm,	Y = -2972.531  mm,	Z =   150.625  mm,
	W =   177.005 deg,	P =   -30.483 deg,	R =  -165.950 deg
};
P[15]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2086.430  mm,	Y = -3022.693  mm,	Z =   146.714  mm,
	W =   177.647 deg,	P =   -35.366 deg,	R =  -167.222 deg
};
P[16]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2066.776  mm,	Y = -3102.073  mm,	Z =   153.572  mm,
	W =   177.647 deg,	P =   -35.367 deg,	R =  -167.222 deg
};
P[17]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2097.844  mm,	Y = -3083.030  mm,	Z =   164.059  mm,
	W =   177.655 deg,	P =   -30.743 deg,	R =  -167.223 deg
};
P[18]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1974.027  mm,	Y = -3068.189  mm,	Z =    65.166  mm,
	W =   177.005 deg,	P =   -30.483 deg,	R =  -165.950 deg
};
P[19]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1596.828  mm,	Y = -3343.274  mm,	Z =   142.569  mm,
	W =   177.005 deg,	P =   -30.483 deg,	R =  -165.950 deg
};
P[20]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1513.993  mm,	Y = -3494.883  mm,	Z =   161.161  mm,
	W =  -176.281 deg,	P =   -30.441 deg,	R =  -159.236 deg
};
P[21]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1741.021  mm,	Y = -3526.904  mm,	Z =   193.147  mm,
	W =  -175.404 deg,	P =   -30.098 deg,	R =  -166.847 deg
};
P[22]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1898.286  mm,	Y = -3567.129  mm,	Z =   246.607  mm,
	W =  -170.102 deg,	P =   -35.207 deg,	R =  -175.744 deg
};
P[23]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1974.652  mm,	Y = -3527.426  mm,	Z =   322.248  mm,
	W =  -159.929 deg,	P =   -39.174 deg,	R =   170.955 deg
};
P[24]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1976.690  mm,	Y = -3498.629  mm,	Z =   314.984  mm,
	W =  -159.907 deg,	P =   -39.802 deg,	R =   170.658 deg
};
P[25]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1977.029  mm,	Y = -3482.684  mm,	Z =   307.719  mm,
	W =  -159.785 deg,	P =   -40.470 deg,	R =   170.338 deg
};
P[26]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1781.016  mm,	Y = -3571.999  mm,	Z =   145.795  mm,
	W =   179.589 deg,	P =   -41.242 deg,	R =  -169.794 deg
};
P[27]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2213.930  mm,	Y = -3164.131  mm,	Z =   685.315  mm,
	W =  -174.331 deg,	P =   -44.818 deg,	R =  -178.389 deg
};
P[28]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2403.829  mm,	Y = -3196.342  mm,	Z =   493.373  mm,
	W =  -174.331 deg,	P =   -44.818 deg,	R =  -178.389 deg
};
P[29]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2350.495  mm,	Y = -3267.964  mm,	Z =   466.845  mm,
	W =  -174.255 deg,	P =   -42.834 deg,	R =  -178.442 deg
};
P[30]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2350.495  mm,	Y = -3324.602  mm,	Z =   466.844  mm,
	W =  -174.255 deg,	P =   -42.834 deg,	R =  -178.442 deg
};
P[31]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2374.231  mm,	Y = -3315.659  mm,	Z =   472.161  mm,
	W =  -174.255 deg,	P =   -42.834 deg,	R =  -178.613 deg
};
P[32]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2366.813  mm,	Y = -3324.603  mm,	Z =   463.245  mm,
	W =  -174.638 deg,	P =   -51.608 deg,	R =  -178.160 deg
};
P[33]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2366.813  mm,	Y = -3324.603  mm,	Z =   622.846  mm,
	W =  -174.638 deg,	P =   -51.608 deg,	R =  -178.160 deg
};
P[34]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2483.134  mm,	Y = -2942.823  mm,	Z =   529.288  mm,
	W =  -174.331 deg,	P =   -44.818 deg,	R =  -178.389 deg
};
P[35]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2512.639  mm,	Y = -2642.615  mm,	Z =   508.101  mm,
	W =  -174.331 deg,	P =   -44.819 deg,	R =  -178.389 deg
};
P[36]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2405.154  mm,	Y = -2705.621  mm,	Z =   452.254  mm,
	W =  -174.331 deg,	P =   -44.819 deg,	R =  -178.389 deg
};
P[37]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2364.024  mm,	Y = -2737.532  mm,	Z =   454.823  mm,
	W =  -174.301 deg,	P =   -44.053 deg,	R =  -178.410 deg
};
P[38]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2360.601  mm,	Y = -2747.846  mm,	Z =   453.233  mm,
	W =  -174.301 deg,	P =   -44.053 deg,	R =  -178.410 deg
};
P[39]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2354.849  mm,	Y = -2806.942  mm,	Z =   457.482  mm,
	W =  -174.301 deg,	P =   -44.053 deg,	R =  -178.410 deg
};
P[40]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2353.170  mm,	Y = -2824.164  mm,	Z =   458.719  mm,
	W =  -174.301 deg,	P =   -44.053 deg,	R =  -178.410 deg
};
P[41]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2414.878  mm,	Y = -2797.286  mm,	Z =   492.558  mm,
	W =  -174.331 deg,	P =   -44.819 deg,	R =  -178.389 deg
};
P[42]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2252.835  mm,	Y = -2758.483  mm,	Z =   816.693  mm,
	W =  -174.331 deg,	P =   -44.819 deg,	R =  -178.389 deg
};
P[43]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1770.771  mm,	Y = -2812.004  mm,	Z =  1141.218  mm,
	W =  -163.313 deg,	P =   -47.848 deg,	R =   177.116 deg
};
P[44]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X =  -981.655  mm,	Y = -2303.783  mm,	Z =  1039.231  mm,
	W =   165.100 deg,	P =    -1.733 deg,	R =  -133.603 deg
};
P[45]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X =   663.372  mm,	Y = -2475.172  mm,	Z =  1063.059  mm,
	W =  -175.130 deg,	P =     -.499 deg,	R =   -86.320 deg
};
/END
