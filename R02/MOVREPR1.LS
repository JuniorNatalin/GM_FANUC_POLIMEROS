/PROG  MOVREPR1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "REPAIR 1 V4.0";
PROG_SIZE	= 1259;
CREATE		= DATE 17-07-03  TIME 14:05:26;
MODIFIED	= DATE 17-07-19  TIME 22:45:36;
FILE_NAME	= MOVREPR2;
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
   2:  !MACRO REPAIR 1 ;
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
  16:  MESSAGE[MOVING TO REPAIR 1] ;
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
  27:  MESSAGE[RETURNING FROM REPAIR 1] ;
  28:  !PROGRAM RETURN POINTS HERE ;
  29:   ;
  30:J P[3] 25% FINE    ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1912.458  mm,	Y =  1259.285  mm,	Z =  1163.846  mm,
	W =  -174.647 deg,	P =    -6.730 deg,	R =   107.990 deg
};
P[2:"at repair"]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1872.286  mm,	Y =  1502.870  mm,	Z =  1142.057  mm,
	W =   178.898 deg,	P =     1.394 deg,	R =    87.659 deg
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1912.458  mm,	Y =  1259.285  mm,	Z =  1163.846  mm,
	W =  -174.647 deg,	P =    -6.730 deg,	R =   107.990 deg
};
/END
