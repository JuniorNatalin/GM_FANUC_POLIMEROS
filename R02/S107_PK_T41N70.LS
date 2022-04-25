/PROG  S107_PK_T41N70
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "TL PCK TYP1 N70";
PROG_SIZE	= 4324;
CREATE		= DATE 19-05-25  TIME 08:55:14;
MODIFIED	= DATE 22-03-31  TIME 16:29:20;
FILE_NAME	= S107_PK_;
VERSION		= 0;
LINE_COUNT	= 156;
MEMORY_SIZE	= 4740;
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
  38:L P[3] 1000mm/sec CNT1    ;
  39:L P[4] 50mm/sec FINE    ;
  40:   ;
  41:L P[5] 30mm/sec FINE    ;
  42:   ;
  43:  !-------------------------------- ;
  44:  LBL[20:LATCH TOOL] ;
  45:  LATCH TOOL    ;
  46:  Set MH Tool(4) ;
  47:  Release Part(1,2,5) ;
  48:   ;
  49:  !Add MH Ethernet Device from ;
  50:  !I/O Ethernet table ;
  51:  !which tool has ;
  52:   ;
  53:  !ADD DEVICE ONLINE CALLS ;
  54:  !WITHOUT STATUS CHECK ARG ;
  55:  !FOR ALL EOAT DEVICES ;
  56:  !CALL EN_ONLN(x,y) ;
  57:  !x = EOAT ENET Node # ;
  58:  !y = wait time ;
  59:  CALL EN_ONLN(31,5) ;
  60:  CALL EN_AROFF(31) ;
  61:   ;
  62:  !If TL LCH Pass, Return Home ;
  63:  !If TL LCH Fail, Unlatch TL, ;
  64:  !  MHFault, and Return Home ;
  65:  IF R[170]=1,JMP LBL[30] ;
  66:   ;
  67:  SELECT R[168]=6,JMP LBL[80] ;
  68:         ELSE,JMP LBL[99] ;
  69:   ;
  70:  !-------------------------------- ;
  71:  LBL[30:TOOL CHECK] ;
  72:   ;
  73:  ! Check if Tool Match with PLC ;
  74:  CALL TL_CHK_KM(R[156]) ;
  75:   ;
  76:  !If TL CHK Pass, Return Home ;
  77:  !If TL CHK Fail, Unlatch Tool, ;
  78:  !  MHFault, and Return Home ;
  79:  IF R[170]=1,JMP LBL[40] ;
  80:  IF R[170]=0,JMP LBL[905] ;
  81:   ;
  82:  !-------------------------------- ;
  83:  LBL[40:COMPLETE PATH] ;
  84:  !TL PK COMPLETE. MOVE AWAY ;
  85:  !AND RETURN HOME ;
  86:   ;
  87:  !Set New Tool and World Frame ;
  88:  UTOOL_NUM=2 ;
  89:  UFRAME_NUM=0 ;
  90:   ;
  91:  !Set Payload= Tool ;
  92:  R[221]=2    ;
  93:  PAYLOAD[R[221]] ;
  94:   ;
  95:  SET SEGMENT(53) ;
  96:  !SEG(53), Tool Pick Depart ;
  97:   ;
  98:L P[6] 50mm/sec FINE    ;
  99:   ;
 100:L P[7] 1000mm/sec CNT50    ;
 101:   ;
 102:J P[8] 100% CNT100    ;
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
 117:L P[9:PICK_T17_N70] 50mm/sec FINE    ;
 118:   ;
 119:L P[10] 500mm/sec FINE    ;
 120:   ;
 121:L P[2:Tool-Pick-Pounce] 750mm/sec CNT100    ;
 122:   ;
 123:J P[1] 100% CNT100    ;
 124:   ;
 125:  SET SEGMENT(63) ;
 126:  !SEG(63), Robot Move to Home ;
 127:   ;
 128:  R[132]=0    ;
 129:  GO[71]=0 ;
 130:   ;
 131:  ! Move To Home ;
 132:  JMP LBL[100] ;
 133:   ;
 134:  !-------------------------------- ;
 135:  LBL[99:ABORT PROGRAM] ;
 136:  MESSAGE[...] ;
 137:  MESSAGE[ABORT PROGRAM] ;
 138:  ABORT ;
 139:   ;
 140:  !-------------------------------- ;
 141:  LBL[100:END OF PROGRAM] ;
 142:  END ;
 143:   ;
 144:  !***********FAULTS*********** ;
 145:  LBL[905:Invalid Tool Num] ;
 146:  MESSAGE[...] ;
 147:  MESSAGE[TOOL CHANGER FAULT] ;
 148:  MESSAGE[ ROBOT LATCHED TO] ;
 149:  MESSAGE[ WRONG TOOL.] ;
 150:  MESSAGE[ GI[70] DOES NOT ] ;
 151:  MESSAGE[ MATCH TOOL ID ] ;
 152:  DO[523]=ON ;
 153:  UALM[3] ;
 154:  DO[523]=OFF ;
 155:  JMP LBL[80] ;
 156:   ;
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
	X = -2101.385  mm,	Y =   680.903  mm,	Z =   942.697  mm,
	W =  -160.929 deg,	P =      .680 deg,	R =    91.046 deg
};
P[3]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2354.103  mm,	Y =   667.243  mm,	Z =   194.440  mm,
	W =  -160.610 deg,	P =      .478 deg,	R =    90.977 deg
};
P[4]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2364.067  mm,	Y =   666.885  mm,	Z =   171.908  mm,
	W =  -160.609 deg,	P =      .478 deg,	R =    90.977 deg
};
P[5]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2373.049  mm,	Y =   666.536  mm,	Z =   145.302  mm,
	W =  -161.036 deg,	P =      .383 deg,	R =    90.944 deg
};
P[6]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2075.463  mm,	Y =   807.792  mm,	Z =    45.293  mm,
	W =  -162.163 deg,	P =      .828 deg,	R =    89.598 deg
};
P[7]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1817.935  mm,	Y =   821.513  mm,	Z =   806.650  mm,
	W =  -162.487 deg,	P =     1.023 deg,	R =    89.665 deg
};
P[8]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1430.516  mm,	Y =   908.811  mm,	Z =  1676.906  mm,
	W =  -145.907 deg,	P =     1.406 deg,	R =    88.198 deg
};
P[9:"PICK_T17_N70"]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2362.300  mm,	Y =   564.534  mm,	Z =   227.802  mm,
	W =  -159.955 deg,	P =      .795 deg,	R =    91.263 deg
};
P[10]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2348.693  mm,	Y =   565.353  mm,	Z =   265.135  mm,
	W =  -159.955 deg,	P =      .795 deg,	R =    91.263 deg
};
/END
