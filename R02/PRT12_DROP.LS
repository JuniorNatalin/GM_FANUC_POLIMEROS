/PROG  PRT12_DROP
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "332";
PROG_SIZE	= 2113;
CREATE		= DATE 18-11-16  TIME 14:56:28;
MODIFIED	= DATE 19-03-04  TIME 14:40:20;
FILE_NAME	= PRT17_DR;
VERSION		= 0;
LINE_COUNT	= 59;
MEMORY_SIZE	= 2377;
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

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : TRUE;
/MN
   1:  !******************************** ;
   2:  !DROPOFF PART TO CONVEYOR ;
   3:  !******************************** ;
   4:   ;
   5:  !ASSIGN PATH SEGEMENT VALUES ;
   6:  SET SEGMENT(32) ;
   7:   ;
   8:  !******IMPORTANT************ ;
   9:  !for MH tool changers ;
  10:  !make sure Set MH TOOL(AR) ;
  11:  !matches tool number ;
  12:  Set MH Tool(2) ;
  13:   ;
  14:  !Place Part ;
  15:  UTOOL_NUM=2 ;
  16:  UFRAME_NUM=0 ;
  17:  PAYLOAD[3] ;
  18:   ;
  19:  ENTER I-ZONE(1) ;
  20:  ENTER I-ZONE(2) ;
  21:   ;
  22:J P[1] 100% CNT100    ;
  23:J P[11] 100% CNT100    ;
  24:J P[12] 100% CNT100    ;
  25:J P[13] 100% CNT100    ;
  26:J P[3] 100% CNT100    ;
  27:J P[4] 100% CNT100    ;
  28:   ;
  29:L P[5:Abv Drop] 500mm/sec CNT50    ;
  30:   ;
  31:  !Robot at conveyor ;
  32:L P[6:Drop_PRT_12] 300mm/sec FINE    ;
  33:   ;
  34:  Turn OFF Vacuum(6,7) ;
  35:   ;
  36:  PAYLOAD[2] ;
  37:   ;
  38:  !verify no part in tool ;
  39:L P[5:Abv Drop] 500mm/sec FINE    ;
  40:   ;
  41:  REQUEST CONTINUE    ;
  42:   ;
  43:  !Robot clear of conveyor ;
  44:  SET SEGMENT(33) ;
  45:   ;
  46:J P[4] 100% CNT100    ;
  47:J P[3] 100% CNT100    ;
  48:J P[2] 100% CNT100    ;
  49:J P[14] 100% CNT100    ;
  50:J P[7] 100% CNT100    ;
  51:J P[8] 100% CNT100    ;
  52:J P[9] 100% CNT100    ;
  53:J P[10] 100% CNT100    ;
  54:   ;
  55:  EXIT I-ZONE(1) ;
  56:  EXIT I-ZONE(2) ;
  57:   ;
  58:  !Robot clear of all ;
  59:  SET SEGMENT(63) ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   789.792  mm,	Y =   252.325  mm,	Z =  1692.901  mm,
	W =  -132.556 deg,	P =   -15.552 deg,	R =    -2.013 deg
};
P[2]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   958.382  mm,	Y =  -438.492  mm,	Z =  1573.069  mm,
	W =  -171.891 deg,	P =   -15.310 deg,	R =    -1.322 deg
};
P[3]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1161.184  mm,	Y =  -718.511  mm,	Z =  1362.852  mm,
	W =  -176.887 deg,	P =    -9.579 deg,	R =     -.715 deg
};
P[4]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1405.559  mm,	Y =  -977.053  mm,	Z =  1190.837  mm,
	W =   179.492 deg,	P =    -4.340 deg,	R =      .755 deg
};
P[5:"Abv Drop"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1405.559  mm,	Y =  -977.053  mm,	Z =   722.837  mm,
	W =   179.492 deg,	P =    -4.340 deg,	R =      .755 deg
};
P[6:"Drop_PRT_12"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1500.026  mm,	Y = -1064.804  mm,	Z =   557.691  mm,
	W =   179.366 deg,	P =    -4.533 deg,	R =    -2.185 deg
};
P[7]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   380.862  mm,	Y =   673.199  mm,	Z =  1676.335  mm,
	W =  -122.750 deg,	P =    22.624 deg,	R =   -47.141 deg
};
P[8]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   337.504  mm,	Y =   723.850  mm,	Z =  2196.500  mm,
	W =  -121.035 deg,	P =   -19.005 deg,	R =      .714 deg
};
P[9]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -360.724  mm,	Y =  1269.352  mm,	Z =  2187.499  mm,
	W =  -157.003 deg,	P =   -36.155 deg,	R =    78.238 deg
};
P[10]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1544.176  mm,	Y =  1312.796  mm,	Z =  1091.707  mm,
	W =   178.170 deg,	P =     3.650 deg,	R =   145.534 deg
};
P[11]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   934.888  mm,	Y =  -184.542  mm,	Z =  1582.337  mm,
	W =  -160.104 deg,	P =   -20.904 deg,	R =    -2.153 deg
};
P[12]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1013.358  mm,	Y =  -361.177  mm,	Z =  1609.373  mm,
	W =  -168.880 deg,	P =   -21.214 deg,	R =    -1.404 deg
};
P[13]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1173.522  mm,	Y =  -669.583  mm,	Z =  1484.157  mm,
	W =  -175.700 deg,	P =   -11.259 deg,	R =    -1.009 deg
};
P[14]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   923.872  mm,	Y =   135.071  mm,	Z =  1512.987  mm,
	W =  -164.887 deg,	P =    -6.871 deg,	R =     4.384 deg
};
/END
