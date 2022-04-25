/PROG  PRE_REPR
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "PRERPR V4.3";
PROG_SIZE	= 1270;
CREATE		= DATE 16-12-06  TIME 10:36:44;
MODIFIED	= DATE 17-02-08  TIME 08:25:28;
FILE_NAME	= PRE_REPR;
VERSION		= 0;
LINE_COUNT	= 47;
MEMORY_SIZE	= 1746;
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
/MN
   1:  IF (DO[2002]=ON OR DO[2003]),CALL OPENGUNS ;
   2:  IF DO[18]=OFF,JMP LBL[50] ;
   3:  UALM[3] ;
   4:   ;
   5:  IF (DO[2002]=ON AND F[31]=ON OR DO[2003] AND F[32]=ON),JMP LBL[10] ;
   6:   ;
   7:  IF (DO[2008]=ON AND F[31]=ON OR DO[2009] AND F[32]=ON),JMP LBL[20] ;
   8:   ;
   9:  IF DO[2004]=ON,JMP LBL[99] ;
  10:   ;
  11:  !WELD OPTIONS ;
  12:  LBL[10] ;
  13:  IF DO[2002]=ON,CALL CAP_SELC ;
  14:  CALL CUSTOLST(2,40,3) ;
  15:  JMP LBL[99] ;
  16:   ;
  17:  !SPR OPTIONS ;
  18:  LBL[20] ;
  19:  ! FFR OPTIONS ;
  20:  !Check if continue next flag ;
  21:  !set due to after rivet fault ;
  22:  IF (F[84]),JMP LBL[22] ;
  23:  !******************************** ;
  24:  !IF BUSY ON CALL CUSTOYN, ;
  25:  !GO TO MENUS 9 USER SCREEN ;
  26:  !******************************** ;
  27:  CALL CUSTOYN(15,40) ;
  28:  !******************************** ;
  29:  !IF BUSY ON CALL CUSTOYN, ;
  30:  !GO TO MENUS 9 USER SCREEN ;
  31:  !******************************** ;
  32:  IF R[40]=1,JMP LBL[22] ;
  33:  !Continue Last ;
  34:  R[402]=1    ;
  35:  JMP LBL[99] ;
  36:  LBL[22:Continue Next] ;
  37:  R[403]=1    ;
  38:  !Reset continue next flag ;
  39:  F[84]=(OFF) ;
  40:  JMP LBL[99] ;
  41:   ;
  42:   ;
  43:  LBL[50] ;
  44:  REQUEST CONTINUE    ;
  45:   ;
  46:  LBL[99] ;
  47:  SET SEGMENT(3) ;
/POS
/END
