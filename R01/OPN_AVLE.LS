/PROG  OPN_AVLE	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "OPN ALL VALVES-B";
PROG_SIZE	= 676;
CREATE		= DATE 06-12-07  TIME 07:26:18;
MODIFIED	= DATE 16-10-26  TIME 13:51:56;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 19;
MEMORY_SIZE	= 1020;
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
  16:  CALL OPN_VLE3    ;
  17:  CALL OPN_VLE4    ;
  18:   ;
  19:  CALL OPN_VLE5    ;
/POS
/END
