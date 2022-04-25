/PROG  S102_DR_T17N60
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "TL DRP TYP1 N60";
PROG_SIZE	= 3611;
CREATE		= DATE 18-11-15  TIME 11:08:24;
MODIFIED	= DATE 19-09-18  TIME 23:46:02;
FILE_NAME	= S102_DR_;
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
  35:J P[2] 100% CNT100    ;
  36:   ;
  37:L P[3:Tool-Pick-Pounce] 3000mm/sec CNT100    ;
  38:   ;
  39:L P[10] 300mm/sec CNT25    ;
  40:   ;
  41:L P[11] 50mm/sec FINE    ;
  42:   ;
  43:  !-------------------------------- ;
  44:  LBL[20:UNLATCH TOOL] ;
  45:  UNLATCH TOOL    ;
  46:   ;
  47:  !ADD DISCONNECT COMMANDS ;
  48:  !ADD ALL EOAT DEVICES ;
  49:  !CALL EN_ARON(x) ;
  50:  !x = EOAT ENET Node # ;
  51:   ;
  52:  !If TL UNL Pass, Return Home ;
  53:  !If TL UNL Fail, Latch Tool, ;
  54:  !  MHFault, and Return Home ;
  55:  IF R[170]=1,JMP LBL[30] ;
  56:   ;
  57:  SELECT R[168]=7,JMP LBL[80] ;
  58:         ELSE,JMP LBL[99] ;
  59:   ;
  60:  !-------------------------------- ;
  61:  LBL[30:COMPLETE PATH] ;
  62:  !TL DRP COMPLETE. MOVE AWAY ;
  63:  !AND RETURN HOME ;
  64:   ;
  65:  !Set ATI Tool and World Frame ;
  66:  PAYLOAD[1] ;
  67:  UTOOL_NUM=14 ;
  68:  UFRAME_NUM=0 ;
  69:   ;
  70:  SET SEGMENT(51) ;
  71:  !SEG(51), Tool Drop Depart ;
  72:   ;
  73:L P[6:Tool-Pick-Apr] 50mm/sec FINE    ;
  74:   ;
  75:L P[7] 3000mm/sec CNT100    ;
  76:   ;
  77:J P[8] 100% CNT100    ;
  78:J P[9] 100% CNT100    ;
  79:   ;
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
  93:  UTOOL_NUM=2 ;
  94:   ;
  95:  LATCH TOOL    ;
  96:   ;
  97:  SET SEGMENT(63) ;
  98:  !SEG(63), Robot Move to Home ;
  99:   ;
 100:L P[5:DROP_T17_N60] 50mm/sec FINE    ;
 101:   ;
 102:L P[4:Tool-Pick-Dep] 250mm/sec CNT25    ;
 103:   ;
 104:L P[3:Tool-Pick-Pounce] 3000mm/sec CNT100    ;
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
	UF : 0, UT : 2,		CONFIG : 'N U B, 0, 0, 0',
	X =  -253.288  mm,	Y =    88.380  mm,	Z =  2426.871  mm,
	W =   -93.294 deg,	P =     1.038 deg,	R =   122.456 deg
};
P[2]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1219.646  mm,	Y =  -179.974  mm,	Z =  1103.529  mm,
	W =  -148.505 deg,	P =      .883 deg,	R =    88.455 deg
};
P[3:"Tool-Pick-Pounce"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1642.886  mm,	Y =  -297.974  mm,	Z =   461.813  mm,
	W =  -161.806 deg,	P =      .534 deg,	R =    88.463 deg
};
P[4:"Tool-Pick-Dep"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1719.052  mm,	Y =  -269.322  mm,	Z =   126.965  mm,
	W =  -162.329 deg,	P =      .639 deg,	R =    90.148 deg
};
P[5:"DROP_T17_N60"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1728.112  mm,	Y =  -269.663  mm,	Z =    98.526  mm,
	W =  -162.328 deg,	P =      .639 deg,	R =    90.148 deg
};
P[6:"Tool-Pick-Apr"]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2002.442  mm,	Y =  -417.778  mm,	Z =   277.265  mm,
	W =  -160.456 deg,	P =      .364 deg,	R =    91.555 deg
};
P[7]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -1918.402  mm,	Y =  -433.213  mm,	Z =   595.368  mm,
	W =  -160.260 deg,	P =      .176 deg,	R =    89.839 deg
};
P[8]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -1439.556  mm,	Y =  -314.972  mm,	Z =  1332.434  mm,
	W =  -145.086 deg,	P =      .394 deg,	R =    89.246 deg
};
P[9]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U B, 0, 0, 0',
	X =  -158.400  mm,	Y =   -15.894  mm,	Z =  2741.103  mm,
	W =   -91.792 deg,	P =     -.357 deg,	R =   122.600 deg
};
P[10]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1721.394  mm,	Y =  -273.952  mm,	Z =   139.607  mm,
	W =  -162.006 deg,	P =      .718 deg,	R =    90.177 deg
};
P[11]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1729.796  mm,	Y =  -270.281  mm,	Z =   101.629  mm,
	W =  -161.813 deg,	P =      .757 deg,	R =    90.189 deg
};
/END
