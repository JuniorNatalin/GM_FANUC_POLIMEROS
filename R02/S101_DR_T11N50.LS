/PROG  S101_DR_T11N50
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "TL DRP TYP1 N50";
PROG_SIZE	= 3476;
CREATE		= DATE 21-06-08  TIME 07:37:22;
MODIFIED	= DATE 21-06-08  TIME 07:48:26;
FILE_NAME	= S101_DR_;
VERSION		= 0;
LINE_COUNT	= 121;
MEMORY_SIZE	= 3880;
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
  38:L P[12] 2000mm/sec CNT100    ;
  39:   ;
  40:L P[10] 300mm/sec CNT25    ;
  41:   ;
  42:L P[11:Drop Tool] 50mm/sec FINE    ;
  43:   ;
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
  73:L P[6] 50mm/sec FINE    ;
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
  96:L P[11:Drop Tool] 50mm/sec FINE    ;
  97:L P[10] 50mm/sec CNT25    ;
  98:   ;
  99:L P[3] 2000mm/sec CNT100    ;
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
P[3:""]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1480.885  mm,	Y = -1428.210  mm,	Z =   587.612  mm,
	W =  -161.664 deg,	P =     1.002 deg,	R =    90.501 deg
};
P[6:""]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -1937.753  mm,	Y = -1488.689  mm,	Z =   260.093  mm,
	W =  -160.092 deg,	P =      .452 deg,	R =    92.415 deg
};
P[7]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -1761.067  mm,	Y = -1485.919  mm,	Z =   726.133  mm,
	W =  -160.107 deg,	P =      .639 deg,	R =    91.877 deg
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
P[10]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1659.758  mm,	Y = -1340.925  mm,	Z =   120.422  mm,
	W =  -161.645 deg,	P =      .815 deg,	R =    91.039 deg
};
P[11:"Drop Tool"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1669.304  mm,	Y = -1341.509  mm,	Z =    91.621  mm,
	W =  -161.645 deg,	P =      .815 deg,	R =    91.039 deg
};
P[12]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1481.647  mm,	Y = -1341.226  mm,	Z =   586.091  mm,
	W =  -161.664 deg,	P =     1.002 deg,	R =    90.501 deg
};
/END
