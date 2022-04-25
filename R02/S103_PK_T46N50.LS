/PROG  S103_PK_T46N50
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "NEW_ok";
PROG_SIZE	= 4619;
CREATE		= DATE 22-01-05  TIME 22:59:08;
MODIFIED	= DATE 22-04-09  TIME 16:54:48;
FILE_NAME	= S103_PK_;
VERSION		= 0;
LINE_COUNT	= 163;
MEMORY_SIZE	= 5135;
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
   2:  ! PATH - PK TOOL FROM N1=STA 70 ;
   3:  !******************************** ;
   4:  !* Robot ID: XXXXXR02B1 ;
   5:  !*    F-19XXXX ;
   6:  !* Line: XXXXXXXX ;
   7:  !* Platform: XX ;
   8:  !* Tool ID: TOOL xx ;
   9:  !* Program: S001_PK_TxxN3_R02 ;
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
  36:J P[2] 100% CNT100    ;
  37:J P[3] 100% CNT100    ;
  38:   ;
  39:J P[4:Tool-Pick-Pounce] 100% CNT100    ;
  40:   ;
  41:L P[12] 500mm/sec FINE    ;
  42:   ;
  43:L P[11] 30mm/sec FINE    ;
  44:   ;
  45:  !-------------------------------- ;
  46:  LBL[20:LATCH TOOL] ;
  47:  LATCH TOOL    ;
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
  98:L P[7] 100mm/sec FINE    ;
  99:   ;
 100:L P[8] 500mm/sec CNT10    ;
 101:L P[14] 500mm/sec CNT10    ;
 102:L P[13] 500mm/sec CNT20    ;
 103:J P[15] 100% CNT20    ;
 104:J P[9] 100% CNT100    ;
 105:J P[10] 100% CNT100    ;
 106:   ;
 107:  ! Move To Home ;
 108:  JMP LBL[100] ;
 109:   ;
 110:  !-------------------------------- ;
 111:  LBL[80:LATCHING FAULT] ;
 112:  !MOVE BACK TO HOME WITHOUT TOOL ;
 113:  !on Reverse Path before Tool Pick ;
 114:   ;
 115:  UNLATCH TOOL    ;
 116:   ;
 117:  UFRAME_NUM=0 ;
 118:  UTOOL_NUM=14 ;
 119:   ;
 120:L P[6:PICK_T3_R1_N1] 50mm/sec FINE    ;
 121:   ;
 122:L P[5] 500mm/sec FINE    ;
 123:   ;
 124:L P[4:Tool-Pick-Pounce] 750mm/sec CNT100    ;
 125:   ;
 126:L P[3] 3000mm/sec CNT100    ;
 127:   ;
 128:J P[2] 100% CNT100    ;
 129:   ;
 130:J P[1] 100% CNT100    ;
 131:   ;
 132:  SET SEGMENT(63) ;
 133:  !SEG(63), Robot Move to Home ;
 134:   ;
 135:  R[132]=0    ;
 136:  GO[71]=0 ;
 137:   ;
 138:  ! Move To Home ;
 139:  JMP LBL[100] ;
 140:   ;
 141:  !-------------------------------- ;
 142:  LBL[99:ABORT PROGRAM] ;
 143:  MESSAGE[...] ;
 144:  MESSAGE[ABORT PROGRAM] ;
 145:  ABORT ;
 146:   ;
 147:  !-------------------------------- ;
 148:  LBL[100:END OF PROGRAM] ;
 149:  END ;
 150:   ;
 151:  !***********FAULTS*********** ;
 152:  LBL[905:Invalid Tool Num] ;
 153:  MESSAGE[...] ;
 154:  MESSAGE[TOOL CHANGER FAULT] ;
 155:  MESSAGE[ ROBOT LATCHED TO] ;
 156:  MESSAGE[ WRONG TOOL.] ;
 157:  MESSAGE[ GI[70] DOES NOT ] ;
 158:  MESSAGE[ MATCH TOOL ID ] ;
 159:  DO[523]=ON ;
 160:  UALM[3] ;
 161:  DO[523]=OFF ;
 162:  JMP LBL[80] ;
 163:   ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U B, 0, 0, 0',
	X =  -158.400  mm,	Y =   -15.894  mm,	Z =  2741.103  mm,
	W =   -91.792 deg,	P =     -.357 deg,	R =   122.600 deg
};
P[2]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X =  -557.806  mm,	Y =  -292.410  mm,	Z =  2577.899  mm,
	W =  -107.925 deg,	P =    -3.536 deg,	R =   122.979 deg
};
P[3]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -1134.710  mm,	Y =  -671.782  mm,	Z =  1955.941  mm,
	W =  -117.901 deg,	P =    -3.388 deg,	R =   113.635 deg
};
P[4:"Tool-Pick-Pounce"]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -1760.306  mm,	Y = -1572.902  mm,	Z =   727.655  mm,
	W =  -160.107 deg,	P =      .639 deg,	R =    91.877 deg
};
P[5]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -1972.818  mm,	Y = -1468.270  mm,	Z =   267.427  mm,
	W =  -160.182 deg,	P =     -.205 deg,	R =    91.920 deg
};
P[6:"PICK_T3_R1_N1"]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -1985.240  mm,	Y = -1468.564  mm,	Z =   232.950  mm,
	W =  -160.182 deg,	P =     -.205 deg,	R =    91.920 deg
};
P[7]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1583.684  mm,	Y = -1296.994  mm,	Z =    83.819  mm,
	W =  -161.692 deg,	P =      .469 deg,	R =    90.825 deg
};
P[8]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1568.816  mm,	Y = -1296.411  mm,	Z =   128.772  mm,
	W =  -161.692 deg,	P =      .469 deg,	R =    90.825 deg
};
P[9]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1439.240  mm,	Y = -1272.943  mm,	Z =   642.635  mm,
	W =  -158.749 deg,	P =     1.873 deg,	R =    92.516 deg
};
P[10]{
   GP1:
	UF : 0, UT : 2,	
	J1=  -145.477 deg,	J2=   -28.708 deg,	J3=    89.000 deg,
	J4=     2.573 deg,	J5=   -83.800 deg,	J6=   -90.000 deg
};
P[11]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -1867.204  mm,	Y = -1443.479  mm,	Z =   196.736  mm,
	W =  -160.144 deg,	P =      .110 deg,	R =    92.203 deg
};
P[12]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -1855.965  mm,	Y = -1442.985  mm,	Z =   227.887  mm,
	W =  -160.143 deg,	P =      .110 deg,	R =    92.203 deg
};
P[13]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1510.600  mm,	Y = -1301.166  mm,	Z =   310.147  mm,
	W =  -161.688 deg,	P =      .471 deg,	R =    90.178 deg
};
P[14]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1568.442  mm,	Y = -1322.387  mm,	Z =   128.985  mm,
	W =  -161.692 deg,	P =      .469 deg,	R =    90.825 deg
};
P[15]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1511.284  mm,	Y = -1331.609  mm,	Z =   344.148  mm,
	W =  -161.404 deg,	P =      .602 deg,	R =    90.397 deg
};
/END
