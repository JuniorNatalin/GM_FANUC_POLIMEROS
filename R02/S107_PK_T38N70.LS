/PROG  S107_PK_T38N70
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "TL PCK TYP1 N70";
PROG_SIZE	= 4292;
CREATE		= DATE 20-08-06  TIME 07:25:20;
MODIFIED	= DATE 20-08-06  TIME 07:25:20;
FILE_NAME	= S107_PK_;
VERSION		= 0;
LINE_COUNT	= 155;
MEMORY_SIZE	= 4712;
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
  36:J P[10] 100% CNT100    ;
  37:   ;
  38:L P[9] 1000mm/sec CNT1    ;
  39:   ;
  40:L P[8] 50mm/sec FINE    ;
  41:   ;
  42:  !-------------------------------- ;
  43:  LBL[20:LATCH TOOL] ;
  44:  LATCH TOOL    ;
  45:   ;
  46:  Grip Part(5) ;
  47:   ;
  48:  !Add MH Ethernet Device from ;
  49:  !I/O Ethernet table ;
  50:  !which tool has ;
  51:   ;
  52:  !ADD DEVICE ONLINE CALLS ;
  53:  !WITHOUT STATUS CHECK ARG ;
  54:  !FOR ALL EOAT DEVICES ;
  55:  !CALL EN_ONLN(x,y) ;
  56:  !x = EOAT ENET Node # ;
  57:  !y = wait time ;
  58:  CALL EN_ONLN(31,5) ;
  59:  CALL EN_AROFF(31) ;
  60:   ;
  61:  !If TL LCH Pass, Return Home ;
  62:  !If TL LCH Fail, Unlatch TL, ;
  63:  !  MHFault, and Return Home ;
  64:  IF R[170]=1,JMP LBL[30] ;
  65:   ;
  66:  SELECT R[168]=6,JMP LBL[80] ;
  67:         ELSE,JMP LBL[99] ;
  68:   ;
  69:  !-------------------------------- ;
  70:  LBL[30:TOOL CHECK] ;
  71:   ;
  72:  ! Check if Tool Match with PLC ;
  73:  CALL TL_CHK_KM(R[156]) ;
  74:   ;
  75:  !If TL CHK Pass, Return Home ;
  76:  !If TL CHK Fail, Unlatch Tool, ;
  77:  !  MHFault, and Return Home ;
  78:  IF R[170]=1,JMP LBL[40] ;
  79:  IF R[170]=0,JMP LBL[905] ;
  80:   ;
  81:  !-------------------------------- ;
  82:  LBL[40:COMPLETE PATH] ;
  83:  !TL PK COMPLETE. MOVE AWAY ;
  84:  !AND RETURN HOME ;
  85:   ;
  86:  !Set New Tool and World Frame ;
  87:  UTOOL_NUM=2 ;
  88:  UFRAME_NUM=0 ;
  89:   ;
  90:  !Set Payload= Tool ;
  91:  R[221]=2    ;
  92:  PAYLOAD[R[221]] ;
  93:   ;
  94:  SET SEGMENT(53) ;
  95:  !SEG(53), Tool Pick Depart ;
  96:   ;
  97:L P[5] 50mm/sec FINE    ;
  98:   ;
  99:L P[6] 1000mm/sec CNT50    ;
 100:   ;
 101:J P[7] 100% CNT100    ;
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
 116:L P[4:PICK_T17_N70] 50mm/sec FINE    ;
 117:   ;
 118:L P[3] 500mm/sec FINE    ;
 119:   ;
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
	X = -2250.498  mm,	Y =   571.258  mm,	Z =   534.535  mm,
	W =  -159.955 deg,	P =      .795 deg,	R =    91.263 deg
};
P[3]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2348.693  mm,	Y =   565.353  mm,	Z =   265.135  mm,
	W =  -159.955 deg,	P =      .795 deg,	R =    91.263 deg
};
P[4:"PICK_T17_N70"]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2362.300  mm,	Y =   564.534  mm,	Z =   227.802  mm,
	W =  -159.955 deg,	P =      .795 deg,	R =    91.263 deg
};
P[5]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1999.532  mm,	Y =   810.679  mm,	Z =   267.711  mm,
	W =  -161.271 deg,	P =      .252 deg,	R =    90.157 deg
};
P[6]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1970.013  mm,	Y =   712.373  mm,	Z =   420.635  mm,
	W =  -161.516 deg,	P =     1.161 deg,	R =    89.888 deg
};
P[7]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1430.516  mm,	Y =   908.811  mm,	Z =  1676.906  mm,
	W =  -145.907 deg,	P =     1.406 deg,	R =    88.198 deg
};
P[8]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2344.865  mm,	Y =   658.664  mm,	Z =   229.938  mm,
	W =  -159.642 deg,	P =     -.145 deg,	R =    91.530 deg
};
P[9]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2325.825  mm,	Y =   664.867  mm,	Z =   280.599  mm,
	W =  -159.732 deg,	P =     -.119 deg,	R =    91.531 deg
};
P[10]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2262.446  mm,	Y =   666.204  mm,	Z =   452.268  mm,
	W =  -159.732 deg,	P =     -.119 deg,	R =    91.531 deg
};
/END
