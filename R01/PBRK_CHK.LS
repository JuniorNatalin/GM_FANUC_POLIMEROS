/PROG  PBRK_CHK	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "BrakeChk V3.0";
PROG_SIZE	= 1076;
CREATE		= DATE 09-05-20  TIME 21:02:14;
MODIFIED	= DATE 14-10-07  TIME 23:30:24;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 31;
MEMORY_SIZE	= 1332;
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
   1:  !******************************** ;
   2:  !  GM METAL FORMING GLOBAL 3 S/W ;
   3:  !******************************** ;
   4:  ! PBRK_CHK: BRAKE CHECK MACRO. ;
   5:  !     THIS IS THE SAME AS THE ;
   6:  !     STANDARD MACRO EXCEPT IT ;
   7:  !     USES STYLE NUMBER 100. ;
   8:  !******************************** ;
   9:  ! 2014-10-06 Global-3 S/W Rel 3.0 ;
  10:  !******************************** ;
  11:   ;
  12:  !ECHO STYLE ;
  13:  GO[1:0]=100 ;
  14:   ;
  15:  SET SEGMENT(8) ;
  16:   ;
  17:  !******************************** ;
  18:  !IF BUSY ON CALL BRKCHECK, ;
  19:  !GO TO MENUS 9 USER SCREEN ;
  20:  !******************************** ;
  21:  CALL BRKCHECK    ;
  22:  !******************************** ;
  23:  !IF BUSY ON CALL BRKCHECK, ;
  24:  !GO TO MENUS 9 USER SCREEN ;
  25:  !******************************** ;
  26:  !Number of Tests ;
  27:  R[400]=R[400]+1    ;
  28:   ;
  29:  GO[1:0]=0 ;
  30:  GO[3:0]=0 ;
  31:   ;
/POS
/END
