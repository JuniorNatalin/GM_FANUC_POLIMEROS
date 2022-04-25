/PROG  PRT05PROC1
/ATTR
OWNER		= SHIFT;
COMMENT		= "DEGATE 239";
PROG_SIZE	= 4033;
CREATE		= DATE 18-06-19  TIME 14:10:46;
MODIFIED	= DATE 19-05-06  TIME 11:52:02;
FILE_NAME	= PRT09PRO;
VERSION		= 0;
LINE_COUNT	= 90;
MEMORY_SIZE	= 4441;
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
   5:   ;
   6:   ;
   7:  Set MH Tool(5) ;
   8:   ;
   9:  UTOOL_NUM=5 ;
  10:  UFRAME_NUM=0 ;
  11:  PAYLOAD[11] ;
  12:   ;
  13:  !Request Knife Repo ;
  14:  CALL REQ_KNIFE_AT_HM    ;
  15:   ;
  16:J P[1] 100% CNT100    ;
  17:J P[2] 100% CNT100    ;
  18:J P[51] 100% CNT100    ;
  19:   ;
  20:L P[50] 2000mm/sec CNT100    ;
  21:L P[3] 2000mm/sec CNT50    ;
  22:L P[4] 500mm/sec CNT10    ;
  23:   ;
  24:  !Swipe1 ;
  25:L P[5] 500mm/sec FINE    ;
  26:L P[6] 500mm/sec FINE    ;
  27:L P[7] 500mm/sec FINE    ;
  28:L P[8] 500mm/sec FINE    ;
  29:   ;
  30:L P[9] 2000mm/sec CNT50    ;
  31:L P[10] 2000mm/sec CNT100    ;
  32:L P[11] 2000mm/sec CNT100    ;
  33:L P[32] 2000mm/sec CNT100    ;
  34:L P[30] 2000mm/sec FINE    ;
  35:   ;
  36:  ENTER I-ZONE(1) ;
  37:  ENTER I-ZONE(2) ;
  38:   ;
  39:L P[53] 2000mm/sec CNT50    ;
  40:   ;
  41:  !Swipe2 ;
  42:L P[12] 500mm/sec FINE    ;
  43:L P[13] 500mm/sec FINE    ;
  44:L P[14] 500mm/sec FINE    ;
  45:L P[15] 2000mm/sec CNT50    ;
  46:   ;
  47:L P[16] 2000mm/sec CNT100    ;
  48:L P[58] 2000mm/sec CNT100    ;
  49:L P[59] 2000mm/sec CNT100    ;
  50:L P[60] 2000mm/sec CNT20    ;
  51:   ;
  52:  !Swipe3 ;
  53:L P[24] 500mm/sec FINE    ;
  54:L P[25] 500mm/sec FINE    ;
  55:L P[26] 500mm/sec FINE    ;
  56:L P[27] 500mm/sec FINE    ;
  57:   ;
  58:L P[28] 2000mm/sec CNT50    ;
  59:L P[29] 2000mm/sec CNT50    ;
  60:   ;
  61:  !Swipe4 ;
  62:L P[61] 500mm/sec FINE    ;
  63:L P[62] 500mm/sec FINE    ;
  64:L P[63] 500mm/sec FINE    ;
  65:L P[64] 500mm/sec FINE    ;
  66:   ;
  67:L P[65] 2000mm/sec CNT50    ;
  68:L P[31] 2000mm/sec CNT50    ;
  69:L P[67] 2000mm/sec CNT100    ;
  70:L P[68] 2000mm/sec CNT100    ;
  71:L P[17] 2000mm/sec CNT50    ;
  72:L P[54] 2000mm/sec CNT50    ;
  73:   ;
  74:  !Swipe5 ;
  75:L P[18] 500mm/sec FINE    ;
  76:L P[19] 500mm/sec FINE    ;
  77:L P[20] 500mm/sec FINE    ;
  78:L P[21] 500mm/sec FINE    ;
  79:   ;
  80:L P[22] 2000mm/sec CNT50    ;
  81:L P[23] 2000mm/sec CNT50    ;
  82:   ;
  83:J P[55] 100% CNT100    ;
  84:J P[57] 100% CNT100    ;
  85:J P[56] 100% CNT100    ;
  86:   ;
  87:  LBL[99:PROGRAM END] ;
  88:  END ;
  89:  CALL REQ_KNIFE_AT_HM    ;
  90:   ;
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
	X = -2025.328  mm,	Y = -2481.164  mm,	Z =   159.211  mm,
	W =   160.798 deg,	P =   -42.433 deg,	R =  -155.658 deg
};
P[4]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2051.651  mm,	Y = -2492.696  mm,	Z =   155.315  mm,
	W =   160.798 deg,	P =   -42.433 deg,	R =  -155.658 deg
};
P[5]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2071.886  mm,	Y = -2501.564  mm,	Z =   163.051  mm,
	W =   160.798 deg,	P =   -42.433 deg,	R =  -155.658 deg
};
P[6]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2071.887  mm,	Y = -2514.643  mm,	Z =   163.052  mm,
	W =   160.798 deg,	P =   -42.433 deg,	R =  -155.658 deg
};
P[7]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2071.887  mm,	Y = -2523.402  mm,	Z =   163.051  mm,
	W =   160.798 deg,	P =   -42.433 deg,	R =  -155.658 deg
};
P[8]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2071.887  mm,	Y = -2539.601  mm,	Z =   163.051  mm,
	W =   160.798 deg,	P =   -42.433 deg,	R =  -155.658 deg
};
P[9]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2056.767  mm,	Y = -2539.600  mm,	Z =   158.493  mm,
	W =   160.798 deg,	P =   -42.433 deg,	R =  -155.658 deg
};
P[10]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1988.490  mm,	Y = -2539.599  mm,	Z =   167.852  mm,
	W =   160.798 deg,	P =   -42.433 deg,	R =  -155.658 deg
};
P[11]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1962.570  mm,	Y = -2608.555  mm,	Z =   205.611  mm,
	W =   168.030 deg,	P =   -44.125 deg,	R =  -161.209 deg
};
P[12]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2089.631  mm,	Y = -3015.637  mm,	Z =    86.973  mm,
	W =  -178.147 deg,	P =   -45.264 deg,	R =  -176.498 deg
};
P[13]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2087.416  mm,	Y = -3041.044  mm,	Z =    87.480  mm,
	W =  -178.147 deg,	P =   -45.264 deg,	R =  -176.497 deg
};
P[14]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2086.622  mm,	Y = -3071.929  mm,	Z =    90.010  mm,
	W =  -178.147 deg,	P =   -45.264 deg,	R =  -176.497 deg
};
P[15]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2113.140  mm,	Y = -3102.137  mm,	Z =    95.266  mm,
	W =  -174.213 deg,	P =   -45.105 deg,	R =   173.713 deg
};
P[16]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1975.048  mm,	Y = -3106.768  mm,	Z =    30.411  mm,
	W =   168.030 deg,	P =   -44.125 deg,	R =  -161.209 deg
};
P[17]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1884.702  mm,	Y = -3477.409  mm,	Z =    89.976  mm,
	W =  -174.801 deg,	P =   -45.515 deg,	R =  -174.418 deg
};
P[18]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1977.214  mm,	Y = -3557.611  mm,	Z =   104.211  mm,
	W =  -172.256 deg,	P =   -45.371 deg,	R =  -176.378 deg
};
P[19]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1977.214  mm,	Y = -3567.691  mm,	Z =   104.211  mm,
	W =  -172.256 deg,	P =   -45.371 deg,	R =  -176.378 deg
};
P[20]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1977.214  mm,	Y = -3583.770  mm,	Z =   104.211  mm,
	W =  -172.256 deg,	P =   -45.371 deg,	R =  -176.378 deg
};
P[21]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1962.094  mm,	Y = -3583.771  mm,	Z =    94.132  mm,
	W =  -172.256 deg,	P =   -45.371 deg,	R =  -176.378 deg
};
P[22]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1865.134  mm,	Y = -3429.457  mm,	Z =    94.131  mm,
	W =  -172.256 deg,	P =   -45.371 deg,	R =  -176.378 deg
};
P[23]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1769.134  mm,	Y = -2807.861  mm,	Z =    94.131  mm,
	W =  -172.256 deg,	P =   -45.371 deg,	R =  -176.378 deg
};
P[24]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2345.596  mm,	Y = -2745.938  mm,	Z =   406.612  mm,
	W =  -174.510 deg,	P =   -48.825 deg,	R =  -173.709 deg
};
P[25]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2341.996  mm,	Y = -2758.175  mm,	Z =   406.612  mm,
	W =  -174.510 deg,	P =   -48.825 deg,	R =  -173.709 deg
};
P[26]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2341.996  mm,	Y = -2774.734  mm,	Z =   406.613  mm,
	W =  -174.510 deg,	P =   -48.825 deg,	R =  -173.709 deg
};
P[27]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2341.997  mm,	Y = -2807.132  mm,	Z =   406.613  mm,
	W =  -174.510 deg,	P =   -48.825 deg,	R =  -173.709 deg
};
P[28]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2387.355  mm,	Y = -2807.131  mm,	Z =   406.612  mm,
	W =  -174.510 deg,	P =   -48.825 deg,	R =  -173.709 deg
};
P[29]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2328.319  mm,	Y = -3216.792  mm,	Z =   406.613  mm,
	W =  -174.510 deg,	P =   -48.825 deg,	R =  -173.709 deg
};
P[30]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1965.885  mm,	Y = -2922.212  mm,	Z =   173.885  mm,
	W =  -178.147 deg,	P =   -45.264 deg,	R =  -176.497 deg
};
P[31]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2322.199  mm,	Y = -3329.105  mm,	Z =   490.611  mm,
	W =  -174.510 deg,	P =   -48.825 deg,	R =  -173.709 deg
};
P[32]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1962.569  mm,	Y = -2918.862  mm,	Z =   178.251  mm,
	W =   168.030 deg,	P =   -44.125 deg,	R =  -161.209 deg
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
	X = -2091.284  mm,	Y = -2996.582  mm,	Z =    86.585  mm,
	W =  -178.147 deg,	P =   -45.264 deg,	R =  -176.497 deg
};
P[54]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1953.214  mm,	Y = -3532.173  mm,	Z =    98.691  mm,
	W =  -172.255 deg,	P =   -45.372 deg,	R =  -176.378 deg
};
P[55]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1769.134  mm,	Y = -2807.861  mm,	Z =   875.332  mm,
	W =  -172.256 deg,	P =   -45.371 deg,	R =  -176.378 deg
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
	X = -1971.448  mm,	Y = -3106.768  mm,	Z =   231.652  mm,
	W =   168.030 deg,	P =   -44.125 deg,	R =  -161.209 deg
};
P[59]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2277.920  mm,	Y = -2877.697  mm,	Z =   486.292  mm,
	W =   168.030 deg,	P =   -44.125 deg,	R =  -161.209 deg
};
P[60]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2379.196  mm,	Y = -2691.457  mm,	Z =   442.852  mm,
	W =  -174.510 deg,	P =   -48.825 deg,	R =  -173.709 deg
};
P[61]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2309.599  mm,	Y = -3254.230  mm,	Z =   406.612  mm,
	W =  -174.510 deg,	P =   -48.825 deg,	R =  -173.709 deg
};
P[62]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2308.520  mm,	Y = -3275.829  mm,	Z =   406.611  mm,
	W =  -174.510 deg,	P =   -48.825 deg,	R =  -173.709 deg
};
P[63]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2305.402  mm,	Y = -3293.826  mm,	Z =   406.612  mm,
	W =  -174.510 deg,	P =   -48.825 deg,	R =  -173.709 deg
};
P[64]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2300.600  mm,	Y = -3329.105  mm,	Z =   406.612  mm,
	W =  -174.510 deg,	P =   -48.825 deg,	R =  -173.709 deg
};
P[65]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2322.199  mm,	Y = -3329.104  mm,	Z =   406.611  mm,
	W =  -174.510 deg,	P =   -48.825 deg,	R =  -173.709 deg
};
P[67]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2034.201  mm,	Y = -3333.905  mm,	Z =   507.411  mm,
	W =  -174.510 deg,	P =   -48.825 deg,	R =  -173.709 deg
};
P[68]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1818.953  mm,	Y = -3432.244  mm,	Z =   221.352  mm,
	W =  -174.702 deg,	P =   -46.556 deg,	R =  -174.195 deg
};
/END
