/PROG  CLS_VLE6	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "CLOSE VALVE6 (A)";
PROG_SIZE	= 560;
CREATE		= DATE 11-09-23  TIME 11:05:26;
MODIFIED	= DATE 16-07-07  TIME 08:25:46;
FILE_NAME	= CLS_VLE5;
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
   4:  ! MACRO TO CLOSE VALVE 6 (A POS) ;
   5:  !******************************** ;
   6:  ! 2014-04-07 GLOBAL-4 S/W Rel 4.0 ;
   7:  !******************************** ;
   8:   ;
   9:  CALL DMSTAT    ;
  10:   ;
  11:  DO[818:OFF]=OFF ;
  12:  DO[817:OFF]=ON ;
  13:   ;
/POS
/END
