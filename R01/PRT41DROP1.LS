/PROG  PRT41DROP1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "ROBOT DROP 375";
PROG_SIZE	= 1941;
CREATE		= DATE 21-02-24  TIME 00:16:06;
MODIFIED	= DATE 21-02-24  TIME 00:16:06;
FILE_NAME	= PRT41DRO;
VERSION		= 0;
LINE_COUNT	= 58;
MEMORY_SIZE	= 2209;
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
  12:  Set MH Tool(7) ;
  13:   ;
  14:  UTOOL_NUM=2 ;
  15:  UFRAME_NUM=0 ;
  16:  PAYLOAD[5] ;
  17:   ;
  18:  ENTER I-ZONE(1) ;
  19:  ENTER I-ZONE(2) ;
  20:   ;
  21:J P[1] 100% CNT100    ;
  22:J P[2] 100% CNT100    ;
  23:J P[3] 100% CNT100    ;
  24:J P[4] 100% CNT100    ;
  25:   ;
  26:  !DROP POSITION PARA 010R02 ;
  27:L P[5:DROP_POSITION ] 2000mm/sec FINE    ;
  28:   ;
  29:  EXIT I-ZONE(1) ;
  30:   ;
  31:  Release Part(1) ;
  32:  Release Part(5) ;
  33:   ;
  34:  !ROBOT WAITING R02 ;
  35:  REQUEST CONTINUE    ;
  36:   ;
  37:  !Robot Leavig The Drop Pos ;
  38:  SET SEGMENT(36) ;
  39:   ;
  40:  VACUUM CAN 1 OFF(6,7) ;
  41:   ;
  42:   ;
  43:  PAYLOAD[4] ;
  44:   ;
  45:  !verify no part in tool ;
  46:L P[16] 500mm/sec CNT10    ;
  47:L P[19] 1000mm/sec CNT50    ;
  48:   ;
  49:J P[20] 100% CNT100    ;
  50:J P[6] 100% CNT100    ;
  51:   ;
  52:  EXIT I-ZONE(1) ;
  53:  EXIT I-ZONE(2) ;
  54:  !Robot clear of conveyor ;
  55:  SET SEGMENT(63) ;
  56:   ;
  57:J P[15] 100% CNT100    ;
  58:J P[18] 100% CNT100    ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   663.372  mm,	Y = -2475.175  mm,	Z =  1063.050  mm,
	W =  -175.130 deg,	P =     -.498 deg,	R =   -86.320 deg
};
P[2]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   233.464  mm,	Y = -2136.790  mm,	Z =   396.117  mm,
	W =  -172.870 deg,	P =    22.656 deg,	R =   -86.282 deg
};
P[3]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   233.464  mm,	Y = -2057.590  mm,	Z =  -110.283  mm,
	W =  -172.870 deg,	P =    22.656 deg,	R =   -86.282 deg
};
P[4:""]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   233.464  mm,	Y = -2057.594  mm,	Z =  -746.266  mm,
	W =  -172.870 deg,	P =    22.656 deg,	R =   -86.282 deg
};
P[5:"DROP_POSITION "]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   251.327  mm,	Y = -2072.671  mm,	Z =  -878.196  mm,
	W =  -175.835 deg,	P =      .421 deg,	R =   -89.135 deg
};
P[6]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   233.464  mm,	Y = -2189.589  mm,	Z =   756.117  mm,
	W =  -172.870 deg,	P =    22.656 deg,	R =   -86.282 deg
};
P[15]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1702.622  mm,	Y = -1608.153  mm,	Z =  1013.314  mm,
	W =  -175.085 deg,	P =     8.560 deg,	R =   -45.829 deg
};
P[16]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   246.538  mm,	Y = -2082.617  mm,	Z =  -738.387  mm,
	W =  -175.805 deg,	P =      .325 deg,	R =   -89.682 deg
};
P[18]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  2407.213  mm,	Y =  -116.423  mm,	Z =   601.026  mm,
	W =  -175.720 deg,	P =    14.625 deg,	R =    -4.945 deg
};
P[19]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   247.682  mm,	Y = -2108.979  mm,	Z =  -573.768  mm,
	W =  -175.242 deg,	P =     6.370 deg,	R =   -88.970 deg
};
P[20]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   233.464  mm,	Y = -2189.589  mm,	Z =   -81.483  mm,
	W =  -172.870 deg,	P =    22.656 deg,	R =   -86.282 deg
};
/END
