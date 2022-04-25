/PROG  PRT38POUNCE
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "POUNCE Core 373";
PROG_SIZE	= 1294;
CREATE		= DATE 19-07-12  TIME 13:17:52;
MODIFIED	= DATE 21-05-13  TIME 12:13:38;
FILE_NAME	= PRT38POU;
VERSION		= 0;
LINE_COUNT	= 31;
MEMORY_SIZE	= 1542;
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
   2:  ! PATH - pounce core pick ;
   3:  !*    core (moving) end ;
   4:  !******************************** ;
   5:  !PROGRAM : PRT02POUNCE ;
   6:  !ASSEMBLY: XXXXXX ;
   7:  !ROBOT ID: F196839 ;
   8:  !******************************** ;
   9:  !MOVE TO POUNCE - PATH SEGMENT ;
  10:   ;
  11:  SET SEGMENT(1) ;
  12:  !SET SEGMENT(1), Home to Pounce ;
  13:   ;
  14:  !Set ATI Tool and World UFrame ;
  15:  UTOOL_NUM=7 ;
  16:  UFRAME_NUM=0 ;
  17:  PAYLOAD[14] ;
  18:   ;
  19:  !AT POUNCE ;
  20:J P[1] 100% CNT100    ;
  21:J P[2] 100% CNT100    ;
  22:J P[3] 100% CNT100    ;
  23:J P[4] 100% CNT100    ;
  24:   ;
  25:  Set MH Tool(7) ;
  26:  Release Part(5) ;
  27:  Release Part(2) ;
  28:  Release Part(1) ;
  29:   ;
  30:  MESSAGE[WAITING AT POUNCE] ;
  31:  AT PICK POUNCE    ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =  1949.106  mm,	Y =  1230.107  mm,	Z =   582.197  mm,
	W =  -172.931 deg,	P =    18.897 deg,	R =   121.677 deg
};
P[2]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =  1299.980  mm,	Y =  2243.048  mm,	Z =   594.258  mm,
	W =  -169.463 deg,	P =    18.499 deg,	R =   138.768 deg
};
P[3]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =  1010.677  mm,	Y =  2176.482  mm,	Z =   524.458  mm,
	W =  -174.407 deg,	P =    35.674 deg,	R =  -178.543 deg
};
P[4]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =   799.474  mm,	Y =  2176.482  mm,	Z =   524.458  mm,
	W =   175.212 deg,	P =    87.787 deg,	R =   170.899 deg
};
/END
