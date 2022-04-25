/PROG  BLOWOFF	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Blowoff OFF V4.0";
PROG_SIZE	= 530;
CREATE		= DATE 02-09-10  TIME 16:36:00;
MODIFIED	= DATE 16-01-31  TIME 21:18:30;
FILE_NAME	= BLOWOFF;
VERSION		= 0;
LINE_COUNT	= 10;
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
CONTROL_CODE	= 00001000 00000000;
/APPL
  SPOT Welding Equipment Number : 1 ;
/MN
   1:  !Calls karel program for closing ;
   2:  !the blowoff_valve specified by ;
   3:  !arguments. ;
   4:   ;
   5:  !Arguments are valve numbers. ;
   6:   ;
   7:  !If no argument is given, the ;
   8:  !macro will use the current valve ;
   9:  CALL DMSTAT    ;
  10:  CALL MHBLOWOF(AR[1],AR[2],AR[3],AR[4],AR[5],AR[6],AR[7],AR[8],AR[9]) ;
/POS
/END
