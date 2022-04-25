/PROG  POUNC_DR	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "AT DROP POUNCE";
PROG_SIZE	= 712;
CREATE		= DATE 06-12-07  TIME 07:27:26;
MODIFIED	= DATE 16-07-07  TIME 08:25:50;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 24;
MEMORY_SIZE	= 1128;
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
  HANDLING : TRUE ; 
/MN
   1:  !******************************** ;
   2:  !  GM METAL FORMING GLOBAL 4 S/W ;
   3:  !******************************** ;
   4:  ! POUNC_DR: AT DROP POUNCE MACRO. ;
   5:  !******************************** ;
   6:  ! 2016-05-03 GLOBAL-4 S/W Rel 4.0 ;
   7:  !******************************** ;
   8:   ;
   9:  DO[314:ON ]=ON ;
  10:   ;
  11:  MESSAGE[WAITING AT DROP POUNCE] ;
  12:   ;
  13:  TIMER[1]=STOP ;
  14:  REQUEST CONTINUE    ;
  15:  TIMER[1]=START ;
  16:   ;
  17:  IF R[125]=0,JMP LBL[80] ;
  18:  CALL DST_DOFF    ;
  19:   ;
  20:  LBL[80] ;
  21:  IF R[150]=8 OR R[150]=9,JMP LBL[100] ;
  22:  DO[314:ON ]=OFF ;
  23:   ;
  24:  LBL[100:END OF MACRO] ;
/POS
/END
