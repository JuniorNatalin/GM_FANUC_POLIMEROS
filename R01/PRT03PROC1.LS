/PROG  PRT03PROC1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "DEGATE 335";
PROG_SIZE	= 3719;
CREATE		= DATE 19-03-05  TIME 13:30:30;
MODIFIED	= DATE 21-06-09  TIME 22:03:22;
FILE_NAME	= PRT01PRO;
VERSION		= 0;
LINE_COUNT	= 82;
MEMORY_SIZE	= 4159;
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
   1:  !TOOL 03 DEGATE ;
   2:   ;
   3:  IF DO[66:OFF]=ON,JMP LBL[99] ;
   4:  SET SEGMENT(22) ;
   5:   ;
   6:  ENTER I-ZONE(1) ;
   7:  ENTER I-ZONE(2) ;
   8:   ;
   9:  Set MH Tool(2) ;
  10:   ;
  11:  UTOOL_NUM=3 ;
  12:  UFRAME_NUM=0 ;
  13:   ;
  14:  !Request Knife Repo ;
  15:  CALL REQ_KNIFE_AT_WK    ;
  16:   ;
  17:J P[1] 100% CNT100    ;
  18:J P[2] 100% CNT100    ;
  19:J P[3] 100% CNT100    ;
  20:J P[4] 100% CNT100    ;
  21:   ;
  22:L P[5] 2000mm/sec CNT30    ;
  23:   ;
  24:  !Swipe1 ;
  25:L P[6] 500mm/sec FINE    ;
  26:L P[7] 500mm/sec FINE    ;
  27:L P[8] 500mm/sec FINE    ;
  28:  //L P[9] 500mm/sec FINE    ;
  29:   ;
  30:L P[35] 2000mm/sec CNT100    ;
  31:L P[10] 2000mm/sec CNT50    ;
  32:L P[11] 2000mm/sec CNT50    ;
  33:L P[12] 2000mm/sec CNT20    ;
  34:   ;
  35:  !Swipe2 ;
  36:L P[13] 300mm/sec FINE    ;
  37:L P[14] 500mm/sec FINE    ;
  38:L P[36] 500mm/sec FINE    ;
  39:L P[37] 500mm/sec FINE    ;
  40:   ;
  41:L P[38] 2000mm/sec CNT50    ;
  42:L P[39] 2000mm/sec CNT100    ;
  43:L P[15] 2000mm/sec CNT100    ;
  44:L P[31] 2000mm/sec CNT100    ;
  45:   ;
  46:J P[16] 100% CNT100    ;
  47:J P[17] 100% CNT100    ;
  48:J P[18] 100% CNT100    ;
  49:J P[19] 100% CNT100    ;
  50:J P[45] 100% CNT100    ;
  51:   ;
  52:L P[21] 2000mm/sec CNT100    ;
  53:L P[22] 2000mm/sec CNT30    ;
  54:L P[20] 2000mm/sec CNT30    ;
  55:  !Swipe3 ;
  56:L P[23] 500mm/sec FINE    ;
  57:L P[24] 500mm/sec FINE    ;
  58:L P[40] 500mm/sec FINE    ;
  59:   ;
  60:L P[41] 2000mm/sec CNT50    ;
  61:L P[25] 2000mm/sec CNT50    ;
  62:L P[26] 2000mm/sec CNT50    ;
  63:L P[27] 2000mm/sec CNT50    ;
  64:L P[28] 2000mm/sec CNT30    ;
  65:   ;
  66:  !Swipe4 ;
  67:L P[29] 300mm/sec FINE    ;
  68:L P[30] 500mm/sec FINE    ;
  69:L P[42] 500mm/sec FINE    ;
  70:L P[46] 500mm/sec FINE    ;
  71:L P[47] 500mm/sec FINE    ;
  72:   ;
  73:L P[43] 2000mm/sec CNT50    ;
  74:L P[44] 2000mm/sec CNT50    ;
  75:L P[32] 2000mm/sec CNT100    ;
  76:   ;
  77:J P[33] 100% CNT100    ;
  78:J P[34] 100% CNT100    ;
  79:J P[1] 100% CNT100    ;
  80:   ;
  81:  LBL[99:PROGRAM END] ;
  82:  END ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  -949.152  mm,	Y = -2779.042  mm,	Z =   841.608  mm,
	W =   177.002 deg,	P =     4.065 deg,	R =   -88.599 deg
};
P[2]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X = -2045.547  mm,	Y = -3694.615  mm,	Z =   456.455  mm,
	W =   160.591 deg,	P =    14.683 deg,	R =   -74.986 deg
};
P[3]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X = -2227.944  mm,	Y = -3694.617  mm,	Z =   182.852  mm,
	W =   146.814 deg,	P =    14.683 deg,	R =   -74.986 deg
};
P[4]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X = -2227.944  mm,	Y = -3694.617  mm,	Z =    19.652  mm,
	W =   146.814 deg,	P =    14.683 deg,	R =   -74.986 deg
};
P[5]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X = -2017.153  mm,	Y = -3599.478  mm,	Z =  -255.658  mm,
	W =   149.580 deg,	P =    14.682 deg,	R =   -74.986 deg
};
P[6]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X = -2025.453  mm,	Y = -3548.293  mm,	Z =  -287.870  mm,
	W =   149.580 deg,	P =    14.682 deg,	R =   -74.985 deg
};
P[7]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X = -1968.912  mm,	Y = -3543.049  mm,	Z =  -287.996  mm,
	W =   149.579 deg,	P =    14.682 deg,	R =   -74.985 deg
};
P[8]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X = -1976.571  mm,	Y = -3550.345  mm,	Z =  -281.293  mm,
	W =   149.581 deg,	P =    14.684 deg,	R =   -74.985 deg
};
P[9]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X = -1983.949  mm,	Y = -3537.342  mm,	Z =  -288.827  mm,
	W =   149.580 deg,	P =    14.682 deg,	R =   -74.985 deg
};
P[10]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X = -2138.603  mm,	Y = -3605.667  mm,	Z =  -400.698  mm,
	W =   153.450 deg,	P =    29.154 deg,	R =   -52.511 deg
};
P[11]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X = -2138.604  mm,	Y = -3576.867  mm,	Z =  -460.698  mm,
	W =   153.450 deg,	P =    29.154 deg,	R =   -52.511 deg
};
P[12]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X = -2123.999  mm,	Y = -3500.942  mm,	Z =  -504.522  mm,
	W =   153.450 deg,	P =    29.153 deg,	R =   -52.510 deg
};
P[13]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X = -2135.040  mm,	Y = -3500.462  mm,	Z =  -520.841  mm,
	W =   153.450 deg,	P =    29.153 deg,	R =   -52.510 deg
};
P[14]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X = -2116.315  mm,	Y = -3500.148  mm,	Z =  -515.501  mm,
	W =   153.450 deg,	P =    29.153 deg,	R =   -52.510 deg
};
P[15]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X = -2085.804  mm,	Y = -3625.382  mm,	Z =  -495.979  mm,
	W =   153.450 deg,	P =    29.154 deg,	R =   -52.511 deg
};
P[16]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X = -2649.341  mm,	Y = -2770.465  mm,	Z =   512.209  mm,
	W =   154.915 deg,	P =     9.510 deg,	R =  -105.051 deg
};
P[17]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X = -2760.415  mm,	Y = -2549.493  mm,	Z =   333.831  mm,
	W =   158.719 deg,	P =     6.224 deg,	R =  -120.598 deg
};
P[18]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X = -1702.519  mm,	Y = -2555.850  mm,	Z =  -307.951  mm,
	W =  -138.748 deg,	P =    19.556 deg,	R =   163.130 deg
};
P[19]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X = -1232.515  mm,	Y = -3077.494  mm,	Z =  -432.071  mm,
	W =  -140.358 deg,	P =    49.432 deg,	R =   121.697 deg
};
P[20]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, -1',
	X = -1094.925  mm,	Y = -2029.912  mm,	Z = -1091.153  mm,
	W =  -142.326 deg,	P =     7.801 deg,	R =    92.218 deg
};
P[21]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, -1',
	X = -1120.869  mm,	Y = -1875.470  mm,	Z = -1056.465  mm,
	W =  -142.675 deg,	P =     7.697 deg,	R =    92.139 deg
};
P[22]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, -1',
	X = -1113.553  mm,	Y = -1982.912  mm,	Z = -1035.125  mm,
	W =  -142.674 deg,	P =     7.698 deg,	R =    92.139 deg
};
P[23]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, -1',
	X = -1064.190  mm,	Y = -2030.266  mm,	Z = -1085.392  mm,
	W =  -142.314 deg,	P =     7.804 deg,	R =    92.220 deg
};
P[24]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, -1',
	X = -1059.027  mm,	Y = -2029.240  mm,	Z = -1086.054  mm,
	W =  -142.314 deg,	P =     7.804 deg,	R =    92.220 deg
};
P[25]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, -1',
	X = -1033.748  mm,	Y = -1919.558  mm,	Z = -1052.597  mm,
	W =  -142.674 deg,	P =     7.698 deg,	R =    92.139 deg
};
P[26]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, -1',
	X = -1279.664  mm,	Y = -2450.543  mm,	Z =  -838.528  mm,
	W =  -144.195 deg,	P =    12.145 deg,	R =    76.973 deg
};
P[27]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, -1',
	X = -1279.664  mm,	Y = -2450.543  mm,	Z = -1013.729  mm,
	W =  -144.195 deg,	P =    12.145 deg,	R =    76.973 deg
};
P[28]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, -1',
	X = -1320.996  mm,	Y = -2628.153  mm,	Z = -1196.444  mm,
	W =  -142.523 deg,	P =    21.528 deg,	R =    75.026 deg
};
P[29]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, -1',
	X = -1334.226  mm,	Y = -2698.559  mm,	Z = -1242.389  mm,
	W =  -142.059 deg,	P =    22.844 deg,	R =    73.212 deg
};
P[30]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, -1',
	X = -1315.177  mm,	Y = -2694.414  mm,	Z = -1233.286  mm,
	W =  -142.059 deg,	P =    22.844 deg,	R =    73.212 deg
};
P[31]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X = -2039.708  mm,	Y = -3543.615  mm,	Z =   311.029  mm,
	W =   153.450 deg,	P =    29.154 deg,	R =   -52.511 deg
};
P[32]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, -1',
	X = -1189.769  mm,	Y = -2475.443  mm,	Z =  -979.647  mm,
	W =  -144.196 deg,	P =    12.145 deg,	R =    73.721 deg
};
P[33]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X = -1189.771  mm,	Y = -1803.446  mm,	Z =   -97.646  mm,
	W =  -146.346 deg,	P =    23.882 deg,	R =    79.770 deg
};
P[34]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X = -1543.904  mm,	Y = -2561.611  mm,	Z =   564.094  mm,
	W =  -102.046 deg,	P =    16.440 deg,	R =   167.879 deg
};
P[35]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X = -1961.272  mm,	Y = -3569.422  mm,	Z =  -274.553  mm,
	W =   149.580 deg,	P =    14.682 deg,	R =   -74.985 deg
};
P[36]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X = -2107.198  mm,	Y = -3498.707  mm,	Z =  -515.501  mm,
	W =   153.450 deg,	P =    29.152 deg,	R =   -52.510 deg
};
P[37]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X = -2093.914  mm,	Y = -3496.683  mm,	Z =  -526.633  mm,
	W =   153.761 deg,	P =    29.427 deg,	R =   -51.875 deg
};
P[38]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X = -2085.667  mm,	Y = -3509.307  mm,	Z =  -514.259  mm,
	W =   153.761 deg,	P =    29.427 deg,	R =   -51.875 deg
};
P[39]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X = -2064.002  mm,	Y = -3527.385  mm,	Z =  -498.162  mm,
	W =   153.761 deg,	P =    29.427 deg,	R =   -51.875 deg
};
P[40]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, -1',
	X = -1041.315  mm,	Y = -2022.425  mm,	Z = -1096.878  mm,
	W =  -142.314 deg,	P =     7.804 deg,	R =    92.220 deg
};
P[41]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, -1',
	X = -1027.696  mm,	Y = -1997.306  mm,	Z = -1079.256  mm,
	W =  -142.314 deg,	P =     7.804 deg,	R =    92.220 deg
};
P[42]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, -1',
	X = -1310.920  mm,	Y = -2692.083  mm,	Z = -1238.512  mm,
	W =  -142.059 deg,	P =    22.844 deg,	R =    73.212 deg
};
P[43]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, -1',
	X = -1224.342  mm,	Y = -2426.427  mm,	Z = -1116.734  mm,
	W =  -144.198 deg,	P =    12.155 deg,	R =    76.956 deg
};
P[44]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, -1',
	X = -1224.343  mm,	Y = -2388.269  mm,	Z = -1104.735  mm,
	W =  -144.198 deg,	P =    12.155 deg,	R =    76.956 deg
};
P[45]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X = -1139.020  mm,	Y = -1998.831  mm,	Z =  -850.945  mm,
	W =  -142.674 deg,	P =     7.699 deg,	R =    92.139 deg
};
P[46]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, -1',
	X = -1294.896  mm,	Y = -2674.810  mm,	Z = -1248.343  mm,
	W =  -142.059 deg,	P =    22.844 deg,	R =    73.212 deg
};
P[47]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, -1',
	X = -1288.347  mm,	Y = -2671.521  mm,	Z = -1248.343  mm,
	W =  -142.059 deg,	P =    22.844 deg,	R =    73.212 deg
};
/END
