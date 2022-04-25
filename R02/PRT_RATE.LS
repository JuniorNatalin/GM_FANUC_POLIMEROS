/PROG  PRT_RATE	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "GET CYCLE RATE";
PROG_SIZE	= 1886;
CREATE		= DATE 06-12-07  TIME 07:28:02;
MODIFIED	= DATE 16-05-04  TIME 19:57:44;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 73;
MEMORY_SIZE	= 2354;
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
  HANDLING : TRUE ; 
/MN
   1:  !******************************** ;
   2:  !  GM METAL FORMING GLOBAL 3 S/W ;
   3:  !******************************** ;
   4:  ! PRT_RATE:  MACRO  FOR  COUNTING ;
   5:  ! CYCLES, CALCULATING CYCLE TIMES ;
   6:  ! AND DETERMINING THE LINE RATE. ;
   7:  !******************************** ;
   8:  ! 2016-04-15 - UPDATED DI[272] TO ;
   9:  !   DI[393] FOR OTHER RBT BYPASS. ;
  10:  ! 2014-10-06 Global-3 S/W Rel 3.0 ;
  11:  !******************************** ;
  12:   ;
  13:  R[8]=AR[1]    ;
  14:   ;
  15:  !-------------------------------- ;
  16:  SELECT R[8]=0,JMP LBL[5] ;
  17:         =1,JMP LBL[10] ;
  18:         =2,JMP LBL[50] ;
  19:         ELSE,JMP LBL[100] ;
  20:   ;
  21:  !-------------------------------- ;
  22:  LBL[5:RESET REGS] ;
  23:  R[1]=0    ;
  24:  R[2]=0    ;
  25:  R[3]=0    ;
  26:  R[4]=0    ;
  27:  R[5]=0    ;
  28:  R[6]=0    ;
  29:  R[7]=0    ;
  30:  JMP LBL[90] ;
  31:   ;
  32:  !-------------------------------- ;
  33:  LBL[10:MOTION TIME ONLY] ;
  34:  TIMER[1]=STOP ;
  35:  R[2]=TIMER[1]    ;
  36:  R[3]=60/R[2]    ;
  37:  TIMER[1]=RESET ;
  38:  TIMER[1]=START ;
  39:  JMP LBL[100] ;
  40:   ;
  41:  !-------------------------------- ;
  42:  LBL[50:CALC RATE TIMER2] ;
  43:  TIMER[2]=STOP ;
  44:  R[4]=TIMER[2]    ;
  45:  IF R[62]=1 AND DI[393]=OFF,JMP LBL[70] ;
  46:   ;
  47:  !................................ ;
  48:  LBL[60:SINGLE ROBOT] ;
  49:  R[5]=60/R[4]    ;
  50:  R[6]=R[6]*R[1]    ;
  51:  R[1]=R[1]+1    ;
  52:  R[6]=R[6]+R[4]    ;
  53:  R[6]=R[6]/R[1]    ;
  54:  R[7]=60/R[6]    ;
  55:  JMP LBL[90] ;
  56:   ;
  57:  !................................ ;
  58:  LBL[70:DUAL ROBOTS] ;
  59:  R[5]=120/R[4]    ;
  60:  R[6]=R[6]*R[1]    ;
  61:  R[1]=R[1]+1    ;
  62:  R[6]=R[6]+R[4]    ;
  63:  R[6]=R[6]/R[1]    ;
  64:  R[7]=120/R[6]    ;
  65:  JMP LBL[90] ;
  66:   ;
  67:  !-------------------------------- ;
  68:  LBL[90:RESET AND START] ;
  69:  TIMER[2]=RESET ;
  70:  TIMER[2]=START ;
  71:   ;
  72:  !-------------------------------- ;
  73:  LBL[100:END OF MACRO] ;
/POS
/END
