/PROG  HOMFRPON
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "HOM FRM PNC V4.0";
PROG_SIZE	= 712;
CREATE		= DATE 00-01-13  TIME 16:51:56;
MODIFIED	= DATE 16-02-25  TIME 20:30:46;
FILE_NAME	= HOMFRPON;
VERSION		= 0;
LINE_COUNT	= 18;
MEMORY_SIZE	= 1012;
PROTECT		= READ_WRITE;
STORAGE		= SHADOW;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
  SPOT Welding Equipment Number : 1 ;
/MN
   1:  !Return Home from Pounce ;
   2:   ;
   3:  MESSAGE[ReturningHomeFromPounce] ;
   4:  !*********** SETUP ************** ;
   5:  ! ;
   6:  !Teach positions from pounce ;
   7:  !backup to home position. ;
   8:   ;
   9:  !******************************** ;
  10:  !*********** WARNING ************ ;
  11:  !IF ADDITIONAL POSITIONS ARE NOT ;
  12:  !TAUGHT ROBOT WILL MOVE DIRECTLY ;
  13:  !HOME ;
  14:  MOVE TO HOME    ;
  15:  !*********** WARNING ************ ;
  16:  !******************************** ;
  17:   ;
  18:  ABORT ;
/POS
/END
