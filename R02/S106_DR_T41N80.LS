/PROG  S106_DR_T41N80
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "TL DRP TYP1 N80";
PROG_SIZE	= 3811;
CREATE		= DATE 19-05-25  TIME 08:55:00;
MODIFIED	= DATE 22-01-17  TIME 10:11:06;
FILE_NAME	= S106_DR_;
VERSION		= 0;
LINE_COUNT	= 127;
MEMORY_SIZE	= 4191;
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
  22:  Set MH Tool(4) ;
  23:  Release Part(1,2,5) ;
  24:   ;
  25:  !******************************** ;
  26:  !BEGINNING OF PROGRAM PATH ;
  27:  !MOVE TO NEST 1 TOOL DROP ;
  28:  !******************************** ;
  29:   ;
  30:  !-------------------------------- ;
  31:  LBL[10:MOVE TO TL DRP] ;
  32:   ;
  33:  SET SEGMENT(50) ;
  34:  !SEG(50), Approach Tool Drop ;
  35:   ;
  36:  UTOOL_NUM=2 ;
  37:   ;
  38:J P[1] 100% CNT100    ;
  39:   ;
  40:J P[2] 100% CNT100    ;
  41:   ;
  42:J P[3] 100% CNT50    ;
  43:   ;
  44:L P[4] 100mm/sec CNT25    ;
  45:   ;
  46:L P[5] 50mm/sec FINE    ;
  47:L P[6] 30mm/sec FINE    ;
  48:L P[7] 20mm/sec FINE    ;
  49:  !-------------------------------- ;
  50:  LBL[20:UNLATCH TOOL] ;
  51:  UNLATCH TOOL    ;
  52:   ;
  53:  !ADD DISCONNECT COMMANDS ;
  54:  !ADD ALL EOAT DEVICES ;
  55:  !CALL EN_ARON(x) ;
  56:  !x = EOAT ENET Node # ;
  57:   ;
  58:  !If TL UNL Pass, Return Home ;
  59:  !If TL UNL Fail, Latch Tool, ;
  60:  !  MHFault, and Return Home ;
  61:  IF R[170]=1,JMP LBL[30] ;
  62:   ;
  63:  SELECT R[168]=7,JMP LBL[80] ;
  64:         ELSE,JMP LBL[99] ;
  65:   ;
  66:  !-------------------------------- ;
  67:  LBL[30:COMPLETE PATH] ;
  68:  !TL DRP COMPLETE. MOVE AWAY ;
  69:  !AND RETURN HOME ;
  70:   ;
  71:  !Set ATI Tool and World Frame ;
  72:  UTOOL_NUM=14 ;
  73:  UFRAME_NUM=0 ;
  74:   ;
  75:  !Set Payload= ATI ;
  76:  R[221]=1    ;
  77:  PAYLOAD[R[221]] ;
  78:   ;
  79:  SET SEGMENT(51) ;
  80:  !SEG(51), Tool Drop Depart ;
  81:   ;
  82:L P[8:Tool-Pick-Apr] 50mm/sec FINE    ;
  83:   ;
  84:L P[9] 3000mm/sec CNT100    ;
  85:   ;
  86:J P[10] 100% CNT100    ;
  87:J P[11] 100% CNT100    ;
  88:   ;
  89:  ! Move To Home ;
  90:  JMP LBL[100] ;
  91:   ;
  92:  !-------------------------------- ;
  93:  LBL[80:UNLATCH FAULT] ;
  94:  !MOVE BACK TO HOME WITH TOOL ;
  95:  !on Reverse Path before Tool Drop ;
  96:  UFRAME_NUM=0 ;
  97:  UTOOL_NUM=2 ;
  98:   ;
  99:  LATCH TOOL    ;
 100:   ;
 101:L P[12] 50mm/sec FINE    ;
 102:   ;
 103:L P[13] 250mm/sec CNT25    ;
 104:   ;
 105:L P[14:Tool-Pick-Pounce] 3000mm/sec CNT100    ;
 106:   ;
 107:J P[15] 100% CNT100    ;
 108:J P[1] 100% CNT100    ;
 109:   ;
 110:  SET SEGMENT(63) ;
 111:  !SEG(63), Robot Move to Home ;
 112:   ;
 113:  R[132]=0    ;
 114:  GO[71]=0 ;
 115:   ;
 116:  ! Move To Home ;
 117:  JMP LBL[100] ;
 118:   ;
 119:  !-------------------------------- ;
 120:  LBL[99:ABORT PROGRAM] ;
 121:  MESSAGE[...] ;
 122:  MESSAGE[ABORT PROGRAM] ;
 123:  ABORT ;
 124:   ;
 125:  !-------------------------------- ;
 126:  LBL[100:END OF PROGRAM] ;
 127:  END ;
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
	X = -1928.252  mm,	Y =  1901.772  mm,	Z =   580.519  mm,
	W =  -161.791 deg,	P =      .672 deg,	R =    89.522 deg
};
P[3]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2048.875  mm,	Y =  1898.478  mm,	Z =   213.960  mm,
	W =  -161.791 deg,	P =      .672 deg,	R =    89.522 deg
};
P[4]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2085.586  mm,	Y =  1898.119  mm,	Z =   114.535  mm,
	W =  -161.704 deg,	P =      .219 deg,	R =    90.700 deg
};
P[5]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2101.456  mm,	Y =  1897.443  mm,	Z =    60.507  mm,
	W =  -161.972 deg,	P =      .678 deg,	R =    89.782 deg
};
P[6]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2107.022  mm,	Y =  1893.371  mm,	Z =    40.240  mm,
	W =  -161.972 deg,	P =      .678 deg,	R =    89.903 deg
};
P[7]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2113.409  mm,	Y =  1893.150  mm,	Z =    20.614  mm,
	W =  -161.972 deg,	P =      .678 deg,	R =    89.903 deg
};
P[8:"Tool-Pick-Apr"]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2373.667  mm,	Y =  1750.286  mm,	Z =   210.565  mm,
	W =  -160.165 deg,	P =     -.141 deg,	R =    92.076 deg
};
P[9]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2326.074  mm,	Y =  1755.979  mm,	Z =   340.606  mm,
	W =  -160.390 deg,	P =      .119 deg,	R =    90.868 deg
};
P[10]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2146.677  mm,	Y =  1511.959  mm,	Z =   772.650  mm,
	W =  -159.102 deg,	P =      .463 deg,	R =    90.425 deg
};
P[11]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -1893.869  mm,	Y =  1192.844  mm,	Z =  1398.826  mm,
	W =  -159.103 deg,	P =      .463 deg,	R =    90.425 deg
};
P[12]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2091.115  mm,	Y =  1897.319  mm,	Z =    85.605  mm,
	W =  -161.791 deg,	P =      .671 deg,	R =    89.522 deg
};
P[13]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1996.970  mm,	Y =  1899.890  mm,	Z =   371.702  mm,
	W =  -161.791 deg,	P =      .671 deg,	R =    89.522 deg
};
P[14:"Tool-Pick-Pounce"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2008.941  mm,	Y =  1794.240  mm,	Z =   371.620  mm,
	W =  -161.874 deg,	P =      .127 deg,	R =    89.772 deg
};
P[15]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1888.728  mm,	Y =  1794.581  mm,	Z =   738.844  mm,
	W =  -161.874 deg,	P =      .127 deg,	R =    89.772 deg
};
/END
