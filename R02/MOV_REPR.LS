/PROG  MOV_REPR
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "REPAIR PROG V4.0";
PROG_SIZE	= 1043;
CREATE		= DATE 09-08-18  TIME 08:37:36;
MODIFIED	= DATE 16-04-05  TIME 13:35:22;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 27;
MEMORY_SIZE	= 1463;
PROTECT		= READ_WRITE;
STORAGE		= SHADOW;
TCD:  STACK_SIZE	= 500,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
/MN
   1:  !**************************** ;
   2:  !MACRO REPAIR ;
   3:  !**************************** ;
   4:  LBL[10] ;
   5:  UTOOL_NUM=1 ;
   6:  GO[1]=31 ;
   7:  SET SEGMENT(2) ;
   8:   ;
   9:  !REPAIR FOR TOOLCHANGERS ;
  10:  !MUST BE CLEAR FOR ALL TOOLS 1-4 ;
  11:  !PLC CAN SEND ROBOT TO REPAIR ;
  12:  !WITH ANY TOOL OR NO TOOL. ;
  13:   ;
  14:  MESSAGE[MOVING TO REPAIR] ;
  15:  !PROGRAM PATH TO REPAIR HERE ;
  16:   ;
  17:J P[1] 50% FINE    ;
  18:   ;
  19:  CALL PRE_REPR    ;
  20:   ;
  21:  MESSAGE[RETURNING FROM REPAIR] ;
  22:  !PROGRAM RETURN POINTS HERE ;
  23:   ;
  24:  CALL MOV_HOME    ;
  25:   ;
  26:  CALL POSTREPR    ;
  27:  IF (F[35]),JMP LBL[10] ;
/POS
P[1]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X =  ********  mm,	Y =  ********  mm,	Z =  ********  mm,
	W =  ******** deg,	P =  ******** deg,	R =  ******** deg
};
/END
