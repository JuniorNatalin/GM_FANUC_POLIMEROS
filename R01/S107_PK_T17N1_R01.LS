/PROG  S107_PK_T17N1_R01
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "142 PCK TYP1 NST";
PROG_SIZE	= 4763;
CREATE		= DATE 18-10-20  TIME 10:56:04;
MODIFIED	= DATE 19-03-08  TIME 08:19:22;
FILE_NAME	= S107_PK_;
VERSION		= 0;
LINE_COUNT	= 159;
MEMORY_SIZE	= 5159;
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
  11:  !* Tool Number: 335 ;
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
  43:L P[11] 300mm/sec FINE    ;
  44:   ;
  45:L P[8:Tool-Pick] 50mm/sec FINE    ;
  46:   ;
  47:  !-------------------------------- ;
  48:  LBL[20:LATCH TOOL] ;
  49:   ;
  50:  LATCH TOOL    ;
  51:   ;
  52:  !Add MH Ethernet Device from ;
  53:  !I/O Ethernet table ;
  54:  !which tool has ;
  55:   ;
  56:  !ADD DEVICE ONLINE CALLS ;
  57:  !WITHOUT STATUS CHECK ARG ;
  58:  !FOR ALL EOAT DEVICES ;
  59:  !CALL EN_ONLN(x,y) ;
  60:  !x = EOAT ENET Node # ;
  61:  !y = wait time ;
  62:  CALL EN_ONLN(31,5) ;
  63:   ;
  64:  !If TL LCH Pass, Return Home ;
  65:  !If TL LCH Fail, Unlatch TL, ;
  66:  !  MHFault, and Return Home ;
  67:  IF R[170]=1,JMP LBL[30] ;
  68:   ;
  69:  SELECT R[168]=6,JMP LBL[80] ;
  70:         ELSE,JMP LBL[99] ;
  71:   ;
  72:  !-------------------------------- ;
  73:  LBL[30:TOOL CHECK] ;
  74:   ;
  75:  ! Check if Tool Match with PLC ;
  76:  CALL TL_CHK_KM(R[156]) ;
  77:   ;
  78:  !If TL CHK Pass, Return Home ;
  79:  !If TL CHK Fail, Unlatch Tool, ;
  80:  !  MHFault, and Return Home ;
  81:  IF R[170]=1,JMP LBL[40] ;
  82:  IF R[170]=0,JMP LBL[905] ;
  83:   ;
  84:  !-------------------------------- ;
  85:  LBL[40:COMPLETE PATH] ;
  86:  !TL PK COMPLETE. MOVE AWAY ;
  87:  !AND RETURN HOME ;
  88:   ;
  89:  !Set New Tool and World Frame ;
  90:  UTOOL_NUM=10 ;
  91:  UFRAME_NUM=0 ;
  92:   ;
  93:  !Set Payload= Tool ;
  94:  PAYLOAD[6] ;
  95:  SET SEGMENT(53) ;
  96:  !SEG(53), Tool Pick Depart ;
  97:  WAIT DI[909:ON ]=ON    ;
  98:   ;
  99:L P[4:Tool-Pick-Dep-1] 400mm/sec CNT5    ;
 100:L P[3:Tool-Pick-Dep-2] 2000mm/sec CNT50    ;
 101:   ;
 102:J P[17] 100% CNT100    ;
 103:J P[16] 100% CNT100    ;
 104:J P[15] 100% CNT100    ;
 105:J P[14] 100% CNT100    ;
 106:J P[6] 100% CNT100    ;
 107:   ;
 108:J P[18:Tool-Pick-Clear] 50% CNT100    ;
 109:   ;
 110:  ! Move To Home ;
 111:  JMP LBL[100] ;
 112:   ;
 113:  !-------------------------------- ;
 114:  LBL[80:LATCHING FAULT] ;
 115:  !MOVE BACK TO HOME WITHOUT TOOL ;
 116:  !on Reverse Path before Tool Pick ;
 117:  PAYLOAD[1] ;
 118:   ;
 119:  UNLATCH TOOL    ;
 120:   ;
 121:L P[13] 50mm/sec FINE    ;
 122:  WAIT DI[909:ON ]=OFF    ;
 123:L P[12:Tool-Pick-Apr] 2000mm/sec CNT100    ;
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
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1454.575  mm,	Y = -1582.038  mm,	Z = -1776.770  mm,
	W =   159.498 deg,	P =    -1.853 deg,	R =    92.531 deg
};
P[3:"Tool-Pick-Dep-2"]{
   GP1:
	UF : 0, UT : 10,	
	J1=   -53.884 deg,	J2=   -17.737 deg,	J3=    14.760 deg,
	J4=   -49.170 deg,	J5=   -44.091 deg,	J6=  -166.994 deg
};
P[4:"Tool-Pick-Dep-1"]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1741.026  mm,	Y = -1544.404  mm,	Z = -2435.034  mm,
	W =   161.732 deg,	P =    -2.721 deg,	R =    91.019 deg
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
P[8:"Tool-Pick"]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1745.535  mm,	Y = -1543.126  mm,	Z = -2460.209  mm,
	W =   161.732 deg,	P =    -2.720 deg,	R =    91.018 deg
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
P[11]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1733.605  mm,	Y = -1545.061  mm,	Z = -2424.018  mm,
	W =   161.732 deg,	P =    -2.721 deg,	R =    91.019 deg
};
P[12:"Tool-Pick-Apr"]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1454.575  mm,	Y = -1582.038  mm,	Z = -1776.770  mm,
	W =   159.498 deg,	P =    -1.853 deg,	R =    92.531 deg
};
P[13]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1727.774  mm,	Y = -1548.911  mm,	Z = -2416.035  mm,
	W =   159.499 deg,	P =    -1.855 deg,	R =    92.533 deg
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
	X =  1101.822  mm,	Y = -1628.498  mm,	Z =  -823.832  mm,
	W =   159.498 deg,	P =    -1.853 deg,	R =    92.531 deg
};
P[16]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1374.895  mm,	Y = -1594.985  mm,	Z = -1485.944  mm,
	W =   159.498 deg,	P =    -1.853 deg,	R =    92.531 deg
};
P[17]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1538.380  mm,	Y = -1573.538  mm,	Z = -1925.038  mm,
	W =   159.498 deg,	P =    -1.853 deg,	R =    92.531 deg
};
P[18:"Tool-Pick-Clear"]{
   GP1:
	UF : 0, UT : 10,	
	J1=   -10.267 deg,	J2=   -98.488 deg,	J3=    85.719 deg,
	J4=    -7.725 deg,	J5=   -48.538 deg,	J6=  -164.955 deg
};
/END
