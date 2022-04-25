/PROG  PRT12DROP1
/ATTR
OWNER		= SHIFT;
COMMENT		= "ROBOT DROP 332";
PROG_SIZE	= 2024;
CREATE		= DATE 18-08-25  TIME 12:42:44;
MODIFIED	= DATE 19-03-04  TIME 15:04:26;
FILE_NAME	= PRT06DRO;
VERSION		= 0;
LINE_COUNT	= 56;
MEMORY_SIZE	= 2300;
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
   6:  SET SEGMENT(32) ;
   7:   ;
   8:  !******IMPORTANT************ ;
   9:  !for MH tool changers ;
  10:  !make sure Set MH TOOL(AR) ;
  11:  !matches tool number ;
  12:  Set MH Tool(12) ;
  13:   ;
  14:  UTOOL_NUM=12 ;
  15:  UFRAME_NUM=0 ;
  16:  PAYLOAD[13] ;
  17:  ENTER I-ZONE(1) ;
  18:  ENTER I-ZONE(2) ;
  19:   ;
  20:J P[14] 100% CNT100    ;
  21:J P[1] 100% CNT100    ;
  22:J P[2] 100% CNT100    ;
  23:J P[3] 100% CNT100    ;
  24:   ;
  25:L P[4:Abv Drop] 1000mm/sec CNT50    ;
  26:   ;
  27:  !Robot at conveyor ;
  28:L P[5:At Drop] 100mm/sec FINE    ;
  29:   ;
  30:  Release Part(5) ;
  31:   ;
  32:  VACUUM CAN 1 OFF(6,7) ;
  33:  PAYLOAD[12] ;
  34:   ;
  35:  !verify no part in tool ;
  36:L P[6] 500mm/sec FINE    ;
  37:   ;
  38:  REQUEST CONTINUE    ;
  39:   ;
  40:  !Robot clear of conveyor ;
  41:  SET SEGMENT(33) ;
  42:   ;
  43:L P[7] 2000mm/sec CNT100    ;
  44:   ;
  45:J P[8] 100% CNT100    ;
  46:J P[9] 100% CNT100    ;
  47:J P[10] 100% CNT100    ;
  48:J P[11] 100% CNT100    ;
  49:J P[12] 100% CNT100    ;
  50:J P[13] 100% FINE    ;
  51:   ;
  52:  EXIT I-ZONE(1) ;
  53:  EXIT I-ZONE(1) ;
  54:   ;
  55:  !Robot clear of all ;
  56:  SET SEGMENT(63) ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X = -1256.656  mm,	Y = -2889.285  mm,	Z =  -132.490  mm,
	W =  -179.451 deg,	P =     1.170 deg,	R =  -174.056 deg
};
P[2]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X = -1566.258  mm,	Y = -2699.123  mm,	Z = -1219.874  mm,
	W =  -177.644 deg,	P =    -8.522 deg,	R =  -177.451 deg
};
P[3]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X = -1767.275  mm,	Y = -2576.539  mm,	Z = -1702.233  mm,
	W =  -176.511 deg,	P =    -2.325 deg,	R =  -176.333 deg
};
P[4:"Abv Drop"]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X = -1856.205  mm,	Y = -2592.116  mm,	Z = -1792.983  mm,
	W =  -175.452 deg,	P =     -.019 deg,	R =  -176.641 deg
};
P[5:"At Drop"]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X = -1856.205  mm,	Y = -2592.116  mm,	Z = -2060.583  mm,
	W =  -175.452 deg,	P =     -.019 deg,	R =  -176.640 deg
};
P[6]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X = -1856.205  mm,	Y = -2592.116  mm,	Z = -1792.983  mm,
	W =  -175.452 deg,	P =     -.019 deg,	R =  -176.641 deg
};
P[7]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X = -1823.657  mm,	Y = -2597.457  mm,	Z = -1596.826  mm,
	W =  -176.511 deg,	P =    -2.325 deg,	R =  -176.332 deg
};
P[8]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X = -1443.955  mm,	Y = -3013.243  mm,	Z =  -783.794  mm,
	W =   178.525 deg,	P =    -9.893 deg,	R =  -160.854 deg
};
P[9]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X =  -733.124  mm,	Y = -3194.134  mm,	Z =   -30.989  mm,
	W =   175.360 deg,	P =    -6.703 deg,	R =  -142.121 deg
};
P[10]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X =  -446.904  mm,	Y = -2879.351  mm,	Z =   212.489  mm,
	W =   175.570 deg,	P =    -4.290 deg,	R =  -133.588 deg
};
P[11]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X =   802.995  mm,	Y = -2498.405  mm,	Z =   502.419  mm,
	W =   179.150 deg,	P =     8.897 deg,	R =   -86.469 deg
};
P[12]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X =  2354.837  mm,	Y =  -800.993  mm,	Z =   605.255  mm,
	W =  -177.770 deg,	P =    11.110 deg,	R =   -25.039 deg
};
P[13]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X =  2417.461  mm,	Y =   133.004  mm,	Z =   520.409  mm,
	W =  -176.136 deg,	P =    15.400 deg,	R =      .533 deg
};
P[14]{
   GP1:
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X =   663.381  mm,	Y = -2475.163  mm,	Z =  1063.155  mm,
	W =  -175.130 deg,	P =     -.502 deg,	R =   -86.319 deg
};
/END
