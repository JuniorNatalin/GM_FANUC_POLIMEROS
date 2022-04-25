/PROG  VACUUMON1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Vacuum ON V4.0";
PROG_SIZE	= 506;
CREATE		= DATE 18-03-21  TIME 11:55:16;
MODIFIED	= DATE 18-03-21  TIME 11:55:16;
FILE_NAME	= VACUUMON;
VERSION		= 0;
LINE_COUNT	= 10;
MEMORY_SIZE	= 854;
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
/MN
   1:  !Calls karel program for closing ;
   2:  !the valve specified by the ;
   3:  !arguments. ;
   4:   ;
   5:  !Arguments are valve numbers. ;
   6:   ;
   7:  !If no argument is given, the ;
   8:  !macro will use the current valve ;
   9:  CALL DMSTAT    ;
  10:  CALL MHVACON(AR[1],AR[2],AR[3],AR[4],AR[5],AR[6],AR[7],AR[8],AR[9]) ;
/POS
/END
