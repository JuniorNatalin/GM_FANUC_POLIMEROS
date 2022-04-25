/PROG  OPN_VLE7	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "OPEN VALVE7 (B)";
PROG_SIZE	= 560;
CREATE		= DATE 18-03-21  TIME 11:15:42;
MODIFIED	= DATE 18-03-21  TIME 11:16:20;
FILE_NAME	= OPN_VLE6;
VERSION		= 0;
LINE_COUNT	= 13;
MEMORY_SIZE	= 888;
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
   4:  ! MACRO TO OPEN VALVE 6 (B POS) ;
   5:  !******************************** ;
   6:  ! 2014-08-07 GLOBAL-4 S/W Rel 4.0 ;
   7:  !******************************** ;
   8:   ;
   9:  CALL DMSTAT    ;
  10:   ;
  11:  DO[819:OFF]=OFF ;
  12:  DO[820:OFF]=ON ;
  13:   ;
/POS
/END
