/PROG  POUNCE_TL
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "POUNCE V4.0";
PROG_SIZE	= 928;
CREATE		= DATE 17-07-19  TIME 08:28:58;
MODIFIED	= DATE 18-02-14  TIME 11:44:58;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 20;
MEMORY_SIZE	= 1220;
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
   1:  !******************************** ;
   2:  !PATH: pounce at tool stands ;
   3:  !******************************** ;
   4:  !PROGRAM : GMTXXX ;
   5:  !ASSEMBLY: XXXXXX ;
   6:  !ROBOT ID: XXXXXX ;
   7:  !******************************** ;
   8:  !MOVE TO POUNCE - PATH SEGMENT ;
   9:   ;
  10:  SET SEGMENT(1) ;
  11:   ;
  12:  PAYLOAD[1] ;
  13:  UTOOL_NUM=1 ;
  14:  UFRAME_NUM=0 ;
  15:   ;
  16:  !AT POUNCE ;
  17:J P[1] 100% CNT5    ;
  18:J P[5] 50% FINE    ;
  19:   ;
  20:  REQUEST CONTINUE    ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -2318.719  mm,	Y =  1079.454  mm,	Z =  1396.596  mm,
	W =   -38.798 deg,	P =   -67.785 deg,	R =    15.247 deg
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -2122.404  mm,	Y =  1284.406  mm,	Z =  1270.417  mm,
	W =  -126.602 deg,	P =   -65.429 deg,	R =    94.015 deg
};
/END
