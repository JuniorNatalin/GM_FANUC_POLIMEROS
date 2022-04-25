/PROG  PRT46POUNCE
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "POUNCE Core 377";
PROG_SIZE	= 1202;
CREATE		= DATE 22-02-12  TIME 07:34:30;
MODIFIED	= DATE 22-02-19  TIME 12:59:30;
FILE_NAME	= PRT43POU;
VERSION		= 0;
LINE_COUNT	= 31;
MEMORY_SIZE	= 1450;
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
  15:  UTOOL_NUM=1 ;
  16:  UFRAME_NUM=0 ;
  17:  PAYLOAD[8] ;
  18:   ;
  19:  !AT POUNCE ;
  20:   ;
  21:J P[2] 100% CNT100    ;
  22:   ;
  23:J P[1:At Pounce] 70% FINE    ;
  24:   ;
  25:  //Set MH Tool(9) ;
  26:  //Release Part(5) ;
  27:   ;
  28:  //VACUUM CAN 1 OFF(6,7) ;
  29:   ;
  30:  MESSAGE[WAITING AT POUNCE] ;
  31:  AT PICK POUNCE    ;
/POS
P[1:"At Pounce"]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1079.432  mm,	Y =  2548.082  mm,	Z =   943.462  mm,
	W =    45.926 deg,	P =    89.955 deg,	R =    45.165 deg
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2027.788  mm,	Y =   620.836  mm,	Z =   811.500  mm,
	W =   150.621 deg,	P =    21.417 deg,	R =    45.363 deg
};
/END
