/PROG  STYLE18_R02
/ATTR
OWNER		= simulati;
COMMENT		= "style18_R02";
PROG_SIZE	= 1210;
CREATE		= DATE 01-11-04  TIME 17:28:24;
MODIFIED	= DATE 21-12-28  TIME 10:08:04;
FILE_NAME	= STYLE18_;
VERSION		= 0;
LINE_COUNT	= 48;
MEMORY_SIZE	= 1698;
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
/MN
   1:  !******************************** ;
   2:  !GENERAL MOTORS ;
   3:  !ROBOT: KM3200_M01_R02 ;
   4:  !STYLE: 18 ;
   5:  !ASSEMBLY: FRONT_FASCIA_UPPER ;
   6:  !******************************** ;
   7:  !PROCESS SIMULATE: v15.1 ;
   8:  !TEACH: Fanuc RJ v2.72 ;
   9:  !XML  : v8.3_R30iB_GM_global4 ;
  10:  !STUDY: JCCC1_FRONT_FASCIA_UPPER ;
  11:  !USER : HZFLTF ;
  12:  !DATE : 2021-11-04 ;
  13:  !******************************** ;
  14:  ! TEMPLATE 10 ;
  15:  !STYLE XX MH 1PED STUD ;
  16:  !************************* ;
  17:   ;
  18:  !ECHO STYLE AND OPTION ;
  19:  GO[1]=18 ;
  20:  ECHO OPTION    ;
  21:   ;
  22:  !FFR HANDLER ;
  23:  IF DO[18]=ON,JMP LBL[10] ;
  24:   ;
  25:  CALL S18POUNC    ;
  26:   ;
  27:  CALL S18PICK1    ;
  28:   ;
  29:  !CHECK FOR PROCESS BYPASSED ;
  30:  IF DO[66]=ON,CALL BYPPROC1 ;
  31:  IF DO[66]=ON,JMP LBL[20] ;
  32:   ;
  33:  LBL[10] ;
  34:  MAINT_PROG[1]=FFRSTUD1 ;
  35:   ;
  36:  CALL S18PROC1    ;
  37:   ;
  38:  !FFR HANDLER FOR PROCESS 1 ;
  39:  IF DO[18]=ON,JMP LBL[99] ;
  40:   ;
  41:  LBL[20] ;
  42:  REQUEST CONTINUE    ;
  43:   ;
  44:  CALL S18DROP1    ;
  45:   ;
  46:  MOVE TO HOME    ;
  47:   ;
  48:  LBL[99] ;
/POS
/END
