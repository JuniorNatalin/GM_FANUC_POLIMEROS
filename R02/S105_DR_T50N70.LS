/PROG  S105_DR_T50N70
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "NEW_OK";
PROG_SIZE	= 3686;
CREATE		= DATE 22-01-28  TIME 07:52:22;
MODIFIED	= DATE 22-04-09  TIME 08:22:14;
FILE_NAME	= S105_DR_;
VERSION		= 0;
LINE_COUNT	= 126;
MEMORY_SIZE	= 4070;
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
   2:  ! PATH - drop tool into N1=STA 70 ;
   3:  !******************************** ;
   4:  !* Robot ID: XXXXXR02B1 ;
   5:  !*    F-19XXXX ;
   6:  !* Line: XXXXXXXX ;
   7:  !* Platform: XX ;
   8:  !* Tool ID: TOOL xx ;
   9:  !* Program: S001_DR_TxxN3_R02 ;
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
  34:J P[1] 100% CNT100    ;
  35:   ;
  36:J P[2] 100% CNT100    ;
  37:   ;
  38:L P[12] 3000mm/sec CNT100    ;
  39:   ;
  40:L P[10] 300mm/sec CNT1    ;
  41:   ;
  42:L P[11] 50mm/sec FINE    ;
  43:  DO[811]=ON ;
  44:   ;
  45:  !-------------------------------- ;
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
  68:  DO[811]=OFF ;
  69:   ;
  70:  PAYLOAD[1] ;
  71:  UTOOL_NUM=14 ;
  72:  UFRAME_NUM=0 ;
  73:   ;
  74:  SET SEGMENT(51) ;
  75:  !SEG(51), Tool Drop Depart ;
  76:   ;
  77:L P[6:Tool-Pick-Apr] 50mm/sec FINE    ;
  78:   ;
  79:L P[7] 3000mm/sec CNT100    ;
  80:   ;
  81:J P[8] 100% CNT100    ;
  82:J P[9] 100% CNT100    ;
  83:   ;
  84:  ! Move To Home ;
  85:  JMP LBL[100] ;
  86:   ;
  87:  !-------------------------------- ;
  88:  LBL[80:UNLATCH FAULT] ;
  89:  !MOVE BACK TO HOME WITH TOOL ;
  90:  !on Reverse Path before Tool Drop ;
  91:   ;
  92:  !Set Payload= ATI ;
  93:  R[221]=1    ;
  94:  PAYLOAD[R[221]] ;
  95:  UFRAME_NUM=0 ;
  96:  UTOOL_NUM=1 ;
  97:   ;
  98:  LATCH TOOL    ;
  99:   ;
 100:  SET SEGMENT(63) ;
 101:  !SEG(63), Robot Move to Home ;
 102:   ;
 103:L P[5:DROP_T07_N70] 50mm/sec FINE    ;
 104:   ;
 105:L P[4:Tool-Pick-Dep] 50mm/sec CNT1    ;
 106:   ;
 107:L P[3:Tool-Pick-Pounce] 1000mm/sec CNT30    ;
 108:   ;
 109:J P[2] 100% CNT100    ;
 110:J P[1] 100% CNT100    ;
 111:   ;
 112:  R[132]=0    ;
 113:  GO[71]=0 ;
 114:   ;
 115:  ! Move To Home ;
 116:  JMP LBL[100] ;
 117:   ;
 118:  !-------------------------------- ;
 119:  LBL[99:ABORT PROGRAM] ;
 120:  MESSAGE[...] ;
 121:  MESSAGE[ABORT PROGRAM] ;
 122:  ABORT ;
 123:   ;
 124:  !-------------------------------- ;
 125:  LBL[100:END OF PROGRAM] ;
 126:  END ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1681.583  mm,	Y =   938.331  mm,	Z =  1486.281  mm,
	W =  -150.223 deg,	P =      .071 deg,	R =    62.819 deg
};
P[2]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1797.455  mm,	Y =   901.543  mm,	Z =   882.258  mm,
	W =  -160.599 deg,	P =     1.278 deg,	R =    88.209 deg
};
P[3:"Tool-Pick-Pounce"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1972.477  mm,	Y =   808.209  mm,	Z =   430.021  mm,
	W =  -161.645 deg,	P =      .160 deg,	R =    90.439 deg
};
P[4:"Tool-Pick-Dep"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2072.321  mm,	Y =   806.598  mm,	Z =   129.067  mm,
	W =  -161.645 deg,	P =      .161 deg,	R =    90.439 deg
};
P[5:"DROP_T07_N70"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2084.266  mm,	Y =   806.406  mm,	Z =    93.065  mm,
	W =  -161.645 deg,	P =      .161 deg,	R =    90.439 deg
};
P[6:"Tool-Pick-Apr"]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2340.093  mm,	Y =   659.129  mm,	Z =   254.163  mm,
	W =  -160.025 deg,	P =     -.310 deg,	R =    91.224 deg
};
P[7]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2267.183  mm,	Y =   671.796  mm,	Z =   366.891  mm,
	W =  -159.990 deg,	P =     -.396 deg,	R =    91.198 deg
};
P[8]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2111.923  mm,	Y =   767.756  mm,	Z =   882.861  mm,
	W =  -159.036 deg,	P =      .889 deg,	R =    89.578 deg
};
P[9]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2157.965  mm,	Y =  1020.774  mm,	Z =  1799.158  mm,
	W =  -149.817 deg,	P =    -8.762 deg,	R =    77.858 deg
};
P[10]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2059.288  mm,	Y =   800.501  mm,	Z =   108.026  mm,
	W =  -161.556 deg,	P =      .051 deg,	R =    89.850 deg
};
P[11]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2069.134  mm,	Y =   802.892  mm,	Z =    89.002  mm,
	W =  -161.557 deg,	P =      .052 deg,	R =    89.850 deg
};
P[12]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1909.659  mm,	Y =   817.657  mm,	Z =   474.158  mm,
	W =  -161.647 deg,	P =      .325 deg,	R =    89.941 deg
};
/END
