/PROG  POUNCE_STA35
/ATTR
OWNER		= SHIFT;
COMMENT		= "POUNCE STA35";
PROG_SIZE	= 998;
CREATE		= DATE 18-03-14  TIME 09:42:28;
MODIFIED	= DATE 18-11-16  TIME 12:48:56;
FILE_NAME	= APOUNCE_;
VERSION		= 0;
LINE_COUNT	= 23;
MEMORY_SIZE	= 1278;
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
   4:  !* ROBOT ID: IM01R01B02 ;
   5:  !*    F-196840 ;
   6:  !* Line: Line B02 ;
   7:  !******************************** ;
   8:  !MOVE TO POUNCE - PATH SEGMENT ;
   9:   ;
  10:  SET SEGMENT(1) ;
  11:   ;
  12:  UTOOL_NUM=14 ;
  13:  UFRAME_NUM=0 ;
  14:   ;
  15:J P[1] 100% CNT100    ;
  16:   ;
  17:  !Move to Tool Pick ;
  18:  !AT POUNCE ;
  19:   ;
  20:J P[2] 100% CNT100    ;
  21:   ;
  22:  REQUEST CONTINUE    ;
  23:   ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 14,	
	J1=   -51.563 deg,	J2=  -106.411 deg,	J3=   110.000 deg,
	J4=    -2.091 deg,	J5=  -115.000 deg,	J6=     0.000 deg
};
P[2]{
   GP1:
	UF : 0, UT : 14,	
	J1=   -80.695 deg,	J2=  -120.000 deg,	J3=   110.000 deg,
	J4=      .304 deg,	J5=  -115.000 deg,	J6=    -7.954 deg
};
/END
