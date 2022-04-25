/PROG  S101_DR_T09N50
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "TL DRP TYP1 N50";
PROG_SIZE	= 3605;
CREATE		= DATE 18-11-10  TIME 12:03:02;
MODIFIED	= DATE 19-08-16  TIME 09:14:18;
FILE_NAME	= S101_DR_;
VERSION		= 0;
LINE_COUNT	= 124;
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
  34:J P[1] 100% CNT100    ;
  35:   ;
  36:J P[2] 100% CNT100    ;
  37:   ;
  38:L P[3:Tool-Pick-Pounce] 3000mm/sec CNT100    ;
  39:   ;
  40:L P[11] 300mm/sec CNT25    ;
  41:   ;
  42:L P[10] 50mm/sec FINE    ;
  43:   ;
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
  68:  PAYLOAD[1] ;
  69:  UTOOL_NUM=14 ;
  70:  UFRAME_NUM=0 ;
  71:   ;
  72:  SET SEGMENT(51) ;
  73:  !SEG(51), Tool Drop Depart ;
  74:   ;
  75:L P[6:Tool-Pick-Apr] 50mm/sec FINE    ;
  76:   ;
  77:L P[7] 2000mm/sec CNT100    ;
  78:   ;
  79:J P[8] 100% CNT100    ;
  80:J P[9] 100% CNT100    ;
  81:   ;
  82:  ! Move To Home ;
  83:  JMP LBL[100] ;
  84:   ;
  85:  !-------------------------------- ;
  86:  LBL[80:UNLATCH FAULT] ;
  87:  !MOVE BACK TO HOME WITH TOOL ;
  88:  !on Reverse Path before Tool Drop ;
  89:   ;
  90:  !Set Payload= ATI ;
  91:  R[221]=1    ;
  92:  PAYLOAD[R[221]] ;
  93:  UFRAME_NUM=0 ;
  94:  UTOOL_NUM=2 ;
  95:   ;
  96:  LATCH TOOL    ;
  97:   ;
  98:L P[5:DROP_T07_N050] 50mm/sec FINE    ;
  99:   ;
 100:L P[4] 250mm/sec CNT25    ;
 101:   ;
 102:L P[3:Tool-Pick-Pounce] 2000mm/sec CNT100    ;
 103:   ;
 104:J P[2] 100% CNT100    ;
 105:J P[1] 100% CNT100    ;
 106:   ;
 107:  SET SEGMENT(63) ;
 108:  !SEG(63), Robot Move to Home ;
 109:   ;
 110:  R[132]=0    ;
 111:  GO[71]=0 ;
 112:   ;
 113:  ! Move To Home ;
 114:  JMP LBL[100] ;
 115:   ;
 116:  !-------------------------------- ;
 117:  LBL[99:ABORT PROGRAM] ;
 118:  MESSAGE[...] ;
 119:  MESSAGE[ABORT PROGRAM] ;
 120:  ABORT ;
 121:   ;
 122:  !-------------------------------- ;
 123:  LBL[100:END OF PROGRAM] ;
 124:  END ;
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
P[3:"Tool-Pick-Pounce"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1479.322  mm,	Y = -1340.838  mm,	Z =   713.372  mm,
	W =  -161.731 deg,	P =     1.326 deg,	R =    89.245 deg
};
P[4]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1677.284  mm,	Y = -1352.095  mm,	Z =   114.376  mm,
	W =  -161.731 deg,	P =     1.326 deg,	R =    89.245 deg
};
P[5:"DROP_T07_N050"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1688.271  mm,	Y = -1352.729  mm,	Z =    83.902  mm,
	W =  -161.731 deg,	P =     1.326 deg,	R =    89.245 deg
};
P[6:"Tool-Pick-Apr"]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -1965.106  mm,	Y = -1499.262  mm,	Z =   291.652  mm,
	W =  -160.161 deg,	P =      .753 deg,	R =    90.318 deg
};
P[7]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -1852.123  mm,	Y = -1483.627  mm,	Z =   553.986  mm,
	W =  -160.166 deg,	P =      .965 deg,	R =    90.621 deg
};
P[8]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -1598.294  mm,	Y = -1470.396  mm,	Z =  1114.792  mm,
	W =  -159.094 deg,	P =      .421 deg,	R =    91.998 deg
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
	X = -1702.169  mm,	Y = -1363.325  mm,	Z =    89.782  mm,
	W =  -161.721 deg,	P =     1.115 deg,	R =    88.942 deg
};
P[11]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1692.047  mm,	Y = -1368.146  mm,	Z =   117.233  mm,
	W =  -161.702 deg,	P =      .974 deg,	R =    89.055 deg
};
/END
