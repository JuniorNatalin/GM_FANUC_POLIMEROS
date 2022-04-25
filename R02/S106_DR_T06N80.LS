/PROG  S106_DR_T06N80
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "TL DRP TYP1 N80";
PROG_SIZE	= 3601;
CREATE		= DATE 18-11-03  TIME 14:37:16;
MODIFIED	= DATE 19-07-20  TIME 15:15:24;
FILE_NAME	= S112_DR_;
VERSION		= 0;
LINE_COUNT	= 122;
MEMORY_SIZE	= 4001;
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
  34:  UTOOL_NUM=2 ;
  35:J P[1] 100% CNT100    ;
  36:   ;
  37:J P[2] 100% CNT100    ;
  38:   ;
  39:L P[3:Tool-Pick-Pounce] 3000mm/sec CNT50    ;
  40:   ;
  41:L P[10] 300mm/sec CNT25    ;
  42:   ;
  43:L P[11] 50mm/sec FINE    ;
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
  67:  UTOOL_NUM=14 ;
  68:  UFRAME_NUM=0 ;
  69:   ;
  70:  !Set Payload= ATI ;
  71:  R[221]=1    ;
  72:  PAYLOAD[R[221]] ;
  73:   ;
  74:  SET SEGMENT(51) ;
  75:  !SEG(51), Tool Drop Depart ;
  76:   ;
  77:L P[6:Tool-Pick-Apr] 50mm/sec FINE    ;
  78:   ;
  79:L P[7] 3000mm/sec CNT100    ;
  80:   ;
  81:J P[8] 100% CNT100    ;
  82:J P[9] 100% CNT100    ;
  83:   ;
  84:  ! Move To Home ;
  85:  JMP LBL[100] ;
  86:   ;
  87:  !-------------------------------- ;
  88:  LBL[80:UNLATCH FAULT] ;
  89:  !MOVE BACK TO HOME WITH TOOL ;
  90:  !on Reverse Path before Tool Drop ;
  91:  UFRAME_NUM=0 ;
  92:  UTOOL_NUM=2 ;
  93:   ;
  94:  LATCH TOOL    ;
  95:   ;
  96:L P[5:DROP_T07_N80] 50mm/sec FINE    ;
  97:   ;
  98:L P[4:Tool-Pick-Dep] 250mm/sec CNT25    ;
  99:   ;
 100:L P[3:Tool-Pick-Pounce] 3000mm/sec CNT100    ;
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
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1905.823  mm,	Y =  1316.578  mm,	Z =  1704.024  mm,
	W =  -156.086 deg,	P =   -19.025 deg,	R =    97.401 deg
};
P[2]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1894.754  mm,	Y =  1853.844  mm,	Z =   855.871  mm,
	W =  -160.812 deg,	P =     1.039 deg,	R =    87.687 deg
};
P[3:"Tool-Pick-Pounce"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2030.945  mm,	Y =  1888.215  mm,	Z =   274.852  mm,
	W =  -161.594 deg,	P =      .233 deg,	R =    89.733 deg
};
P[4:"Tool-Pick-Dep"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2094.986  mm,	Y =  1891.768  mm,	Z =   125.707  mm,
	W =  -161.591 deg,	P =     -.141 deg,	R =    90.765 deg
};
P[5:"DROP_T07_N80"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2104.134  mm,	Y =  1891.713  mm,	Z =    98.221  mm,
	W =  -161.591 deg,	P =     -.141 deg,	R =    90.765 deg
};
P[6:"Tool-Pick-Apr"]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2371.724  mm,	Y =  1710.635  mm,	Z =   267.269  mm,
	W =  -160.061 deg,	P =     -.506 deg,	R =    92.140 deg
};
P[7]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2295.993  mm,	Y =  1745.626  mm,	Z =   457.761  mm,
	W =  -160.055 deg,	P =     -.130 deg,	R =    91.108 deg
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
	X = -2091.196  mm,	Y =  1861.681  mm,	Z =   132.369  mm,
	W =  -161.601 deg,	P =      .307 deg,	R =    90.914 deg
};
P[11]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2101.319  mm,	Y =  1861.355  mm,	Z =   101.933  mm,
	W =  -161.601 deg,	P =      .307 deg,	R =    90.914 deg
};
/END
