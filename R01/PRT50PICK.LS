/PROG  PRT50PICK
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "s18pick1_Rear_Up";
PROG_SIZE	= 2751;
CREATE		= DATE 22-03-12  TIME 07:33:42;
MODIFIED	= DATE 22-04-16  TIME 09:51:00;
FILE_NAME	= S18PICK1;
VERSION		= 0;
LINE_COUNT	= 87;
MEMORY_SIZE	= 3047;
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
  15:  !PICKUP PART FROM TOOL X ;
  16:  !******************************** ;
  17:   ;
  18:  !ASSIGN PATH SEGMENT VALUES ;
  19:  SET SEGMENT(12) ;
  20:  !SET SEGMENT(10), Pick1 ;
  21:  !SET SEGMENT(14), Pick2 ;
  22:  !SET SEGMENT(18), Pick3 ;
  23:  !SET SEGMENT(22), Pick4 ;
  24:  !SET SEGMENT(26), Pick5 ;
  25:   ;
  26:  !*******IMPORTANT************ ;
  27:  !for MH tool changers ;
  28:  !make sure Set MH TOOL(AR) ;
  29:  !matches tool number ;
  30:   ;
  31:  //Set MH Tool(1) ;
  32:   ;
  33:  !Check for EOAT In Correct ;
  34:  !State  Prepare to Pick(X) ;
  35:  //Prepare to Pick(0) ;
  36:   ;
  37:  !MOVE TO TOOL X PICKUP ;
  38:   ;
  39:  UFRAME_NUM=0 ;
  40:  UTOOL_NUM=2 ;
  41:J P[3] 100% CNT100    ;
  42:J P[4] 100% CNT100    ;
  43:J P[5] 100% CNT40    ;
  44:J P[15] 100% CNT20    ;
  45:   ;
  46:L P[16] 500mm/sec CNT20    ;
  47:   ;
  48:   ;
  49:L P[12] 300mm/sec FINE    ;
  50:   ;
  51:  CLOSE VALVE 1    ;
  52:  CLOSE VALVE 2    ;
  53:  CLOSE VALVE 3    ;
  54:  WAIT   1.50(sec) ;
  55:  CLOSE VALVE 4    ;
  56:  DO[817:OFF]=ON ;
  57:  DO[819:OFF]=ON ;
  58:  WAIT   1.00(sec) ;
  59:  OPEN VALVE 1    ;
  60:  OPEN VALVE 2    ;
  61:  WAIT   1.00(sec) ;
  62:   ;
  63:  PAYLOAD[1] ;
  64:  REQUEST CONTINUE    ;
  65:   ;
  66:  !CHECK PART IN EOAT ;
  67:  CHK PART PRESENT(1) ;
  68:   ;
  69:  REQUEST CONTINUE    ;
  70:  SET SEGMENT(13) ;
  71:   ;
  72:L P[6] 100mm/sec CNT10    ;
  73:L P[7] 100mm/sec CNT30    ;
  74:L P[8] 100mm/sec CNT40    ;
  75:   ;
  76:   ;
  77:L P[1] 250mm/sec CNT40    ;
  78:J P[9] 100% CNT100    ;
  79:J P[11] 100% CNT100    ;
  80:J P[13] 100% CNT100    ;
  81:J P[14] 100% CNT100    ;
  82:J P[18] 100% CNT100    ;
  83:   ;
  84:  SET SEGMENT(14) ;
  85:   ;
  86:  CALL CLS_VLE1    ;
  87:  CALL CLS_VLE2    ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1132.159  mm,	Y =  2733.417  mm,	Z = -1488.657  mm,
	W =    94.449 deg,	P =      .330 deg,	R =    91.138 deg
};
P[3]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1043.888  mm,	Y =  2728.743  mm,	Z =  -594.039  mm,
	W =    97.064 deg,	P =     -.099 deg,	R =    91.139 deg
};
P[4]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1064.712  mm,	Y =  2729.080  mm,	Z = -1430.133  mm,
	W =    97.068 deg,	P =     -.095 deg,	R =    91.138 deg
};
P[5]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1100.619  mm,	Y =  2729.278  mm,	Z = -1820.761  mm,
	W =    97.061 deg,	P =     -.096 deg,	R =    91.138 deg
};
P[6]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1576.044  mm,	Y =  2728.725  mm,	Z = -2086.204  mm,
	W =    94.433 deg,	P =      .329 deg,	R =    91.142 deg
};
P[7]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1531.312  mm,	Y =  2728.737  mm,	Z = -2085.124  mm,
	W =    94.436 deg,	P =      .331 deg,	R =    91.142 deg
};
P[8]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1080.132  mm,	Y =  2728.480  mm,	Z = -2158.588  mm,
	W =    94.449 deg,	P =      .330 deg,	R =    91.138 deg
};
P[9]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   990.281  mm,	Y =  2731.502  mm,	Z = -1455.150  mm,
	W =   105.482 deg,	P =      .269 deg,	R =    91.111 deg
};
P[11]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   932.914  mm,	Y =  2716.657  mm,	Z = -1169.763  mm,
	W =   114.920 deg,	P =      .582 deg,	R =    89.984 deg
};
P[12]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1587.564  mm,	Y =  2728.726  mm,	Z = -2086.205  mm,
	W =    94.433 deg,	P =      .329 deg,	R =    91.142 deg
};
P[13]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1292.513  mm,	Y =  2819.040  mm,	Z =   590.291  mm,
	W =    99.667 deg,	P =   -29.143 deg,	R =    77.466 deg
};
P[14]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1934.609  mm,	Y =  1953.701  mm,	Z =   933.277  mm,
	W =   121.954 deg,	P =   -31.242 deg,	R =    39.742 deg
};
P[15]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1125.356  mm,	Y =  2730.322  mm,	Z = -2089.039  mm,
	W =    94.436 deg,	P =      .331 deg,	R =    91.142 deg
};
P[16]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1531.312  mm,	Y =  2728.737  mm,	Z = -2085.124  mm,
	W =    94.436 deg,	P =      .331 deg,	R =    91.142 deg
};
P[18]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  2398.836  mm,	Y =   253.291  mm,	Z =   905.891  mm,
	W =  -175.867 deg,	P =    15.935 deg,	R =     3.913 deg
};
/END
