/PROG  PRT46PICK1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "s18pick1";
PROG_SIZE	= 2320;
CREATE		= DATE 22-02-19  TIME 08:14:46;
MODIFIED	= DATE 22-04-15  TIME 15:04:14;
FILE_NAME	= S18PICK1;
VERSION		= 0;
LINE_COUNT	= 77;
MEMORY_SIZE	= 2664;
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
  15:  !PICKUP PART FROM TOOL X ;
  16:  !******************************** ;
  17:   ;
  18:  !ASSIGN PATH SEGMENT VALUES ;
  19:  SET SEGMENT(10) ;
  20:  REQUEST CONTINUE    ;
  21:   ;
  22:  ENTER I-ZONE(1) ;
  23:   ;
  24:   ;
  25:  !Check for EOAT In Correct ;
  26:  !State  Prepare to Pick(X) ;
  27:   ;
  28:  !MOVE TO TOOL X PICKUP ;
  29:   ;
  30:  UFRAME_NUM=0 ;
  31:  UTOOL_NUM=1 ;
  32:   ;
  33:J P[11] 100% FINE    ;
  34:   ;
  35:J P[2] 100% CNT40    ;
  36:   ;
  37:J P[1] 100% CNT40    ;
  38:J P[10] 100% CNT40    ;
  39:J P[8] 100% CNT100    ;
  40:J P[9] 100% CNT50    ;
  41:   ;
  42:J P[3:PICK] 100% FINE    ;
  43:   ;
  44:  EXIT I-ZONE(1) ;
  45:   ;
  46:  SET SEGMENT(12) ;
  47:  REQUEST CONTINUE    ;
  48:   ;
  49:  PAYLOAD[1] ;
  50:   ;
  51:  CALL CLS_VLE1    ;
  52:  CALL CLS_VLE2    ;
  53:   ;
  54:  DO[817]=ON ;
  55:  DO[819]=ON ;
  56:   ;
  57:  WAIT   2.00(sec) ;
  58:   ;
  59:  SET SEGMENT(13) ;
  60:  REQUEST CONTINUE    ;
  61:  WAIT   2.00(sec) ;
  62:  !PATH SEGMENT ;
  63:  CALL OPN_VLE1    ;
  64:   ;
  65:  ENTER I-ZONE(2) ;
  66:   ;
  67:   ;
  68:J P[5] 66% FINE    ;
  69:J P[4] 100% CNT50    ;
  70:J P[12] 100% CNT50    ;
  71:J P[6] 66% CNT50    ;
  72:L P[7] 2000mm/sec CNT50    ;
  73:  !CLEAR OF TOOL X PICKUP ;
  74:   ;
  75:  SET SEGMENT(14) ;
  76:  REQUEST CONTINUE    ;
  77:   ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1041.738  mm,	Y =    88.949  mm,	Z =   899.104  mm,
	W =  -173.981 deg,	P =   -63.042 deg,	R =   -73.250 deg
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1046.005  mm,	Y =   309.853  mm,	Z =   977.853  mm,
	W =  -156.987 deg,	P =   -53.062 deg,	R =   -80.338 deg
};
P[3:"PICK"]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   352.368  mm,	Y =  -995.007  mm,	Z =  1364.651  mm,
	W =     1.976 deg,	P =     5.051 deg,	R =   -92.261 deg
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   655.324  mm,	Y =  -336.214  mm,	Z =   931.131  mm,
	W =    26.215 deg,	P =    -3.816 deg,	R =   -61.887 deg
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   352.381  mm,	Y =  -995.031  mm,	Z =  1076.730  mm,
	W =     1.975 deg,	P =     5.053 deg,	R =   -92.261 deg
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   775.271  mm,	Y =   504.438  mm,	Z =  1623.893  mm,
	W =  -125.587 deg,	P =   -12.891 deg,	R =   -79.400 deg
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   403.245  mm,	Y =   832.404  mm,	Z =  1623.893  mm,
	W =  -125.587 deg,	P =   -12.891 deg,	R =   -48.297 deg
};
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   655.325  mm,	Y =  -336.214  mm,	Z =   931.131  mm,
	W =    26.215 deg,	P =    -3.816 deg,	R =   -61.887 deg
};
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   352.368  mm,	Y =  -995.007  mm,	Z =  1076.772  mm,
	W =     1.976 deg,	P =     5.051 deg,	R =   -92.261 deg
};
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   607.599  mm,	Y =  -544.367  mm,	Z =   828.372  mm,
	W =    38.610 deg,	P =   -21.964 deg,	R =   -11.945 deg
};
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   810.792  mm,	Y =  1091.267  mm,	Z =  1615.527  mm,
	W =  -132.526 deg,	P =     1.803 deg,	R =   -67.923 deg
};
P[12]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   840.016  mm,	Y =   280.580  mm,	Z =  1227.348  mm,
	W =  -151.367 deg,	P =   -48.125 deg,	R =   -69.873 deg
};
/END
