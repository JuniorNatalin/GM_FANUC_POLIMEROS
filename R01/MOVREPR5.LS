/PROG  MOVREPR5
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "REPAIR 5 V4.0";
PROG_SIZE	= 1259;
CREATE		= DATE 18-07-19  TIME 21:11:44;
MODIFIED	= DATE 17-07-19  TIME 22:41:32;
FILE_NAME	= MOVREPR1;
VERSION		= 0;
LINE_COUNT	= 30;
MEMORY_SIZE	= 1511;
PROTECT		= READ_WRITE;
STORAGE		= SHADOW;
TCD:  STACK_SIZE	= 500,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
/MN
   1:  !**************************** ;
   2:  !MACRO REPAIR 5 ;
   3:  !Alternate Repair Position ;
   4:  !**************************** ;
   5:  UTOOL_NUM=1 ;
   6:   ;
   7:  !Program Alternate Reapair ;
   8:  !position for cleaning, ;
   9:  !inspection etc... ;
  10:   ;
  11:  !NOTE: This Repair Position ;
  12:  !may be programmed in a position ;
  13:  !that interferes with running ;
  14:  !normal production. ;
  15:   ;
  16:  MESSAGE[MOVING TO REPAIR 5] ;
  17:  !PROGRAM PATH TO REPAIR HERE ;
  18:  SET SEGMENT(5) ;
  19:   ;
  20:J P[1] 25% FINE    ;
  21:   ;
  22:J P[2:at repair] 25% FINE    ;
  23:   ;
  24:  REQUEST CONTINUE    ;
  25:  SET SEGMENT(63) ;
  26:   ;
  27:  MESSAGE[RETURNING FROM REPAIR 5] ;
  28:  !PROGRAM RETURN POINTS HERE ;
  29:   ;
  30:J P[3] 25% FINE    ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1306.033  mm,	Y = -1758.279  mm,	Z = -1559.785  mm,
	W =   175.236 deg,	P =    -9.605 deg,	R =    95.043 deg
};
P[2:"at repair"]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1306.033  mm,	Y = -1758.279  mm,	Z = -1649.384  mm,
	W =   175.236 deg,	P =    -9.605 deg,	R =    95.043 deg
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1306.033  mm,	Y = -1758.279  mm,	Z = -1559.785  mm,
	W =   175.236 deg,	P =    -9.605 deg,	R =    95.043 deg
};
/END
