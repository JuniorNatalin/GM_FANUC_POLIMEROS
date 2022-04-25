/PROG  S17PROC1
/ATTR
OWNER		= simulati;
COMMENT		= "s18proc1";
PROG_SIZE	= 7361;
CREATE		= DATE 01-11-04  TIME 19:19:12;
MODIFIED	= DATE 22-01-12  TIME 09:37:50;
FILE_NAME	= S18PROC1;
VERSION		= 0;
LINE_COUNT	= 144;
MEMORY_SIZE	= 7669;
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
   4:  !STYLE: 18 ;
   5:  !ASSEMBLY: REAR_FASCIA_UPPER ;
   6:  !******************************** ;
   7:  !PROCESS SIMULATE: v15.1 ;
   8:  !TEACH: Fanuc RJ v2.72 ;
   9:  !XML  : v8.3_R30iB_GM_global4 ;
  10:  !STUDY: JCCC1_FRONT_FASCIA_UPPER ;
  11:  !USER : HZFLTF ;
  12:  !DATE : 2021-11-04 ;
  13:  !******************************** ;
  14:  SET SEGMENT(50) ;
  15:  UFRAME_NUM=0 ;
  16:  UTOOL_NUM=1 ;
  17:J P[1] 100% CNT100    ;
  18:J P[2] 100% CNT100    ;
  19:J P[3] 100% CNT100    ;
  20:J P[4] 100% CNT100    ;
  21:J P[5] 100% CNT100    ;
  22:J P[6] 100% CNT100    ;
  23:  UFRAME_NUM=1 ;
  24:J P[7] 10% FINE    ;
  25:J P[8] 10% FINE    ;
  26:L P[9] 200mm/sec FINE RTCP    ;
  27:L P[10] 200mm/sec FINE RTCP    ;
  28:L P[11] 200mm/sec FINE RTCP    ;
  29:L P[12] 200mm/sec FINE RTCP    ;
  30:  UFRAME_NUM=0 ;
  31:J P[13] 100% FINE    ;
  32:J P[14] 100% CNT30    ;
  33:J P[15] 100% CNT100    ;
  34:J P[16] 100% CNT100    ;
  35:J P[17] 100% CNT100    ;
  36:J P[18] 100% CNT60    ;
  37:J P[19] 100% CNT20    ;
  38:J P[20] 100% FINE    ;
  39:J P[21] 100% FINE    ;
  40:  UFRAME_NUM=1 ;
  41:L P[22:N3_LS1] 200mm/sec FINE RTCP    ;
  42:L P[23:N3_LS2] 200mm/sec FINE RTCP    ;
  43:L P[24:N3_LS3] 200mm/sec FINE RTCP    ;
  44:  UFRAME_NUM=0 ;
  45:J P[25] 100% FINE    ;
  46:J P[26] 100% CNT20    ;
  47:J P[27] 100% CNT100    ;
  48:J P[28] 100% CNT20    ;
  49:  UFRAME_NUM=1 ;
  50:L P[29:N4_LS2] 200mm/sec FINE RTCP    ;
  51:L P[30:N4_LS1] 200mm/sec FINE RTCP    ;
  52:L P[31:N4_LS1] 200mm/sec FINE RTCP    ;
  53:  UFRAME_NUM=0 ;
  54:J P[32] 100% CNT20    ;
  55:J P[33] 100% CNT20    ;
  56:  UFRAME_NUM=1 ;
  57:L P[34:N5_LS1] 200mm/sec FINE RTCP    ;
  58:L P[35:N5_LS2] 200mm/sec FINE RTCP    ;
  59:L P[36:N5_LS3] 200mm/sec FINE RTCP    ;
  60:  UFRAME_NUM=0 ;
  61:J P[37] 100% CNT20    ;
  62:J P[38] 100% CNT100    ;
  63:J P[39] 100% CNT100    ;
  64:J P[40] 100% CNT100    ;
  65:J P[41] 100% CNT20    ;
  66:  UFRAME_NUM=1 ;
  67:L P[42:N6_LS1] 200mm/sec FINE RTCP    ;
  68:L P[43:N6_LS2] 200mm/sec FINE RTCP    ;
  69:  UFRAME_NUM=0 ;
  70:J P[44] 100% CNT20    ;
  71:J P[45] 100% CNT100    ;
  72:J P[46] 100% CNT100    ;
  73:J P[47] 100% CNT100    ;
  74:L P[48] 2000mm/sec CNT20    ;
  75:  UFRAME_NUM=1 ;
  76:L P[49:N2_LS1] 200mm/sec FINE RTCP    ;
  77:L P[50:N2_LS2] 200mm/sec FINE RTCP    ;
  78:  UFRAME_NUM=0 ;
  79:L P[51] 2000mm/sec CNT20    ;
  80:J P[52] 100% CNT100    ;
  81:J P[53] 100% CNT100    ;
  82:J P[54] 100% CNT100    ;
  83:J P[55] 100% CNT100    ;
  84:J P[56] 100% CNT100    ;
  85:J P[57] 100% CNT100    ;
  86:J P[58] 100% CNT100    ;
  87:J P[59] 100% CNT20    ;
  88:J P[60] 100% FINE    ;
  89:  UFRAME_NUM=1 ;
  90:L P[61:N8_LS1] 200mm/sec FINE RTCP    ;
  91:L P[62:N8_LS2] 200mm/sec FINE RTCP    ;
  92:  UFRAME_NUM=0 ;
  93:J P[63] 100% CNT20    ;
  94:J P[64] 100% CNT100    ;
  95:J P[65] 100% CNT20    ;
  96:  UFRAME_NUM=1 ;
  97:L P[66:N9_LS1] 200mm/sec FINE RTCP    ;
  98:L P[67:N9_LS2] 200mm/sec FINE RTCP    ;
  99:  UFRAME_NUM=0 ;
 100:J P[68] 100% FINE    ;
 101:J P[69] 100% CNT20    ;
 102:J P[70] 100% CNT100    ;
 103:J P[71] 100% CNT100    ;
 104:J P[72] 100% CNT20    ;
 105:  UFRAME_NUM=1 ;
 106:L P[73:N10_LS1] 200mm/sec FINE RTCP    ;
 107:L P[74:N10_LS2] 200mm/sec FINE RTCP    ;
 108:  UFRAME_NUM=0 ;
 109:J P[75] 100% FINE    ;
 110:J P[76] 100% FINE    ;
 111:J P[77] 100% CNT20    ;
 112:J P[78] 100% CNT100    ;
 113:J P[79] 100% CNT100    ;
 114:J P[80] 100% CNT20    ;
 115:  UFRAME_NUM=1 ;
 116:L P[81:N11_LS1] 200mm/sec FINE RTCP    ;
 117:L P[82:N11_LS2] 200mm/sec FINE RTCP    ;
 118:  UFRAME_NUM=0 ;
 119:J P[83] 100% CNT20    ;
 120:J P[84] 100% CNT100    ;
 121:J P[85] 100% CNT100    ;
 122:J P[86] 100% CNT100    ;
 123:J P[87] 100% CNT100    ;
 124:J P[88] 100% CNT100    ;
 125:J P[89] 100% CNT100    ;
 126:J P[90] 100% CNT20    ;
 127:  UFRAME_NUM=1 ;
 128:L P[91] 200mm/sec FINE RTCP PSPD20    ;
 129:L P[92] 200mm/sec FINE RTCP PSPD20    ;
 130:L P[93] 200mm/sec FINE RTCP PSPD20    ;
 131:L P[94] 200mm/sec FINE RTCP PSPD20    ;
 132:L P[95] 200mm/sec FINE RTCP PSPD20    ;
 133:L P[96] 200mm/sec FINE RTCP PSPD20    ;
 134:   ;
 135:   ;
 136:   ;
 137:   ;
 138:   ;
 139:   ;
 140:   ;
 141:   ;
 142:  !REF ;
 143:J P[97] 100% FINE    ;
 144:   ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2538.957  mm,	Y =  -403.353  mm,	Z =   203.909  mm,
	W =   -43.071 deg,	P =   -89.958 deg,	R =   134.450 deg
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1144.785  mm,	Y = -2610.824  mm,	Z =   124.374  mm,
	W =  -177.181 deg,	P =   -64.726 deg,	R =  -125.078 deg
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -2256.557  mm,	Y = -2224.685  mm,	Z =   -33.886  mm,
	W =  -177.181 deg,	P =   -64.726 deg,	R =  -147.294 deg
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -2260.903  mm,	Y = -1878.757  mm,	Z =   -39.479  mm,
	W =  -177.181 deg,	P =   -64.726 deg,	R =  -147.294 deg
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -2299.147  mm,	Y = -1883.722  mm,	Z =  -316.827  mm,
	W =  -177.181 deg,	P =   -64.726 deg,	R =  -147.294 deg
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -2360.511  mm,	Y = -1886.007  mm,	Z =  -410.492  mm,
	W =  -177.181 deg,	P =   -64.726 deg,	R =  -147.294 deg
};
P[7]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -246.183  mm,	Y =    11.573  mm,	Z =   877.469  mm,
	W =   121.920 deg,	P =    13.931 deg,	R =   -55.145 deg
};
P[8]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -247.999  mm,	Y =     6.697  mm,	Z =   874.075  mm,
	W =   121.920 deg,	P =    13.931 deg,	R =   -55.145 deg
};
P[9]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -244.422  mm,	Y =      .336  mm,	Z =   872.092  mm,
	W =   121.920 deg,	P =    13.931 deg,	R =   -55.145 deg
};
P[10]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -235.265  mm,	Y =    -2.840  mm,	Z =   872.092  mm,
	W =   121.920 deg,	P =    13.931 deg,	R =   -55.145 deg
};
P[11]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -230.365  mm,	Y =    -6.788  mm,	Z =   870.098  mm,
	W =   121.920 deg,	P =    13.931 deg,	R =   -55.145 deg
};
P[12]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -222.986  mm,	Y =    -8.610  mm,	Z =   868.018  mm,
	W =   121.920 deg,	P =    13.931 deg,	R =   -55.145 deg
};
P[13]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -2254.008  mm,	Y = -1941.357  mm,	Z =  -390.432  mm,
	W =  -177.181 deg,	P =   -64.726 deg,	R =  -147.294 deg
};
P[14]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X = -2293.695  mm,	Y = -1775.073  mm,	Z =   -23.158  mm,
	W =   167.204 deg,	P =   -56.833 deg,	R =  -116.853 deg
};
P[15]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -2304.201  mm,	Y = -1878.128  mm,	Z =    33.115  mm,
	W =  -177.181 deg,	P =   -64.726 deg,	R =  -147.294 deg
};
P[16]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X = -2591.311  mm,	Y = -2302.989  mm,	Z =  -120.143  mm,
	W =   133.465 deg,	P =   -75.959 deg,	R =   -41.563 deg
};
P[17]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X = -2640.155  mm,	Y = -2280.881  mm,	Z =  -283.742  mm,
	W =  -152.519 deg,	P =   -76.417 deg,	R =  -123.780 deg
};
P[18]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X = -2653.718  mm,	Y = -2182.393  mm,	Z =  -422.650  mm,
	W =  -163.467 deg,	P =   -62.430 deg,	R =   -89.038 deg
};
P[19]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X = -2667.769  mm,	Y = -2142.220  mm,	Z =  -402.683  mm,
	W =  -163.467 deg,	P =   -62.430 deg,	R =   -89.038 deg
};
P[20]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X = -2725.389  mm,	Y = -2146.145  mm,	Z =  -198.913  mm,
	W =   178.522 deg,	P =   -50.822 deg,	R =   -70.775 deg
};
P[21]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X = -2591.060  mm,	Y = -2065.083  mm,	Z =  -288.897  mm,
	W =   175.689 deg,	P =   -58.308 deg,	R =   -80.187 deg
};
P[22:"N3_LS1"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X =  -478.325  mm,	Y =    70.586  mm,	Z =   626.153  mm,
	W =   173.538 deg,	P =     4.796 deg,	R =   -35.632 deg
};
P[23:"N3_LS2"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X =  -483.256  mm,	Y =    63.414  mm,	Z =   626.590  mm,
	W =   173.406 deg,	P =     4.785 deg,	R =   -35.643 deg
};
P[24:"N3_LS3"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X =  -487.080  mm,	Y =    57.745  mm,	Z =   626.991  mm,
	W =   173.302 deg,	P =     4.782 deg,	R =   -35.652 deg
};
P[25]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X = -2540.200  mm,	Y = -2050.108  mm,	Z =  -398.676  mm,
	W =   178.437 deg,	P =   -66.169 deg,	R =   -90.050 deg
};
P[26]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X = -2389.010  mm,	Y = -2124.929  mm,	Z =  -417.566  mm,
	W =  -127.536 deg,	P =   -70.002 deg,	R =  -149.798 deg
};
P[27]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X = -2226.206  mm,	Y = -2119.530  mm,	Z =  -517.736  mm,
	W =   136.562 deg,	P =   -73.324 deg,	R =   -50.960 deg
};
P[28]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X = -2200.643  mm,	Y = -2079.843  mm,	Z =  -513.326  mm,
	W =   136.562 deg,	P =   -73.324 deg,	R =   -50.960 deg
};
P[29:"N4_LS2"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X =  -367.618  mm,	Y =   325.606  mm,	Z =   593.023  mm,
	W =  -179.627 deg,	P =      .321 deg,	R =   -37.983 deg
};
P[30:"N4_LS1"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X =  -384.207  mm,	Y =   305.077  mm,	Z =   592.724  mm,
	W =  -179.627 deg,	P =      .321 deg,	R =   -35.983 deg
};
P[31:"N4_LS1"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X =  -305.854  mm,	Y =   320.750  mm,	Z =   629.017  mm,
	W =   179.632 deg,	P =     4.755 deg,	R =   -43.840 deg
};
P[32]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X = -2052.595  mm,	Y = -2143.954  mm,	Z =  -549.638  mm,
	W =   124.702 deg,	P =   -64.825 deg,	R =   -26.598 deg
};
P[33]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X = -1996.993  mm,	Y = -2066.399  mm,	Z =  -548.622  mm,
	W =   147.562 deg,	P =   -73.324 deg,	R =   -50.960 deg
};
P[34:"N5_LS1"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X =  -463.405  mm,	Y =   317.276  mm,	Z =   592.666  mm,
	W =  -173.536 deg,	P =     -.112 deg,	R =    -3.425 deg
};
P[35:"N5_LS2"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X =  -453.518  mm,	Y =   322.865  mm,	Z =   592.667  mm,
	W =  -173.536 deg,	P =     -.112 deg,	R =    -5.385 deg
};
P[36:"N5_LS3"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X =  -453.991  mm,	Y =   315.762  mm,	Z =   592.614  mm,
	W =  -173.644 deg,	P =     -.056 deg,	R =    -5.353 deg
};
P[37]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X = -1567.711  mm,	Y = -2147.811  mm,	Z =   335.366  mm,
	W =    94.274 deg,	P =   -62.097 deg,	R =     2.708 deg
};
P[38]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X = -1487.016  mm,	Y = -2519.364  mm,	Z =   247.553  mm,
	W =   160.833 deg,	P =     7.940 deg,	R =   -85.090 deg
};
P[39]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X = -1366.097  mm,	Y = -2651.538  mm,	Z =   -25.165  mm,
	W =   150.891 deg,	P =     6.421 deg,	R =   -91.876 deg
};
P[40]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1511.270  mm,	Y = -2650.115  mm,	Z =   175.650  mm,
	W =   170.012 deg,	P =     6.864 deg,	R =   -89.333 deg
};
P[41]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1563.376  mm,	Y = -2504.601  mm,	Z =   165.581  mm,
	W =   165.863 deg,	P =     7.541 deg,	R =   -84.331 deg
};
P[42:"N6_LS1"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   659.889  mm,	Y =   347.968  mm,	Z =   239.577  mm,
	W =   -44.584 deg,	P =    80.198 deg,	R =   116.603 deg
};
P[43:"N6_LS2"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   667.657  mm,	Y =   329.250  mm,	Z =   238.918  mm,
	W =   -44.331 deg,	P =    80.194 deg,	R =   116.587 deg
};
P[44]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X = -1561.632  mm,	Y = -2505.238  mm,	Z =   133.711  mm,
	W =   160.833 deg,	P =     7.940 deg,	R =   -85.090 deg
};
P[45]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X = -1451.261  mm,	Y = -2501.127  mm,	Z =   302.178  mm,
	W =   160.833 deg,	P =     7.940 deg,	R =   -85.090 deg
};
P[46]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X = -1878.169  mm,	Y = -2520.365  mm,	Z =   489.551  mm,
	W =   148.727 deg,	P =     8.616 deg,	R =   -87.034 deg
};
P[47]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X = -2131.409  mm,	Y = -2653.358  mm,	Z =   502.899  mm,
	W =   135.578 deg,	P =     8.875 deg,	R =   -89.253 deg
};
P[48]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X = -2099.713  mm,	Y = -2529.219  mm,	Z =   517.308  mm,
	W =   127.154 deg,	P =     -.699 deg,	R =   -98.476 deg
};
P[49:"N2_LS1"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X =   659.471  mm,	Y =  -279.607  mm,	Z =   216.090  mm,
	W =    35.679 deg,	P =    80.803 deg,	R =  -124.582 deg
};
P[50:"N2_LS2"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X =   687.307  mm,	Y =  -217.338  mm,	Z =   204.526  mm,
	W =    30.225 deg,	P =    80.535 deg,	R =  -122.963 deg
};
P[51]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X = -2125.583  mm,	Y = -2529.486  mm,	Z =   527.089  mm,
	W =   127.154 deg,	P =     -.699 deg,	R =   -98.476 deg
};
P[52]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X = -2060.492  mm,	Y = -2527.062  mm,	Z =   626.441  mm,
	W =   127.154 deg,	P =     -.699 deg,	R =   -98.476 deg
};
P[53]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X = -1797.120  mm,	Y = -2514.117  mm,	Z =   334.066  mm,
	W =   148.881 deg,	P =     6.326 deg,	R =   -92.131 deg
};
P[54]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X = -1590.562  mm,	Y = -2506.424  mm,	Z =   649.350  mm,
	W =   148.881 deg,	P =     6.326 deg,	R =   -92.131 deg
};
P[55]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, -1',
	X = -1447.511  mm,	Y = -2756.494  mm,	Z =   561.732  mm,
	W =   174.602 deg,	P =   -24.754 deg,	R =  -163.743 deg
};
P[56]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, -1',
	X = -1378.440  mm,	Y = -2882.024  mm,	Z =   908.739  mm,
	W =  -129.524 deg,	P =    38.187 deg,	R =   156.137 deg
};
P[57]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, -1',
	X = -1982.011  mm,	Y = -2497.808  mm,	Z =   789.263  mm,
	W =   160.600 deg,	P =    38.843 deg,	R =    85.958 deg
};
P[58]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, -1',
	X = -1763.610  mm,	Y = -2458.951  mm,	Z =   757.617  mm,
	W =   136.699 deg,	P =    67.838 deg,	R =    57.300 deg
};
P[59]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, -1',
	X = -1653.307  mm,	Y = -2271.973  mm,	Z =   345.546  mm,
	W =  -171.296 deg,	P =    44.870 deg,	R =   152.234 deg
};
P[60]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, -1',
	X = -1772.231  mm,	Y = -2054.174  mm,	Z =   285.558  mm,
	W =  -147.343 deg,	P =    59.986 deg,	R =   172.204 deg
};
P[61:"N8_LS1"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, -1',
	X =   654.931  mm,	Y =   271.410  mm,	Z =   638.395  mm,
	W =   144.592 deg,	P =    -3.985 deg,	R =   175.350 deg
};
P[62:"N8_LS2"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, -1',
	X =   645.980  mm,	Y =   311.637  mm,	Z =   638.395  mm,
	W =   144.592 deg,	P =    -3.985 deg,	R =   177.350 deg
};
P[63]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, -1',
	X = -1646.444  mm,	Y = -2106.007  mm,	Z =   204.413  mm,
	W =  -130.768 deg,	P =    61.280 deg,	R =   174.108 deg
};
P[64]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, -1',
	X = -1899.885  mm,	Y = -2103.673  mm,	Z =   349.601  mm,
	W =  -145.953 deg,	P =    59.961 deg,	R =   172.661 deg
};
P[65]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, -1',
	X = -2039.567  mm,	Y = -2118.236  mm,	Z =   441.469  mm,
	W =  -157.971 deg,	P =    59.001 deg,	R =   171.410 deg
};
P[66:"N9_LS1"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, -1',
	X =   644.581  mm,	Y =   -28.759  mm,	Z =   648.908  mm,
	W =   123.298 deg,	P =    -4.414 deg,	R =  -172.461 deg
};
P[67:"N9_LS2"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, -1',
	X =   638.580  mm,	Y =   135.766  mm,	Z =   639.809  mm,
	W =   136.258 deg,	P =    -5.900 deg,	R =  -170.513 deg
};
P[68]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, -1',
	X = -1779.770  mm,	Y = -2106.157  mm,	Z =   272.191  mm,
	W =  -138.749 deg,	P =    47.079 deg,	R =   173.043 deg
};
P[69]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, -1',
	X = -1994.811  mm,	Y = -2260.160  mm,	Z =   431.867  mm,
	W =  -156.408 deg,	P =    56.448 deg,	R =   162.002 deg
};
P[70]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, -1',
	X = -1926.435  mm,	Y = -2455.682  mm,	Z =   453.877  mm,
	W =  -100.872 deg,	P =    59.204 deg,	R =   171.538 deg
};
P[71]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, -1',
	X = -2184.639  mm,	Y = -2379.117  mm,	Z =   626.897  mm,
	W =  -104.316 deg,	P =    58.553 deg,	R =   144.290 deg
};
P[72]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, -1',
	X = -2184.158  mm,	Y = -2297.317  mm,	Z =   634.824  mm,
	W =   -99.079 deg,	P =    60.246 deg,	R =   143.756 deg
};
P[73:"N10_LS1"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   622.566  mm,	Y =  -215.996  mm,	Z =   674.261  mm,
	W =  -136.247 deg,	P =    -5.882 deg,	R =   166.493 deg
};
P[74:"N10_LS2"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   630.873  mm,	Y =  -173.449  mm,	Z =   681.068  mm,
	W =  -136.262 deg,	P =    -5.283 deg,	R =   171.828 deg
};
P[75]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -2040.554  mm,	Y = -2065.837  mm,	Z =   432.864  mm,
	W =   -55.288 deg,	P =    64.601 deg,	R =   170.313 deg
};
P[76]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -2040.379  mm,	Y = -2079.834  mm,	Z =   433.091  mm,
	W =   -55.288 deg,	P =    64.601 deg,	R =   170.313 deg
};
P[77]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -2207.971  mm,	Y = -2331.601  mm,	Z =   652.856  mm,
	W =   -98.259 deg,	P =    59.452 deg,	R =   144.065 deg
};
P[78]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -2169.618  mm,	Y = -2330.173  mm,	Z =   711.396  mm,
	W =   -98.259 deg,	P =    59.452 deg,	R =   144.065 deg
};
P[79]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -2325.953  mm,	Y = -2342.605  mm,	Z =   682.590  mm,
	W =   -98.259 deg,	P =    59.452 deg,	R =   144.065 deg
};
P[80]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -2353.582  mm,	Y = -2340.660  mm,	Z =   700.643  mm,
	W =   -98.259 deg,	P =    59.452 deg,	R =   144.065 deg
};
P[81:"N11_LS1"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   616.772  mm,	Y =  -390.054  mm,	Z =   667.852  mm,
	W =  -144.582 deg,	P =    -3.924 deg,	R =   177.629 deg
};
P[82:"N11_LS2"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   665.660  mm,	Y =  -317.532  mm,	Z =   669.246  mm,
	W =  -144.582 deg,	P =    -3.797 deg,	R =  -174.328 deg
};
P[83]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -2136.986  mm,	Y = -2078.578  mm,	Z =   539.653  mm,
	W =   -57.976 deg,	P =    51.017 deg,	R =   175.625 deg
};
P[84]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -2145.277  mm,	Y = -2078.635  mm,	Z =   545.100  mm,
	W =   -57.980 deg,	P =    51.014 deg,	R =   175.626 deg
};
P[85]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -2035.500  mm,	Y = -2087.032  mm,	Z =   681.128  mm,
	W =   -57.980 deg,	P =    51.014 deg,	R =   175.626 deg
};
P[86]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1837.904  mm,	Y = -2102.146  mm,	Z =   925.979  mm,
	W =  -100.594 deg,	P =    57.135 deg,	R =   124.255 deg
};
P[87]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -2325.483  mm,	Y = -2184.063  mm,	Z =   758.104  mm,
	W =  -155.945 deg,	P =    41.706 deg,	R =    40.645 deg
};
P[88]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -2411.599  mm,	Y = -2177.172  mm,	Z =   608.686  mm,
	W =  -156.526 deg,	P =    42.043 deg,	R =    39.421 deg
};
P[89]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -2463.645  mm,	Y = -2195.909  mm,	Z =   572.145  mm,
	W =  -151.037 deg,	P =    39.844 deg,	R =    40.910 deg
};
P[90]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -2564.626  mm,	Y = -2091.591  mm,	Z =   390.453  mm,
	W =  -157.725 deg,	P =    59.575 deg,	R =    52.339 deg
};
P[91]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   307.758  mm,	Y =  -598.421  mm,	Z =   661.394  mm,
	W =  -114.809 deg,	P =   -24.259 deg,	R =   126.588 deg
};
P[92]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   307.706  mm,	Y =  -606.412  mm,	Z =   660.326  mm,
	W =  -114.809 deg,	P =   -24.259 deg,	R =   126.588 deg
};
P[93]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   311.447  mm,	Y =  -610.943  mm,	Z =   658.460  mm,
	W =  -114.809 deg,	P =   -24.259 deg,	R =   126.588 deg
};
P[94]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   314.233  mm,	Y =  -614.531  mm,	Z =   656.145  mm,
	W =  -114.809 deg,	P =   -24.259 deg,	R =   126.588 deg
};
P[95]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   316.699  mm,	Y =  -619.496  mm,	Z =   653.850  mm,
	W =  -114.809 deg,	P =   -24.259 deg,	R =   126.588 deg
};
P[96]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   317.931  mm,	Y =  -621.979  mm,	Z =   652.702  mm,
	W =  -114.809 deg,	P =   -24.259 deg,	R =   126.588 deg
};
P[97]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X = -2205.597  mm,	Y = -2870.969  mm,	Z =  -334.619  mm,
	W =    95.239 deg,	P =   -60.239 deg,	R =     1.587 deg
};
/END
