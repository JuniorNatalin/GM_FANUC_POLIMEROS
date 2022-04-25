/PROG  POUNC_TL
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "POUNCE V4.0";
PROG_SIZE	= 859;
CREATE		= DATE 08-01-29  TIME 23:05:26;
MODIFIED	= DATE 18-03-09  TIME 14:45:18;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 18;
MEMORY_SIZE	= 1159;
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
  15:  !AT POUNCE ;
  16:J P[1] 80% FINE    ;
  17:   ;
  18:  REQUEST CONTINUE    ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,	
	J1=   -10.267 deg,	J2=   -98.488 deg,	J3=    85.719 deg,
	J4=    -7.725 deg,	J5=   -77.338 deg,	J6=   -15.608 deg
};
/END
