/PROG  S104_PK_T13N60
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "TL PCK TYP1 N60";
PROG_SIZE	= 4358;
CREATE		= DATE 21-06-09  TIME 06:37:28;
MODIFIED	= DATE 21-06-09  TIME 12:43:34;
FILE_NAME	= S104_PK_;
VERSION		= 0;
LINE_COUNT	= 152;
MEMORY_SIZE	= 4790;
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
  34:J P[1] 100% CNT100    ;
  35:J P[2] 100% CNT100    ;
  36:J P[3] 100% CNT50    ;
  37:   ;
  38:L P[4] 200mm/sec FINE    ;
  39:   ;
  40:L P[5:Pick Tool] 50mm/sec FINE    ;
  41:   ;
  42:  !-------------------------------- ;
  43:  LBL[20:LATCH TOOL] ;
  44:  LATCH TOOL(1) ;
  45:   ;
  46:  !Add MH Ethernet Device from ;
  47:  !I/O Ethernet table ;
  48:  !which tool has ;
  49:   ;
  50:  !ADD DEVICE ONLINE CALLS ;
  51:  !WITHOUT STATUS CHECK ARG ;
  52:  !FOR ALL EOAT DEVICES ;
  53:  !CALL EN_ONLN(x,y) ;
  54:  !x = EOAT ENET Node # ;
  55:  !y = wait time ;
  56:  CALL EN_ONLN(31,5) ;
  57:  CALL EN_AROFF(31) ;
  58:   ;
  59:  !If TL LCH Pass, Return Home ;
  60:  !If TL LCH Fail, Unlatch TL, ;
  61:  !  MHFault, and Return Home ;
  62:  IF R[170]=1,JMP LBL[30] ;
  63:   ;
  64:  SELECT R[168]=6,JMP LBL[80] ;
  65:         ELSE,JMP LBL[99] ;
  66:   ;
  67:  !-------------------------------- ;
  68:  LBL[30:TOOL CHECK] ;
  69:   ;
  70:  ! Check if Tool Match with PLC ;
  71:  CALL TL_CHK_KM(R[156]) ;
  72:   ;
  73:  !If TL CHK Pass, Return Home ;
  74:  !If TL CHK Fail, Unlatch Tool, ;
  75:  !  MHFault, and Return Home ;
  76:  IF R[170]=1,JMP LBL[40] ;
  77:  IF R[170]=0,JMP LBL[905] ;
  78:   ;
  79:  !-------------------------------- ;
  80:  LBL[40:COMPLETE PATH] ;
  81:  !TL PK COMPLETE. MOVE AWAY ;
  82:  !AND RETURN HOME ;
  83:   ;
  84:  !Set New Tool and World Frame ;
  85:  UTOOL_NUM=2 ;
  86:  UFRAME_NUM=0 ;
  87:   ;
  88:  !Set Payload= Tool ;
  89:  R[221]=2    ;
  90:  PAYLOAD[R[221]] ;
  91:   ;
  92:  SET SEGMENT(53) ;
  93:  !SEG(53), Tool Pick Depart ;
  94:   ;
  95:L P[6] 50mm/sec FINE    ;
  96:L P[7] 1000mm/sec CNT50    ;
  97:   ;
  98:J P[8] 100% CNT100    ;
  99:J P[9] 100% CNT100    ;
 100:   ;
 101:  ! Move To Home ;
 102:  JMP LBL[100] ;
 103:   ;
 104:  !-------------------------------- ;
 105:  LBL[80:LATCHING FAULT] ;
 106:  !MOVE BACK TO HOME WITHOUT TOOL ;
 107:  !on Reverse Path before Tool Pick ;
 108:   ;
 109:  UNLATCH TOOL    ;
 110:   ;
 111:  UFRAME_NUM=0 ;
 112:  UTOOL_NUM=14 ;
 113:   ;
 114:L P[10] 50mm/sec FINE    ;
 115:L P[11] 100mm/sec FINE    ;
 116:L P[12] 500mm/sec CNT50    ;
 117:   ;
 118:J P[2] 100% CNT100    ;
 119:J P[1] 100% CNT100    ;
 120:   ;
 121:  SET SEGMENT(63) ;
 122:  !SEG(63), Robot Move to Home ;
 123:   ;
 124:  R[132]=0    ;
 125:  GO[71]=0 ;
 126:   ;
 127:  ! Move To Home ;
 128:  JMP LBL[100] ;
 129:   ;
 130:  !-------------------------------- ;
 131:  LBL[99:ABORT PROGRAM] ;
 132:  MESSAGE[...] ;
 133:  MESSAGE[ABORT PROGRAM] ;
 134:  ABORT ;
 135:   ;
 136:  !-------------------------------- ;
 137:  LBL[100:END OF PROGRAM] ;
 138:  END ;
 139:   ;
 140:  !***********FAULTS*********** ;
 141:  LBL[905:Invalid Tool Num] ;
 142:  MESSAGE[...] ;
 143:  MESSAGE[TOOL CHANGER FAULT] ;
 144:  MESSAGE[ ROBOT LATCHED TO] ;
 145:  MESSAGE[ WRONG TOOL.] ;
 146:  MESSAGE[ GI[70] DOES NOT ] ;
 147:  MESSAGE[ MATCH TOOL ID ] ;
 148:  DO[523]=ON ;
 149:  UALM[3] ;
 150:  DO[523]=OFF ;
 151:  JMP LBL[80] ;
 152:   ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U B, 0, 0, 0',
	X =  -158.400  mm,	Y =   -15.894  mm,	Z =  2741.103  mm,
	W =   -91.792 deg,	P =     -.357 deg,	R =   122.600 deg
};
P[2]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -1439.556  mm,	Y =  -314.972  mm,	Z =  1332.434  mm,
	W =  -145.086 deg,	P =      .394 deg,	R =    89.246 deg
};
P[3:""]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -1899.335  mm,	Y =  -407.445  mm,	Z =   561.055  mm,
	W =  -160.305 deg,	P =      .657 deg,	R =    92.318 deg
};
P[4]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -1982.930  mm,	Y =  -416.349  mm,	Z =   268.525  mm,
	W =  -160.368 deg,	P =      .624 deg,	R =    91.648 deg
};
P[5:"Pick Tool"]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -1996.791  mm,	Y =  -417.172  mm,	Z =   229.624  mm,
	W =  -160.368 deg,	P =      .624 deg,	R =    91.648 deg
};
P[6]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1706.332  mm,	Y =  -272.793  mm,	Z =   131.295  mm,
	W =  -161.923 deg,	P =      .982 deg,	R =    90.270 deg
};
P[7]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1633.632  mm,	Y =  -271.131  mm,	Z =   361.478  mm,
	W =  -161.879 deg,	P =      .537 deg,	R =    90.267 deg
};
P[8]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1219.646  mm,	Y =  -179.974  mm,	Z =  1103.529  mm,
	W =  -148.505 deg,	P =      .883 deg,	R =    88.455 deg
};
P[9]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U B, 0, 0, 0',
	X =  -253.308  mm,	Y =    88.384  mm,	Z =  2426.871  mm,
	W =   -93.331 deg,	P =     1.054 deg,	R =   122.429 deg
};
P[10:""]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2001.285  mm,	Y =  -417.250  mm,	Z =   226.104  mm,
	W =  -160.366 deg,	P =      .625 deg,	R =    91.647 deg
};
P[11:""]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -1987.017  mm,	Y =  -417.017  mm,	Z =   270.839  mm,
	W =  -160.361 deg,	P =      .552 deg,	R =    91.647 deg
};
P[12]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -1914.150  mm,	Y =  -415.825  mm,	Z =   499.308  mm,
	W =  -160.333 deg,	P =      .180 deg,	R =    91.645 deg
};
/END
