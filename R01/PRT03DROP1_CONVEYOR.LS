/PROG  PRT03DROP1_CONVEYOR
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "ROBOT DROP 335";
PROG_SIZE	= 1662;
CREATE		= DATE 21-06-09  TIME 19:29:54;
MODIFIED	= DATE 21-06-09  TIME 19:33:46;
FILE_NAME	= PRT01DRO;
VERSION		= 0;
LINE_COUNT	= 55;
MEMORY_SIZE	= 1942;
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
   2:  !DROPOFF PART TO CONVEYOR ;
   3:  !******************************** ;
   4:   ;
   5:  !ASSIGN PATH SEGEMENT VALUES ;
   6:  SET SEGMENT(32) ;
   7:   ;
   8:  !******IMPORTANT************ ;
   9:  !for MH tool changers ;
  10:  !make sure Set MH TOOL(AR) ;
  11:  !matches tool number ;
  12:  Set MH Tool(3) ;
  13:   ;
  14:  UTOOL_NUM=1 ;
  15:  UFRAME_NUM=0 ;
  16:   ;
  17:J P[1] 100% CNT100    ;
  18:   ;
  19:  ENTER I-ZONE(1) ;
  20:  ENTER I-ZONE(2) ;
  21:   ;
  22:   ;
  23:   ;
  24:J P[2] 100% CNT100    ;
  25:J P[3] 100% CNT100    ;
  26:J P[4] 100% CNT75    ;
  27:   ;
  28:J P[5:Abv Drop] 100% CNT75    ;
  29:   ;
  30:  !Robot at conveyor ;
  31:L P[6:At Drop] 1000mm/sec FINE    ;
  32:   ;
  33:  Release Part(5) ;
  34:   ;
  35:  VACUUM CAN 1 OFF(6,7) ;
  36:   ;
  37:  !verify no part in tool ;
  38:L P[5:Abv Drop] 500mm/sec FINE    ;
  39:   ;
  40:  REQUEST CONTINUE    ;
  41:   ;
  42:  !Robot clear of conveyor ;
  43:  SET SEGMENT(33) ;
  44:   ;
  45:L P[4] 2000mm/sec CNT100    ;
  46:   ;
  47:J P[3] 100% CNT100    ;
  48:J P[2] 100% CNT100    ;
  49:J P[1] 100% CNT100    ;
  50:   ;
  51:  EXIT I-ZONE(1) ;
  52:  EXIT I-ZONE(2) ;
  53:   ;
  54:  !Robot clear of all ;
  55:  SET SEGMENT(63) ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -181.230  mm,	Y = -2021.482  mm,	Z =  1791.645  mm,
	W =   177.608 deg,	P =   -24.251 deg,	R =   -88.343 deg
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -375.630  mm,	Y = -2285.480  mm,	Z =   774.043  mm,
	W =   177.608 deg,	P =   -24.247 deg,	R =   -55.112 deg
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -819.628  mm,	Y = -2292.679  mm,	Z =    25.243  mm,
	W =   177.609 deg,	P =   -24.240 deg,	R =   -59.502 deg
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1417.229  mm,	Y = -2292.680  mm,	Z =  -785.957  mm,
	W =   177.608 deg,	P =   -24.246 deg,	R =      .690 deg
};
P[5:"Abv Drop"]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1798.711  mm,	Y = -2302.678  mm,	Z = -1402.239  mm,
	W =   179.919 deg,	P =   -32.456 deg,	R =    -1.245 deg
};
P[6:"At Drop"]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1798.711  mm,	Y = -2302.678  mm,	Z = -1547.607  mm,
	W =   179.919 deg,	P =   -32.456 deg,	R =    -1.245 deg
};
/END
