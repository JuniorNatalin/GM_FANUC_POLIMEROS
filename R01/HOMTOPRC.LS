/PROG  HOMTOPRC
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "HOM TO PRC V4.0";
PROG_SIZE	= 862;
CREATE		= DATE 00-01-13  TIME 16:51:56;
MODIFIED	= DATE 16-02-25  TIME 20:30:52;
FILE_NAME	= HOMTOPRC;
VERSION		= 0;
LINE_COUNT	= 23;
MEMORY_SIZE	= 1150;
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
   1:  !Home to Process 1 ;
   2:   ;
   3:  !Set Segment to the first ;
   4:  !segmentof the process you ;
   5:  !are returning to ;
   6:  CALL SET_SEGM(...) ;
   7:   ;
   8:  !*********** SETUP ************** ;
   9:  ! ;
  10:  !Teach positions from the home ;
  11:  !to the begining of the process ;
  12:  !for MH combo applications ;
  13:   ;
  14:  !******************************** ;
  15:  !*********** WARNING ************ ;
  16:  !IF ADDITIONAL POSITIONS ARE NOT ;
  17:  !TAUGHT ROBOT WILL MOVE DIRECTLY ;
  18:  !to the beginning of process ;
  19:   ;
  20:  !*********** WARNING ************ ;
  21:  !******************************** ;
  22:   ;
  23:   ;
/POS
/END
