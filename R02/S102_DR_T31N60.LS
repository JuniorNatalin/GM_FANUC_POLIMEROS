/PROG  S102_DR_T31N60
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "TL DRP TYP1 N60";
PROG_SIZE	= 3640;
CREATE		= DATE 19-07-10  TIME 11:49:38;
MODIFIED	= DATE 20-11-14  TIME 09:05:46;
FILE_NAME	= S102_DR_;
VERSION		= 0;
LINE_COUNT	= 122;
MEMORY_SIZE	= 4040;
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
  37:L P[12] 3000mm/sec CNT100    ;
  38:   ;
  39:L P[9] 300mm/sec CNT25    ;
  40:   ;
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
  71:   ;
  72:L P[11:Tool-Pick-Apr] 50mm/sec FINE    ;
  73:   ;
  74:L P[7] 3000mm/sec CNT100    ;
  75:   ;
  76:J P[5] 100% CNT100    ;
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
  99:L P[10:DROP_T2_N2] 50mm/sec FINE    ;
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
	X = -1748.705  mm,	Y =  -291.457  mm,	Z =   125.033  mm,
	W =  -161.806 deg,	P =      .533 deg,	R =    88.462 deg
};
P[4]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1654.808  mm,	Y =  -269.145  mm,	Z =    87.853  mm,
	W =  -161.263 deg,	P =      .981 deg,	R =    89.627 deg
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
	X = -1892.374  mm,	Y =  -406.286  mm,	Z =   508.641  mm,
	W =  -159.702 deg,	P =      .613 deg,	R =    90.999 deg
};
P[8:"Tool-Pick-Pounce"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1642.886  mm,	Y =  -297.974  mm,	Z =   461.813  mm,
	W =  -161.806 deg,	P =      .534 deg,	R =    88.463 deg
};
P[9]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1529.050  mm,	Y =  -263.615  mm,	Z =   458.414  mm,
	W =  -161.263 deg,	P =      .981 deg,	R =    89.627 deg
};
P[10:"DROP_T2_N2"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1756.879  mm,	Y =  -291.471  mm,	Z =   100.180  mm,
	W =  -161.806 deg,	P =      .534 deg,	R =    88.463 deg
};
P[11:"Tool-Pick-Apr"]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -1921.903  mm,	Y =  -408.948  mm,	Z =   267.117  mm,
	W =  -159.706 deg,	P =      .609 deg,	R =    91.000 deg
};
P[12]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1572.449  mm,	Y =  -264.217  mm,	Z =   505.810  mm,
	W =  -161.260 deg,	P =      .982 deg,	R =    89.628 deg
};
/END
