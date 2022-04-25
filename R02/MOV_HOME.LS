/PROG  MOV_HOME	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "MOVE 2 HOME V4.0";
PROG_SIZE	= 436;
CREATE		= DATE 94-09-07  TIME 15:27:22;
MODIFIED	= DATE 01-01-13  TIME 03:15:12;
FILE_NAME	= MOV_HOME;
VERSION		= 0;
LINE_COUNT	= 8;
MEMORY_SIZE	= 784;
PROTECT		= READ;
STORAGE		= CMOS;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
/MN
   1:  !******************************** ;
   2:  !MACRO   MOVE TO HOME ;
   3:  !******************************** ;
   4:   ;
   5:  !  MOVING TO HOME POSITION ;
   6:  !-------------------------------- ;
   7:  CALL GET_HOME    ;
   8:J PR[1] 100% FINE    ;
/POS
/END
