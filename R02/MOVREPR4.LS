/PROG  MOVREPR4
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "REPAIR 4 V4.0";
PROG_SIZE	= 1125;
CREATE		= DATE 09-08-18  TIME 08:37:36;
MODIFIED	= DATE 01-01-13  TIME 03:14:04;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 29;
MEMORY_SIZE	= 1389;
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
   2:  !MACRO REPAIR 4 ;
   3:  !Alternate Repair Position ;
   4:  !**************************** ;
   5:  UTOOL_NUM=1 ;
   6:  GO[1]=34 ;
   7:  SET SEGMENT(76) ;
   8:   ;
   9:  !Program Alternate Reapair ;
  10:  !position for cleaning, ;
  11:  !inspection etc... ;
  12:   ;
  13:  !NOTE: This Repair Position ;
  14:  !may be programmed in a position ;
  15:  !that interferes with running ;
  16:  !normal production. ;
  17:   ;
  18:  MESSAGE[MOVING TO REPAIR 4] ;
  19:  !PROGRAM PATH TO REPAIR HERE ;
  20:   ;
  21:J P[1] 50% FINE    ;
  22:   ;
  23:  REQUEST CONTINUE    ;
  24:  SET SEGMENT(77) ;
  25:   ;
  26:  MESSAGE[RETURNING FROM REPAIR 4] ;
  27:  !PROGRAM RETURN POINTS HERE ;
  28:   ;
  29:  CALL MOV_HOME    ;
/POS
P[1]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X =  ********  mm,	Y =  ********  mm,	Z =  ********  mm,
	W =  ******** deg,	P =  ******** deg,	R =  ******** deg
};
/END
