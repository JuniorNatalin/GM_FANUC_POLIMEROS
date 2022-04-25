/PROG  S18PROC1_REAR_UPPER
/ATTR
OWNER		= simulati;
COMMENT		= "s18proc1_Rear_Up";
PROG_SIZE	= 5570;
CREATE		= DATE 01-11-04  TIME 19:12:28;
MODIFIED	= DATE 22-01-22  TIME 10:58:52;
FILE_NAME	= S18PROC1;
VERSION		= 0;
LINE_COUNT	= 103;
MEMORY_SIZE	= 5914;
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
  16:  UTOOL_NUM=2 ;
  17:J P[1] 100% FINE    ;
  18:J P[2] 100% FINE    ;
  19:J P[3] 100% FINE    ;
  20:J P[4] 100% FINE    ;
  21:  UFRAME_NUM=1 ;
  22:J P[5] 100% FINE    ;
  23:J P[6] 100% FINE    ;
  24:J P[7] 100% FINE    ;
  25:J P[8] 100% FINE    ;
  26:J P[9] 100% FINE    ;
  27:J P[10] 100% FINE    ;
  28:J P[11] 100% FINE    ;
  29:  UFRAME_NUM=0 ;
  30:J P[12] 100% FINE    ;
  31:J P[13] 100% FINE    ;
  32:  UFRAME_NUM=1 ;
  33:J P[14] 100% FINE    ;
  34:J P[15] 100% FINE    ;
  35:J P[16] 100% FINE    ;
  36:J P[17] 100% FINE    ;
  37:J P[18] 100% FINE    ;
  38:J P[19] 100% FINE    ;
  39:J P[20] 100% FINE    ;
  40:  UFRAME_NUM=0 ;
  41:J P[21] 100% FINE    ;
  42:J P[22] 100% FINE    ;
  43:L P[23] 2000mm/sec FINE    ;
  44:  UFRAME_NUM=1 ;
  45:J P[24] 100% FINE    ;
  46:J P[25] 100% FINE    ;
  47:J P[26] 100% FINE    ;
  48:J P[27] 100% FINE    ;
  49:J P[28] 100% FINE    ;
  50:J P[29] 100% FINE    ;
  51:  UFRAME_NUM=0 ;
  52:J P[30] 100% FINE    ;
  53:J P[31] 100% FINE    ;
  54:  UFRAME_NUM=1 ;
  55:J P[32] 100% FINE    ;
  56:J P[33] 100% FINE    ;
  57:J P[34] 100% FINE    ;
  58:J P[35] 100% FINE    ;
  59:J P[36] 100% FINE    ;
  60:J P[37] 100% FINE    ;
  61:  UFRAME_NUM=0 ;
  62:J P[38] 100% FINE    ;
  63:J P[39] 100% FINE    ;
  64:  UFRAME_NUM=1 ;
  65:J P[40] 100% FINE    ;
  66:J P[41] 100% FINE    ;
  67:J P[42] 100% FINE    ;
  68:J P[43] 100% FINE    ;
  69:J P[44] 100% FINE    ;
  70:  UFRAME_NUM=0 ;
  71:J P[45] 100% FINE    ;
  72:J P[46] 100% FINE    ;
  73:J P[47] 100% FINE    ;
  74:  UFRAME_NUM=1 ;
  75:J P[48] 100% FINE    ;
  76:J P[49] 100% FINE    ;
  77:J P[50] 100% FINE    ;
  78:J P[51] 100% FINE    ;
  79:J P[52] 100% FINE    ;
  80:J P[53] 100% FINE    ;
  81:J P[54] 100% FINE    ;
  82:  UFRAME_NUM=0 ;
  83:L P[55] 2000mm/sec FINE    ;
  84:L P[56] 2000mm/sec FINE    ;
  85:J P[57] 100% FINE    ;
  86:J P[58] 100% FINE    ;
  87:J P[59] 100% FINE    ;
  88:L P[60] 2000mm/sec FINE    ;
  89:L P[61] 2000mm/sec FINE    ;
  90:  UFRAME_NUM=1 ;
  91:J P[62] 100% FINE    ;
  92:J P[63] 100% FINE    ;
  93:J P[64] 100% FINE    ;
  94:J P[65] 100% FINE    ;
  95:J P[66] 100% FINE    ;
  96:J P[67] 100% FINE    ;
  97:J P[68] 100% FINE    ;
  98:J P[69] 100% FINE    ;
  99:J P[70] 100% FINE    ;
 100:J P[71] 100% FINE    ;
 101:J P[72] 100% FINE    ;
 102:J P[73] 100% FINE    ;
 103:J P[74] 100% FINE    ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   -40.488  mm,	Y = -1857.636  mm,	Z =   577.779  mm,
	W =   179.924 deg,	P =    14.537 deg,	R =   -91.974 deg
};
P[2]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -921.857  mm,	Y = -2557.977  mm,	Z =   562.336  mm,
	W =  -177.350 deg,	P =     5.674 deg,	R =   -95.474 deg
};
P[3]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1596.371  mm,	Y = -2635.878  mm,	Z =   259.466  mm,
	W =  -178.082 deg,	P =    -1.538 deg,	R =   -97.592 deg
};
P[4]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1630.848  mm,	Y = -2687.936  mm,	Z =   283.324  mm,
	W =  -178.082 deg,	P =    -1.538 deg,	R =   -97.592 deg
};
P[5]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   717.633  mm,	Y =   225.349  mm,	Z =    29.262  mm,
	W =    96.036 deg,	P =    81.668 deg,	R =  -118.940 deg
};
P[6]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   717.213  mm,	Y =   230.789  mm,	Z =    41.796  mm,
	W =   109.893 deg,	P =    80.479 deg,	R =  -104.705 deg
};
P[7]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   722.472  mm,	Y =   225.737  mm,	Z =    43.268  mm,
	W =   109.893 deg,	P =    80.479 deg,	R =  -104.705 deg
};
P[8]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   721.946  mm,	Y =   231.235  mm,	Z =    71.321  mm,
	W =   125.589 deg,	P =    79.312 deg,	R =   -88.513 deg
};
P[9]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   726.239  mm,	Y =   227.023  mm,	Z =    76.621  mm,
	W =   127.575 deg,	P =    79.016 deg,	R =   -86.459 deg
};
P[10]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   730.180  mm,	Y =   221.584  mm,	Z =    79.092  mm,
	W =   127.475 deg,	P =    79.447 deg,	R =   -86.568 deg
};
P[11]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   733.835  mm,	Y =   215.497  mm,	Z =    81.286  mm,
	W =   126.857 deg,	P =    80.200 deg,	R =   -87.216 deg
};
P[12]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1580.180  mm,	Y = -2393.770  mm,	Z =   319.561  mm,
	W =  -174.831 deg,	P =    -1.477 deg,	R =   -90.475 deg
};
P[13]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1802.763  mm,	Y = -2119.370  mm,	Z =   335.318  mm,
	W =  -169.443 deg,	P =      .800 deg,	R =   -82.223 deg
};
P[14]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   712.499  mm,	Y =    36.612  mm,	Z =   622.581  mm,
	W =   -65.712 deg,	P =    82.735 deg,	R =    70.485 deg
};
P[15]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   741.027  mm,	Y =     9.530  mm,	Z =   594.228  mm,
	W =   -48.002 deg,	P =    80.519 deg,	R =    88.694 deg
};
P[16]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   745.646  mm,	Y =     4.258  mm,	Z =   592.291  mm,
	W =   -47.809 deg,	P =    80.570 deg,	R =    88.892 deg
};
P[17]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   758.316  mm,	Y =    -9.204  mm,	Z =   578.613  mm,
	W =   -42.501 deg,	P =    79.275 deg,	R =    94.393 deg
};
P[18]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   765.330  mm,	Y =   -17.913  mm,	Z =   571.711  mm,
	W =   -40.637 deg,	P =    78.670 deg,	R =    96.332 deg
};
P[19]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   768.376  mm,	Y =   -20.219  mm,	Z =   569.703  mm,
	W =   -40.174 deg,	P =    78.784 deg,	R =    96.807 deg
};
P[20]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   767.214  mm,	Y =   -18.319  mm,	Z =   573.390  mm,
	W =   -41.559 deg,	P =    79.528 deg,	R =    95.359 deg
};
P[21]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1789.344  mm,	Y = -2406.276  mm,	Z =   434.685  mm,
	W =  -169.820 deg,	P =     5.594 deg,	R =   -81.074 deg
};
P[22]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1762.725  mm,	Y = -2478.441  mm,	Z =   448.982  mm,
	W =   173.629 deg,	P =     4.956 deg,	R =   -87.065 deg
};
P[23]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1576.070  mm,	Y = -2475.207  mm,	Z =   236.739  mm,
	W =   158.417 deg,	P =   -13.588 deg,	R =   -99.739 deg
};
P[24]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   713.035  mm,	Y =   312.056  mm,	Z =   257.015  mm,
	W =   118.282 deg,	P =    73.645 deg,	R =   -72.039 deg
};
P[25]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   709.180  mm,	Y =   300.610  mm,	Z =   260.082  mm,
	W =   118.282 deg,	P =    73.645 deg,	R =   -72.039 deg
};
P[26]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   708.326  mm,	Y =   293.733  mm,	Z =   261.925  mm,
	W =   118.282 deg,	P =    73.645 deg,	R =   -72.039 deg
};
P[27]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   705.814  mm,	Y =   287.026  mm,	Z =   263.722  mm,
	W =   118.282 deg,	P =    73.645 deg,	R =   -72.039 deg
};
P[28]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   705.035  mm,	Y =   279.701  mm,	Z =   265.685  mm,
	W =   118.282 deg,	P =    73.645 deg,	R =   -72.039 deg
};
P[29]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   703.644  mm,	Y =   272.758  mm,	Z =   267.497  mm,
	W =   118.282 deg,	P =    73.645 deg,	R =   -72.039 deg
};
P[30]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1574.529  mm,	Y = -2460.826  mm,	Z =   339.914  mm,
	W =   158.417 deg,	P =   -13.588 deg,	R =   -99.739 deg
};
P[31]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1591.429  mm,	Y = -2254.967  mm,	Z =   236.179  mm,
	W =   155.568 deg,	P =    -6.899 deg,	R =   -83.846 deg
};
P[32]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   795.239  mm,	Y =    21.087  mm,	Z =   376.896  mm,
	W =   -54.703 deg,	P =    73.107 deg,	R =   106.964 deg
};
P[33]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   790.283  mm,	Y =    12.090  mm,	Z =   374.357  mm,
	W =   -54.703 deg,	P =    73.107 deg,	R =   106.964 deg
};
P[34]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   788.400  mm,	Y =     4.583  mm,	Z =   372.345  mm,
	W =   -54.703 deg,	P =    73.107 deg,	R =   106.964 deg
};
P[35]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   785.805  mm,	Y =    -1.386  mm,	Z =   370.746  mm,
	W =   -54.703 deg,	P =    73.107 deg,	R =   106.964 deg
};
P[36]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   784.927  mm,	Y =    -7.074  mm,	Z =   369.222  mm,
	W =   -54.703 deg,	P =    73.107 deg,	R =   106.964 deg
};
P[37]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   783.758  mm,	Y =   -11.733  mm,	Z =   367.973  mm,
	W =   -54.703 deg,	P =    73.107 deg,	R =   106.964 deg
};
P[38]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1762.366  mm,	Y = -2406.136  mm,	Z =   442.481  mm,
	W =   156.324 deg,	P =    -9.982 deg,	R =  -101.923 deg
};
P[39]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1911.282  mm,	Y = -2355.258  mm,	Z =   488.096  mm,
	W =   140.305 deg,	P =   -13.100 deg,	R =   -98.957 deg
};
P[40]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   683.031  mm,	Y =  -105.880  mm,	Z =   368.085  mm,
	W =   101.318 deg,	P =    74.506 deg,	R =   -71.033 deg
};
P[41]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   684.005  mm,	Y =  -115.642  mm,	Z =   370.700  mm,
	W =   101.318 deg,	P =    74.506 deg,	R =   -71.033 deg
};
P[42]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   684.468  mm,	Y =  -123.077  mm,	Z =   372.692  mm,
	W =   101.318 deg,	P =    74.506 deg,	R =   -71.033 deg
};
P[43]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   685.610  mm,	Y =  -129.670  mm,	Z =   374.459  mm,
	W =   101.318 deg,	P =    74.506 deg,	R =   -71.033 deg
};
P[44]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   688.042  mm,	Y =  -139.364  mm,	Z =   377.056  mm,
	W =   101.318 deg,	P =    74.506 deg,	R =   -71.033 deg
};
P[45]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1911.282  mm,	Y = -2355.258  mm,	Z =   488.096  mm,
	W =   140.305 deg,	P =   -13.100 deg,	R =   -98.957 deg
};
P[46]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2050.889  mm,	Y = -2321.608  mm,	Z =   554.824  mm,
	W =   140.608 deg,	P =     2.678 deg,	R =   -74.577 deg
};
P[47]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2103.792  mm,	Y = -2328.813  mm,	Z =   521.501  mm,
	W =   140.608 deg,	P =     2.678 deg,	R =   -74.577 deg
};
P[48]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   713.951  mm,	Y =  -362.321  mm,	Z =   274.735  mm,
	W =   -72.364 deg,	P =    73.858 deg,	R =   108.285 deg
};
P[49]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   679.713  mm,	Y =  -385.825  mm,	Z =   333.566  mm,
	W =   -89.974 deg,	P =    74.997 deg,	R =    90.000 deg
};
P[50]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   679.684  mm,	Y =  -390.663  mm,	Z =   332.298  mm,
	W =   -89.974 deg,	P =    74.997 deg,	R =    90.000 deg
};
P[51]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   679.654  mm,	Y =  -395.500  mm,	Z =   331.032  mm,
	W =   -89.974 deg,	P =    74.997 deg,	R =    90.000 deg
};
P[52]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   679.625  mm,	Y =  -400.335  mm,	Z =   329.764  mm,
	W =   -89.974 deg,	P =    74.997 deg,	R =    90.000 deg
};
P[53]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   679.622  mm,	Y =  -405.164  mm,	Z =   328.470  mm,
	W =   -89.974 deg,	P =    74.997 deg,	R =    90.000 deg
};
P[54]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   713.716  mm,	Y =  -401.878  mm,	Z =   263.764  mm,
	W =   -72.490 deg,	P =    73.764 deg,	R =   108.163 deg
};
P[55]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1707.393  mm,	Y = -2351.580  mm,	Z =   523.979  mm,
	W =   125.572 deg,	P =   -11.094 deg,	R =  -106.800 deg
};
P[56]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1791.221  mm,	Y = -2354.702  mm,	Z =   396.025  mm,
	W =   125.572 deg,	P =   -11.094 deg,	R =  -106.800 deg
};
P[57]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2050.985  mm,	Y = -2318.221  mm,	Z =   565.319  mm,
	W =   125.572 deg,	P =   -11.094 deg,	R =  -106.800 deg
};
P[58]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1758.757  mm,	Y = -2316.783  mm,	Z =   427.163  mm,
	W =   101.635 deg,	P =   -17.292 deg,	R =  -101.235 deg
};
P[59]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1755.967  mm,	Y = -2538.736  mm,	Z =   430.751  mm,
	W =   101.635 deg,	P =   -17.292 deg,	R =  -101.235 deg
};
P[60]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2021.804  mm,	Y = -2496.358  mm,	Z =   481.464  mm,
	W =   124.435 deg,	P =   -11.094 deg,	R =  -105.737 deg
};
P[61]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2051.351  mm,	Y = -2541.408  mm,	Z =   501.921  mm,
	W =   124.435 deg,	P =   -11.094 deg,	R =  -105.737 deg
};
P[62]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   664.046  mm,	Y =  -230.921  mm,	Z =   194.505  mm,
	W =    65.206 deg,	P =    70.752 deg,	R =   -90.725 deg
};
P[63]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   659.630  mm,	Y =  -234.235  mm,	Z =   196.962  mm,
	W =    65.801 deg,	P =    70.920 deg,	R =   -90.109 deg
};
P[64]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   656.017  mm,	Y =  -238.061  mm,	Z =   195.918  mm,
	W =    65.391 deg,	P =    70.981 deg,	R =   -90.532 deg
};
P[65]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   654.732  mm,	Y =  -243.227  mm,	Z =   181.931  mm,
	W =    60.335 deg,	P =    69.698 deg,	R =   -95.754 deg
};
P[66]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   648.820  mm,	Y =  -247.646  mm,	Z =   182.588  mm,
	W =    60.276 deg,	P =    69.755 deg,	R =   -95.815 deg
};
P[67]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   649.822  mm,	Y =  -254.193  mm,	Z =   152.259  mm,
	W =    51.604 deg,	P =    66.722 deg,	R =  -104.715 deg
};
P[68]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   713.649  mm,	Y =    48.710  mm,	Z =   590.002  mm,
	W =  -146.988 deg,	P =    70.577 deg,	R =    99.537 deg
};
P[69]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   707.639  mm,	Y =    49.433  mm,	Z =   593.750  mm,
	W =  -148.161 deg,	P =    71.682 deg,	R =    98.276 deg
};
P[70]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   707.873  mm,	Y =    43.698  mm,	Z =   590.460  mm,
	W =  -147.778 deg,	P =    71.736 deg,	R =    98.669 deg
};
P[71]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   704.778  mm,	Y =    38.091  mm,	Z =   592.523  mm,
	W =  -148.561 deg,	P =    71.704 deg,	R =    97.862 deg
};
P[72]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   699.086  mm,	Y =     7.244  mm,	Z =   596.293  mm,
	W =  -150.575 deg,	P =    69.567 deg,	R =    95.888 deg
};
P[73]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   706.013  mm,	Y =    44.035  mm,	Z =   582.739  mm,
	W =  -146.162 deg,	P =    73.457 deg,	R =   100.251 deg
};
P[74]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   702.716  mm,	Y =    35.892  mm,	Z =   583.300  mm,
	W =  -146.548 deg,	P =    73.533 deg,	R =    99.849 deg
};
/END
