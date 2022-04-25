/PROG  MASTERPS
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1557;
CREATE		= DATE 17-07-04  TIME 14:06:38;
MODIFIED	= DATE 18-02-08  TIME 15:00:48;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 44;
MEMORY_SIZE	= 2021;
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
   6:  IF GI[15]<>255,JMP LBL[905] ;
   7:   ;
   8:  UTOOL_NUM=1 ;
   9:  UFRAME_NUM=0 ;
  10:   ;
  11:L P[1] 750mm/sec CNT100    ;
  12:J P[2] 25% CNT100    ;
  13:J P[3] 25% CNT100    ;
  14:   ;
  15:J P[4] 25% FINE    ;
  16:   ;
  17:  !check joints 1,4,5,6 ;
  18:  MESSAGE[check joints 1,4,5,6] ;
  19:  PAUSE ;
  20:   ;
  21:J P[5] 25% CNT100    ;
  22:J P[6] 25% CNT100    ;
  23:J P[7] 25% CNT100    ;
  24:J P[8] 25% FINE    ;
  25:  !check joints 2,3,4,5,6 ;
  26:  MESSAGE[check joints 2,3,4,5,6] ;
  27:  PAUSE ;
  28:   ;
  29:J P[9] 25% FINE    ;
  30:   ;
  31:  CALL MOV_HOME    ;
  32:  LBL[999] ;
  33:  END ;
  34:   ;
  35:  LBL[905:tool error] ;
  36:  MESSAGE[...] ;
  37:  MESSAGE[TOOL ERROR ] ;
  38:  MESSAGE[REMOVE TOOL FROM ROBOT] ;
  39:  MESSAGE[PRIOR TO CHECKING] ;
  40:  MESSAGE[MASTER POSITION] ;
  41:  DO[523]=ON ;
  42:  UALM[3] ;
  43:  DO[523]=OFF ;
  44:  JMP LBL[999] ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  -744.713  mm,	Y =  1320.380  mm,	Z =  1638.870  mm,
	W =     0.000 deg,	P =     4.728 deg,	R =   -60.577 deg
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   374.685  mm,	Y =  1159.970  mm,	Z =  1605.967  mm,
	W =     0.000 deg,	P =    11.200 deg,	R =  -107.901 deg
};
P[3]{
   GP1:
	UF : 0, UT : 1,	
	J1=     9.992 deg,	J2=   -40.639 deg,	J3=    11.201 deg,
	J4=     0.000 deg,	J5=    15.000 deg,	J6=     0.000 deg
};
P[4]{
   GP1:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   -40.639 deg,	J3=   -23.450 deg,
	J4=     0.000 deg,	J5=     0.000 deg,	J6=     0.000 deg
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1456.330  mm,	Y =   256.574  mm,	Z =  1477.580  mm,
	W =     0.000 deg,	P =   -63.799 deg,	R =  -170.008 deg
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   374.685  mm,	Y =  1159.970  mm,	Z =  1605.967  mm,
	W =     0.000 deg,	P =    11.201 deg,	R =  -107.901 deg
};
P[7]{
   GP1:
	UF : 0, UT : 1,	
	J1=   119.424 deg,	J2=   -25.714 deg,	J3=     6.965 deg,
	J4=     0.000 deg,	J5=    87.763 deg,	J6=     0.000 deg
};
P[8]{
   GP1:
	UF : 0, UT : 1,	
	J1=   150.000 deg,	J2=     0.000 deg,	J3=     0.000 deg,
	J4=     0.000 deg,	J5=     0.000 deg,	J6=     0.000 deg
};
P[9]{
   GP1:
	UF : 0, UT : 1,	
	J1=   150.000 deg,	J2=     0.000 deg,	J3=     0.000 deg,
	J4=     0.000 deg,	J5=    90.000 deg,	J6=     0.000 deg
};
/END
