/PROG  S102_DR_T41N60
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "TL DRP TYP1 N60";
PROG_SIZE	= 3792;
CREATE		= DATE 19-05-25  TIME 08:53:56;
MODIFIED	= DATE 22-01-17  TIME 10:13:02;
FILE_NAME	= S102_DR_;
VERSION		= 0;
LINE_COUNT	= 127;
MEMORY_SIZE	= 4172;
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
  36:L P[3] 3000mm/sec CNT100    ;
  37:L P[4] 300mm/sec FINE    ;
  38:L P[5] 80mm/sec FINE    ;
  39:   ;
  40:L P[6] 20mm/sec FINE    ;
  41:   ;
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
  70:   ;
  71:  !Saida depois do Drop ;
  72:   ;
  73:  //Grip Part(1) ;
  74:  //Grip Part(5) ;
  75:   ;
  76:   ;
  77:L P[7:Tool-Pick-Apr] 50mm/sec FINE    ;
  78:   ;
  79:L P[8] 500mm/sec CNT100    ;
  80:J P[9] 100% CNT100    ;
  81:J P[10] 100% CNT100    ;
  82:J P[11] 100% CNT100    ;
  83:   ;
  84:   ;
  85:  ! Move To Home ;
  86:  JMP LBL[100] ;
  87:   ;
  88:  !-------------------------------- ;
  89:  LBL[80:UNLATCH FAULT] ;
  90:  !MOVE BACK TO HOME WITH TOOL ;
  91:  !on Reverse Path before Tool Drop ;
  92:   ;
  93:  !Set Payload= ATI ;
  94:  R[221]=1    ;
  95:  PAYLOAD[R[221]] ;
  96:  UFRAME_NUM=0 ;
  97:  UTOOL_NUM=2 ;
  98:   ;
  99:  LATCH TOOL    ;
 100:   ;
 101:  SET SEGMENT(63) ;
 102:  !SEG(63), Robot Move to Home ;
 103:   ;
 104:L P[12:DROP_T17_N60] 50mm/sec FINE    ;
 105:   ;
 106:L P[13:Tool-Pick-Dep] 250mm/sec CNT25    ;
 107:   ;
 108:L P[14:Tool-Pick-Pounce] 3000mm/sec CNT100    ;
 109:   ;
 110:J P[2] 100% CNT100    ;
 111:J P[1] 100% CNT100    ;
 112:   ;
 113:  R[132]=0    ;
 114:  GO[71]=0 ;
 115:   ;
 116:  ! Move To Home ;
 117:  JMP LBL[100] ;
 118:   ;
 119:  !-------------------------------- ;
 120:  LBL[99:ABORT PROGRAM] ;
 121:  MESSAGE[...] ;
 122:  MESSAGE[ABORT PROGRAM] ;
 123:  ABORT ;
 124:   ;
 125:  !-------------------------------- ;
 126:  LBL[100:END OF PROGRAM] ;
 127:  END ;
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
P[3]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1363.960  mm,	Y =  -273.917  mm,	Z =   599.050  mm,
	W =  -159.254 deg,	P =     1.084 deg,	R =    88.338 deg
};
P[4]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1422.114  mm,	Y =  -275.561  mm,	Z =   446.391  mm,
	W =  -159.436 deg,	P =      .667 deg,	R =    89.204 deg
};
P[5]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1555.729  mm,	Y =  -277.851  mm,	Z =    90.366  mm,
	W =  -159.436 deg,	P =      .667 deg,	R =    89.204 deg
};
P[6]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1576.223  mm,	Y =  -278.203  mm,	Z =    35.766  mm,
	W =  -159.436 deg,	P =      .667 deg,	R =    89.204 deg
};
P[7:"Tool-Pick-Apr"]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -1840.365  mm,	Y =  -412.126  mm,	Z =   203.171  mm,
	W =  -157.696 deg,	P =      .663 deg,	R =    89.697 deg
};
P[8]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -1828.309  mm,	Y =  -411.849  mm,	Z =   232.556  mm,
	W =  -157.696 deg,	P =      .663 deg,	R =    89.697 deg
};
P[9]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -1754.521  mm,	Y =  -410.156  mm,	Z =   412.400  mm,
	W =  -157.696 deg,	P =      .663 deg,	R =    89.697 deg
};
P[10]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -1439.556  mm,	Y =  -314.972  mm,	Z =  1332.434  mm,
	W =  -145.086 deg,	P =      .394 deg,	R =    89.246 deg
};
P[11]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U B, 0, 0, 0',
	X =  -158.400  mm,	Y =   -15.894  mm,	Z =  2741.103  mm,
	W =   -91.792 deg,	P =     -.357 deg,	R =   122.600 deg
};
P[12:"DROP_T17_N60"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1728.112  mm,	Y =  -269.663  mm,	Z =    98.526  mm,
	W =  -162.328 deg,	P =      .639 deg,	R =    90.148 deg
};
P[13:"Tool-Pick-Dep"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1719.052  mm,	Y =  -269.322  mm,	Z =   126.965  mm,
	W =  -162.329 deg,	P =      .639 deg,	R =    90.148 deg
};
P[14:"Tool-Pick-Pounce"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1642.886  mm,	Y =  -297.974  mm,	Z =   461.813  mm,
	W =  -161.806 deg,	P =      .534 deg,	R =    88.463 deg
};
/END
