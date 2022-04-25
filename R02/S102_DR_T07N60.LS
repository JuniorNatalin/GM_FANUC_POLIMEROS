/PROG  S102_DR_T07N60
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "TL DRP TYP1 N60";
PROG_SIZE	= 3597;
CREATE		= DATE 18-10-14  TIME 08:56:26;
MODIFIED	= DATE 19-09-19  TIME 08:02:44;
FILE_NAME	= S002_DR_;
VERSION		= 0;
LINE_COUNT	= 122;
MEMORY_SIZE	= 3997;
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
  34:J P[6] 100% CNT100    ;
  35:J P[2] 100% CNT100    ;
  36:   ;
  37:L P[8:Tool-Pick-Pounce] 3000mm/sec CNT100    ;
  38:   ;
  39:L P[4] 300mm/sec FINE    ;
  40:   ;
  41:L P[5] 50mm/sec FINE    ;
  42:  !-------------------------------- ;
  43:  LBL[20:UNLATCH TOOL] ;
  44:  UNLATCH TOOL    ;
  45:   ;
  46:  !ADD DISCONNECT COMMANDS ;
  47:  !ADD ALL EOAT DEVICES ;
  48:  !CALL EN_ARON(x) ;
  49:  !x = EOAT ENET Node # ;
  50:   ;
  51:  !If TL UNL Pass, Return Home ;
  52:  !If TL UNL Fail, Latch Tool, ;
  53:  !  MHFault, and Return Home ;
  54:  IF R[170]=1,JMP LBL[30] ;
  55:   ;
  56:  SELECT R[168]=7,JMP LBL[80] ;
  57:         ELSE,JMP LBL[99] ;
  58:   ;
  59:  !-------------------------------- ;
  60:  LBL[30:COMPLETE PATH] ;
  61:  !TL DRP COMPLETE. MOVE AWAY ;
  62:  !AND RETURN HOME ;
  63:   ;
  64:  !Set ATI Tool and World Frame ;
  65:  PAYLOAD[1] ;
  66:  UTOOL_NUM=14 ;
  67:  UFRAME_NUM=0 ;
  68:   ;
  69:  SET SEGMENT(51) ;
  70:  !SEG(51), Tool Drop Depart ;
  71:   ;
  72:L P[11:Tool-Pick-Apr] 50mm/sec FINE    ;
  73:   ;
  74:L P[7] 3000mm/sec CNT100    ;
  75:   ;
  76:J P[12] 100% CNT100    ;
  77:J P[1] 100% CNT100    ;
  78:   ;
  79:   ;
  80:  ! Move To Home ;
  81:  JMP LBL[100] ;
  82:   ;
  83:  !-------------------------------- ;
  84:  LBL[80:UNLATCH FAULT] ;
  85:  !MOVE BACK TO HOME WITH TOOL ;
  86:  !on Reverse Path before Tool Drop ;
  87:   ;
  88:  !Set Payload= ATI ;
  89:  R[221]=1    ;
  90:  PAYLOAD[R[221]] ;
  91:  UFRAME_NUM=0 ;
  92:  UTOOL_NUM=2 ;
  93:   ;
  94:  LATCH TOOL    ;
  95:   ;
  96:  SET SEGMENT(63) ;
  97:  !SEG(63), Robot Move to Home ;
  98:   ;
  99:L P[10:DROP_T7_N2] 50mm/sec FINE    ;
 100:   ;
 101:L P[3:Tool-Pick-Dep] 250mm/sec CNT25    ;
 102:   ;
 103:L P[8:Tool-Pick-Pounce] 3000mm/sec CNT100    ;
 104:   ;
 105:J P[2] 100% CNT100    ;
 106:J P[6] 100% CNT100    ;
 107:   ;
 108:  R[132]=0    ;
 109:  GO[71]=0 ;
 110:   ;
 111:  ! Move To Home ;
 112:  JMP LBL[100] ;
 113:   ;
 114:  !-------------------------------- ;
 115:  LBL[99:ABORT PROGRAM] ;
 116:  MESSAGE[...] ;
 117:  MESSAGE[ABORT PROGRAM] ;
 118:  ABORT ;
 119:   ;
 120:  !-------------------------------- ;
 121:  LBL[100:END OF PROGRAM] ;
 122:  END ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U B, 0, 0, 0',
	X =  -158.400  mm,	Y =   -15.894  mm,	Z =  2741.103  mm,
	W =   -91.792 deg,	P =     -.357 deg,	R =   122.600 deg
};
P[2]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1219.646  mm,	Y =  -179.974  mm,	Z =  1103.529  mm,
	W =  -148.505 deg,	P =      .883 deg,	R =    88.455 deg
};
P[3:"Tool-Pick-Dep"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1686.868  mm,	Y =  -275.413  mm,	Z =   105.405  mm,
	W =  -161.286 deg,	P =      .556 deg,	R =    88.144 deg
};
P[4]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1686.983  mm,	Y =  -235.794  mm,	Z =   116.785  mm,
	W =  -160.950 deg,	P =      .419 deg,	R =    89.955 deg
};
P[5]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1702.534  mm,	Y =  -236.111  mm,	Z =    71.756  mm,
	W =  -160.950 deg,	P =      .419 deg,	R =    89.955 deg
};
P[6]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U B, 0, 0, 0',
	X =  -253.288  mm,	Y =    88.380  mm,	Z =  2426.871  mm,
	W =   -93.294 deg,	P =     1.038 deg,	R =   122.456 deg
};
P[7]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -1911.426  mm,	Y =  -409.535  mm,	Z =   405.906  mm,
	W =  -159.740 deg,	P =      .184 deg,	R =    89.518 deg
};
P[8:"Tool-Pick-Pounce"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1552.752  mm,	Y =  -276.486  mm,	Z =   498.756  mm,
	W =  -161.652 deg,	P =      .490 deg,	R =    88.447 deg
};
P[10:"DROP_T7_N2"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1695.119  mm,	Y =  -275.383  mm,	Z =    81.061  mm,
	W =  -161.286 deg,	P =      .556 deg,	R =    88.144 deg
};
P[11:"Tool-Pick-Apr"]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -1965.570  mm,	Y =  -377.114  mm,	Z =   247.237  mm,
	W =  -159.532 deg,	P =      .187 deg,	R =    90.828 deg
};
P[12]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -1439.556  mm,	Y =  -314.972  mm,	Z =  1332.434  mm,
	W =  -145.086 deg,	P =      .394 deg,	R =    89.246 deg
};
/END
