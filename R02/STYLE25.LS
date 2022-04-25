/PROG  STYLE25
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "SfTstBrkChk V4.0";
PROG_SIZE	= 1316;
CREATE		= DATE 14-04-08  TIME 14:51:54;
MODIFIED	= DATE 01-01-13  TIME 03:17:20;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 53;
MEMORY_SIZE	= 1760;
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
   1:  !************************* ;
   2:  !STYLE 25 ZDT SELF TEST ;
   3:  ! and Brakecheck ;
   4:  !************************* ;
   5:   ;
   6:  !ECHO STYLE AND OPTION ;
   7:  GO[1]=25 ;
   8:  ECHO OPTION    ;
   9:   ;
  10:  !IF option A run ZDT self test ;
  11:  IF DI[20]=ON,JMP LBL[10] ;
  12:   ;
  13:  !******************************** ;
  14:  !IF BUSY ON CALL BRKCHECK, ;
  15:  !GO TO MENUS 9 USER SCREEN ;
  16:  !******************************** ;
  17:  SET SEGMENT(8) ;
  18:  CALL BRKCHECK    ;
  19:  !******************************** ;
  20:  !IF BUSY ON CALL BRKCHECK, ;
  21:  !GO TO MENUS 9 USER SCREEN ;
  22:  !******************************** ;
  23:  !Number of Tests ;
  24:  R[400]=R[400]+1    ;
  25:   ;
  26:  JMP LBL[99] ;
  27:   ;
  28:  LBL[10:Skip BRKCHK] ;
  29:  SET SEGMENT(60) ;
  30:  !Check for Tool Changer ;
  31:  !CALL CKDNETND(55,38) ;
  32:  CALL CKENETND(55,38) ;
  33:   ;
  34:  IF R[38]=0,JMP LBL[20] ;
  35:  IF GI[15]>0,JMP LBL[25] ;
  36:   ;
  37:  LBL[20:ZDT Test] ;
  38:  CALL DIAG1    ;
  39:   ;
  40:  JMP LBL[99] ;
  41:   ;
  42:  LBL[25:TOOL ON ROBOT] ;
  43:  MESSAGE[Test Stopped] ;
  44:  MESSAGE[Tool is Present] ;
  45:  MESSAGE[Dropoff Tool(x) then Re-Test] ;
  46:  GO[1]=0 ;
  47:  GO[3]=0 ;
  48:  ABORT ;
  49:   ;
  50:  LBL[99] ;
  51:  MOVE TO HOME    ;
  52:  GO[1]=0 ;
  53:  GO[3]=0 ;
/POS
/END
