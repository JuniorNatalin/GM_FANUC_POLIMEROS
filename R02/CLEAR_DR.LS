/PROG  CLEAR_DR	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "DROP CLEAR";
PROG_SIZE	= 468;
CREATE		= DATE 06-12-07  TIME 07:27:26;
MODIFIED	= DATE 16-10-26  TIME 13:51:50;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 12;
MEMORY_SIZE	= 924;
PROTECT		= READ_WRITE;
STORAGE		= SHADOW;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
  HANDLING : TRUE ; 
/MN
   1:  !******************************** ;
   2:  !  GM METAL FORMING GLOBAL 4 S/W ;
   3:  !******************************** ;
   4:  ! CLEAR_DR: DROP CLEARED MACRO. ;
   5:  !******************************** ;
   6:   ;
   7:  DO[314]=ON ;
   8:  DO[315]=PULSE,2.0sec ;
   9:   ;
  10:  MESSAGE[DROP IS CLEARED] ;
  11:   ;
  12:  LBL[100:END OF MACRO] ;
/POS
/END
