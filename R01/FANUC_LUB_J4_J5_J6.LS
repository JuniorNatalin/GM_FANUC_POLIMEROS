/PROG  FANUC_LUB_J4_J5_J6
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 980;
CREATE		= DATE 22-03-19  TIME 17:21:48;
MODIFIED	= DATE 22-03-19  TIME 17:21:48;
FILE_NAME	= FANUC_LU;
VERSION		= 0;
LINE_COUNT	= 19;
MEMORY_SIZE	= 1408;
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
   1:   ;
   2:   ;
   3:  UTOOL_NUM=10 ;
   4:  UFRAME_NUM=0 ;
   5:  PAYLOAD[1] ;
   6:  LBL[3] ;
   7:   ;
   8:J P[5] 50% FINE    ;
   9:   ;
  10:   ;
  11:   ;
  12:  !ALIVIO EIXOS 4_5_6 ;
  13:   ;
  14:J P[8] 100% FINE    ;
  15:J P[6] 100% FINE    ;
  16:J P[7] 100% FINE    ;
  17:J P[1] 100% FINE    ;
  18:J P[2] 100% FINE    ;
  19:  JMP LBL[3] ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 10,	
	J1=      .001 deg,	J2=  -105.136 deg,	J3=    90.770 deg,
	J4=    61.307 deg,	J5=    57.396 deg,	J6=     -.000 deg
};
P[2]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  2280.534  mm,	Y =  -593.729  mm,	Z =   890.900  mm,
	W =   118.123 deg,	P =     7.017 deg,	R =   -12.490 deg
};
P[5]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  2284.780  mm,	Y =    62.835  mm,	Z =   576.337  mm,
	W =  -179.779 deg,	P =    13.894 deg,	R =      .918 deg
};
P[6]{
   GP1:
	UF : 0, UT : 10,	
	J1=      .001 deg,	J2=  -105.136 deg,	J3=    90.770 deg,
	J4=    61.307 deg,	J5=    57.396 deg,	J6=     -.000 deg
};
P[7]{
   GP1:
	UF : 0, UT : 10,	
	J1=      .001 deg,	J2=  -105.136 deg,	J3=    90.769 deg,
	J4=    61.307 deg,	J5=    57.396 deg,	J6=   -61.307 deg
};
P[8]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  2280.534  mm,	Y =  -593.729  mm,	Z =   890.900  mm,
	W =   118.123 deg,	P =     7.017 deg,	R =   -12.490 deg
};
/END
