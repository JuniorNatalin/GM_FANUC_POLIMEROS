/PROG  S107_PK_T42N1_R01
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "376 PCK TYP1 NST";
PROG_SIZE	= 4777;
CREATE		= DATE 19-06-22  TIME 08:53:06;
MODIFIED	= DATE 19-06-22  TIME 09:03:56;
FILE_NAME	= S107_PK_;
VERSION		= 0;
LINE_COUNT	= 159;
MEMORY_SIZE	= 5173;
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
  HANDLING : TRUE ; 
/MN
   1:  !******************************** ;
   2:  ! PATH - PK TOOL FROM N1=STA 50 ;
   3:  !******************************** ;
   4:  !* Robot ID: XXXXXR01B1 ;
   5:  !*    F-19XXXX ;
   6:  !* Line: XXXXXXXX ;
   7:  !* Platform: XX ;
   8:  !* Tool ID: TOOL xx ;
   9:  !* Program: S107_PK_TxxN1 ;
  10:  !* Application: TOOL PICK ;
  11:  !* Tool Number: 376 ;
  12:  !******************************** ;
  13:  ! Author- Esys Automation ;
  14:  !******************************** ;
  15:   ;
  16:  !++++++++++++++++++++++++++++++++ ;
  17:  !ASSIGN PROGRAM PATH VALUES ;
  18:  !-------------------------------- ;
  19:  !Set ATI Tool and World UFrame ;
  20:  UTOOL_NUM=10 ;
  21:  UFRAME_NUM=0 ;
  22:  PAYLOAD[1] ;
  23:  !++++++++++++++++++++++++++++++++ ;
  24:   ;
  25:  !******************************** ;
  26:  !BEGINNING OF PROGRAM PATH ;
  27:  !MOVE TO NEST 1 TOOL PICK ;
  28:  !******************************** ;
  29:   ;
  30:  !-------------------------------- ;
  31:  LBL[10:MOVE TO TL PICK] ;
  32:   ;
  33:  SET SEGMENT(52) ;
  34:  !SEG(52), Approach Tool Pick ;
  35:   ;
  36:J P[1:Tool-Pick-Pounce] 75% CNT50    ;
  37:J P[9] 100% CNT100    ;
  38:   ;
  39:  !REPROGRAMAR PEGA ;
  40:   ;
  41:J P[2:Tool-Pick-Apr] 100% CNT100    ;
  42:   ;
  43:L P[8] 300mm/sec FINE    ;
  44:L P[3:Tool-Pick] 50mm/sec FINE    ;
  45:   ;
  46:  !-------------------------------- ;
  47:  LBL[20:LATCH TOOL] ;
  48:   ;
  49:  LATCH TOOL    ;
  50:   ;
  51:  !Add MH Ethernet Device from ;
  52:  !I/O Ethernet table ;
  53:  !which tool has ;
  54:   ;
  55:  !ADD DEVICE ONLINE CALLS ;
  56:  !WITHOUT STATUS CHECK ARG ;
  57:  !FOR ALL EOAT DEVICES ;
  58:  !CALL EN_ONLN(x,y) ;
  59:  !x = EOAT ENET Node # ;
  60:  !y = wait time ;
  61:  CALL EN_ONLN(31,5) ;
  62:   ;
  63:  !If TL LCH Pass, Return Home ;
  64:  !If TL LCH Fail, Unlatch TL, ;
  65:  !  MHFault, and Return Home ;
  66:  IF R[170]=1,JMP LBL[30] ;
  67:   ;
  68:  SELECT R[168]=6,JMP LBL[80] ;
  69:         ELSE,JMP LBL[99] ;
  70:   ;
  71:  !-------------------------------- ;
  72:  LBL[30:TOOL CHECK] ;
  73:   ;
  74:  ! Check if Tool Match with PLC ;
  75:  CALL TL_CHK_KM(R[156]) ;
  76:   ;
  77:  !If TL CHK Pass, Return Home ;
  78:  !If TL CHK Fail, Unlatch Tool, ;
  79:  !  MHFault, and Return Home ;
  80:  IF R[170]=1,JMP LBL[40] ;
  81:  IF R[170]=0,JMP LBL[905] ;
  82:   ;
  83:  !-------------------------------- ;
  84:  LBL[40:COMPLETE PATH] ;
  85:  !TL PK COMPLETE. MOVE AWAY ;
  86:  !AND RETURN HOME ;
  87:   ;
  88:  !Set New Tool and World Frame ;
  89:  UTOOL_NUM=10 ;
  90:  UFRAME_NUM=0 ;
  91:   ;
  92:  !Set Payload= Tool ;
  93:  PAYLOAD[4] ;
  94:  SET SEGMENT(53) ;
  95:  !SEG(53), Tool Pick Depart ;
  96:  WAIT DI[909:ON ]=ON    ;
  97:   ;
  98:L P[4:Tool-Pick-Dep-1] 50mm/sec FINE    ;
  99:L P[5:Tool-Pick-Dep-2] 2000mm/sec CNT50    ;
 100:   ;
 101:J P[16] 100% CNT100    ;
 102:J P[15] 100% CNT100    ;
 103:J P[14] 100% CNT100    ;
 104:J P[6] 100% CNT100    ;
 105:   ;
 106:J P[18:Tool-Pick-Clear] 50% CNT100    ;
 107:   ;
 108:  ! Move To Home ;
 109:  JMP LBL[100] ;
 110:   ;
 111:  !-------------------------------- ;
 112:  LBL[80:LATCHING FAULT] ;
 113:  !MOVE BACK TO HOME WITHOUT TOOL ;
 114:  !on Reverse Path before Tool Pick ;
 115:  PAYLOAD[1] ;
 116:   ;
 117:  UNLATCH TOOL    ;
 118:   ;
 119:L P[13] 50mm/sec FINE    ;
 120:  WAIT DI[909:ON ]=OFF    ;
 121:L P[12:Tool-Pick-Apr] 2000mm/sec CNT100    ;
 122:   ;
 123:J P[11:Tool-Pick-Apr] 100% CNT100    ;
 124:   ;
 125:J P[10] 100% CNT100    ;
 126:J P[7:Tool-Pick-Pounce] 75% CNT50    ;
 127:   ;
 128:  SET SEGMENT(63) ;
 129:  !SEG(63), Robot Move to Home ;
 130:   ;
 131:  R[132]=0    ;
 132:  GO[71:0]=0 ;
 133:   ;
 134:  ! Move To Home ;
 135:  JMP LBL[100] ;
 136:   ;
 137:  !-------------------------------- ;
 138:  LBL[99:ABORT PROGRAM] ;
 139:  MESSAGE[...] ;
 140:  MESSAGE[ABORT PROGRAM] ;
 141:  ABORT ;
 142:   ;
 143:  !-------------------------------- ;
 144:  LBL[100:END OF PROGRAM] ;
 145:  END ;
 146:   ;
 147:  !***********FAULTS*********** ;
 148:  LBL[905:Invalid Tool Num] ;
 149:  MESSAGE[...] ;
 150:  MESSAGE[TOOL CHANGER FAULT] ;
 151:  MESSAGE[ ROBOT LATCHED TO] ;
 152:  MESSAGE[ WRONG TOOL.] ;
 153:  MESSAGE[ GI[70] DOES NOT ] ;
 154:  MESSAGE[ MATCH TOOL ID ] ;
 155:  DO[523:OFF]=ON ;
 156:  UALM[3] ;
 157:  DO[523:OFF]=OFF ;
 158:  JMP LBL[80] ;
 159:   ;
/POS
P[1:"Tool-Pick-Pounce"]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  2207.383  mm,	Y = -1563.618  mm,	Z =   -12.197  mm,
	W =  -168.976 deg,	P =      .128 deg,	R =   -67.418 deg
};
P[2:"Tool-Pick-Apr"]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, -1',
	X =  1733.603  mm,	Y = -1548.387  mm,	Z = -1756.926  mm,
	W =   170.651 deg,	P =    -1.952 deg,	R =    93.345 deg
};
P[3:"Tool-Pick"]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1788.744  mm,	Y = -1523.448  mm,	Z = -2455.287  mm,
	W =   161.939 deg,	P =    -3.072 deg,	R =    89.934 deg
};
P[4:"Tool-Pick-Dep-1"]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1781.031  mm,	Y = -1524.705  mm,	Z = -2431.670  mm,
	W =   161.939 deg,	P =    -3.072 deg,	R =    89.934 deg
};
P[5:"Tool-Pick-Dep-2"]{
   GP1:
	UF : 0, UT : 10,	
	J1=   -52.352 deg,	J2=   -13.745 deg,	J3=    14.744 deg,
	J4=   -50.976 deg,	J5=   -43.865 deg,	J6=  -168.000 deg
};
P[6]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, -1',
	X =  2173.722  mm,	Y = -1206.544  mm,	Z =   243.055  mm,
	W =   156.371 deg,	P =    26.445 deg,	R =   111.837 deg
};
P[7:"Tool-Pick-Pounce"]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  2207.383  mm,	Y = -1563.618  mm,	Z =   -12.197  mm,
	W =  -168.976 deg,	P =      .128 deg,	R =   -67.418 deg
};
P[8]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1776.203  mm,	Y = -1525.490  mm,	Z = -2416.892  mm,
	W =   161.939 deg,	P =    -3.072 deg,	R =    89.934 deg
};
P[9]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1820.555  mm,	Y = -2125.244  mm,	Z =  -182.312  mm,
	W =  -139.949 deg,	P =    43.105 deg,	R =  -159.871 deg
};
P[10]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1820.555  mm,	Y = -2125.244  mm,	Z =  -182.312  mm,
	W =  -139.949 deg,	P =    43.105 deg,	R =  -159.871 deg
};
P[11:"Tool-Pick-Apr"]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, -1',
	X =  1733.603  mm,	Y = -1548.387  mm,	Z = -1756.926  mm,
	W =   170.651 deg,	P =    -1.952 deg,	R =    93.345 deg
};
P[12:"Tool-Pick-Apr"]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1728.908  mm,	Y = -1532.912  mm,	Z = -2264.773  mm,
	W =   160.214 deg,	P =    -1.297 deg,	R =    92.898 deg
};
P[13]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1774.477  mm,	Y = -1525.316  mm,	Z = -2414.514  mm,
	W =   160.258 deg,	P =    -1.849 deg,	R =    91.362 deg
};
P[14]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, -1',
	X =  1583.784  mm,	Y = -1598.328  mm,	Z =   -19.364  mm,
	W =   159.592 deg,	P =    -2.308 deg,	R =    93.440 deg
};
P[15]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1583.784  mm,	Y = -1598.329  mm,	Z = -1108.965  mm,
	W =   159.592 deg,	P =    -2.308 deg,	R =    93.440 deg
};
P[16]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1583.785  mm,	Y = -1598.329  mm,	Z = -1432.966  mm,
	W =   159.592 deg,	P =    -2.308 deg,	R =    93.440 deg
};
P[18:"Tool-Pick-Clear"]{
   GP1:
	UF : 0, UT : 10,	
	J1=   -10.267 deg,	J2=   -98.488 deg,	J3=    85.719 deg,
	J4=    -7.725 deg,	J5=   -48.538 deg,	J6=  -164.955 deg
};
/END
