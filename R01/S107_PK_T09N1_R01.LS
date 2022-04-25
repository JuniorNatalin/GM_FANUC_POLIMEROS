/PROG  S107_PK_T09N1_R01
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "336 PCK TYP1 NST";
PROG_SIZE	= 4767;
CREATE		= DATE 18-06-15  TIME 14:18:14;
MODIFIED	= DATE 19-08-05  TIME 11:31:08;
FILE_NAME	= S107_PK_;
VERSION		= 0;
LINE_COUNT	= 160;
MEMORY_SIZE	= 5287;
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
  43:L P[17] 2000mm/sec CNT50    ;
  44:L P[4] 150mm/sec FINE    ;
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
  94:  PAYLOAD[8] ;
  95:  SET SEGMENT(53) ;
  96:  !SEG(53), Tool Pick Depart ;
  97:  WAIT DI[909:ON ]=ON    ;
  98:   ;
  99:L P[8] 50mm/sec FINE    ;
 100:L P[17] 2000mm/sec CNT50    ;
 101:   ;
 102:J P[16] 100% CNT100    ;
 103:J P[15] 100% CNT100    ;
 104:J P[14] 100% CNT100    ;
 105:J P[6] 100% CNT100    ;
 106:   ;
 107:J P[18:Tool-Pick-Clear] 50% CNT100    ;
 108:   ;
 109:  ! Move To Home ;
 110:  JMP LBL[100] ;
 111:   ;
 112:  !-------------------------------- ;
 113:  LBL[80:LATCHING FAULT] ;
 114:  !MOVE BACK TO HOME WITHOUT TOOL ;
 115:  !on Reverse Path before Tool Pick ;
 116:  PAYLOAD[1] ;
 117:   ;
 118:  UNLATCH TOOL    ;
 119:   ;
 120:L P[13] 50mm/sec FINE    ;
 121:  WAIT DI[909:ON ]=OFF    ;
 122:L P[12:Tool-Pick-Apr] 2000mm/sec CNT100    ;
 123:   ;
 124:J P[11:Tool-Pick-Apr] 100% CNT100    ;
 125:   ;
 126:J P[10] 100% CNT100    ;
 127:J P[7:Tool-Pick-Pounce] 75% CNT50    ;
 128:   ;
 129:  SET SEGMENT(63) ;
 130:  !SEG(63), Robot Move to Home ;
 131:   ;
 132:  R[132]=0    ;
 133:  GO[71:0]=0 ;
 134:   ;
 135:  ! Move To Home ;
 136:  JMP LBL[100] ;
 137:   ;
 138:  !-------------------------------- ;
 139:  LBL[99:ABORT PROGRAM] ;
 140:  MESSAGE[...] ;
 141:  MESSAGE[ABORT PROGRAM] ;
 142:  ABORT ;
 143:   ;
 144:  !-------------------------------- ;
 145:  LBL[100:END OF PROGRAM] ;
 146:  END ;
 147:   ;
 148:  !***********FAULTS*********** ;
 149:  LBL[905:Invalid Tool Num] ;
 150:  MESSAGE[...] ;
 151:  MESSAGE[TOOL CHANGER FAULT] ;
 152:  MESSAGE[ ROBOT LATCHED TO] ;
 153:  MESSAGE[ WRONG TOOL.] ;
 154:  MESSAGE[ GI[70] DOES NOT ] ;
 155:  MESSAGE[ MATCH TOOL ID ] ;
 156:  DO[523:OFF]=ON ;
 157:  UALM[3] ;
 158:  DO[523:OFF]=OFF ;
 159:  JMP LBL[80] ;
 160:   ;
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
	X =  1754.720  mm,	Y = -1528.557  mm,	Z = -2462.253  mm,
	W =   161.000 deg,	P =    -3.308 deg,	R =    88.551 deg
};
P[4]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1747.071  mm,	Y = -1526.461  mm,	Z = -2429.779  mm,
	W =   161.000 deg,	P =    -3.309 deg,	R =    88.551 deg
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
	X =  1746.068  mm,	Y = -1529.782  mm,	Z = -2437.266  mm,
	W =   161.000 deg,	P =    -3.308 deg,	R =    88.551 deg
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
	X =  1577.383  mm,	Y = -1545.659  mm,	Z = -1990.113  mm,
	W =   160.360 deg,	P =    -2.049 deg,	R =    91.431 deg
};
P[13]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1735.709  mm,	Y = -1525.792  mm,	Z = -2434.739  mm,
	W =   160.360 deg,	P =    -2.048 deg,	R =    91.431 deg
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
P[17]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1507.211  mm,	Y = -1563.626  mm,	Z = -1747.433  mm,
	W =   161.000 deg,	P =    -3.308 deg,	R =    88.551 deg
};
P[18:"Tool-Pick-Clear"]{
   GP1:
	UF : 0, UT : 10,	
	J1=   -10.267 deg,	J2=   -98.488 deg,	J3=    85.719 deg,
	J4=    -7.725 deg,	J5=   -48.538 deg,	J6=  -164.955 deg
};
/END
