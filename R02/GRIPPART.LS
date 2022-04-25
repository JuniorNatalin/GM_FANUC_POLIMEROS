/PROG  GRIPPART	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "PickUp Prts V4.0";
PROG_SIZE	= 586;
CREATE		= DATE 99-11-08  TIME 12:16:28;
MODIFIED	= DATE 16-01-31  TIME 21:21:56;
FILE_NAME	= GRIPPART;
VERSION		= 0;
LINE_COUNT	= 12;
MEMORY_SIZE	= 926;
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
/MN
   1:  !Calls karel program for closing ;
   2:  !the valve specified by the ;
   3:  !arguments.  It will also call ;
   4:  !chkgrcls to check clamps or ;
   5:  !vacuum inputs. ;
   6:   ;
   7:  !Arguments are valve numbers. ;
   8:   ;
   9:  !If no argument is given, the ;
  10:  !macro will use the current valve ;
  11:  CALL DMSTAT    ;
  12:  CALL MHGRIPPT(AR[1],AR[2],AR[3],AR[4],AR[5],AR[6],AR[7],AR[8],AR[9]) ;
/POS
/END
