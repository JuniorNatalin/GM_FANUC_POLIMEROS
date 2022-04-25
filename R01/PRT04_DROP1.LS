/PROG  PRT04_DROP1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "ROBOT DROP 334";
PROG_SIZE	= 2080;
CREATE		= DATE 21-06-11  TIME 17:12:14;
MODIFIED	= DATE 21-06-11  TIME 17:12:14;
FILE_NAME	= PRT18DRO;
VERSION		= 0;
LINE_COUNT	= 59;
MEMORY_SIZE	= 2344;
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
  12:  Set MH Tool(6) ;
  13:   ;
  14:  UTOOL_NUM=2 ;
  15:  UFRAME_NUM=0 ;
  16:  PAYLOAD[5] ;
  17:   ;
  18:  ENTER I-ZONE(1) ;
  19:  ENTER I-ZONE(2) ;
  20:   ;
  21:J P[1] 100% CNT100    ;
  22:J P[2] 100% CNT100    ;
  23:J P[3] 100% CNT100    ;
  24:J P[4] 100% CNT100    ;
  25:J P[5] 100% CNT100    ;
  26:   ;
  27:L P[8:Abv Drop] 1000mm/sec CNT50    ;
  28:   ;
  29:  !Robot at conveyor ;
  30:L P[9:At Drop] 700mm/sec FINE    ;
  31:   ;
  32:  EXIT I-ZONE(1) ;
  33:   ;
  34:  !ROBOT WAITING R02 ;
  35:  REQUEST CONTINUE    ;
  36:   ;
  37:  !Robot Leavig The Drop Pos ;
  38:  SET SEGMENT(36) ;
  39:   ;
  40:  Release Part(5) ;
  41:   ;
  42:  VACUUM CAN 1 OFF(6,7) ;
  43:  PAYLOAD[4] ;
  44:   ;
  45:  !verify no part in tool ;
  46:L P[10] 800mm/sec CNT50    ;
  47:L P[11] 2000mm/sec CNT50    ;
  48:   ;
  49:J P[12] 100% CNT100    ;
  50:J P[13] 100% CNT100    ;
  51:J P[14] 100% FINE    ;
  52:   ;
  53:  EXIT I-ZONE(1) ;
  54:  EXIT I-ZONE(2) ;
  55:  !Robot clear of conveyor ;
  56:  SET SEGMENT(63) ;
  57:   ;
  58:J P[15] 100% CNT100    ;
  59:J P[16] 100% CNT100    ;
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
	X =    53.718  mm,	Y = -2475.188  mm,	Z =  1063.052  mm,
	W =  -175.130 deg,	P =     -.499 deg,	R =   -86.321 deg
};
P[3]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =    35.629  mm,	Y = -2419.370  mm,	Z =    79.679  mm,
	W =  -174.227 deg,	P =    14.603 deg,	R =   -86.717 deg
};
P[4]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =    55.013  mm,	Y = -2126.290  mm,	Z =  -888.903  mm,
	W =  -173.683 deg,	P =    14.219 deg,	R =   -86.360 deg
};
P[5]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =    55.013  mm,	Y = -2126.290  mm,	Z = -1013.703  mm,
	W =  -173.683 deg,	P =    14.219 deg,	R =   -86.360 deg
};
P[8:"Abv Drop"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =    55.013  mm,	Y = -2126.290  mm,	Z = -1184.102  mm,
	W =  -173.683 deg,	P =    14.219 deg,	R =   -86.360 deg
};
P[9:"At Drop"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =    62.226  mm,	Y = -1963.073  mm,	Z = -1316.106  mm,
	W =  -175.184 deg,	P =    -8.513 deg,	R =   -86.453 deg
};
P[10]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =    83.398  mm,	Y = -1963.035  mm,	Z = -1161.091  mm,
	W =  -175.182 deg,	P =    -8.510 deg,	R =   -86.453 deg
};
P[11]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =    62.277  mm,	Y = -1963.034  mm,	Z = -1014.692  mm,
	W =  -174.244 deg,	P =     3.367 deg,	R =   -86.518 deg
};
P[12]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =    40.495  mm,	Y = -1977.569  mm,	Z =  -790.618  mm,
	W =  -174.244 deg,	P =     3.367 deg,	R =   -86.518 deg
};
P[13]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =    62.278  mm,	Y = -2044.632  mm,	Z =  -490.051  mm,
	W =  -173.594 deg,	P =    13.798 deg,	R =   -86.420 deg
};
P[14]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =    62.278  mm,	Y = -2200.631  mm,	Z =   354.750  mm,
	W =  -173.594 deg,	P =    13.798 deg,	R =   -86.420 deg
};
P[15]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -605.411  mm,	Y = -2670.838  mm,	Z =  1674.957  mm,
	W =  -104.774 deg,	P =     2.920 deg,	R =  -172.524 deg
};
P[16]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1648.491  mm,	Y = -1969.720  mm,	Z =   542.781  mm,
	W =  -179.667 deg,	P =    10.058 deg,	R =   -61.175 deg
};
/END
