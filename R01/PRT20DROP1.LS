/PROG  PRT20DROP1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "ROBOT DROP 300";
PROG_SIZE	= 2609;
CREATE		= DATE 19-12-16  TIME 15:06:54;
MODIFIED	= DATE 20-04-17  TIME 09:58:44;
FILE_NAME	= PRT05DRO;
VERSION		= 0;
LINE_COUNT	= 70;
MEMORY_SIZE	= 2957;
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
   1:  !******************************** ;
   2:  !DROPOFF PART TO CONVEYOR ;
   3:  !******************************** ;
   4:   ;
   5:  !ASSIGN PATH SEGEMENT VALUES ;
   6:  SET SEGMENT(35) ;
   7:   ;
   8:  !******IMPORTANT************ ;
   9:  !for MH tool changers ;
  10:  !make sure Set MH TOOL(AR) ;
  11:  !matches tool number ;
  12:  Set MH Tool(5) ;
  13:   ;
  14:  UTOOL_NUM=2 ;
  15:  UFRAME_NUM=0 ;
  16:  PAYLOAD[5] ;
  17:   ;
  18:  ENTER I-ZONE(1) ;
  19:  ENTER I-ZONE(2) ;
  20:   ;
  21:J P[1] 100% CNT100    ;
  22:  //J P[3] 100% CNT100    ;
  23:  //J P[4] 100% CNT100    ;
  24:  //J P[5] 100% CNT100    ;
  25:  //J P[6] 100% CNT100    ;
  26:  //J P[7] 100% CNT100    ;
  27:  //L P[2] 1000mm/sec CNT100    ;
  28:   ;
  29:L P[11] 1000mm/sec CNT100    ;
  30:  //L P[20] 1000mm/sec CNT100    ;
  31:  //L P[12] 500mm/sec FINE    ;
  32:  //L P[21] 2000mm/sec FINE    ;
  33:   ;
  34:L P[22] 2000mm/sec FINE    ;
  35:L P[23] 1000mm/sec FINE    ;
  36:   ;
  37:   ;
  38:  //L P[8:Abv Drop] 1000mm/sec CNT50    ;
  39:   ;
  40:  !Robot at conveyor ;
  41:  //L P[9:At Drop] 1000mm/sec FINE    ;
  42:   ;
  43:  EXIT I-ZONE(1) ;
  44:   ;
  45:  !ROBOT WAITING R02 ;
  46:  REQUEST CONTINUE    ;
  47:   ;
  48:  !Robot Leavig The Drop Pos ;
  49:  SET SEGMENT(36) ;
  50:   ;
  51:  Release Part(5) ;
  52:   ;
  53:  VACUUM CAN 1 OFF(6,7) ;
  54:  PAYLOAD[4] ;
  55:   ;
  56:  !verify no part in tool ;
  57:L P[17] 200mm/sec FINE    ;
  58:L P[18] 2000mm/sec CNT50    ;
  59:L P[10] 200mm/sec CNT50    ;
  60:   ;
  61:J P[13] 100% CNT100    ;
  62:J P[14] 100% FINE    ;
  63:   ;
  64:  EXIT I-ZONE(1) ;
  65:  EXIT I-ZONE(2) ;
  66:  !Robot clear of conveyor ;
  67:  SET SEGMENT(63) ;
  68:J P[19] 100% CNT100    ;
  69:J P[15] 100% CNT100    ;
  70:J P[16] 100% CNT100    ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   663.372  mm,	Y = -2475.175  mm,	Z =  1063.050  mm,
	W =  -175.130 deg,	P =     -.498 deg,	R =   -86.320 deg
};
P[2]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   651.370  mm,	Y = -2335.982  mm,	Z =    65.320  mm,
	W =  -175.131 deg,	P =     -.497 deg,	R =   -86.320 deg
};
P[3]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   -38.633  mm,	Y = -2560.737  mm,	Z =  1189.137  mm,
	W =  -156.929 deg,	P =    -6.621 deg,	R =  -114.565 deg
};
P[4]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -436.063  mm,	Y = -2540.029  mm,	Z =  1696.532  mm,
	W =   -90.670 deg,	P =    27.096 deg,	R =  -159.522 deg
};
P[5]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -433.264  mm,	Y = -1700.427  mm,	Z =   942.204  mm,
	W =  -178.402 deg,	P =    14.938 deg,	R =    91.637 deg
};
P[6]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -395.115  mm,	Y = -1367.021  mm,	Z =   212.878  mm,
	W =  -174.000 deg,	P =    -6.782 deg,	R =    91.253 deg
};
P[7]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -403.278  mm,	Y = -1353.336  mm,	Z =  -418.040  mm,
	W =  -173.323 deg,	P =    -2.488 deg,	R =    94.810 deg
};
P[8:"Abv Drop"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =  -453.419  mm,	Y = -1339.172  mm,	Z = -1083.833  mm,
	W =  -173.484 deg,	P =     6.447 deg,	R =    92.265 deg
};
P[9:"At Drop"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   190.444  mm,	Y = -2008.532  mm,	Z = -1419.576  mm,
	W =  -176.901 deg,	P =    10.853 deg,	R =   -91.027 deg
};
P[10]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   140.897  mm,	Y = -1853.642  mm,	Z =  -764.261  mm,
	W =  -176.080 deg,	P =    20.071 deg,	R =   -87.162 deg
};
P[11]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   673.403  mm,	Y = -2387.924  mm,	Z =  -121.426  mm,
	W =  -176.176 deg,	P =     9.592 deg,	R =   -84.596 deg
};
P[12]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   683.541  mm,	Y = -2438.475  mm,	Z = -1075.795  mm,
	W =  -176.476 deg,	P =    12.405 deg,	R =   -84.653 deg
};
P[13]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   140.898  mm,	Y = -1853.642  mm,	Z =   301.341  mm,
	W =  -174.993 deg,	P =    37.706 deg,	R =   -86.630 deg
};
P[14]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   457.697  mm,	Y = -1853.642  mm,	Z =   301.340  mm,
	W =  -172.121 deg,	P =    37.327 deg,	R =   -84.877 deg
};
P[15]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  2351.440  mm,	Y =  -302.302  mm,	Z =   439.164  mm,
	W =  -174.499 deg,	P =     9.226 deg,	R =    -9.909 deg
};
P[16]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  2398.843  mm,	Y =   253.291  mm,	Z =   509.955  mm,
	W =  -175.867 deg,	P =    15.933 deg,	R =     3.913 deg
};
P[17]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   140.897  mm,	Y = -1853.642  mm,	Z =  -961.061  mm,
	W =  -176.786 deg,	P =     5.750 deg,	R =   -87.321 deg
};
P[18]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   140.897  mm,	Y = -1853.642  mm,	Z =  -961.061  mm,
	W =  -176.080 deg,	P =    20.071 deg,	R =   -87.162 deg
};
P[19]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1855.972  mm,	Y = -1475.136  mm,	Z =   439.164  mm,
	W =  -174.499 deg,	P =     9.226 deg,	R =   -41.061 deg
};
P[20]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   656.239  mm,	Y = -2166.191  mm,	Z =    45.489  mm,
	W =  -175.355 deg,	P =    12.121 deg,	R =   -85.317 deg
};
P[21]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   179.027  mm,	Y = -2225.836  mm,	Z = -1014.723  mm,
	W =  -179.377 deg,	P =    11.220 deg,	R =   -91.492 deg
};
P[22]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   179.027  mm,	Y = -1873.036  mm,	Z = -1014.723  mm,
	W =  -175.116 deg,	P =    11.301 deg,	R =   -90.659 deg
};
P[23]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   140.897  mm,	Y = -1853.642  mm,	Z = -1033.062  mm,
	W =  -176.786 deg,	P =     5.750 deg,	R =   -87.321 deg
};
/END
