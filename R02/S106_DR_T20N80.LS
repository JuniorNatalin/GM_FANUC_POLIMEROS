/PROG  S106_DR_T20N80
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "TL DRP TYP1 N80";
PROG_SIZE	= 3575;
CREATE		= DATE 19-12-16  TIME 15:08:12;
MODIFIED	= DATE 20-11-28  TIME 10:09:38;
FILE_NAME	= S106_DR_;
VERSION		= 0;
LINE_COUNT	= 123;
MEMORY_SIZE	= 3971;
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
/MN
   1:  !******************************** ;
   2:  ! PATH - drop tool into N1=STA 80 ;
   3:  !******************************** ;
   4:  !* Robot ID: XXXXXR02B1 ;
   5:  !*    F-19XXXX ;
   6:  !* Line: XXXXXXXX ;
   7:  !* Platform: XX ;
   8:  !* Tool ID: TOOL xx ;
   9:  !* Program: S001_DR_TxxN4_R02 ;
  10:  !* Application: TOOL DROP ;
  11:  !******************************** ;
  12:  ! Author- Esys Automation ;
  13:  !******************************** ;
  14:   ;
  15:  !++++++++++++++++++++++++++++++++ ;
  16:  !ASSIGN PROGRAM PATH VALUES ;
  17:  !-------------------------------- ;
  18:  !Set Robot Tool and World UFrame ;
  19:  UTOOL_NUM=2 ;
  20:  UFRAME_NUM=0 ;
  21:  !++++++++++++++++++++++++++++++++ ;
  22:   ;
  23:  !******************************** ;
  24:  !BEGINNING OF PROGRAM PATH ;
  25:  !MOVE TO NEST 1 TOOL DROP ;
  26:  !******************************** ;
  27:   ;
  28:  !-------------------------------- ;
  29:  LBL[10:MOVE TO TL DRP] ;
  30:   ;
  31:  SET SEGMENT(50) ;
  32:  !SEG(50), Approach Tool Drop ;
  33:   ;
  34:  UTOOL_NUM=2 ;
  35:   ;
  36:J P[1] 100% CNT100    ;
  37:   ;
  38:J P[2] 100% CNT100    ;
  39:   ;
  40:L P[3:Tool-Pick-Pounce] 3000mm/sec CNT50    ;
  41:   ;
  42:L P[11] 300mm/sec CNT25    ;
  43:   ;
  44:L P[10] 50mm/sec FINE    ;
  45:   ;
  46:  LBL[20:UNLATCH TOOL] ;
  47:  UNLATCH TOOL    ;
  48:   ;
  49:  !ADD DISCONNECT COMMANDS ;
  50:  !ADD ALL EOAT DEVICES ;
  51:  !CALL EN_ARON(x) ;
  52:  !x = EOAT ENET Node # ;
  53:   ;
  54:  !If TL UNL Pass, Return Home ;
  55:  !If TL UNL Fail, Latch Tool, ;
  56:  !  MHFault, and Return Home ;
  57:  IF R[170]=1,JMP LBL[30] ;
  58:   ;
  59:  SELECT R[168]=7,JMP LBL[80] ;
  60:         ELSE,JMP LBL[99] ;
  61:   ;
  62:  !-------------------------------- ;
  63:  LBL[30:COMPLETE PATH] ;
  64:  !TL DRP COMPLETE. MOVE AWAY ;
  65:  !AND RETURN HOME ;
  66:   ;
  67:  !Set ATI Tool and World Frame ;
  68:  UTOOL_NUM=14 ;
  69:  UFRAME_NUM=0 ;
  70:   ;
  71:  !Set Payload= ATI ;
  72:  R[221]=1    ;
  73:  PAYLOAD[R[221]] ;
  74:   ;
  75:  SET SEGMENT(51) ;
  76:  !SEG(51), Tool Drop Depart ;
  77:   ;
  78:L P[6:Tool-Pick-Apr] 50mm/sec FINE    ;
  79:   ;
  80:L P[7] 3000mm/sec CNT100    ;
  81:   ;
  82:J P[8] 100% CNT100    ;
  83:J P[9] 100% CNT100    ;
  84:   ;
  85:  ! Move To Home ;
  86:  JMP LBL[100] ;
  87:   ;
  88:  !-------------------------------- ;
  89:  LBL[80:UNLATCH FAULT] ;
  90:  !MOVE BACK TO HOME WITH TOOL ;
  91:  !on Reverse Path before Tool Drop ;
  92:  UFRAME_NUM=0 ;
  93:  UTOOL_NUM=2 ;
  94:   ;
  95:  LATCH TOOL    ;
  96:   ;
  97:L P[5:DROP_T03_N80] 50mm/sec FINE    ;
  98:   ;
  99:L P[4:Tool-Pick-Dep] 250mm/sec CNT25    ;
 100:   ;
 101:L P[3:Tool-Pick-Pounce] 3000mm/sec CNT100    ;
 102:   ;
 103:J P[2] 100% CNT100    ;
 104:J P[1] 100% CNT100    ;
 105:   ;
 106:  SET SEGMENT(63) ;
 107:  !SEG(63), Robot Move to Home ;
 108:   ;
 109:  R[132]=0    ;
 110:  GO[71]=0 ;
 111:   ;
 112:  ! Move To Home ;
 113:  JMP LBL[100] ;
 114:   ;
 115:  !-------------------------------- ;
 116:  LBL[99:ABORT PROGRAM] ;
 117:  MESSAGE[...] ;
 118:  MESSAGE[ABORT PROGRAM] ;
 119:  ABORT ;
 120:   ;
 121:  !-------------------------------- ;
 122:  LBL[100:END OF PROGRAM] ;
 123:  END ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1905.823  mm,	Y =  1316.578  mm,	Z =  1704.024  mm,
	W =  -156.086 deg,	P =   -19.025 deg,	R =    97.401 deg
};
P[2]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1879.383  mm,	Y =  1789.898  mm,	Z =   769.346  mm,
	W =  -161.641 deg,	P =     -.384 deg,	R =    90.117 deg
};
P[3:"Tool-Pick-Pounce"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2001.845  mm,	Y =  1792.124  mm,	Z =   400.343  mm,
	W =  -161.641 deg,	P =     -.384 deg,	R =    90.117 deg
};
P[4:"Tool-Pick-Dep"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2094.374  mm,	Y =  1793.807  mm,	Z =   121.540  mm,
	W =  -161.641 deg,	P =     -.384 deg,	R =    90.117 deg
};
P[5:"DROP_T03_N80"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2101.244  mm,	Y =  1793.933  mm,	Z =   100.834  mm,
	W =  -161.641 deg,	P =     -.384 deg,	R =    90.117 deg
};
P[6:"Tool-Pick-Apr"]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2340.586  mm,	Y =  1639.422  mm,	Z =   250.162  mm,
	W =  -158.772 deg,	P =      .412 deg,	R =    91.457 deg
};
P[7]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2311.939  mm,	Y =  1647.069  mm,	Z =   429.899  mm,
	W =  -160.118 deg,	P =     -.748 deg,	R =    91.493 deg
};
P[8]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2146.677  mm,	Y =  1511.959  mm,	Z =   772.650  mm,
	W =  -159.102 deg,	P =      .463 deg,	R =    90.425 deg
};
P[9]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -1893.869  mm,	Y =  1192.844  mm,	Z =  1398.826  mm,
	W =  -159.103 deg,	P =      .463 deg,	R =    90.425 deg
};
P[10]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2072.875  mm,	Y =  1785.146  mm,	Z =    84.979  mm,
	W =  -160.322 deg,	P =      .216 deg,	R =    89.877 deg
};
P[11]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2062.370  mm,	Y =  1785.234  mm,	Z =   114.357  mm,
	W =  -160.322 deg,	P =      .216 deg,	R =    89.877 deg
};
/END
