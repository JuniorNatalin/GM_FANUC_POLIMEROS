/PROG  TC_RET_HOME
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "DROP HEAD1 V4.0 ";
PROG_SIZE	= 619;
CREATE		= DATE 17-06-29  TIME 05:05:30;
MODIFIED	= DATE 18-03-09  TIME 14:39:16;
FILE_NAME	= TCDROPT1;
VERSION		= 0;
LINE_COUNT	= 8;
MEMORY_SIZE	= 959;
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
/MN
   1:  !BEGIN DROP HEAD PROGRAM ;
   2:  !FOR TOOL (01) ;
   3:   ;
   4:  UFRAME_NUM=0 ;
   5:  UTOOL_NUM=1 ;
   6:J P[1] 25% CNT0    ;
   7:   ;
   8:  END ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2307.438  mm,	Y =  -392.439  mm,	Z =   946.913  mm,
	W =   158.788 deg,	P =    34.603 deg,	R =   144.117 deg
};
/END
