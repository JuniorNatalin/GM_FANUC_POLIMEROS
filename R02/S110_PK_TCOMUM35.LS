/PROG  S110_PK_TCOMUM35
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "TL PCK TYP1 N35";
PROG_SIZE	= 4363;
CREATE		= DATE 20-08-12  TIME 14:48:50;
MODIFIED	= DATE 21-08-03  TIME 20:34:32;
FILE_NAME	= S110_PK_;
VERSION		= 0;
LINE_COUNT	= 156;
MEMORY_SIZE	= 4779;
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
   2:  ! PATH - PK TOOL FROM N35=STA 35 ;
   3:  !******************************** ;
   4:  !* Robot ID: XXXXXR02B1 ;
   5:  !*    F-19XXXX ;
   6:  !* Line: XXXXXXXX ;
   7:  !* Platform: XX ;
   8:  !* Tool ID: TOOL xx ;
   9:  !* Program: S110_PK_TxxN35_R02 ;
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
  35:   ;
  36:J P[2:Tool-Pick-Pounce] 100% CNT100    ;
  37:   ;
  38:L P[3] 500mm/sec FINE    ;
  39:   ;
  40:L P[4:Pick Tool] 25mm/sec FINE    ;
  41:   ;
  42:   ;
  43:   ;
  44:  !-------------------------------- ;
  45:  LBL[20:LATCH TOOL] ;
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
  97:L P[5] 100mm/sec FINE    ;
  98:L P[6] 100mm/sec FINE    ;
  99:L P[7] 2000mm/sec CNT50    ;
 100:   ;
 101:J P[8] 100% FINE    ;
 102:   ;
 103:  ! Move To Home ;
 104:  JMP LBL[100] ;
 105:   ;
 106:  !-------------------------------- ;
 107:  LBL[80:LATCHING FAULT] ;
 108:  !MOVE BACK TO HOME WITHOUT TOOL ;
 109:  !on Reverse Path before Tool Pick ;
 110:   ;
 111:  UNLATCH TOOL(1) ;
 112:   ;
 113:  UFRAME_NUM=0 ;
 114:  UTOOL_NUM=14 ;
 115:   ;
 116:L P[9:PICK_T17_R1_N35] 50mm/sec FINE    ;
 117:   ;
 118:L P[10] 50mm/sec FINE    ;
 119:   ;
 120:L P[2:Tool-Pick-Pounce] 750mm/sec CNT100    ;
 121:   ;
 122:J P[11] 100% CNT100    ;
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
 141:   ;
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
	X =  1274.948  mm,	Y = -1724.548  mm,	Z =  1745.105  mm,
	W =   179.960 deg,	P =     -.678 deg,	R =   -89.285 deg
};
P[2:"Tool-Pick-Pounce"]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X =  1274.835  mm,	Y = -1727.022  mm,	Z =  1536.321  mm,
	W =   179.960 deg,	P =     -.678 deg,	R =   -89.285 deg
};
P[3]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X =  1274.501  mm,	Y = -1730.827  mm,	Z =  1422.414  mm,
	W =  -179.272 deg,	P =      .554 deg,	R =   -88.883 deg
};
P[4:"Pick Tool"]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X =  1274.969  mm,	Y = -1731.495  mm,	Z =  1385.883  mm,
	W =  -179.382 deg,	P =      .708 deg,	R =   -88.887 deg
};
P[5]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   960.786  mm,	Y = -1874.348  mm,	Z =  1390.096  mm,
	W =   178.391 deg,	P =      .373 deg,	R =   -90.243 deg
};
P[6]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   964.016  mm,	Y = -1869.613  mm,	Z =  1435.379  mm,
	W =   178.389 deg,	P =     1.266 deg,	R =   -90.472 deg
};
P[7]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   963.521  mm,	Y = -1737.465  mm,	Z =  1506.930  mm,
	W =   178.441 deg,	P =     -.805 deg,	R =   -90.702 deg
};
P[8]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   591.115  mm,	Y = -1108.538  mm,	Z =  2137.655  mm,
	W =  -133.887 deg,	P =   -12.911 deg,	R =  -113.954 deg
};
P[9:"PICK_T17_R1_N35"]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X =  1274.810  mm,	Y = -1730.489  mm,	Z =  1387.642  mm,
	W =  -179.840 deg,	P =     -.803 deg,	R =   -89.284 deg
};
P[10]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X =  1273.950  mm,	Y = -1725.734  mm,	Z =  1429.189  mm,
	W =  -179.855 deg,	P =    -2.074 deg,	R =   -88.806 deg
};
P[11]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X =   839.643  mm,	Y = -1002.916  mm,	Z =  2351.433  mm,
	W =  -132.600 deg,	P =   -13.871 deg,	R =  -112.874 deg
};
/END
