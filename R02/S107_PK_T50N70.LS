/PROG  S107_PK_T50N70
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "NEW_OK";
PROG_SIZE	= 4431;
CREATE		= DATE 22-01-27  TIME 10:08:02;
MODIFIED	= DATE 22-04-09  TIME 09:00:38;
FILE_NAME	= S107_PK_;
VERSION		= 0;
LINE_COUNT	= 159;
MEMORY_SIZE	= 4835;
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
  38:L P[12] 3000mm/sec CNT100    ;
  39:L P[6] 500mm/sec CNT1    ;
  40:   ;
  41:L P[7] 50mm/sec FINE    ;
  42:  !-------------------------------- ;
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
  85:  DO[805]=ON ;
  86:  DO[806]=OFF ;
  87:  DO[809]=OFF ;
  88:  DO[810]=ON ;
  89:  WAIT   2.00(sec) ;
  90:  UTOOL_NUM=2 ;
  91:  UFRAME_NUM=0 ;
  92:   ;
  93:  !Set Payload= Tool ;
  94:  R[221]=2    ;
  95:  PAYLOAD[R[221]] ;
  96:   ;
  97:  SET SEGMENT(53) ;
  98:  !SEG(53), Tool Pick Depart ;
  99:   ;
 100:L P[5] 50mm/sec FINE    ;
 101:L P[10:Tool-Pick-Pounce] 3000mm/sec CNT100    ;
 102:   ;
 103:J P[9] 100% CNT100    ;
 104:   ;
 105:J P[8] 100% CNT100    ;
 106:   ;
 107:   ;
 108:  ! Move To Home ;
 109:  JMP LBL[100] ;
 110:   ;
 111:  !-------------------------------- ;
 112:  LBL[80:LATCHING FAULT] ;
 113:  !MOVE BACK TO HOME WITHOUT TOOL ;
 114:  !on Reverse Path before Tool Pick ;
 115:   ;
 116:  UNLATCH TOOL    ;
 117:   ;
 118:  UFRAME_NUM=0 ;
 119:  UTOOL_NUM=14 ;
 120:   ;
 121:L P[4:PICK_T07_N70] 50mm/sec FINE    ;
 122:L P[3] 500mm/sec FINE    ;
 123:L P[12] 2000mm/sec CNT100    ;
 124:L P[2:Tool-Pick-Pounce] 750mm/sec CNT100    ;
 125:   ;
 126:J P[1] 100% CNT100    ;
 127:   ;
 128:  SET SEGMENT(63) ;
 129:  !SEG(63), Robot Move to Home ;
 130:   ;
 131:  R[132]=0    ;
 132:  GO[71]=0 ;
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
 155:  DO[523]=ON ;
 156:  UALM[3] ;
 157:  DO[523]=OFF ;
 158:  JMP LBL[80] ;
 159:   ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -1959.870  mm,	Y =   925.932  mm,	Z =  1670.771  mm,
	W =  -149.689 deg,	P =     -.711 deg,	R =    64.001 deg
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
	X = -2351.122  mm,	Y =   660.256  mm,	Z =   266.090  mm,
	W =  -160.108 deg,	P =     -.201 deg,	R =    91.815 deg
};
P[4:"PICK_T07_N70"]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2363.783  mm,	Y =   659.977  mm,	Z =   231.096  mm,
	W =  -160.108 deg,	P =     -.202 deg,	R =    91.814 deg
};
P[5]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2064.809  mm,	Y =   798.392  mm,	Z =    99.544  mm,
	W =  -160.848 deg,	P =      .851 deg,	R =    89.532 deg
};
P[6]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2335.623  mm,	Y =   657.931  mm,	Z =   256.875  mm,
	W =  -159.295 deg,	P =      .469 deg,	R =    90.902 deg
};
P[7]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2350.142  mm,	Y =   658.178  mm,	Z =   226.950  mm,
	W =  -159.295 deg,	P =      .469 deg,	R =    90.902 deg
};
P[8]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1871.537  mm,	Y =  1036.048  mm,	Z =  1608.502  mm,
	W =  -150.223 deg,	P =      .071 deg,	R =    62.819 deg
};
P[9]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1797.455  mm,	Y =   901.543  mm,	Z =   882.258  mm,
	W =  -160.599 deg,	P =     1.278 deg,	R =    88.209 deg
};
P[10:"Tool-Pick-Pounce"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1972.477  mm,	Y =   808.209  mm,	Z =   430.021  mm,
	W =  -161.645 deg,	P =      .160 deg,	R =    90.439 deg
};
P[12]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2217.580  mm,	Y =   674.721  mm,	Z =   496.637  mm,
	W =  -159.734 deg,	P =     -.201 deg,	R =    91.814 deg
};
/END
