/PROG  BYPASS	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "BYPS RBT on V4.0";
PROG_SIZE	= 896;
CREATE		= DATE 07-12-02  TIME 21:20:18;
MODIFIED	= DATE 01-01-13  TIME 03:13:04;
FILE_NAME	= BYPASS;
VERSION		= 0;
LINE_COUNT	= 31;
MEMORY_SIZE	= 1292;
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
  SPOT : TRUE ; 
  SPOT Welding Equipment Number : 1 ;
/MN
   1:  !******************************** ;
   2:  !THIS MACRO WILL BYPASS ROBOT ;
   3:  !BYPASS ROBOT FROM MANUAL FUNCT. ;
   4:  !WITH KEY SWITCH IN AUTO MODE ;
   5:  !******************************** ;
   6:   ;
   7:  LBL[1:START] ;
   8:  !Key Switch in AUTO ;
   9:  IF SI[9:ON ]=OFF,JMP LBL[15] ;
  10:   ;
  11:  CALL USERCLR    ;
  12:  CALL USERPAGE    ;
  13:  MESSAGE[...] ;
  14:  MESSAGE[ROBOT BYPASS MODE ON] ;
  15:  MESSAGE[...] ;
  16:  DO[12:ON ]=OFF ;
  17:  DO[13:OFF]=OFF ;
  18:  JMP LBL[99] ;
  19:   ;
  20:  LBL[15:NOT AUTO] ;
  21:  CALL USERCLR    ;
  22:  CALL USERPAGE    ;
  23:  MESSAGE[...] ;
  24:  MESSAGE[MANUAL FUNCTION BYPASS] ;
  25:  MESSAGE[ROBOT. MUST EXECUTE ] ;
  26:  MESSAGE[WITH KEY SWITCH IN AUTO] ;
  27:  MESSAGE[MODE TO BYPASS ROBOT] ;
  28:  MESSAGE[...] ;
  29:  UALM[70] ;
  30:  JMP LBL[1] ;
  31:  LBL[99:END] ;
/POS
/END
