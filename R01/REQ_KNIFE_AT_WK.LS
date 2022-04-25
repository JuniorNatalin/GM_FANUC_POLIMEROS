/PROG  REQ_KNIFE_AT_WK
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 558;
CREATE		= DATE 17-07-07  TIME 08:03:42;
MODIFIED	= DATE 18-02-09  TIME 14:35:00;
FILE_NAME	= REQ_KIFE;
VERSION		= 0;
LINE_COUNT	= 17;
MEMORY_SIZE	= 862;
PROTECT		= READ_WRITE;
STORAGE		= SHADOW;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
  HANDLING : TRUE ; 
/MN
   1:  !Program to request knife ;
   2:  !at home position ;
   3:  !Robot sets DO[642] on and waits ;
   4:  !for DI[614] off and DI[642] on ;
   5:  !DO[642] will then be set to off ;
   6:   ;
   7:  DO[641:OFF]=OFF ;
   8:  DO[642:OFF]=ON ;
   9:   ;
  10:  MESSAGE[...] ;
  11:  MESSAGE[Waiting for knife at] ;
  12:  MESSAGE[at work position] ;
  13:  MESSAGE[...] ;
  14:   ;
  15:  WAIT DI[641:ON ]=OFF AND DI[642:OFF]=ON    ;
  16:   ;
  17:  DO[642:OFF]=OFF ;
/POS
/END
