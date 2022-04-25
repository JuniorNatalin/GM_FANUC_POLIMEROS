/PROG  POUNC_PK	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "AT PICK POUNCE";
PROG_SIZE	= 678;
CREATE		= DATE 06-12-07  TIME 07:27:14;
MODIFIED	= DATE 16-07-07  TIME 08:25:50;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 22;
MEMORY_SIZE	= 1094;
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
   4:  ! POUNC_PK: AT PICK POUNCE MACRO. ;
   5:  !******************************** ;
   6:  ! 2016-05-03 GLOBAL-4 S/W Rel 4.0 ;
   7:  !******************************** ;
   8:   ;
   9:  GO[71:0]=0 ;
  10:  R[154]=0    ;
  11:  R[165]=0    ;
  12:  R[167]=0    ;
  13:  DO[313:ON ]=ON ;
  14:   ;
  15:  MESSAGE[WAITING AT PICK POUNCE] ;
  16:   ;
  17:  REQUEST CONTINUE    ;
  18:   ;
  19:  IF R[150]=15,JMP LBL[100] ;
  20:  DO[313:ON ]=OFF ;
  21:   ;
  22:  LBL[100:END OF PROGRAM] ;
/POS
/END
