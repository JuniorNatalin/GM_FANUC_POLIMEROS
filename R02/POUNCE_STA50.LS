/PROG  POUNCE_STA50
/ATTR
OWNER		= SHIFT;
COMMENT		= "POUNCE STA50";
PROG_SIZE	= 1153;
CREATE		= DATE 18-03-14  TIME 14:43:34;
MODIFIED	= DATE 18-11-02  TIME 15:26:06;
FILE_NAME	= APOUNCE_;
VERSION		= 0;
LINE_COUNT	= 25;
MEMORY_SIZE	= 1425;
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
   2:  !PATH: pounce STA50 tool stands ;
   3:  !******************************** ;
   4:  !* ROBOT ID: IM01R02B02 ;
   5:  !*    F-196844 ;
   6:  !* Line: Line B02 ;
   7:  !******************************** ;
   8:  !MOVE TO POUNCE - PATH SEGMENT ;
   9:   ;
  10:  SET SEGMENT(1) ;
  11:   ;
  12:  UTOOL_NUM=14 ;
  13:  UFRAME_NUM=0 ;
  14:   ;
  15:  ENTER I-ZONE(1) ;
  16:  ENTER I-ZONE(2) ;
  17:   ;
  18:J P[1] 100% CNT100    ;
  19:J P[2] 100% CNT100    ;
  20:J P[3] 100% CNT100    ;
  21:J P[4] 100% CNT100    ;
  22:J P[5] 100% CNT100    ;
  23:   ;
  24:  !AT POUNCE ;
  25:  REQUEST CONTINUE    ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -1140.855  mm,	Y =   200.393  mm,	Z =  2745.507  mm,
	W =   -98.230 deg,	P =    -1.434 deg,	R =    83.330 deg
};
P[2]{
   GP1:
	UF : 0, UT : 14,	
	J1=    95.076 deg,	J2=   -28.708 deg,	J3=    75.000 deg,
	J4=     2.573 deg,	J5=   -83.800 deg,	J6=   -90.000 deg
};
P[3]{
   GP1:
	UF : 0, UT : 14,	
	J1=     3.075 deg,	J2=   -28.707 deg,	J3=    82.000 deg,
	J4=     2.573 deg,	J5=   -83.800 deg,	J6=   -90.000 deg
};
P[4]{
   GP1:
	UF : 0, UT : 14,	
	J1=   -87.366 deg,	J2=   -28.708 deg,	J3=    82.000 deg,
	J4=     2.573 deg,	J5=   -83.800 deg,	J6=   -90.000 deg
};
P[5]{
   GP1:
	UF : 0, UT : 14,	
	J1=  -144.853 deg,	J2=   -28.708 deg,	J3=    82.000 deg,
	J4=     2.573 deg,	J5=   -83.800 deg,	J6=   -90.000 deg
};
/END
