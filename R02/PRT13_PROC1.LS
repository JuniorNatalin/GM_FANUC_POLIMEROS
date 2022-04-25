/PROG  PRT13_PROC1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "331";
PROG_SIZE	= 3831;
CREATE		= DATE 21-06-08  TIME 23:06:36;
MODIFIED	= DATE 21-06-08  TIME 23:06:36;
FILE_NAME	= PRT07PRO;
VERSION		= 0;
LINE_COUNT	= 71;
MEMORY_SIZE	= 4307;
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
  11:J P[1] 70% CNT100    ;
  12:  //J P[2] 80% CNT50    ;
  13:  //J P[3] 90% CNT50    ;
  14:  //J P[4] 100% CNT50    ;
  15:  //J P[5] 100% CNT50    ;
  16:  //    ;
  17:  //!DEFLASH 1 ;
  18:  //J P[6] 100% CNT50    ;
  19:  //L P[7] 2000mm/sec CNT50    ;
  20:  //L P[8] 2000mm/sec CNT50    ;
  21:  //L P[10] 2000mm/sec CNT50    ;
  22:  //L P[12] 2000mm/sec CNT50    ;
  23:  //L P[13] 2000mm/sec CNT50    ;
  24:  //L P[14] 2000mm/sec CNT50    ;
  25:  //L P[15] 2000mm/sec CNT50    ;
  26:  //    ;
  27:  //L P[17] 2000mm/sec CNT50    ;
  28:  //L P[18] 2000mm/sec CNT50    ;
  29:  //L P[19] 2000mm/sec CNT50    ;
  30:  //L P[20] 2000mm/sec CNT50    ;
  31:  //L P[21] 2000mm/sec CNT50    ;
  32:  //L P[22] 2000mm/sec CNT50    ;
  33:  //L P[23] 2000mm/sec CNT50    ;
  34:  //L P[24] 2000mm/sec CNT50    ;
  35:  //L P[25] 2000mm/sec CNT50    ;
  36:  //L P[26] 2000mm/sec CNT50    ;
  37:  //L P[27] 1800mm/sec CNT50    ;
  38:  //L P[58] 1800mm/sec CNT50    ;
  39:  //L P[28] 2000mm/sec CNT50    ;
  40:  //L P[29] 2000mm/sec CNT50    ;
  41:  //L P[30] 2000mm/sec CNT50    ;
  42:  //L P[32] 2000mm/sec CNT50    ;
  43:  //L P[9] 2000mm/sec CNT50    ;
  44:  //    ;
  45:  //    ;
  46:  //L P[33] 2000mm/sec CNT50    ;
  47:  //L P[34] 2000mm/sec CNT50    ;
  48:  //L P[35] 2000mm/sec CNT50    ;
  49:  //L P[36] 2000mm/sec CNT50    ;
  50:  //L P[37] 2000mm/sec CNT50    ;
  51:  //L P[38] 2000mm/sec CNT50    ;
  52:  //    ;
  53:  //L P[39] 2000mm/sec CNT50    ;
  54:  //L P[40] 2000mm/sec CNT50    ;
  55:  //L P[41] 2000mm/sec CNT50    ;
  56:  //L P[44] 2000mm/sec CNT50    ;
  57:  //L P[46] 2000mm/sec CNT50    ;
  58:  //L P[47] 2000mm/sec CNT50    ;
  59:  //L P[48] 2000mm/sec CNT50    ;
  60:  //L P[49] 2000mm/sec CNT50    ;
  61:  //L P[51] 2000mm/sec CNT50    ;
  62:  //L P[52] 2000mm/sec CNT50    ;
  63:  //L P[53] 2000mm/sec CNT50    ;
  64:  //L P[54] 1500mm/sec CNT50    ;
  65:  //L P[55] 1500mm/sec CNT50    ;
  66:  //L P[56] 1000mm/sec CNT50    ;
  67:  //    ;
  68:  //J P[57] 80% CNT100    ;
  69:  //    ;
  70:  LBL[900:PROGRAM END] ;
  71:  END ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   513.087  mm,	Y =   413.938  mm,	Z =  1850.712  mm,
	W =  -129.716 deg,	P =    -6.705 deg,	R =   -26.547 deg
};
P[2]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   526.541  mm,	Y =   366.165  mm,	Z =  1602.332  mm,
	W =  -127.821 deg,	P =     9.812 deg,	R =   -38.987 deg
};
P[3]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   446.905  mm,	Y =   425.186  mm,	Z =  1552.253  mm,
	W =  -139.493 deg,	P =    36.578 deg,	R =   -57.916 deg
};
P[4]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   207.140  mm,	Y =   517.928  mm,	Z =  1656.383  mm,
	W =  -161.999 deg,	P =    52.496 deg,	R =   -89.818 deg
};
P[5]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   108.080  mm,	Y =   550.881  mm,	Z =  1999.049  mm,
	W =   148.516 deg,	P =    51.273 deg,	R =  -147.910 deg
};
P[6]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   -11.522  mm,	Y =   780.896  mm,	Z =  1689.553  mm,
	W =   148.515 deg,	P =    51.274 deg,	R =  -149.782 deg
};
P[7]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   123.041  mm,	Y =   704.046  mm,	Z =  2027.348  mm,
	W =   139.831 deg,	P =    36.231 deg,	R =  -156.023 deg
};
P[8]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =    57.894  mm,	Y =   688.218  mm,	Z =  1796.246  mm,
	W =   153.797 deg,	P =    50.203 deg,	R =  -148.763 deg
};
P[9]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   900.837  mm,	Y =   324.894  mm,	Z =  1570.238  mm,
	W =   164.682 deg,	P =    23.377 deg,	R =  -137.399 deg
};
P[10]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =    66.408  mm,	Y =   653.968  mm,	Z =  1725.885  mm,
	W =   150.930 deg,	P =    47.885 deg,	R =  -146.737 deg
};
P[11]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   631.351  mm,	Y =   775.263  mm,	Z =  1705.825  mm,
	W =   148.515 deg,	P =    51.273 deg,	R =  -149.782 deg
};
P[12]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   410.473  mm,	Y =   711.501  mm,	Z =  1903.824  mm,
	W =   154.210 deg,	P =    41.322 deg,	R =  -141.940 deg
};
P[13]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   489.363  mm,	Y =   813.983  mm,	Z =  1699.145  mm,
	W =   157.191 deg,	P =    32.558 deg,	R =  -136.997 deg
};
P[14]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   503.893  mm,	Y =   746.048  mm,	Z =  1660.646  mm,
	W =   159.282 deg,	P =    39.182 deg,	R =  -138.854 deg
};
P[15]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   495.461  mm,	Y =   856.457  mm,	Z =  1684.354  mm,
	W =   163.199 deg,	P =    34.247 deg,	R =  -135.550 deg
};
P[16]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   626.551  mm,	Y =   921.663  mm,	Z =  1804.227  mm,
	W =   161.413 deg,	P =    45.221 deg,	R =  -140.129 deg
};
P[17]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   346.058  mm,	Y =   717.407  mm,	Z =  1977.585  mm,
	W =   153.797 deg,	P =    50.203 deg,	R =  -148.763 deg
};
P[18]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   417.534  mm,	Y =   822.424  mm,	Z =  1651.715  mm,
	W =   160.360 deg,	P =    32.385 deg,	R =  -138.772 deg
};
P[19]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   317.617  mm,	Y =   798.389  mm,	Z =  1434.955  mm,
	W =   153.797 deg,	P =    50.203 deg,	R =  -148.763 deg
};
P[20]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   636.298  mm,	Y =   547.017  mm,	Z =  1317.807  mm,
	W =   156.403 deg,	P =    44.680 deg,	R =  -144.959 deg
};
P[21]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   963.154  mm,	Y =   292.716  mm,	Z =  1194.844  mm,
	W =   156.404 deg,	P =    44.680 deg,	R =  -144.958 deg
};
P[22]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   616.760  mm,	Y =   617.162  mm,	Z =  1390.755  mm,
	W =   153.797 deg,	P =    50.203 deg,	R =  -148.763 deg
};
P[23]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   486.623  mm,	Y =   807.208  mm,	Z =  1429.948  mm,
	W =   159.032 deg,	P =    39.831 deg,	R =  -142.277 deg
};
P[24]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1021.040  mm,	Y =   356.115  mm,	Z =  1394.873  mm,
	W =   170.908 deg,	P =    31.543 deg,	R =  -132.332 deg
};
P[25]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   675.513  mm,	Y =   723.455  mm,	Z =  1568.721  mm,
	W =   171.657 deg,	P =    31.792 deg,	R =  -126.819 deg
};
P[26]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   891.007  mm,	Y =   599.639  mm,	Z =  1505.554  mm,
	W =   170.267 deg,	P =    29.621 deg,	R =  -132.788 deg
};
P[27]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1107.090  mm,	Y =   527.417  mm,	Z =  1455.183  mm,
	W =   169.579 deg,	P =    21.427 deg,	R =  -130.642 deg
};
P[28]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1041.202  mm,	Y =   482.202  mm,	Z =  1586.647  mm,
	W =   161.523 deg,	P =    36.839 deg,	R =  -146.094 deg
};
P[29]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   826.021  mm,	Y =   761.349  mm,	Z =  1782.145  mm,
	W =   162.776 deg,	P =    31.643 deg,	R =  -141.805 deg
};
P[30]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   981.978  mm,	Y =   623.578  mm,	Z =  1730.637  mm,
	W =   162.776 deg,	P =    31.643 deg,	R =  -141.805 deg
};
P[32]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1135.261  mm,	Y =   519.502  mm,	Z =  1694.924  mm,
	W =   164.506 deg,	P =    22.104 deg,	R =  -138.089 deg
};
P[33]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   490.264  mm,	Y =   451.247  mm,	Z =  1883.608  mm,
	W =  -168.884 deg,	P =    55.167 deg,	R =  -105.193 deg
};
P[34]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   582.363  mm,	Y =   392.390  mm,	Z =  1779.110  mm,
	W =  -142.052 deg,	P =    44.703 deg,	R =   -70.707 deg
};
P[35]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   610.056  mm,	Y =   292.009  mm,	Z =  1827.928  mm,
	W =  -131.387 deg,	P =    32.029 deg,	R =   -53.705 deg
};
P[36]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   809.739  mm,	Y =   183.118  mm,	Z =  1947.860  mm,
	W =  -129.049 deg,	P =    27.166 deg,	R =   -48.979 deg
};
P[37]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   998.895  mm,	Y =   225.372  mm,	Z =  1951.777  mm,
	W =  -129.050 deg,	P =    27.166 deg,	R =   -48.980 deg
};
P[38]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   881.722  mm,	Y =   519.028  mm,	Z =  1962.775  mm,
	W =  -131.506 deg,	P =     -.950 deg,	R =   -73.195 deg
};
P[39]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   900.445  mm,	Y =   374.916  mm,	Z =  1879.056  mm,
	W =  -130.726 deg,	P =     2.592 deg,	R =   -70.390 deg
};
P[40]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1042.335  mm,	Y =   186.419  mm,	Z =  1765.027  mm,
	W =  -125.936 deg,	P =    17.246 deg,	R =   -40.784 deg
};
P[41]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1025.283  mm,	Y =   334.686  mm,	Z =  1578.839  mm,
	W =  -132.320 deg,	P =    19.194 deg,	R =   -42.283 deg
};
P[44]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   974.966  mm,	Y =   262.011  mm,	Z =  1619.636  mm,
	W =  -127.912 deg,	P =    20.672 deg,	R =   -43.498 deg
};
P[46]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   933.500  mm,	Y =   181.048  mm,	Z =  1757.979  mm,
	W =  -127.205 deg,	P =    20.924 deg,	R =   -43.669 deg
};
P[47]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   679.747  mm,	Y =   508.060  mm,	Z =  1600.348  mm,
	W =  -130.178 deg,	P =    12.732 deg,	R =   -54.459 deg
};
P[48]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   788.554  mm,	Y =   336.419  mm,	Z =  1854.147  mm,
	W =  -125.340 deg,	P =    10.604 deg,	R =   -39.662 deg
};
P[49]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   723.228  mm,	Y =   601.239  mm,	Z =  1717.671  mm,
	W =  -141.910 deg,	P =    23.451 deg,	R =   -82.605 deg
};
P[51]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   893.272  mm,	Y =   322.617  mm,	Z =  1866.476  mm,
	W =  -132.173 deg,	P =    22.780 deg,	R =   -54.868 deg
};
P[52]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1085.070  mm,	Y =   129.660  mm,	Z =  1860.776  mm,
	W =  -126.905 deg,	P =    21.032 deg,	R =   -43.739 deg
};
P[53]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1068.783  mm,	Y =   146.704  mm,	Z =  1914.726  mm,
	W =  -126.905 deg,	P =    21.031 deg,	R =   -43.739 deg
};
P[54]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   985.208  mm,	Y =   252.151  mm,	Z =  1881.505  mm,
	W =  -126.905 deg,	P =    21.032 deg,	R =   -43.739 deg
};
P[55]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   847.131  mm,	Y =   245.621  mm,	Z =  1994.385  mm,
	W =  -126.905 deg,	P =    21.032 deg,	R =   -43.739 deg
};
P[56]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   678.439  mm,	Y =   297.055  mm,	Z =  1954.717  mm,
	W =  -126.905 deg,	P =    21.031 deg,	R =   -43.739 deg
};
P[57]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   379.344  mm,	Y =    96.118  mm,	Z =  2088.807  mm,
	W =  -111.918 deg,	P =    15.065 deg,	R =   -52.247 deg
};
P[58]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   526.842  mm,	Y =   849.334  mm,	Z =  1585.785  mm,
	W =   167.505 deg,	P =    41.172 deg,	R =  -135.368 deg
};
/END
