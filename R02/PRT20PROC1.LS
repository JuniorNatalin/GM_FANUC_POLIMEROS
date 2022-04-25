/PROG  PRT20PROC1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "300";
PROG_SIZE	= 3092;
CREATE		= DATE 20-06-23  TIME 07:22:42;
MODIFIED	= DATE 20-07-02  TIME 15:17:24;
FILE_NAME	= PRT20PRO;
VERSION		= 0;
LINE_COUNT	= 54;
MEMORY_SIZE	= 3508;
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
  21:L P[12] 2000mm/sec CNT50    ;
  22:L P[13] 2000mm/sec CNT50    ;
  23:L P[16] 2000mm/sec CNT50    ;
  24:L P[17] 2000mm/sec CNT50    ;
  25:L P[8] 2000mm/sec CNT50    ;
  26:L P[22] 2000mm/sec CNT50    ;
  27:L P[9] 2000mm/sec CNT50    ;
  28:L P[11] 2000mm/sec CNT50    ;
  29:L P[14] 2000mm/sec CNT50    ;
  30:L P[15] 2000mm/sec CNT50    ;
  31:L P[2] 2000mm/sec CNT50    ;
  32:L P[10] 2000mm/sec CNT50    ;
  33:L P[63] 2000mm/sec CNT50    ;
  34:L P[23] 2000mm/sec CNT50    ;
  35:L P[27] 2000mm/sec CNT50    ;
  36:L P[28] 2000mm/sec CNT50    ;
  37:L P[30] 2000mm/sec CNT50    ;
  38:L P[43] 2000mm/sec CNT50    ;
  39:L P[44] 2000mm/sec CNT50    ;
  40:L P[49] 2000mm/sec CNT50    ;
  41:L P[54] 2000mm/sec CNT50    ;
  42:L P[1] 2000mm/sec CNT50    ;
  43:L P[53] 2000mm/sec CNT50    ;
  44:L P[47] 2000mm/sec CNT50    ;
  45:L P[55] 2000mm/sec CNT50    ;
  46:L P[32] 1500mm/sec CNT50    ;
  47:L P[33] 1500mm/sec CNT50    ;
  48:L P[59] 1500mm/sec CNT50    ;
  49:   ;
  50:  //J P[67] 50% CNT100    ;
  51:J P[76] 50% CNT100    ;
  52:   ;
  53:  LBL[900:PROGRAM END] ;
  54:  END ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   984.057  mm,	Y =   639.159  mm,	Z =  1048.554  mm,
	W =  -131.517 deg,	P =    23.756 deg,	R =   -51.093 deg
};
P[2]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   856.394  mm,	Y =   945.810  mm,	Z =  1381.680  mm,
	W =  -164.154 deg,	P =    54.367 deg,	R =   -99.400 deg
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
	X =   197.889  mm,	Y =  1075.501  mm,	Z =  1436.902  mm,
	W =   148.516 deg,	P =    51.272 deg,	R =  -149.781 deg
};
P[5]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   140.249  mm,	Y =   984.021  mm,	Z =  1573.202  mm,
	W =   148.516 deg,	P =    51.272 deg,	R =  -149.781 deg
};
P[6]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   197.048  mm,	Y =  1084.439  mm,	Z =  1830.299  mm,
	W =   148.516 deg,	P =    51.273 deg,	R =  -149.782 deg
};
P[7]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   317.684  mm,	Y =  1196.846  mm,	Z =  1840.388  mm,
	W =   152.241 deg,	P =    51.605 deg,	R =  -149.479 deg
};
P[8]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   699.021  mm,	Y =  1098.172  mm,	Z =  1510.278  mm,
	W =   163.472 deg,	P =    54.225 deg,	R =  -138.746 deg
};
P[9]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   698.459  mm,	Y =   871.770  mm,	Z =  1094.795  mm,
	W =  -164.167 deg,	P =    54.357 deg,	R =   -99.416 deg
};
P[10]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   982.831  mm,	Y =   921.380  mm,	Z =  1401.314  mm,
	W =  -145.993 deg,	P =    45.182 deg,	R =   -80.075 deg
};
P[11]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   688.794  mm,	Y =   747.460  mm,	Z =  1182.656  mm,
	W =  -164.169 deg,	P =    54.355 deg,	R =   -99.415 deg
};
P[12]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   409.269  mm,	Y =  1282.185  mm,	Z =  1848.048  mm,
	W =   155.101 deg,	P =    51.838 deg,	R =  -149.211 deg
};
P[13]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   541.275  mm,	Y =  1273.889  mm,	Z =  1753.607  mm,
	W =   155.101 deg,	P =    51.838 deg,	R =  -149.211 deg
};
P[14]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   698.459  mm,	Y =   871.770  mm,	Z =  1094.795  mm,
	W =  -164.167 deg,	P =    54.357 deg,	R =   -99.416 deg
};
P[15]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   635.934  mm,	Y =   965.274  mm,	Z =  1340.446  mm,
	W =  -164.156 deg,	P =    54.367 deg,	R =   -99.406 deg
};
P[16]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   606.432  mm,	Y =  1100.360  mm,	Z =  1755.996  mm,
	W =   155.100 deg,	P =    51.837 deg,	R =  -149.211 deg
};
P[17]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   717.840  mm,	Y =  1137.816  mm,	Z =  1560.938  mm,
	W =   155.100 deg,	P =    51.838 deg,	R =  -149.211 deg
};
P[22]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   635.934  mm,	Y =   965.274  mm,	Z =  1340.446  mm,
	W =  -164.156 deg,	P =    54.367 deg,	R =   -99.406 deg
};
P[23]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1019.011  mm,	Y =  1014.328  mm,	Z =  1570.026  mm,
	W =  -139.920 deg,	P =    25.585 deg,	R =   -60.350 deg
};
P[27]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1007.989  mm,	Y =  1079.541  mm,	Z =  1615.884  mm,
	W =  -140.178 deg,	P =    16.931 deg,	R =   -52.181 deg
};
P[28]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   992.492  mm,	Y =   979.732  mm,	Z =  1662.175  mm,
	W =  -137.108 deg,	P =    13.803 deg,	R =   -48.634 deg
};
P[30]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   966.826  mm,	Y =   954.672  mm,	Z =  1738.845  mm,
	W =  -132.641 deg,	P =     7.996 deg,	R =   -43.500 deg
};
P[32]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   427.003  mm,	Y =   809.681  mm,	Z =  1115.730  mm,
	W =   177.568 deg,	P =    38.470 deg,	R =  -107.862 deg
};
P[33]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   324.399  mm,	Y =   739.185  mm,	Z =  1208.961  mm,
	W =  -135.507 deg,	P =    14.743 deg,	R =   -30.360 deg
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
	X =   959.939  mm,	Y =  1149.109  mm,	Z =  1444.365  mm,
	W =  -153.126 deg,	P =    -8.375 deg,	R =   -19.590 deg
};
P[44]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1039.844  mm,	Y =   966.155  mm,	Z =  1428.500  mm,
	W =  -154.776 deg,	P =   -12.708 deg,	R =   -10.593 deg
};
P[45]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   136.532  mm,	Y =   574.713  mm,	Z =  1503.024  mm,
	W =  -137.887 deg,	P =    32.942 deg,	R =   -41.371 deg
};
P[47]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   671.342  mm,	Y =   703.112  mm,	Z =  1008.211  mm,
	W =  -161.663 deg,	P =    31.968 deg,	R =   -88.529 deg
};
P[49]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1170.897  mm,	Y =   843.895  mm,	Z =  1338.163  mm,
	W =  -141.125 deg,	P =    -4.990 deg,	R =   -34.970 deg
};
P[53]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   798.553  mm,	Y =   603.294  mm,	Z =   985.087  mm,
	W =  -148.655 deg,	P =    23.925 deg,	R =   -68.879 deg
};
P[54]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1029.710  mm,	Y =   671.978  mm,	Z =  1157.188  mm,
	W =  -136.716 deg,	P =      .094 deg,	R =   -42.629 deg
};
P[55]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   637.337  mm,	Y =   717.943  mm,	Z =   994.374  mm,
	W =  -164.152 deg,	P =    33.347 deg,	R =   -90.864 deg
};
P[59]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   247.434  mm,	Y =   765.919  mm,	Z =  1296.002  mm,
	W =  -135.063 deg,	P =    11.793 deg,	R =   -28.325 deg
};
P[61]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   442.639  mm,	Y =   544.423  mm,	Z =  1567.241  mm,
	W =  -130.847 deg,	P =    -6.654 deg,	R =   -20.530 deg
};
P[63]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1042.831  mm,	Y =   873.381  mm,	Z =  1470.914  mm,
	W =  -145.994 deg,	P =    45.182 deg,	R =   -80.075 deg
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
