/PROG  MASTERPS
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1492;
CREATE		= DATE 17-07-04  TIME 14:06:38;
MODIFIED	= DATE 17-12-06  TIME 08:51:52;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 42;
MEMORY_SIZE	= 1964;
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

  AUTOZONE_INTERFERENCE_AVOID;
    AUTOZONE_ENABLED         : FALSE;
    AUTOZONE_SCHEDULE_NUMBER : 1;
/MN
   1:  OVERRIDE=30% ;
   2:   ;
   3:  !**************************** ;
   4:  !move robot to zero position ;
   5:  !**************************** ;
   6:  IF GI[15:38]<>255,JMP LBL[905] ;
   7:   ;
   8:  UTOOL_NUM=1 ;
   9:  UFRAME_NUM=0 ;
  10:   ;
  11:J P[1] 37% CNT100    ;
  12:J P[2] 25% CNT100    ;
  13:J P[3] 25% CNT100    ;
  14:J P[4] 25% FINE    ;
  15:   ;
  16:  !check joints 2,3,4,5,6 ;
  17:  MESSAGE[check joints 2,3,4,5,6] ;
  18:  PAUSE ;
  19:   ;
  20:J P[8] 25% CNT100    ;
  21:J P[5] 25% CNT100    ;
  22:J P[6] 25% CNT100    ;
  23:J P[7] 25% FINE    ;
  24:  !check joints 1,4,5,6 ;
  25:  MESSAGE[check joints 1,4,5,6] ;
  26:  PAUSE ;
  27:   ;
  28:   ;
  29:  CALL MOV_HOME    ;
  30:  LBL[999] ;
  31:  END ;
  32:   ;
  33:  LBL[905:tool error] ;
  34:  MESSAGE[...] ;
  35:  MESSAGE[TOOL ERROR ] ;
  36:  MESSAGE[REMOVE TOOL FROM ROBOT] ;
  37:  MESSAGE[PRIOR TO CHECKING] ;
  38:  MESSAGE[MASTER POSITION] ;
  39:  DO[523:OFF]=ON ;
  40:  UALM[3] ;
  41:  DO[523:OFF]=OFF ;
  42:  JMP LBL[999] ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,	
	J1=   -39.868 deg,	J2=   -85.346 deg,	J3=    70.307 deg,
	J4=    -8.601 deg,	J5=   -31.212 deg,	J6=     0.000 deg
};
P[2]{
   GP1:
	UF : 0, UT : 1,	
	J1=   -90.000 deg,	J2=   -85.346 deg,	J3=    34.507 deg,
	J4=    -8.601 deg,	J5=   -31.212 deg,	J6=     0.000 deg
};
P[3]{
   GP1:
	UF : 0, UT : 1,	
	J1=   -90.000 deg,	J2=   -48.323 deg,	J3=     7.500 deg,
	J4=    -4.870 deg,	J5=   -17.672 deg,	J6=     0.000 deg
};
P[4]{
   GP1:
	UF : 0, UT : 1,	
	J1=   -90.000 deg,	J2=     0.000 deg,	J3=     0.000 deg,
	J4=     0.000 deg,	J5=     0.000 deg,	J6=     0.000 deg
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    18.212  mm,	Y = -1964.675  mm,	Z =  -427.571  mm,
	W =  -175.134 deg,	P =    -2.982 deg,	R =   -97.358 deg
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2024.771  mm,	Y = -1667.326  mm,	Z =   532.693  mm,
	W =  -169.646 deg,	P =   -38.429 deg,	R =   -49.265 deg
};
P[7]{
   GP1:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   -90.000 deg,	J3=    90.000 deg,
	J4=     0.000 deg,	J5=     0.000 deg,	J6=     0.000 deg
};
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =     3.006  mm,	Y = -1800.320  mm,	Z = -1318.739  mm,
	W =  -179.976 deg,	P =    11.998 deg,	R =   -93.411 deg
};
/END
