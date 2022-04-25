/PROG  RET_HOME_STA70
/ATTR
OWNER		= SHIFT;
COMMENT		= "STA70 Return";
PROG_SIZE	= 845;
CREATE		= DATE 18-03-12  TIME 16:50:46;
MODIFIED	= DATE 18-10-13  TIME 17:02:46;
FILE_NAME	= ARET_HOM;
VERSION		= 0;
LINE_COUNT	= 15;
MEMORY_SIZE	= 1157;
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
   3:  !        STA70 tool stands ;
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
  14:   ;
  15:  END ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2157.965  mm,	Y =  1020.774  mm,	Z =  1799.158  mm,
	W =  -149.817 deg,	P =    -8.762 deg,	R =    77.858 deg
};
/END
