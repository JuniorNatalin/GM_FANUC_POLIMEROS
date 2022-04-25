/PROG  HOME_IO	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "HOME I_O V4.0";
PROG_SIZE	= 1244;
CREATE		= DATE 06-04-06  TIME 13:32:24;
MODIFIED	= DATE 16-02-25  TIME 15:19:28;
FILE_NAME	= HOME_IO;
VERSION		= 0;
LINE_COUNT	= 58;
MEMORY_SIZE	= 1660;
PROTECT		= READ;
STORAGE		= CMOS;
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
   2:  !MACRO   SET AT HOME I-O ;
   3:  !******************************** ;
   4:   ;
   5:  !RESET MANUAL CYCLE OPTIONS ;
   6:  DO[14:OFF]=OFF ;
   7:  GO[1:0]=0 ;
   8:   ;
   9:  !RESET FFR ;
  10:  DO[18:OFF]=OFF ;
  11:   ;
  12:  !RESET ZONES ;
  13:  DO[37:ON ]=ON ;
  14:  DO[38:ON ]=ON ;
  15:  DO[39:ON ]=ON ;
  16:  DO[40:ON ]=ON ;
  17:  DO[41:ON ]=ON ;
  18:  DO[42:ON ]=ON ;
  19:  DO[43:ON ]=ON ;
  20:  DO[44:ON ]=ON ;
  21:  DO[45:ON ]=ON ;
  22:  DO[46:ON ]=ON ;
  23:  DO[47:ON ]=ON ;
  24:  DO[48:ON ]=ON ;
  25:   ;
  26:  !RESET PATH SEGMENT ;
  27:  GO[3:0]=0 ;
  28:   ;
  29:  !RESET SEGMENT REQUEST CONTINUE ;
  30:  DO[56:OFF]=OFF ;
  31:   ;
  32:  !RESET REQUEST EARLY ;
  33:  R[159]=0    ;
  34:   ;
  35:  !RESET OPTION BITS ;
  36:  DO[20:OFF]=OFF ;
  37:  DO[21:OFF]=OFF ;
  38:  DO[22:OFF]=OFF ;
  39:  DO[23:OFF]=OFF ;
  40:  DO[24:OFF]=OFF ;
  41:   ;
  42:  !RESET DECISION CODE BITS ;
  43:  GO[2:0]=0 ;
  44:   ;
  45:  !RESET Advanced MH Recovery ;
  46:  GO[71:0]=0 ;
  47:  DO[521:OFF]=OFF ;
  48:  DO[522:OFF]=OFF ;
  49:  F[40:OFF]=(OFF) ;
  50:   ;
  51:  !RESET Body Home IO ;
  52:  CALL BODYHMIO    ;
  53:  !INSERT Calls for other Shops ;
  54:   ;
  55:  LBL[10] ;
  56:  !ALL USER SPECIFIC I/O ;
  57:  CALL HMIOCST    ;
  58:  MESSAGE[HOME I/O COMPLETE] ;
/POS
/END
