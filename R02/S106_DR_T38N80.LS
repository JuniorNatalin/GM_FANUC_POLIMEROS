/PROG  S106_DR_T38N80
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "TL DRP TYP1 N80";
PROG_SIZE	= 3636;
CREATE		= DATE 20-08-06  TIME 07:21:26;
MODIFIED	= DATE 20-08-06  TIME 07:21:26;
FILE_NAME	= S106_DR_;
VERSION		= 0;
LINE_COUNT	= 124;
MEMORY_SIZE	= 4028;
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
   2:  ! PATH - drop tool into N1=STA 80 ;
   3:  !******************************** ;
   4:  !* Robot ID: XXXXXR02B1 ;
   5:  !*    F-19XXXX ;
   6:  !* Line: XXXXXXXX ;
   7:  !* Platform: XX ;
   8:  !* Tool ID: TOOL xx ;
   9:  !* Program: S001_DR_TxxN4_R02 ;
  10:  !* Application: TOOL DROP ;
  11:  !******************************** ;
  12:  ! Author- Esys Automation ;
  13:  !******************************** ;
  14:   ;
  15:  !++++++++++++++++++++++++++++++++ ;
  16:  !ASSIGN PROGRAM PATH VALUES ;
  17:  !-------------------------------- ;
  18:  !Set Robot Tool and World UFrame ;
  19:  UTOOL_NUM=1 ;
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
  34:  UTOOL_NUM=2 ;
  35:   ;
  36:J P[1] 100% CNT100    ;
  37:   ;
  38:J P[2] 100% CNT100    ;
  39:   ;
  40:J P[12] 100% CNT50    ;
  41:  Grip Part(5) ;
  42:   ;
  43:L P[11] 100mm/sec CNT25    ;
  44:   ;
  45:L P[10] 50mm/sec FINE    ;
  46:  !-------------------------------- ;
  47:  LBL[20:UNLATCH TOOL] ;
  48:  UNLATCH TOOL    ;
  49:   ;
  50:  !ADD DISCONNECT COMMANDS ;
  51:  !ADD ALL EOAT DEVICES ;
  52:  !CALL EN_ARON(x) ;
  53:  !x = EOAT ENET Node # ;
  54:   ;
  55:  !If TL UNL Pass, Return Home ;
  56:  !If TL UNL Fail, Latch Tool, ;
  57:  !  MHFault, and Return Home ;
  58:  IF R[170]=1,JMP LBL[30] ;
  59:   ;
  60:  SELECT R[168]=7,JMP LBL[80] ;
  61:         ELSE,JMP LBL[99] ;
  62:   ;
  63:  !-------------------------------- ;
  64:  LBL[30:COMPLETE PATH] ;
  65:  !TL DRP COMPLETE. MOVE AWAY ;
  66:  !AND RETURN HOME ;
  67:   ;
  68:  !Set ATI Tool and World Frame ;
  69:  UTOOL_NUM=14 ;
  70:  UFRAME_NUM=0 ;
  71:   ;
  72:  !Set Payload= ATI ;
  73:  R[221]=1    ;
  74:  PAYLOAD[R[221]] ;
  75:   ;
  76:  SET SEGMENT(51) ;
  77:  !SEG(51), Tool Drop Depart ;
  78:   ;
  79:L P[6:Tool-Pick-Apr] 50mm/sec FINE    ;
  80:   ;
  81:L P[7] 3000mm/sec CNT100    ;
  82:   ;
  83:J P[8] 100% CNT100    ;
  84:J P[9] 100% CNT100    ;
  85:   ;
  86:  ! Move To Home ;
  87:  JMP LBL[100] ;
  88:   ;
  89:  !-------------------------------- ;
  90:  LBL[80:UNLATCH FAULT] ;
  91:  !MOVE BACK TO HOME WITH TOOL ;
  92:  !on Reverse Path before Tool Drop ;
  93:  UFRAME_NUM=0 ;
  94:  UTOOL_NUM=2 ;
  95:   ;
  96:  LATCH TOOL    ;
  97:   ;
  98:L P[5] 50mm/sec FINE    ;
  99:   ;
 100:L P[4] 250mm/sec CNT25    ;
 101:   ;
 102:L P[3:Tool-Pick-Pounce] 3000mm/sec CNT100    ;
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
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1905.823  mm,	Y =  1316.578  mm,	Z =  1704.024  mm,
	W =  -156.086 deg,	P =   -19.025 deg,	R =    97.401 deg
};
P[2]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1888.728  mm,	Y =  1794.581  mm,	Z =   738.844  mm,
	W =  -161.874 deg,	P =      .127 deg,	R =    89.772 deg
};
P[3:"Tool-Pick-Pounce"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2008.941  mm,	Y =  1794.240  mm,	Z =   371.620  mm,
	W =  -161.874 deg,	P =      .127 deg,	R =    89.772 deg
};
P[4]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2083.979  mm,	Y =  1794.028  mm,	Z =   142.390  mm,
	W =  -161.874 deg,	P =      .127 deg,	R =    89.772 deg
};
P[5]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2073.624  mm,	Y =  1890.212  mm,	Z =   134.904  mm,
	W =  -161.133 deg,	P =      .275 deg,	R =    89.908 deg
};
P[6:"Tool-Pick-Apr"]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2349.352  mm,	Y =  1752.578  mm,	Z =   277.166  mm,
	W =  -159.666 deg,	P =      .039 deg,	R =    91.064 deg
};
P[7]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2277.679  mm,	Y =  1651.554  mm,	Z =   525.803  mm,
	W =  -160.338 deg,	P =     -.230 deg,	R =    91.149 deg
};
P[8]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2146.677  mm,	Y =  1511.959  mm,	Z =   772.650  mm,
	W =  -159.102 deg,	P =      .463 deg,	R =    90.425 deg
};
P[9]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -1893.869  mm,	Y =  1192.844  mm,	Z =  1398.826  mm,
	W =  -159.103 deg,	P =      .463 deg,	R =    90.425 deg
};
P[10]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2086.965  mm,	Y =  1890.046  mm,	Z =    95.866  mm,
	W =  -161.133 deg,	P =      .275 deg,	R =    89.908 deg
};
P[11]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2073.624  mm,	Y =  1890.212  mm,	Z =   134.904  mm,
	W =  -161.133 deg,	P =      .275 deg,	R =    89.908 deg
};
P[12]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2008.621  mm,	Y =  1874.879  mm,	Z =   371.441  mm,
	W =  -161.874 deg,	P =      .127 deg,	R =    89.772 deg
};
/END
