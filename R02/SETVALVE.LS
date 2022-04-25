/PROG  SETVALVE	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Set Current Valv";
PROG_SIZE	= 340;
CREATE		= DATE 99-11-12  TIME 11:00:54;
MODIFIED	= DATE 99-12-23  TIME 15:45:26;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 7;
MEMORY_SIZE	= 692;
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
   1:  !Calls karel program for setting ;
   2:  !current valve number. ;
   3:   ;
   4:  !If no argument is given, the ;
   5:  !macro will abort. ;
   6:   ;
   7:  CALL MHSETVLV(AR[1]) ;
/POS
/END
