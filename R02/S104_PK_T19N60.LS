/PROG  S104_PK_T19N60
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "TL PCK TYP1 N60";
PROG_SIZE	= 4316;
CREATE		= DATE 21-06-10  TIME 14:44:14;
MODIFIED	= DATE 21-06-10  TIME 15:46:04;
FILE_NAME	= S104_PK_;
VERSION		= 0;
LINE_COUNT	= 155;
MEMORY_SIZE	= 4736;
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
  36:   ;
  37:J P[3:Tool-Pick-Pounce] 100% CNT50    ;
  38:   ;
  39:L P[10] 500mm/sec CNT1    ;
  40:   ;
  41:L P[5:PICK_T03_R1_N2] 50mm/sec FINE    ;
  42:   ;
  43:  !-------------------------------- ;
  44:  LBL[20:LATCH TOOL] ;
  45:  LATCH TOOL    ;
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
  96:L P[6] 50mm/sec FINE    ;
  97:   ;
  98:L P[7] 2000mm/sec CNT50    ;
  99:   ;
 100:J P[8] 100% CNT100    ;
 101:J P[9] 100% CNT100    ;
 102:   ;
 103:  ! Move To Home ;
 104:  JMP LBL[100] ;
 105:   ;
 106:  !-------------------------------- ;
 107:  LBL[80:LATCHING FAULT] ;
 108:  !MOVE BACK TO HOME WITHOUT TOOL ;
 109:  !on Reverse Path before Tool Pick ;
 110:   ;
 111:  UNLATCH TOOL    ;
 112:   ;
 113:  UFRAME_NUM=0 ;
 114:  UTOOL_NUM=14 ;
 115:   ;
 116:L P[5:PICK_T03_R1_N2] 50mm/sec FINE    ;
 117:L P[4] 50mm/sec FINE    ;
 118:   ;
 119:L P[3:Tool-Pick-Pounce] 750mm/sec CNT50    ;
 120:   ;
 121:J P[2] 100% CNT100    ;
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
P[3:"Tool-Pick-Pounce"]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -1782.875  mm,	Y =  -503.096  mm,	Z =   761.537  mm,
	W =  -160.144 deg,	P =      .457 deg,	R =    91.384 deg
};
P[4]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2008.926  mm,	Y =  -396.245  mm,	Z =   266.279  mm,
	W =  -160.145 deg,	P =     -.034 deg,	R =    91.206 deg
};
P[5:"PICK_T03_R1_N2"]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2012.890  mm,	Y =  -428.960  mm,	Z =   223.649  mm,
	W =  -160.139 deg,	P =      .053 deg,	R =    92.502 deg
};
P[6]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1724.257  mm,	Y =  -270.450  mm,	Z =   141.361  mm,
	W =  -161.551 deg,	P =      .511 deg,	R =    91.161 deg
};
P[7]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1503.516  mm,	Y =  -285.308  mm,	Z =   621.491  mm,
	W =  -161.697 deg,	P =      .819 deg,	R =    90.008 deg
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
P[10]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -1998.014  mm,	Y =  -428.313  mm,	Z =   269.815  mm,
	W =  -160.139 deg,	P =      .052 deg,	R =    92.502 deg
};
/END
