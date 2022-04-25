/PROG  STYLE129
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "SfTstBrkChk V4.1";
PROG_SIZE	= 1116;
CREATE		= DATE 15-04-07  TIME 11:23:10;
MODIFIED	= DATE 17-02-14  TIME 06:35:54;
FILE_NAME	= STYLE25;
VERSION		= 0;
LINE_COUNT	= 31;
MEMORY_SIZE	= 1372;
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
/MN
   1:  !******************************** ;
   2:  !  GM METAL FORMING GLOBAL 4 S/W ;
   3:  !******************************** ;
   4:  !BRAKE CHECK MACRO; ZDT. ;
   5:  !     THIS IS THE SAME AS THE ;
   6:  !     STANDARD MACRO EXCEPT IT ;
   7:  !     USES STYLE NUMBER 100. ;
   8:  !     REMARK SG GUN. ;
   9:  !******************************** ;
  10:  !2017-02-14 Global-4 S/W Rel 4.1 ;
  11:  !******************************** ;
  12:  !ECHO STYLE AND OPTION ;
  13:  GO[1:0]=129 ;
  14:  ECHO OPTION    ;
  15:   ;
  16:  !******************************** ;
  17:  !IF BUSY ON CALL BRKCHECK, ;
  18:  !GO TO MENUS 9 USER SCREEN ;
  19:  !******************************** ;
  20:  SET SEGMENT(8) ;
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
  31:  MOVE TO HOME    ;
/POS
/END
