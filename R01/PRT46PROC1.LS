/PROG  PRT46PROC1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "DEGATE 377";
PROG_SIZE	= 6235;
CREATE		= DATE 22-02-26  TIME 07:18:42;
MODIFIED	= DATE 22-04-15  TIME 17:23:48;
FILE_NAME	= PRT43PRO;
VERSION		= 0;
LINE_COUNT	= 140;
MEMORY_SIZE	= 6699;
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
   1:   ;
   2:  UFRAME_NUM=0 ;
   3:  UTOOL_NUM=1 ;
   4:   ;
   5:  ENTER I-ZONE(1) ;
   6:  ENTER I-ZONE(2) ;
   7:  IF DO[66:OFF]=ON,JMP LBL[99] ;
   8:  SET SEGMENT(22) ;
   9:  !TOOL 02 DEGATE ;
  10:   ;
  11:  IF DO[66:OFF]=ON,JMP LBL[99] ;
  12:   ;
  13:J P[1] 100% CNT20    ;
  14:   ;
  15:   ;
  16:  SET SEGMENT(22) ;
  17:   ;
  18:  !FACA 180 ;
  19:  CALL REQ_KNIFE_AT_HM    ;
  20:   ;
  21:  !TOOL 02 DEGATE ;
  22:J P[2] 100% CNT20    ;
  23:   ;
  24:J P[73] 100% CNT50    ;
  25:   ;
  26:J P[5] 100% CNT20    ;
  27:   ;
  28:  !GALHO1 ;
  29:L P[3] 250mm/sec FINE    ;
  30:L P[4] 250mm/sec FINE    ;
  31:   ;
  32:J P[79] 100% FINE    ;
  33:J P[80] 100% FINE    ;
  34:J P[72] 100% CNT10    ;
  35:   ;
  36:J P[9] 100% CNT50    ;
  37:J P[8] 100% CNT10    ;
  38:J P[81] 100% CNT10    ;
  39:  !GALHO2 ;
  40:L P[6] 200mm/sec FINE    ;
  41:L P[7] 200mm/sec FINE    ;
  42:J P[84] 100% FINE    ;
  43:J P[85] 100% FINE    ;
  44:J P[76] 100% CNT10    ;
  45:  //J P[68] 100% FINE    ;
  46:   ;
  47:   ;
  48:J P[64] 100% CNT50    ;
  49:J P[10] 100% CNT50    ;
  50:J P[16] 100% CNT50    ;
  51:J P[15] 100% CNT50    ;
  52:J P[14] 100% CNT50    ;
  53:   ;
  54:J P[13] 100% CNT50    ;
  55:J P[17] 100% CNT50    ;
  56:   ;
  57:J P[69] 100% CNT10    ;
  58:  !GALHO3 ;
  59:L P[11] 250mm/sec FINE    ;
  60:L P[12] 250mm/sec FINE    ;
  61:J P[74] 100% CNT10    ;
  62:J P[18] 100% CNT20    ;
  63:J P[65] 100% CNT50    ;
  64:J P[23] 100% CNT50    ;
  65:J P[22] 100% CNT50    ;
  66:J P[21] 100% CNT50    ;
  67:  //J P[20] 100% CNT10    ;
  68:  !GALHO4 ;
  69:  //J P[19] 100% FINE    ;
  70:  //J P[24] 100% FINE    ;
  71:  //J P[25] 100% CNT10    ;
  72:J P[51] 100% CNT50    ;
  73:J P[52] 100% CNT100    ;
  74:J P[53] 100% CNT50    ;
  75:J P[54] 100% CNT50    ;
  76:J P[63] 100% CNT50    ;
  77:J P[55] 100% CNT30    ;
  78:   ;
  79:  !GALHO 6 ;
  80:   ;
  81:L P[26] 250mm/sec FINE    ;
  82:L P[27] 250mm/sec FINE    ;
  83:   ;
  84:J P[28] 100% CNT20    ;
  85:J P[29] 100% CNT50    ;
  86:   ;
  87:  !GALHO4 ;
  88:L P[31] 250mm/sec FINE    ;
  89:L P[32] 250mm/sec FINE    ;
  90:   ;
  91:J P[33] 100% CNT10    ;
  92:J P[34] 100% CNT10    ;
  93:  !GALHO4 ;
  94:L P[35] 250mm/sec FINE    ;
  95:L P[36] 250mm/sec FINE    ;
  96:J P[70] 100% FINE    ;
  97:J P[75] 100% CNT20    ;
  98:J P[71] 100% CNT20    ;
  99:J P[37] 100% CNT20    ;
 100:   ;
 101:J P[56] 100% CNT50    ;
 102:  !GALHO4 ;
 103:L P[38] 250mm/sec FINE    ;
 104:L P[39] 250mm/sec FINE    ;
 105:   ;
 106:J P[57] 100% CNT10    ;
 107:J P[66] 100% CNT50    ;
 108:  //J P[58] 100% CNT50    ;
 109:  //J P[43] 100% CNT50    ;
 110:  //J P[30] 100% CNT50    ;
 111:  !GALHO4 ;
 112:  //L P[40] 250mm/sec FINE    ;
 113:  //L P[41] 250mm/sec FINE    ;
 114:  //J P[42] 100% CNT100    ;
 115:  //J P[44] 100% CNT100    ;
 116:   ;
 117:J P[59] 100% CNT51    ;
 118:J P[61] 100% CNT30    ;
 119:J P[60] 100% CNT10    ;
 120:   ;
 121:  !GALHO4 ;
 122:L P[46] 250mm/sec FINE    ;
 123:L P[45] 250mm/sec FINE    ;
 124:J P[82] 100% FINE    ;
 125:J P[83] 100% FINE    ;
 126:J P[47] 100% CNT50    ;
 127:   ;
 128:  !GALHO4 ;
 129:L P[48] 250mm/sec FINE    ;
 130:L P[49] 250mm/sec FINE    ;
 131:J P[78] 100% FINE    ;
 132:J P[77] 100% CNT10    ;
 133:J P[50] 100% CNT50    ;
 134:J P[67] 100% CNT50    ;
 135:J P[62] 100% CNT20    ;
 136:   ;
 137:  EXIT I-ZONE(1) ;
 138:  EXIT I-ZONE(2) ;
 139:   ;
 140:   ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   672.849  mm,	Y = -2222.007  mm,	Z =   -52.515  mm,
	W =  -176.488 deg,	P =     1.343 deg,	R =    86.739 deg
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X = -1352.969  mm,	Y = -2722.553  mm,	Z =   763.419  mm,
	W =   -76.472 deg,	P =    75.988 deg,	R =    94.680 deg
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X = -1615.039  mm,	Y = -2400.411  mm,	Z =   467.286  mm,
	W =   -61.178 deg,	P =    86.563 deg,	R =    89.687 deg
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X = -1619.239  mm,	Y = -2372.091  mm,	Z =   467.284  mm,
	W =   -61.180 deg,	P =    86.563 deg,	R =    89.686 deg
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X = -1622.958  mm,	Y = -2406.772  mm,	Z =   467.286  mm,
	W =   -61.178 deg,	P =    86.563 deg,	R =    89.687 deg
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X = -1371.476  mm,	Y = -2544.834  mm,	Z =   101.993  mm,
	W =    24.795 deg,	P =    64.170 deg,	R =   176.590 deg
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X = -1378.089  mm,	Y = -2517.889  mm,	Z =   101.953  mm,
	W =    24.792 deg,	P =    64.170 deg,	R =   176.589 deg
};
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X = -1629.689  mm,	Y = -2603.834  mm,	Z =   559.249  mm,
	W =  -100.089 deg,	P =    85.623 deg,	R =    51.484 deg
};
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X = -1642.787  mm,	Y = -2464.413  mm,	Z =   519.458  mm,
	W =  -100.848 deg,	P =    85.630 deg,	R =    45.995 deg
};
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X = -1657.707  mm,	Y = -2541.263  mm,	Z =   481.628  mm,
	W =  -100.092 deg,	P =    85.625 deg,	R =    51.472 deg
};
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X = -2497.262  mm,	Y = -2413.193  mm,	Z =   440.755  mm,
	W =  -165.243 deg,	P =    20.843 deg,	R =    28.049 deg
};
P[12]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X = -2484.386  mm,	Y = -2438.218  mm,	Z =   446.718  mm,
	W =  -164.549 deg,	P =    22.111 deg,	R =    27.246 deg
};
P[13]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X = -2236.919  mm,	Y = -2250.369  mm,	Z =   397.117  mm,
	W =   179.092 deg,	P =    35.950 deg,	R =    12.893 deg
};
P[14]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X = -2170.082  mm,	Y = -2240.410  mm,	Z =   972.246  mm,
	W =  -176.317 deg,	P =    51.250 deg,	R =    -1.052 deg
};
P[15]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X = -1783.922  mm,	Y = -2625.669  mm,	Z =   937.381  mm,
	W =  -150.652 deg,	P =    73.909 deg,	R =    21.516 deg
};
P[16]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X = -1516.038  mm,	Y = -2878.776  mm,	Z =   770.973  mm,
	W =  -151.187 deg,	P =    87.120 deg,	R =    25.667 deg
};
P[17]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X = -2336.421  mm,	Y = -2291.787  mm,	Z =   452.274  mm,
	W =  -165.429 deg,	P =    23.372 deg,	R =    26.651 deg
};
P[18]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X = -2441.729  mm,	Y = -2455.856  mm,	Z =   446.720  mm,
	W =  -164.549 deg,	P =    22.111 deg,	R =    27.246 deg
};
P[19]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X = -2602.153  mm,	Y = -2920.687  mm,	Z =   671.994  mm,
	W =  -129.035 deg,	P =    33.131 deg,	R =   126.327 deg
};
P[20]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X = -2563.975  mm,	Y = -2880.937  mm,	Z =   684.817  mm,
	W =  -129.038 deg,	P =    33.130 deg,	R =   126.322 deg
};
P[21]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X = -2469.956  mm,	Y = -2716.593  mm,	Z =   802.363  mm,
	W =  -129.038 deg,	P =    33.130 deg,	R =   126.322 deg
};
P[22]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X = -2382.453  mm,	Y = -2470.469  mm,	Z =   744.808  mm,
	W =  -161.195 deg,	P =    50.079 deg,	R =    70.169 deg
};
P[23]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X = -2279.729  mm,	Y = -2257.758  mm,	Z =   418.007  mm,
	W =   177.871 deg,	P =    38.175 deg,	R =    21.873 deg
};
P[24]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X = -2585.517  mm,	Y = -2965.561  mm,	Z =   697.657  mm,
	W =  -129.038 deg,	P =    33.130 deg,	R =   126.323 deg
};
P[25]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X = -2540.943  mm,	Y = -2923.330  mm,	Z =   720.527  mm,
	W =  -129.041 deg,	P =    33.129 deg,	R =   126.320 deg
};
P[26]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X = -1732.261  mm,	Y = -2515.999  mm,	Z =  -704.775  mm,
	W =   -36.035 deg,	P =   -84.640 deg,	R =    35.507 deg
};
P[27]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X = -1734.799  mm,	Y = -2560.456  mm,	Z =  -704.739  mm,
	W =   -36.041 deg,	P =   -84.638 deg,	R =    35.513 deg
};
P[28]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1766.496  mm,	Y = -2555.214  mm,	Z =  -704.812  mm,
	W =   -36.048 deg,	P =   -84.640 deg,	R =    35.520 deg
};
P[29]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1761.699  mm,	Y = -2822.082  mm,	Z =  -719.213  mm,
	W =   -36.048 deg,	P =   -84.640 deg,	R =    35.520 deg
};
P[30]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X = -2346.626  mm,	Y = -2231.596  mm,	Z =   457.293  mm,
	W =   136.888 deg,	P =   -12.727 deg,	R =  -119.221 deg
};
P[31]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X = -1727.298  mm,	Y = -2835.924  mm,	Z =  -719.373  mm,
	W =   -36.026 deg,	P =   -84.644 deg,	R =    35.498 deg
};
P[32]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1729.545  mm,	Y = -2871.443  mm,	Z =  -719.373  mm,
	W =   -36.027 deg,	P =   -84.644 deg,	R =    35.498 deg
};
P[33]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1776.298  mm,	Y = -2871.378  mm,	Z =  -719.551  mm,
	W =   -36.015 deg,	P =   -84.649 deg,	R =    35.487 deg
};
P[34]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1784.506  mm,	Y = -3143.463  mm,	Z =  -701.883  mm,
	W =   -32.771 deg,	P =   -84.182 deg,	R =    31.776 deg
};
P[35]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X = -1764.043  mm,	Y = -3153.821  mm,	Z =  -703.838  mm,
	W =   -32.776 deg,	P =   -84.183 deg,	R =    32.281 deg
};
P[36]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X = -1773.635  mm,	Y = -3178.301  mm,	Z =  -703.888  mm,
	W =   -32.751 deg,	P =   -84.184 deg,	R =    32.257 deg
};
P[37]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1790.261  mm,	Y = -3172.019  mm,	Z =  -703.801  mm,
	W =   -32.771 deg,	P =   -84.182 deg,	R =    32.277 deg
};
P[38]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X = -1656.255  mm,	Y = -2446.483  mm,	Z =    55.573  mm,
	W =   179.301 deg,	P =   -39.049 deg,	R =   167.037 deg
};
P[39]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X = -1656.241  mm,	Y = -2401.949  mm,	Z =    36.773  mm,
	W =   179.298 deg,	P =   -39.048 deg,	R =   167.039 deg
};
P[40]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X = -2358.801  mm,	Y = -2217.436  mm,	Z =   457.294  mm,
	W =   136.888 deg,	P =   -12.727 deg,	R =  -119.221 deg
};
P[41]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X = -2345.480  mm,	Y = -2172.080  mm,	Z =   457.291  mm,
	W =   136.888 deg,	P =   -12.727 deg,	R =  -119.221 deg
};
P[42]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -2302.346  mm,	Y = -2184.919  mm,	Z =   457.292  mm,
	W =   136.888 deg,	P =   -12.727 deg,	R =  -119.222 deg
};
P[43]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -2302.346  mm,	Y = -2184.919  mm,	Z =   457.292  mm,
	W =   136.888 deg,	P =   -12.727 deg,	R =  -119.222 deg
};
P[44]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -2302.416  mm,	Y = -2184.836  mm,	Z =   620.068  mm,
	W =   136.889 deg,	P =   -12.722 deg,	R =  -119.224 deg
};
P[45]{
   GP1:
	UF : 0, UT : 1,	
	J1=  -111.429 deg,	J2=   -66.093 deg,	J3=    68.900 deg,
	J4=    48.742 deg,	J5=   -33.165 deg,	J6=   107.314 deg
};
P[46]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1684.187  mm,	Y = -2978.733  mm,	Z =   499.973  mm,
	W =   151.981 deg,	P =    78.363 deg,	R =     4.323 deg
};
P[47]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1746.267  mm,	Y = -2994.641  mm,	Z =   505.702  mm,
	W =   151.959 deg,	P =    78.365 deg,	R =     4.305 deg
};
P[48]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1742.430  mm,	Y = -3270.633  mm,	Z =   458.182  mm,
	W =   148.917 deg,	P =    82.221 deg,	R =   -10.320 deg
};
P[49]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1747.230  mm,	Y = -3297.633  mm,	Z =   458.182  mm,
	W =   148.917 deg,	P =    82.221 deg,	R =   -10.319 deg
};
P[50]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1758.286  mm,	Y = -3304.344  mm,	Z =   458.070  mm,
	W =   148.935 deg,	P =    82.220 deg,	R =   -10.302 deg
};
P[51]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X = -2055.182  mm,	Y = -2552.435  mm,	Z =   862.847  mm,
	W =  -125.040 deg,	P =    33.642 deg,	R =   128.265 deg
};
P[52]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1522.165  mm,	Y = -3176.052  mm,	Z =   905.181  mm,
	W =   -99.834 deg,	P =    -8.104 deg,	R =   174.835 deg
};
P[53]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X = -1763.668  mm,	Y = -3074.957  mm,	Z =   378.086  mm,
	W =  -139.228 deg,	P =   -48.431 deg,	R =  -171.201 deg
};
P[54]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X = -1815.270  mm,	Y = -2573.505  mm,	Z =  -638.140  mm,
	W =   -83.220 deg,	P =   -85.573 deg,	R =    86.080 deg
};
P[55]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X = -1755.821  mm,	Y = -2487.463  mm,	Z =  -700.116  mm,
	W =   -38.500 deg,	P =   -84.804 deg,	R =    38.056 deg
};
P[56]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X = -1697.656  mm,	Y = -2473.841  mm,	Z =    55.574  mm,
	W =   179.301 deg,	P =   -39.049 deg,	R =   167.037 deg
};
P[57]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X = -1690.384  mm,	Y = -2401.947  mm,	Z =    62.693  mm,
	W =   179.298 deg,	P =   -39.048 deg,	R =   167.039 deg
};
P[58]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X = -2251.488  mm,	Y = -2184.919  mm,	Z =   457.293  mm,
	W =   136.888 deg,	P =   -12.727 deg,	R =  -119.222 deg
};
P[59]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X = -1864.256  mm,	Y = -2191.629  mm,	Z =   616.700  mm,
	W =   136.622 deg,	P =   -12.281 deg,	R =  -118.173 deg
};
P[60]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1766.242  mm,	Y = -2965.330  mm,	Z =   500.089  mm,
	W =   151.969 deg,	P =    78.364 deg,	R =     4.313 deg
};
P[61]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X = -1903.585  mm,	Y = -2928.256  mm,	Z =  1054.166  mm,
	W =  -108.281 deg,	P =    36.977 deg,	R =   123.326 deg
};
P[62]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   672.849  mm,	Y = -2222.007  mm,	Z =   -52.515  mm,
	W =  -176.488 deg,	P =     1.343 deg,	R =    86.739 deg
};
P[63]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X = -1815.271  mm,	Y = -2505.102  mm,	Z =  -616.541  mm,
	W =   -83.219 deg,	P =   -85.573 deg,	R =    86.080 deg
};
P[64]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X = -1396.597  mm,	Y = -2552.001  mm,	Z =   106.901  mm,
	W =    24.620 deg,	P =    64.476 deg,	R =   176.304 deg
};
P[65]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X = -2351.729  mm,	Y = -2455.855  mm,	Z =   446.721  mm,
	W =  -164.549 deg,	P =    22.111 deg,	R =    27.246 deg
};
P[66]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X = -1717.026  mm,	Y = -2401.945  mm,	Z =   334.373  mm,
	W =  -179.917 deg,	P =   -38.904 deg,	R =   166.545 deg
};
P[67]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1758.285  mm,	Y = -3304.345  mm,	Z =   541.589  mm,
	W =   148.935 deg,	P =    82.220 deg,	R =   -10.302 deg
};
P[68]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X = -1627.528  mm,	Y = -2535.331  mm,	Z =   481.670  mm,
	W =  -100.084 deg,	P =    85.625 deg,	R =    51.495 deg
};
P[69]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X = -2468.799  mm,	Y = -2365.193  mm,	Z =   440.755  mm,
	W =  -165.243 deg,	P =    20.843 deg,	R =    28.049 deg
};
P[70]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X = -1784.315  mm,	Y = -3168.897  mm,	Z =  -703.889  mm,
	W =   -32.751 deg,	P =   -84.184 deg,	R =    32.257 deg
};
P[71]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X = -1815.943  mm,	Y = -3186.194  mm,	Z =  -704.000  mm,
	W =   -32.743 deg,	P =   -84.186 deg,	R =    32.248 deg
};
P[72]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X = -1631.718  mm,	Y = -2345.214  mm,	Z =   467.287  mm,
	W =   -61.176 deg,	P =    86.563 deg,	R =    89.689 deg
};
P[73]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X = -1600.157  mm,	Y = -2441.964  mm,	Z =   512.610  mm,
	W =   -66.171 deg,	P =    85.548 deg,	R =    86.868 deg
};
P[74]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X = -2463.388  mm,	Y = -2438.217  mm,	Z =   446.719  mm,
	W =  -164.549 deg,	P =    22.111 deg,	R =    27.246 deg
};
P[75]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X = -1792.770  mm,	Y = -3204.933  mm,	Z =  -703.945  mm,
	W =   -32.748 deg,	P =   -84.185 deg,	R =    32.255 deg
};
P[76]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X = -1396.597  mm,	Y = -2552.001  mm,	Z =   106.901  mm,
	W =    24.620 deg,	P =    64.476 deg,	R =   176.304 deg
};
P[77]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1751.432  mm,	Y = -3315.390  mm,	Z =   458.182  mm,
	W =   148.917 deg,	P =    82.221 deg,	R =   -10.319 deg
};
P[78]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1752.991  mm,	Y = -3297.632  mm,	Z =   458.181  mm,
	W =   148.917 deg,	P =    82.221 deg,	R =   -10.319 deg
};
P[79]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X = -1623.799  mm,	Y = -2372.092  mm,	Z =   467.284  mm,
	W =   -61.179 deg,	P =    86.563 deg,	R =    89.686 deg
};
P[80]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X = -1630.637  mm,	Y = -2355.055  mm,	Z =   467.286  mm,
	W =   -61.177 deg,	P =    86.563 deg,	R =    89.688 deg
};
P[81]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X = -1396.609  mm,	Y = -2552.196  mm,	Z =   106.813  mm,
	W =    24.623 deg,	P =    64.471 deg,	R =   176.309 deg
};
P[82]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1697.080  mm,	Y = -3010.171  mm,	Z =   499.973  mm,
	W =   151.982 deg,	P =    78.363 deg,	R =     4.324 deg
};
P[83]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1697.080  mm,	Y = -3025.913  mm,	Z =   499.973  mm,
	W =   151.982 deg,	P =    78.363 deg,	R =     4.324 deg
};
P[84]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X = -1381.880  mm,	Y = -2519.063  mm,	Z =   101.955  mm,
	W =    24.792 deg,	P =    64.170 deg,	R =   176.589 deg
};
P[85]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X = -1391.479  mm,	Y = -2505.867  mm,	Z =   101.959  mm,
	W =    24.792 deg,	P =    64.170 deg,	R =   176.589 deg
};
/END
