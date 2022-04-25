/PROG  PRT09PROC1
/ATTR
OWNER		= SHIFT;
COMMENT		= "DEGATE 336";
PROG_SIZE	= 2500;
CREATE		= DATE 18-06-15  TIME 15:57:56;
MODIFIED	= DATE 21-06-07  TIME 21:38:12;
FILE_NAME	= PRT07PRO;
VERSION		= 0;
LINE_COUNT	= 57;
MEMORY_SIZE	= 2912;
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
  10:  Set MH Tool(9) ;
  11:   ;
  12:  UTOOL_NUM=9 ;
  13:  UFRAME_NUM=0 ;
  14:  PAYLOAD[9] ;
  15:   ;
  16:  !Request Knife Repo ;
  17:  CALL REQ_KNIFE_AT_WK    ;
  18:   ;
  19:J P[1] 100% CNT100    ;
  20:  //J P[2] 100% CNT100    ;
  21:  //    ;
  22:  //L P[3] 2000mm/sec CNT50    ;
  23:  //L P[4] 500mm/sec CNT10    ;
  24:  //    ;
  25:  //!Swipe1 ;
  26:  //L P[5] 500mm/sec FINE    ;
  27:  //L P[6] 500mm/sec FINE    ;
  28:  //L P[7] 500mm/sec FINE    ;
  29:  //    ;
  30:  //L P[8] 2000mm/sec CNT50    ;
  31:  //L P[9] 2000mm/sec CNT50    ;
  32:  //L P[10] 2000mm/sec CNT100    ;
  33:  //L P[11] 2000mm/sec CNT50    ;
  34:  //    ;
  35:  //!Swipe2 ;
  36:  //L P[12] 500mm/sec FINE    ;
  37:  //L P[24] 500mm/sec FINE    ;
  38:  //L P[13] 500mm/sec FINE    ;
  39:  //L P[14] 500mm/sec FINE    ;
  40:  //    ;
  41:  //L P[15] 2000mm/sec CNT50    ;
  42:  //L P[16] 2000mm/sec CNT100    ;
  43:  //L P[17] 2000mm/sec CNT50    ;
  44:  //    ;
  45:  //!Swipe3 ;
  46:  //L P[18] 500mm/sec FINE    ;
  47:  //L P[19] 500mm/sec FINE    ;
  48:  //L P[20] 500mm/sec FINE    ;
  49:  //L P[21] 500mm/sec FINE    ;
  50:  //    ;
  51:  //L P[22] 2000mm/sec CNT50    ;
  52:  //L P[50] 2000mm/sec CNT100    ;
  53:  //    ;
  54:  //J P[51] 100% CNT100    ;
  55:J P[23] 100% CNT100    ;
  56:   ;
  57:   ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X =   663.381  mm,	Y = -2475.163  mm,	Z =  1063.155  mm,
	W =  -175.130 deg,	P =     -.502 deg,	R =   -86.319 deg
};
P[2]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1835.794  mm,	Y = -2655.186  mm,	Z =   448.632  mm,
	W =   169.826 deg,	P =    -2.477 deg,	R =   -86.488 deg
};
P[3]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1926.242  mm,	Y = -2829.405  mm,	Z =  -127.277  mm,
	W =   170.088 deg,	P =     4.264 deg,	R =   -77.707 deg
};
P[4]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1916.080  mm,	Y = -2834.256  mm,	Z =  -160.712  mm,
	W =   171.436 deg,	P =    23.352 deg,	R =   -74.556 deg
};
P[5]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1890.474  mm,	Y = -2828.598  mm,	Z =  -162.846  mm,
	W =   171.173 deg,	P =    22.768 deg,	R =   -75.119 deg
};
P[6]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1884.383  mm,	Y = -2827.539  mm,	Z =  -163.764  mm,
	W =   171.173 deg,	P =    22.768 deg,	R =   -75.119 deg
};
P[7]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1865.501  mm,	Y = -2809.986  mm,	Z =  -167.928  mm,
	W =   171.173 deg,	P =    22.767 deg,	R =   -75.119 deg
};
P[8]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1885.633  mm,	Y = -2723.347  mm,	Z =  -137.328  mm,
	W =   170.063 deg,	P =    13.358 deg,	R =   -78.114 deg
};
P[9]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1834.893  mm,	Y = -2767.366  mm,	Z =    88.076  mm,
	W =   170.063 deg,	P =    13.358 deg,	R =   -78.114 deg
};
P[10]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1968.724  mm,	Y = -2944.052  mm,	Z =    72.367  mm,
	W =   170.324 deg,	P =     2.648 deg,	R =   -76.248 deg
};
P[11]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1969.924  mm,	Y = -2922.116  mm,	Z =   -93.799  mm,
	W =   170.488 deg,	P =     4.832 deg,	R =   -76.614 deg
};
P[12]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1954.617  mm,	Y = -2908.783  mm,	Z =   -89.748  mm,
	W =   170.324 deg,	P =     2.647 deg,	R =   -76.248 deg
};
P[13]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1943.663  mm,	Y = -2906.012  mm,	Z =   -91.671  mm,
	W =   170.324 deg,	P =     2.647 deg,	R =   -76.247 deg
};
P[14]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1954.617  mm,	Y = -2908.783  mm,	Z =   -89.748  mm,
	W =   170.324 deg,	P =     2.647 deg,	R =   -76.248 deg
};
P[15]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1943.349  mm,	Y = -2908.052  mm,	Z =   -91.738  mm,
	W =   170.324 deg,	P =     2.647 deg,	R =   -76.248 deg
};
P[16]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1927.398  mm,	Y = -2923.863  mm,	Z =    -2.708  mm,
	W =   170.324 deg,	P =     2.647 deg,	R =   -76.248 deg
};
P[17]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1988.988  mm,	Y = -3016.735  mm,	Z =   -31.079  mm,
	W =   170.324 deg,	P =     2.647 deg,	R =   -76.248 deg
};
P[18]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1973.208  mm,	Y = -3030.338  mm,	Z =   -56.897  mm,
	W =   170.389 deg,	P =     6.316 deg,	R =   -75.363 deg
};
P[19]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1956.972  mm,	Y = -3025.445  mm,	Z =   -58.850  mm,
	W =   170.389 deg,	P =     6.316 deg,	R =   -75.363 deg
};
P[20]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1946.606  mm,	Y = -3022.531  mm,	Z =   -60.662  mm,
	W =   170.389 deg,	P =     6.316 deg,	R =   -75.363 deg
};
P[21]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1934.401  mm,	Y = -3020.779  mm,	Z =   -62.795  mm,
	W =   170.389 deg,	P =     6.316 deg,	R =   -75.363 deg
};
P[22]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1857.005  mm,	Y = -3002.927  mm,	Z =   303.952  mm,
	W =   170.337 deg,	P =     3.418 deg,	R =   -75.954 deg
};
P[23]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X =    56.683  mm,	Y = -2844.073  mm,	Z =   962.808  mm,
	W =   179.140 deg,	P =      .896 deg,	R =   -81.932 deg
};
P[24]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1949.932  mm,	Y = -2907.598  mm,	Z =   -90.571  mm,
	W =   170.324 deg,	P =     2.647 deg,	R =   -76.248 deg
};
P[50]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1345.328  mm,	Y = -2991.941  mm,	Z =   212.050  mm,
	W =   170.337 deg,	P =     3.418 deg,	R =   -75.954 deg
};
P[51]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, -1',
	X = -1276.048  mm,	Y = -2998.308  mm,	Z =   597.014  mm,
	W =   170.337 deg,	P =     3.418 deg,	R =   -75.954 deg
};
/END
