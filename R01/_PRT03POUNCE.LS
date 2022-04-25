/PROG  _PRT03POUNCE
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "POUNCE Core 335";
PROG_SIZE	= 1063;
CREATE		= DATE 18-03-21  TIME 17:32:24;
MODIFIED	= DATE 18-03-21  TIME 17:32:24;
FILE_NAME	= PRT01PON;
VERSION		= 0;
LINE_COUNT	= 22;
MEMORY_SIZE	= 1347;
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
  15:  UTOOL_NUM=1 ;
  16:  UFRAME_NUM=0 ;
  17:   ;
  18:  !AT POUNCE ;
  19:J P[1:At Pounce] 100% FINE    ;
  20:   ;
  21:  MESSAGE[WAITING AT POUNCE] ;
  22:  AT PICK POUNCE    ;
/POS
P[1:"At Pounce"]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   583.487  mm,	Y =  2516.263  mm,	Z =  1105.035  mm,
	W =   175.034 deg,	P =    -8.767 deg,	R =     5.325 deg
};
/END
