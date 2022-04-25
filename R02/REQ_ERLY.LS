/PROG  REQ_ERLY	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "REQST EARLY V4.0";
PROG_SIZE	= 558;
CREATE		= DATE 05-05-26  TIME 14:52:02;
MODIFIED	= DATE 16-04-01  TIME 14:27:10;
FILE_NAME	= REQ_ERLY;
VERSION		= 0;
LINE_COUNT	= 13;
MEMORY_SIZE	= 878;
PROTECT		= READ;
STORAGE		= CMOS;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
/MN
   1:  !**************************** ;
   2:  !CONTINUE EARLY TEMPLATE ;
   3:  !**************************** ;
   4:   ;
   5:  !Turn off continue request ;
   6:  DO[56]=OFF ;
   7:  !Make sure Path Segment Cont Off ;
   8:  WAIT DI[56]=OFF    ;
   9:  !Turn on continue request ;
  10:  DO[56]=ON ;
  11:  MESSAGE[Requesting Early Continue] ;
  12:  !Set flag to ignore Anti_Repeat ;
  13:  R[159]=1    ;
/POS
/END
