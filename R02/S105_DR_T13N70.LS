/PROG  S105_DR_T13N70
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "TL DRP TYP1 N70";
PROG_SIZE	= 3549;
CREATE		= DATE 21-06-09  TIME 10:41:22;
MODIFIED	= DATE 21-06-09  TIME 12:44:48;
FILE_NAME	= S105_DR_;
VERSION		= 0;
LINE_COUNT	= 122;
MEMORY_SIZE	= 3949;
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
  23:  Set MH Tool(4) ;
  24:  Release Part(5) ;
  25:  VACUUM CAN 1 OFF(6,7) ;
  26:   ;
  27:  !******************************** ;
  28:  !BEGINNING OF PROGRAM PATH ;
  29:  !MOVE TO NEST 1 TOOL DROP ;
  30:  !******************************** ;
  31:   ;
  32:  !-------------------------------- ;
  33:  LBL[10:MOVE TO TL DRP] ;
  34:   ;
  35:  SET SEGMENT(50) ;
  36:  !SEG(50), Approach Tool Drop ;
  37:   ;
  38:J P[1] 100% CNT100    ;
  39:J P[2] 100% CNT100    ;
  40:J P[3] 100% CNT100    ;
  41:   ;
  42:L P[4:Drop Tool] 50mm/sec FINE    ;
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
  75:L P[5] 50mm/sec FINE    ;
  76:   ;
  77:J P[6] 100% CNT100    ;
  78:J P[7] 100% CNT100    ;
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
  92:   ;
  93:  UFRAME_NUM=0 ;
  94:  UTOOL_NUM=2 ;
  95:   ;
  96:  LATCH TOOL    ;
  97:   ;
  98:  SET SEGMENT(63) ;
  99:  !SEG(63), Robot Move to Home ;
 100:   ;
 101:L P[8] 50mm/sec FINE    ;
 102:   ;
 103:L P[9] 1000mm/sec CNT100    ;
 104:J P[10] 100% CNT100    ;
 105:J P[11] 100% CNT100    ;
 106:   ;
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
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1974.745  mm,	Y =  1007.769  mm,	Z =  1410.068  mm,
	W =  -152.887 deg,	P =     -.534 deg,	R =    69.095 deg
};
P[2]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1962.717  mm,	Y =   725.991  mm,	Z =   438.062  mm,
	W =  -162.002 deg,	P =      .840 deg,	R =    89.511 deg
};
P[3]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2075.694  mm,	Y =   727.576  mm,	Z =   128.016  mm,
	W =  -161.991 deg,	P =      .564 deg,	R =    90.288 deg
};
P[4:"Drop Tool"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2089.348  mm,	Y =   731.356  mm,	Z =    99.969  mm,
	W =  -161.985 deg,	P =      .338 deg,	R =    90.925 deg
};
P[5]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2358.796  mm,	Y =   583.344  mm,	Z =   263.920  mm,
	W =  -160.443 deg,	P =     -.016 deg,	R =    92.303 deg
};
P[6]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2245.406  mm,	Y =   585.737  mm,	Z =   576.045  mm,
	W =  -160.449 deg,	P =      .486 deg,	R =    90.889 deg
};
P[7]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2318.251  mm,	Y =   906.629  mm,	Z =  1414.240  mm,
	W =  -153.258 deg,	P =    -1.159 deg,	R =    74.791 deg
};
P[8]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2086.858  mm,	Y =   727.136  mm,	Z =    96.569  mm,
	W =  -161.991 deg,	P =      .564 deg,	R =    90.288 deg
};
P[9]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2075.694  mm,	Y =   727.576  mm,	Z =   128.016  mm,
	W =  -161.991 deg,	P =      .564 deg,	R =    90.288 deg
};
P[10]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1962.717  mm,	Y =   725.991  mm,	Z =   438.063  mm,
	W =  -162.002 deg,	P =      .840 deg,	R =    89.511 deg
};
P[11]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1974.745  mm,	Y =  1007.769  mm,	Z =  1410.068  mm,
	W =  -152.887 deg,	P =     -.534 deg,	R =    69.095 deg
};
/END
