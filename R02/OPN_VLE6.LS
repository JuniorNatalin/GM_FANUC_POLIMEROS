/PROG  OPN_VLE6	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "OPEN VALVE6 (B)";
PROG_SIZE	= 560;
CREATE		= DATE 11-09-23  TIME 11:04:28;
MODIFIED	= DATE 16-07-07  TIME 08:25:50;
FILE_NAME	= OPN_VLE5;
VERSION		= 0;
LINE_COUNT	= 13;
MEMORY_SIZE	= 888;
PROTECT		= READ_WRITE;
STORAGE		= SHADOW;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00001000 00000000;
/APPL
  HANDLING : TRUE ; 
/MN
   1:  !******************************** ;
   2:  !  GM METAL FORMING GLOBAL 4 S/W ;
   3:  !******************************** ;
   4:  ! MACRO TO OPEN VALVE 6 (B POS) ;
   5:  !******************************** ;
   6:  ! 2014-08-07 GLOBAL-4 S/W Rel 4.0 ;
   7:  !******************************** ;
   8:   ;
   9:  CALL DMSTAT    ;
  10:   ;
  11:  DO[817]=OFF ;
  12:  DO[818]=ON ;
  13:   ;
/POS
/END
