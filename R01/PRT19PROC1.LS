/PROG  PRT19PROC1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "DEGATE 301";
PROG_SIZE	= 3637;
CREATE		= DATE 21-04-29  TIME 05:37:46;
MODIFIED	= DATE 21-06-10  TIME 18:41:32;
FILE_NAME	= PRT20PRO;
VERSION		= 0;
LINE_COUNT	= 81;
MEMORY_SIZE	= 4081;
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
   4:  !TOOL 07 DEGATE ;
   5:   ;
   6:  IF DO[66:OFF]=ON,JMP LBL[99] ;
   7:  SET SEGMENT(22) ;
   8:  Set MH Tool(5) ;
   9:   ;
  10:  UTOOL_NUM=5 ;
  11:  UFRAME_NUM=0 ;
  12:  PAYLOAD[11] ;
  13:   ;
  14:  !Request Knife Repo ;
  15:  CALL REQ_KNIFE_AT_HM    ;
  16:   ;
  17:J P[1] 100% CNT100    ;
  18:J P[2] 100% CNT100    ;
  19:J P[3] 100% CNT100    ;
  20:   ;
  21:  //L P[4] 2000mm/sec CNT100    ;
  22:  //L P[5] 2000mm/sec CNT50    ;
  23:L P[6] 500mm/sec CNT10    ;
  24:   ;
  25:  !Swipe1 ;
  26:L P[7] 500mm/sec FINE    ;
  27:L P[8] 500mm/sec FINE    ;
  28:L P[9] 500mm/sec FINE    ;
  29:   ;
  30:L P[10] 2000mm/sec CNT50    ;
  31:  //L P[11] 2000mm/sec CNT100    ;
  32:  //L P[12] 2000mm/sec CNT100    ;
  33:L P[13] 2000mm/sec CNT50    ;
  34:L P[14] 2000mm/sec CNT50    ;
  35:   ;
  36:  !Swipe2 ;
  37:L P[15] 500mm/sec FINE    ;
  38:L P[16] 500mm/sec FINE    ;
  39:   ;
  40:L P[17] 2000mm/sec CNT50    ;
  41:L P[18] 2000mm/sec CNT100    ;
  42:L P[19] 2000mm/sec CNT100    ;
  43:L P[20] 2000mm/sec CNT100    ;
  44:L P[21] 2000mm/sec CNT20    ;
  45:   ;
  46:  !Swipe3 ;
  47:L P[22] 1000mm/sec CNT20    ;
  48:L P[23] 500mm/sec FINE    ;
  49:L P[24] 500mm/sec FINE    ;
  50:L P[25] 500mm/sec FINE    ;
  51:L P[26] 2000mm/sec CNT50    ;
  52:L P[27] 2000mm/sec CNT50    ;
  53:L P[28] 2000mm/sec CNT50    ;
  54:   ;
  55:  !Swipe4 ;
  56:L P[29] 500mm/sec FINE    ;
  57:L P[30] 500mm/sec FINE    ;
  58:L P[31] 500mm/sec FINE    ;
  59:L P[32] 1000mm/sec FINE    ;
  60:L P[33] 2000mm/sec CNT50    ;
  61:L P[34] 2000mm/sec CNT50    ;
  62:L P[35] 2000mm/sec CNT50    ;
  63:L P[36] 2000mm/sec CNT50    ;
  64:L P[37] 2000mm/sec CNT50    ;
  65:   ;
  66:  !Swipe5 ;
  67:L P[38] 500mm/sec FINE    ;
  68:L P[39] 500mm/sec FINE    ;
  69:L P[40] 500mm/sec FINE    ;
  70:   ;
  71:L P[41] 2000mm/sec CNT50    ;
  72:L P[42] 2000mm/sec CNT50    ;
  73:   ;
  74:J P[43] 100% CNT100    ;
  75:J P[44] 100% CNT100    ;
  76:J P[45] 100% CNT100    ;
  77:   ;
  78:  LBL[99:PROGRAM END] ;
  79:  END ;
  80:  CALL REQ_KNIFE_AT_HM    ;
  81:   ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X =   663.372  mm,	Y = -2475.172  mm,	Z =  1063.059  mm,
	W =  -175.130 deg,	P =     -.499 deg,	R =   -86.320 deg
};
P[2]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1299.748  mm,	Y = -2627.935  mm,	Z =   793.173  mm,
	W =   162.300 deg,	P =   -29.183 deg,	R =  -150.572 deg
};
P[3]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1604.829  mm,	Y = -3045.435  mm,	Z =   329.711  mm,
	W =   160.798 deg,	P =   -42.433 deg,	R =  -155.658 deg
};
P[4]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1910.129  mm,	Y = -2481.164  mm,	Z =   226.411  mm,
	W =   160.798 deg,	P =   -42.433 deg,	R =  -155.658 deg
};
P[5]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1970.369  mm,	Y = -2534.036  mm,	Z =   210.628  mm,
	W =   160.798 deg,	P =   -42.434 deg,	R =  -155.657 deg
};
P[6]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1672.256  mm,	Y = -3060.079  mm,	Z =   397.807  mm,
	W =   164.180 deg,	P =   -27.070 deg,	R =  -161.534 deg
};
P[7]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2061.389  mm,	Y = -3054.615  mm,	Z =    93.820  mm,
	W =   170.898 deg,	P =   -21.333 deg,	R =  -173.865 deg
};
P[8]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2057.326  mm,	Y = -3141.479  mm,	Z =    82.957  mm,
	W =   170.899 deg,	P =   -21.333 deg,	R =  -173.865 deg
};
P[9]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -2004.511  mm,	Y = -3147.719  mm,	Z =    60.671  mm,
	W =   170.899 deg,	P =   -21.333 deg,	R =  -173.865 deg
};
P[10]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1757.183  mm,	Y = -3226.325  mm,	Z =   668.813  mm,
	W =   170.899 deg,	P =   -21.333 deg,	R =  -173.865 deg
};
P[11]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1958.620  mm,	Y = -2585.844  mm,	Z =   224.050  mm,
	W =   175.188 deg,	P =   -36.434 deg,	R =  -158.237 deg
};
P[12]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1911.331  mm,	Y = -2938.588  mm,	Z =   138.550  mm,
	W =   172.042 deg,	P =   -36.499 deg,	R =  -159.273 deg
};
P[13]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1427.017  mm,	Y = -2557.198  mm,	Z =   665.915  mm,
	W =   151.923 deg,	P =     3.979 deg,	R =   -86.423 deg
};
P[14]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1355.052  mm,	Y = -3130.855  mm,	Z =    -4.045  mm,
	W =   151.915 deg,	P =     3.931 deg,	R =   -86.498 deg
};
P[15]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1321.050  mm,	Y = -3081.237  mm,	Z =  -179.936  mm,
	W =   151.915 deg,	P =     3.930 deg,	R =   -86.497 deg
};
P[16]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1248.724  mm,	Y = -3078.529  mm,	Z =  -205.806  mm,
	W =   151.895 deg,	P =     3.856 deg,	R =   -86.613 deg
};
P[17]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1200.939  mm,	Y = -3074.938  mm,	Z =  -222.189  mm,
	W =   151.895 deg,	P =     3.856 deg,	R =   -86.613 deg
};
P[18]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1175.236  mm,	Y = -3133.593  mm,	Z =  -193.630  mm,
	W =   151.894 deg,	P =     3.856 deg,	R =   -86.613 deg
};
P[19]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1617.365  mm,	Y = -3175.735  mm,	Z =    42.879  mm,
	W =   151.894 deg,	P =     3.855 deg,	R =   -86.613 deg
};
P[20]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1655.573  mm,	Y = -3173.204  mm,	Z =   -28.092  mm,
	W =   151.894 deg,	P =     3.855 deg,	R =   -86.613 deg
};
P[21]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1632.331  mm,	Y = -3102.115  mm,	Z =   -50.612  mm,
	W =   151.894 deg,	P =     3.855 deg,	R =   -86.613 deg
};
P[22]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1632.248  mm,	Y = -3092.733  mm,	Z =   -50.322  mm,
	W =   151.894 deg,	P =     3.855 deg,	R =   -86.613 deg
};
P[23]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1586.561  mm,	Y = -3090.677  mm,	Z =   -74.844  mm,
	W =   151.894 deg,	P =     3.855 deg,	R =   -86.613 deg
};
P[24]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1589.661  mm,	Y = -3117.292  mm,	Z =   -72.019  mm,
	W =   151.689 deg,	P =     3.220 deg,	R =   -87.470 deg
};
P[25]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1503.983  mm,	Y = -3122.413  mm,	Z =    86.199  mm,
	W =   151.689 deg,	P =     3.220 deg,	R =   -87.470 deg
};
P[26]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1909.018  mm,	Y = -3156.210  mm,	Z =   304.436  mm,
	W =   151.688 deg,	P =     3.219 deg,	R =   -87.470 deg
};
P[27]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1983.271  mm,	Y = -3151.772  mm,	Z =   167.314  mm,
	W =   151.688 deg,	P =     3.219 deg,	R =   -87.469 deg
};
P[28]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1984.425  mm,	Y = -3124.263  mm,	Z =   168.838  mm,
	W =   151.689 deg,	P =     3.219 deg,	R =   -87.468 deg
};
P[29]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1976.057  mm,	Y = -3122.198  mm,	Z =   164.375  mm,
	W =   151.689 deg,	P =     3.219 deg,	R =   -87.468 deg
};
P[30]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1922.235  mm,	Y = -3116.772  mm,	Z =   123.120  mm,
	W =   151.689 deg,	P =     3.219 deg,	R =   -87.468 deg
};
P[31]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1919.540  mm,	Y = -3177.714  mm,	Z =   119.689  mm,
	W =   151.689 deg,	P =     3.219 deg,	R =   -87.468 deg
};
P[32]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1749.075  mm,	Y = -3187.895  mm,	Z =   434.502  mm,
	W =   151.689 deg,	P =     3.219 deg,	R =   -87.468 deg
};
P[33]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1123.897  mm,	Y = -2372.660  mm,	Z =   459.055  mm,
	W =  -161.802 deg,	P =    29.350 deg,	R =    35.248 deg
};
P[34]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X = -1059.714  mm,	Y = -2162.747  mm,	Z =   412.116  mm,
	W =  -147.028 deg,	P =     9.239 deg,	R =    77.492 deg
};
P[35]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 1',
	X = -1152.822  mm,	Y = -2238.483  mm,	Z =   476.386  mm,
	W =  -148.348 deg,	P =    -7.758 deg,	R =    84.483 deg
};
P[36]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 1',
	X = -1553.770  mm,	Y = -2162.450  mm,	Z =   203.818  mm,
	W =  -148.349 deg,	P =    -7.759 deg,	R =    84.483 deg
};
P[37]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 1',
	X = -1826.065  mm,	Y = -2427.280  mm,	Z =   325.411  mm,
	W =  -148.327 deg,	P =    -9.067 deg,	R =    87.823 deg
};
P[38]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 1',
	X = -1854.320  mm,	Y = -2537.296  mm,	Z =   184.741  mm,
	W =  -148.329 deg,	P =    -9.070 deg,	R =    87.824 deg
};
P[39]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 1',
	X = -1703.284  mm,	Y = -2525.940  mm,	Z =   137.642  mm,
	W =  -141.959 deg,	P =   -12.487 deg,	R =    91.036 deg
};
P[40]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 1',
	X = -1671.857  mm,	Y = -2529.295  mm,	Z =   101.813  mm,
	W =  -142.207 deg,	P =   -13.275 deg,	R =    93.413 deg
};
P[41]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 1',
	X = -1614.736  mm,	Y = -2514.421  mm,	Z =    97.493  mm,
	W =  -142.207 deg,	P =   -13.275 deg,	R =    93.413 deg
};
P[42]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 1',
	X = -1614.953  mm,	Y = -2482.388  mm,	Z =    97.881  mm,
	W =  -142.212 deg,	P =   -13.296 deg,	R =    93.453 deg
};
P[43]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 1',
	X = -1620.957  mm,	Y = -2485.868  mm,	Z =   284.674  mm,
	W =  -142.270 deg,	P =   -13.294 deg,	R =    94.100 deg
};
P[44]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X =  -981.655  mm,	Y = -2303.783  mm,	Z =  1039.231  mm,
	W =   165.100 deg,	P =    -1.733 deg,	R =  -133.603 deg
};
P[45]{
   GP1:
	UF : 0, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	X =   663.372  mm,	Y = -2475.172  mm,	Z =  1063.059  mm,
	W =  -175.130 deg,	P =     -.499 deg,	R =   -86.320 deg
};
/END
