/PROG  POUNC_SV	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "AT SERVC POUNCE";
PROG_SIZE	= 538;
CREATE		= DATE 06-12-07  TIME 07:27:16;
MODIFIED	= DATE 16-07-07  TIME 08:25:50;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 13;
MEMORY_SIZE	= 990;
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
   4:  ! POUNC_SV: AT SRVC POUNCE MACRO. ;
   5:  !******************************** ;
   6:  ! 2016-05-03 GLOBAL-4 S/W Rel 4.0 ;
   7:  !******************************** ;
   8:   ;
   9:  MESSAGE[WAITING AT POUNCE] ;
  10:   ;
  11:  REQUEST CONTINUE    ;
  12:   ;
  13:  LBL[100:END OF MACRO] ;
/POS
/END
