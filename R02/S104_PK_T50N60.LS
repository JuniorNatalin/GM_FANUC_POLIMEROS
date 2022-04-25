/PROG  S104_PK_T50N60
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "NEW";
PROG_SIZE	= 4620;
CREATE		= DATE 22-01-22  TIME 09:17:12;
MODIFIED	= DATE 22-03-26  TIME 17:36:02;
FILE_NAME	= S104_PK_;
VERSION		= 0;
LINE_COUNT	= 158;
MEMORY_SIZE	= 5028;
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
   2:  ! PATH - PK TOOL FROM N1=STA 60 ;
   3:  !******************************** ;
   4:  !* Robot ID: XXXXXR02B1 ;
   5:  !*    F-19XXXX ;
   6:  !* Line: XXXXXXXX ;
   7:  !* Platform: XX ;
   8:  !* Tool ID: TOOL xx ;
   9:  !* Program: S001_PK_TxxN2_R02 ;
  10:  !* Application: TOOL PICK ;
  11:  !******************************** ;
  12:  ! Author- Esys Automation ;
  13:  !******************************** ;
  14:   ;
  15:  !++++++++++++++++++++++++++++++++ ;
  16:  !ASSIGN PROGRAM PATH VALUES ;
  17:  !-------------------------------- ;
  18:  !Set ATI Tool and World UFrame ;
  19:  UTOOL_NUM=14 ;
  20:  UFRAME_NUM=0 ;
  21:  !++++++++++++++++++++++++++++++++ ;
  22:   ;
  23:  !******************************** ;
  24:  !BEGINNING OF PROGRAM PATH ;
  25:  !MOVE TO NEST 1 TOOL PICK ;
  26:  !******************************** ;
  27:   ;
  28:  !-------------------------------- ;
  29:  LBL[10:MOVE TO TL PICK] ;
  30:   ;
  31:  SET SEGMENT(52) ;
  32:  !SEG(52), Approach Tool Pick ;
  33:   ;
  34:J P[12] 100% CNT100    ;
  35:J P[14] 100% CNT100    ;
  36:   ;
  37:J P[1:Tool-Pick-Pounce] 100% CNT50    ;
  38:   ;
  39:L P[2] 500mm/sec CNT1    ;
  40:   ;
  41:L P[8] 50mm/sec FINE    ;
  42:   ;
  43:  !-------------------------------- ;
  44:  LBL[20:LATCH TOOL] ;
  45:  LATCH TOOL(1) ;
  46:   ;
  47:  !Add MH Ethernet Device from ;
  48:  !I/O Ethernet table ;
  49:  !which tool has ;
  50:   ;
  51:  !ADD DEVICE ONLINE CALLS ;
  52:  !WITHOUT STATUS CHECK ARG ;
  53:  !FOR ALL EOAT DEVICES ;
  54:  !CALL EN_ONLN(x,y) ;
  55:  !x = EOAT ENET Node # ;
  56:  !y = wait time ;
  57:  CALL EN_ONLN(31,5) ;
  58:  CALL EN_AROFF(31) ;
  59:   ;
  60:  !If TL LCH Pass, Return Home ;
  61:  !If TL LCH Fail, Unlatch TL, ;
  62:  !  MHFault, and Return Home ;
  63:  IF R[170]=1,JMP LBL[30] ;
  64:   ;
  65:  SELECT R[168]=6,JMP LBL[80] ;
  66:         ELSE,JMP LBL[99] ;
  67:   ;
  68:  !-------------------------------- ;
  69:  LBL[30:TOOL CHECK] ;
  70:   ;
  71:  ! Check if Tool Match with PLC ;
  72:  CALL TL_CHK_KM(R[156]) ;
  73:   ;
  74:  !If TL CHK Pass, Return Home ;
  75:  !If TL CHK Fail, Unlatch Tool, ;
  76:  !  MHFault, and Return Home ;
  77:  IF R[170]=1,JMP LBL[40] ;
  78:  IF R[170]=0,JMP LBL[905] ;
  79:   ;
  80:  !-------------------------------- ;
  81:  LBL[40:COMPLETE PATH] ;
  82:  !TL PK COMPLETE. MOVE AWAY ;
  83:  !AND RETURN HOME ;
  84:   ;
  85:  !Set New Tool and World Frame ;
  86:  UTOOL_NUM=2 ;
  87:  UFRAME_NUM=0 ;
  88:   ;
  89:  !Set Payload= Tool ;
  90:  R[221]=2    ;
  91:  PAYLOAD[R[221]] ;
  92:   ;
  93:  SET SEGMENT(53) ;
  94:  !SEG(53), Tool Pick Depart ;
  95:   ;
  96:L P[4] 50mm/sec FINE    ;
  97:L P[16] 50mm/sec FINE    ;
  98:L P[5] 500mm/sec CNT50    ;
  99:   ;
 100:J P[6] 100% CNT10    ;
 101:J P[15] 100% CNT100    ;
 102:J P[11] 100% CNT100    ;
 103:   ;
 104:  ! Move To Home ;
 105:  JMP LBL[100] ;
 106:   ;
 107:  !-------------------------------- ;
 108:  LBL[80:LATCHING FAULT] ;
 109:  !MOVE BACK TO HOME WITHOUT TOOL ;
 110:  !on Reverse Path before Tool Pick ;
 111:   ;
 112:  UNLATCH TOOL    ;
 113:   ;
 114:  UFRAME_NUM=0 ;
 115:  UTOOL_NUM=14 ;
 116:   ;
 117:L P[7:PICK_T01_R1_N2] 50mm/sec FINE    ;
 118:L P[3] 50mm/sec FINE    ;
 119:L P[13] 100mm/sec FINE    ;
 120:J P[9] 100% CNT10    ;
 121:J P[10] 100% CNT10    ;
 122:   ;
 123:   ;
 124:J P[14] 100% CNT100    ;
 125:J P[12] 100% CNT100    ;
 126:   ;
 127:  SET SEGMENT(63) ;
 128:  !SEG(63), Robot Move to Home ;
 129:   ;
 130:  R[132]=0    ;
 131:  GO[71]=0 ;
 132:   ;
 133:  ! Move To Home ;
 134:  JMP LBL[100] ;
 135:   ;
 136:  !-------------------------------- ;
 137:  LBL[99:ABORT PROGRAM] ;
 138:  MESSAGE[...] ;
 139:  MESSAGE[ABORT PROGRAM] ;
 140:  ABORT ;
 141:   ;
 142:  !-------------------------------- ;
 143:  LBL[100:END OF PROGRAM] ;
 144:  END ;
 145:   ;
 146:  !***********FAULTS*********** ;
 147:  LBL[905:Invalid Tool Num] ;
 148:  MESSAGE[...] ;
 149:  MESSAGE[TOOL CHANGER FAULT] ;
 150:  MESSAGE[ ROBOT LATCHED TO] ;
 151:  MESSAGE[ WRONG TOOL.] ;
 152:  MESSAGE[ GI[70] DOES NOT ] ;
 153:  MESSAGE[ MATCH TOOL ID ] ;
 154:  DO[523]=ON ;
 155:  UALM[3] ;
 156:  DO[523]=OFF ;
 157:  JMP LBL[80] ;
 158:   ;
/POS
P[1:"Tool-Pick-Pounce"]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -1918.402  mm,	Y =  -433.213  mm,	Z =   595.368  mm,
	W =  -160.260 deg,	P =      .176 deg,	R =    89.839 deg
};
P[2]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2022.623  mm,	Y =  -409.138  mm,	Z =   190.834  mm,
	W =  -160.179 deg,	P =      .814 deg,	R =    90.462 deg
};
P[3]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2029.077  mm,	Y =  -427.194  mm,	Z =   273.374  mm,
	W =  -160.260 deg,	P =      .175 deg,	R =    89.839 deg
};
P[4]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1744.009  mm,	Y =  -271.911  mm,	Z =    48.171  mm,
	W =  -161.967 deg,	P =      .791 deg,	R =    88.949 deg
};
P[5]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1686.301  mm,	Y =  -262.183  mm,	Z =   343.991  mm,
	W =  -161.934 deg,	P =      .817 deg,	R =    89.075 deg
};
P[6]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1729.758  mm,	Y =  -261.279  mm,	Z =   358.168  mm,
	W =  -161.934 deg,	P =      .817 deg,	R =    89.075 deg
};
P[7:"PICK_T01_R1_N2"]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2029.427  mm,	Y =  -410.804  mm,	Z =   182.800  mm,
	W =  -160.462 deg,	P =      .421 deg,	R =    90.308 deg
};
P[8]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2035.728  mm,	Y =  -409.641  mm,	Z =   155.476  mm,
	W =  -160.467 deg,	P =      .427 deg,	R =    90.320 deg
};
P[9]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -1966.089  mm,	Y =  -432.092  mm,	Z =   553.001  mm,
	W =  -160.255 deg,	P =      .175 deg,	R =    89.840 deg
};
P[10]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -1927.048  mm,	Y =  -431.867  mm,	Z =   661.767  mm,
	W =  -160.255 deg,	P =      .175 deg,	R =    89.840 deg
};
P[11]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U B, 0, 0, 0',
	X =  -253.308  mm,	Y =    88.384  mm,	Z =  2426.871  mm,
	W =   -93.331 deg,	P =     1.054 deg,	R =   122.429 deg
};
P[12]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U B, 0, 0, 0',
	X =  -158.400  mm,	Y =   -15.894  mm,	Z =  2741.103  mm,
	W =   -91.792 deg,	P =     -.357 deg,	R =   122.600 deg
};
P[13]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -1936.692  mm,	Y =  -433.488  mm,	Z =   541.079  mm,
	W =  -160.255 deg,	P =      .174 deg,	R =    89.839 deg
};
P[14]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -1439.556  mm,	Y =  -314.972  mm,	Z =  1332.434  mm,
	W =  -145.086 deg,	P =      .394 deg,	R =    89.246 deg
};
P[15]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1645.407  mm,	Y =  -258.951  mm,	Z =   616.577  mm,
	W =  -161.934 deg,	P =      .817 deg,	R =    89.075 deg
};
P[16]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1760.435  mm,	Y =  -271.256  mm,	Z =    73.660  mm,
	W =  -161.967 deg,	P =      .791 deg,	R =    88.949 deg
};
/END
