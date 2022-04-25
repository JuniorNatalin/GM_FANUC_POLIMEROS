/PROG  PRT46PROC11
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "s18proc1";
PROG_SIZE	= 2055;
CREATE		= DATE 22-04-15  TIME 16:46:02;
MODIFIED	= DATE 22-04-15  TIME 16:46:02;
FILE_NAME	= S18PROC1;
VERSION		= 0;
LINE_COUNT	= 50;
MEMORY_SIZE	= 2355;
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
  15:  SET SEGMENT(22) ;
  16:   ;
  17:J P[85] 100% FINE    ;
  18:   ;
  19:  UFRAME_NUM=1 ;
  20:   ;
  21:J P[87] 100% FINE    ;
  22:J P[1] 100% FINE    ;
  23:   ;
  24:L P[2] 1980mm/sec CNT40    ;
  25:L P[4] 2000mm/sec CNT50    ;
  26:L P[11] 2000mm/sec CNT50    ;
  27:   ;
  28:L P[8] 2000mm/sec CNT50    ;
  29:   ;
  30:L P[3] 2000mm/sec CNT50    ;
  31:L P[5] 2000mm/sec CNT50    ;
  32:   ;
  33:   ;
  34:L P[6] 2000mm/sec CNT50    ;
  35:   ;
  36:L P[7] 2000mm/sec CNT50    ;
  37:   ;
  38:   ;
  39:   ;
  40:L P[10] 2000mm/sec CNT50    ;
  41:   ;
  42:   ;
  43:J P[9] 100% FINE    ;
  44:   ;
  45:J P[82] 100% CNT100    ;
  46:J P[83] 100% FINE    ;
  47:   ;
  48:  REQUEST CONTINUE    ;
  49:   ;
  50:   ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   545.109  mm,	Y =  1228.182  mm,	Z =  1485.290  mm,
	W =  -152.025 deg,	P =    24.169 deg,	R =  -121.193 deg
};
P[2]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -546.860  mm,	Y =  -227.249  mm,	Z =  -560.256  mm,
	W =   -19.499 deg,	P =     4.795 deg,	R =   -44.481 deg
};
P[3]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -418.937  mm,	Y =  -232.000  mm,	Z =  -642.696  mm,
	W =    -3.640 deg,	P =     6.833 deg,	R =    -5.046 deg
};
P[4]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -591.573  mm,	Y =  -436.877  mm,	Z =  -619.557  mm,
	W =   -18.715 deg,	P =     7.349 deg,	R =   -37.080 deg
};
P[5]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -375.496  mm,	Y =  -499.088  mm,	Z =  -817.298  mm,
	W =     8.716 deg,	P =     6.072 deg,	R =    17.108 deg
};
P[6]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -537.819  mm,	Y =  -395.831  mm,	Z =  -592.411  mm,
	W =    16.978 deg,	P =    21.889 deg,	R =    34.394 deg
};
P[7]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -27.958  mm,	Y =  -317.494  mm,	Z =  -813.672  mm,
	W =    32.507 deg,	P =    -3.654 deg,	R =    89.477 deg
};
P[8]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -587.379  mm,	Y =  -593.304  mm,	Z =  -625.595  mm,
	W =   -11.829 deg,	P =    18.581 deg,	R =   -15.126 deg
};
P[9]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  -648.308  mm,	Y =  -654.296  mm,	Z =  -434.415  mm,
	W =    23.184 deg,	P =      .940 deg,	R =   111.717 deg
};
P[10]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -297.474  mm,	Y =  -570.814  mm,	Z =  -756.967  mm,
	W =    35.461 deg,	P =      .450 deg,	R =    76.948 deg
};
P[11]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -577.898  mm,	Y =  -594.990  mm,	Z =  -617.952  mm,
	W =   -15.033 deg,	P =    15.124 deg,	R =   -22.551 deg
};
P[82]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -787.444  mm,	Y =  -315.326  mm,	Z =   353.648  mm,
	W =   -54.348 deg,	P =   -23.691 deg,	R =   -50.078 deg
};
P[83]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1249.159  mm,	Y =  -441.339  mm,	Z =   -26.088  mm,
	W =   -39.384 deg,	P =   -24.226 deg,	R =   -76.496 deg
};
P[85]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   403.245  mm,	Y =   832.404  mm,	Z =  1623.893  mm,
	W =  -125.587 deg,	P =   -12.891 deg,	R =   -48.297 deg
};
P[87]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -785.044  mm,	Y =  -708.431  mm,	Z =  -530.402  mm,
	W =    51.001 deg,	P =    24.537 deg,	R =    48.249 deg
};
/END
