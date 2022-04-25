/PROG  PRT42DROP1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "ROBOT DROP 376";
PROG_SIZE	= 2101;
CREATE		= DATE 20-08-11  TIME 09:37:56;
MODIFIED	= DATE 20-08-11  TIME 09:37:56;
FILE_NAME	= PRT42DRO;
VERSION		= 0;
LINE_COUNT	= 64;
MEMORY_SIZE	= 2473;
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
   6:  SET SEGMENT(35) ;
   7:   ;
   8:  !******IMPORTANT************ ;
   9:  !for MH tool changers ;
  10:  !make sure Set MH TOOL(AR) ;
  11:  !matches tool number ;
  12:  Set MH Tool(6) ;
  13:   ;
  14:  UTOOL_NUM=2 ;
  15:  UFRAME_NUM=0 ;
  16:  PAYLOAD[5] ;
  17:   ;
  18:  ENTER I-ZONE(1) ;
  19:  ENTER I-ZONE(2) ;
  20:   ;
  21:J P[8] 100% CNT100    ;
  22:J P[14] 100% CNT100    ;
  23:J P[7] 100% CNT100    ;
  24:   ;
  25:L P[2:Abv Drop] 1000mm/sec CNT50    ;
  26:   ;
  27:  !Robot at conveyor ;
  28:L P[3:At Drop] 100mm/sec FINE    ;
  29:   ;
  30:  EXIT I-ZONE(1) ;
  31:   ;
  32:  !ROBOT WAITING R02 ;
  33:  REQUEST CONTINUE    ;
  34:   ;
  35:  !Robot Leavig The Drop Pos ;
  36:  SET SEGMENT(36) ;
  37:   ;
  38:  Turn OFF Vacuum(6,7) ;
  39:   ;
  40:  Release Part(5) ;
  41:   ;
  42:  VACUUM CAN 1 OFF(6,7) ;
  43:   ;
  44:  PAYLOAD[4] ;
  45:   ;
  46:  !verify no part in tool ;
  47:L P[4] 500mm/sec FINE    ;
  48:   ;
  49:J P[9] 100% CNT50    ;
  50:J P[10] 100% CNT50    ;
  51:J P[1] 100% CNT100    ;
  52:J P[5] 100% FINE    ;
  53:   ;
  54:  EXIT I-ZONE(2) ;
  55:   ;
  56:  !Robot clear of conveyor ;
  57:  SET SEGMENT(33) ;
  58:   ;
  59:J P[13] 100% CNT100    ;
  60:J P[6] 100% CNT100    ;
  61:J P[15] 100% FINE    ;
  62:   ;
  63:  !Robot clear of all ;
  64:  SET SEGMENT(63) ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   -43.714  mm,	Y = -2068.721  mm,	Z =   517.580  mm,
	W =  -173.150 deg,	P =    14.724 deg,	R =   -78.842 deg
};
P[2:"Abv Drop"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =    -9.065  mm,	Y = -1691.097  mm,	Z =  -970.530  mm,
	W =  -174.548 deg,	P =    16.549 deg,	R =   -83.441 deg
};
P[3:"At Drop"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =    -9.609  mm,	Y = -1692.791  mm,	Z = -1187.969  mm,
	W =  -174.662 deg,	P =    11.383 deg,	R =   -83.959 deg
};
P[4]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =    -9.065  mm,	Y = -1691.097  mm,	Z =  -970.530  mm,
	W =  -174.548 deg,	P =    16.549 deg,	R =   -83.441 deg
};
P[5]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   -43.714  mm,	Y = -2068.721  mm,	Z =   517.580  mm,
	W =  -173.150 deg,	P =    14.724 deg,	R =   -78.842 deg
};
P[6]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  2354.837  mm,	Y =  -800.993  mm,	Z =   605.255  mm,
	W =  -177.770 deg,	P =    11.110 deg,	R =   -25.039 deg
};
P[7]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   -15.143  mm,	Y = -1742.178  mm,	Z =  -912.770  mm,
	W =  -174.454 deg,	P =    15.934 deg,	R =   -83.317 deg
};
P[8]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =    53.719  mm,	Y = -2475.188  mm,	Z =  1063.052  mm,
	W =  -175.130 deg,	P =     -.499 deg,	R =   -86.321 deg
};
P[9]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =     1.617  mm,	Y = -1694.220  mm,	Z =  -921.087  mm,
	W =  -172.848 deg,	P =    19.168 deg,	R =   -82.432 deg
};
P[10]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =    14.096  mm,	Y = -1780.030  mm,	Z =  -152.997  mm,
	W =  -162.978 deg,	P =    34.988 deg,	R =   -74.489 deg
};
P[13]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   802.995  mm,	Y = -2498.405  mm,	Z =   502.419  mm,
	W =   179.150 deg,	P =     8.897 deg,	R =   -86.469 deg
};
P[14]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   -70.396  mm,	Y = -2119.344  mm,	Z =  -133.962  mm,
	W =  -174.343 deg,	P =    12.748 deg,	R =   -82.205 deg
};
P[15]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  2417.461  mm,	Y =   133.004  mm,	Z =   520.409  mm,
	W =  -176.136 deg,	P =    15.400 deg,	R =      .533 deg
};
/END
