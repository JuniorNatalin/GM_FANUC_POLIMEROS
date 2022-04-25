/PROG  S107_PK_T20N1_R01
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "300 PCK TYP1 NST";
PROG_SIZE	= 4542;
CREATE		= DATE 19-12-16  TIME 15:00:32;
MODIFIED	= DATE 19-12-16  TIME 15:03:00;
FILE_NAME	= S107_PK_;
VERSION		= 0;
LINE_COUNT	= 152;
MEMORY_SIZE	= 4966;
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
  22:  !++++++++++++++++++++++++++++++++ ;
  23:   ;
  24:  !******************************** ;
  25:  !BEGINNING OF PROGRAM PATH ;
  26:  !MOVE TO NEST 1 TOOL PICK ;
  27:  !******************************** ;
  28:   ;
  29:  !-------------------------------- ;
  30:  LBL[10:MOVE TO TL PICK] ;
  31:   ;
  32:  SET SEGMENT(52) ;
  33:  !SEG(52), Approach Tool Pick ;
  34:   ;
  35:J P[1:Tool-Pick-Pounce] 75% CNT50    ;
  36:J P[9] 100% CNT100    ;
  37:   ;
  38:J P[2:Tool-Pick-Apr] 100% CNT100    ;
  39:L P[8] 300mm/sec FINE    ;
  40:L P[3:Tool-Pick] 50mm/sec FINE    ;
  41:   ;
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
  85:  UTOOL_NUM=10 ;
  86:  UFRAME_NUM=0 ;
  87:   ;
  88:  !Set Payload= Tool ;
  89:  R[221]=2    ;
  90:  PAYLOAD[R[221]] ;
  91:   ;
  92:  SET SEGMENT(53) ;
  93:  !SEG(53), Tool Pick Depart ;
  94:  WAIT DI[909:ON ]=ON    ;
  95:   ;
  96:L P[4:Tool-Pick-Dep-1] 50mm/sec CNT10    ;
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
 112:   ;
 113:L P[13] 50mm/sec FINE    ;
 114:  WAIT DI[909:ON ]=OFF    ;
 115:L P[14] 2000mm/sec CNT50    ;
 116:L P[12:Tool-Pick-Apr] 2000mm/sec CNT50    ;
 117:   ;
 118:J P[11] 100% CNT100    ;
 119:J P[10:Tool-Pick-Pounce] 75% CNT50    ;
 120:   ;
 121:  SET SEGMENT(63) ;
 122:  !SEG(63), Robot Move to Home ;
 123:   ;
 124:  R[132]=0    ;
 125:  GO[71:0]=0 ;
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
 140:  !***********FAULTS*********** ;
 141:  LBL[905:Invalid Tool Num] ;
 142:  MESSAGE[...] ;
 143:  MESSAGE[TOOL CHANGER FAULT] ;
 144:  MESSAGE[ ROBOT LATCHED TO] ;
 145:  MESSAGE[ WRONG TOOL.] ;
 146:  MESSAGE[ GI[70] DOES NOT ] ;
 147:  MESSAGE[ MATCH TOOL ID ] ;
 148:  DO[523:OFF]=ON ;
 149:  UALM[3] ;
 150:  DO[523:OFF]=OFF ;
 151:  JMP LBL[80] ;
 152:   ;
/POS
P[1:"Tool-Pick-Pounce"]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  2207.383  mm,	Y = -1563.618  mm,	Z =   -12.197  mm,
	W =  -168.976 deg,	P =      .128 deg,	R =   -67.418 deg
};
P[2:"Tool-Pick-Apr"]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1550.061  mm,	Y = -1474.664  mm,	Z = -1980.918  mm,
	W =   161.570 deg,	P =    -3.429 deg,	R =    90.346 deg
};
P[3:"Tool-Pick"]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1715.310  mm,	Y = -1443.973  mm,	Z = -2476.461  mm,
	W =   161.570 deg,	P =    -3.429 deg,	R =    90.346 deg
};
P[4:"Tool-Pick-Dep-1"]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1704.752  mm,	Y = -1445.934  mm,	Z = -2444.802  mm,
	W =   161.570 deg,	P =    -3.429 deg,	R =    90.346 deg
};
P[5:"Tool-Pick-Dep-2"]{
   GP1:
	UF : 0, UT : 10,	
	J1=   -52.678 deg,	J2=   -13.388 deg,	J3=    11.088 deg,
	J4=   -53.875 deg,	J5=   -42.191 deg,	J6=  -163.235 deg
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
	X =  1704.752  mm,	Y = -1445.934  mm,	Z = -2444.802  mm,
	W =   161.570 deg,	P =    -3.429 deg,	R =    90.346 deg
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
	X =  1742.082  mm,	Y = -1556.033  mm,	Z = -2427.692  mm,
	W =   160.116 deg,	P =     -.977 deg,	R =    93.549 deg
};
P[14]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1632.420  mm,	Y = -1568.044  mm,	Z = -2123.052  mm,
	W =   160.116 deg,	P =     -.977 deg,	R =    93.550 deg
};
/END
