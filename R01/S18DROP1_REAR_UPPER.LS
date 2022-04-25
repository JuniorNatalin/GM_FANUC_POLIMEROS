/PROG  S18DROP1_REAR_UPPER
/ATTR
OWNER		= simulati;
COMMENT		= "s18drop1_Rear_Up";
PROG_SIZE	= 2362;
CREATE		= DATE 01-11-04  TIME 19:12:28;
MODIFIED	= DATE 22-01-22  TIME 10:57:16;
FILE_NAME	= S18DROP1;
VERSION		= 0;
LINE_COUNT	= 68;
MEMORY_SIZE	= 2718;
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
/MN
   1:  !******************************** ;
   2:  !GENERAL MOTORS ;
   3:  !ROBOT: KM3200_1_R01 ;
   4:  !STYLE: 18 ;
   5:  !ASSEMBLY: REAR_FASCIA_UPPER ;
   6:  !******************************** ;
   7:  !PROCESS SIMULATE: v15.1 ;
   8:  !TEACH: Fanuc RJ v2.72 ;
   9:  !XML  : v8.3_R30iB_GM_global4 ;
  10:  !STUDY: JCCC1_FRONT_FASCIA_UPPER ;
  11:  !USER : HZFLTF ;
  12:  !DATE : 2021-11-04 ;
  13:  !******************************** ;
  14:   ;
  15:  !DROPOFF PART TO TOOL X ;
  16:  !******************************** ;
  17:   ;
  18:  !ASSIGN PATH SEGMENT VALUES ;
  19:  SET SEGMENT(30) ;
  20:  !SET SEGMENT(30), Drop1 ;
  21:  !SET SEGMENT(34), Drop2 ;
  22:  !SET SEGMENT(38), Drop3 ;
  23:  !SET SEGMENT(42), Drop4 ;
  24:  !SET SEGMENT(46), Drop5 ;
  25:   ;
  26:  !*******IMPORTANT************ ;
  27:  !for MH tool changers ;
  28:  !make sure Set MH TOOL(AR) ;
  29:  !matches tool number ;
  30:   ;
  31:  Set MH Tool(1) ;
  32:   ;
  33:  !MOVE TO DROPOFF TOOL X ;
  34:   ;
  35:  UFRAME_NUM=0 ;
  36:  UTOOL_NUM=2 ;
  37:J P[1] 100% FINE    ;
  38:J P[2] 100% FINE    ;
  39:J P[3:PLACE3] 100% FINE    ;
  40:  Release Part(1) ;
  41:  PAYLOAD[1] ;
  42:  REQUEST CONTINUE    ;
  43:  !PATH SEGMENT ;
  44:  SET SEGMENT(0) ;
  45:J P[4] 100% FINE    ;
  46:  !CHECK NOPART IN EOAT ;
  47:  Check No Part(0) ;
  48:   ;
  49:  REQUEST CONTINUE    ;
  50:  SET SEGMENT(32) ;
  51:  !SET SEGMENT(32), Drop1 ;
  52:  !SET SEGMENT(36), Drop2 ;
  53:  !SET SEGMENT(40), Drop3 ;
  54:  !SET SEGMENT(44), Drop4 ;
  55:  !SET SEGMENT(48), Drop5 ;
  56:   ;
  57:J P[5] 100% FINE    ;
  58:J P[6] 100% CNT100    ;
  59:  !CLEAR OF TOOL X DROPOFF ;
  60:   ;
  61:  SET SEGMENT(33) ;
  62:  !SET SEGMENT(33), Drop1 ;
  63:  !SET SEGMENT(37), Drop2 ;
  64:  !SET SEGMENT(41), Drop3 ;
  65:  !SET SEGMENT(45), Drop4 ;
  66:  !SET SEGMENT(49), Drop5 ;
  67:   ;
  68:  !MOVE TOWARDS HOME ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1815.624  mm,	Y = -2246.637  mm,	Z =   375.786  mm,
	W =    81.362 deg,	P =    10.259 deg,	R =   -77.136 deg
};
P[2]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1634.271  mm,	Y = -2239.883  mm,	Z =   652.601  mm,
	W =    81.362 deg,	P =    10.259 deg,	R =   -77.136 deg
};
P[3:"PLACE3"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	X = -1640.193  mm,	Y = -2449.697  mm,	Z =   276.026  mm,
	W =  -179.955 deg,	P =     -.530 deg,	R =     -.121 deg
};
P[4]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	X =  -921.857  mm,	Y = -2557.977  mm,	Z =   562.336  mm,
	W =  -177.350 deg,	P =     5.674 deg,	R =   -95.474 deg
};
P[5]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, 1, -1',
	X =   -40.488  mm,	Y = -1857.636  mm,	Z =   577.779  mm,
	W =   179.924 deg,	P =    14.537 deg,	R =   -91.974 deg
};
P[6]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1857.838  mm,	Y =    29.844  mm,	Z =   577.779  mm,
	W =   179.924 deg,	P =    14.537 deg,	R =      .195 deg
};
/END
