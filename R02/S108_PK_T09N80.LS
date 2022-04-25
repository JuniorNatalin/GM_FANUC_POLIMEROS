/PROG  S108_PK_T09N80
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "TL PCK TYP1 N80";
PROG_SIZE	= 4300;
CREATE		= DATE 19-03-08  TIME 16:17:08;
MODIFIED	= DATE 19-03-08  TIME 16:17:08;
FILE_NAME	= S108_PK_;
VERSION		= 0;
LINE_COUNT	= 152;
MEMORY_SIZE	= 4732;
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
  39:L P[4] 300mm/sec CNT1    ;
  40:   ;
  41:L P[5] 50mm/sec FINE    ;
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
  97:L P[6:Tool-Pick-APR] 50mm/sec FINE    ;
  98:   ;
  99:L P[7] 2000mm/sec CNT50    ;
 100:   ;
 101:J P[8:Tool-Pick-Dep] 100% CNT100    ;
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
 113:  SET SEGMENT(63) ;
 114:  !SEG(63), Robot Move to Home ;
 115:   ;
 116:L P[9:Pick_T17_N80] 200mm/sec FINE    ;
 117:L P[10:Tool-Pick-APR] 2000mm/sec CNT50    ;
 118:   ;
 119:J P[3] 25% CNT100    ;
 120:J P[2:Tool-Pick-Pounce] 25% CNT100    ;
 121:   ;
 122:J P[1] 100% CNT100    ;
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
 140:  !*****FAULTS******** ;
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
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2145.037  mm,	Y =  1093.597  mm,	Z =  1812.125  mm,
	W =  -155.014 deg,	P =   -19.515 deg,	R =    98.816 deg
};
P[2:"Tool-Pick-Pounce"]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2127.110  mm,	Y =  1664.672  mm,	Z =   930.603  mm,
	W =  -160.084 deg,	P =      .438 deg,	R =    91.709 deg
};
P[3]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2169.885  mm,	Y =  1692.468  mm,	Z =   526.547  mm,
	W =  -160.055 deg,	P =      .114 deg,	R =    91.790 deg
};
P[4]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2277.880  mm,	Y =  1688.499  mm,	Z =   228.750  mm,
	W =  -160.055 deg,	P =      .114 deg,	R =    91.790 deg
};
P[5]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2290.823  mm,	Y =  1686.816  mm,	Z =   189.438  mm,
	W =  -160.055 deg,	P =      .114 deg,	R =    91.790 deg
};
P[6:"Tool-Pick-APR"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1997.603  mm,	Y =  1832.861  mm,	Z =    88.288  mm,
	W =  -161.600 deg,	P =      .477 deg,	R =    90.414 deg
};
P[7]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1899.999  mm,	Y =  1836.447  mm,	Z =   357.434  mm,
	W =  -161.599 deg,	P =      .477 deg,	R =    90.414 deg
};
P[8:"Tool-Pick-Dep"]{
   GP1:
	UF : 0, UT : 2,	
	J1=   147.826 deg,	J2=    19.442 deg,	J3=    -5.275 deg,
	J4=    -7.247 deg,	J5=   -66.380 deg,	J6=   -28.657 deg
};
P[9:"Pick_T17_N80"]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2384.134  mm,	Y =  1744.268  mm,	Z =   234.073  mm,
	W =  -160.106 deg,	P =      .013 deg,	R =    91.554 deg
};
P[10:"Tool-Pick-APR"]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2371.641  mm,	Y =  1744.617  mm,	Z =   268.601  mm,
	W =  -160.106 deg,	P =      .013 deg,	R =    91.554 deg
};
/END
