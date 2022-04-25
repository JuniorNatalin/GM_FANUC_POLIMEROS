/PROG  CHKNOPRT	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "CK NOPRTPRS V4.0";
PROG_SIZE	= 624;
CREATE		= DATE 99-11-08  TIME 14:37:18;
MODIFIED	= DATE 16-01-31  TIME 21:19:42;
FILE_NAME	= CHKNOPRT;
VERSION		= 0;
LINE_COUNT	= 13;
MEMORY_SIZE	= 952;
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
   1:  !Calls karel program for checking ;
   2:  !if any part presents are detect- ;
   3:  !ing a part.  Error will occur if ;
   4:  !any parts are detected. ;
   5:   ;
   6:  !Arguments are part present ;
   7:  !switch numbers for individual ;
   8:  !inputs, NOT valve numbers. ;
   9:   ;
  10:  !If no argument is given, the ;
  11:  !the macro will abort. ;
  12:   ;
  13:  CALL MHNOPART(AR[1],AR[2],AR[3],AR[4],AR[5],AR[6],AR[7],AR[8],AR[9],AR[10]) ;
/POS
/END
