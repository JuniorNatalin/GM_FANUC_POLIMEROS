/PROG  PRT50DROP1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "s18drop1";
PROG_SIZE	= 2496;
CREATE		= DATE 22-03-12  TIME 08:37:44;
MODIFIED	= DATE 22-04-16  TIME 10:14:58;
FILE_NAME	= PRT46DRO;
VERSION		= 0;
LINE_COUNT	= 90;
MEMORY_SIZE	= 2804;
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
  41:   ;
  42:   ;
  43:J P[1] 100% CNT60    ;
  44:J P[2] 100% CNT40    ;
  45:   ;
  46:J P[4:PLACE3] 100% FINE    ;
  47:   ;
  48:  PAYLOAD[1] ;
  49:  SET SEGMENT(35) ;
  50:   ;
  51:  REQUEST CONTINUE    ;
  52:  DO[817:OFF]=OFF ;
  53:  DO[819:OFF]=OFF ;
  54:   ;
  55:  DO[818:OFF]=ON ;
  56:  DO[820:OFF]=ON ;
  57:   ;
  58:  WAIT   1.00(sec) ;
  59:  CALL OPN_VLE1    ;
  60:  CALL OPN_VLE2    ;
  61:  CALL OPN_VLE3    ;
  62:  CALL OPN_VLE4    ;
  63:  CALL OPN_VLE5    ;
  64:   ;
  65:   ;
  66:  WAIT   2.00(sec) ;
  67:  SET SEGMENT(36) ;
  68:   ;
  69:L P[3] 1000mm/sec FINE    ;
  70:  REQUEST CONTINUE    ;
  71:   ;
  72:  SET SEGMENT(37) ;
  73:   ;
  74:  !PATH SEGMENT ;
  75:L P[5] 2000mm/sec CNT10 ACC20    ;
  76:J P[8] 100% FINE    ;
  77:   ;
  78:  EXIT I-ZONE(1) ;
  79:  EXIT I-ZONE(2) ;
  80:   ;
  81:  !CLEAR OF TOOL X DROPOFF ;
  82:   ;
  83:  !SET SEGMENT(33), Drop1 ;
  84:  !SET SEGMENT(37), Drop2 ;
  85:  !SET SEGMENT(41), Drop3 ;
  86:  !SET SEGMENT(45), Drop4 ;
  87:  !SET SEGMENT(49), Drop5 ;
  88:  DO[818:OFF]=OFF ;
  89:  DO[820:OFF]=OFF ;
  90:  !MOVE TOWARDS HOME ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   672.849  mm,	Y = -2222.007  mm,	Z =   -52.515  mm,
	W =  -176.488 deg,	P =     1.343 deg,	R =    86.739 deg
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  -253.643  mm,	Y = -2262.816  mm,	Z =  -312.962  mm,
	W =  -176.478 deg,	P =     1.374 deg,	R =    86.151 deg
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X =  -250.652  mm,	Y = -2261.744  mm,	Z =  -708.954  mm,
	W =  -176.478 deg,	P =     1.369 deg,	R =    86.150 deg
};
P[4:"PLACE3"]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  -253.642  mm,	Y = -2262.817  mm,	Z =  -756.721  mm,
	W =  -176.478 deg,	P =     1.374 deg,	R =    86.151 deg
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  -253.643  mm,	Y = -2262.816  mm,	Z =   121.438  mm,
	W =  -176.478 deg,	P =     1.374 deg,	R =    86.151 deg
};
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   637.676  mm,	Y = -2581.337  mm,	Z =   958.593  mm,
	W =  -119.837 deg,	P =    26.931 deg,	R =   164.915 deg
};
/END
