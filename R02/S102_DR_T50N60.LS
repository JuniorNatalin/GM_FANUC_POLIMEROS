/PROG  S102_DR_T50N60
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "TL DRP TYP1 N60";
PROG_SIZE	= 3716;
CREATE		= DATE 22-01-22  TIME 15:46:08;
MODIFIED	= DATE 22-04-09  TIME 09:30:28;
FILE_NAME	= S102_DR_;
VERSION		= 0;
LINE_COUNT	= 121;
MEMORY_SIZE	= 4120;
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
  37:J P[12] 50% CNT80    ;
  38:L P[13] 500mm/sec CNT40    ;
  39:L P[14] 500mm/sec CNT40    ;
  40:L P[15] 500mm/sec CNT40    ;
  41:L P[4] 50mm/sec FINE    ;
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
  71:L P[9] 50mm/sec FINE    ;
  72:   ;
  73:L P[7] 3000mm/sec CNT100    ;
  74:   ;
  75:J P[5] 100% CNT100    ;
  76:J P[1] 100% CNT100    ;
  77:   ;
  78:   ;
  79:  ! Move To Home ;
  80:  JMP LBL[100] ;
  81:   ;
  82:  !-------------------------------- ;
  83:  LBL[80:UNLATCH FAULT] ;
  84:  !MOVE BACK TO HOME WITH TOOL ;
  85:  !on Reverse Path before Tool Drop ;
  86:   ;
  87:  !Set Payload= ATI ;
  88:  R[221]=1    ;
  89:  PAYLOAD[R[221]] ;
  90:  UFRAME_NUM=0 ;
  91:  UTOOL_NUM=2 ;
  92:   ;
  93:  LATCH TOOL    ;
  94:   ;
  95:  SET SEGMENT(63) ;
  96:  !SEG(63), Robot Move to Home ;
  97:   ;
  98:L P[10:DROP_T2_N2] 50mm/sec FINE    ;
  99:   ;
 100:L P[3:Tool-Pick-Dep] 250mm/sec CNT25    ;
 101:   ;
 102:L P[8:Tool-Pick-Pounce] 3000mm/sec CNT100    ;
 103:   ;
 104:J P[2] 100% CNT100    ;
 105:J P[6] 100% CNT100    ;
 106:   ;
 107:  R[132]=0    ;
 108:  GO[71]=0 ;
 109:   ;
 110:  ! Move To Home ;
 111:  JMP LBL[100] ;
 112:   ;
 113:  !-------------------------------- ;
 114:  LBL[99:ABORT PROGRAM] ;
 115:  MESSAGE[...] ;
 116:  MESSAGE[ABORT PROGRAM] ;
 117:  ABORT ;
 118:   ;
 119:  !-------------------------------- ;
 120:  LBL[100:END OF PROGRAM] ;
 121:  END ;
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
	X = -1748.705  mm,	Y =  -291.457  mm,	Z =   125.033  mm,
	W =  -161.806 deg,	P =      .533 deg,	R =    88.462 deg
};
P[4]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1757.781  mm,	Y =  -269.164  mm,	Z =    22.922  mm,
	W =  -161.399 deg,	P =      .267 deg,	R =    89.262 deg
};
P[5]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -1439.556  mm,	Y =  -314.972  mm,	Z =  1332.434  mm,
	W =  -145.086 deg,	P =      .394 deg,	R =    89.246 deg
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
	X = -1918.402  mm,	Y =  -433.213  mm,	Z =   595.368  mm,
	W =  -160.260 deg,	P =      .176 deg,	R =    89.839 deg
};
P[8:"Tool-Pick-Pounce"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1642.886  mm,	Y =  -297.974  mm,	Z =   461.813  mm,
	W =  -161.806 deg,	P =      .534 deg,	R =    88.463 deg
};
P[9]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2027.876  mm,	Y =  -409.583  mm,	Z =   191.382  mm,
	W =  -159.860 deg,	P =     -.101 deg,	R =    90.636 deg
};
P[10:"DROP_T2_N2"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1741.327  mm,	Y =  -273.062  mm,	Z =    54.849  mm,
	W =  -161.464 deg,	P =      .494 deg,	R =    89.074 deg
};
P[12]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1657.606  mm,	Y =  -287.210  mm,	Z =   499.958  mm,
	W =  -161.245 deg,	P =      .548 deg,	R =    88.460 deg
};
P[13]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1707.474  mm,	Y =  -287.274  mm,	Z =   353.157  mm,
	W =  -161.245 deg,	P =      .548 deg,	R =    88.460 deg
};
P[14]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1762.618  mm,	Y =  -287.343  mm,	Z =   190.811  mm,
	W =  -161.245 deg,	P =      .548 deg,	R =    88.460 deg
};
P[15]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1744.612  mm,	Y =  -269.150  mm,	Z =    62.045  mm,
	W =  -161.399 deg,	P =      .266 deg,	R =    89.262 deg
};
/END
