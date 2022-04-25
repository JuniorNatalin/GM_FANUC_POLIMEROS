/PROG  PRT50PICK1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "s18pick1";
PROG_SIZE	= 2971;
CREATE		= DATE 22-03-12  TIME 09:20:56;
MODIFIED	= DATE 22-04-16  TIME 15:33:02;
FILE_NAME	= PRT46PIC;
VERSION		= 0;
LINE_COUNT	= 119;
MEMORY_SIZE	= 3315;
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
  19:   ;
  20:  PAYLOAD[2] ;
  21:   ;
  22:  SET SEGMENT(10) ;
  23:  REQUEST CONTINUE    ;
  24:   ;
  25:  ENTER I-ZONE(1) ;
  26:   ;
  27:   ;
  28:  !Check for EOAT In Correct ;
  29:  !State  Prepare to Pick(X) ;
  30:   ;
  31:  !MOVE TO TOOL X PICKUP ;
  32:   ;
  33:  UFRAME_NUM=0 ;
  34:  UTOOL_NUM=1 ;
  35:  CALL CLS_VLE5    ;
  36:   ;
  37:J P[5] 100% FINE    ;
  38:   ;
  39:   ;
  40:J P[11] 100% CNT40 ACC50    ;
  41:   ;
  42:J P[2] 100% CNT40 ACC50    ;
  43:   ;
  44:J P[1] 100% CNT40 ACC50    ;
  45:J P[10] 100% CNT100 ACC50    ;
  46:J P[8] 100% CNT100    ;
  47:J P[9] 100% CNT40    ;
  48:   ;
  49:J P[3:PICK] 100% FINE    ;
  50:  EXIT I-ZONE(1) ;
  51:   ;
  52:  PAYLOAD[3] ;
  53:   ;
  54:  SET SEGMENT(12) ;
  55:   ;
  56:  CALL OPN_VLE1    ;
  57:  CALL OPN_VLE2    ;
  58:  CALL OPN_VLE3    ;
  59:  CALL OPN_VLE5    ;
  60:   ;
  61:  REQUEST CONTINUE    ;
  62:   ;
  63:   ;
  64:   ;
  65:   ;
  66:   ;
  67:  SET SEGMENT(13) ;
  68:   ;
  69:   ;
  70:  CALL CLS_VLE3    ;
  71:  WAIT   3.00(sec) ;
  72:  CALL CLS_VLE1    ;
  73:  CALL CLS_VLE2    ;
  74:  WAIT   1.00(sec) ;
  75:  DO[817]=ON ;
  76:  DO[819]=ON ;
  77:  WAIT   3.00(sec) ;
  78:   ;
  79:   ;
  80:  REQUEST CONTINUE    ;
  81:   ;
  82:   ;
  83:  SET SEGMENT(14) ;
  84:  REQUEST CONTINUE    ;
  85:   ;
  86:  CALL OPN_VLE1    ;
  87:  CALL OPN_VLE2    ;
  88:   ;
  89:  CALL OPN_VLE3    ;
  90:  CALL OPN_VLE5    ;
  91:   ;
  92:   ;
  93:   ;
  94:  ENTER I-ZONE(2) ;
  95:   ;
  96:  CALL CLS_VLE3    ;
  97:  WAIT   2.00(sec) ;
  98:   ;
  99:   ;
 100:  !PATH SEGMENT ;
 101:   ;
 102:   ;
 103:   ;
 104:J P[4] 100% CNT60    ;
 105:J P[12] 100% CNT100    ;
 106:   ;
 107:J P[6] 100% CNT100    ;
 108:J P[7] 100% CNT100    ;
 109:J P[14] 100% CNT100    ;
 110:   ;
 111:J P[13] 100% CNT100    ;
 112:J P[15] 100% FINE    ;
 113:   ;
 114:  !CLEAR OF TOOL X PICKUP ;
 115:  CALL OPN_VLE3    ;
 116:   ;
 117:  SET SEGMENT(15) ;
 118:  REQUEST CONTINUE    ;
 119:   ;
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
	X =   108.053  mm,	Y =  -808.691  mm,	Z =   976.834  mm,
	W =     1.975 deg,	P =     5.056 deg,	R =   -92.262 deg
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
	X =   522.182  mm,	Y =  1045.604  mm,	Z =  1845.206  mm,
	W =  -120.841 deg,	P =    -7.836 deg,	R =   -60.730 deg
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
	X =   466.260  mm,	Y =   672.225  mm,	Z =  1632.674  mm,
	W =  -131.899 deg,	P =   -12.564 deg,	R =   -57.671 deg
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
	X =   352.369  mm,	Y =  -995.008  mm,	Z =   890.771  mm,
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
	X =   636.497  mm,	Y =   863.747  mm,	Z =  1474.844  mm,
	W =  -133.033 deg,	P =   -35.283 deg,	R =   -61.997 deg
};
P[12]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   840.016  mm,	Y =   280.580  mm,	Z =  1227.348  mm,
	W =  -151.367 deg,	P =   -48.125 deg,	R =   -69.873 deg
};
P[13]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    25.738  mm,	Y =   860.798  mm,	Z =  1994.779  mm,
	W =  -127.612 deg,	P =    30.882 deg,	R =   -46.699 deg
};
P[14]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    67.792  mm,	Y =   724.242  mm,	Z =  1696.565  mm,
	W =  -130.487 deg,	P =   -12.444 deg,	R =   -30.945 deg
};
P[15]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -203.852  mm,	Y =   836.708  mm,	Z =  1994.779  mm,
	W =  -127.612 deg,	P =    30.882 deg,	R =   -31.294 deg
};
/END
