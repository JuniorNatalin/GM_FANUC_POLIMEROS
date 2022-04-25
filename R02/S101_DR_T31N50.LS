/PROG  S101_DR_T31N50
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "TL DRP TYP1 N50";
PROG_SIZE	= 3620;
CREATE		= DATE 19-07-10  TIME 11:49:20;
MODIFIED	= DATE 20-11-14  TIME 07:56:04;
FILE_NAME	= S101_DR_;
VERSION		= 0;
LINE_COUNT	= 121;
MEMORY_SIZE	= 4024;
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
  37:L P[12] 3000mm/sec CNT100    ;
  38:   ;
  39:L P[11] 300mm/sec FINE    ;
  40:   ;
  41:L P[10] 50mm/sec FINE    ;
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
  75:L P[7] 2000mm/sec CNT100    ;
  76:   ;
  77:J P[8] 100% CNT100    ;
  78:J P[9] 100% CNT100    ;
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
  96:L P[5:DROP_T06_N050] 50mm/sec FINE    ;
  97:L P[4] 2000mm/sec CNT25    ;
  98:   ;
  99:L P[3:Tool-Pick-Pounce] 250mm/sec CNT25    ;
 100:   ;
 101:J P[2] 100% CNT100    ;
 102:J P[1] 100% CNT100    ;
 103:   ;
 104:  SET SEGMENT(63) ;
 105:  !SEG(63), Robot Move to Home ;
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
	X = -1620.562  mm,	Y = -1358.200  mm,	Z =   444.486  mm,
	W =  -161.631 deg,	P =      .642 deg,	R =    89.470 deg
};
P[4]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1715.382  mm,	Y = -1351.828  mm,	Z =   131.259  mm,
	W =  -161.313 deg,	P =      .229 deg,	R =    91.188 deg
};
P[5:"DROP_T06_N050"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1726.591  mm,	Y = -1352.192  mm,	Z =    98.100  mm,
	W =  -161.313 deg,	P =      .229 deg,	R =    91.188 deg
};
P[6:"Tool-Pick-Apr"]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -1889.519  mm,	Y = -1486.292  mm,	Z =   265.113  mm,
	W =  -159.943 deg,	P =      .180 deg,	R =    91.658 deg
};
P[7]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -1757.913  mm,	Y = -1481.343  mm,	Z =   625.822  mm,
	W =  -159.943 deg,	P =      .180 deg,	R =    91.657 deg
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
	X = -1622.663  mm,	Y = -1340.476  mm,	Z =    95.943  mm,
	W =  -161.489 deg,	P =      .547 deg,	R =    90.283 deg
};
P[11]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1614.330  mm,	Y = -1340.198  mm,	Z =   120.840  mm,
	W =  -161.489 deg,	P =      .547 deg,	R =    90.283 deg
};
P[12]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1512.915  mm,	Y = -1336.803  mm,	Z =   423.785  mm,
	W =  -161.489 deg,	P =      .547 deg,	R =    90.283 deg
};
/END
