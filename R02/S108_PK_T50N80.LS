/PROG  S108_PK_T50N80
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "TL PCK TYP1 N80";
PROG_SIZE	= 4565;
CREATE		= DATE 22-01-28  TIME 10:07:46;
MODIFIED	= DATE 22-04-09  TIME 09:04:04;
FILE_NAME	= S108_PK_;
VERSION		= 0;
LINE_COUNT	= 158;
MEMORY_SIZE	= 4973;
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
  41:L P[9] 25mm/sec FINE    ;
  42:  !-------------------------------- ;
  43:  LBL[20:LATCH TOOL] ;
  44:   ;
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
  86:  DO[805]=ON ;
  87:  DO[806]=OFF ;
  88:  DO[809]=OFF ;
  89:  DO[810]=ON ;
  90:   ;
  91:   ;
  92:  UTOOL_NUM=2 ;
  93:  UFRAME_NUM=0 ;
  94:   ;
  95:  !Set Payload= Tool ;
  96:  R[221]=2    ;
  97:  PAYLOAD[R[221]] ;
  98:   ;
  99:  SET SEGMENT(53) ;
 100:  !SEG(53), Tool Pick Depart ;
 101:   ;
 102:L P[99:Tool-Pick-APR] 25mm/sec FINE    ;
 103:   ;
 104:   ;
 105:L P[7] 1200mm/sec CNT50    ;
 106:J P[10] 100% CNT10    ;
 107:J P[8:Tool-Pick-Dep] 100% CNT100    ;
 108:   ;
 109:  ! Move To Home ;
 110:  JMP LBL[100] ;
 111:   ;
 112:  //!-------------------------------- ;
 113:  //LBL[*80:LATCHING FAULT] ;
 114:  //!MOVE BACK TO HOME WITHOUT TOOL ;
 115:  //!on Reverse Path before Tool Pick ;
 116:  //    ;
 117:  //UNLATCH TOOL    ;
 118:  //    ;
 119:  //SET SEGMENT(63) ;
 120:  //!SEG(63), Robot Move to Home ;
 121:  //    ;
 122:  //L P[5:Pick_T07_N80] 200mm/sec FINE    ;
 123:  //L P[4:Tool-Pick-APR] 2000mm/sec CNT50    ;
 124:  //    ;
 125:  //J P[3] 25% CNT100    ;
 126:  //J P[2:Tool-Pick-Pounce] 25% CNT100    ;
 127:  //    ;
 128:  //J P[1] 100% CNT100    ;
 129:  //    ;
 130:  //R[132]=0    ;
 131:  //GO[71]=0 ;
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
 146:  !*****FAULTS******** ;
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
	X = -2354.801  mm,	Y =  1743.090  mm,	Z =   256.104  mm,
	W =  -160.723 deg,	P =      .265 deg,	R =    91.139 deg
};
P[7]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1951.366  mm,	Y =  1888.689  mm,	Z =   497.923  mm,
	W =  -162.270 deg,	P =      .612 deg,	R =    89.758 deg
};
P[8:"Tool-Pick-Dep"]{
   GP1:
	UF : 0, UT : 2,	
	J1=   153.180 deg,	J2=    26.631 deg,	J3=    30.974 deg,
	J4=     -.000 deg,	J5=   -89.663 deg,	J6=   -50.000 deg
};
P[9]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2360.129  mm,	Y =  1743.119  mm,	Z =   222.345  mm,
	W =  -159.298 deg,	P =      .442 deg,	R =    90.525 deg
};
P[10]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1912.907  mm,	Y =  1890.785  mm,	Z =   652.133  mm,
	W =  -161.651 deg,	P =      .332 deg,	R =    90.166 deg
};
P[99:"Tool-Pick-APR"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2076.660  mm,	Y =  1885.213  mm,	Z =   106.951  mm,
	W =  -162.240 deg,	P =      .590 deg,	R =    89.751 deg
};
/END
