/PROG  TCRESET	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "TC GET NO. V4.0";
PROG_SIZE	= 382;
CREATE		= DATE 07-09-25  TIME 14:49:20;
MODIFIED	= DATE 16-04-27  TIME 10:18:18;
FILE_NAME	= TCRESET;
VERSION		= 0;
LINE_COUNT	= 6;
MEMORY_SIZE	= 730;
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
  SPOT Welding Equipment Number : 1 ;
/MN
   1:  !******************************** ;
   2:  !RESET TOOL CHANGER FAULTS ;
   3:  !******************************** ;
   4:   ;
   5:  !Reset TC Faults ;
   6:  DO[907]=PULSE,1.0sec ;
/POS
/END
