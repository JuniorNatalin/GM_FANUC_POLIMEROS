/PROG  POUNCE_STA70
/ATTR
OWNER		= SHIFT;
COMMENT		= "POUNCE STA70";
PROG_SIZE	= 901;
CREATE		= DATE 18-03-14  TIME 14:42:02;
MODIFIED	= DATE 22-02-19  TIME 01:50:14;
FILE_NAME	= APOUNCE_;
VERSION		= 0;
LINE_COUNT	= 18;
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
   2:  !PATH: pounce STA70 tool stands ;
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
  15:  !AT POUNCE ;
  16:J P[1] 40% CNT100    ;
  17:   ;
  18:  REQUEST CONTINUE    ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2157.965  mm,	Y =  1020.774  mm,	Z =  1799.156  mm,
	W =  -148.691 deg,	P =     -.556 deg,	R =    64.095 deg
};
/END
