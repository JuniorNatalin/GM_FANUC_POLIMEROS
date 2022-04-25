/PROG  PRT41_DROP
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "375";
PROG_SIZE	= 2093;
CREATE		= DATE 21-03-02  TIME 00:36:42;
MODIFIED	= DATE 21-08-27  TIME 08:58:04;
FILE_NAME	= PRT41_DR;
VERSION		= 0;
LINE_COUNT	= 61;
MEMORY_SIZE	= 2349;
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
  12:  Set MH Tool(4) ;
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
  23:J P[2] 100% CNT100    ;
  24:J P[3] 100% CNT100    ;
  25:   ;
  26:J P[4] 100% CNT100    ;
  27:J P[5] 100% CNT50    ;
  28:   ;
  29:   ;
  30:  Grip Part(1) ;
  31:   ;
  32:  !Robot at conveyor ;
  33:   ;
  34:L P[6] 2000mm/sec FINE    ;
  35:   ;
  36:  Turn OFF Vacuum(6,7) ;
  37:  Release Part(5) ;
  38:   ;
  39:  PAYLOAD[2] ;
  40:   ;
  41:  !verify no part in tool ;
  42:L P[7] 2000mm/sec CNT50    ;
  43:   ;
  44:  REQUEST CONTINUE    ;
  45:   ;
  46:  !Robot clear of conveyor ;
  47:  SET SEGMENT(33) ;
  48:   ;
  49:J P[8] 100% CNT100    ;
  50:J P[9] 100% CNT100    ;
  51:J P[10] 100% CNT100    ;
  52:   ;
  53:  !Robot clear of all ;
  54:  EXIT I-ZONE(1) ;
  55:  EXIT I-ZONE(2) ;
  56:  SET SEGMENT(63) ;
  57:   ;
  58:J P[11] 100% CNT100    ;
  59:J P[12] 100% CNT100    ;
  60:J P[13] 100% CNT100    ;
  61:J P[14] 100% CNT100    ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   927.760  mm,	Y =  -371.257  mm,	Z =  1599.953  mm,
	W =  -147.957 deg,	P =   -29.504 deg,	R =   -16.905 deg
};
P[2]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1201.648  mm,	Y = -1012.673  mm,	Z =  1169.186  mm,
	W =   174.496 deg,	P =   -14.637 deg,	R =     -.704 deg
};
P[3]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1774.406  mm,	Y =  -993.549  mm,	Z =   902.451  mm,
	W =   174.576 deg,	P =    10.958 deg,	R =    -3.133 deg
};
P[4]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  2057.286  mm,	Y =  -996.566  mm,	Z =   691.618  mm,
	W =   174.513 deg,	P =    13.940 deg,	R =    -3.425 deg
};
P[5]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  2282.031  mm,	Y = -1148.668  mm,	Z =   599.995  mm,
	W =   176.265 deg,	P =    11.183 deg,	R =    -3.097 deg
};
P[6]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  2380.513  mm,	Y = -1153.780  mm,	Z =   415.601  mm,
	W =   178.080 deg,	P =     9.961 deg,	R =    -4.068 deg
};
P[7]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  2312.226  mm,	Y = -1127.638  mm,	Z =   524.263  mm,
	W =   177.089 deg,	P =     9.830 deg,	R =    -3.106 deg
};
P[8]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1201.648  mm,	Y = -1012.673  mm,	Z =  1169.186  mm,
	W =   174.496 deg,	P =   -14.637 deg,	R =     -.704 deg
};
P[9]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   909.669  mm,	Y =  -602.961  mm,	Z =  1865.763  mm,
	W =   169.451 deg,	P =   -42.111 deg,	R =     7.622 deg
};
P[10]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1160.512  mm,	Y =   -60.902  mm,	Z =  1707.451  mm,
	W =  -178.719 deg,	P =   -33.252 deg,	R =     9.079 deg
};
P[11]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1029.474  mm,	Y =   825.807  mm,	Z =  2074.667  mm,
	W =   172.547 deg,	P =   -35.489 deg,	R =    58.756 deg
};
P[12]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -940.323  mm,	Y =  1295.594  mm,	Z =  1465.475  mm,
	W =  -168.742 deg,	P =    -5.655 deg,	R =   133.547 deg
};
P[13]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -940.323  mm,	Y =  1295.594  mm,	Z =  1465.475  mm,
	W =  -168.742 deg,	P =    -5.655 deg,	R =   133.547 deg
};
P[14]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2032.820  mm,	Y =  1463.749  mm,	Z =  1336.458  mm,
	W =  -179.485 deg,	P =     1.601 deg,	R =   147.966 deg
};
/END
