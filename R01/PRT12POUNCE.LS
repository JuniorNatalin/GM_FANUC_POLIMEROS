/PROG  PRT12POUNCE
/ATTR
OWNER		= SHIFT;
COMMENT		= "POUNCE Core 332";
PROG_SIZE	= 1127;
CREATE		= DATE 18-08-25  TIME 12:39:30;
MODIFIED	= DATE 19-03-04  TIME 10:59:48;
FILE_NAME	= PRT06POU;
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
  15:  UTOOL_NUM=12 ;
  16:  UFRAME_NUM=0 ;
  17:  PAYLOAD[12] ;
  18:   ;
  19:  !AT POUNCE ;
  20:J P[1:At Pounce] 70% FINE    ;
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
	UF : 0, UT : 12,		CONFIG : 'N U T, 0, 0, 0',
	X =  1180.817  mm,	Y =  2720.707  mm,	Z =   400.215  mm,
	W =  -174.091 deg,	P =    57.925 deg,	R =     1.541 deg
};
/END
