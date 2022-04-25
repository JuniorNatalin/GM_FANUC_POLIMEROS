/PROG  SET_TOOL	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 434;
CREATE		= DATE 08-04-10  TIME 17:46:18;
MODIFIED	= DATE 08-04-10  TIME 17:47:08;
FILE_NAME	= SET_GRIP;
VERSION		= 0;
LINE_COUNT	= 7;
MEMORY_SIZE	= 786;
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
   1:  !Calls KAREL program for setting ;
   2:  !current gripper number. ;
   3:  ! ;
   4:  !If no argument is given, the ;
   5:  !macro will abort ;
   6:  ! ;
   7:  CALL MHSETGRP(AR[1]) ;
/POS
/END
