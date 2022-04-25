/PROG  POUNCE_STA35
/ATTR
OWNER		= SHIFT;
COMMENT		= "POUNCE STA35";
PROG_SIZE	= 1198;
CREATE		= DATE 20-08-12  TIME 14:38:00;
MODIFIED	= DATE 20-08-12  TIME 14:38:00;
FILE_NAME	= POUNCE_S;
VERSION		= 0;
LINE_COUNT	= 27;
MEMORY_SIZE	= 1462;
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
   2:  !PATH: pounce STA35 tool buck ;
   3:  !******************************** ;
   4:  !* ROBOT ID: IM01R02B02 ;
   5:  !*    F-196844 ;
   6:  !* Line: Line B02 ;
   7:  !******************************** ;
   8:  !******************************** ;
   9:  !MOVE TO POUNCE - PATH SEGMENT ;
  10:   ;
  11:  SET SEGMENT(1) ;
  12:   ;
  13:  !Entering Tool Change Zone ;
  14:  ENTER I-ZONE(1) ;
  15:  ENTER I-ZONE(2) ;
  16:   ;
  17:  UTOOL_NUM=14 ;
  18:  UFRAME_NUM=0 ;
  19:   ;
  20:J P[1] 100% CNT100    ;
  21:J P[2] 100% CNT100    ;
  22:J P[3] 50% CNT100    ;
  23:J P[4] 100% CNT100    ;
  24:   ;
  25:  !AT POUNCE ;
  26:  REQUEST CONTINUE    ;
  27:   ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -1140.855  mm,	Y =   200.393  mm,	Z =  2745.508  mm,
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
	UF : 0, UT : 14,		CONFIG : 'N U B, 0, 0, 0',
	X =   142.665  mm,	Y =   -70.640  mm,	Z =  2741.103  mm,
	W =   -91.792 deg,	P =     -.357 deg,	R =   -89.472 deg
};
P[4]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U B, 0, 0, 0',
	X =    48.844  mm,	Y =  -151.518  mm,	Z =  2741.103  mm,
	W =   -91.792 deg,	P =     -.357 deg,	R =  -135.263 deg
};
/END
