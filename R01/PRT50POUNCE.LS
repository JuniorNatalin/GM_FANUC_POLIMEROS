/PROG  PRT50POUNCE
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "POUNCE Core 377";
PROG_SIZE	= 1267;
CREATE		= DATE 22-03-12  TIME 07:22:12;
MODIFIED	= DATE 22-03-26  TIME 10:52:04;
FILE_NAME	= PRT46POU;
VERSION		= 0;
LINE_COUNT	= 33;
MEMORY_SIZE	= 1635;
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
  21:   ;
  22:   ;
  23:J P[2] 100% CNT100    ;
  24:J P[3] 100% CNT100    ;
  25:J P[1:At Pounce] 70% FINE    ;
  26:   ;
  27:  //Set MH Tool(9) ;
  28:  //Release Part(5) ;
  29:   ;
  30:  //VACUUM CAN 1 OFF(6,7) ;
  31:   ;
  32:  MESSAGE[WAITING AT POUNCE] ;
  33:  AT PICK POUNCE    ;
/POS
P[1:"At Pounce"]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   868.136  mm,	Y =  2477.939  mm,	Z =   926.342  mm,
	W =    99.554 deg,	P =      .142 deg,	R =    61.367 deg
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2171.128  mm,	Y =   301.674  mm,	Z =  1008.344  mm,
	W =  -175.302 deg,	P =    11.200 deg,	R =     6.419 deg
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2008.343  mm,	Y =  1277.396  mm,	Z =   913.296  mm,
	W =   150.027 deg,	P =     6.850 deg,	R =    20.717 deg
};
/END
