/PROG  OKTOPICK	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Chk OK to Pick 1";
PROG_SIZE	= 640;
CREATE		= DATE 99-11-08  TIME 14:38:36;
MODIFIED	= DATE 99-12-23  TIME 15:44:48;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 15;
MEMORY_SIZE	= 960;
PROTECT		= READ;
STORAGE		= CMOS;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
/MN
   1:  !Calls karel program for checking ;
   2:  !the valves specified by calling ;
   3:  !chkgrcls to check clamps or ;
   4:  !vacuum inputs and chkpart to  ;
   5:  !check part present inputs. ;
   6:   ;
   7:  !Also calls clr2prcd to check ;
   8:  !any user specified criteria. ;
   9:   ;
  10:  !Arguments are valve numbers. ;
  11:   ;
  12:  !If no argument is given, the ;
  13:  !macro will use the current valve ;
  14:   ;
  15:  CALL MHOKPICK(AR[1],AR[2],AR[3],AR[4],AR[5],AR[6],AR[7],AR[8],AR[9]) ;
/POS
/END
