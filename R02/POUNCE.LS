/PROG  POUNCE
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "POUNCE COMUM";
PROG_SIZE	= 1081;
CREATE		= DATE 19-06-05  TIME 11:10:40;
MODIFIED	= DATE 19-06-05  TIME 11:10:40;
FILE_NAME	= POUNCE;
VERSION		= 0;
LINE_COUNT	= 25;
MEMORY_SIZE	= 1353;
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
   2:  ! PATH - pounce core pick ;
   3:  !*    core (moving) end ;
   4:  !******************************** ;
   5:  !PROGRAM : PRT03POUNCE ;
   6:  !ASSEMBLY: XXXXXX ;
   7:  !ROBOT ID: F196839 ;
   8:  !******************************** ;
   9:  !MOVE TO POUNCE - PATH SEGMENT ;
  10:   ;
  11:  SET SEGMENT(1) ;
  12:  !SET SEGMENT(1), Home to Pounce ;
  13:   ;
  14:  !Set ATI Tool and World UFrame ;
  15:  UTOOL_NUM=2 ;
  16:  UFRAME_NUM=0 ;
  17:   ;
  18:  !AT POUNCE ;
  19:J P[1:At Pounce] 100% FINE    ;
  20:   ;
  21:  Set MH Tool(2) ;
  22:  VACUUM CAN 1 OFF(6,7) ;
  23:   ;
  24:  MESSAGE[WAITING AT POUNCE] ;
  25:  AT PICK POUNCE    ;
/POS
P[1:"At Pounce"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2276.308  mm,	Y =  1434.843  mm,	Z =  1163.882  mm,
	W =   178.314 deg,	P =     3.737 deg,	R =   150.938 deg
};
/END
