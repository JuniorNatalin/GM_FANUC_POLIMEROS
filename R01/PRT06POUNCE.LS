/PROG  PRT06POUNCE
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "POUNCE Core 274";
PROG_SIZE	= 1127;
CREATE		= DATE 18-05-04  TIME 10:57:16;
MODIFIED	= DATE 19-03-06  TIME 15:02:08;
FILE_NAME	= PRT03POU;
VERSION		= 0;
LINE_COUNT	= 28;
MEMORY_SIZE	= 1387;
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
   5:  !PROGRAM : PRT02POUNCE ;
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
  17:  PAYLOAD[4] ;
  18:   ;
  19:  !AT POUNCE ;
  20:J P[1:At Pounce] 100% FINE    ;
  21:   ;
  22:  Set MH Tool(6) ;
  23:  Release Part(5) ;
  24:   ;
  25:  VACUUM CAN 1 OFF(6,7) ;
  26:   ;
  27:  MESSAGE[WAITING AT POUNCE] ;
  28:  AT PICK POUNCE    ;
/POS
P[1:"At Pounce"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   722.911  mm,	Y =  2736.851  mm,	Z =   760.984  mm,
	W =  -173.545 deg,	P =    21.782 deg,	R =     6.665 deg
};
/END
