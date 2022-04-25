/PROG  S108_PK_T13N80
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "TL PCK TYP1 N80";
PROG_SIZE	= 4406;
CREATE		= DATE 21-06-09  TIME 04:20:08;
MODIFIED	= DATE 21-06-09  TIME 12:46:40;
FILE_NAME	= S108_PK_;
VERSION		= 0;
LINE_COUNT	= 162;
MEMORY_SIZE	= 4926;
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
  35:J P[11] 100% CNT100    ;
  36:   ;
  37:L P[12] 1000mm/sec CNT50    ;
  38:L P[9] 200mm/sec FINE    ;
  39:   ;
  40:L P[10:Pick Tool] 50mm/sec FINE    ;
  41:   ;
  42:  !-------------------------------- ;
  43:  LBL[20:LATCH TOOL] ;
  44:   ;
  45:  LATCH TOOL    ;
  46:   ;
  47:  Set MH Tool(4) ;
  48:  Release Part(5) ;
  49:  VACUUM CAN 1 OFF(6,7) ;
  50:   ;
  51:  !Add MH Ethernet Device from ;
  52:  !I/O Ethernet table ;
  53:  !which tool has ;
  54:   ;
  55:  !ADD DEVICE ONLINE CALLS ;
  56:  !WITHOUT STATUS CHECK ARG ;
  57:  !FOR ALL EOAT DEVICES ;
  58:  !CALL EN_ONLN(x,y) ;
  59:  !x = EOAT ENET Node # ;
  60:  !y = wait time ;
  61:  CALL EN_ONLN(31,5) ;
  62:  CALL EN_AROFF(31) ;
  63:   ;
  64:  !If TL LCH Pass, Return Home ;
  65:  !If TL LCH Fail, Unlatch TL, ;
  66:  !  MHFault, and Return Home ;
  67:  IF R[170]=1,JMP LBL[30] ;
  68:   ;
  69:  SELECT R[168]=6,JMP LBL[80] ;
  70:         ELSE,JMP LBL[99] ;
  71:   ;
  72:  !-------------------------------- ;
  73:  LBL[30:TOOL CHECK] ;
  74:   ;
  75:  ! Check if Tool Match with PLC ;
  76:  CALL TL_CHK_KM(R[156]) ;
  77:   ;
  78:  !If TL CHK Pass, Return Home ;
  79:  !If TL CHK Fail, Unlatch Tool, ;
  80:  !  MHFault, and Return Home ;
  81:  IF R[170]=1,JMP LBL[40] ;
  82:  IF R[170]=0,JMP LBL[905] ;
  83:   ;
  84:  !-------------------------------- ;
  85:  LBL[40:COMPLETE PATH] ;
  86:  !TL PK COMPLETE. MOVE AWAY ;
  87:  !AND RETURN HOME ;
  88:   ;
  89:  !Set New Tool and World Frame ;
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
 100:L P[6] 50mm/sec FINE    ;
 101:L P[7] 1000mm/sec CNT50    ;
 102:   ;
 103:J P[8] 100% CNT100    ;
 104:   ;
 105:  ! Move To Home ;
 106:  JMP LBL[100] ;
 107:   ;
 108:  !-------------------------------- ;
 109:  LBL[80:LATCHING FAULT] ;
 110:  !MOVE BACK TO HOME WITHOUT TOOL ;
 111:  !on Reverse Path before Tool Pick ;
 112:   ;
 113:  !Set ATI Tool and World Frame ;
 114:  UTOOL_NUM=14 ;
 115:  UFRAME_NUM=0 ;
 116:   ;
 117:  UNLATCH TOOL    ;
 118:   ;
 119:  SET SEGMENT(63) ;
 120:  !SEG(63), Robot Move to Home ;
 121:   ;
 122:   ;
 123:  !Set Payload= ATI ;
 124:  R[221]=1    ;
 125:  PAYLOAD[R[221]] ;
 126:   ;
 127:L P[2] 50mm/sec FINE    ;
 128:L P[3] 300mm/sec CNT50    ;
 129:   ;
 130:L P[4] 1000mm/sec CNT100    ;
 131:J P[5] 100% CNT100    ;
 132:   ;
 133:   ;
 134:  R[132]=0    ;
 135:  GO[71]=0 ;
 136:   ;
 137:  ! Move To Home ;
 138:  JMP LBL[100] ;
 139:   ;
 140:  !-------------------------------- ;
 141:  LBL[99:ABORT PROGRAM] ;
 142:  MESSAGE[...] ;
 143:  MESSAGE[ABORT PROGRAM] ;
 144:  ABORT ;
 145:   ;
 146:  !-------------------------------- ;
 147:  LBL[100:END OF PROGRAM] ;
 148:  END ;
 149:   ;
 150:  !*****FAULTS******** ;
 151:  LBL[905:Invalid Tool Num] ;
 152:  MESSAGE[...] ;
 153:  MESSAGE[TOOL CHANGER FAULT] ;
 154:  MESSAGE[ ROBOT LATCHED TO] ;
 155:  MESSAGE[ WRONG TOOL.] ;
 156:  MESSAGE[ GI[70] DOES NOT ] ;
 157:  MESSAGE[ MATCH TOOL ID ] ;
 158:  DO[523]=ON ;
 159:  UALM[3] ;
 160:  DO[523]=OFF ;
 161:  JMP LBL[80] ;
 162:   ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2145.037  mm,	Y =  1093.597  mm,	Z =  1812.125  mm,
	W =  -155.014 deg,	P =   -19.515 deg,	R =    98.816 deg
};
P[2]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[3]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[4]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2098.570  mm,	Y =  1810.027  mm,	Z =   137.031  mm,
	W =  -161.639 deg,	P =      .097 deg,	R =    90.820 deg
};
P[5]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1905.823  mm,	Y =  1316.578  mm,	Z =  1704.024  mm,
	W =  -156.086 deg,	P =   -19.025 deg,	R =    97.401 deg
};
P[6:""]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2098.207  mm,	Y =  1810.121  mm,	Z =   131.873  mm,
	W =  -161.643 deg,	P =      .065 deg,	R =    90.888 deg
};
P[7]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2032.183  mm,	Y =  1812.104  mm,	Z =   369.414  mm,
	W =  -161.643 deg,	P =      .065 deg,	R =    90.888 deg
};
P[8:""]{
   GP1:
	UF : 0, UT : 2,	
	J1=   140.239 deg,	J2=    27.835 deg,	J3=     5.259 deg,
	J4=   -13.426 deg,	J5=   -80.526 deg,	J6=   -48.130 deg
};
P[9]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2376.558  mm,	Y =  1661.276  mm,	Z =   269.674  mm,
	W =  -160.108 deg,	P =     -.297 deg,	R =    92.264 deg
};
P[10:"Pick Tool"]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2387.969  mm,	Y =  1660.989  mm,	Z =   238.136  mm,
	W =  -160.108 deg,	P =     -.297 deg,	R =    92.264 deg
};
P[11]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2106.766  mm,	Y =  1666.697  mm,	Z =  1047.622  mm,
	W =  -160.101 deg,	P =      .310 deg,	R =    91.663 deg
};
P[12]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2310.534  mm,	Y =  1663.258  mm,	Z =   507.216  mm,
	W =  -160.108 deg,	P =     -.296 deg,	R =    92.264 deg
};
/END
