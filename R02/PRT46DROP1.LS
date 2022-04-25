/PROG  PRT46DROP1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "s18drop1";
PROG_SIZE	= 2986;
CREATE		= DATE 22-02-19  TIME 08:15:28;
MODIFIED	= DATE 22-04-15  TIME 18:12:04;
FILE_NAME	= S18DROP1;
VERSION		= 0;
LINE_COUNT	= 87;
MEMORY_SIZE	= 3274;
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
   3:  !ROBOT: KM3200_M01_R02 ;
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
  19:  SET SEGMENT(27) ;
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
  31:   ;
  32:  !MOVE TO DROPOFF TOOL X ;
  33:   ;
  34:  UFRAME_NUM=0 ;
  35:  UTOOL_NUM=1 ;
  36:J P[1] 100% CNT30    ;
  37:  CALL CLS_VLE1    ;
  38:J P[3] 100% CNT40    ;
  39:J P[17] 100% CNT100    ;
  40:J P[16] 100% CNT100    ;
  41:J P[15] 100% CNT60    ;
  42:J P[5] 100% CNT40    ;
  43:   ;
  44:J P[8:PLACE] 100% FINE ACC30    ;
  45:   ;
  46:  PAYLOAD[1] ;
  47:   ;
  48:  DO[817]=PULSE,1.0sec ;
  49:  DO[819]=PULSE,1.0sec ;
  50:   ;
  51:  DO[818]=PULSE,2.0sec ;
  52:  DO[820]=PULSE,2.0sec ;
  53:  WAIT   2.00(sec) ;
  54:   ;
  55:J P[9] 100% CNT30    ;
  56:  !CHECK NOPART IN EOAT ;
  57:   ;
  58:  SET SEGMENT(33) ;
  59:  REQUEST CONTINUE    ;
  60:  !SET SEGMENT(32), Drop1 ;
  61:  !SET SEGMENT(36), Drop2 ;
  62:  !SET SEGMENT(40), Drop3 ;
  63:  !SET SEGMENT(44), Drop4 ;
  64:  !SET SEGMENT(48), Drop5 ;
  65:   ;
  66:J P[10] 100% CNT50    ;
  67:J P[11] 100% CNT100    ;
  68:J P[2] 100% CNT100    ;
  69:   ;
  70:J P[4] 100% CNT100    ;
  71:   ;
  72:J P[6] 100% CNT100    ;
  73:J P[7] 100% CNT100    ;
  74:J P[12] 100% CNT100    ;
  75:J P[13] 100% CNT100    ;
  76:  EXIT I-ZONE(2) ;
  77:   ;
  78:  !CLEAR OF TOOL X DROPOFF ;
  79:   ;
  80:  SET SEGMENT(63) ;
  81:  !SET SEGMENT(33), Drop1 ;
  82:  !SET SEGMENT(37), Drop2 ;
  83:  !SET SEGMENT(41), Drop3 ;
  84:  !SET SEGMENT(45), Drop4 ;
  85:  !SET SEGMENT(49), Drop5 ;
  86:   ;
  87:  !MOVE TOWARDS HOME ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   403.245  mm,	Y =   832.404  mm,	Z =  1623.893  mm,
	W =  -125.587 deg,	P =   -12.891 deg,	R =   -48.297 deg
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   986.119  mm,	Y =  -317.874  mm,	Z =  1334.786  mm,
	W =   163.985 deg,	P =   -20.638 deg,	R =    50.253 deg
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   189.694  mm,	Y =   300.567  mm,	Z =  1449.337  mm,
	W =  -166.850 deg,	P =   -31.391 deg,	R =    21.711 deg
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   189.694  mm,	Y =   300.567  mm,	Z =  1449.337  mm,
	W =  -166.850 deg,	P =   -31.391 deg,	R =    21.711 deg
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1655.289  mm,	Y =  -787.534  mm,	Z =   781.439  mm,
	W =  -176.126 deg,	P =    39.740 deg,	R =    -1.657 deg
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   403.245  mm,	Y =   832.404  mm,	Z =  1623.893  mm,
	W =  -125.587 deg,	P =   -12.891 deg,	R =   -48.297 deg
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   810.792  mm,	Y =  1091.267  mm,	Z =  1615.527  mm,
	W =  -132.526 deg,	P =     1.803 deg,	R =   -67.923 deg
};
P[8:"PLACE"]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1717.249  mm,	Y =  -781.842  mm,	Z =   530.602  mm,
	W =   178.619 deg,	P =    41.648 deg,	R =    -3.271 deg
};
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1655.289  mm,	Y =  -787.534  mm,	Z =   781.439  mm,
	W =  -176.126 deg,	P =    39.740 deg,	R =    -1.657 deg
};
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1310.915  mm,	Y =  -787.503  mm,	Z =   982.411  mm,
	W =  -175.735 deg,	P =    27.702 deg,	R =    -1.438 deg
};
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   987.068  mm,	Y =  -608.097  mm,	Z =  1250.821  mm,
	W =   179.409 deg,	P =    13.932 deg,	R =     2.620 deg
};
P[12]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -493.950  mm,	Y =   957.033  mm,	Z =  1377.596  mm,
	W =  -135.311 deg,	P =   -11.955 deg,	R =    10.116 deg
};
P[13]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -717.445  mm,	Y =   958.182  mm,	Z =  1430.444  mm,
	W =  -159.059 deg,	P =   -26.024 deg,	R =    60.737 deg
};
P[15]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1310.888  mm,	Y =  -787.533  mm,	Z =   982.440  mm,
	W =  -175.736 deg,	P =    27.701 deg,	R =    -1.439 deg
};
P[16]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   987.068  mm,	Y =  -608.097  mm,	Z =  1250.821  mm,
	W =   179.409 deg,	P =    13.932 deg,	R =     2.620 deg
};
P[17]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   986.119  mm,	Y =  -317.874  mm,	Z =  1334.786  mm,
	W =   163.985 deg,	P =   -20.638 deg,	R =    50.253 deg
};
/END
