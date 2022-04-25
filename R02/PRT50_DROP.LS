/PROG  PRT50_DROP
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "s18drop1";
PROG_SIZE	= 3210;
CREATE		= DATE 22-04-02  TIME 18:48:12;
MODIFIED	= DATE 22-04-16  TIME 11:18:52;
FILE_NAME	= PRT50DRO;
VERSION		= 0;
LINE_COUNT	= 99;
MEMORY_SIZE	= 3586;
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
  36:J P[1] 100% FINE    ;
  37:  CALL OPN_VLE3    ;
  38:L P[7] 3000mm/sec CNT50    ;
  39:   ;
  40:L P[5] 3000mm/sec CNT50    ;
  41:   ;
  42:J P[8:PLACE] 100% FINE ACC30    ;
  43:  DO[819]=PULSE,1.0sec ;
  44:   ;
  45:  DO[820]=PULSE,2.0sec ;
  46:  WAIT   1.00(sec) ;
  47:   ;
  48:J P[18] 100% FINE    ;
  49:  SET SEGMENT(28) ;
  50:  REQUEST CONTINUE    ;
  51:   ;
  52:J P[19] 100% CNT50    ;
  53:J P[21] 100% CNT100    ;
  54:J P[22] 100% CNT100    ;
  55:J P[23] 100% CNT50    ;
  56:   ;
  57:L P[20] 1000mm/sec FINE    ;
  58:  DO[818]=PULSE,2.0sec ;
  59:  DO[817]=PULSE,1.0sec ;
  60:  WAIT   1.00(sec) ;
  61:  PAYLOAD[1] ;
  62:   ;
  63:   ;
  64:J P[9] 100% CNT30    ;
  65:  !CHECK NOPART IN EOAT ;
  66:  CALL CLS_VLE5    ;
  67:  WAIT   1.00(sec) ;
  68:  SET SEGMENT(33) ;
  69:  REQUEST CONTINUE    ;
  70:  !SET SEGMENT(32), Drop1 ;
  71:  !SET SEGMENT(36), Drop2 ;
  72:  !SET SEGMENT(40), Drop3 ;
  73:  !SET SEGMENT(44), Drop4 ;
  74:  !SET SEGMENT(48), Drop5 ;
  75:   ;
  76:J P[10] 100% CNT100    ;
  77:   ;
  78:J P[11] 100% CNT100    ;
  79:J P[2] 100% CNT100    ;
  80:   ;
  81:J P[4] 100% CNT100    ;
  82:   ;
  83:J P[6] 100% CNT100    ;
  84:   ;
  85:J P[12] 100% CNT100    ;
  86:  EXIT I-ZONE(2) ;
  87:   ;
  88:J P[13] 100% CNT30    ;
  89:   ;
  90:  !CLEAR OF TOOL X DROPOFF ;
  91:   ;
  92:  SET SEGMENT(63) ;
  93:  !SET SEGMENT(33), Drop1 ;
  94:  !SET SEGMENT(37), Drop2 ;
  95:  !SET SEGMENT(41), Drop3 ;
  96:  !SET SEGMENT(45), Drop4 ;
  97:  !SET SEGMENT(49), Drop5 ;
  98:   ;
  99:  !MOVE TOWARDS HOME ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   256.727  mm,	Y =   105.136  mm,	Z =  1531.606  mm,
	W =  -165.329 deg,	P =   -36.462 deg,	R =   -21.462 deg
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   638.793  mm,	Y =   -35.685  mm,	Z =  1425.339  mm,
	W =   168.098 deg,	P =   -23.918 deg,	R =    43.691 deg
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
	X =   619.949  mm,	Y =  -542.253  mm,	Z =  1013.924  mm,
	W =  -178.953 deg,	P =   -22.151 deg,	R =     2.384 deg
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   403.245  mm,	Y =   832.404  mm,	Z =  1623.893  mm,
	W =  -125.587 deg,	P =   -12.891 deg,	R =   -48.297 deg
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   676.404  mm,	Y =   -14.407  mm,	Z =  1279.782  mm,
	W =  -169.317 deg,	P =   -14.230 deg,	R =   -18.852 deg
};
P[8:"PLACE"]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   846.854  mm,	Y =  -735.321  mm,	Z =   155.900  mm,
	W =   179.757 deg,	P =   -19.679 deg,	R =     3.931 deg
};
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1502.724  mm,	Y =  -536.697  mm,	Z =  1149.334  mm,
	W =   178.834 deg,	P =    19.299 deg,	R =  -178.142 deg
};
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1125.667  mm,	Y =  -810.515  mm,	Z =  1130.518  mm,
	W =   148.783 deg,	P =    15.028 deg,	R =   105.648 deg
};
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   844.868  mm,	Y =  -626.097  mm,	Z =  1250.821  mm,
	W =   178.389 deg,	P =    -8.697 deg,	R =     2.572 deg
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
	X =  -667.757  mm,	Y =   808.913  mm,	Z =  1447.464  mm,
	W =  -175.624 deg,	P =   -12.244 deg,	R =    61.233 deg
};
P[18]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   838.026  mm,	Y =  -540.379  mm,	Z =   938.851  mm,
	W =  -177.498 deg,	P =   -19.851 deg,	R =     2.829 deg
};
P[19]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   961.359  mm,	Y =  -818.664  mm,	Z =  1025.758  mm,
	W =   134.069 deg,	P =   -11.445 deg,	R =    65.430 deg
};
P[20]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1443.340  mm,	Y =  -760.630  mm,	Z =   413.939  mm,
	W =  -179.051 deg,	P =    22.235 deg,	R =  -178.457 deg
};
P[21]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1125.667  mm,	Y =  -810.515  mm,	Z =  1130.518  mm,
	W =   148.783 deg,	P =    15.028 deg,	R =   105.648 deg
};
P[22]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1338.543  mm,	Y =  -526.291  mm,	Z =  1249.187  mm,
	W =  -178.374 deg,	P =    34.280 deg,	R =   175.369 deg
};
P[23]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1338.542  mm,	Y =  -526.290  mm,	Z =  1249.188  mm,
	W =  -176.705 deg,	P =    13.831 deg,	R =   176.061 deg
};
/END
