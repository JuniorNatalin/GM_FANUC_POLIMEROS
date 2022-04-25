/PROG  PRCTOHOM
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "PRC TO HOM V4.0";
PROG_SIZE	= 726;
CREATE		= DATE 00-01-13  TIME 16:51:56;
MODIFIED	= DATE 16-02-25  TIME 20:30:54;
FILE_NAME	= PRCTOHOM;
VERSION		= 0;
LINE_COUNT	= 19;
MEMORY_SIZE	= 1022;
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
  SPOT Welding Equipment Number : 1 ;
/MN
   1:  !Process1 to Home ;
   2:   ;
   3:   ;
   4:  !*********** SETUP ************** ;
   5:  ! ;
   6:  !Teach positions from the end of ;
   7:  !process path to home position. ;
   8:  !for MH combo applications ;
   9:   ;
  10:  !******************************** ;
  11:  !*********** WARNING ************ ;
  12:  !IF ADDITIONAL POSITIONS ARE NOT ;
  13:  !TAUGHT ROBOT WILL MOVE DIRECTLY ;
  14:  !HOME ;
  15:  MOVE TO HOME    ;
  16:  !*********** WARNING ************ ;
  17:  !******************************** ;
  18:   ;
  19:  ABORT ;
/POS
/END
