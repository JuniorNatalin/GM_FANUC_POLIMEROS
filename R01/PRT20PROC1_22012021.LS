/PROG  PRT20PROC1_22012021
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "DEGATE 300";
PROG_SIZE	= 3765;
CREATE		= DATE 21-01-22  TIME 10:46:12;
MODIFIED	= DATE 21-01-22  TIME 10:46:12;
FILE_NAME	= PRT20PRO;
VERSION		= 0;
LINE_COUNT	= 81;
MEMORY_SIZE	= 4209;
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
  19:J P[51] 100% CNT100    ;
  20:   ;
  21:L P[50] 2000mm/sec CNT100    ;
  22:L P[3] 2000mm/sec CNT50    ;
  23:L P[4] 500mm/sec CNT10    ;
  24:   ;
  25:  !Swipe1 ;
  26:L P[5] 500mm/sec FINE    ;
  27:L P[6] 500mm/sec FINE    ;
  28:L P[7] 500mm/sec FINE    ;
  29:   ;
  30:L P[9] 2000mm/sec CNT50    ;
  31:L P[10] 2000mm/sec CNT100    ;
  32:L P[11] 2000mm/sec CNT100    ;
  33:L P[30] 2000mm/sec CNT50    ;
  34:L P[53] 2000mm/sec CNT50    ;
  35:   ;
  36:  !Swipe2 ;
  37:L P[12] 500mm/sec FINE    ;
  38:L P[13] 500mm/sec FINE    ;
  39:   ;
  40:L P[15] 2000mm/sec CNT50    ;
  41:L P[16] 2000mm/sec CNT100    ;
  42:L P[58] 2000mm/sec CNT100    ;
  43:  //L P[59] 2000mm/sec CNT100    ;
  44:  //L P[60] 2000mm/sec CNT20    ;
  45:   ;
  46:  !Swipe3 ;
  47:  //L P[24] 500mm/sec FINE    ;
  48:  //L P[25] 500mm/sec FINE    ;
  49:  //L P[17] 500mm/sec FINE    ;
  50:  //L P[28] 2000mm/sec CNT50    ;
  51:  //L P[29] 2000mm/sec CNT50    ;
  52:L P[14] 2000mm/sec CNT50    ;
  53:L P[8] 2000mm/sec CNT50    ;
  54:   ;
  55:  !Swipe4 ;
  56:L P[61] 500mm/sec FINE    ;
  57:L P[62] 500mm/sec FINE    ;
  58:L P[63] 500mm/sec FINE    ;
  59:L P[21] 1000mm/sec FINE    ;
  60:L P[65] 2000mm/sec CNT50    ;
  61:L P[31] 2000mm/sec CNT50    ;
  62:L P[67] 2000mm/sec CNT50    ;
  63:L P[68] 2000mm/sec CNT50    ;
  64:L P[54] 2000mm/sec CNT50    ;
  65:   ;
  66:  !Swipe5 ;
  67:L P[18] 500mm/sec FINE    ;
  68:L P[19] 500mm/sec FINE    ;
  69:L P[20] 500mm/sec FINE    ;
  70:   ;
  71:L P[22] 2000mm/sec CNT50    ;
  72:L P[23] 2000mm/sec CNT50    ;
  73:   ;
  74:J P[55] 100% CNT100    ;
  75:J P[57] 100% CNT100    ;
  76:J P[56] 100% CNT100    ;
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
	X = -1972.051  mm,	Y = -2510.462  mm,	Z =   201.899  mm,
	W =   160.798 deg,	P =   -42.433 deg,	R =  -155.657 deg
};
P[4]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2012.806  mm,	Y = -2539.469  mm,	Z =   231.649  mm,
	W =   162.673 deg,	P =   -35.405 deg,	R =  -158.636 deg
};
P[5]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2024.310  mm,	Y = -2554.903  mm,	Z =   220.023  mm,
	W =   162.673 deg,	P =   -35.405 deg,	R =  -158.636 deg
};
P[6]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2021.819  mm,	Y = -2567.582  mm,	Z =   216.790  mm,
	W =   162.673 deg,	P =   -35.406 deg,	R =  -158.636 deg
};
P[7]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2021.255  mm,	Y = -2594.407  mm,	Z =   213.722  mm,
	W =   162.673 deg,	P =   -35.406 deg,	R =  -158.636 deg
};
P[8]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2403.829  mm,	Y = -3196.342  mm,	Z =   493.373  mm,
	W =  -174.331 deg,	P =   -44.818 deg,	R =  -178.389 deg
};
P[9]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1993.608  mm,	Y = -2597.855  mm,	Z =   218.958  mm,
	W =   162.672 deg,	P =   -35.408 deg,	R =  -158.635 deg
};
P[10]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1958.620  mm,	Y = -2585.844  mm,	Z =   224.050  mm,
	W =   175.188 deg,	P =   -36.434 deg,	R =  -158.237 deg
};
P[11]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1911.331  mm,	Y = -2938.588  mm,	Z =   138.550  mm,
	W =   172.042 deg,	P =   -36.499 deg,	R =  -159.273 deg
};
P[12]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2096.345  mm,	Y = -3042.418  mm,	Z =   141.853  mm,
	W =   177.005 deg,	P =   -30.483 deg,	R =  -165.950 deg
};
P[13]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2084.478  mm,	Y = -3095.832  mm,	Z =   141.186  mm,
	W =   177.005 deg,	P =   -30.483 deg,	R =  -165.950 deg
};
P[14]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2213.930  mm,	Y = -3164.131  mm,	Z =   685.315  mm,
	W =  -174.331 deg,	P =   -44.818 deg,	R =  -178.389 deg
};
P[15]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2063.928  mm,	Y = -3090.688  mm,	Z =   119.716  mm,
	W =   177.005 deg,	P =   -30.483 deg,	R =  -165.950 deg
};
P[16]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1974.027  mm,	Y = -3068.189  mm,	Z =    65.166  mm,
	W =   177.005 deg,	P =   -30.483 deg,	R =  -165.950 deg
};
P[17]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1873.417  mm,	Y = -3600.506  mm,	Z =    44.311  mm,
	W =   176.609 deg,	P =   -53.508 deg,	R =  -171.350 deg
};
P[18]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2356.509  mm,	Y = -2790.845  mm,	Z =   454.142  mm,
	W =  -174.284 deg,	P =   -43.587 deg,	R =  -178.422 deg
};
P[19]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2370.430  mm,	Y = -2790.844  mm,	Z =   454.143  mm,
	W =  -174.284 deg,	P =   -43.587 deg,	R =  -178.422 deg
};
P[20]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2370.430  mm,	Y = -2790.844  mm,	Z =   454.142  mm,
	W =  -174.500 deg,	P =   -48.768 deg,	R =  -178.266 deg
};
P[21]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2366.813  mm,	Y = -3324.603  mm,	Z =   463.245  mm,
	W =  -174.638 deg,	P =   -51.608 deg,	R =  -178.160 deg
};
P[22]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2414.878  mm,	Y = -2797.286  mm,	Z =   492.558  mm,
	W =  -174.331 deg,	P =   -44.819 deg,	R =  -178.389 deg
};
P[23]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2252.835  mm,	Y = -2758.483  mm,	Z =   816.693  mm,
	W =  -174.331 deg,	P =   -44.819 deg,	R =  -178.389 deg
};
P[24]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1873.419  mm,	Y = -3565.706  mm,	Z =    44.310  mm,
	W =   176.747 deg,	P =   -53.668 deg,	R =  -171.336 deg
};
P[25]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1873.419  mm,	Y = -3580.107  mm,	Z =    44.311  mm,
	W =   176.747 deg,	P =   -53.668 deg,	R =  -171.336 deg
};
P[28]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1802.617  mm,	Y = -3600.506  mm,	Z =    44.312  mm,
	W =   176.609 deg,	P =   -53.508 deg,	R =  -171.350 deg
};
P[29]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1781.016  mm,	Y = -3571.999  mm,	Z =   145.795  mm,
	W =   179.589 deg,	P =   -41.242 deg,	R =  -169.794 deg
};
P[30]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2050.221  mm,	Y = -2966.701  mm,	Z =   123.721  mm,
	W =   179.761 deg,	P =   -37.238 deg,	R =  -172.103 deg
};
P[31]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2483.134  mm,	Y = -2942.823  mm,	Z =   529.288  mm,
	W =  -174.331 deg,	P =   -44.818 deg,	R =  -178.389 deg
};
P[50]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1910.129  mm,	Y = -2481.164  mm,	Z =   226.411  mm,
	W =   160.798 deg,	P =   -42.433 deg,	R =  -155.658 deg
};
P[51]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1715.728  mm,	Y = -2481.163  mm,	Z =   473.610  mm,
	W =   160.798 deg,	P =   -42.433 deg,	R =  -155.658 deg
};
P[53]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2104.201  mm,	Y = -2972.531  mm,	Z =   150.625  mm,
	W =   177.005 deg,	P =   -30.483 deg,	R =  -165.950 deg
};
P[54]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2356.510  mm,	Y = -2745.727  mm,	Z =   454.143  mm,
	W =  -174.283 deg,	P =   -43.587 deg,	R =  -178.422 deg
};
P[55]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1770.771  mm,	Y = -2812.004  mm,	Z =  1141.218  mm,
	W =  -163.313 deg,	P =   -47.848 deg,	R =   177.116 deg
};
P[56]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X =   663.372  mm,	Y = -2475.172  mm,	Z =  1063.059  mm,
	W =  -175.130 deg,	P =     -.499 deg,	R =   -86.320 deg
};
P[57]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X =  -981.655  mm,	Y = -2303.783  mm,	Z =  1039.231  mm,
	W =   165.100 deg,	P =    -1.733 deg,	R =  -133.603 deg
};
P[58]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1886.885  mm,	Y = -3403.110  mm,	Z =    42.256  mm,
	W =   177.005 deg,	P =   -30.483 deg,	R =  -165.950 deg
};
P[59]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1854.738  mm,	Y = -3507.727  mm,	Z =    32.214  mm,
	W =   177.005 deg,	P =   -30.483 deg,	R =  -165.950 deg
};
P[60]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1896.008  mm,	Y = -3516.395  mm,	Z =    95.628  mm,
	W =   179.589 deg,	P =   -41.241 deg,	R =  -169.795 deg
};
P[61]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2350.495  mm,	Y = -3267.964  mm,	Z =   466.845  mm,
	W =  -174.255 deg,	P =   -42.834 deg,	R =  -178.442 deg
};
P[62]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2350.495  mm,	Y = -3324.602  mm,	Z =   466.844  mm,
	W =  -174.255 deg,	P =   -42.834 deg,	R =  -178.442 deg
};
P[63]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2366.815  mm,	Y = -3324.602  mm,	Z =   466.845  mm,
	W =  -174.255 deg,	P =   -42.834 deg,	R =  -178.442 deg
};
P[65]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2366.813  mm,	Y = -3324.603  mm,	Z =   622.846  mm,
	W =  -174.638 deg,	P =   -51.608 deg,	R =  -178.160 deg
};
P[67]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2512.639  mm,	Y = -2642.615  mm,	Z =   508.101  mm,
	W =  -174.331 deg,	P =   -44.819 deg,	R =  -178.389 deg
};
P[68]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2405.154  mm,	Y = -2705.621  mm,	Z =   452.254  mm,
	W =  -174.331 deg,	P =   -44.819 deg,	R =  -178.389 deg
};
/END
