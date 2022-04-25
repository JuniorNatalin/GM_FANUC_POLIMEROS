/PROG  S107_PK_T05N1_R01
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "239 PCK TYP1 NST";
PROG_SIZE	= 4603;
CREATE		= DATE 18-06-19  TIME 13:45:26;
MODIFIED	= DATE 19-03-09  TIME 10:20:52;
FILE_NAME	= S107_PK_;
VERSION		= 0;
LINE_COUNT	= 153;
MEMORY_SIZE	= 5023;
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
   2:  ! PATH - PK TOOL FROM N1=STA 50 ;
   3:  !******************************** ;
   4:  !* Robot ID: XXXXXR01B1 ;
   5:  !*    F-19XXXX ;
   6:  !* Line: XXXXXXXX ;
   7:  !* Platform: XX ;
   8:  !* Tool ID: TOOL xx ;
   9:  !* Program: S107_PK_TxxN1 ;
  10:  !* Application: TOOL PICK ;
  11:  !* Tool Number: 335 ;
  12:  !******************************** ;
  13:  ! Author- Esys Automation ;
  14:  !******************************** ;
  15:   ;
  16:  !++++++++++++++++++++++++++++++++ ;
  17:  !ASSIGN PROGRAM PATH VALUES ;
  18:  !-------------------------------- ;
  19:  !Set ATI Tool and World UFrame ;
  20:  UTOOL_NUM=10 ;
  21:  UFRAME_NUM=0 ;
  22:  PAYLOAD[1] ;
  23:  !++++++++++++++++++++++++++++++++ ;
  24:   ;
  25:  !******************************** ;
  26:  !BEGINNING OF PROGRAM PATH ;
  27:  !MOVE TO NEST 1 TOOL PICK ;
  28:  !******************************** ;
  29:   ;
  30:  !-------------------------------- ;
  31:  LBL[10:MOVE TO TL PICK] ;
  32:   ;
  33:  SET SEGMENT(52) ;
  34:  !SEG(52), Approach Tool Pick ;
  35:   ;
  36:J P[1:Tool-Pick-Pounce] 75% CNT50    ;
  37:J P[9] 100% CNT100    ;
  38:J P[2:Tool-Pick-Apr] 100% CNT100    ;
  39:L P[15] 2000mm/sec CNT50    ;
  40:L P[8] 300mm/sec FINE    ;
  41:L P[3:Tool-Pick] 50mm/sec FINE    ;
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
  86:  UTOOL_NUM=10 ;
  87:  UFRAME_NUM=0 ;
  88:   ;
  89:  !Set Payload= Tool ;
  90:  PAYLOAD[10] ;
  91:   ;
  92:  SET SEGMENT(53) ;
  93:  !SEG(53), Tool Pick Depart ;
  94:  WAIT DI[909:ON ]=ON    ;
  95:   ;
  96:L P[4:Tool-Pick-Dep-1] 50mm/sec FINE    ;
  97:L P[5:Tool-Pick-Dep-2] 2000mm/sec CNT50    ;
  98:   ;
  99:L P[6] 2000mm/sec CNT50    ;
 100:   ;
 101:J P[7:Tool-Pick-Clear] 50% CNT50    ;
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
 112:  PAYLOAD[1] ;
 113:   ;
 114:L P[13] 50mm/sec FINE    ;
 115:  WAIT DI[909:ON ]=OFF    ;
 116:L P[14] 2000mm/sec CNT50    ;
 117:L P[12:Tool-Pick-Apr] 2000mm/sec CNT50    ;
 118:   ;
 119:J P[11] 100% CNT100    ;
 120:J P[10:Tool-Pick-Pounce] 75% CNT50    ;
 121:   ;
 122:  SET SEGMENT(63) ;
 123:  !SEG(63), Robot Move to Home ;
 124:   ;
 125:  R[132]=0    ;
 126:  GO[71:0]=0 ;
 127:   ;
 128:  ! Move To Home ;
 129:  JMP LBL[100] ;
 130:   ;
 131:  !-------------------------------- ;
 132:  LBL[99:ABORT PROGRAM] ;
 133:  MESSAGE[...] ;
 134:  MESSAGE[ABORT PROGRAM] ;
 135:  ABORT ;
 136:   ;
 137:  !-------------------------------- ;
 138:  LBL[100:END OF PROGRAM] ;
 139:  END ;
 140:   ;
 141:  !***********FAULTS*********** ;
 142:  LBL[905:Invalid Tool Num] ;
 143:  MESSAGE[...] ;
 144:  MESSAGE[TOOL CHANGER FAULT] ;
 145:  MESSAGE[ ROBOT LATCHED TO] ;
 146:  MESSAGE[ WRONG TOOL.] ;
 147:  MESSAGE[ GI[70] DOES NOT ] ;
 148:  MESSAGE[ MATCH TOOL ID ] ;
 149:  DO[523:OFF]=ON ;
 150:  UALM[3] ;
 151:  DO[523:OFF]=OFF ;
 152:  JMP LBL[80] ;
 153:   ;
/POS
P[1:"Tool-Pick-Pounce"]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  2207.383  mm,	Y = -1563.618  mm,	Z =   -12.197  mm,
	W =  -168.976 deg,	P =      .128 deg,	R =   -67.418 deg
};
P[2:"Tool-Pick-Apr"]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, -1',
	X =  1733.603  mm,	Y = -1548.387  mm,	Z = -1756.926  mm,
	W =   170.651 deg,	P =    -1.952 deg,	R =    93.345 deg
};
P[3:"Tool-Pick"]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1744.126  mm,	Y = -1541.867  mm,	Z = -2467.055  mm,
	W =   161.701 deg,	P =    -2.411 deg,	R =    91.370 deg
};
P[4:"Tool-Pick-Dep-1"]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1737.527  mm,	Y = -1542.868  mm,	Z = -2447.049  mm,
	W =   161.701 deg,	P =    -2.412 deg,	R =    91.370 deg
};
P[5:"Tool-Pick-Dep-2"]{
   GP1:
	UF : 0, UT : 10,	
	J1=   -51.753 deg,	J2=    -1.426 deg,	J3=    14.449 deg,
	J4=   -50.915 deg,	J5=   -43.260 deg,	J6=  -166.910 deg
};
P[6]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, -1',
	X =  1442.342  mm,	Y = -1587.776  mm,	Z =   -70.206  mm,
	W =  -178.214 deg,	P =    -2.483 deg,	R =    95.011 deg
};
P[7:"Tool-Pick-Clear"]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, -1',
	X =  2316.573  mm,	Y =  -387.654  mm,	Z =   450.533  mm,
	W =   174.725 deg,	P =    18.552 deg,	R =   152.798 deg
};
P[8]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1733.535  mm,	Y = -1543.474  mm,	Z = -2434.949  mm,
	W =   161.701 deg,	P =    -2.412 deg,	R =    91.370 deg
};
P[9]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1820.555  mm,	Y = -2125.244  mm,	Z =  -182.312  mm,
	W =  -139.949 deg,	P =    43.105 deg,	R =  -159.871 deg
};
P[10:"Tool-Pick-Pounce"]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  2207.383  mm,	Y = -1563.618  mm,	Z =   -12.197  mm,
	W =  -168.976 deg,	P =      .128 deg,	R =   -67.418 deg
};
P[11]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1820.555  mm,	Y = -2125.244  mm,	Z =  -182.312  mm,
	W =  -139.949 deg,	P =    43.105 deg,	R =  -159.871 deg
};
P[12:"Tool-Pick-Apr"]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, -1',
	X =  1733.603  mm,	Y = -1548.387  mm,	Z = -1756.926  mm,
	W =   170.651 deg,	P =    -1.952 deg,	R =    93.345 deg
};
P[13]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1738.332  mm,	Y = -1556.277  mm,	Z = -2435.682  mm,
	W =   160.085 deg,	P =    -2.040 deg,	R =    93.934 deg
};
P[14]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1632.420  mm,	Y = -1568.044  mm,	Z = -2123.052  mm,
	W =   160.116 deg,	P =     -.977 deg,	R =    93.550 deg
};
P[15]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1645.814  mm,	Y = -1556.774  mm,	Z = -2169.041  mm,
	W =   161.701 deg,	P =    -2.412 deg,	R =    91.370 deg
};
/END
