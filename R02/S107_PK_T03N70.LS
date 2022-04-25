/PROG  S107_PK_T03N70
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "TL PCK TYP1 N70";
PROG_SIZE	= 4259;
CREATE		= DATE 18-11-18  TIME 08:40:18;
MODIFIED	= DATE 19-03-01  TIME 21:45:50;
FILE_NAME	= S107_PK_;
VERSION		= 0;
LINE_COUNT	= 155;
MEMORY_SIZE	= 4679;
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
   2:  ! PATH - PK TOOL FROM N3=STA 70 ;
   3:  !******************************** ;
   4:  !* Robot ID: XXXXXR02B1 ;
   5:  !*    F-19XXXX ;
   6:  !* Line: XXXXXXXX ;
   7:  !* Platform: XX ;
   8:  !* Tool ID: TOOL xx ;
   9:  !* Program: S002_PK_TxxN3_R02 ;
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
  25:  !MOVE TO NEST 3 TOOL PICK ;
  26:  !******************************** ;
  27:   ;
  28:  !-------------------------------- ;
  29:  LBL[10:MOVE TO TL PICK] ;
  30:   ;
  31:  SET SEGMENT(52) ;
  32:  !SEG(52), Approach Tool Pick ;
  33:   ;
  34:J P[1] 100% CNT100    ;
  35:   ;
  36:J P[2:Tool-Pick-Pounce] 100% CNT100    ;
  37:   ;
  38:L P[3] 3000mm/sec CNT100    ;
  39:L P[4] 1000mm/sec CNT1    ;
  40:   ;
  41:L P[5:PICK_T03_N70] 50mm/sec FINE    ;
  42:   ;
  43:  LBL[20:LATCH TOOL] ;
  44:  LATCH TOOL    ;
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
  96:   ;
  97:L P[7:Tool-Pick-Pounce] 3000mm/sec CNT100    ;
  98:   ;
  99:J P[8] 100% CNT100    ;
 100:   ;
 101:J P[9] 100% CNT100    ;
 102:   ;
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
 117:L P[5:PICK_T03_N70] 50mm/sec FINE    ;
 118:L P[4] 500mm/sec FINE    ;
 119:L P[3] 2000mm/sec CNT100    ;
 120:L P[2:Tool-Pick-Pounce] 750mm/sec CNT100    ;
 121:   ;
 122:J P[1] 100% CNT100    ;
 123:   ;
 124:  SET SEGMENT(63) ;
 125:  !SEG(63), Robot Move to Home ;
 126:   ;
 127:  R[132]=0    ;
 128:  GO[71]=0 ;
 129:   ;
 130:  ! Move To Home ;
 131:  JMP LBL[100] ;
 132:   ;
 133:  !-------------------------------- ;
 134:  LBL[99:ABORT PROGRAM] ;
 135:  MESSAGE[...] ;
 136:  MESSAGE[ABORT PROGRAM] ;
 137:  ABORT ;
 138:   ;
 139:  !-------------------------------- ;
 140:  LBL[100:END OF PROGRAM] ;
 141:  END ;
 142:   ;
 143:  !***********FAULTS*********** ;
 144:  LBL[905:Invalid Tool Num] ;
 145:  MESSAGE[...] ;
 146:  MESSAGE[TOOL CHANGER FAULT] ;
 147:  MESSAGE[ ROBOT LATCHED TO] ;
 148:  MESSAGE[ WRONG TOOL.] ;
 149:  MESSAGE[ GI[70] DOES NOT ] ;
 150:  MESSAGE[ MATCH TOOL ID ] ;
 151:  DO[523]=ON ;
 152:  UALM[3] ;
 153:  DO[523]=OFF ;
 154:  JMP LBL[80] ;
 155:   ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2157.965  mm,	Y =  1020.774  mm,	Z =  1799.157  mm,
	W =  -148.691 deg,	P =     -.556 deg,	R =    64.095 deg
};
P[2:"Tool-Pick-Pounce"]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2111.923  mm,	Y =   767.756  mm,	Z =   882.861  mm,
	W =  -159.036 deg,	P =      .889 deg,	R =    89.578 deg
};
P[3]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2279.807  mm,	Y =   563.307  mm,	Z =   463.538  mm,
	W =  -160.146 deg,	P =     -.464 deg,	R =    91.296 deg
};
P[4]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2353.756  mm,	Y =   565.789  mm,	Z =   257.869  mm,
	W =  -160.153 deg,	P =     -.464 deg,	R =    91.287 deg
};
P[5:"PICK_T03_N70"]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2362.384  mm,	Y =   567.783  mm,	Z =   233.121  mm,
	W =  -160.165 deg,	P =     -.463 deg,	R =    91.280 deg
};
P[6]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2059.909  mm,	Y =   712.077  mm,	Z =   160.941  mm,
	W =  -161.696 deg,	P =     -.102 deg,	R =    89.904 deg
};
P[7:"Tool-Pick-Pounce"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1997.873  mm,	Y =   707.244  mm,	Z =   350.349  mm,
	W =  -161.677 deg,	P =     -.103 deg,	R =    89.920 deg
};
P[8]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1797.455  mm,	Y =   901.543  mm,	Z =   882.258  mm,
	W =  -160.599 deg,	P =     1.278 deg,	R =    88.209 deg
};
P[9]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1871.537  mm,	Y =  1036.048  mm,	Z =  1608.502  mm,
	W =  -150.223 deg,	P =      .071 deg,	R =    62.819 deg
};
/END
