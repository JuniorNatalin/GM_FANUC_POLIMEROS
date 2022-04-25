/PROG  S103_PK_T12N50
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "TL PCK TYP1 N50";
PROG_SIZE	= 4466;
CREATE		= DATE 18-11-16  TIME 13:06:56;
MODIFIED	= DATE 19-07-20  TIME 15:43:56;
FILE_NAME	= S103_PK_;
VERSION		= 0;
LINE_COUNT	= 162;
MEMORY_SIZE	= 4986;
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
  34:   ;
  35:J P[1] 100% CNT100    ;
  36:   ;
  37:J P[2] 100% CNT100    ;
  38:J P[3] 100% CNT100    ;
  39:   ;
  40:J P[4:Tool-Pick-Pounce] 100% CNT100    ;
  41:   ;
  42:L P[11] 500mm/sec CNT1    ;
  43:   ;
  44:L P[12] 50mm/sec FINE    ;
  45:   ;
  46:  !-------------------------------- ;
  47:  LBL[20:LATCH TOOL] ;
  48:  LATCH TOOL    ;
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
  99:L P[7] 100mm/sec FINE    ;
 100:   ;
 101:L P[8] 2000mm/sec CNT50    ;
 102:   ;
 103:J P[9] 100% CNT100    ;
 104:J P[10] 100% CNT100    ;
 105:   ;
 106:  ! Move To Home ;
 107:  JMP LBL[100] ;
 108:   ;
 109:  !-------------------------------- ;
 110:  LBL[80:LATCHING FAULT] ;
 111:  !MOVE BACK TO HOME WITHOUT TOOL ;
 112:  !on Reverse Path before Tool Pick ;
 113:   ;
 114:  UNLATCH TOOL    ;
 115:   ;
 116:  UFRAME_NUM=0 ;
 117:  UTOOL_NUM=14 ;
 118:   ;
 119:L P[6:PICK_T12_R1_N1] 50mm/sec FINE    ;
 120:   ;
 121:L P[5] 500mm/sec FINE    ;
 122:   ;
 123:L P[4:Tool-Pick-Pounce] 750mm/sec CNT100    ;
 124:   ;
 125:L P[3] 3000mm/sec CNT100    ;
 126:   ;
 127:J P[2] 100% CNT100    ;
 128:   ;
 129:J P[1] 100% CNT100    ;
 130:   ;
 131:  SET SEGMENT(63) ;
 132:  !SEG(63), Robot Move to Home ;
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
 150:  !***********FAULTS*********** ;
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
	X = -1884.319  mm,	Y = -1480.761  mm,	Z =   484.909  mm,
	W =  -160.186 deg,	P =     -.015 deg,	R =    91.377 deg
};
P[5]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -1951.096  mm,	Y = -1488.067  mm,	Z =   264.098  mm,
	W =  -160.186 deg,	P =     -.015 deg,	R =    91.377 deg
};
P[6:"PICK_T12_R1_N1"]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -1963.050  mm,	Y = -1488.346  mm,	Z =   230.907  mm,
	W =  -160.186 deg,	P =     -.015 deg,	R =    91.377 deg
};
P[7]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1683.492  mm,	Y = -1346.337  mm,	Z =    92.333  mm,
	W =  -161.730 deg,	P =      .342 deg,	R =    89.831 deg
};
P[8]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1666.820  mm,	Y = -1346.000  mm,	Z =   138.620  mm,
	W =  -161.730 deg,	P =      .342 deg,	R =    89.831 deg
};
P[9]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1089.020  mm,	Y =  -483.560  mm,	Z =  1671.146  mm,
	W =  -119.401 deg,	P =    -2.194 deg,	R =   112.860 deg
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
	X = -1952.926  mm,	Y = -1490.644  mm,	Z =   270.185  mm,
	W =  -160.189 deg,	P =      .120 deg,	R =    91.629 deg
};
P[12]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -1966.901  mm,	Y = -1491.124  mm,	Z =   231.371  mm,
	W =  -160.189 deg,	P =      .121 deg,	R =    91.629 deg
};
/END
