/PROG  STYLE128_ZDT
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "ZDT Test";
PROG_SIZE	= 1491;
CREATE		= DATE 17-07-21  TIME 11:27:56;
MODIFIED	= DATE 17-07-21  TIME 12:26:18;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 45;
MEMORY_SIZE	= 1951;
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
  HANDLING : TRUE ; 
/MN
   1:  !******************************** ;
   2:  ! GM METAL FORMING GLOBAL 4 S/W ;
   3:  !******************************** ;
   4:  ! MACRO FOR CHECKING ZDT ;
   5:  ! Full Stoke move with no ;
   6:  ! tooling attached ;
   7:  ! 10 deg robot movement J1-J6 ;
   8:  !******************************** ;
   9:  ! 2017-7-21 ESYS Created Program ;
  10:  !******************************** ;
  11:   ;
  12:  GO[1]=128 ;
  13:   ;
  14:  LBL[1:BEGIN] ;
  15:  UTOOL_NUM=1 ;
  16:  UFRAME_NUM=1 ;
  17:  SET SEGMENT(1) ;
  18:   ;
  19:  !Tool Check; NO TOOL ATTACHED ;
  20:  IF GI[15]<>255,JMP LBL[50] ;
  21:   ;
  22:  !Move to ZDT Test Position ;
  23:J P[1] 100% FINE    ;
  24:   ;
  25:  !Robot Torque test ;
  26:  CALL DIAG11    ;
  27:   ;
  28:  !Move to Home Position ;
  29:  MOVE TO HOME    ;
  30:   ;
  31:  JMP LBL[100] ;
  32:   ;
  33:  LBL[50:TOOL ON ROBOT] ;
  34:  !-------------------------------- ;
  35:  GO[70]=0 ;
  36:  MESSAGE[...] ;
  37:  MESSAGE[Test Stopped] ;
  38:  MESSAGE[Tool Present] ;
  39:  MESSAGE[Dropoff Tool(x) then Re-Test] ;
  40:  GO[1]=(0) ;
  41:  GO[3]=(0) ;
  42:  ABORT ;
  43:  !-------------------------------- ;
  44:   ;
  45:  LBL[100:END OF PROGRAM] ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  -191.292  mm,	Y =   612.902  mm,	Z =  2271.492  mm,
	W =    -8.131 deg,	P =     3.353 deg,	R =   -52.701 deg
};
/END
