/PROG  S108_PK_T06N80
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "TL PCK TYP1 N80";
PROG_SIZE	= 4420;
CREATE		= DATE 18-11-03  TIME 14:37:42;
MODIFIED	= DATE 19-06-19  TIME 21:02:54;
FILE_NAME	= S114_PK_;
VERSION		= 0;
LINE_COUNT	= 151;
MEMORY_SIZE	= 4856;
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
   2:  ! PATH - PK TOOL FROM N2=STA 80 ;
   3:  !******************************** ;
   4:  !* Robot ID: XXXXXR02B1 ;
   5:  !*    F-19XXXX ;
   6:  !* Line: XXXXXXXX ;
   7:  !* Platform: XX ;
   8:  !* Tool ID: TOOL xx ;
   9:  !* Program: S108_PK_TxxN2_R02 ;
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
  25:  !MOVE TO NEST 2 TOOL PICK ;
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
  37:L P[3] 2000mm/sec CNT50    ;
  38:   ;
  39:L P[6] 300mm/sec CNT1    ;
  40:   ;
  41:L P[9] 50mm/sec FINE    ;
  42:   ;
  43:  !-------------------------------- ;
  44:  LBL[20:LATCH TOOL] ;
  45:   ;
  46:  LATCH TOOL    ;
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
  97:L P[99:Tool-Pick-APR] 50mm/sec FINE    ;
  98:L P[7] 2000mm/sec CNT50    ;
  99:   ;
 100:J P[8:Tool-Pick-Dep] 100% CNT100    ;
 101:   ;
 102:  ! Move To Home ;
 103:  JMP LBL[100] ;
 104:   ;
 105:  !-------------------------------- ;
 106:  LBL[80:LATCHING FAULT] ;
 107:  !MOVE BACK TO HOME WITHOUT TOOL ;
 108:  !on Reverse Path before Tool Pick ;
 109:   ;
 110:  UNLATCH TOOL    ;
 111:   ;
 112:  SET SEGMENT(63) ;
 113:  !SEG(63), Robot Move to Home ;
 114:   ;
 115:L P[5:Pick_T07_N80] 200mm/sec FINE    ;
 116:L P[4:Tool-Pick-APR] 2000mm/sec CNT50    ;
 117:   ;
 118:J P[3] 25% CNT100    ;
 119:J P[2:Tool-Pick-Pounce] 25% CNT100    ;
 120:   ;
 121:J P[1] 100% CNT100    ;
 122:   ;
 123:  R[132]=0    ;
 124:  GO[71]=0 ;
 125:   ;
 126:  ! Move To Home ;
 127:  JMP LBL[100] ;
 128:   ;
 129:  !-------------------------------- ;
 130:  LBL[99:ABORT PROGRAM] ;
 131:  MESSAGE[...] ;
 132:  MESSAGE[ABORT PROGRAM] ;
 133:  ABORT ;
 134:   ;
 135:  !-------------------------------- ;
 136:  LBL[100:END OF PROGRAM] ;
 137:  END ;
 138:   ;
 139:  !*****FAULTS******** ;
 140:  LBL[905:Invalid Tool Num] ;
 141:  MESSAGE[...] ;
 142:  MESSAGE[TOOL CHANGER FAULT] ;
 143:  MESSAGE[ ROBOT LATCHED TO] ;
 144:  MESSAGE[ WRONG TOOL.] ;
 145:  MESSAGE[ GI[70] DOES NOT ] ;
 146:  MESSAGE[ MATCH TOOL ID ] ;
 147:  DO[523]=ON ;
 148:  UALM[3] ;
 149:  DO[523]=OFF ;
 150:  JMP LBL[80] ;
 151:   ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2145.037  mm,	Y =  1093.597  mm,	Z =  1812.125  mm,
	W =  -155.014 deg,	P =   -19.515 deg,	R =    98.816 deg
};
P[2:"Tool-Pick-Pounce"]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2086.306  mm,	Y =  1755.085  mm,	Z =  1038.813  mm,
	W =  -160.101 deg,	P =      .311 deg,	R =    91.663 deg
};
P[3]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2292.801  mm,	Y =  1745.988  mm,	Z =   467.875  mm,
	W =  -160.101 deg,	P =      .311 deg,	R =    91.663 deg
};
P[4:"Tool-Pick-APR"]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2368.456  mm,	Y =  1745.345  mm,	Z =   271.583  mm,
	W =  -160.108 deg,	P =     -.130 deg,	R =    92.245 deg
};
P[5:"Pick_T07_N80"]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2383.186  mm,	Y =  1744.860  mm,	Z =   230.847  mm,
	W =  -160.108 deg,	P =     -.130 deg,	R =    92.245 deg
};
P[6]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2369.264  mm,	Y =  1715.100  mm,	Z =   267.642  mm,
	W =  -159.963 deg,	P =     -.251 deg,	R =    92.213 deg
};
P[7]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1993.742  mm,	Y =  1889.140  mm,	Z =   408.394  mm,
	W =  -161.651 deg,	P =      .332 deg,	R =    90.166 deg
};
P[8:"Tool-Pick-Dep"]{
   GP1:
	UF : 0, UT : 2,	
	J1=   148.904 deg,	J2=    16.299 deg,	J3=    -1.539 deg,
	J4=    -4.750 deg,	J5=   -65.714 deg,	J6=   -19.648 deg
};
P[9]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2383.061  mm,	Y =  1707.838  mm,	Z =   232.829  mm,
	W =  -159.961 deg,	P =     -.252 deg,	R =    92.214 deg
};
P[99:"Tool-Pick-APR"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2089.102  mm,	Y =  1856.747  mm,	Z =   137.617  mm,
	W =  -161.497 deg,	P =      .114 deg,	R =    90.840 deg
};
/END
