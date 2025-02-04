/PROG  DCD_DROP	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "DECISION DP V4.0";
PROG_SIZE	= 904;
CREATE		= DATE 00-01-13  TIME 15:47:28;
MODIFIED	= DATE 16-01-31  TIME 21:20:52;
FILE_NAME	= DCD_DROP;
VERSION		= 0;
LINE_COUNT	= 36;
MEMORY_SIZE	= 1488;
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
/MN
   1:  !************************* ;
   2:  ! DROPOFF PATH DECISION ;
   3:  !************************* ;
   4:   ;
   5:  IF UO[8]=ON,JMP LBL[25] ;
   6:   ;
   7:  LBL[1:BEGIN] ;
   8:   ;
   9:  ! SELECT PATH TO RUN BASED ON ;
  10:  ! DECISION CODE ;
  11:  R[151]=$SHELL_WRK.$CUR_DECSN ;
  12:   ;
  13:  LBL[2:DCD TEACH] ;
  14:  SELECT R[151]=1,CALL DROPOFF1 ;
  15:         =2,CALL DROPOFF2 ;
  16:         =3,CALL DROPOFF3 ;
  17:         =4,CALL DROPOFF4 ;
  18:         =5,CALL DROPOFF5 ;
  19:         ELSE,JMP LBL[15] ;
  20:  END ;
  21:   ;
  22:  LBL[15:INVAL_TEACH] ;
  23:  CALL USERCLR    ;
  24:  CALL USERPAGE    ;
  25:  MESSAGE[Invalid/No DCD] ;
  26:  UALM[2] ;
  27:  WAIT   2.00(sec) ;
  28:  IF UO[8]=OFF,JMP LBL[35] ;
  29:  LBL[25] ;
  30:  CALL DCDTCH    ;
  31:  JMP LBL[2] ;
  32:   ;
  33:  LBL[35:INVALID DECISION] ;
  34:   ;
  35:  REQUEST CONTINUE    ;
  36:  JMP LBL[1] ;
/POS
/END
