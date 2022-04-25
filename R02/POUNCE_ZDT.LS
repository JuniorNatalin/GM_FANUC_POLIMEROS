/PROG  POUNCE_ZDT
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "POUNCE V4.0";
PROG_SIZE	= 1142;
CREATE		= DATE 17-07-21  TIME 11:29:28;
MODIFIED	= DATE 17-07-21  TIME 11:32:16;
FILE_NAME	= PRT22POU;
VERSION		= 0;
LINE_COUNT	= 26;
MEMORY_SIZE	= 1410;
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
   2:  !PATH: pounce at tool stands ;
   3:  !******************************** ;
   4:  !PROGRAM : GMTXXX ;
   5:  !ASSEMBLY: XXXXXX ;
   6:  !ROBOT ID: XXXXXX ;
   7:  !******************************** ;
   8:  !MOVE TO POUNCE - PATH SEGMENT ;
   9:   ;
  10:  SET SEGMENT(1) ;
  11:   ;
  12:  PAYLOAD[1] ;
  13:  UTOOL_NUM=1 ;
  14:  UFRAME_NUM=0 ;
  15:   ;
  16:  ENTER I-ZONE(1) ;
  17:   ;
  18:  !AT POUNCE ;
  19:L P[1] 1000mm/sec CNT100    ;
  20:J P[2] 50% CNT100    ;
  21:J P[3] 50% CNT100    ;
  22:J P[4] 50% FINE    ;
  23:   ;
  24:   ;
  25:  MESSAGE[WAITING AT POUNCE] ;
  26:  AT PICK POUNCE    ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1299.940  mm,	Y =   917.108  mm,	Z =  1569.966  mm,
	W =   -18.964 deg,	P =   -29.628 deg,	R =   -14.592 deg
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   374.686  mm,	Y =  1159.972  mm,	Z =  1605.967  mm,
	W =     0.000 deg,	P =    11.200 deg,	R =  -107.901 deg
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1200.495  mm,	Y =   211.501  mm,	Z =  1605.967  mm,
	W =     0.000 deg,	P =    11.200 deg,	R =  -170.008 deg
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  -295.217  mm,	Y =   889.888  mm,	Z =  2005.536  mm,
	W =   -11.554 deg,	P =    -7.994 deg,	R =   -52.562 deg
};
/END
