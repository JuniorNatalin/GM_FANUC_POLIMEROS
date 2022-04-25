/PROG  RET_HOME_STA50
/ATTR
OWNER		= SHIFT;
COMMENT		= "STA50 Return";
PROG_SIZE	= 1137;
CREATE		= DATE 18-03-12  TIME 16:51:14;
MODIFIED	= DATE 18-11-04  TIME 09:41:12;
FILE_NAME	= ARET_HOM;
VERSION		= 0;
LINE_COUNT	= 25;
MEMORY_SIZE	= 1409;
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
   2:  !PATH: return home from ;
   3:  !        STA50 tool stands ;
   4:  !******************************** ;
   5:  !* ROBOT ID: IM01R02B02 ;
   6:  !*    F-196844 ;
   7:  !* Line: Line B02 ;
   8:  !******************************** ;
   9:   ;
  10:  UFRAME_NUM=0 ;
  11:  UTOOL_NUM=14 ;
  12:   ;
  13:  ENTER I-ZONE(2) ;
  14:  ENTER I-ZONE(1) ;
  15:   ;
  16:J P[1] 100% CNT100    ;
  17:J P[2] 100% CNT100    ;
  18:J P[3] 100% CNT100    ;
  19:J P[4] 100% CNT100    ;
  20:J P[5] 100% CNT100    ;
  21:   ;
  22:  EXIT I-ZONE(1) ;
  23:  EXIT I-ZONE(2) ;
  24:   ;
  25:  END ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 14,	
	J1=  -145.477 deg,	J2=   -28.708 deg,	J3=    89.000 deg,
	J4=     2.573 deg,	J5=   -83.800 deg,	J6=   -90.000 deg
};
P[2]{
   GP1:
	UF : 0, UT : 14,	
	J1=   -87.366 deg,	J2=   -28.708 deg,	J3=    82.000 deg,
	J4=     2.573 deg,	J5=   -83.800 deg,	J6=   -90.000 deg
};
P[3]{
   GP1:
	UF : 0, UT : 14,	
	J1=     3.075 deg,	J2=   -28.708 deg,	J3=    82.000 deg,
	J4=     2.573 deg,	J5=   -83.800 deg,	J6=   -90.000 deg
};
P[4]{
   GP1:
	UF : 0, UT : 14,	
	J1=    95.076 deg,	J2=   -28.708 deg,	J3=    75.000 deg,
	J4=     2.573 deg,	J5=   -83.800 deg,	J6=   -90.000 deg
};
P[5]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -1140.855  mm,	Y =   200.393  mm,	Z =  2745.507  mm,
	W =   -98.230 deg,	P =    -1.434 deg,	R =    83.330 deg
};
/END
