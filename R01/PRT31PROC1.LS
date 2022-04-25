/PROG  PRT31PROC1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "DEGATE 383";
PROG_SIZE	= 2737;
CREATE		= DATE 19-07-10  TIME 10:34:52;
MODIFIED	= DATE 20-12-08  TIME 20:03:22;
FILE_NAME	= PRT43PRO;
VERSION		= 0;
LINE_COUNT	= 65;
MEMORY_SIZE	= 3245;
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
   1:  JMP LBL[99] ;
   2:  !TOOL 07 DEGATE ;
   3:   ;
   4:  IF DO[66:OFF]=ON,JMP LBL[99] ;
   5:  SET SEGMENT(22) ;
   6:  !TOOL 02 DEGATE ;
   7:   ;
   8:  IF DO[66:OFF]=ON,JMP LBL[99] ;
   9:  SET SEGMENT(22) ;
  10:   ;
  11:  Set MH Tool(9) ;
  12:   ;
  13:  UTOOL_NUM=9 ;
  14:  UFRAME_NUM=0 ;
  15:  PAYLOAD[9] ;
  16:   ;
  17:  !Request Knife Repo ;
  18:  CALL REQ_KNIFE_AT_WK    ;
  19:   ;
  20:J P[1] 100% CNT100    ;
  21:L P[6] 2000mm/sec FINE    ;
  22:L P[7] 2000mm/sec FINE    ;
  23:   ;
  24:L P[8] 2000mm/sec CNT50    ;
  25:L P[9] 500mm/sec CNT50    ;
  26:L P[10] 500mm/sec CNT100    ;
  27:L P[11] 2000mm/sec CNT50    ;
  28:   ;
  29:  !Swipe2 ;
  30:L P[12] 2000mm/sec FINE    ;
  31:L P[24] 2000mm/sec FINE    ;
  32:L P[13] 2000mm/sec FINE    ;
  33:L P[14] 500mm/sec FINE    ;
  34:L P[16] 500mm/sec CNT100    ;
  35:L P[17] 500mm/sec CNT50    ;
  36:L P[15] 2000mm/sec CNT50    ;
  37:   ;
  38:  !Swipe3 ;
  39:L P[18] 2000mm/sec FINE    ;
  40:L P[19] 2000mm/sec FINE    ;
  41:L P[20] 500mm/sec FINE    ;
  42:L P[21] 500mm/sec FINE    ;
  43:   ;
  44:L P[22] 2000mm/sec CNT50    ;
  45:L P[50] 2000mm/sec CNT100    ;
  46:   ;
  47:L P[51] 2000mm/sec CNT100    ;
  48:   ;
  49:  !Swipe4 ;
  50:   ;
  51:L P[25] 2000mm/sec FINE    ;
  52:L P[26] 2000mm/sec FINE    ;
  53:   ;
  54:  !Swipe5 ;
  55:   ;
  56:L P[27] 2000mm/sec FINE    ;
  57:   ;
  58:  Release Part(5) ;
  59:   ;
  60:L P[28] 2000mm/sec FINE    ;
  61:L P[29] 2000mm/sec FINE    ;
  62:L P[30] 2000mm/sec FINE    ;
  63:J P[2] 100% FINE    ;
  64:J P[60:final de corte] 100% CNT100    ;
  65:  LBL[99] ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X =   663.381  mm,	Y = -2475.163  mm,	Z =  1063.155  mm,
	W =  -175.130 deg,	P =     -.502 deg,	R =   -86.319 deg
};
P[2]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, -1, 1',
	X = -1365.303  mm,	Y = -2350.814  mm,	Z =   774.590  mm,
	W =  -154.224 deg,	P =    51.756 deg,	R =   103.708 deg
};
P[6]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1359.664  mm,	Y = -3343.355  mm,	Z =   571.000  mm,
	W =   173.650 deg,	P =    -6.909 deg,	R =   -84.307 deg
};
P[7]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1449.672  mm,	Y = -2320.325  mm,	Z =   445.225  mm,
	W =   173.646 deg,	P =     7.216 deg,	R =   -85.875 deg
};
P[8]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1246.187  mm,	Y = -2390.137  mm,	Z =   235.865  mm,
	W =   174.324 deg,	P =     7.759 deg,	R =   -80.676 deg
};
P[9]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1224.631  mm,	Y = -2385.482  mm,	Z =   204.946  mm,
	W =   174.324 deg,	P =     7.759 deg,	R =   -80.676 deg
};
P[10]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1229.254  mm,	Y = -2357.323  mm,	Z =   208.834  mm,
	W =   174.324 deg,	P =     7.759 deg,	R =   -80.676 deg
};
P[11]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1136.210  mm,	Y = -2342.871  mm,	Z =   552.571  mm,
	W =   174.324 deg,	P =     7.758 deg,	R =   -80.676 deg
};
P[12]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X =  -950.536  mm,	Y = -2773.679  mm,	Z =   836.612  mm,
	W =   166.180 deg,	P =   -57.117 deg,	R =   -83.271 deg
};
P[13]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, -1, 1',
	X = -1557.108  mm,	Y = -2827.217  mm,	Z =   367.220  mm,
	W =  -164.077 deg,	P =    20.840 deg,	R =   101.110 deg
};
P[14]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, -1, 1',
	X = -1667.506  mm,	Y = -2826.191  mm,	Z =   367.220  mm,
	W =  -164.077 deg,	P =    20.840 deg,	R =   101.110 deg
};
P[15]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, -1, 1',
	X = -1557.108  mm,	Y = -2827.218  mm,	Z =   430.820  mm,
	W =  -164.077 deg,	P =    20.840 deg,	R =   101.110 deg
};
P[16]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, -1, 1',
	X = -1667.505  mm,	Y = -2826.192  mm,	Z =   367.220  mm,
	W =  -164.206 deg,	P =    20.224 deg,	R =   101.065 deg
};
P[17]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, -1, 1',
	X = -1691.503  mm,	Y = -2826.192  mm,	Z =   367.221  mm,
	W =  -164.207 deg,	P =    20.224 deg,	R =   101.065 deg
};
P[18]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, -1, 1',
	X = -1557.107  mm,	Y = -1825.225  mm,	Z =   486.020  mm,
	W =  -164.516 deg,	P =    20.920 deg,	R =   100.953 deg
};
P[19]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, -1, 1',
	X = -1896.702  mm,	Y = -2035.227  mm,	Z =   421.218  mm,
	W =  -169.256 deg,	P =    -2.717 deg,	R =    92.245 deg
};
P[20]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, -1, 1',
	X = -1947.342  mm,	Y = -2113.948  mm,	Z =   385.218  mm,
	W =  -169.256 deg,	P =    -2.717 deg,	R =    92.245 deg
};
P[21]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, -1, 1',
	X = -1989.819  mm,	Y = -2114.430  mm,	Z =   374.417  mm,
	W =  -169.256 deg,	P =    -2.717 deg,	R =    92.245 deg
};
P[22]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, -1, 1',
	X = -1989.820  mm,	Y = -2114.431  mm,	Z =   711.618  mm,
	W =  -169.256 deg,	P =    -2.717 deg,	R =    92.245 deg
};
P[24]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, -1, 1',
	X =  -950.535  mm,	Y = -2773.679  mm,	Z =   836.613  mm,
	W =  -143.406 deg,	P =    48.956 deg,	R =   124.955 deg
};
P[25]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, -1, 1',
	X = -1179.042  mm,	Y = -3672.596  mm,	Z =   991.662  mm,
	W =   172.496 deg,	P =   -43.901 deg,	R =  -141.323 deg
};
P[26]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, -1, 1',
	X = -2673.058  mm,	Y = -2780.803  mm,	Z =   991.661  mm,
	W =   172.496 deg,	P =   -43.901 deg,	R =  -167.392 deg
};
P[27]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, -1, 1',
	X = -2673.058  mm,	Y = -2780.803  mm,	Z =   622.061  mm,
	W =   172.496 deg,	P =   -43.901 deg,	R =  -167.392 deg
};
P[28]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, -1, 1',
	X = -2673.058  mm,	Y = -2780.803  mm,	Z =   991.661  mm,
	W =   172.496 deg,	P =   -43.901 deg,	R =  -167.392 deg
};
P[29]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, -1, 1',
	X = -1179.042  mm,	Y = -3672.596  mm,	Z =   991.662  mm,
	W =   172.496 deg,	P =   -43.901 deg,	R =  -141.323 deg
};
P[30]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, -1, 1',
	X = -1260.224  mm,	Y = -2107.231  mm,	Z =   693.137  mm,
	W =  -168.575 deg,	P =    35.223 deg,	R =    92.806 deg
};
P[50]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, -1, 1',
	X = -1260.225  mm,	Y = -2107.230  mm,	Z =   693.137  mm,
	W =  -169.256 deg,	P =    -2.717 deg,	R =    92.245 deg
};
P[51]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, -1, 1',
	X = -1260.224  mm,	Y = -2107.231  mm,	Z =   693.137  mm,
	W =  -168.575 deg,	P =    35.223 deg,	R =    92.806 deg
};
P[60:"final de corte"]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X =   663.372  mm,	Y = -2475.169  mm,	Z =  1063.104  mm,
	W =  -175.130 deg,	P =     -.500 deg,	R =   -86.320 deg
};
/END
