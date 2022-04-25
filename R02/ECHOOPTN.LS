/PROG  ECHOOPTN	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "ECHO OPTION V4.0";
PROG_SIZE	= 854;
CREATE		= DATE 04-07-23  TIME 15:46:00;
MODIFIED	= DATE 16-02-25  TIME 15:05:28;
FILE_NAME	= ECHOOPTN;
VERSION		= 0;
LINE_COUNT	= 35;
MEMORY_SIZE	= 1346;
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
/MN
   1:  ! ********************** ;
   2:  ! MACRO ECHO OPTION ;
   3:  !*********************** ;
   4:   ;
   5:  ! Echo Option Bit to PLC using ;
   6:  ! Manual Option Bit ;
   7:   ;
   8:  !SKIP IF IN TEACH MODE ;
   9:  IF SO[7]=ON,JMP LBL[99] ;
  10:   ;
  11:  ! CHECK OPTION BIT A ;
  12:  IF DI[20]=OFF,JMP LBL[10] ;
  13:  DO[20]=ON ;
  14:   ;
  15:  LBL[10] ;
  16:  ! CHECK OPTION BIT B ;
  17:  IF DI[21]=OFF,JMP LBL[20] ;
  18:  DO[21]=ON ;
  19:   ;
  20:  LBL[20] ;
  21:  ! CHECK OPTION BIT C ;
  22:  IF DI[22]=OFF,JMP LBL[30] ;
  23:  DO[22]=ON ;
  24:   ;
  25:  LBL[30] ;
  26:  ! CHECK OPTION BIT D ;
  27:  IF DI[23]=OFF,JMP LBL[40] ;
  28:  DO[23]=ON ;
  29:   ;
  30:  LBL[40] ;
  31:  ! CHECK OPTION BIT E ;
  32:  IF DI[24]=OFF,JMP LBL[99] ;
  33:  DO[24]=ON ;
  34:   ;
  35:  LBL[99] ;
/POS
/END
