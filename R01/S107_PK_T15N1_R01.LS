/PROG  S107_PK_T15N1_R01
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "311 PCK TYP1 NST";
PROG_SIZE	= 4850;
CREATE		= DATE 19-01-11  TIME 09:00:18;
MODIFIED	= DATE 19-01-11  TIME 09:00:18;
FILE_NAME	= S107_PK_;
VERSION		= 0;
LINE_COUNT	= 162;
MEMORY_SIZE	= 5362;
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
  43:L P[8] 300mm/sec FINE    ;
  44:   ;
  45:L P[3:Tool-Pick] 50mm/sec FINE    ;
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
  99:L P[4:Tool-Pick-Dep-1] 50mm/sec FINE    ;
 100:   ;
 101:L P[5:Tool-Pick-Dep-2] 1500mm/sec CNT50    ;
 102:   ;
 103:J P[17] 100% CNT100    ;
 104:J P[16] 100% CNT100    ;
 105:J P[15] 100% CNT100    ;
 106:J P[14] 100% CNT100    ;
 107:J P[6] 100% CNT100    ;
 108:   ;
 109:J P[18:Tool-Pick-Clear] 50% CNT100    ;
 110:   ;
 111:  ! Move To Home ;
 112:  JMP LBL[100] ;
 113:   ;
 114:  !-------------------------------- ;
 115:  LBL[80:LATCHING FAULT] ;
 116:  !MOVE BACK TO HOME WITHOUT TOOL ;
 117:  !on Reverse Path before Tool Pick ;
 118:  PAYLOAD[1] ;
 119:   ;
 120:  UNLATCH TOOL    ;
 121:   ;
 122:L P[13] 50mm/sec FINE    ;
 123:  WAIT DI[909:ON ]=OFF    ;
 124:L P[12:Tool-Pick-Apr] 2000mm/sec CNT100    ;
 125:   ;
 126:J P[11:Tool-Pick-Apr] 100% CNT100    ;
 127:   ;
 128:J P[10] 100% CNT100    ;
 129:J P[7:Tool-Pick-Pounce] 75% CNT50    ;
 130:   ;
 131:  SET SEGMENT(63) ;
 132:  !SEG(63), Robot Move to Home ;
 133:   ;
 134:  R[132]=0    ;
 135:  GO[71:0]=0 ;
 136:   ;
 137:  ! Move To Home ;
 138:  JMP LBL[100] ;
 139:   ;
 140:  !-------------------------------- ;
 141:  LBL[99:ABORT PROGRAM] ;
 142:  MESSAGE[...] ;
 143:  MESSAGE[ABORT PROGRAM] ;
 144:  ABORT ;
 145:   ;
 146:  !-------------------------------- ;
 147:  LBL[100:END OF PROGRAM] ;
 148:  END ;
 149:   ;
 150:  !***********FAULTS*********** ;
 151:  LBL[905:Invalid Tool Num] ;
 152:  MESSAGE[...] ;
 153:  MESSAGE[TOOL CHANGER FAULT] ;
 154:  MESSAGE[ ROBOT LATCHED TO] ;
 155:  MESSAGE[ WRONG TOOL.] ;
 156:  MESSAGE[ GI[70] DOES NOT ] ;
 157:  MESSAGE[ MATCH TOOL ID ] ;
 158:  DO[523:OFF]=ON ;
 159:  UALM[3] ;
 160:  DO[523:OFF]=OFF ;
 161:  JMP LBL[80] ;
 162:   ;
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
P[3:"Tool-Pick"]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1713.460  mm,	Y = -1550.793  mm,	Z = -2490.220  mm,
	W =   159.499 deg,	P =    -1.853 deg,	R =    90.694 deg
};
P[4:"Tool-Pick-Dep-1"]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1713.460  mm,	Y = -1550.793  mm,	Z = -2490.220  mm,
	W =   159.499 deg,	P =    -1.853 deg,	R =    90.694 deg
};
P[5:"Tool-Pick-Dep-2"]{
   GP1:
	UF : 0, UT : 10,	
	J1=   -51.907 deg,	J2=     5.760 deg,	J3=    14.313 deg,
	J4=   -52.769 deg,	J5=   -43.436 deg,	J6=  -163.212 deg
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
	X =  1713.459  mm,	Y = -1550.792  mm,	Z = -2441.742  mm,
	W =   159.499 deg,	P =    -1.853 deg,	R =    90.694 deg
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
	X =  1642.471  mm,	Y = -1610.956  mm,	Z = -2273.022  mm,
	W =   159.498 deg,	P =    -1.853 deg,	R =    92.531 deg
};
P[13]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1707.350  mm,	Y = -1602.446  mm,	Z = -2447.280  mm,
	W =   159.498 deg,	P =    -1.852 deg,	R =    92.531 deg
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
	X =  1287.531  mm,	Y = -1604.135  mm,	Z = -1322.623  mm,
	W =   159.498 deg,	P =    -1.853 deg,	R =    92.531 deg
};
P[17]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1515.067  mm,	Y = -1574.286  mm,	Z = -1933.755  mm,
	W =   159.498 deg,	P =    -1.853 deg,	R =    92.531 deg
};
P[18:"Tool-Pick-Clear"]{
   GP1:
	UF : 0, UT : 10,	
	J1=   -10.267 deg,	J2=   -98.488 deg,	J3=    85.719 deg,
	J4=    -7.725 deg,	J5=   -48.538 deg,	J6=  -164.955 deg
};
/END
