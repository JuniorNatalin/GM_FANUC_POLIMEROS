/PROG  STYLE18_R01
/ATTR
OWNER		= simulati;
COMMENT		= "style18_R01";
PROG_SIZE	= 916;
CREATE		= DATE 01-11-04  TIME 17:27:06;
MODIFIED	= DATE 21-12-28  TIME 09:40:10;
FILE_NAME	= STYLE18_;
VERSION		= 0;
LINE_COUNT	= 32;
MEMORY_SIZE	= 1320;
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
   3:  !ROBOT: KM3200_1_R01 ;
   4:  !STYLE: 18 ;
   5:  !ASSEMBLY: REAR_FASCIA_UPPER ;
   6:  !******************************** ;
   7:  !PROCESS SIMULATE: v15.1 ;
   8:  !TEACH: Fanuc RJ v2.72 ;
   9:  !XML  : v8.3_R30iB_GM_global4 ;
  10:  !STUDY: JCCC1_FRONT_FASCIA_UPPER ;
  11:  !USER : HZFLTF ;
  12:  !DATE : 2021-11-04 ;
  13:  !******************************** ;
  14:  ! TEMPLATE 5 ;
  15:  !STYLE XX MH ONLY ;
  16:  !************************* ;
  17:   ;
  18:  !ECHO STYLE AND OPTION ;
  19:  GO[1:0]=18 ;
  20:  ECHO OPTION    ;
  21:   ;
  22:  CALL S18POUNC    ;
  23:   ;
  24:  CALL S18PICK1    ;
  25:   ;
  26:  CALL S18PROC1    ;
  27:   ;
  28:  REQUEST CONTINUE    ;
  29:   ;
  30:  CALL S18DROP1    ;
  31:   ;
  32:  MOVE TO HOME    ;
/POS
/END
