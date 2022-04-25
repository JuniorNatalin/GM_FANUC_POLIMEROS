/PROG  PRT38DROP1_BKP
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "ROBOT DROP 373";
PROG_SIZE	= 2161;
CREATE		= DATE 21-08-09  TIME 14:07:06;
MODIFIED	= DATE 21-08-09  TIME 14:07:06;
FILE_NAME	= PRT38DRO;
VERSION		= 0;
LINE_COUNT	= 60;
MEMORY_SIZE	= 2421;
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
  12:  Set MH Tool(7) ;
  13:   ;
  14:  UTOOL_NUM=2 ;
  15:  UFRAME_NUM=0 ;
  16:  PAYLOAD[15] ;
  17:   ;
  18:  EXIT I-ZONE(1) ;
  19:  EXIT I-ZONE(2) ;
  20:   ;
  21:J P[1] 100% CNT100    ;
  22:J P[2] 100% CNT100    ;
  23:L P[3:Abv Drop] 2000mm/sec CNT50    ;
  24:   ;
  25:  !Robot TOOL HAND   ;
  26:L P[4:At Drop] 2000mm/sec FINE    ;
  27:  Release Part(2) ;
  28:   ;
  29:  EXIT I-ZONE(1) ;
  30:  !ROBOT WAITING R02 ;
  31:  REQUEST CONTINUE    ;
  32:   ;
  33:  !Robot Leavig The Drop Pos ;
  34:  SET SEGMENT(36) ;
  35:   ;
  36:  Grip Part(1) ;
  37:  Release Part(5) ;
  38:  VACUUM CAN 1 OFF(6,7) ;
  39:  Release Part(2) ;
  40:   ;
  41:  PAYLOAD[4] ;
  42:   ;
  43:  !verify no part in tool ;
  44:L P[5] 50mm/sec CNT50    ;
  45:J P[6] 70% CNT100    ;
  46:L P[7] 1800mm/sec CNT100    ;
  47:J P[8] 100% CNT100    ;
  48:J P[9] 100% CNT100    ;
  49:   ;
  50:  EXIT I-ZONE(1) ;
  51:  EXIT I-ZONE(2) ;
  52:  !Robot clear of conveyor ;
  53:  SET SEGMENT(63) ;
  54:   ;
  55:J P[10] 100% CNT100    ;
  56:J P[11] 100% CNT100    ;
  57:J P[12] 100% CNT100    ;
  58:J P[13] 100% CNT100    ;
  59:J P[14] 100% CNT100    ;
  60:J P[15] 100% CNT100    ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	X =  -962.191  mm,	Y = -2203.687  mm,	Z =   356.627  mm,
	W =   -83.063 deg,	P =      .956 deg,	R =   122.946 deg
};
P[2]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	X =   170.609  mm,	Y = -2203.687  mm,	Z =   356.627  mm,
	W =   -83.063 deg,	P =      .956 deg,	R =   122.946 deg
};
P[3:"Abv Drop"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	X =   170.608  mm,	Y = -1620.491  mm,	Z =  -384.973  mm,
	W =   -83.063 deg,	P =      .956 deg,	R =   122.946 deg
};
P[4:"At Drop"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	X =  -455.203  mm,	Y = -1657.084  mm,	Z = -1265.711  mm,
	W =   -85.246 deg,	P =     2.100 deg,	R =   143.548 deg
};
P[5]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, 1, 0',
	X =  -439.803  mm,	Y = -1632.352  mm,	Z = -1275.524  mm,
	W =   -86.381 deg,	P =     1.074 deg,	R =   143.540 deg
};
P[6]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, 1, 0',
	X =  -385.575  mm,	Y = -1594.717  mm,	Z = -1291.057  mm,
	W =   -86.053 deg,	P =     1.007 deg,	R =   141.670 deg
};
P[7]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	X =  -376.834  mm,	Y = -1480.863  mm,	Z = -1276.403  mm,
	W =   -86.403 deg,	P =     1.235 deg,	R =   120.972 deg
};
P[8]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, 1, 0',
	X =  -296.432  mm,	Y = -1393.029  mm,	Z = -1271.362  mm,
	W =   -86.758 deg,	P =     1.575 deg,	R =    91.370 deg
};
P[9]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	X =   417.698  mm,	Y = -1364.708  mm,	Z = -1316.494  mm,
	W =   -86.758 deg,	P =     1.575 deg,	R =    91.369 deg
};
P[10]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	X =   416.770  mm,	Y = -1408.323  mm,	Z = -1323.811  mm,
	W =  -175.895 deg,	P =     1.394 deg,	R =    88.575 deg
};
P[11]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	X =   504.913  mm,	Y = -1422.160  mm,	Z =  -174.570  mm,
	W =  -175.895 deg,	P =     1.394 deg,	R =    88.575 deg
};
P[12]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	X =   -17.917  mm,	Y = -1703.562  mm,	Z =   811.353  mm,
	W =  -179.015 deg,	P =    26.368 deg,	R =    86.960 deg
};
P[13]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	X =   784.180  mm,	Y = -2436.940  mm,	Z =  1452.541  mm,
	W =   -81.542 deg,	P =    37.426 deg,	R =  -159.341 deg
};
P[14]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  2390.404  mm,	Y = -1506.064  mm,	Z =  1762.912  mm,
	W =   -89.511 deg,	P =   -18.022 deg,	R =   -88.907 deg
};
P[15]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  2398.843  mm,	Y =   253.291  mm,	Z =   509.955  mm,
	W =  -175.867 deg,	P =    15.933 deg,	R =     3.913 deg
};
/END
