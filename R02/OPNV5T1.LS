/PROG  OPNV5T1	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "OPN V5 T1 V4.0";
PROG_SIZE	= 486;
CREATE		= DATE 02-10-15  TIME 14:36:18;
MODIFIED	= DATE 16-01-31  TIME 21:22:20;
FILE_NAME	= OPNV5T1;
VERSION		= 0;
LINE_COUNT	= 10;
MEMORY_SIZE	= 826;
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
  HANDLING : TRUE ; 
/MN
   1:  !**************************** ;
   2:  !Manual Functions Macros ;
   3:  !NOTE: for toolchanging EOAT ;
   4:  !copy and rename macro and ;
   5:  !change MH Tool(AR) to ;
   6:  !respective tool number ;
   7:  !**************************** ;
   8:  Set MH Tool(1) ;
   9:  CALL DMSTAT    ;
  10:  Release Part(5) ;
/POS
/END
