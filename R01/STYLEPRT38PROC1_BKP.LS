/PROG  STYLEPRT38PROC1_BKP
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "DEGATE 373";
PROG_SIZE	= 3483;
CREATE		= DATE 21-05-19  TIME 09:45:42;
MODIFIED	= DATE 21-05-19  TIME 09:45:42;
FILE_NAME	= PRT38PRO;
VERSION		= 0;
LINE_COUNT	= 88;
MEMORY_SIZE	= 3907;
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
   5:  !TOOL 02 DEGATE ;
   6:   ;
   7:  IF DO[66:OFF]=ON,JMP LBL[99] ;
   8:  SET SEGMENT(22) ;
   9:   ;
  10:  Set MH Tool(7) ;
  11:   ;
  12:  UTOOL_NUM=7 ;
  13:  UFRAME_NUM=0 ;
  14:  PAYLOAD[7] ;
  15:  ENTER I-ZONE(1) ;
  16:  ENTER I-ZONE(2) ;
  17:   ;
  18:  !Request Knife Repo ;
  19:  CALL REQ_KNIFE_AT_WK    ;
  20:   ;
  21:J P[1] 100% CNT100    ;
  22:J P[2] 100% CNT100    ;
  23:   ;
  24:L P[3] 2000mm/sec CNT50    ;
  25:L P[4] 2000mm/sec FINE    ;
  26:   ;
  27:  !corte 1 ;
  28:L P[5] 1000mm/sec FINE    ;
  29:L P[6] 300mm/sec FINE    ;
  30:L P[7] 1000mm/sec FINE    ;
  31:  !fim ;
  32:   ;
  33:L P[8] 2000mm/sec CNT50    ;
  34:   ;
  35:  !corte 2 meio ;
  36:L P[9] 2000mm/sec FINE    ;
  37:L P[10] 800mm/sec FINE    ;
  38:L P[11] 800mm/sec FINE    ;
  39:L P[12] 800mm/sec FINE    ;
  40:L P[13] 1500mm/sec FINE    ;
  41:  !fim ;
  42:   ;
  43:L P[14] 2000mm/sec CNT100    ;
  44:   ;
  45:  !corte 3 ;
  46:L P[15] 2000mm/sec FINE    ;
  47:L P[16] 1000mm/sec FINE    ;
  48:L P[17] 1000mm/sec FINE    ;
  49:L P[18] 1000mm/sec FINE    ;
  50:  !fim ;
  51:   ;
  52:L P[19] 2000mm/sec CNT50    ;
  53:L P[20] 2000mm/sec CNT100    ;
  54:   ;
  55:  !orelha 1 ;
  56:L P[21] 1000mm/sec FINE    ;
  57:L P[22] 800mm/sec FINE    ;
  58:L P[23] 800mm/sec FINE    ;
  59:L P[24] 800mm/sec FINE    ;
  60:L P[25] 800mm/sec FINE    ;
  61:L P[26] 1000mm/sec FINE    ;
  62:  !fim ;
  63:   ;
  64:L P[27] 2000mm/sec CNT80    ;
  65:L P[28] 2000mm/sec CNT100    ;
  66:J P[29] 100% CNT100    ;
  67:J P[30] 100% CNT100    ;
  68:L P[31] 2000mm/sec CNT100    ;
  69:L P[32] 2000mm/sec CNT80    ;
  70:   ;
  71:  !orelha 2 ;
  72:L P[33] 2000mm/sec FINE    ;
  73:L P[34] 800mm/sec FINE    ;
  74:L P[35] 800mm/sec FINE    ;
  75:L P[36] 800mm/sec FINE    ;
  76:  !fim ;
  77:   ;
  78:L P[37] 2000mm/sec FINE    ;
  79:J P[38] 100% CNT100    ;
  80:L P[39] 2000mm/sec FINE    ;
  81:   ;
  82:  EXIT I-ZONE(1) ;
  83:  EXIT I-ZONE(2) ;
  84:   ;
  85:  LBL[99:PROGRAM END] ;
  86:  END ;
  87:  CALL REQ_KNIFE_AT_HM    ;
  88:   ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =   663.381  mm,	Y = -2475.163  mm,	Z =  1063.155  mm,
	W =  -175.130 deg,	P =     -.502 deg,	R =   -86.319 deg
};
P[2]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1179.115  mm,	Y = -2531.685  mm,	Z =   624.441  mm,
	W =   161.259 deg,	P =     4.530 deg,	R =   -82.257 deg
};
P[3]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -2032.460  mm,	Y = -2605.880  mm,	Z =   522.011  mm,
	W =   155.542 deg,	P =    -1.699 deg,	R =   -77.113 deg
};
P[4]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -2082.456  mm,	Y = -2664.453  mm,	Z =   443.958  mm,
	W =   155.300 deg,	P =    -7.391 deg,	R =   -74.726 deg
};
P[5]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -2063.891  mm,	Y = -2684.664  mm,	Z =   388.721  mm,
	W =   155.042 deg,	P =    -5.884 deg,	R =   -71.743 deg
};
P[6]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -2027.832  mm,	Y = -2676.533  mm,	Z =   371.913  mm,
	W =   155.042 deg,	P =    -5.884 deg,	R =   -71.740 deg
};
P[7]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -2021.313  mm,	Y = -2648.626  mm,	Z =   362.403  mm,
	W =   155.042 deg,	P =    -5.884 deg,	R =   -71.740 deg
};
P[8]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1953.632  mm,	Y = -2565.961  mm,	Z =   314.308  mm,
	W =   155.042 deg,	P =    -5.884 deg,	R =   -71.740 deg
};
P[9]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1806.828  mm,	Y = -2584.307  mm,	Z =   263.782  mm,
	W =   155.042 deg,	P =    -5.885 deg,	R =   -71.739 deg
};
P[10]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1783.842  mm,	Y = -2606.969  mm,	Z =   253.363  mm,
	W =   154.973 deg,	P =    -5.567 deg,	R =   -70.984 deg
};
P[11]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1735.050  mm,	Y = -2594.794  mm,	Z =   229.514  mm,
	W =   154.973 deg,	P =    -5.568 deg,	R =   -71.053 deg
};
P[12]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1743.074  mm,	Y = -2582.059  mm,	Z =   220.334  mm,
	W =   154.801 deg,	P =    -4.662 deg,	R =   -69.116 deg
};
P[13]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1751.292  mm,	Y = -2568.618  mm,	Z =   220.433  mm,
	W =   154.801 deg,	P =    -4.662 deg,	R =   -69.116 deg
};
P[14]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1654.064  mm,	Y = -2472.555  mm,	Z =   156.887  mm,
	W =   154.801 deg,	P =    -4.662 deg,	R =   -69.116 deg
};
P[15]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1544.679  mm,	Y = -2462.373  mm,	Z =   109.332  mm,
	W =   154.590 deg,	P =    -3.215 deg,	R =   -66.047 deg
};
P[16]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1543.790  mm,	Y = -2480.105  mm,	Z =    75.383  mm,
	W =   154.569 deg,	P =    -3.036 deg,	R =   -65.609 deg
};
P[17]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1518.555  mm,	Y = -2468.976  mm,	Z =    61.598  mm,
	W =   154.569 deg,	P =    -3.036 deg,	R =   -65.669 deg
};
P[18]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1503.422  mm,	Y = -2460.410  mm,	Z =    49.085  mm,
	W =   154.561 deg,	P =    -2.959 deg,	R =   -65.508 deg
};
P[19]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1257.677  mm,	Y = -2604.884  mm,	Z =   -49.672  mm,
	W =   155.239 deg,	P =     8.851 deg,	R =   -81.945 deg
};
P[20]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1140.818  mm,	Y = -2990.850  mm,	Z =   204.635  mm,
	W =   169.058 deg,	P =    10.904 deg,	R =   -77.590 deg
};
P[21]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1254.252  mm,	Y = -3030.211  mm,	Z =   161.475  mm,
	W =  -175.261 deg,	P =     7.312 deg,	R =   -76.891 deg
};
P[22]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1334.628  mm,	Y = -2751.728  mm,	Z =   395.174  mm,
	W =  -163.796 deg,	P =   -17.976 deg,	R =   -75.098 deg
};
P[23]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1342.527  mm,	Y = -2747.249  mm,	Z =   414.774  mm,
	W =  -161.497 deg,	P =   -17.976 deg,	R =   -75.098 deg
};
P[24]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1294.823  mm,	Y = -2746.102  mm,	Z =   407.807  mm,
	W =  -161.497 deg,	P =   -17.976 deg,	R =   -75.098 deg
};
P[25]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1351.740  mm,	Y = -2749.554  mm,	Z =   442.963  mm,
	W =  -158.462 deg,	P =   -16.013 deg,	R =   -74.349 deg
};
P[26]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1263.008  mm,	Y = -2882.500  mm,	Z =   364.634  mm,
	W =  -165.085 deg,	P =   -13.886 deg,	R =   -79.366 deg
};
P[27]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1223.514  mm,	Y = -3075.358  mm,	Z =   262.699  mm,
	W =  -167.847 deg,	P =     3.858 deg,	R =   -80.526 deg
};
P[28]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =  -547.378  mm,	Y = -3118.756  mm,	Z =   315.556  mm,
	W =  -166.670 deg,	P =    11.334 deg,	R =   -77.440 deg
};
P[29]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1042.189  mm,	Y = -3010.085  mm,	Z =   181.763  mm,
	W =   171.061 deg,	P =    46.733 deg,	R =    86.510 deg
};
P[30]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 1',
	X = -1819.322  mm,	Y = -2516.099  mm,	Z =   300.470  mm,
	W =  -166.267 deg,	P =    32.181 deg,	R =    91.063 deg
};
P[31]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1676.898  mm,	Y = -2481.638  mm,	Z =   615.042  mm,
	W =  -169.783 deg,	P =     8.889 deg,	R =   103.933 deg
};
P[32]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1640.262  mm,	Y = -2320.092  mm,	Z =   588.493  mm,
	W =  -172.946 deg,	P =     4.953 deg,	R =   102.842 deg
};
P[33]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 1',
	X = -1846.139  mm,	Y = -2305.011  mm,	Z =   191.819  mm,
	W =  -172.743 deg,	P =    -9.998 deg,	R =   101.107 deg
};
P[34]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 1',
	X = -1730.482  mm,	Y = -2464.445  mm,	Z =   156.359  mm,
	W =  -167.707 deg,	P =   -17.756 deg,	R =    98.184 deg
};
P[35]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 1',
	X = -1708.928  mm,	Y = -2450.688  mm,	Z =   122.182  mm,
	W =  -167.532 deg,	P =   -16.770 deg,	R =    97.560 deg
};
P[36]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 1',
	X = -1706.309  mm,	Y = -2446.252  mm,	Z =   111.952  mm,
	W =  -167.458 deg,	P =   -15.850 deg,	R =    97.259 deg
};
P[37]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 1',
	X = -1740.100  mm,	Y = -2401.264  mm,	Z =   201.749  mm,
	W =  -172.652 deg,	P =   -16.910 deg,	R =   100.272 deg
};
P[38]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =  -230.483  mm,	Y = -1635.199  mm,	Z =   162.064  mm,
	W =  -174.222 deg,	P =     5.061 deg,	R =    88.444 deg
};
P[39]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =  -878.484  mm,	Y = -1695.199  mm,	Z =   162.063  mm,
	W =  -118.858 deg,	P =     4.162 deg,	R =    93.275 deg
};
/END
