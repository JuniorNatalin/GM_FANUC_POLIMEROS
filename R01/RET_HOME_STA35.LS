/PROG  RET_HOME_STA35
/ATTR
OWNER		= SHIFT;
COMMENT		= "STA35 Return";
PROG_SIZE	= 1013;
CREATE		= DATE 18-03-14  TIME 09:45:54;
MODIFIED	= DATE 19-03-04  TIME 17:18:40;
FILE_NAME	= ARET_HOM;
VERSION		= 0;
LINE_COUNT	= 22;
MEMORY_SIZE	= 1297;
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
   5:  !* ROBOT ID: IM01R01B02 ;
   6:  !*    F-196840 ;
   7:  !* Line: Line B02 ;
   8:  !******************************** ;
   9:   ;
  10:  UFRAME_NUM=0 ;
  11:  UTOOL_NUM=14 ;
  12:   ;
  13:J P[4] 100% CNT100    ;
  14:J P[2] 100% FINE    ;
  15:   ;
  16:  EXIT I-ZONE(1) ;
  17:  EXIT I-ZONE(2) ;
  18:   ;
  19:J P[3] 100% CNT100    ;
  20:   ;
  21:  EXIT I-ZONE(2) ;
  22:   ;
/POS
P[2]{
   GP1:
	UF : 0, UT : 14,	
	J1=   -19.908 deg,	J2=  -108.929 deg,	J3=   111.251 deg,
	J4=      .117 deg,	J5=   -91.261 deg,	J6=    -3.065 deg
};
P[3]{
   GP1:
	UF : 0, UT : 14,	
	J1=    -7.436 deg,	J2=  -106.554 deg,	J3=    98.423 deg,
	J4=      .043 deg,	J5=   -81.937 deg,	J6=    -1.145 deg
};
P[4]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X =   332.218  mm,	Y = -1704.161  mm,	Z =  1368.757  mm,
	W =   179.022 deg,	P =     4.913 deg,	R =   -88.808 deg
};
/END
