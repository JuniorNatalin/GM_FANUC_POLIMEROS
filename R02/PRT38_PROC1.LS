/PROG  PRT38_PROC1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "373";
PROG_SIZE	= 3141;
CREATE		= DATE 22-04-12  TIME 17:08:36;
MODIFIED	= DATE 22-04-12  TIME 17:08:36;
FILE_NAME	= PRT38_PR;
VERSION		= 0;
LINE_COUNT	= 61;
MEMORY_SIZE	= 3529;
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
   2:   ;
   3:   ;
   4:  IF DO[66]=ON,JMP LBL[900] ;
   5:  SET SEGMENT(22) ;
   6:   ;
   7:  UTOOL_NUM=2 ;
   8:  UFRAME_NUM=0 ;
   9:  PAYLOAD[3] ;
  10:   ;
  11:J P[1] 100% CNT100    ;
  12:J P[2] 100% CNT50    ;
  13:J P[3] 100% CNT50    ;
  14:J P[4] 100% CNT50    ;
  15:J P[5] 100% CNT50    ;
  16:   ;
  17:L P[34] 1300mm/sec CNT50    ;
  18:L P[6] 1300mm/sec CNT50    ;
  19:L P[7] 1500mm/sec CNT50    ;
  20:L P[8] 1500mm/sec CNT50    ;
  21:L P[10] 1500mm/sec CNT50    ;
  22:L P[12] 1500mm/sec CNT50    ;
  23:L P[13] 1000mm/sec CNT50    ;
  24:L P[14] 1500mm/sec CNT50    ;
  25:L P[15] 1500mm/sec CNT50    ;
  26:   ;
  27:L P[17] 2000mm/sec CNT50    ;
  28:L P[18] 2000mm/sec CNT50    ;
  29:L P[19] 2000mm/sec CNT50    ;
  30:L P[20] 2000mm/sec CNT50    ;
  31:L P[21] 2000mm/sec CNT50    ;
  32:L P[22] 2000mm/sec CNT50    ;
  33:J P[23] 100% CNT50    ;
  34:L P[33] 2000mm/sec CNT50    ;
  35:L P[24] 2000mm/sec CNT50    ;
  36:L P[25] 2000mm/sec CNT50    ;
  37:L P[26] 2000mm/sec CNT50    ;
  38:L P[27] 2000mm/sec CNT50    ;
  39:L P[58] 1800mm/sec CNT50    ;
  40:L P[28] 2000mm/sec CNT50    ;
  41:L P[29] 2000mm/sec CNT50    ;
  42:L P[30] 2000mm/sec CNT50    ;
  43:L P[32] 2000mm/sec CNT50    ;
  44:L P[9] 2000mm/sec CNT50    ;
  45:L P[11] 2000mm/sec CNT50    ;
  46:L P[16] 2000mm/sec CNT50    ;
  47:L P[31] 1500mm/sec CNT100    ;
  48:L P[43] 2000mm/sec CNT50    ;
  49:L P[45] 2000mm/sec CNT50    ;
  50:L P[50] 2000mm/sec CNT50    ;
  51:L P[59] 2000mm/sec CNT50    ;
  52:J P[60] 100% CNT50    ;
  53:   ;
  54:   ;
  55:   ;
  56:   ;
  57:   ;
  58:J P[57] 80% CNT100    ;
  59:   ;
  60:  LBL[900:PROGRAM END] ;
  61:  END ;
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
	X =   446.904  mm,	Y =   425.185  mm,	Z =  1552.253  mm,
	W =  -121.836 deg,	P =    36.672 deg,	R =   -57.815 deg
};
P[4]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   207.139  mm,	Y =   517.927  mm,	Z =  1656.383  mm,
	W =  -146.898 deg,	P =    52.496 deg,	R =   -89.818 deg
};
P[5]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   108.080  mm,	Y =   550.881  mm,	Z =  1999.049  mm,
	W =   160.215 deg,	P =    55.461 deg,	R =  -133.368 deg
};
P[6]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   122.293  mm,	Y =   888.512  mm,	Z =  1880.823  mm,
	W =   132.393 deg,	P =    43.499 deg,	R =  -165.338 deg
};
P[7]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   123.041  mm,	Y =   797.646  mm,	Z =  1868.949  mm,
	W =   139.831 deg,	P =    36.231 deg,	R =  -156.023 deg
};
P[8]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   -70.159  mm,	Y =   682.446  mm,	Z =  1860.548  mm,
	W =   139.406 deg,	P =    36.382 deg,	R =  -156.275 deg
};
P[9]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1085.301  mm,	Y =   601.004  mm,	Z =  1667.953  mm,
	W =  -130.026 deg,	P =   -10.818 deg,	R =   -23.591 deg
};
P[10]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =    96.186  mm,	Y =   944.967  mm,	Z =  1767.239  mm,
	W =   140.153 deg,	P =    29.820 deg,	R =  -167.060 deg
};
P[11]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   909.480  mm,	Y =   553.782  mm,	Z =  1843.243  mm,
	W =  -130.025 deg,	P =   -10.818 deg,	R =   -23.591 deg
};
P[12]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   363.040  mm,	Y =  1034.045  mm,	Z =  1835.350  mm,
	W =   140.153 deg,	P =    29.820 deg,	R =  -167.060 deg
};
P[13]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   607.840  mm,	Y =  1137.244  mm,	Z =  1564.150  mm,
	W =   140.153 deg,	P =    29.819 deg,	R =  -167.060 deg
};
P[14]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   468.640  mm,	Y =  1019.644  mm,	Z =  1711.750  mm,
	W =   140.153 deg,	P =    29.820 deg,	R =  -167.060 deg
};
P[15]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   558.640  mm,	Y =   965.644  mm,	Z =  1616.949  mm,
	W =   140.153 deg,	P =    29.820 deg,	R =  -167.060 deg
};
P[16]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1005.044  mm,	Y =   721.883  mm,	Z =  1711.302  mm,
	W =  -130.025 deg,	P =   -10.818 deg,	R =   -23.592 deg
};
P[17]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   583.839  mm,	Y =   780.845  mm,	Z =  1475.349  mm,
	W =   140.153 deg,	P =    29.819 deg,	R =  -167.061 deg
};
P[18]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   373.840  mm,	Y =   960.844  mm,	Z =  1376.949  mm,
	W =   140.153 deg,	P =    29.819 deg,	R =  -167.061 deg
};
P[19]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   161.440  mm,	Y =   965.645  mm,	Z =  1652.950  mm,
	W =   140.153 deg,	P =    29.819 deg,	R =  -167.061 deg
};
P[20]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   251.441  mm,	Y =   965.646  mm,	Z =  1418.949  mm,
	W =   140.153 deg,	P =    29.819 deg,	R =  -167.061 deg
};
P[21]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   702.557  mm,	Y =   882.677  mm,	Z =  1537.309  mm,
	W =   138.692 deg,	P =    24.749 deg,	R =  -174.169 deg
};
P[22]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   869.556  mm,	Y =   737.898  mm,	Z =  1328.959  mm,
	W =   142.214 deg,	P =    18.717 deg,	R =  -175.527 deg
};
P[23]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   526.540  mm,	Y =   277.365  mm,	Z =  1602.332  mm,
	W =  -127.821 deg,	P =     9.812 deg,	R =   -38.987 deg
};
P[24]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   585.997  mm,	Y =   457.201  mm,	Z =  1630.383  mm,
	W =  -114.637 deg,	P =    13.999 deg,	R =   -40.006 deg
};
P[25]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1303.308  mm,	Y =   264.806  mm,	Z =  1922.590  mm,
	W =  -127.821 deg,	P =     9.812 deg,	R =   -39.845 deg
};
P[26]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1395.032  mm,	Y =   159.703  mm,	Z =  1828.524  mm,
	W =  -127.821 deg,	P =     9.812 deg,	R =   -39.845 deg
};
P[27]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1336.668  mm,	Y =   342.573  mm,	Z =  1572.537  mm,
	W =  -127.821 deg,	P =     9.812 deg,	R =   -39.845 deg
};
P[28]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1290.794  mm,	Y =   404.581  mm,	Z =  1772.615  mm,
	W =  -129.184 deg,	P =     1.487 deg,	R =   -33.438 deg
};
P[29]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1216.057  mm,	Y =   508.237  mm,	Z =  1831.189  mm,
	W =  -130.026 deg,	P =   -10.817 deg,	R =   -23.591 deg
};
P[30]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1020.909  mm,	Y =   676.881  mm,	Z =  1681.305  mm,
	W =  -130.026 deg,	P =   -10.818 deg,	R =   -23.591 deg
};
P[31]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1035.322  mm,	Y =   680.019  mm,	Z =  1482.287  mm,
	W =  -130.025 deg,	P =   -10.819 deg,	R =   -23.593 deg
};
P[32]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1021.987  mm,	Y =   459.687  mm,	Z =  1675.631  mm,
	W =  -130.026 deg,	P =   -10.817 deg,	R =   -23.591 deg
};
P[33]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   755.030  mm,	Y =   519.028  mm,	Z =  1938.770  mm,
	W =  -127.821 deg,	P =     9.812 deg,	R =   -39.845 deg
};
P[34]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =    49.292  mm,	Y =   882.549  mm,	Z =  1796.384  mm,
	W =   119.613 deg,	P =    52.822 deg,	R =   174.355 deg
};
P[43]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1083.250  mm,	Y =   400.966  mm,	Z =  1402.433  mm,
	W =  -130.025 deg,	P =   -10.818 deg,	R =   -23.592 deg
};
P[45]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1222.460  mm,	Y =   577.161  mm,	Z =  1471.699  mm,
	W =  -130.025 deg,	P =   -10.818 deg,	R =   -23.592 deg
};
P[50]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1152.213  mm,	Y =   431.286  mm,	Z =  1390.005  mm,
	W =  -131.708 deg,	P =   -24.880 deg,	R =   -39.247 deg
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
	X =  1272.167  mm,	Y =   272.982  mm,	Z =  1701.347  mm,
	W =  -127.187 deg,	P =     1.487 deg,	R =   -33.438 deg
};
P[59]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1150.253  mm,	Y =   142.157  mm,	Z =  1195.659  mm,
	W =  -131.708 deg,	P =   -24.880 deg,	R =   -39.247 deg
};
P[60]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   513.087  mm,	Y =   413.938  mm,	Z =  1850.712  mm,
	W =  -129.716 deg,	P =    -6.705 deg,	R =   -26.547 deg
};
/END
