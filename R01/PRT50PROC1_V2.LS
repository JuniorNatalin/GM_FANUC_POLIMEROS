/PROG  PRT50PROC1_V2
/ATTR
OWNER		= simulati;
COMMENT		= "PRT50PROC1_v2";
PROG_SIZE	= 5785;
CREATE		= DATE 02-03-12  TIME 17:13:42;
MODIFIED	= DATE 22-04-16  TIME 13:07:38;
FILE_NAME	= PRT50PRO;
VERSION		= 0;
LINE_COUNT	= 148;
MEMORY_SIZE	= 6225;
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
/MN
   1:  !******************************** ;
   2:  !GENERAL MOTORS ;
   3:  !ROBOT: KM3200_1_R01 ;
   4:  !STYLE: 50 ;
   5:  !ASSEMBLY: REAR_FASCIA_UPPER ;
   6:  !******************************** ;
   7:  !PROCESS SIMULATE: v15.1 ;
   8:  !TEACH: Fanuc RJ v2.72 ;
   9:  !XML  : v8.3_R30iB_GM_global4 ;
  10:  !STUDY: JCCC1_FRONT_UPPER_and_REA ;
  11:  !USER : HZFLTF ;
  12:  !DATE : 2022-03-12 ;
  13:  !******************************** ;
  14:  SET SEGMENT(22) ;
  15:  UFRAME_NUM=0 ;
  16:  UTOOL_NUM=0 ;
  17:  UFRAME_NUM=0 ;
  18:   ;
  19:  ENTER I-ZONE(1) ;
  20:  ENTER I-ZONE(2) ;
  21:  IF DO[66:OFF]=ON,JMP LBL[99] ;
  22:   ;
  23:  !Request Knife Repo ;
  24:  CALL REQ_KNIFE_AT_WK    ;
  25:   ;
  26:J P[1] 100% CNT100    ;
  27:J P[3] 100% CNT100    ;
  28:   ;
  29:  UFRAME_NUM=1 ;
  30:  UTOOL_NUM=4 ;
  31:   ;
  32:J P[23] 100% CNT50    ;
  33:  !GALHO 01 ;
  34:   ;
  35:L P[31] 250mm/sec FINE    ;
  36:   ;
  37:L P[75] 250mm/sec FINE    ;
  38:   ;
  39:   ;
  40:J P[5] 100% CNT30    ;
  41:J P[11] 100% CNT50    ;
  42:  UFRAME_NUM=0 ;
  43:J P[12] 100% CNT100    ;
  44:J P[77] 100% CNT50    ;
  45:   ;
  46:L P[28] 500mm/sec CNT30    ;
  47:   ;
  48:  !GALHO 01 ;
  49:L P[78] 250mm/sec FINE    ;
  50:L P[79] 250mm/sec FINE    ;
  51:L P[44] 250mm/sec FINE    ;
  52:L P[45] 250mm/sec FINE    ;
  53:   ;
  54:   ;
  55:J P[80] 100% CNT30    ;
  56:  UFRAME_NUM=0 ;
  57:J P[21] 100% CNT30    ;
  58:J P[22] 100% CNT50    ;
  59:  UFRAME_NUM=1 ;
  60:   ;
  61:L P[24] 2000mm/sec CNT40    ;
  62:   ;
  63:L P[2] 2000mm/sec CNT30    ;
  64:  !GALHO 01 ;
  65:L P[81] 250mm/sec FINE    ;
  66:L P[82] 250mm/sec FINE    ;
  67:L P[46] 250mm/sec FINE    ;
  68:L P[25] 500mm/sec CNT30    ;
  69:L P[32] 2000mm/sec CNT100    ;
  70:J P[29] 100% CNT20    ;
  71:  UFRAME_NUM=0 ;
  72:J P[30] 100% CNT100    ;
  73:J P[39] 100% CNT100    ;
  74:  UFRAME_NUM=1 ;
  75:J P[40] 100% FINE    ;
  76:  !GALHO 01 ;
  77:L P[86] 250mm/sec FINE    ;
  78:L P[87] 250mm/sec FINE    ;
  79:   ;
  80:L P[7] 2000mm/sec CNT50    ;
  81:L P[8] 2000mm/sec CNT50    ;
  82:   ;
  83:  UFRAME_NUM=0 ;
  84:   ;
  85:L P[55] 2000mm/sec CNT100    ;
  86:J P[57] 100% CNT100    ;
  87:J P[58] 100% CNT100    ;
  88:L P[9] 2000mm/sec CNT20    ;
  89:  !GALHO 08 ;
  90:L P[88] 250mm/sec FINE    ;
  91:L P[89] 250mm/sec FINE    ;
  92:L P[33] 250mm/sec FINE    ;
  93:   ;
  94:   ;
  95:   ;
  96:J P[10] 100% CNT20    ;
  97:J P[59] 100% CNT50    ;
  98:   ;
  99:  !GALHO 01 ;
 100:L P[90] 250mm/sec FINE    ;
 101:L P[91] 250mm/sec FINE    ;
 102:   ;
 103:L P[34] 2000mm/sec CNT20    ;
 104:L P[48] 2000mm/sec CNT30    ;
 105:L P[60] 2000mm/sec CNT100    ;
 106:   ;
 107:L P[61] 2000mm/sec FINE    ;
 108:   ;
 109:  !FACA 180 ;
 110:  !Request Knife Repo ;
 111:  CALL REQ_KNIFE_AT_HM    ;
 112:   ;
 113:J P[18] 100% CNT50    ;
 114:J P[17] 100% CNT100    ;
 115:  UFRAME_NUM=1 ;
 116:   ;
 117:J P[16] 100% CNT100    ;
 118:L P[15] 500mm/sec CNT10    ;
 119:   ;
 120:  !GALHO 01 ;
 121:L P[14] 250mm/sec FINE    ;
 122:L P[13] 250mm/sec FINE    ;
 123:   ;
 124:L P[49] 250mm/sec FINE    ;
 125:J P[50] 100% CNT50    ;
 126:J P[19] 100% CNT50    ;
 127:J P[20] 100% CNT100    ;
 128:   ;
 129:J P[41] 100% CNT100    ;
 130:J P[38] 100% CNT100    ;
 131:J P[37] 100% CNT10    ;
 132:  !GALHO 01 ;
 133:L P[35] 250mm/sec FINE    ;
 134:L P[36] 250mm/sec FINE    ;
 135:J P[42] 100% CNT30    ;
 136:   ;
 137:  UFRAME_NUM=0 ;
 138:  UTOOL_NUM=0 ;
 139:J P[43] 100% CNT100    ;
 140:J P[4] 100% CNT100    ;
 141:   ;
 142:J P[27] 100% CNT100    ;
 143:   ;
 144:J P[26] 100% FINE    ;
 145:   ;
 146:  EXIT I-ZONE(1) ;
 147:  EXIT I-ZONE(2) ;
 148:   ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X =   146.389  mm,	Y = -2117.198  mm,	Z =  1400.028  mm,
	W =  -176.949 deg,	P =   -16.674 deg,	R =   -92.035 deg
};
P[2]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X =   688.637  mm,	Y =   501.628  mm,	Z =    10.509  mm,
	W =   161.479 deg,	P =    65.425 deg,	R =   -21.441 deg
};
P[3]{
   GP1:
	UF : 0, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X = -1330.211  mm,	Y = -2619.415  mm,	Z =  1423.002  mm,
	W =   173.886 deg,	P =   -15.533 deg,	R =   -94.754 deg
};
P[4]{
   GP1:
	UF : 0, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X =  -904.216  mm,	Y = -2246.004  mm,	Z =   896.499  mm,
	W =    84.696 deg,	P =   -16.264 deg,	R =   -70.199 deg
};
P[5]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X =   805.902  mm,	Y =   462.410  mm,	Z =  -507.200  mm,
	W =     7.687 deg,	P =    83.529 deg,	R =   155.668 deg
};
P[7]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X =   716.401  mm,	Y =    24.032  mm,	Z =   -67.708  mm,
	W =  -172.036 deg,	P =    77.423 deg,	R =    11.344 deg
};
P[8]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X =   827.026  mm,	Y =    28.238  mm,	Z =  -190.789  mm,
	W =   134.849 deg,	P =    82.409 deg,	R =   -35.820 deg
};
P[9]{
   GP1:
	UF : 0, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X = -1760.105  mm,	Y = -2711.901  mm,	Z =   188.589  mm,
	W =    98.849 deg,	P =    -4.053 deg,	R =   -80.712 deg
};
P[10]{
   GP1:
	UF : 0, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X = -1825.025  mm,	Y = -2735.298  mm,	Z =   188.591  mm,
	W =    98.849 deg,	P =    -4.053 deg,	R =   -80.712 deg
};
P[11]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X =   925.771  mm,	Y =   267.494  mm,	Z =  -363.834  mm,
	W =   126.856 deg,	P =    80.200 deg,	R =   -87.219 deg
};
P[12]{
   GP1:
	UF : 0, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X = -1366.813  mm,	Y = -2938.727  mm,	Z =   424.650  mm,
	W =  -174.831 deg,	P =    -1.477 deg,	R =   -90.474 deg
};
P[13]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X =   436.331  mm,	Y =  -623.926  mm,	Z =    -7.420  mm,
	W =    94.635 deg,	P =     4.919 deg,	R =  -119.522 deg
};
P[14]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X =   430.283  mm,	Y =  -624.009  mm,	Z =    38.791  mm,
	W =    94.635 deg,	P =     4.920 deg,	R =  -119.522 deg
};
P[15]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X =   459.360  mm,	Y =  -575.340  mm,	Z =    83.956  mm,
	W =    93.875 deg,	P =    -3.784 deg,	R =  -119.388 deg
};
P[16]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X =   643.112  mm,	Y =  -578.875  mm,	Z =    29.805  mm,
	W =    93.875 deg,	P =    -3.784 deg,	R =  -119.388 deg
};
P[17]{
   GP1:
	UF : 0, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X = -1884.381  mm,	Y = -2969.868  mm,	Z =   677.322  mm,
	W =   150.793 deg,	P =   -24.688 deg,	R =  -128.199 deg
};
P[18]{
   GP1:
	UF : 0, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X = -1969.843  mm,	Y = -3083.439  mm,	Z =   604.239  mm,
	W =   134.007 deg,	P =   -18.985 deg,	R =  -113.476 deg
};
P[19]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X =   442.315  mm,	Y =  -600.322  mm,	Z =    47.259  mm,
	W =    93.875 deg,	P =    -3.799 deg,	R =  -119.387 deg
};
P[20]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X =   643.111  mm,	Y =  -578.875  mm,	Z =    29.806  mm,
	W =    93.875 deg,	P =    -3.784 deg,	R =  -119.388 deg
};
P[21]{
   GP1:
	UF : 0, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X = -1496.863  mm,	Y = -2920.925  mm,	Z =   490.704  mm,
	W =  -169.819 deg,	P =     5.594 deg,	R =   -81.074 deg
};
P[22]{
   GP1:
	UF : 0, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X = -1503.310  mm,	Y = -3013.463  mm,	Z =   447.290  mm,
	W =   173.629 deg,	P =     4.956 deg,	R =   -87.065 deg
};
P[23]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X =   731.648  mm,	Y =   527.118  mm,	Z =  -507.234  mm,
	W =     6.181 deg,	P =    82.206 deg,	R =   154.031 deg
};
P[24]{
   GP1:
	UF : 1, UT : 4,	
	J1=  -118.259 deg,	J2=   -72.801 deg,	J3=    80.128 deg,
	J4=     9.652 deg,	J5=   -32.823 deg,	J6=    15.945 deg
};
P[25]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X =   701.324  mm,	Y =   565.454  mm,	Z =    24.857  mm,
	W =   163.999 deg,	P =    63.883 deg,	R =   -17.872 deg
};
P[26]{
   GP1:
	UF : 0, UT : 0,		CONFIG : 'F U T, 0, 0, 0',
	X =   742.668  mm,	Y = -2028.972  mm,	Z =   488.102  mm,
	W =  -175.922 deg,	P =   -28.132 deg,	R =    84.703 deg
};
P[27]{
   GP1:
	UF : 0, UT : 0,		CONFIG : 'F U T, 0, 0, 0',
	X =   548.102  mm,	Y = -2405.639  mm,	Z =  1416.906  mm,
	W =   113.083 deg,	P =    22.785 deg,	R =    40.717 deg
};
P[28]{
   GP1:
	UF : 0, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X = -1508.791  mm,	Y = -2701.705  mm,	Z =   426.574  mm,
	W =  -171.275 deg,	P =      .556 deg,	R =   -85.010 deg
};
P[29]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X =   863.343  mm,	Y =   328.937  mm,	Z =  -302.263  mm,
	W =   118.284 deg,	P =    73.644 deg,	R =   -72.041 deg
};
P[30]{
   GP1:
	UF : 0, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X = -1432.783  mm,	Y = -3027.335  mm,	Z =   451.819  mm,
	W =   158.417 deg,	P =   -13.587 deg,	R =   -99.739 deg
};
P[31]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X =   750.329  mm,	Y =   514.444  mm,	Z =  -536.401  mm,
	W =     6.181 deg,	P =    82.206 deg,	R =   154.031 deg
};
P[32]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X =   740.628  mm,	Y =   449.820  mm,	Z =  -389.080  mm,
	W =   -16.684 deg,	P =    72.594 deg,	R =   158.452 deg
};
P[33]{
   GP1:
	UF : 0, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X = -1773.185  mm,	Y = -2700.740  mm,	Z =   188.591  mm,
	W =    98.849 deg,	P =    -4.052 deg,	R =   -80.712 deg
};
P[34]{
   GP1:
	UF : 0, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X = -1897.407  mm,	Y = -3334.391  mm,	Z =   161.445  mm,
	W =    96.439 deg,	P =    -2.116 deg,	R =  -101.179 deg
};
P[35]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X =   679.556  mm,	Y =   373.177  mm,	Z =   495.137  mm,
	W =   -84.792 deg,	P =     1.128 deg,	R =    97.060 deg
};
P[36]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X =   671.614  mm,	Y =   380.224  mm,	Z =   458.249  mm,
	W =   -84.913 deg,	P =     1.208 deg,	R =    97.946 deg
};
P[37]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X =   763.705  mm,	Y =   307.535  mm,	Z =   456.484  mm,
	W =   -84.911 deg,	P =     1.259 deg,	R =    95.480 deg
};
P[38]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X =  1069.432  mm,	Y =   114.845  mm,	Z =   449.776  mm,
	W =   -96.176 deg,	P =    18.856 deg,	R =   104.973 deg
};
P[39]{
   GP1:
	UF : 0, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X = -1781.193  mm,	Y = -2934.280  mm,	Z =   524.938  mm,
	W =   140.305 deg,	P =   -13.099 deg,	R =   -98.957 deg
};
P[40]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X =   713.732  mm,	Y =   -21.880  mm,	Z =   -89.303  mm,
	W =  -172.035 deg,	P =    77.423 deg,	R =    11.344 deg
};
P[41]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X =  1195.017  mm,	Y =   -56.508  mm,	Z =  -216.636  mm,
	W =    74.322 deg,	P =    76.833 deg,	R =  -115.316 deg
};
P[42]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X =   763.705  mm,	Y =   307.535  mm,	Z =   456.484  mm,
	W =   -84.911 deg,	P =     1.259 deg,	R =    95.480 deg
};
P[43]{
   GP1:
	UF : 0, UT : 0,		CONFIG : 'N U T, 0, 0, 0',
	X = -1548.085  mm,	Y = -2588.478  mm,	Z =  1137.591  mm,
	W =   159.715 deg,	P =    21.825 deg,	R =   -14.118 deg
};
P[44]{
   GP1:
	UF : 0, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X = -1508.791  mm,	Y = -2701.705  mm,	Z =   414.092  mm,
	W =  -171.275 deg,	P =      .556 deg,	R =   -85.010 deg
};
P[45]{
   GP1:
	UF : 0, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X = -1488.389  mm,	Y = -2694.504  mm,	Z =   370.895  mm,
	W =  -171.275 deg,	P =      .556 deg,	R =   -85.010 deg
};
P[46]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X =   705.441  mm,	Y =   570.978  mm,	Z =    50.535  mm,
	W =   163.998 deg,	P =    63.883 deg,	R =   -17.872 deg
};
P[48]{
   GP1:
	UF : 0, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X = -1914.445  mm,	Y = -3330.790  mm,	Z =   161.444  mm,
	W =    96.439 deg,	P =    -2.116 deg,	R =  -101.179 deg
};
P[49]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X =   430.282  mm,	Y =  -624.009  mm,	Z =    38.791  mm,
	W =    94.635 deg,	P =     4.920 deg,	R =  -119.522 deg
};
P[50]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X =   435.148  mm,	Y =  -616.582  mm,	Z =    38.679  mm,
	W =    94.635 deg,	P =     4.920 deg,	R =  -119.522 deg
};
P[55]{
   GP1:
	UF : 0, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X = -1689.327  mm,	Y = -2944.920  mm,	Z =   489.798  mm,
	W =   125.572 deg,	P =   -11.094 deg,	R =  -106.800 deg
};
P[57]{
   GP1:
	UF : 0, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X = -2032.919  mm,	Y = -2911.562  mm,	Z =   531.139  mm,
	W =   125.572 deg,	P =   -11.094 deg,	R =  -106.800 deg
};
P[58]{
   GP1:
	UF : 0, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X = -1759.410  mm,	Y = -2910.366  mm,	Z =   392.451  mm,
	W =   101.635 deg,	P =   -17.291 deg,	R =  -101.235 deg
};
P[59]{
   GP1:
	UF : 0, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X = -1790.359  mm,	Y = -3264.102  mm,	Z =   161.412  mm,
	W =    96.435 deg,	P =    -2.115 deg,	R =  -101.179 deg
};
P[60]{
   GP1:
	UF : 0, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X = -1995.668  mm,	Y = -3089.176  mm,	Z =   443.640  mm,
	W =   124.435 deg,	P =   -11.094 deg,	R =  -105.737 deg
};
P[61]{
   GP1:
	UF : 0, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X = -2025.215  mm,	Y = -3134.226  mm,	Z =   464.097  mm,
	W =   124.435 deg,	P =   -11.094 deg,	R =  -105.737 deg
};
P[75]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X =   790.002  mm,	Y =   472.503  mm,	Z =  -528.737  mm,
	W =     7.687 deg,	P =    83.529 deg,	R =   155.668 deg
};
P[77]{
   GP1:
	UF : 0, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X = -1476.153  mm,	Y = -2733.146  mm,	Z =   452.851  mm,
	W =  -171.275 deg,	P =      .556 deg,	R =   -85.010 deg
};
P[78]{
   GP1:
	UF : 0, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X = -1508.791  mm,	Y = -2701.705  mm,	Z =   414.092  mm,
	W =  -171.275 deg,	P =      .556 deg,	R =   -85.010 deg
};
P[79]{
   GP1:
	UF : 0, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X = -1488.389  mm,	Y = -2694.504  mm,	Z =   370.895  mm,
	W =  -171.275 deg,	P =      .556 deg,	R =   -85.010 deg
};
P[80]{
   GP1:
	UF : 0, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X = -1435.369  mm,	Y = -2716.809  mm,	Z =   369.617  mm,
	W =  -171.273 deg,	P =      .558 deg,	R =   -85.010 deg
};
P[81]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X =   682.931  mm,	Y =   530.226  mm,	Z =    59.840  mm,
	W =   163.380 deg,	P =    62.854 deg,	R =   -18.412 deg
};
P[82]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X =   701.956  mm,	Y =   565.505  mm,	Z =    55.843  mm,
	W =   163.998 deg,	P =    63.884 deg,	R =   -17.872 deg
};
P[86]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X =   714.622  mm,	Y =   -21.811  mm,	Z =   -45.634  mm,
	W =  -172.035 deg,	P =    77.423 deg,	R =    11.344 deg
};
P[87]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X =   713.028  mm,	Y =    18.246  mm,	Z =   -46.027  mm,
	W =  -172.035 deg,	P =    77.423 deg,	R =    11.344 deg
};
P[88]{
   GP1:
	UF : 0, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X = -1773.185  mm,	Y = -2700.740  mm,	Z =   188.591  mm,
	W =    98.849 deg,	P =    -4.052 deg,	R =   -80.712 deg
};
P[89]{
   GP1:
	UF : 0, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X = -1825.025  mm,	Y = -2700.740  mm,	Z =   188.591  mm,
	W =    98.849 deg,	P =    -4.053 deg,	R =   -80.712 deg
};
P[90]{
   GP1:
	UF : 0, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X = -1847.958  mm,	Y = -3339.460  mm,	Z =   161.412  mm,
	W =    96.435 deg,	P =    -2.115 deg,	R =  -101.179 deg
};
P[91]{
   GP1:
	UF : 0, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	X = -1887.318  mm,	Y = -3339.460  mm,	Z =   161.412  mm,
	W =    96.435 deg,	P =    -2.115 deg,	R =  -101.179 deg
};
/END
