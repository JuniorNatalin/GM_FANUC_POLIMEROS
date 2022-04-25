/PROG  CLS_VLE1	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "CLOSE VALVE1 (A)";
PROG_SIZE	= 482;
CREATE		= DATE 06-12-07  TIME 07:26:12;
MODIFIED	= DATE 16-07-07  TIME 08:25:46;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 12;
MEMORY_SIZE	= 814;
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
   2:  !******************************** ;
   3:  ! MACRO TO CLOSE VALVE 1 (A POS) ;
   4:  !******************************** ;
   5:  ! 2014-08-07 GLOBAL-4 S/W Rel 4.0 ;
   6:  !******************************** ;
   7:   ;
   8:  CALL DMSTAT    ;
   9:   ;
  10:  DO[802:ON ]=OFF ;
  11:  DO[801:OFF]=ON ;
  12:   ;
/POS
/END
