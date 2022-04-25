/PROG  PRT31DROP1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "ROBOT DROP 383";
PROG_SIZE	= 1815;
CREATE		= DATE 20-12-08  TIME 20:52:20;
MODIFIED	= DATE 20-12-08  TIME 20:59:08;
FILE_NAME	= PRT31DRO;
VERSION		= 0;
LINE_COUNT	= 49;
MEMORY_SIZE	= 2119;
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
  12:  Set MH Tool(9) ;
  13:   ;
  14:  UTOOL_NUM=9 ;
  15:  UFRAME_NUM=0 ;
  16:  PAYLOAD[9] ;
  17:   ;
  18:J P[3] 100% CNT100    ;
  19:   ;
  20:L P[14] 2000mm/sec CNT50    ;
  21:L P[4:Abv Drop] 1000mm/sec CNT50    ;
  22:   ;
  23:L P[5:At Drop] 500mm/sec FINE    ;
  24:L P[2] 500mm/sec FINE    ;
  25:  !ROBOT WAITING R02 ;
  26:   ;
  27:  !Robot Leavig The Drop Pos ;
  28:   ;
  29:  Release Part(5) ;
  30:   ;
  31:  VACUUM CAN 1 OFF(6,7) ;
  32:  PAYLOAD[8] ;
  33:  REQUEST CONTINUE    ;
  34:  SET SEGMENT(33) ;
  35:   ;
  36:  !verify no part in tool ;
  37:L P[6] 1200mm/sec CNT50    ;
  38:   ;
  39:  !Robot clear of conveyor ;
  40:   ;
  41:L P[7] 2000mm/sec CNT100    ;
  42:   ;
  43:J P[11] 100% CNT100    ;
  44:J P[12] 100% CNT100    ;
  45:J P[13] 100% FINE    ;
  46:J P[1] 100% FINE    ;
  47:   ;
  48:  !Robot clear of all ;
  49:  SET SEGMENT(63) ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X =  2754.897  mm,	Y = -1976.099  mm,	Z =   142.556  mm,
	W =  -168.060 deg,	P =     3.313 deg,	R =   -66.710 deg
};
P[2]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -2252.434  mm,	Y = -2496.333  mm,	Z = -1965.000  mm,
	W =  -169.496 deg,	P =    11.967 deg,	R =  -154.514 deg
};
P[3]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X =   695.041  mm,	Y = -2763.157  mm,	Z =   860.255  mm,
	W =  -157.793 deg,	P =    -4.457 deg,	R =  -159.977 deg
};
P[4:"Abv Drop"]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1889.761  mm,	Y = -2570.885  mm,	Z = -1591.839  mm,
	W =  -174.644 deg,	P =    20.736 deg,	R =  -175.086 deg
};
P[5:"At Drop"]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -2252.652  mm,	Y = -2532.057  mm,	Z = -1975.357  mm,
	W =  -175.014 deg,	P =    15.084 deg,	R =  -177.815 deg
};
P[6]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -2156.532  mm,	Y = -2514.195  mm,	Z = -1780.904  mm,
	W =  -175.014 deg,	P =    15.084 deg,	R =  -177.815 deg
};
P[7]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1582.236  mm,	Y = -2691.694  mm,	Z = -1432.899  mm,
	W =  -171.413 deg,	P =    13.395 deg,	R =  -163.254 deg
};
P[11]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1641.453  mm,	Y = -2820.951  mm,	Z =  -994.582  mm,
	W =  -170.455 deg,	P =    12.736 deg,	R =  -159.016 deg
};
P[12]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X =  -578.821  mm,	Y = -3198.664  mm,	Z =  -459.742  mm,
	W =  -172.817 deg,	P =    11.626 deg,	R =  -132.600 deg
};
P[13]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X =  1226.909  mm,	Y = -3160.557  mm,	Z =   142.556  mm,
	W =  -168.060 deg,	P =     3.313 deg,	R =   -99.842 deg
};
P[14]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X =  -867.923  mm,	Y = -2780.341  mm,	Z =  -247.876  mm,
	W =  -174.644 deg,	P =    20.736 deg,	R =  -175.086 deg
};
/END
