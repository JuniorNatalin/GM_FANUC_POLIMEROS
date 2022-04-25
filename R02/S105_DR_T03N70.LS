/PROG  S105_DR_T03N70
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "TL DRP TYP1 N70";
PROG_SIZE	= 3491;
CREATE		= DATE 18-11-18  TIME 08:47:14;
MODIFIED	= DATE 19-03-02  TIME 01:34:50;
FILE_NAME	= S105_DR_;
VERSION		= 0;
LINE_COUNT	= 122;
MEMORY_SIZE	= 3891;
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
  40:L P[4:Tool-Pick-Dep] 300mm/sec CNT1    ;
  41:   ;
  42:L P[5:DROP_T03_N70] 50mm/sec FINE    ;
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
  73:L P[6:Tool-Pick-Apr] 50mm/sec FINE    ;
  74:   ;
  75:L P[7] 3000mm/sec CNT100    ;
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
  92:  UTOOL_NUM=1 ;
  93:   ;
  94:  LATCH TOOL    ;
  95:   ;
  96:  SET SEGMENT(63) ;
  97:  !SEG(63), Robot Move to Home ;
  98:   ;
  99:L P[5:DROP_T03_N70] 50mm/sec FINE    ;
 100:   ;
 101:L P[4:Tool-Pick-Dep] 50mm/sec CNT1    ;
 102:   ;
 103:L P[3:Tool-Pick-Pounce] 1000mm/sec CNT30    ;
 104:   ;
 105:J P[2] 100% CNT100    ;
 106:J P[1] 100% CNT100    ;
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
	X = -1871.537  mm,	Y =  1036.048  mm,	Z =  1608.502  mm,
	W =  -150.223 deg,	P =      .071 deg,	R =    62.819 deg
};
P[2]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1797.455  mm,	Y =   901.543  mm,	Z =   882.258  mm,
	W =  -160.599 deg,	P =     1.278 deg,	R =    88.209 deg
};
P[3:"Tool-Pick-Pounce"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1992.459  mm,	Y =   707.305  mm,	Z =   365.416  mm,
	W =  -161.783 deg,	P =     -.392 deg,	R =    89.728 deg
};
P[4:"Tool-Pick-Dep"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2069.942  mm,	Y =   711.312  mm,	Z =   132.757  mm,
	W =  -161.676 deg,	P =     -.407 deg,	R =    89.723 deg
};
P[5:"DROP_T03_N70"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2079.457  mm,	Y =   712.306  mm,	Z =    95.269  mm,
	W =  -161.702 deg,	P =     -.401 deg,	R =    89.723 deg
};
P[6:"Tool-Pick-Apr"]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2351.157  mm,	Y =   565.087  mm,	Z =   264.624  mm,
	W =  -160.260 deg,	P =     -.751 deg,	R =    91.105 deg
};
P[7]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2290.329  mm,	Y =   564.037  mm,	Z =   434.031  mm,
	W =  -160.260 deg,	P =     -.751 deg,	R =    91.105 deg
};
P[8]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2111.923  mm,	Y =   767.756  mm,	Z =   882.861  mm,
	W =  -159.036 deg,	P =      .889 deg,	R =    89.578 deg
};
P[9]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2157.965  mm,	Y =  1020.774  mm,	Z =  1799.158  mm,
	W =  -149.817 deg,	P =    -8.762 deg,	R =    77.858 deg
};
/END
