/PROG  PRT12PROC1
/ATTR
OWNER		= SHIFT;
COMMENT		= "DEGATE 332";
PROG_SIZE	= 3239;
CREATE		= DATE 18-08-25  TIME 12:42:12;
MODIFIED	= DATE 19-03-04  TIME 14:02:52;
FILE_NAME	= PRT06PRO;
VERSION		= 0;
LINE_COUNT	= 71;
MEMORY_SIZE	= 3723;
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
   1:  !TOOL 02 DEGATE ;
   2:   ;
   3:  IF DO[66:OFF]=ON,JMP LBL[99] ;
   4:  SET SEGMENT(22) ;
   5:   ;
   6:  Set MH Tool(12) ;
   7:   ;
   8:  UTOOL_NUM=12 ;
   9:  UFRAME_NUM=0 ;
  10:  PAYLOAD[13] ;
  11:   ;
  12:  !Request Knife Repo ;
  13:  CALL REQ_KNIFE_AT_HM    ;
  14:   ;
  15:J P[1] 100% CNT100    ;
  16:J P[2] 100% CNT100    ;
  17:J P[3] 100% CNT100    ;
  18:J P[4] 100% CNT100    ;
  19:J P[29] 100% CNT50    ;
  20:   ;
  21:L P[27] 2000mm/sec CNT20    ;
  22:   ;
  23:  !Swipe1 ;
  24:L P[24] 500mm/sec FINE    ;
  25:L P[25] 500mm/sec FINE    ;
  26:   ;
  27:L P[26] 2000mm/sec CNT50    ;
  28:L P[13] 2000mm/sec CNT50    ;
  29:L P[14] 2000mm/sec CNT50    ;
  30:   ;
  31:  !Swipe2 ;
  32:L P[15] 2000mm/sec CNT10    ;
  33:L P[16] 500mm/sec FINE    ;
  34:L P[17] 500mm/sec FINE    ;
  35:L P[18] 500mm/sec FINE    ;
  36:L P[19] 500mm/sec FINE    ;
  37:L P[20] 500mm/sec FINE    ;
  38:L P[21] 500mm/sec FINE    ;
  39:   ;
  40:L P[22] 2000mm/sec CNT50    ;
  41:L P[23] 2000mm/sec CNT50    ;
  42:   ;
  43:  !Swipe3 ;
  44:L P[5] 1000mm/sec CNT50    ;
  45:L P[6] 500mm/sec FINE    ;
  46:L P[7] 500mm/sec FINE    ;
  47:L P[8] 500mm/sec FINE    ;
  48:L P[9] 500mm/sec FINE    ;
  49:L P[10] 500mm/sec FINE    ;
  50:   ;
  51:L P[31] 2000mm/sec CNT50    ;
  52:   ;
  53:  !Swipe3 ;
  54:L P[32] 500mm/sec FINE    ;
  55:L P[33] 500mm/sec FINE    ;
  56:L P[34] 500mm/sec FINE    ;
  57:L P[35] 500mm/sec FINE    ;
  58:L P[36] 500mm/sec FINE    ;
  59:L P[37] 500mm/sec FINE    ;
  60:   ;
  61:L P[38] 2000mm/sec CNT50    ;
  62:L P[39] 2000mm/sec CNT50    ;
  63:L P[48] 2000mm/sec CNT50    ;
  64:   ;
  65:J P[28] 100% CNT100    ;
  66:J P[12] 100% CNT100    ;
  67:J P[11] 100% CNT100    ;
  68:   ;
  69:  LBL[99:PROGRAM END] ;
  70:  END ;
  71:  CALL REQ_KNIFE_AT_HM    ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X =   663.381  mm,	Y = -2475.163  mm,	Z =  1063.155  mm,
	W =  -175.130 deg,	P =     -.502 deg,	R =   -86.319 deg
};
P[2]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X =  -604.581  mm,	Y = -2544.504  mm,	Z =  1559.696  mm,
	W =  -168.107 deg,	P =    -9.799 deg,	R =  -143.080 deg
};
P[3]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X = -1621.806  mm,	Y = -2697.372  mm,	Z =  1000.656  mm,
	W =  -171.245 deg,	P =    -9.020 deg,	R =  -179.167 deg
};
P[4]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X = -1888.202  mm,	Y = -2876.429  mm,	Z =   421.173  mm,
	W =  -176.315 deg,	P =   -29.621 deg,	R =  -176.218 deg
};
P[5]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X = -2396.369  mm,	Y = -2932.218  mm,	Z =   252.577  mm,
	W =  -175.800 deg,	P =   -24.721 deg,	R =   179.517 deg
};
P[6]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X = -2396.369  mm,	Y = -2971.336  mm,	Z =   252.577  mm,
	W =  -175.800 deg,	P =   -24.721 deg,	R =   179.517 deg
};
P[7]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X = -2396.369  mm,	Y = -2995.334  mm,	Z =   252.576  mm,
	W =  -175.800 deg,	P =   -24.721 deg,	R =   179.517 deg
};
P[8]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X = -2398.768  mm,	Y = -3019.334  mm,	Z =   243.457  mm,
	W =  -175.800 deg,	P =   -24.721 deg,	R =  -179.396 deg
};
P[9]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X = -2398.767  mm,	Y = -3052.931  mm,	Z =   243.457  mm,
	W =  -175.800 deg,	P =   -24.721 deg,	R =  -179.396 deg
};
P[10]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X = -2398.767  mm,	Y = -3073.091  mm,	Z =   243.457  mm,
	W =  -175.800 deg,	P =   -24.721 deg,	R =  -179.396 deg
};
P[11]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X =   663.381  mm,	Y = -2475.163  mm,	Z =  1063.155  mm,
	W =  -175.130 deg,	P =     -.502 deg,	R =   -86.319 deg
};
P[12]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X =  -431.801  mm,	Y = -2423.584  mm,	Z =  1438.822  mm,
	W =  -179.002 deg,	P =   -14.324 deg,	R =  -127.266 deg
};
P[13]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X = -2411.005  mm,	Y = -2687.890  mm,	Z =   331.778  mm,
	W =  -175.800 deg,	P =   -24.722 deg,	R =  -179.396 deg
};
P[14]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X = -2322.500  mm,	Y = -2671.997  mm,	Z =   308.100  mm,
	W =   178.343 deg,	P =   -30.409 deg,	R =   177.636 deg
};
P[15]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X = -2322.500  mm,	Y = -2683.036  mm,	Z =   308.100  mm,
	W =   178.343 deg,	P =   -30.409 deg,	R =   177.636 deg
};
P[16]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X = -2320.016  mm,	Y = -2696.818  mm,	Z =   303.042  mm,
	W =   178.343 deg,	P =   -30.409 deg,	R =   177.636 deg
};
P[17]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X = -2321.446  mm,	Y = -2722.415  mm,	Z =   302.402  mm,
	W =   178.343 deg,	P =   -30.409 deg,	R =   177.636 deg
};
P[18]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X = -2347.078  mm,	Y = -2746.991  mm,	Z =   274.612  mm,
	W =   178.343 deg,	P =   -30.409 deg,	R =  -173.837 deg
};
P[19]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X = -2346.891  mm,	Y = -2754.046  mm,	Z =   272.983  mm,
	W =   178.343 deg,	P =   -30.409 deg,	R =  -173.837 deg
};
P[20]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X = -2346.891  mm,	Y = -2769.166  mm,	Z =   272.982  mm,
	W =   178.343 deg,	P =   -30.409 deg,	R =  -173.837 deg
};
P[21]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X = -2347.080  mm,	Y = -2791.150  mm,	Z =   268.852  mm,
	W =   178.343 deg,	P =   -30.409 deg,	R =  -173.837 deg
};
P[22]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X = -2376.119  mm,	Y = -2791.149  mm,	Z =   268.854  mm,
	W =   178.343 deg,	P =   -30.409 deg,	R =  -173.837 deg
};
P[23]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X = -2367.678  mm,	Y = -2866.958  mm,	Z =   258.723  mm,
	W =   178.343 deg,	P =   -30.410 deg,	R =  -173.837 deg
};
P[24]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X = -2056.268  mm,	Y = -2919.515  mm,	Z =   161.419  mm,
	W =  -172.259 deg,	P =   -23.844 deg,	R =  -167.826 deg
};
P[25]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X = -2031.602  mm,	Y = -3009.561  mm,	Z =   173.009  mm,
	W =  -172.259 deg,	P =   -23.844 deg,	R =  -167.826 deg
};
P[26]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X = -1882.525  mm,	Y = -2951.317  mm,	Z =   336.193  mm,
	W =  -172.259 deg,	P =   -23.845 deg,	R =  -167.826 deg
};
P[27]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X = -2030.962  mm,	Y = -2919.108  mm,	Z =   163.452  mm,
	W =  -172.305 deg,	P =   -23.909 deg,	R =  -169.486 deg
};
P[28]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X = -1279.802  mm,	Y = -2611.327  mm,	Z =  1320.022  mm,
	W =  -167.850 deg,	P =   -30.197 deg,	R =  -162.228 deg
};
P[29]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X = -1988.365  mm,	Y = -2923.371  mm,	Z =   267.898  mm,
	W =  -177.321 deg,	P =   -30.197 deg,	R =  -171.004 deg
};
P[31]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X = -2319.375  mm,	Y = -3264.374  mm,	Z =   280.044  mm,
	W =  -176.077 deg,	P =   -30.410 deg,	R =  -173.837 deg
};
P[32]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X = -2298.479  mm,	Y = -3316.631  mm,	Z =   270.242  mm,
	W =  -176.077 deg,	P =   -30.410 deg,	R =  -173.836 deg
};
P[33]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X = -2298.479  mm,	Y = -3324.549  mm,	Z =   269.522  mm,
	W =  -176.077 deg,	P =   -30.410 deg,	R =  -173.837 deg
};
P[34]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X = -2298.478  mm,	Y = -3341.349  mm,	Z =   268.802  mm,
	W =  -176.077 deg,	P =   -30.410 deg,	R =  -173.836 deg
};
P[35]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X = -2298.478  mm,	Y = -3357.308  mm,	Z =   268.802  mm,
	W =  -176.077 deg,	P =   -30.410 deg,	R =  -173.836 deg
};
P[36]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X = -2298.478  mm,	Y = -3373.147  mm,	Z =   268.563  mm,
	W =  -174.666 deg,	P =   -30.534 deg,	R =  -174.552 deg
};
P[37]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X = -2326.703  mm,	Y = -3336.271  mm,	Z =   278.555  mm,
	W =  -176.077 deg,	P =   -30.410 deg,	R =  -173.837 deg
};
P[38]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X = -2321.302  mm,	Y = -3353.297  mm,	Z =   335.441  mm,
	W =  -174.583 deg,	P =   -35.801 deg,	R =  -174.428 deg
};
P[39]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X = -2274.474  mm,	Y = -3330.573  mm,	Z =   535.232  mm,
	W =  -174.583 deg,	P =   -35.801 deg,	R =  -174.428 deg
};
P[48]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X = -1927.551  mm,	Y = -2829.736  mm,	Z =   292.209  mm,
	W =  -173.251 deg,	P =   -27.692 deg,	R =  -170.013 deg
};
/END
