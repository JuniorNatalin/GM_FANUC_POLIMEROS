/PROG  S108_PK_T38N80
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "TL PCK TYP1 N80";
PROG_SIZE	= 4363;
CREATE		= DATE 20-08-06  TIME 07:26:06;
MODIFIED	= DATE 20-08-06  TIME 07:26:06;
FILE_NAME	= S108_PK_;
VERSION		= 0;
LINE_COUNT	= 154;
MEMORY_SIZE	= 4787;
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
  37:L P[11] 2000mm/sec CNT50    ;
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
  48:  Grip Part(5) ;
  49:   ;
  50:  !Add MH Ethernet Device from ;
  51:  !I/O Ethernet table ;
  52:  !which tool has ;
  53:   ;
  54:  !ADD DEVICE ONLINE CALLS ;
  55:  !WITHOUT STATUS CHECK ARG ;
  56:  !FOR ALL EOAT DEVICES ;
  57:  !CALL EN_ONLN(x,y) ;
  58:  !x = EOAT ENET Node # ;
  59:  !y = wait time ;
  60:  CALL EN_ONLN(31,5) ;
  61:  CALL EN_AROFF(31) ;
  62:   ;
  63:  !If TL LCH Pass, Return Home ;
  64:  !If TL LCH Fail, Unlatch TL, ;
  65:  !  MHFault, and Return Home ;
  66:  IF R[170]=1,JMP LBL[30] ;
  67:   ;
  68:  SELECT R[168]=6,JMP LBL[80] ;
  69:         ELSE,JMP LBL[99] ;
  70:   ;
  71:  !-------------------------------- ;
  72:  LBL[30:TOOL CHECK] ;
  73:   ;
  74:  ! Check if Tool Match with PLC ;
  75:  CALL TL_CHK_KM(R[156]) ;
  76:   ;
  77:  !If TL CHK Pass, Return Home ;
  78:  !If TL CHK Fail, Unlatch Tool, ;
  79:  !  MHFault, and Return Home ;
  80:  IF R[170]=1,JMP LBL[40] ;
  81:  IF R[170]=0,JMP LBL[905] ;
  82:   ;
  83:  !-------------------------------- ;
  84:  LBL[40:COMPLETE PATH] ;
  85:  !TL PK COMPLETE. MOVE AWAY ;
  86:  !AND RETURN HOME ;
  87:   ;
  88:  !Set New Tool and World Frame ;
  89:  UTOOL_NUM=2 ;
  90:  UFRAME_NUM=0 ;
  91:   ;
  92:  !Set Payload= Tool ;
  93:  R[221]=2    ;
  94:  PAYLOAD[R[221]] ;
  95:   ;
  96:  SET SEGMENT(53) ;
  97:  !SEG(53), Tool Pick Depart ;
  98:   ;
  99:L P[6:Tool-Pick-APR] 50mm/sec FINE    ;
 100:   ;
 101:L P[7] 2000mm/sec CNT50    ;
 102:   ;
 103:J P[8:Tool-Pick-Dep] 100% CNT100    ;
 104:   ;
 105:  ! Move To Home ;
 106:  JMP LBL[100] ;
 107:   ;
 108:  !-------------------------------- ;
 109:  LBL[80:LATCHING FAULT] ;
 110:  !MOVE BACK TO HOME WITHOUT TOOL ;
 111:  !on Reverse Path before Tool Pick ;
 112:   ;
 113:  UNLATCH TOOL    ;
 114:   ;
 115:  SET SEGMENT(63) ;
 116:  !SEG(63), Robot Move to Home ;
 117:   ;
 118:L P[9:Pick_T17_N80] 200mm/sec FINE    ;
 119:L P[10:Tool-Pick-APR] 2000mm/sec CNT50    ;
 120:   ;
 121:J P[3] 25% CNT100    ;
 122:J P[2:Tool-Pick-Pounce] 25% CNT100    ;
 123:   ;
 124:J P[1] 100% CNT100    ;
 125:   ;
 126:  R[132]=0    ;
 127:  GO[71]=0 ;
 128:   ;
 129:  ! Move To Home ;
 130:  JMP LBL[100] ;
 131:   ;
 132:  !-------------------------------- ;
 133:  LBL[99:ABORT PROGRAM] ;
 134:  MESSAGE[...] ;
 135:  MESSAGE[ABORT PROGRAM] ;
 136:  ABORT ;
 137:   ;
 138:  !-------------------------------- ;
 139:  LBL[100:END OF PROGRAM] ;
 140:  END ;
 141:   ;
 142:  !*****FAULTS******** ;
 143:  LBL[905:Invalid Tool Num] ;
 144:  MESSAGE[...] ;
 145:  MESSAGE[TOOL CHANGER FAULT] ;
 146:  MESSAGE[ ROBOT LATCHED TO] ;
 147:  MESSAGE[ WRONG TOOL.] ;
 148:  MESSAGE[ GI[70] DOES NOT ] ;
 149:  MESSAGE[ MATCH TOOL ID ] ;
 150:  DO[523]=ON ;
 151:  UALM[3] ;
 152:  DO[523]=OFF ;
 153:  JMP LBL[80] ;
 154:   ;
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
	X = -2239.808  mm,	Y =  1658.928  mm,	Z =   619.220  mm,
	W =  -160.084 deg,	P =      .438 deg,	R =    91.709 deg
};
P[4]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2353.344  mm,	Y =  1744.921  mm,	Z =   274.135  mm,
	W =  -159.504 deg,	P =     -.637 deg,	R =    91.324 deg
};
P[5]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2368.392  mm,	Y =  1745.020  mm,	Z =   233.897  mm,
	W =  -159.504 deg,	P =     -.637 deg,	R =    91.324 deg
};
P[6:"Tool-Pick-APR"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2050.629  mm,	Y =  1889.838  mm,	Z =   196.884  mm,
	W =  -161.031 deg,	P =     -.260 deg,	R =    89.952 deg
};
P[7]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1979.112  mm,	Y =  1802.182  mm,	Z =   448.347  mm,
	W =  -161.395 deg,	P =      .754 deg,	R =    90.366 deg
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
P[11]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2303.657  mm,	Y =  1753.437  mm,	Z =   405.349  mm,
	W =  -159.930 deg,	P =      .048 deg,	R =    91.099 deg
};
/END
