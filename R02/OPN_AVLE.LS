/PROG  OPN_AVLE	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "OPN ALL VALVES-B";
PROG_SIZE	= 726;
CREATE		= DATE 06-12-07  TIME 07:26:18;
MODIFIED	= DATE 22-04-09  TIME 09:00:10;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 23;
MEMORY_SIZE	= 1186;
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
  HANDLING : TRUE ; 
/MN
   1:  !******************************** ;
   2:  !  GM METAL FORMING GLOBAL 4 S/W ;
   3:  !******************************** ;
   4:  !  MACRO TO OPEN ALL CONFIGURED ;
   5:  !  VALVES (A POS). MACRO IS TO BE ;
   6:  ! CUSTOMIZED AS NEEDED. ;
   7:  !******************************** ;
   8:  ! 2016-10-25 Global-4 S/W Rel 4.0 ;
   9:  !******************************** ;
  10:   ;
  11:  CALL DMSTAT    ;
  12:   ;
  13:  CALL OPN_VLE1    ;
  14:  CALL OPN_VLE2    ;
  15:   ;
  16:  IF DO[811]=ON,JMP LBL[10] ;
  17:  CALL OPN_VLE3    ;
  18:  LBL[10] ;
  19:   ;
  20:  CALL OPN_VLE4    ;
  21:   ;
  22:  CALL OPN_VLE5    ;
  23:   ;
/POS
/END
