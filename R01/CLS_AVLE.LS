/PROG  CLS_AVLE	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "CLS ALL VALVES-A";
PROG_SIZE	= 702;
CREATE		= DATE 06-12-07  TIME 07:26:18;
MODIFIED	= DATE 16-07-07  TIME 08:25:46;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 21;
MEMORY_SIZE	= 1046;
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
   4:  ! MACRO TO CLOSE ALL CONFIGURED ;
   5:  ! VALVES (A POS). MACRO IS TO BE ;
   6:  ! CUSTOMIZED AS NEEDED. ;
   7:  !******************************** ;
   8:  ! 2016-04-05 Global-4 S/W Rel 4.0 ;
   9:  !******************************** ;
  10:   ;
  11:  CALL DMSTAT    ;
  12:   ;
  13:  CALL CLS_VLE1    ;
  14:  CALL CLS_VLE2    ;
  15:   ;
  16:  CALL CLS_VLE3    ;
  17:  CALL CLS_VLE4    ;
  18:   ;
  19:  CALL CLS_VLE5    ;
  20:  CALL CLS_VLE6    ;
  21:   ;
/POS
/END
