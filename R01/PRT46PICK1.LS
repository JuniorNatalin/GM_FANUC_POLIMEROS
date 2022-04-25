/PROG  PRT46PICK1
/ATTR
OWNER		= simulati;
COMMENT		= "s18pick1";
PROG_SIZE	= 3224;
CREATE		= DATE 01-11-04  TIME 19:18:54;
MODIFIED	= DATE 22-04-16  TIME 09:53:58;
FILE_NAME	= S18PICK1;
VERSION		= 0;
LINE_COUNT	= 105;
MEMORY_SIZE	= 3560;
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
  31:  //Set MH Tool(13) ;
  32:   ;
  33:  !Check for EOAT In Correct ;
  34:  !State  Prepare to Pick(X) ;
  35:  //Prepare to Pick(6,7) ;
  36:   ;
  37:  !MOVE TO TOOL X PICKUP ;
  38:   ;
  39:  UFRAME_NUM=0 ;
  40:  UTOOL_NUM=1 ;
  41:   ;
  42:J P[1] 100% CNT100    ;
  43:J P[2] 100% CNT100    ;
  44:   ;
  45:J P[3] 100% CNT100    ;
  46:J P[4] 100% CNT100    ;
  47:J P[18] 100% CNT40    ;
  48:J P[17] 100% CNT40    ;
  49:L P[21] 300mm/sec CNT10    ;
  50:   ;
  51:J P[6] 100% CNT30    ;
  52:L P[7] 300mm/sec FINE    ;
  53:   ;
  54:  DO[819:OFF]=ON ;
  55:  DO[818:OFF]=OFF ;
  56:  DO[817:OFF]=ON ;
  57:  DO[820:OFF]=OFF ;
  58:  CLOSE VALVE 2    ;
  59:   ;
  60:  CLOSE VALVE 1    ;
  61:  CLOSE VALVE 4    ;
  62:  WAIT   1.00(sec) ;
  63:  CLOSE VALVE 5    ;
  64:   ;
  65:  WAIT   1.00(sec) ;
  66:  PAYLOAD[1] ;
  67:  REQUEST CONTINUE    ;
  68:  //VACUUM CAN 1 ON    ;
  69:  !PATH SEGMENT ;
  70:   ;
  71:  DO[801:OFF]=OFF ;
  72:  DO[802:ON ]=ON ;
  73:  DO[803:OFF]=OFF ;
  74:  DO[804:ON ]=ON ;
  75:  WAIT   2.00(sec) ;
  76:L P[5] 200mm/sec FINE ACC30    ;
  77:   ;
  78:L P[8] 500mm/sec CNT30 ACC50    ;
  79:  !CHECK PART IN EOAT ;
  80:  CHK PART PRESENT(1) ;
  81:   ;
  82:  REQUEST CONTINUE    ;
  83:  SET SEGMENT(13) ;
  84:  !SET SEGMENT(12), Pick1 ;
  85:  !SET SEGMENT(16), Pick2 ;
  86:  !SET SEGMENT(20), Pick3 ;
  87:  !SET SEGMENT(24), Pick4 ;
  88:  !SET SEGMENT(28), Pick5 ;
  89:   ;
  90:J P[9] 100% CNT40 ACC50    ;
  91:J P[10] 100% CNT40    ;
  92:J P[11] 100% FINE    ;
  93:  DO[801:OFF]=ON ;
  94:  DO[802:ON ]=OFF ;
  95:  DO[803:OFF]=ON ;
  96:  DO[804:ON ]=OFF ;
  97:J P[12] 100% CNT100    ;
  98:J P[13] 100% CNT100    ;
  99:J P[14] 100% CNT100    ;
 100:   ;
 101:   ;
 102:J P[15] 100% CNT100    ;
 103:  !CLEAR OF TOOL X PICKUP ;
 104:   ;
 105:  SET SEGMENT(14) ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1079.432  mm,	Y =  2548.082  mm,	Z =   153.382  mm,
	W =    45.915 deg,	P =    89.955 deg,	R =    45.154 deg
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1079.874  mm,	Y =  2548.527  mm,	Z =  -646.618  mm,
	W =    45.915 deg,	P =    89.955 deg,	R =    45.154 deg
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1080.026  mm,	Y =  2548.679  mm,	Z =  -920.233  mm,
	W =    45.915 deg,	P =    89.955 deg,	R =    45.154 deg
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1230.372  mm,	Y =  2498.427  mm,	Z = -1196.646  mm,
	W =   141.444 deg,	P =    89.948 deg,	R =   140.627 deg
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1781.931  mm,	Y =  2500.439  mm,	Z = -1462.504  mm,
	W =    99.846 deg,	P =    86.216 deg,	R =    98.274 deg
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1719.763  mm,	Y =  2502.133  mm,	Z = -1461.736  mm,
	W =    99.826 deg,	P =    86.214 deg,	R =    98.254 deg
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1789.905  mm,	Y =  2500.231  mm,	Z = -1462.534  mm,
	W =    99.822 deg,	P =    86.215 deg,	R =    98.250 deg
};
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1667.400  mm,	Y =  2503.545  mm,	Z = -1461.217  mm,
	W =    99.853 deg,	P =    86.215 deg,	R =    98.281 deg
};
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1530.133  mm,	Y =  2494.321  mm,	Z = -1496.858  mm,
	W =   141.444 deg,	P =    89.948 deg,	R =   140.627 deg
};
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1230.372  mm,	Y =  2498.427  mm,	Z = -1196.646  mm,
	W =   141.444 deg,	P =    89.948 deg,	R =   140.627 deg
};
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1080.026  mm,	Y =  2548.679  mm,	Z =  -920.233  mm,
	W =    45.915 deg,	P =    89.955 deg,	R =    45.154 deg
};
P[12]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1079.874  mm,	Y =  2548.527  mm,	Z =  -646.618  mm,
	W =    45.915 deg,	P =    89.955 deg,	R =    45.154 deg
};
P[13]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1079.432  mm,	Y =  2548.082  mm,	Z =   153.382  mm,
	W =    45.915 deg,	P =    89.955 deg,	R =    45.154 deg
};
P[14]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2013.987  mm,	Y =  1201.216  mm,	Z =   999.993  mm,
	W =    86.461 deg,	P =     6.808 deg,	R =    18.108 deg
};
P[15]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2413.014  mm,	Y =  -412.127  mm,	Z =   628.086  mm,
	W =   133.896 deg,	P =   -81.926 deg,	R =   -41.904 deg
};
P[17]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1615.939  mm,	Y =  2501.838  mm,	Z = -1460.827  mm,
	W =    99.846 deg,	P =    86.216 deg,	R =    98.275 deg
};
P[18]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1503.278  mm,	Y =  2501.341  mm,	Z = -1444.697  mm,
	W =   100.008 deg,	P =    87.104 deg,	R =    98.615 deg
};
P[21]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1700.561  mm,	Y =  2498.511  mm,	Z = -1461.715  mm,
	W =    99.946 deg,	P =    86.211 deg,	R =    98.373 deg
};
/END
