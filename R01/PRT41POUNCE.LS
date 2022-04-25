/PROG  PRT41POUNCE
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "POUNCE Core 375";
PROG_SIZE	= 1148;
CREATE		= DATE 20-12-10  TIME 08:10:02;
MODIFIED	= DATE 20-12-10  TIME 08:10:02;
FILE_NAME	= PRT41POU;
VERSION		= 0;
LINE_COUNT	= 27;
MEMORY_SIZE	= 1412;
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
  21:J P[3] 100% CNT100    ;
  22:   ;
  23:  Set MH Tool(7) ;
  24:  Release Part(5) ;
  25:   ;
  26:  MESSAGE[WAITING AT POUNCE] ;
  27:  AT PICK POUNCE    ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =  2709.885  mm,	Y =  1729.546  mm,	Z =  1182.152  mm,
	W =   145.717 deg,	P =   -23.578 deg,	R =    70.765 deg
};
P[3]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =   931.475  mm,	Y =  2176.482  mm,	Z =   524.458  mm,
	W =   175.212 deg,	P =    87.787 deg,	R =   170.899 deg
};
/END
