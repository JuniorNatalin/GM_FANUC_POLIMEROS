/PROG  S105_DR_T06N1_R01
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "274 DRP TYP1 NST";
PROG_SIZE	= 4241;
CREATE		= DATE 18-04-30  TIME 09:16:14;
MODIFIED	= DATE 19-03-07  TIME 15:14:16;
FILE_NAME	= S105_DR_;
VERSION		= 0;
LINE_COUNT	= 132;
MEMORY_SIZE	= 4729;
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
   2:  ! PATH - drop tool into N1=STA 50 ;
   3:  !******************************** ;
   4:  !* Robot ID: XXXXXR01B1 ;
   5:  !*    F-19XXXX ;
   6:  !* Line: XXXXXXXX ;
   7:  !* Platform: XX ;
   8:  !* Tool ID: TOOL xx ;
   9:  !* Program: S105_DR_TxxN1 ;
  10:  !* Application: TOOL DROP ;
  11:  !******************************** ;
  12:  ! Author- Esys Automation ;
  13:  !******************************** ;
  14:   ;
  15:  !++++++++++++++++++++++++++++++++ ;
  16:  !ASSIGN PROGRAM PATH VALUES ;
  17:  !-------------------------------- ;
  18:  !Set Robot Tool and World UFrame ;
  19:  UTOOL_NUM=10 ;
  20:  UFRAME_NUM=0 ;
  21:  PAYLOAD[4] ;
  22:   ;
  23:  !++++++++++++++++++++++++++++++++ ;
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
  36:J P[12:Tool-Pick-Clear] 50% CNT100    ;
  37:   ;
  38:J P[18] 100% CNT100    ;
  39:J P[16] 100% CNT100    ;
  40:J P[9] 100% CNT100    ;
  41:J P[8] 100% CNT100    ;
  42:   ;
  43:  !REPROGRAMAR DEPOSITO ;
  44:   ;
  45:L P[10:Tool-Pick-Dep-2] 2000mm/sec CNT50    ;
  46:L P[4:Tool-Pick-Dep-1] 400mm/sec CNT5    ;
  47:L P[13:Tool-Pick] 50mm/sec FINE    ;
  48:  !-------------------------------- ;
  49:  LBL[20:UNLATCH TOOL] ;
  50:   ;
  51:  UNLATCH TOOL    ;
  52:  !ADD DISCONNECT COMMANDS ;
  53:  !ADD ALL EOAT DEVICES ;
  54:  !CALL EN_ARON(x) ;
  55:  !x = EOAT ENET Node # ;
  56:   ;
  57:  !If TL UNL Pass, Return Home ;
  58:  !If TL UNL Fail, Latch Tool, ;
  59:  !  MHFault, and Return Home ;
  60:  IF R[170]=1,JMP LBL[30] ;
  61:   ;
  62:  SELECT R[168]=7,JMP LBL[80] ;
  63:         ELSE,JMP LBL[99] ;
  64:   ;
  65:  !-------------------------------- ;
  66:  LBL[30:COMPLETE PATH] ;
  67:  !TL DRP COMPLETE. MOVE AWAY ;
  68:  !AND RETURN HOME ;
  69:   ;
  70:  !Set ATI Tool and World Frame ;
  71:  !Modify UTOOL if required ;
  72:  UTOOL_NUM=10 ;
  73:  UFRAME_NUM=0 ;
  74:   ;
  75:  !Set Payload= ATI ;
  76:  PAYLOAD[1] ;
  77:   ;
  78:L P[17] 50mm/sec FINE    ;
  79:  WAIT DI[909:ON ]=OFF    ;
  80:   ;
  81:  SET SEGMENT(51) ;
  82:   ;
  83:L P[15:Tool-Pick-Apr] 2000mm/sec CNT100    ;
  84:   ;
  85:J P[22] 100% CNT100    ;
  86:J P[14] 100% CNT100    ;
  87:J P[5:Tool-Pick-Pounce] 100% CNT50    ;
  88:   ;
  89:  ! Move To Home ;
  90:  JMP LBL[100] ;
  91:   ;
  92:  !-------------------------------- ;
  93:  LBL[80:UNLATCH FAULT] ;
  94:  !MOVE BACK TO HOME WITH TOOL ;
  95:  !on Reverse Path before Tool Drop ;
  96:  PAYLOAD[4] ;
  97:   ;
  98:  LATCH TOOL    ;
  99:  WAIT DI[909:ON ]=ON    ;
 100:   ;
 101:  SET SEGMENT(63) ;
 102:  !SEG(63), Robot Move to Home ;
 103:   ;
 104:L P[6:Tool-Pick-Dep-1] 50mm/sec FINE    ;
 105:L P[3:Tool-Pick-Dep-2] 2000mm/sec CNT50    ;
 106:   ;
 107:J P[21] 100% CNT100    ;
 108:J P[20] 100% CNT100    ;
 109:J P[19] 100% CNT100    ;
 110:J P[11] 100% CNT100    ;
 111:   ;
 112:J P[2] 100% CNT100    ;
 113:   ;
 114:J P[1:Tool-Pick-Clear] 50% CNT100    ;
 115:   ;
 116:   ;
 117:  SET SEGMENT(63) ;
 118:  R[132]=0    ;
 119:  GO[71:0]=0 ;
 120:   ;
 121:  ! Move To Home ;
 122:  JMP LBL[100] ;
 123:   ;
 124:  !-------------------------------- ;
 125:  LBL[99:ABORT PROGRAM] ;
 126:  MESSAGE[...] ;
 127:  MESSAGE[ABORT PROGRAM] ;
 128:  ABORT ;
 129:   ;
 130:  !-------------------------------- ;
 131:  LBL[100:END OF PROGRAM] ;
 132:  END ;
/POS
P[1:"Tool-Pick-Clear"]{
   GP1:
	UF : 0, UT : 10,	
	J1=   -10.267 deg,	J2=   -98.488 deg,	J3=    85.719 deg,
	J4=    -7.725 deg,	J5=   -48.538 deg,	J6=  -164.955 deg
};
P[2]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, -1',
	X =  2173.722  mm,	Y = -1206.544  mm,	Z =   243.055  mm,
	W =   156.371 deg,	P =    26.445 deg,	R =   111.837 deg
};
P[3:"Tool-Pick-Dep-2"]{
   GP1:
	UF : 0, UT : 10,	
	J1=   -50.477 deg,	J2=    -5.455 deg,	J3=    15.035 deg,
	J4=   -52.224 deg,	J5=   -42.954 deg,	J6=  -165.029 deg
};
P[4:"Tool-Pick-Dep-1"]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1781.031  mm,	Y = -1524.705  mm,	Z = -2431.670  mm,
	W =   161.939 deg,	P =    -3.072 deg,	R =    89.934 deg
};
P[5:"Tool-Pick-Pounce"]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  2207.383  mm,	Y = -1563.618  mm,	Z =   -12.197  mm,
	W =  -168.976 deg,	P =      .128 deg,	R =   -67.418 deg
};
P[6:"Tool-Pick-Dep-1"]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1774.061  mm,	Y = -1525.363  mm,	Z = -2413.353  mm,
	W =   160.258 deg,	P =    -1.849 deg,	R =    91.362 deg
};
P[8]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1583.785  mm,	Y = -1598.329  mm,	Z = -1432.966  mm,
	W =   159.592 deg,	P =    -2.308 deg,	R =    93.440 deg
};
P[9]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1583.784  mm,	Y = -1598.329  mm,	Z = -1108.965  mm,
	W =   159.592 deg,	P =    -2.308 deg,	R =    93.440 deg
};
P[10:"Tool-Pick-Dep-2"]{
   GP1:
	UF : 0, UT : 10,	
	J1=   -52.054 deg,	J2=   -11.439 deg,	J3=    14.650 deg,
	J4=   -51.292 deg,	J5=   -43.747 deg,	J6=  -167.963 deg
};
P[11]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, -1',
	X =  1583.784  mm,	Y = -1598.328  mm,	Z =   -19.364  mm,
	W =   159.592 deg,	P =    -2.308 deg,	R =    93.440 deg
};
P[12:"Tool-Pick-Clear"]{
   GP1:
	UF : 0, UT : 10,	
	J1=   -10.267 deg,	J2=   -98.488 deg,	J3=    85.719 deg,
	J4=    -7.725 deg,	J5=   -48.538 deg,	J6=  -164.955 deg
};
P[13:"Tool-Pick"]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1788.744  mm,	Y = -1523.448  mm,	Z = -2455.287  mm,
	W =   161.939 deg,	P =    -3.072 deg,	R =    89.934 deg
};
P[14]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1820.555  mm,	Y = -2125.244  mm,	Z =  -182.312  mm,
	W =  -139.949 deg,	P =    43.105 deg,	R =  -159.871 deg
};
P[15:"Tool-Pick-Apr"]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1727.830  mm,	Y = -1533.384  mm,	Z = -2268.791  mm,
	W =   161.939 deg,	P =    -3.072 deg,	R =    89.934 deg
};
P[16]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, -1',
	X =  1583.784  mm,	Y = -1598.328  mm,	Z =   -19.364  mm,
	W =   159.592 deg,	P =    -2.308 deg,	R =    93.440 deg
};
P[17]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1776.203  mm,	Y = -1525.490  mm,	Z = -2416.892  mm,
	W =   161.939 deg,	P =    -3.072 deg,	R =    89.934 deg
};
P[18]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, -1',
	X =  2173.722  mm,	Y = -1206.544  mm,	Z =   243.055  mm,
	W =   156.371 deg,	P =    26.445 deg,	R =   111.837 deg
};
P[19]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1583.784  mm,	Y = -1598.329  mm,	Z = -1108.965  mm,
	W =   159.592 deg,	P =    -2.308 deg,	R =    93.440 deg
};
P[20]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1583.785  mm,	Y = -1598.329  mm,	Z = -1432.966  mm,
	W =   159.592 deg,	P =    -2.308 deg,	R =    93.440 deg
};
P[21]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1675.668  mm,	Y = -1594.186  mm,	Z = -1973.574  mm,
	W =   159.592 deg,	P =    -2.308 deg,	R =    93.440 deg
};
P[22]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1780.751  mm,	Y = -1530.533  mm,	Z = -1424.215  mm,
	W =   160.214 deg,	P =    -1.298 deg,	R =    92.897 deg
};
/END
