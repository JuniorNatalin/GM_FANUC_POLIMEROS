/PROG  S104_PK_T43N60
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "TL PCK TYP1 N60";
PROG_SIZE	= 4361;
CREATE		= DATE 19-06-26  TIME 14:58:26;
MODIFIED	= DATE 19-10-09  TIME 10:31:42;
FILE_NAME	= S104_PK_;
VERSION		= 0;
LINE_COUNT	= 155;
MEMORY_SIZE	= 4781;
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
  97:L P[5] 2000mm/sec CNT50    ;
  98:   ;
  99:J P[6] 100% CNT100    ;
 100:   ;
 101:J P[11] 100% CNT100    ;
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
 116:L P[7:PICK_T01_R1_N2] 50mm/sec FINE    ;
 117:L P[3] 50mm/sec FINE    ;
 118:   ;
 119:L P[1:Tool-Pick-Pounce] 750mm/sec CNT50    ;
 120:   ;
 121:J P[14] 100% CNT100    ;
 122:J P[12] 100% CNT100    ;
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
P[1:"Tool-Pick-Pounce"]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -1918.402  mm,	Y =  -433.213  mm,	Z =   595.368  mm,
	W =  -160.260 deg,	P =      .176 deg,	R =    89.839 deg
};
P[2]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -1983.361  mm,	Y =  -432.745  mm,	Z =   272.480  mm,
	W =  -159.392 deg,	P =     -.421 deg,	R =    92.090 deg
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
	X = -1700.850  mm,	Y =  -284.392  mm,	Z =   145.995  mm,
	W =  -160.924 deg,	P =     -.041 deg,	R =    90.719 deg
};
P[5]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1642.886  mm,	Y =  -297.974  mm,	Z =   461.813  mm,
	W =  -161.806 deg,	P =      .534 deg,	R =    88.463 deg
};
P[6]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1219.646  mm,	Y =  -179.974  mm,	Z =  1103.529  mm,
	W =  -148.505 deg,	P =      .883 deg,	R =    88.455 deg
};
P[7:"PICK_T01_R1_N2"]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2041.641  mm,	Y =  -427.267  mm,	Z =   238.360  mm,
	W =  -160.260 deg,	P =      .176 deg,	R =    89.839 deg
};
P[8]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -1999.099  mm,	Y =  -433.012  mm,	Z =   230.630  mm,
	W =  -159.392 deg,	P =     -.421 deg,	R =    92.090 deg
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
P[14]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -1439.556  mm,	Y =  -314.972  mm,	Z =  1332.434  mm,
	W =  -145.086 deg,	P =      .394 deg,	R =    89.246 deg
};
/END
