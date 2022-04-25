/PROG  S101_DR_T19N50
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "TL DRP TYP1 N50";
PROG_SIZE	= 3566;
CREATE		= DATE 21-04-29  TIME 07:12:54;
MODIFIED	= DATE 21-04-29  TIME 09:03:08;
FILE_NAME	= S101_DR_;
VERSION		= 0;
LINE_COUNT	= 120;
MEMORY_SIZE	= 3974;
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
  37:L P[3] 2000mm/sec CNT100    ;
  38:L P[4] 300mm/sec CNT25    ;
  39:   ;
  40:L P[5:Drop Tool - 19] 50mm/sec FINE    ;
  41:   ;
  42:  LBL[20:UNLATCH TOOL] ;
  43:  UNLATCH TOOL    ;
  44:   ;
  45:  !ADD DISCONNECT COMMANDS ;
  46:  !ADD ALL EOAT DEVICES ;
  47:  !CALL EN_ARON(x) ;
  48:  !x = EOAT ENET Node # ;
  49:   ;
  50:  !If TL UNL Pass, Return Home ;
  51:  !If TL UNL Fail, Latch Tool, ;
  52:  !  MHFault, and Return Home ;
  53:  IF R[170]=1,JMP LBL[30] ;
  54:   ;
  55:  SELECT R[168]=7,JMP LBL[80] ;
  56:         ELSE,JMP LBL[99] ;
  57:   ;
  58:  !-------------------------------- ;
  59:  LBL[30:COMPLETE PATH] ;
  60:  !TL DRP COMPLETE. MOVE AWAY ;
  61:  !AND RETURN HOME ;
  62:   ;
  63:  !Set ATI Tool and World Frame ;
  64:  PAYLOAD[1] ;
  65:  UTOOL_NUM=14 ;
  66:  UFRAME_NUM=0 ;
  67:   ;
  68:  SET SEGMENT(51) ;
  69:  !SEG(51), Tool Drop Depart ;
  70:   ;
  71:L P[6] 50mm/sec FINE    ;
  72:   ;
  73:L P[7] 2000mm/sec CNT100    ;
  74:   ;
  75:J P[8] 100% CNT100    ;
  76:J P[9] 100% CNT100    ;
  77:   ;
  78:  ! Move To Home ;
  79:  JMP LBL[100] ;
  80:   ;
  81:  !-------------------------------- ;
  82:  LBL[80:UNLATCH FAULT] ;
  83:  !MOVE BACK TO HOME WITH TOOL ;
  84:  !on Reverse Path before Tool Drop ;
  85:   ;
  86:  !Set Payload= ATI ;
  87:  R[221]=1    ;
  88:  PAYLOAD[R[221]] ;
  89:  UFRAME_NUM=0 ;
  90:  UTOOL_NUM=2 ;
  91:   ;
  92:  LATCH TOOL    ;
  93:   ;
  94:L P[10:DROP_T03_N050] 50mm/sec FINE    ;
  95:   ;
  96:L P[11] 250mm/sec CNT25    ;
  97:   ;
  98:L P[12] 2000mm/sec CNT100    ;
  99:   ;
 100:J P[2] 100% CNT100    ;
 101:J P[1] 100% CNT100    ;
 102:   ;
 103:  SET SEGMENT(63) ;
 104:  !SEG(63), Robot Move to Home ;
 105:   ;
 106:  R[132]=0    ;
 107:  GO[71]=0 ;
 108:   ;
 109:  ! Move To Home ;
 110:  JMP LBL[100] ;
 111:   ;
 112:  !-------------------------------- ;
 113:  LBL[99:ABORT PROGRAM] ;
 114:  MESSAGE[...] ;
 115:  MESSAGE[ABORT PROGRAM] ;
 116:  ABORT ;
 117:   ;
 118:  !-------------------------------- ;
 119:  LBL[100:END OF PROGRAM] ;
 120:  END ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U B, 0, 0, 0',
	X =  -253.309  mm,	Y =    88.384  mm,	Z =  2426.870  mm,
	W =   -93.331 deg,	P =     1.054 deg,	R =   122.429 deg
};
P[2]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1089.020  mm,	Y =  -483.560  mm,	Z =  1671.145  mm,
	W =  -119.401 deg,	P =    -2.194 deg,	R =   112.860 deg
};
P[3]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1575.802  mm,	Y = -1331.804  mm,	Z =   473.591  mm,
	W =  -161.648 deg,	P =      .644 deg,	R =    91.486 deg
};
P[4]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1690.712  mm,	Y = -1338.689  mm,	Z =   126.799  mm,
	W =  -161.648 deg,	P =      .645 deg,	R =    91.486 deg
};
P[5:"Drop Tool - 19"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1704.700  mm,	Y = -1339.578  mm,	Z =    88.085  mm,
	W =  -161.648 deg,	P =      .645 deg,	R =    91.486 deg
};
P[6:""]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -1968.812  mm,	Y = -1489.111  mm,	Z =   262.515  mm,
	W =  -160.099 deg,	P =      .282 deg,	R =    92.862 deg
};
P[7]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -1923.271  mm,	Y = -1486.221  mm,	Z =   388.552  mm,
	W =  -160.099 deg,	P =      .282 deg,	R =    92.862 deg
};
P[8]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -1712.913  mm,	Y = -1458.373  mm,	Z =   984.684  mm,
	W =  -159.914 deg,	P =     -.010 deg,	R =    92.162 deg
};
P[9]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U B, 0, 0, 0',
	X =  -158.400  mm,	Y =   -15.894  mm,	Z =  2741.103  mm,
	W =   -91.792 deg,	P =     -.357 deg,	R =   122.600 deg
};
P[10:"DROP_T03_N050"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1707.957  mm,	Y = -1320.906  mm,	Z =    97.573  mm,
	W =  -161.455 deg,	P =      .356 deg,	R =    90.788 deg
};
P[11]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1701.647  mm,	Y = -1320.701  mm,	Z =   116.390  mm,
	W =  -161.455 deg,	P =      .356 deg,	R =    90.788 deg
};
P[12:""]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1480.885  mm,	Y = -1428.210  mm,	Z =   587.612  mm,
	W =  -161.664 deg,	P =     1.002 deg,	R =    90.501 deg
};
/END
