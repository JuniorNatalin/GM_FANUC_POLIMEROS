/PROG  PRT05PROC1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "239";
PROG_SIZE	= 4688;
CREATE		= DATE 19-03-09  TIME 15:13:50;
MODIFIED	= DATE 19-03-09  TIME 18:00:12;
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
  12:J P[42] 70% CNT100    ;
  13:J P[45] 70% CNT100    ;
  14:J P[3] 80% CNT100    ;
  15:   ;
  16:  !DEFLASH 1 ;
  17:L P[4] 1000mm/sec CNT50    ;
  18:L P[5] 2000mm/sec CNT50    ;
  19:L P[6] 2000mm/sec CNT50    ;
  20:L P[7] 2000mm/sec CNT50    ;
  21:L P[8] 2000mm/sec CNT50    ;
  22:L P[9] 2000mm/sec CNT50    ;
  23:L P[11] 2000mm/sec CNT50    ;
  24:L P[12] 2000mm/sec CNT50    ;
  25:L P[13] 2000mm/sec CNT50    ;
  26:L P[14] 2000mm/sec CNT50    ;
  27:L P[15] 2000mm/sec CNT50    ;
  28:L P[16] 2000mm/sec CNT50    ;
  29:L P[17] 2000mm/sec CNT50    ;
  30:L P[18] 2000mm/sec CNT50    ;
  31:L P[20] 2000mm/sec CNT50    ;
  32:L P[21] 2000mm/sec CNT50    ;
  33:L P[22] 2000mm/sec CNT50    ;
  34:L P[62] 2000mm/sec CNT50    ;
  35:L P[19] 2000mm/sec CNT50    ;
  36:L P[1] 2000mm/sec CNT50    ;
  37:L P[2] 2000mm/sec CNT50    ;
  38:L P[10] 2000mm/sec CNT50    ;
  39:L P[63] 2000mm/sec CNT50    ;
  40:L P[23] 2000mm/sec CNT50    ;
  41:L P[24] 2000mm/sec CNT50    ;
  42:L P[25] 2000mm/sec CNT50    ;
  43:L P[26] 2000mm/sec CNT50    ;
  44:L P[27] 2000mm/sec CNT50    ;
  45:L P[28] 2000mm/sec CNT50    ;
  46:L P[29] 2000mm/sec CNT50    ;
  47:L P[30] 2000mm/sec CNT50    ;
  48:L P[64] 2000mm/sec CNT50    ;
  49:L P[31] 2000mm/sec CNT50    ;
  50:L P[40] 2000mm/sec CNT50    ;
  51:L P[41] 2000mm/sec CNT50    ;
  52:L P[43] 2000mm/sec CNT50    ;
  53:L P[44] 2000mm/sec CNT50    ;
  54:L P[49] 2000mm/sec CNT50    ;
  55:L P[54] 2000mm/sec CNT50    ;
  56:L P[53] 2000mm/sec CNT50    ;
  57:L P[52] 2000mm/sec CNT50    ;
  58:L P[34] 2000mm/sec CNT50    ;
  59:L P[35] 2000mm/sec CNT50    ;
  60:L P[36] 2000mm/sec CNT50    ;
  61:L P[51] 2000mm/sec CNT50    ;
  62:L P[50] 2000mm/sec CNT50    ;
  63:L P[48] 2000mm/sec CNT50    ;
  64:L P[46] 2000mm/sec CNT50    ;
  65:L P[47] 2000mm/sec CNT50    ;
  66:L P[55] 2000mm/sec CNT50    ;
  67:L P[32] 2000mm/sec CNT50    ;
  68:L P[37] 2000mm/sec CNT50    ;
  69:L P[38] 2000mm/sec CNT50    ;
  70:L P[39] 2000mm/sec CNT50    ;
  71:L P[56] 2000mm/sec CNT50    ;
  72:L P[57] 2000mm/sec CNT50    ;
  73:L P[58] 2000mm/sec CNT50    ;
  74:L P[33] 2000mm/sec CNT50    ;
  75:L P[59] 2000mm/sec CNT50    ;
  76:L P[60] 1000mm/sec CNT50    ;
  77:   ;
  78:J P[67] 90% CNT100    ;
  79:J P[76] 90% CNT100    ;
  80:   ;
  81:  LBL[900:PROGRAM END] ;
  82:  END ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   720.674  mm,	Y =   762.329  mm,	Z =  1355.759  mm,
	W =  -164.154 deg,	P =    54.368 deg,	R =   -99.400 deg
};
P[2]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   856.394  mm,	Y =   712.289  mm,	Z =  1381.680  mm,
	W =  -164.154 deg,	P =    54.368 deg,	R =   -99.400 deg
};
P[3]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   120.292  mm,	Y =   670.136  mm,	Z =  1718.821  mm,
	W =   148.515 deg,	P =    51.274 deg,	R =  -149.781 deg
};
P[4]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   219.850  mm,	Y =   933.661  mm,	Z =  1639.941  mm,
	W =   148.517 deg,	P =    51.272 deg,	R =  -149.781 deg
};
P[5]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   214.089  mm,	Y =   977.981  mm,	Z =  1751.714  mm,
	W =   148.515 deg,	P =    51.274 deg,	R =  -149.782 deg
};
P[6]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   221.017  mm,	Y =   974.022  mm,	Z =  1830.315  mm,
	W =   148.515 deg,	P =    51.273 deg,	R =  -149.782 deg
};
P[7]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   231.381  mm,	Y =   944.868  mm,	Z =  1957.676  mm,
	W =   148.515 deg,	P =    51.273 deg,	R =  -149.782 deg
};
P[8]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   232.437  mm,	Y =   929.994  mm,	Z =  2029.878  mm,
	W =   148.515 deg,	P =    51.273 deg,	R =  -149.782 deg
};
P[9]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   259.744  mm,	Y =  1027.892  mm,	Z =  2005.611  mm,
	W =   152.905 deg,	P =    51.839 deg,	R =  -149.210 deg
};
P[10]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   856.394  mm,	Y =   660.450  mm,	Z =  1381.680  mm,
	W =  -164.154 deg,	P =    54.368 deg,	R =   -99.400 deg
};
P[11]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   313.548  mm,	Y =  1106.287  mm,	Z =  1995.764  mm,
	W =   155.101 deg,	P =    51.839 deg,	R =  -149.210 deg
};
P[12]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   440.469  mm,	Y =  1186.904  mm,	Z =  2044.847  mm,
	W =   155.101 deg,	P =    51.838 deg,	R =  -149.211 deg
};
P[13]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   471.805  mm,	Y =  1182.180  mm,	Z =  2006.013  mm,
	W =   155.100 deg,	P =    51.838 deg,	R =  -149.211 deg
};
P[14]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   499.301  mm,	Y =  1178.034  mm,	Z =  1971.936  mm,
	W =   155.100 deg,	P =    51.838 deg,	R =  -149.211 deg
};
P[15]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   574.542  mm,	Y =  1123.675  mm,	Z =  1925.856  mm,
	W =   155.100 deg,	P =    51.838 deg,	R =  -149.211 deg
};
P[16]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   595.181  mm,	Y =  1118.652  mm,	Z =  1915.879  mm,
	W =   155.101 deg,	P =    51.837 deg,	R =  -149.211 deg
};
P[17]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   708.240  mm,	Y =   993.816  mm,	Z =  1882.537  mm,
	W =   155.100 deg,	P =    51.838 deg,	R =  -149.211 deg
};
P[18]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   761.556  mm,	Y =   964.737  mm,	Z =  1816.657  mm,
	W =   155.100 deg,	P =    51.838 deg,	R =  -149.212 deg
};
P[19]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   720.674  mm,	Y =   717.930  mm,	Z =  1355.759  mm,
	W =  -164.154 deg,	P =    54.368 deg,	R =   -99.400 deg
};
P[20]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   744.584  mm,	Y =   954.434  mm,	Z =  1767.091  mm,
	W =   159.891 deg,	P =    53.357 deg,	R =  -143.183 deg
};
P[21]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   703.829  mm,	Y =   929.692  mm,	Z =  1688.885  mm,
	W =   172.931 deg,	P =    55.615 deg,	R =  -127.200 deg
};
P[22]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   635.934  mm,	Y =   888.475  mm,	Z =  1575.165  mm,
	W =  -164.156 deg,	P =    54.367 deg,	R =   -99.406 deg
};
P[23]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   685.712  mm,	Y =   854.421  mm,	Z =  1494.913  mm,
	W =  -145.993 deg,	P =    45.182 deg,	R =   -80.075 deg
};
P[24]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   826.021  mm,	Y =   818.982  mm,	Z =  1578.646  mm,
	W =  -144.481 deg,	P =    41.349 deg,	R =   -72.961 deg
};
P[25]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   861.378  mm,	Y =   830.443  mm,	Z =  1576.518  mm,
	W =  -142.792 deg,	P =    33.799 deg,	R =   -69.077 deg
};
P[26]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   821.034  mm,	Y =   914.431  mm,	Z =  1615.845  mm,
	W =  -144.780 deg,	P =    24.958 deg,	R =   -60.130 deg
};
P[27]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   852.601  mm,	Y =   982.605  mm,	Z =  1615.884  mm,
	W =  -140.176 deg,	P =    16.928 deg,	R =   -52.179 deg
};
P[28]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   820.774  mm,	Y =  1078.964  mm,	Z =  1668.527  mm,
	W =  -137.264 deg,	P =     8.467 deg,	R =   -48.651 deg
};
P[29]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   792.455  mm,	Y =  1104.543  mm,	Z =  1720.400  mm,
	W =  -136.905 deg,	P =     3.938 deg,	R =   -43.943 deg
};
P[30]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   765.227  mm,	Y =  1002.673  mm,	Z =  1813.245  mm,
	W =  -132.641 deg,	P =     7.996 deg,	R =   -43.500 deg
};
P[31]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   877.732  mm,	Y =  1024.923  mm,	Z =  1860.855  mm,
	W =  -143.548 deg,	P =     3.152 deg,	R =   -40.194 deg
};
P[32]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   426.969  mm,	Y =   703.949  mm,	Z =  1318.554  mm,
	W =   177.568 deg,	P =    38.472 deg,	R =  -107.861 deg
};
P[33]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =    85.915  mm,	Y =   773.822  mm,	Z =  1396.636  mm,
	W =   174.444 deg,	P =    38.196 deg,	R =  -109.110 deg
};
P[34]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1123.052  mm,	Y =   576.625  mm,	Z =  1417.826  mm,
	W =  -118.416 deg,	P =    26.613 deg,	R =   -16.482 deg
};
P[35]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1075.052  mm,	Y =   576.624  mm,	Z =  1306.225  mm,
	W =  -118.416 deg,	P =    26.613 deg,	R =   -16.482 deg
};
P[36]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   967.995  mm,	Y =   535.809  mm,	Z =  1377.055  mm,
	W =  -130.064 deg,	P =    11.988 deg,	R =   -54.536 deg
};
P[37]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   423.729  mm,	Y =   662.909  mm,	Z =  1318.554  mm,
	W =   159.412 deg,	P =    62.098 deg,	R =  -118.434 deg
};
P[38]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   280.449  mm,	Y =   662.908  mm,	Z =  1381.554  mm,
	W =   165.140 deg,	P =    56.233 deg,	R =  -113.507 deg
};
P[39]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   426.969  mm,	Y =   703.949  mm,	Z =  1318.554  mm,
	W =   177.568 deg,	P =    38.472 deg,	R =  -107.861 deg
};
P[40]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   944.602  mm,	Y =  1082.931  mm,	Z =  1863.631  mm,
	W =  -151.950 deg,	P =      .567 deg,	R =   -36.688 deg
};
P[41]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   917.009  mm,	Y =  1082.408  mm,	Z =  1786.689  mm,
	W =  -152.069 deg,	P =    -2.757 deg,	R =   -30.439 deg
};
P[42]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   236.794  mm,	Y =   598.096  mm,	Z =  1521.247  mm,
	W =  -130.650 deg,	P =     8.724 deg,	R =   -17.834 deg
};
P[43]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   907.140  mm,	Y =  1066.549  mm,	Z =  1661.323  mm,
	W =  -153.126 deg,	P =    -8.375 deg,	R =   -19.590 deg
};
P[44]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   979.020  mm,	Y =   961.127  mm,	Z =  1567.136  mm,
	W =  -154.776 deg,	P =   -12.708 deg,	R =   -10.593 deg
};
P[45]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   136.532  mm,	Y =   574.713  mm,	Z =  1503.024  mm,
	W =  -137.887 deg,	P =    32.942 deg,	R =   -41.371 deg
};
P[46]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   777.061  mm,	Y =   588.139  mm,	Z =  1193.964  mm,
	W =  -157.658 deg,	P =    29.470 deg,	R =   -80.701 deg
};
P[47]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   671.341  mm,	Y =   660.872  mm,	Z =  1179.089  mm,
	W =  -161.663 deg,	P =    31.968 deg,	R =   -88.529 deg
};
P[48]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   905.596  mm,	Y =   554.891  mm,	Z =  1275.431  mm,
	W =  -154.192 deg,	P =    26.558 deg,	R =   -73.331 deg
};
P[49]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1091.698  mm,	Y =   867.895  mm,	Z =  1628.563  mm,
	W =  -141.125 deg,	P =    -4.990 deg,	R =   -34.970 deg
};
P[50]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   950.251  mm,	Y =   526.665  mm,	Z =  1313.460  mm,
	W =  -142.076 deg,	P =    27.056 deg,	R =   -70.579 deg
};
P[51]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   965.775  mm,	Y =   522.434  mm,	Z =  1307.979  mm,
	W =  -134.707 deg,	P =    19.711 deg,	R =   -60.892 deg
};
P[52]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   967.995  mm,	Y =   598.209  mm,	Z =  1377.055  mm,
	W =  -130.064 deg,	P =    11.988 deg,	R =   -54.536 deg
};
P[53]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1029.413  mm,	Y =   655.787  mm,	Z =  1466.069  mm,
	W =  -133.687 deg,	P =     4.713 deg,	R =   -47.958 deg
};
P[54]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1077.710  mm,	Y =   763.178  mm,	Z =  1577.186  mm,
	W =  -136.716 deg,	P =      .094 deg,	R =   -42.629 deg
};
P[55]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   629.079  mm,	Y =   730.346  mm,	Z =  1223.430  mm,
	W =  -170.747 deg,	P =    38.536 deg,	R =  -104.354 deg
};
P[56]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   352.958  mm,	Y =   694.283  mm,	Z =  1347.485  mm,
	W =   173.320 deg,	P =    38.196 deg,	R =  -109.110 deg
};
P[57]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   268.532  mm,	Y =   701.088  mm,	Z =  1393.521  mm,
	W =   170.887 deg,	P =    38.196 deg,	R =  -109.110 deg
};
P[58]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   185.755  mm,	Y =   748.863  mm,	Z =  1396.636  mm,
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
P[62]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   717.053  mm,	Y =   847.675  mm,	Z =  1589.085  mm,
	W =  -164.156 deg,	P =    54.367 deg,	R =   -99.406 deg
};
P[63]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   717.053  mm,	Y =   847.675  mm,	Z =  1589.085  mm,
	W =  -164.156 deg,	P =    54.367 deg,	R =   -99.406 deg
};
P[64]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   821.092  mm,	Y =  1077.721  mm,	Z =  1803.257  mm,
	W =  -143.548 deg,	P =     3.152 deg,	R =   -40.194 deg
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
/END
