/PROG  ATPOUNCE	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "AT POUNCE V4.1";
PROG_SIZE	= 890;
CREATE		= DATE 92-10-06  TIME 14:02:28;
MODIFIED	= DATE 16-11-28  TIME 11:53:18;
FILE_NAME	= ATPOUNCE;
VERSION		= 0;
LINE_COUNT	= 31;
MEMORY_SIZE	= 1310;
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
   1:  !******************************** ;
   2:  !MACRO AT POUNCE ;
   3:  !******************************** ;
   4:   ;
   5:  !RESET TASK OK ;
   6:  DO[71]=OFF ;
   7:  DO[135]=OFF ;
   8:   ;
   9:  MESSAGE[WAITING AT POUNCE] ;
  10:   ;
  11:  !******************************** ;
  12:  !RESET FFR MENU ;
  13:  IF (DO[2002] OR DO[2006] OR DO[2010]) THEN ;
  14:  IF $SVPRG_ENB=1,JMP LBL[10] ;
  15:  $SVPRG_ENB=1 ;
  16:  MESSAGE[RE INIT ERROR REC] ;
  17:  $SVPRG_ENB=1 ;
  18:  LBL[10] ;
  19:  ENDIF ;
  20:  !******************************** ;
  21:   ;
  22:  REQUEST CONTINUE    ;
  23:   ;
  24:  R[151]=$SHELL_WRK.$CUR_DECSN ;
  25:   ;
  26:  IF R[151]=15,CALL HOMFRPON ;
  27:  MESSAGE[LEAVING POUNCE] ;
  28:   ;
  29:  !  SET TASK OK ;
  30:  DO[71]=ON ;
  31:  DO[135]=ON ;
/POS
/END
