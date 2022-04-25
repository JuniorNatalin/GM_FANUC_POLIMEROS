/PROG  S105_DR_T06N70
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "TL DRP TYP1 N70";
PROG_SIZE	= 3611;
CREATE		= DATE 18-11-03  TIME 14:36:56;
MODIFIED	= DATE 19-06-04  TIME 09:09:42;
FILE_NAME	= S111_DR_;
VERSION		= 0;
LINE_COUNT	= 123;
MEMORY_SIZE	= 4007;
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
  38:L P[3:Tool-Pick-Pounce] 3000mm/sec CNT100    ;
  39:   ;
  40:L P[10] 300mm/sec CNT1    ;
  41:   ;
  42:L P[11] 50mm/sec FINE    ;
  43:   ;
  44:  !-------------------------------- ;
  45:  LBL[20:UNLATCH TOOL] ;
  46:  UNLATCH TOOL    ;
  47:   ;
  48:  !ADD DISCONNECT COMMANDS ;
  49:  !ADD ALL EOAT DEVICES ;
  50:  !CALL EN_ARON(x) ;
  51:  !x = EOAT ENET Node # ;
  52:   ;
  53:  !If TL UNL Pass, Return Home ;
  54:  !If TL UNL Fail, Latch Tool, ;
  55:  !  MHFault, and Return Home ;
  56:  IF R[170]=1,JMP LBL[30] ;
  57:   ;
  58:  SELECT R[168]=7,JMP LBL[80] ;
  59:         ELSE,JMP LBL[99] ;
  60:   ;
  61:  !-------------------------------- ;
  62:  LBL[30:COMPLETE PATH] ;
  63:  !TL DRP COMPLETE. MOVE AWAY ;
  64:  !AND RETURN HOME ;
  65:   ;
  66:  !Set ATI Tool and World Frame ;
  67:  PAYLOAD[1] ;
  68:  UTOOL_NUM=14 ;
  69:  UFRAME_NUM=0 ;
  70:   ;
  71:  SET SEGMENT(51) ;
  72:  !SEG(51), Tool Drop Depart ;
  73:   ;
  74:L P[6:Tool-Pick-Apr] 50mm/sec FINE    ;
  75:   ;
  76:L P[7] 3000mm/sec CNT100    ;
  77:   ;
  78:J P[8] 100% CNT100    ;
  79:J P[9] 100% CNT100    ;
  80:   ;
  81:  ! Move To Home ;
  82:  JMP LBL[100] ;
  83:   ;
  84:  !-------------------------------- ;
  85:  LBL[80:UNLATCH FAULT] ;
  86:  !MOVE BACK TO HOME WITH TOOL ;
  87:  !on Reverse Path before Tool Drop ;
  88:   ;
  89:  !Set Payload= ATI ;
  90:  R[221]=1    ;
  91:  PAYLOAD[R[221]] ;
  92:  UFRAME_NUM=0 ;
  93:  UTOOL_NUM=1 ;
  94:   ;
  95:  LATCH TOOL    ;
  96:   ;
  97:  SET SEGMENT(63) ;
  98:  !SEG(63), Robot Move to Home ;
  99:   ;
 100:L P[5:DROP_T07_N70] 50mm/sec FINE    ;
 101:   ;
 102:L P[4:Tool-Pick-Dep] 50mm/sec CNT1    ;
 103:   ;
 104:L P[3:Tool-Pick-Pounce] 1000mm/sec CNT30    ;
 105:   ;
 106:J P[2] 100% CNT100    ;
 107:J P[1] 100% CNT100    ;
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
	X = -1871.537  mm,	Y =  1036.048  mm,	Z =  1608.502  mm,
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
	X = -2354.915  mm,	Y =   627.011  mm,	Z =   260.104  mm,
	W =  -159.968 deg,	P =     -.239 deg,	R =    91.809 deg
};
P[7]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2271.274  mm,	Y =   662.010  mm,	Z =   486.804  mm,
	W =  -160.108 deg,	P =     -.201 deg,	R =    91.815 deg
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
	X = -2075.726  mm,	Y =   773.493  mm,	Z =   121.468  mm,
	W =  -161.504 deg,	P =      .126 deg,	R =    90.434 deg
};
P[11]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2083.414  mm,	Y =   773.384  mm,	Z =    98.480  mm,
	W =  -161.504 deg,	P =      .126 deg,	R =    90.434 deg
};
/END
