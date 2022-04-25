/PROG  RET_FROM_PNC
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "POUNCE V4.0";
PROG_SIZE	= 1062;
CREATE		= DATE 17-07-05  TIME 05:00:56;
MODIFIED	= DATE 17-07-18  TIME 19:07:46;
FILE_NAME	= S22POUNC;
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
   2:  !PATH: pounce to home ;
   3:  !******************************** ;
   4:  !PROGRAM : GMTXXX ;
   5:  !ASSEMBLY: XXXXXX ;
   6:  !ROBOT ID: XXXXXX ;
   7:  !******************************** ;
   8:  !POUNCE TO HOME - PATH SEGMENT ;
   9:   ;
  10:  PAYLOAD[R[220]] ;
  11:  UTOOL_NUM=1 ;
  12:   ;
  13:  ENTER I-ZONE(1) ;
  14:   ;
  15:  !AT POUNCE ;
  16:J P[4] 50% CNT100    ;
  17:J P[3] 50% CNT100    ;
  18:J P[2] 50% CNT100    ;
  19:L P[1] 1000mm/sec CNT100    ;
  20:   ;
  21:  MOVE TO HOME    ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  -744.704  mm,	Y =  1320.373  mm,	Z =  1638.887  mm,
	W =     0.000 deg,	P =     4.729 deg,	R =   -60.577 deg
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
	X =  -673.785  mm,	Y = -1164.454  mm,	Z =  1217.369  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =    60.000 deg
};
/END
