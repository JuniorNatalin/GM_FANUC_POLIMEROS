/PROG  PRT42PROC1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "FLAMB_376 ";
PROG_SIZE	= 4688;
CREATE		= DATE 19-06-22  TIME 10:36:42;
MODIFIED	= DATE 19-06-22  TIME 10:36:42;
FILE_NAME	= PRT06PRO;
VERSION		= 0;
LINE_COUNT	= 82;
MEMORY_SIZE	= 5120;
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
   4:  IF DO[66]=ON,JMP LBL[900] ;
   5:  SET SEGMENT(22) ;
   6:   ;
   7:  UTOOL_NUM=2 ;
   8:  UFRAME_NUM=0 ;
   9:  PAYLOAD[3] ;
  10:   ;
  11:J P[61] 70% CNT100    ;
  12:J P[3] 80% CNT100    ;
  13:   ;
  14:  !DEFLASH 1 ;
  15:L P[4] 1000mm/sec CNT50    ;
  16:L P[5] 2000mm/sec CNT50    ;
  17:L P[6] 2000mm/sec CNT50    ;
  18:L P[7] 2000mm/sec CNT50    ;
  19:L P[8] 2000mm/sec CNT50    ;
  20:L P[9] 2000mm/sec CNT50    ;
  21:L P[10] 2000mm/sec CNT50    ;
  22:L P[11] 2000mm/sec CNT50    ;
  23:L P[12] 2000mm/sec CNT50    ;
  24:L P[13] 2000mm/sec CNT50    ;
  25:L P[14] 2000mm/sec CNT50    ;
  26:L P[15] 2000mm/sec CNT50    ;
  27:L P[16] 2000mm/sec CNT50    ;
  28:L P[17] 2000mm/sec CNT50    ;
  29:L P[18] 2000mm/sec CNT50    ;
  30:L P[19] 2000mm/sec CNT50    ;
  31:L P[20] 2000mm/sec CNT50    ;
  32:L P[21] 2000mm/sec CNT50    ;
  33:L P[22] 2000mm/sec CNT50    ;
  34:L P[77] 2000mm/sec CNT50    ;
  35:L P[78] 2000mm/sec CNT50    ;
  36:L P[79] 2000mm/sec CNT50    ;
  37:L P[80] 2000mm/sec CNT50    ;
  38:L P[81] 2000mm/sec CNT50    ;
  39:L P[23] 2000mm/sec CNT50    ;
  40:L P[24] 2000mm/sec CNT50    ;
  41:L P[25] 2000mm/sec CNT50    ;
  42:L P[26] 2000mm/sec CNT50    ;
  43:L P[27] 2000mm/sec CNT50    ;
  44:L P[28] 2000mm/sec CNT50    ;
  45:L P[29] 2000mm/sec CNT50    ;
  46:L P[30] 2000mm/sec CNT50    ;
  47:L P[31] 2000mm/sec CNT50    ;
  48:L P[32] 2000mm/sec CNT50    ;
  49:L P[33] 2000mm/sec CNT50    ;
  50:L P[34] 2000mm/sec CNT50    ;
  51:L P[35] 2000mm/sec CNT50    ;
  52:L P[36] 2000mm/sec CNT50    ;
  53:L P[37] 2000mm/sec CNT50    ;
  54:L P[38] 2000mm/sec CNT50    ;
  55:L P[39] 2000mm/sec CNT50    ;
  56:L P[40] 2000mm/sec CNT50    ;
  57:L P[41] 2000mm/sec CNT50    ;
  58:L P[42] 2000mm/sec CNT50    ;
  59:L P[43] 2000mm/sec CNT50    ;
  60:L P[44] 2000mm/sec CNT50    ;
  61:L P[45] 2000mm/sec CNT50    ;
  62:L P[49] 2000mm/sec CNT50    ;
  63:L P[54] 2000mm/sec CNT50    ;
  64:L P[53] 2000mm/sec CNT50    ;
  65:L P[52] 2000mm/sec CNT50    ;
  66:L P[51] 2000mm/sec CNT50    ;
  67:L P[50] 2000mm/sec CNT50    ;
  68:L P[48] 2000mm/sec CNT50    ;
  69:L P[46] 2000mm/sec CNT50    ;
  70:L P[47] 2000mm/sec CNT50    ;
  71:L P[55] 2000mm/sec CNT50    ;
  72:L P[56] 2000mm/sec CNT50    ;
  73:L P[57] 2000mm/sec CNT50    ;
  74:L P[58] 2000mm/sec CNT50    ;
  75:L P[59] 2000mm/sec CNT50    ;
  76:L P[60] 1000mm/sec CNT50    ;
  77:   ;
  78:J P[67] 90% CNT100    ;
  79:J P[76] 90% CNT100    ;
  80:   ;
  81:  LBL[900:PROGRAM END] ;
  82:  END ;
/POS
P[3]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   120.292  mm,	Y =   670.136  mm,	Z =  1718.821  mm,
	W =   148.515 deg,	P =    51.274 deg,	R =  -149.781 deg
};
P[4]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   106.049  mm,	Y =   726.700  mm,	Z =  1704.434  mm,
	W =   148.515 deg,	P =    51.273 deg,	R =  -149.781 deg
};
P[5]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =    35.728  mm,	Y =   730.540  mm,	Z =  1751.714  mm,
	W =   148.515 deg,	P =    51.274 deg,	R =  -149.782 deg
};
P[6]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =    32.377  mm,	Y =   769.183  mm,	Z =  1830.315  mm,
	W =   148.515 deg,	P =    51.273 deg,	R =  -149.782 deg
};
P[7]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =    72.252  mm,	Y =   823.299  mm,	Z =  1957.675  mm,
	W =   148.515 deg,	P =    51.273 deg,	R =  -149.782 deg
};
P[8]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =    86.194  mm,	Y =   822.908  mm,	Z =  2081.993  mm,
	W =   148.514 deg,	P =    51.273 deg,	R =  -149.782 deg
};
P[9]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   177.663  mm,	Y =   986.852  mm,	Z =  2041.251  mm,
	W =   152.905 deg,	P =    51.839 deg,	R =  -149.210 deg
};
P[10]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   236.147  mm,	Y =  1031.851  mm,	Z =  2032.730  mm,
	W =   152.905 deg,	P =    51.839 deg,	R =  -149.210 deg
};
P[11]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   287.628  mm,	Y =  1128.246  mm,	Z =  1964.085  mm,
	W =   155.101 deg,	P =    51.839 deg,	R =  -149.210 deg
};
P[12]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   369.190  mm,	Y =  1221.464  mm,	Z =  1880.686  mm,
	W =   155.101 deg,	P =    51.839 deg,	R =  -149.210 deg
};
P[13]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   402.003  mm,	Y =  1256.922  mm,	Z =  1875.408  mm,
	W =   155.101 deg,	P =    51.839 deg,	R =  -149.211 deg
};
P[14]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   439.663  mm,	Y =  1277.036  mm,	Z =  1884.334  mm,
	W =   155.101 deg,	P =    51.838 deg,	R =  -149.211 deg
};
P[15]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   552.942  mm,	Y =  1252.555  mm,	Z =  1856.015  mm,
	W =   155.100 deg,	P =    51.838 deg,	R =  -149.211 deg
};
P[16]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   595.181  mm,	Y =  1221.834  mm,	Z =  1849.776  mm,
	W =   155.100 deg,	P =    51.838 deg,	R =  -149.211 deg
};
P[17]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   640.781  mm,	Y =  1186.553  mm,	Z =  1844.017  mm,
	W =   155.100 deg,	P =    51.838 deg,	R =  -149.211 deg
};
P[18]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   616.061  mm,	Y =  1143.352  mm,	Z =  1756.897  mm,
	W =   155.100 deg,	P =    51.838 deg,	R =  -149.212 deg
};
P[19]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   625.180  mm,	Y =  1107.831  mm,	Z =  1698.337  mm,
	W =   155.100 deg,	P =    51.838 deg,	R =  -149.212 deg
};
P[20]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   603.924  mm,	Y =  1048.222  mm,	Z =  1585.393  mm,
	W =   165.408 deg,	P =    54.610 deg,	R =  -136.365 deg
};
P[21]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   579.526  mm,	Y =  1004.860  mm,	Z =  1492.613  mm,
	W =   179.501 deg,	P =    55.911 deg,	R =  -119.257 deg
};
P[22]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   635.934  mm,	Y =   938.470  mm,	Z =  1407.958  mm,
	W =  -164.156 deg,	P =    54.367 deg,	R =   -99.406 deg
};
P[23]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   685.712  mm,	Y =   899.559  mm,	Z =  1322.073  mm,
	W =  -145.993 deg,	P =    45.182 deg,	R =   -80.075 deg
};
P[24]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   826.021  mm,	Y =   843.823  mm,	Z =  1394.326  mm,
	W =  -141.112 deg,	P =    41.349 deg,	R =   -72.961 deg
};
P[25]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   861.379  mm,	Y =   843.404  mm,	Z =  1416.203  mm,
	W =  -134.305 deg,	P =    33.799 deg,	R =   -69.077 deg
};
P[26]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   857.289  mm,	Y =   839.819  mm,	Z =  1437.181  mm,
	W =  -129.845 deg,	P =    25.052 deg,	R =   -60.039 deg
};
P[27]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   861.059  mm,	Y =   857.711  mm,	Z =  1466.342  mm,
	W =  -134.523 deg,	P =    16.928 deg,	R =   -52.179 deg
};
P[28]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   835.652  mm,	Y =   885.876  mm,	Z =  1474.882  mm,
	W =  -133.441 deg,	P =    12.687 deg,	R =   -47.949 deg
};
P[29]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   785.255  mm,	Y =   916.486  mm,	Z =  1496.120  mm,
	W =  -132.641 deg,	P =     7.996 deg,	R =   -43.499 deg
};
P[30]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   745.880  mm,	Y =   947.863  mm,	Z =  1532.147  mm,
	W =  -132.641 deg,	P =     7.996 deg,	R =   -43.499 deg
};
P[31]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   703.641  mm,	Y =   999.462  mm,	Z =  1551.108  mm,
	W =  -132.641 deg,	P =     7.996 deg,	R =   -43.499 deg
};
P[32]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   726.200  mm,	Y =  1019.861  mm,	Z =  1585.188  mm,
	W =  -132.641 deg,	P =     7.996 deg,	R =   -43.499 deg
};
P[33]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   750.296  mm,	Y =  1082.199  mm,	Z =  1618.124  mm,
	W =  -139.520 deg,	P =     3.947 deg,	R =   -38.691 deg
};
P[34]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   833.335  mm,	Y =  1142.439  mm,	Z =  1665.166  mm,
	W =  -146.521 deg,	P =     3.947 deg,	R =   -38.691 deg
};
P[35]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   861.174  mm,	Y =  1120.118  mm,	Z =  1683.168  mm,
	W =  -146.521 deg,	P =     3.947 deg,	R =   -38.691 deg
};
P[36]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   863.095  mm,	Y =  1061.667  mm,	Z =  1784.579  mm,
	W =  -146.521 deg,	P =     3.947 deg,	R =   -38.691 deg
};
P[37]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   896.934  mm,	Y =  1062.682  mm,	Z =  1911.475  mm,
	W =  -152.761 deg,	P =     3.947 deg,	R =   -38.691 deg
};
P[38]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   901.974  mm,	Y =  1062.682  mm,	Z =  1935.235  mm,
	W =  -152.761 deg,	P =     3.947 deg,	R =   -38.691 deg
};
P[39]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   897.202  mm,	Y =  1043.171  mm,	Z =  1956.904  mm,
	W =  -152.640 deg,	P =     2.905 deg,	R =   -36.670 deg
};
P[40]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   921.202  mm,	Y =   994.454  mm,	Z =  2059.386  mm,
	W =  -151.950 deg,	P =      .567 deg,	R =   -36.688 deg
};
P[41]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   917.009  mm,	Y =   991.207  mm,	Z =  1995.490  mm,
	W =  -152.069 deg,	P =    -2.757 deg,	R =   -30.439 deg
};
P[42]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   911.302  mm,	Y =   986.326  mm,	Z =  1965.496  mm,
	W =  -152.401 deg,	P =    -5.253 deg,	R =   -25.690 deg
};
P[43]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   907.140  mm,	Y =   975.349  mm,	Z =  1932.525  mm,
	W =  -153.126 deg,	P =    -8.375 deg,	R =   -19.589 deg
};
P[44]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   941.940  mm,	Y =   903.168  mm,	Z =  1897.375  mm,
	W =  -154.776 deg,	P =   -12.708 deg,	R =   -10.593 deg
};
P[45]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   943.469  mm,	Y =   814.751  mm,	Z =  1859.546  mm,
	W =  -154.776 deg,	P =   -12.708 deg,	R =   -10.593 deg
};
P[46]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   777.061  mm,	Y =   609.739  mm,	Z =  1180.283  mm,
	W =  -157.658 deg,	P =    29.470 deg,	R =   -80.701 deg
};
P[47]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   671.341  mm,	Y =   660.872  mm,	Z =  1147.769  mm,
	W =  -161.663 deg,	P =    31.968 deg,	R =   -88.529 deg
};
P[48]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   905.596  mm,	Y =   585.611  mm,	Z =  1260.071  mm,
	W =  -154.192 deg,	P =    26.558 deg,	R =   -73.331 deg
};
P[49]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1033.857  mm,	Y =   729.786  mm,	Z =  1653.394  mm,
	W =  -141.125 deg,	P =    -4.990 deg,	R =   -34.970 deg
};
P[50]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   950.251  mm,	Y =   612.706  mm,	Z =  1262.942  mm,
	W =  -142.076 deg,	P =    27.056 deg,	R =   -70.579 deg
};
P[51]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   965.775  mm,	Y =   608.955  mm,	Z =  1300.539  mm,
	W =  -134.707 deg,	P =    19.711 deg,	R =   -60.892 deg
};
P[52]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   992.217  mm,	Y =   579.979  mm,	Z =  1359.305  mm,
	W =  -130.064 deg,	P =    11.988 deg,	R =   -54.536 deg
};
P[53]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1034.693  mm,	Y =   634.787  mm,	Z =  1446.630  mm,
	W =  -133.687 deg,	P =     4.713 deg,	R =   -47.958 deg
};
P[54]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1067.270  mm,	Y =   698.377  mm,	Z =  1577.187  mm,
	W =  -136.716 deg,	P =      .094 deg,	R =   -42.629 deg
};
P[55]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   629.079  mm,	Y =   730.346  mm,	Z =  1179.511  mm,
	W =  -170.747 deg,	P =    38.536 deg,	R =  -104.354 deg
};
P[56]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   352.958  mm,	Y =   694.283  mm,	Z =  1309.325  mm,
	W =   173.320 deg,	P =    38.196 deg,	R =  -109.110 deg
};
P[57]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   268.532  mm,	Y =   701.088  mm,	Z =  1336.282  mm,
	W =   170.887 deg,	P =    38.196 deg,	R =  -109.110 deg
};
P[58]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   185.755  mm,	Y =   681.183  mm,	Z =  1407.436  mm,
	W =   174.444 deg,	P =    38.196 deg,	R =  -109.110 deg
};
P[59]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   118.034  mm,	Y =   662.815  mm,	Z =  1469.315  mm,
	W =   179.311 deg,	P =    38.196 deg,	R =  -109.110 deg
};
P[60]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =    11.050  mm,	Y =   705.081  mm,	Z =  1463.072  mm,
	W =  -176.047 deg,	P =    38.196 deg,	R =  -109.110 deg
};
P[61]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   442.639  mm,	Y =   544.423  mm,	Z =  1567.241  mm,
	W =  -130.847 deg,	P =    -6.654 deg,	R =   -20.530 deg
};
P[67]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   122.382  mm,	Y =   631.017  mm,	Z =  1491.508  mm,
	W =  -146.631 deg,	P =    39.705 deg,	R =   -68.358 deg
};
P[76]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   442.639  mm,	Y =   544.423  mm,	Z =  1567.241  mm,
	W =  -130.847 deg,	P =    -6.654 deg,	R =   -20.530 deg
};
P[77]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   710.594  mm,	Y =   862.409  mm,	Z =  1166.758  mm,
	W =  -164.154 deg,	P =    54.368 deg,	R =   -99.400 deg
};
P[78]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   847.699  mm,	Y =   836.679  mm,	Z =  1184.122  mm,
	W =  -157.911 deg,	P =    52.781 deg,	R =   -91.642 deg
};
P[79]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   855.241  mm,	Y =   767.261  mm,	Z =  1119.581  mm,
	W =  -152.146 deg,	P =    42.750 deg,	R =   -83.800 deg
};
P[80]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   686.663  mm,	Y =   796.578  mm,	Z =  1045.021  mm,
	W =  -152.146 deg,	P =    42.750 deg,	R =   -83.800 deg
};
P[81]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   635.934  mm,	Y =   938.470  mm,	Z =  1407.958  mm,
	W =  -164.156 deg,	P =    54.367 deg,	R =   -99.406 deg
};
/END
