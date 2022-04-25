/PROG  PRT46DROP1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "s18drop1";
PROG_SIZE	= 2299;
CREATE		= DATE 22-02-19  TIME 07:17:50;
MODIFIED	= DATE 22-03-05  TIME 15:34:42;
FILE_NAME	= S17DROP1;
VERSION		= 0;
LINE_COUNT	= 77;
MEMORY_SIZE	= 2659;
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
  19:  SET SEGMENT(32) ;
  20:  !SET SEGMENT(30), Drop1 ;
  21:  !SET SEGMENT(34), Drop2 ;
  22:  !SET SEGMENT(38), Drop3 ;
  23:  !SET SEGMENT(42), Drop4 ;
  24:  !SET SEGMENT(46), Drop5 ;
  25:  REQUEST CONTINUE    ;
  26:   ;
  27:  !*******IMPORTANT************ ;
  28:  !for MH tool changers ;
  29:  !make sure Set MH TOOL(AR) ;
  30:  !matches tool number ;
  31:   ;
  32:   ;
  33:  !MOVE TO DROPOFF TOOL X ;
  34:   ;
  35:  UFRAME_NUM=0 ;
  36:  UTOOL_NUM=1 ;
  37:   ;
  38:  ENTER I-ZONE(1) ;
  39:  ENTER I-ZONE(2) ;
  40:   ;
  41:J P[1] 100% CNT20    ;
  42:J P[2] 100% CNT10    ;
  43:   ;
  44:J P[4:PLACE3] 100% FINE    ;
  45:   ;
  46:  PAYLOAD[1] ;
  47:  SET SEGMENT(35) ;
  48:   ;
  49:  REQUEST CONTINUE    ;
  50:  DO[818:OFF]=PULSE,1.0sec ;
  51:  DO[820:OFF]=PULSE,1.0sec ;
  52:   ;
  53:  CALL OPN_VLE1    ;
  54:  CALL OPN_VLE2    ;
  55:  CALL OPN_VLE3    ;
  56:  CALL OPN_VLE4    ;
  57:  CALL OPN_VLE5    ;
  58:   ;
  59:  SET SEGMENT(36) ;
  60:  REQUEST CONTINUE    ;
  61:   ;
  62:  !PATH SEGMENT ;
  63:L P[5] 300mm/sec CNT10 ACC20    ;
  64:J P[8] 100% FINE    ;
  65:   ;
  66:  EXIT I-ZONE(1) ;
  67:  EXIT I-ZONE(2) ;
  68:   ;
  69:  !CLEAR OF TOOL X DROPOFF ;
  70:   ;
  71:  !SET SEGMENT(33), Drop1 ;
  72:  !SET SEGMENT(37), Drop2 ;
  73:  !SET SEGMENT(41), Drop3 ;
  74:  !SET SEGMENT(45), Drop4 ;
  75:  !SET SEGMENT(49), Drop5 ;
  76:   ;
  77:  !MOVE TOWARDS HOME ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   672.849  mm,	Y = -2222.007  mm,	Z =   -52.515  mm,
	W =  -176.488 deg,	P =     1.343 deg,	R =    86.739 deg
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X =  -534.760  mm,	Y = -2206.089  mm,	Z =   -49.203  mm,
	W =  -176.488 deg,	P =     1.343 deg,	R =    82.680 deg
};
P[4:"PLACE3"]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X =  -504.913  mm,	Y = -2197.606  mm,	Z =  -616.624  mm,
	W =  -176.488 deg,	P =     1.338 deg,	R =    82.681 deg
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X =  -534.760  mm,	Y = -2206.089  mm,	Z =   -49.203  mm,
	W =  -176.488 deg,	P =     1.343 deg,	R =    82.680 deg
};
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   637.676  mm,	Y = -2581.337  mm,	Z =   958.593  mm,
	W =  -119.837 deg,	P =    26.931 deg,	R =   164.915 deg
};
/END
