/PROG  PRT17_DROP1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "ROBOT DROP 142";
PROG_SIZE	= 2092;
CREATE		= DATE 18-11-15  TIME 15:19:18;
MODIFIED	= DATE 19-03-06  TIME 08:32:32;
FILE_NAME	= PRT17DRO;
VERSION		= 0;
LINE_COUNT	= 68;
MEMORY_SIZE	= 2448;
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
  12:  Set MH Tool(7) ;
  13:   ;
  14:  R[221]=2    ;
  15:  PAYLOAD[R[221]] ;
  16:   ;
  17:  UTOOL_NUM=7 ;
  18:  UFRAME_NUM=0 ;
  19:   ;
  20:J P[1:POS COMUM] 100% FINE    ;
  21:   ;
  22:  !INTERZONE COM R02 FLAME ;
  23:  ENTER I-ZONE(1) ;
  24:   ;
  25:  !INTERZONE COM R02 DROP ESTEIRA ;
  26:  ENTER I-ZONE(2) ;
  27:   ;
  28:J P[2] 100% CNT50    ;
  29:   ;
  30:J P[3] 50% CNT50    ;
  31:J P[4] 100% CNT50    ;
  32:   ;
  33:  !DROP POSITION PARA 010R02 ;
  34:L P[5:DROP_POSITION ] 800mm/sec FINE    ;
  35:   ;
  36:  EXIT I-ZONE(1) ;
  37:   ;
  38:  !ROBOT WAITING R02 ;
  39:  REQUEST CONTINUE    ;
  40:   ;
  41:  !Robot Leavig The Drop Pos ;
  42:  SET SEGMENT(33) ;
  43:   ;
  44:  Turn OFF Vacuum(6,7) ;
  45:   ;
  46:  R[221]=1    ;
  47:  PAYLOAD[R[221]] ;
  48:   ;
  49:  !CHECK PART IN EOAT ;
  50:  CHK PART PRESENT(0) ;
  51:   ;
  52:L P[6] 150mm/sec CNT10    ;
  53:L P[7] 800mm/sec CNT50    ;
  54:   ;
  55:J P[8] 75% CNT50    ;
  56:J P[9] 75% CNT50    ;
  57:   ;
  58:J P[10:POS COMUM] 100% FINE    ;
  59:   ;
  60:  !verify no part in tool ;
  61:  REQUEST CONTINUE    ;
  62:   ;
  63:  !Robot clear of Robot R02 ;
  64:  SET SEGMENT(34) ;
  65:   ;
  66:  !Robot clear of all ;
  67:  SET SEGMENT(63) ;
  68:   ;
/POS
P[1:"POS COMUM"]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =   663.375  mm,	Y = -2475.173  mm,	Z =  1063.053  mm,
	W =  -175.130 deg,	P =     -.498 deg,	R =   -86.320 deg
};
P[2]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =   230.791  mm,	Y = -2629.016  mm,	Z =  1162.766  mm,
	W =  -131.123 deg,	P =    42.493 deg,	R =   179.578 deg
};
P[3]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =   233.464  mm,	Y = -2057.590  mm,	Z =  -110.283  mm,
	W =  -172.870 deg,	P =    22.656 deg,	R =   -86.282 deg
};
P[4:""]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =   233.464  mm,	Y = -2057.590  mm,	Z =  -746.284  mm,
	W =  -172.870 deg,	P =    22.656 deg,	R =   -86.282 deg
};
P[5:"DROP_POSITION "]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =   233.463  mm,	Y = -1865.590  mm,	Z = -1063.084  mm,
	W =  -177.169 deg,	P =     8.658 deg,	R =   -87.034 deg
};
P[6]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =   233.447  mm,	Y = -1865.550  mm,	Z =  -961.113  mm,
	W =  -177.170 deg,	P =     8.659 deg,	R =   -87.034 deg
};
P[7]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =   233.447  mm,	Y = -2038.348  mm,	Z =  -961.112  mm,
	W =  -175.099 deg,	P =    25.610 deg,	R =   -86.573 deg
};
P[8]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =   233.447  mm,	Y = -2038.348  mm,	Z =   -74.311  mm,
	W =  -175.099 deg,	P =    25.610 deg,	R =   -86.573 deg
};
P[9]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =   231.177  mm,	Y = -2271.212  mm,	Z =  1302.128  mm,
	W =  -177.670 deg,	P =   -13.230 deg,	R =   -86.867 deg
};
P[10:"POS COMUM"]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =   663.375  mm,	Y = -2475.173  mm,	Z =  1063.053  mm,
	W =  -175.130 deg,	P =     -.498 deg,	R =   -86.320 deg
};
/END
