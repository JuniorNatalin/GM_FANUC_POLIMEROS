/PROG  POUNCE_STA80
/ATTR
OWNER		= SHIFT;
COMMENT		= "POUNCE STA80";
PROG_SIZE	= 905;
CREATE		= DATE 18-03-14  TIME 14:42:44;
MODIFIED	= DATE 22-02-19  TIME 01:44:56;
FILE_NAME	= APOUNCE_;
VERSION		= 0;
LINE_COUNT	= 19;
MEMORY_SIZE	= 1201;
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
   2:  !PATH: pounce STA80 tool stands ;
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
  15:   ;
  16:  !AT POUNCE ;
  17:J P[1] 70% CNT100    ;
  18:   ;
  19:  REQUEST CONTINUE    ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 14,	
	J1=   153.180 deg,	J2=    26.630 deg,	J3=    30.977 deg,
	J4=     -.000 deg,	J5=   -89.663 deg,	J6=   -50.000 deg
};
/END
