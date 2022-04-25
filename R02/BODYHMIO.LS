/PROG  BODYHMIO	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "HOME I_O V4.1";
PROG_SIZE	= 1778;
CREATE		= DATE 06-04-06  TIME 13:32:24;
MODIFIED	= DATE 17-03-22  TIME 22:12:48;
FILE_NAME	= HOME_IO;
VERSION		= 0;
LINE_COUNT	= 76;
MEMORY_SIZE	= 2134;
PROTECT		= READ_WRITE;
STORAGE		= SHADOW;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 60,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 1,
      ABORT_REQUEST	= 7,
      PAUSE_REQUEST	= 3;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00001000 00000000;
/APPL
/MN
   1:  !******************************** ;
   2:  !MACRO SET AT HOME I-O ;
   3:  !******************************** ;
   4:  !Process Equipment Housekeeping ;
   5:   ;
   6:  !RESET 1 Joint Made ;
   7:  DO[72]=OFF ;
   8:   ;
   9:  !RESET TDX Current Fault ;
  10:  IF (DO[2002]),DO[76]=OFF ;
  11:  IF (DO[2003]),DO[140]=OFF ;
  12:   ;
  13:  !RESET SG Water off Flag ;
  14:  F[10]=(OFF) ;
  15:   ;
  16:  !RESET DRESS VERIFY FLAG ;
  17:  F[59]=(OFF) ;
  18:   ;
  19:  !RESET Part Complete for ;
  20:  !Adaptive Welding ;
  21:  IF (DO[2002] AND DI[66]) THEN ;
  22:  !PR1 SPOT Part Finished ;
  23:  DO[1073]=OFF ;
  24:  ENDIF ;
  25:  IF (DO[2003] AND DI[130]) THEN ;
  26:  !PR2 SPOT Part Finished ;
  27:  DO[1201]=OFF ;
  28:  ENDIF ;
  29:   ;
  30:  !RESET Disp PROC1 ;
  31:  IF (!SO[7]) THEN ;
  32:   ;
  33:  !RESET Disp PROC1 Control ;
  34:  IF (DO[2004] AND DI[65] AND !DI[66]) THEN ;
  35:  $SLGNSTUP[1].PROC_WET_RUN=1 ;
  36:  ELSE ;
  37:  $SLGNSTUP[1].PROC_WET_RUN=0 ;
  38:  ENDIF ;
  39:   ;
  40:  ENDIF ;
  41:  !RESET Disp PROC1 Signals ;
  42:  IF (DO[2004] AND !DI[66]) THEN ;
  43:  DO[1033]=OFF ;
  44:  DO[1034]=OFF ;
  45:  DO[1059]=OFF ;
  46:  DO[1065]=OFF ;
  47:  GO[52]=0 ;
  48:  GO[53]=0 ;
  49:  GO[59]=0 ;
  50:  ENDIF ;
  51:   ;
  52:  !RESET Disp PROC2 ;
  53:  IF (!SO[7]) THEN ;
  54:   ;
  55:  !RESET Disp PROC2 Control ;
  56:  IF (DO[2005]=ON AND DI[129] AND !DI[130]) THEN ;
  57:  $SLGNSTUP[1].PROC_WET_RUN=1 ;
  58:  ELSE ;
  59:  IF (!DO[2004]) THEN ;
  60:  $SLGNSTUP[1].PROC_WET_RUN=0 ;
  61:  ENDIF ;
  62:  ENDIF ;
  63:   ;
  64:  ENDIF ;
  65:  !RESET Disp PROC2 Signals ;
  66:  IF (DO[2005] AND !DI[130]) THEN ;
  67:  DO[1161]=OFF ;
  68:  DO[1162]=OFF ;
  69:  DO[1187]=OFF ;
  70:  DO[1191]=OFF ;
  71:  GO[61]=0 ;
  72:  GO[62]=0 ;
  73:  GO[68]=0 ;
  74:  ENDIF ;
  75:   ;
  76:  MESSAGE[BODY HOME I/O COMPLETE] ;
/POS
/END
