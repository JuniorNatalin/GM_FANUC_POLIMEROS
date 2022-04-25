/PROG  S17DROP1
/ATTR
OWNER		= simulati;
COMMENT		= "s18drop1";
PROG_SIZE	= 2351;
CREATE		= DATE 01-11-04  TIME 19:19:12;
MODIFIED	= DATE 22-02-12  TIME 11:53:32;
FILE_NAME	= S18DROP1;
VERSION		= 0;
LINE_COUNT	= 73;
MEMORY_SIZE	= 2727;
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
  36:  UTOOL_NUM=1 ;
  37:   ;
  38:   ;
  39:  //J P[2] 100% CNT100    ;
  40:J P[3] 100% CNT100    ;
  41:J P[4:PLACE3] 100% FINE    ;
  42:   ;
  43:  Release Part(1) ;
  44:  PAYLOAD[1] ;
  45:  REQUEST CONTINUE    ;
  46:   ;
  47:  CALL OPN_VLE1    ;
  48:  CALL OPN_VLE2    ;
  49:  CALL OPN_VLE3    ;
  50:  CALL OPN_VLE4    ;
  51:  CALL OPN_VLE5    ;
  52:  DO[818:OFF]=PULSE,1.0sec ;
  53:  DO[820:OFF]=PULSE,1.0sec ;
  54:   ;
  55:   ;
  56:  //Turn OFF Vacuum(1) ;
  57:  !PATH SEGMENT ;
  58:  SET SEGMENT(0) ;
  59:L P[5] 300mm/sec CNT10    ;
  60:J P[7] 100% CNT20    ;
  61:J P[8] 100% CNT100    ;
  62:J P[6] 100% FINE    ;
  63:   ;
  64:  !CLEAR OF TOOL X DROPOFF ;
  65:   ;
  66:  SET SEGMENT(33) ;
  67:  !SET SEGMENT(33), Drop1 ;
  68:  !SET SEGMENT(37), Drop2 ;
  69:  !SET SEGMENT(41), Drop3 ;
  70:  !SET SEGMENT(45), Drop4 ;
  71:  !SET SEGMENT(49), Drop5 ;
  72:   ;
  73:  !MOVE TOWARDS HOME ;
/POS
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1733.893  mm,	Y = -2420.070  mm,	Z =   820.696  mm,
	W =   167.682 deg,	P =    47.447 deg,	R =    18.631 deg
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X =  -534.760  mm,	Y = -2206.089  mm,	Z =   -49.203  mm,
	W =  -176.488 deg,	P =     1.343 deg,	R =    82.680 deg
};
P[4:"PLACE3"]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  -534.760  mm,	Y = -2206.089  mm,	Z = -1158.004  mm,
	W =  -176.488 deg,	P =     1.343 deg,	R =    82.680 deg
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X =  -534.754  mm,	Y = -2206.061  mm,	Z =  -981.095  mm,
	W =  -176.490 deg,	P =     1.342 deg,	R =    82.680 deg
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1869.563  mm,	Y =    24.296  mm,	Z =   555.052  mm,
	W =   179.922 deg,	P =    15.143 deg,	R =      .026 deg
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X =  -534.754  mm,	Y = -2206.062  mm,	Z =  -433.894  mm,
	W =  -176.490 deg,	P =     1.342 deg,	R =    82.680 deg
};
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   637.676  mm,	Y = -2581.337  mm,	Z =   958.593  mm,
	W =  -119.837 deg,	P =    26.931 deg,	R =   164.915 deg
};
/END
