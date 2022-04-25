/PROG  CLS_VLE5	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "CLOSE VALVE5 (A)";
PROG_SIZE	= 522;
CREATE		= DATE 06-12-07  TIME 07:26:18;
MODIFIED	= DATE 16-07-07  TIME 08:25:46;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 13;
MEMORY_SIZE	= 850;
PROTECT		= READ;
STORAGE		= CMOS;
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
   4:  ! MACRO TO CLOSE VALVE 5 (A POS) ;
   5:  !******************************** ;
   6:  ! 2014-08-07 GLOBAL-4 S/W Rel 4.0 ;
   7:  !******************************** ;
   8:   ;
   9:  CALL DMSTAT    ;
  10:   ;
  11:  DO[810:ON ]=OFF ;
  12:  DO[809:OFF]=ON ;
  13:   ;
/POS
/END
