/PROG  PRT03_DROP
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "335";
PROG_SIZE	= 1942;
CREATE		= DATE 18-11-18  TIME 10:12:00;
MODIFIED	= DATE 19-03-05  TIME 11:04:16;
FILE_NAME	= PRT12_DR;
VERSION		= 0;
LINE_COUNT	= 56;
MEMORY_SIZE	= 2218;
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

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : TRUE;
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
  12:  Set MH Tool(2) ;
  13:   ;
  14:  !Place Part ;
  15:  UTOOL_NUM=2 ;
  16:  UFRAME_NUM=0 ;
  17:  PAYLOAD[3] ;
  18:   ;
  19:  ENTER I-ZONE(1) ;
  20:  ENTER I-ZONE(2) ;
  21:   ;
  22:J P[1] 100% CNT100    ;
  23:J P[2] 100% CNT100    ;
  24:J P[3] 100% CNT100    ;
  25:J P[4] 100% CNT100    ;
  26:   ;
  27:L P[5:Abv Drop] 500mm/sec CNT50    ;
  28:   ;
  29:  !Robot at conveyor ;
  30:L P[6:Drop_PRT_12] 300mm/sec FINE    ;
  31:   ;
  32:  Turn OFF Vacuum(6,7) ;
  33:   ;
  34:  PAYLOAD[2] ;
  35:   ;
  36:  !verify no part in tool ;
  37:L P[11] 500mm/sec FINE    ;
  38:   ;
  39:  REQUEST CONTINUE    ;
  40:   ;
  41:  !Robot clear of conveyor ;
  42:  SET SEGMENT(33) ;
  43:   ;
  44:J P[4] 100% CNT100    ;
  45:J P[3] 100% CNT100    ;
  46:J P[2] 100% CNT100    ;
  47:J P[7] 100% CNT100    ;
  48:J P[8] 100% CNT100    ;
  49:J P[9] 100% CNT100    ;
  50:J P[10] 100% CNT100    ;
  51:   ;
  52:  EXIT I-ZONE(1) ;
  53:  EXIT I-ZONE(2) ;
  54:   ;
  55:  !Robot clear of all ;
  56:  SET SEGMENT(63) ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   789.792  mm,	Y =   252.325  mm,	Z =  1692.901  mm,
	W =  -132.556 deg,	P =   -15.552 deg,	R =    -2.013 deg
};
P[2]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1182.474  mm,	Y =  -523.463  mm,	Z =  1795.089  mm,
	W =  -171.891 deg,	P =   -15.310 deg,	R =    -1.322 deg
};
P[3]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1161.184  mm,	Y =  -718.511  mm,	Z =  1362.852  mm,
	W =  -176.887 deg,	P =    -9.579 deg,	R =     -.715 deg
};
P[4]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1405.558  mm,	Y = -1087.453  mm,	Z =   996.436  mm,
	W =   179.492 deg,	P =    -4.340 deg,	R =      .755 deg
};
P[5:"Abv Drop"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1382.700  mm,	Y = -1085.007  mm,	Z =   539.770  mm,
	W =   178.184 deg,	P =   -14.554 deg,	R =     1.135 deg
};
P[6:"Drop_PRT_12"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1419.501  mm,	Y = -1089.880  mm,	Z =   363.169  mm,
	W =   178.077 deg,	P =   -22.314 deg,	R =      .658 deg
};
P[7]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   623.193  mm,	Y =   458.132  mm,	Z =  1676.334  mm,
	W =  -122.750 deg,	P =    22.624 deg,	R =   -71.321 deg
};
P[8]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   337.504  mm,	Y =   723.850  mm,	Z =  2196.500  mm,
	W =  -121.035 deg,	P =   -19.005 deg,	R =      .714 deg
};
P[9]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -360.724  mm,	Y =  1269.352  mm,	Z =  2187.499  mm,
	W =  -157.003 deg,	P =   -36.155 deg,	R =    78.238 deg
};
P[10]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1544.176  mm,	Y =  1312.796  mm,	Z =  1091.707  mm,
	W =   178.170 deg,	P =     3.650 deg,	R =   145.534 deg
};
P[11]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1419.501  mm,	Y = -1089.880  mm,	Z =   363.169  mm,
	W =   178.077 deg,	P =   -22.314 deg,	R =      .658 deg
};
/END
