/PROG  RET_HOME_STA35
/ATTR
OWNER		= SHIFT;
COMMENT		= "STA35 Return";
PROG_SIZE	= 1062;
CREATE		= DATE 20-08-12  TIME 14:38:20;
MODIFIED	= DATE 20-08-12  TIME 14:38:20;
FILE_NAME	= RET_HOME;
VERSION		= 0;
LINE_COUNT	= 21;
MEMORY_SIZE	= 1350;
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
   3:  !        STA35 tool buck ;
   4:  !******************************** ;
   5:  !* ROBOT ID: IM01R02B02 ;
   6:  !*    F-196844 ;
   7:  !* Line: Line B02 ;
   8:  !******************************** ;
   9:   ;
  10:  UFRAME_NUM=0 ;
  11:  UTOOL_NUM=14 ;
  12:   ;
  13:J P[1] 100% CNT100    ;
  14:J P[2] 100% CNT100    ;
  15:J P[3] 100% CNT100    ;
  16:J P[4] 100% CNT100    ;
  17:   ;
  18:  EXIT I-ZONE(1) ;
  19:  EXIT I-ZONE(2) ;
  20:   ;
  21:  END ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U B, 0, 0, 0',
	X =    48.844  mm,	Y =  -151.518  mm,	Z =  2741.103  mm,
	W =   -91.792 deg,	P =     -.357 deg,	R =  -135.263 deg
};
P[2]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U B, 0, 0, 0',
	X =   142.665  mm,	Y =   -70.640  mm,	Z =  2741.103  mm,
	W =   -91.792 deg,	P =     -.357 deg,	R =   -89.472 deg
};
P[3]{
   GP1:
	UF : 0, UT : 14,	
	J1=    95.076 deg,	J2=   -28.708 deg,	J3=    75.000 deg,
	J4=     2.573 deg,	J5=   -83.800 deg,	J6=   -90.000 deg
};
P[4]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -1140.855  mm,	Y =   200.393  mm,	Z =  2745.508  mm,
	W =   -98.230 deg,	P =    -1.434 deg,	R =    83.330 deg
};
/END
