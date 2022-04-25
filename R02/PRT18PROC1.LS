/PROG  PRT18PROC1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "FLAMBA 298";
PROG_SIZE	= 3607;
CREATE		= DATE 19-09-27  TIME 14:34:32;
MODIFIED	= DATE 20-12-09  TIME 07:21:54;
FILE_NAME	= PRT18PRO;
VERSION		= 0;
LINE_COUNT	= 73;
MEMORY_SIZE	= 4075;
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
   1:  EXIT I-ZONE(1) ;
   2:  EXIT I-ZONE(2) ;
   3:   ;
   4:  IF DO[66]=ON,JMP LBL[900] ;
   5:  SET SEGMENT(22) ;
   6:   ;
   7:  UTOOL_NUM=2 ;
   8:  UFRAME_NUM=0 ;
   9:  PAYLOAD[3] ;
  10:   ;
  11:J P[61] 70% CNT100    ;
  12:J P[3] 90% CNT100    ;
  13:   ;
  14:  !DEFLASH 1 ;
  15:L P[1] 1500mm/sec CNT100    ;
  16:L P[2] 2000mm/sec CNT100    ;
  17:L P[62] 2000mm/sec CNT50    ;
  18:L P[63] 2000mm/sec CNT50    ;
  19:L P[64] 2000mm/sec CNT50    ;
  20:L P[4] 2000mm/sec CNT50    ;
  21:L P[6] 2000mm/sec CNT50    ;
  22:L P[7] 2000mm/sec CNT50    ;
  23:   ;
  24:   ;
  25:   ;
  26:   ;
  27:  !DEFLASH 2 ;
  28:   ;
  29:L P[8] 2000mm/sec CNT50    ;
  30:L P[9] 2000mm/sec CNT50    ;
  31:L P[10] 2000mm/sec CNT50    ;
  32:L P[11] 2000mm/sec CNT50    ;
  33:L P[12] 2000mm/sec CNT50    ;
  34:L P[13] 2000mm/sec CNT50    ;
  35:L P[14] 2000mm/sec CNT50    ;
  36:   ;
  37:   ;
  38:   ;
  39:   ;
  40:  !DEFLASH 3 ;
  41:   ;
  42:L P[15] 2000mm/sec CNT50    ;
  43:L P[16] 2000mm/sec CNT50    ;
  44:L P[5] 2000mm/sec CNT50    ;
  45:L P[17] 2000mm/sec CNT100    ;
  46:L P[65] 2000mm/sec CNT100    ;
  47:L P[18] 2000mm/sec CNT100    ;
  48:L P[19] 2000mm/sec CNT100    ;
  49:L P[20] 2000mm/sec CNT100    ;
  50:L P[21] 2000mm/sec CNT100    ;
  51:L P[22] 2000mm/sec CNT100    ;
  52:   ;
  53:L P[77] 2000mm/sec CNT100    ;
  54:L P[78] 2000mm/sec CNT100    ;
  55:L P[79] 2000mm/sec CNT100    ;
  56:L P[80] 2000mm/sec CNT100    ;
  57:L P[81] 2000mm/sec CNT100    ;
  58:L P[23] 2000mm/sec CNT100    ;
  59:L P[24] 2000mm/sec CNT100    ;
  60:L P[25] 2000mm/sec CNT100    ;
  61:L P[27] 2000mm/sec CNT100    ;
  62:L P[28] 2000mm/sec CNT100    ;
  63:L P[29] 2000mm/sec CNT100    ;
  64:L P[30] 2000mm/sec CNT100    ;
  65:L P[31] 2000mm/sec CNT100    ;
  66:L P[32] 2000mm/sec CNT100    ;
  67:L P[33] 2000mm/sec CNT100    ;
  68:L P[34] 2000mm/sec CNT100    ;
  69:L P[35] 2000mm/sec CNT50    ;
  70:J P[76] 80% CNT100    ;
  71:   ;
  72:  LBL[900:PROGRAM END] ;
  73:  END ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   401.769  mm,	Y =   561.365  mm,	Z =  1667.676  mm,
	W =  -132.598 deg,	P =   -16.300 deg,	R =   -11.782 deg
};
P[2]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   421.988  mm,	Y =   511.579  mm,	Z =  1623.676  mm,
	W =  -131.325 deg,	P =   -10.324 deg,	R =   -17.297 deg
};
P[3]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   388.669  mm,	Y =   593.536  mm,	Z =  1696.139  mm,
	W =  -133.767 deg,	P =   -20.092 deg,	R =    -8.038 deg
};
P[4]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   197.814  mm,	Y =   532.255  mm,	Z =  1534.437  mm,
	W =  -162.069 deg,	P =    48.103 deg,	R =   -86.012 deg
};
P[5]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   888.543  mm,	Y =   655.660  mm,	Z =  1613.842  mm,
	W =   144.091 deg,	P =    39.171 deg,	R =  -150.028 deg
};
P[6]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   -14.700  mm,	Y =   549.737  mm,	Z =  1662.267  mm,
	W =   176.693 deg,	P =    58.918 deg,	R =  -109.323 deg
};
P[7]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   -22.981  mm,	Y =   698.684  mm,	Z =  1831.097  mm,
	W =   133.837 deg,	P =    41.743 deg,	R =  -162.218 deg
};
P[8]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   215.515  mm,	Y =   663.632  mm,	Z =  1755.774  mm,
	W =   133.838 deg,	P =    41.742 deg,	R =  -162.217 deg
};
P[9]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   463.915  mm,	Y =   684.511  mm,	Z =  1712.814  mm,
	W =   133.838 deg,	P =    41.742 deg,	R =  -162.217 deg
};
P[10]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   474.955  mm,	Y =   687.391  mm,	Z =  1554.172  mm,
	W =   133.837 deg,	P =    41.742 deg,	R =  -162.217 deg
};
P[11]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   656.688  mm,	Y =   530.913  mm,	Z =  1388.754  mm,
	W =   133.837 deg,	P =    41.742 deg,	R =  -162.217 deg
};
P[12]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   896.688  mm,	Y =   461.312  mm,	Z =  1184.753  mm,
	W =   133.837 deg,	P =    41.742 deg,	R =  -162.217 deg
};
P[13]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1113.887  mm,	Y =   244.111  mm,	Z =  1145.153  mm,
	W =   133.837 deg,	P =    41.742 deg,	R =  -162.217 deg
};
P[14]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1337.685  mm,	Y =   227.159  mm,	Z =  1192.930  mm,
	W =   140.410 deg,	P =    22.093 deg,	R =  -142.577 deg
};
P[15]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1352.923  mm,	Y =   311.813  mm,	Z =  1214.817  mm,
	W =   136.154 deg,	P =    27.522 deg,	R =  -147.245 deg
};
P[16]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1236.201  mm,	Y =   375.246  mm,	Z =  1428.742  mm,
	W =   137.849 deg,	P =    30.536 deg,	R =  -148.400 deg
};
P[17]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   481.696  mm,	Y =   741.990  mm,	Z =  1757.457  mm,
	W =   149.445 deg,	P =    40.998 deg,	R =  -146.336 deg
};
P[18]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   292.077  mm,	Y =   760.475  mm,	Z =  1774.663  mm,
	W =   151.157 deg,	P =    42.199 deg,	R =  -146.457 deg
};
P[19]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   743.014  mm,	Y =  1039.721  mm,	Z =  1605.416  mm,
	W =   156.545 deg,	P =    25.068 deg,	R =  -130.513 deg
};
P[20]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   805.088  mm,	Y =   864.222  mm,	Z =  1627.471  mm,
	W =   155.102 deg,	P =    37.805 deg,	R =  -137.018 deg
};
P[21]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   914.229  mm,	Y =   792.429  mm,	Z =  1521.309  mm,
	W =   168.619 deg,	P =    40.204 deg,	R =  -111.692 deg
};
P[22]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   913.377  mm,	Y =   832.274  mm,	Z =  1452.568  mm,
	W =  -169.606 deg,	P =    32.881 deg,	R =   -99.381 deg
};
P[23]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   644.738  mm,	Y =   537.084  mm,	Z =  1306.879  mm,
	W =  -126.743 deg,	P =    36.219 deg,	R =   -57.637 deg
};
P[24]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   566.969  mm,	Y =   572.648  mm,	Z =  1270.285  mm,
	W =  -141.898 deg,	P =    44.291 deg,	R =   -69.496 deg
};
P[25]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   496.765  mm,	Y =   607.792  mm,	Z =  1215.215  mm,
	W =  -149.489 deg,	P =    42.311 deg,	R =   -77.463 deg
};
P[27]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   473.243  mm,	Y =   666.700  mm,	Z =  1196.793  mm,
	W =  -143.562 deg,	P =    40.060 deg,	R =   -74.006 deg
};
P[28]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   500.775  mm,	Y =   740.299  mm,	Z =  1081.821  mm,
	W =  -147.320 deg,	P =    37.612 deg,	R =   -81.330 deg
};
P[29]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   401.663  mm,	Y =   714.987  mm,	Z =  1108.172  mm,
	W =  -156.974 deg,	P =    36.145 deg,	R =   -83.814 deg
};
P[30]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   485.092  mm,	Y =   697.776  mm,	Z =  1095.423  mm,
	W =  -155.122 deg,	P =    37.447 deg,	R =   -88.151 deg
};
P[31]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   497.048  mm,	Y =   700.153  mm,	Z =  1120.337  mm,
	W =  -146.617 deg,	P =    39.004 deg,	R =   -82.052 deg
};
P[32]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   522.346  mm,	Y =   701.721  mm,	Z =  1207.124  mm,
	W =  -135.577 deg,	P =    36.358 deg,	R =   -74.367 deg
};
P[33]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   727.411  mm,	Y =   660.859  mm,	Z =  1274.217  mm,
	W =  -140.488 deg,	P =    25.921 deg,	R =   -77.002 deg
};
P[34]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   784.170  mm,	Y =   503.256  mm,	Z =  1433.408  mm,
	W =  -122.735 deg,	P =    18.870 deg,	R =   -69.463 deg
};
P[35]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   411.224  mm,	Y =   502.374  mm,	Z =  1587.710  mm,
	W =  -108.283 deg,	P =    19.481 deg,	R =   -30.756 deg
};
P[61]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   966.140  mm,	Y =   626.276  mm,	Z =  1931.518  mm,
	W =  -127.354 deg,	P =   -31.439 deg,	R =   -22.655 deg
};
P[62]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   464.681  mm,	Y =   396.358  mm,	Z =  1524.787  mm,
	W =  -130.516 deg,	P =      .260 deg,	R =   -26.475 deg
};
P[63]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   440.037  mm,	Y =   400.793  mm,	Z =  1516.686  mm,
	W =  -135.001 deg,	P =    23.259 deg,	R =   -47.801 deg
};
P[64]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   329.949  mm,	Y =   466.981  mm,	Z =  1527.012  mm,
	W =  -148.315 deg,	P =    40.804 deg,	R =   -72.284 deg
};
P[65]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   308.184  mm,	Y =   743.017  mm,	Z =  1795.618  mm,
	W =   150.214 deg,	P =    41.784 deg,	R =  -145.667 deg
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
	X =  1099.281  mm,	Y =   844.377  mm,	Z =  1473.745  mm,
	W =  -170.810 deg,	P =    35.192 deg,	R =  -104.312 deg
};
P[78]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   726.845  mm,	Y =   467.749  mm,	Z =  1620.803  mm,
	W =  -118.313 deg,	P =    26.759 deg,	R =   -48.419 deg
};
P[79]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   716.642  mm,	Y =   356.764  mm,	Z =  1576.053  mm,
	W =  -115.382 deg,	P =    17.116 deg,	R =   -47.146 deg
};
P[80]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   869.144  mm,	Y =   505.266  mm,	Z =  1487.938  mm,
	W =  -121.646 deg,	P =    23.668 deg,	R =   -48.698 deg
};
P[81]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   683.922  mm,	Y =   541.306  mm,	Z =  1339.896  mm,
	W =  -124.774 deg,	P =    34.359 deg,	R =   -56.073 deg
};
/END
