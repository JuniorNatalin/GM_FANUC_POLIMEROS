/PROG  PRT46DROP2_CONVEYOR
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "ROBOT DROP 373";
PROG_SIZE	= 1936;
CREATE		= DATE 22-02-12  TIME 08:18:34;
MODIFIED	= DATE 22-02-12  TIME 10:09:14;
FILE_NAME	= PRT38DRO;
VERSION		= 0;
LINE_COUNT	= 68;
MEMORY_SIZE	= 2292;
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
   1:   ;
   2:  !******************************** ;
   3:  !DROPOFF PART TO CONVEYOR ;
   4:  !******************************** ;
   5:   ;
   6:  !ASSIGN PATH SEGEMENT VALUES ;
   7:  SET SEGMENT(32) ;
   8:   ;
   9:  !******IMPORTANT************ ;
  10:  !for MH tool changers ;
  11:  !make sure Set MH TOOL(AR) ;
  12:  !matches tool number ;
  13:  Set MH Tool(7) ;
  14:   ;
  15:  UTOOL_NUM=7 ;
  16:  UFRAME_NUM=0 ;
  17:   ;
  18:  PAYLOAD[7] ;
  19:   ;
  20:  ENTER I-ZONE(1) ;
  21:  ENTER I-ZONE(2) ;
  22:   ;
  23:J P[5] 100% FINE    ;
  24:   ;
  25:J P[1] 100% CNT100    ;
  26:J P[4] 100% CNT100    ;
  27:J P[2] 100% CNT20    ;
  28:J P[3] 100% FINE    ;
  29:   ;
  30:  !Robot at conveyor ;
  31:   ;
  32:  DO[818:OFF]=PULSE,1.0sec ;
  33:  DO[820:OFF]=PULSE,1.0sec ;
  34:   ;
  35:  OPEN VALVE 1    ;
  36:  OPEN VALVE 2    ;
  37:  OPEN VALVE 3    ;
  38:  OPEN VALVE 4    ;
  39:  OPEN VALVE 5    ;
  40:   ;
  41:   ;
  42:  VACUUM CAN 1 OFF(6,7) ;
  43:  Release Part(2) ;
  44:  Grip Part(5) ;
  45:  Release Part(5) ;
  46:   ;
  47:   ;
  48:  PAYLOAD[6] ;
  49:   ;
  50:   ;
  51:   ;
  52:  REQUEST CONTINUE    ;
  53:   ;
  54:  !Robot clear of conveyor ;
  55:  SET SEGMENT(33) ;
  56:   ;
  57:L P[10] 2000mm/sec CNT10    ;
  58:   ;
  59:J P[11] 100% CNT100    ;
  60:J P[13] 100% CNT100    ;
  61:J P[14] 100% CNT100    ;
  62:J P[16] 100% FINE    ;
  63:   ;
  64:  EXIT I-ZONE(1) ;
  65:  EXIT I-ZONE(2) ;
  66:   ;
  67:  !Robot clear of all ;
  68:  SET SEGMENT(63) ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1171.425  mm,	Y = -2053.741  mm,	Z =   138.466  mm,
	W =  -174.415 deg,	P =    54.447 deg,	R =     1.858 deg
};
P[2]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1505.030  mm,	Y = -2053.780  mm,	Z = -1973.477  mm,
	W =  -175.136 deg,	P =    54.459 deg,	R =     1.271 deg
};
P[3]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1510.130  mm,	Y = -2062.149  mm,	Z = -2111.466  mm,
	W =  -175.123 deg,	P =    54.470 deg,	R =     1.283 deg
};
P[4]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1169.198  mm,	Y = -2145.028  mm,	Z =  -778.177  mm,
	W =  -173.364 deg,	P =    57.826 deg,	R =      .427 deg
};
P[5]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =   112.772  mm,	Y = -2347.427  mm,	Z =   726.034  mm,
	W =   144.034 deg,	P =     4.098 deg,	R =   -46.704 deg
};
P[10]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1505.030  mm,	Y = -2053.780  mm,	Z = -1973.477  mm,
	W =  -175.136 deg,	P =    54.459 deg,	R =     1.271 deg
};
P[11]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1169.198  mm,	Y = -2145.029  mm,	Z =  -778.177  mm,
	W =  -173.364 deg,	P =    57.826 deg,	R =      .427 deg
};
P[13]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X = -1171.425  mm,	Y = -2053.741  mm,	Z =   138.466  mm,
	W =  -174.415 deg,	P =    54.447 deg,	R =     1.858 deg
};
P[14]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =   112.772  mm,	Y = -2347.427  mm,	Z =   726.034  mm,
	W =   144.034 deg,	P =     4.098 deg,	R =   -46.704 deg
};
P[16]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =  2417.461  mm,	Y =   133.003  mm,	Z =   520.409  mm,
	W =  -176.136 deg,	P =    15.400 deg,	R =      .533 deg
};
/END
