/PROG  PRT38DROP1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "ROBOT DROP 373";
PROG_SIZE	= 2399;
CREATE		= DATE 22-03-15  TIME 08:42:38;
MODIFIED	= DATE 22-03-15  TIME 08:42:38;
FILE_NAME	= PRT38DRO;
VERSION		= 0;
LINE_COUNT	= 72;
MEMORY_SIZE	= 2739;
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
  29:  //DO[802:ON ]=OFF ;
  30:  //DO[801:OFF]=ON ;
  31:   ;
  32:  EXIT I-ZONE(1) ;
  33:  !ROBOT WAITING R02 ;
  34:  REQUEST CONTINUE    ;
  35:   ;
  36:  !Robot Leavig The Drop Pos ;
  37:  SET SEGMENT(36) ;
  38:   ;
  39:  Grip Part(1) ;
  40:  Release Part(5) ;
  41:  VACUUM CAN 1 OFF(6,7) ;
  42:   ;
  43:  DO[817:OFF]=OFF ;
  44:  DO[819:OFF]=OFF ;
  45:   ;
  46:  DO[818:OFF]=ON ;
  47:  DO[820:OFF]=ON ;
  48:  Release Part(2) ;
  49:  WAIT    .25(sec) ;
  50:  PAYLOAD[4] ;
  51:   ;
  52:  !verify no part in tool ;
  53:L P[5] 50mm/sec CNT50    ;
  54:J P[6] 100% CNT100    ;
  55:L P[7] 1800mm/sec CNT100    ;
  56:J P[8] 100% CNT100    ;
  57:J P[9] 100% CNT100    ;
  58:   ;
  59:  EXIT I-ZONE(1) ;
  60:  EXIT I-ZONE(2) ;
  61:  !Robot clear of conveyor ;
  62:  SET SEGMENT(63) ;
  63:   ;
  64:J P[10] 100% CNT100    ;
  65:J P[11] 100% CNT100    ;
  66:J P[12] 100% CNT100    ;
  67:J P[13] 80% CNT80    ;
  68:J P[14] 80% CNT80    ;
  69:J P[15] 100% CNT100    ;
  70:J P[16] 100% CNT100    ;
  71:J P[17] 100% CNT100    ;
  72:   ;
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
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, -1, 1',
	X =   830.838  mm,	Y = -1993.224  mm,	Z =   830.696  mm,
	W =   140.772 deg,	P =    43.293 deg,	R =    35.262 deg
};
P[14]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, -1, 1',
	X =  1089.413  mm,	Y = -2103.775  mm,	Z =   959.901  mm,
	W =   132.275 deg,	P =    10.813 deg,	R =    -2.316 deg
};
P[15]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	X =  2014.105  mm,	Y = -1953.902  mm,	Z =  1428.166  mm,
	W =   110.946 deg,	P =   -31.065 deg,	R =     1.276 deg
};
P[16]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  2652.177  mm,	Y =  -606.015  mm,	Z =  1309.164  mm,
	W =   135.522 deg,	P =   -43.017 deg,	R =    41.896 deg
};
P[17]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  2578.667  mm,	Y =    17.278  mm,	Z =   923.374  mm,
	W =   177.124 deg,	P =   -23.581 deg,	R =    30.021 deg
};
/END
