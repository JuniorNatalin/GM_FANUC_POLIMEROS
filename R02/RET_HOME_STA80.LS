/PROG  RET_HOME_STA80
/ATTR
OWNER		= SHIFT;
COMMENT		= "STA80 Return";
PROG_SIZE	= 546;
CREATE		= DATE 18-03-12  TIME 16:51:00;
MODIFIED	= DATE 18-10-13  TIME 17:29:54;
FILE_NAME	= ARET_HOM;
VERSION		= 0;
LINE_COUNT	= 15;
MEMORY_SIZE	= 858;
PROTECT		= READ_WRITE;
STORAGE		= SHADOW;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
  HANDLING : TRUE ; 
/MN
   1:  !******************************** ;
   2:  !PATH: return home from ;
   3:  !        STA80 tool stands ;
   4:  !******************************** ;
   5:  !* ROBOT ID: IM01R02B02 ;
   6:  !*    F-196844 ;
   7:  !* Line: Line B02 ;
   8:  !******************************** ;
   9:   ;
  10:  UFRAME_NUM=0 ;
  11:  UTOOL_NUM=14 ;
  12:   ;
  13:J PR[1] 100% FINE    ;
  14:   ;
  15:  END ;
/POS
/END
