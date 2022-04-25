/PROG  PRT09DROP1
/ATTR
OWNER		= SHIFT;
COMMENT		= "ROBOT DROP 336";
PROG_SIZE	= 1709;
CREATE		= DATE 18-11-21  TIME 05:33:24;
MODIFIED	= DATE 19-03-08  TIME 14:58:18;
FILE_NAME	= PRT07DRO;
VERSION		= 0;
LINE_COUNT	= 48;
MEMORY_SIZE	= 2017;
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
  12:  Set MH Tool(9) ;
  13:   ;
  14:  UTOOL_NUM=9 ;
  15:  UFRAME_NUM=0 ;
  16:  PAYLOAD[9] ;
  17:   ;
  18:J P[3] 100% CNT100    ;
  19:   ;
  20:L P[14] 2000mm/sec CNT50    ;
  21:L P[4:Abv Drop] 2000mm/sec CNT50    ;
  22:   ;
  23:L P[5:At Drop] 1500mm/sec FINE    ;
  24:   ;
  25:  !ROBOT WAITING R02 ;
  26:  REQUEST CONTINUE    ;
  27:   ;
  28:  !Robot Leavig The Drop Pos ;
  29:  SET SEGMENT(33) ;
  30:   ;
  31:  Release Part(5) ;
  32:   ;
  33:  VACUUM CAN 1 OFF(6,7) ;
  34:  PAYLOAD[8] ;
  35:   ;
  36:  !verify no part in tool ;
  37:L P[6] 1200mm/sec CNT50    ;
  38:   ;
  39:  !Robot clear of conveyor ;
  40:   ;
  41:L P[7] 2000mm/sec CNT100    ;
  42:   ;
  43:J P[11] 100% CNT100    ;
  44:J P[12] 100% CNT100    ;
  45:J P[13] 100% FINE    ;
  46:   ;
  47:  !Robot clear of all ;
  48:  SET SEGMENT(63) ;
/POS
P[3]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X =  -353.223  mm,	Y = -2280.960  mm,	Z =   177.832  mm,
	W =   157.026 deg,	P =    58.371 deg,	R =   -15.113 deg
};
P[4:"Abv Drop"]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, -1',
	X = -1349.765  mm,	Y = -2036.243  mm,	Z = -1987.713  mm,
	W =  -173.999 deg,	P =    30.584 deg,	R =     6.415 deg
};
P[5:"At Drop"]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X = -1402.718  mm,	Y = -2031.685  mm,	Z = -2259.056  mm,
	W =  -172.899 deg,	P =    32.572 deg,	R =     4.248 deg
};
P[6]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, -1',
	X = -1349.765  mm,	Y = -2036.243  mm,	Z = -1987.713  mm,
	W =  -173.999 deg,	P =    30.584 deg,	R =     6.415 deg
};
P[7]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, -1',
	X = -1105.027  mm,	Y = -2003.305  mm,	Z = -1493.631  mm,
	W =  -169.917 deg,	P =    40.679 deg,	R =     9.851 deg
};
P[11]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X =  1189.806  mm,	Y = -2312.651  mm,	Z =   519.866  mm,
	W =   179.636 deg,	P =     9.412 deg,	R =   -75.731 deg
};
P[12]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X =  2354.837  mm,	Y =  -800.993  mm,	Z =   605.255  mm,
	W =  -177.770 deg,	P =    11.110 deg,	R =   -25.039 deg
};
P[13]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X =  2417.461  mm,	Y =   133.003  mm,	Z =   520.409  mm,
	W =  -176.136 deg,	P =    15.400 deg,	R =      .533 deg
};
P[14]{
   GP1:
	UF : 0, UT : 9,		CONFIG : 'N U T, 0, 0, -1',
	X = -1105.044  mm,	Y = -2003.337  mm,	Z = -1493.613  mm,
	W =  -169.918 deg,	P =    40.680 deg,	R =     9.850 deg
};
/END
