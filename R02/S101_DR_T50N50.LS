/PROG  S101_DR_T50N50
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "TL DRP TYP1 N50";
PROG_SIZE	= 3722;
CREATE		= DATE 22-02-05  TIME 16:44:04;
MODIFIED	= DATE 22-03-26  TIME 17:26:16;
FILE_NAME	= S101_DR_;
VERSION		= 0;
LINE_COUNT	= 122;
MEMORY_SIZE	= 4122;
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
  36:J P[12] 100% FINE    ;
  37:J P[14] 100% FINE    ;
  38:   ;
  39:J P[13] 100% FINE    ;
  40:L P[11] 300mm/sec FINE    ;
  41:   ;
  42:L P[10] 50mm/sec FINE    ;
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
  76:L P[7] 2000mm/sec CNT100    ;
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
  93:  UTOOL_NUM=2 ;
  94:   ;
  95:  LATCH TOOL    ;
  96:   ;
  97:L P[5:DROP_T06_N050] 50mm/sec FINE    ;
  98:L P[4] 2000mm/sec CNT25    ;
  99:   ;
 100:L P[3:Tool-Pick-Pounce] 250mm/sec CNT25    ;
 101:   ;
 102:J P[2] 100% CNT100    ;
 103:J P[1] 100% CNT100    ;
 104:   ;
 105:  SET SEGMENT(63) ;
 106:  !SEG(63), Robot Move to Home ;
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
	UF : 0, UT : 2,	
	J1=  -144.853 deg,	J2=   -28.708 deg,	J3=    82.000 deg,
	J4=     2.573 deg,	J5=   -83.800 deg,	J6=   -90.000 deg
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
	X = -1571.608  mm,	Y = -1342.321  mm,	Z =   270.818  mm,
	W =  -159.123 deg,	P =      .002 deg,	R =    90.404 deg
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
	X = -1989.486  mm,	Y = -1483.952  mm,	Z =   192.320  mm,
	W =  -159.750 deg,	P =      .486 deg,	R =    91.530 deg
};
P[7]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -1961.978  mm,	Y = -1499.977  mm,	Z =   391.254  mm,
	W =  -160.083 deg,	P =      .278 deg,	R =    90.846 deg
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
	X = -1718.689  mm,	Y = -1341.021  mm,	Z =    25.416  mm,
	W =  -161.303 deg,	P =      .857 deg,	R =    90.157 deg
};
P[11]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1696.994  mm,	Y = -1340.003  mm,	Z =    89.517  mm,
	W =  -161.303 deg,	P =      .857 deg,	R =    90.157 deg
};
P[12]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1494.268  mm,	Y = -1321.946  mm,	Z =   627.698  mm,
	W =  -157.940 deg,	P =     1.974 deg,	R =    92.070 deg
};
P[13]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1667.244  mm,	Y = -1326.531  mm,	Z =   302.018  mm,
	W =  -158.663 deg,	P =      .954 deg,	R =    91.145 deg
};
P[14]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1662.742  mm,	Y = -1334.707  mm,	Z =   485.071  mm,
	W =  -158.589 deg,	P =      .918 deg,	R =    91.165 deg
};
/END
