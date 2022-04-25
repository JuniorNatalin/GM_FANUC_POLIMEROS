/PROG  S103_PK_TCOMUM35_R01
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "TL01 PCK STA35";
PROG_SIZE	= 4893;
CREATE		= DATE 19-03-04  TIME 09:53:56;
MODIFIED	= DATE 21-08-03  TIME 22:02:22;
FILE_NAME	= S103_PK_;
VERSION		= 0;
LINE_COUNT	= 168;
MEMORY_SIZE	= 5389;
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
   2:  ! PATH - PK TOOL FROM STA 35 ;
   3:  !******************************** ;
   4:  !* ROBOT ID: IM01R01B02 ;
   5:  !*    F-196840 ;
   6:  !* Line: Line B02 ;
   7:  !* Platform: XX ;
   8:  !* Tool ID: TOOL xx ;
   9:  !* Program: S110_PK_TXXS35_R01 ;
  10:  !* Application: TOOL PICK ;
  11:  !******************************** ;
  12:  ! Author- Esys Automation ;
  13:  !******************************** ;
  14:   ;
  15:  !++++++++++++++++++++++++++++++++ ;
  16:  !ASSIGN PROGRAM PATH VALUES ;
  17:  !Set ATI Tool and World UFrame ;
  18:  UTOOL_NUM=10 ;
  19:  UFRAME_NUM=0 ;
  20:  ENTER I-ZONE(1) ;
  21:  ENTER I-ZONE(2) ;
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
  35:J P[1:POUNCE] 100% CNT100    ;
  36:J P[2] 100% CNT100    ;
  37:J P[3] 100% CNT100    ;
  38:   ;
  39:L P[4:Tool-Pick-Pounce] 1500mm/sec CNT25    ;
  40:   ;
  41:L P[6] 2000mm/sec FINE    ;
  42:L P[7] 100mm/sec FINE    ;
  43:   ;
  44:L P[8:Pick Tool] 20mm/sec FINE    ;
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
  60:  IF GO[71:0]=127,JMP LBL[1000] ;
  61:  CALL EN_ONLN(31) ;
  62:  CALL EN_AROFF(31) ;
  63:  LBL[1000] ;
  64:   ;
  65:  !If TL LCH Pass, Return Home ;
  66:  !If TL LCH Fail, Unlatch TL, ;
  67:  !  MHFault, and Return Home ;
  68:  IF R[170]=1,JMP LBL[30] ;
  69:   ;
  70:  SELECT R[168]=6,JMP LBL[80] ;
  71:         ELSE,JMP LBL[99] ;
  72:   ;
  73:  !-------------------------------- ;
  74:  LBL[30:TOOL CHECK] ;
  75:   ;
  76:  ! Check if Tool Match with PLC ;
  77:  CALL TL_CHK_KM(R[156]) ;
  78:   ;
  79:  !If TL CHK Pass, Return Home ;
  80:  !If TL CHK Fail, Unlatch Tool, ;
  81:  !  MHFault, and Return Home ;
  82:  IF R[170]=1,JMP LBL[40] ;
  83:  IF R[170]=0,JMP LBL[905] ;
  84:   ;
  85:  !-------------------------------- ;
  86:  LBL[40:COMPLETE PATH] ;
  87:  !TL PK COMPLETE. MOVE AWAY ;
  88:  !AND RETURN HOME ;
  89:   ;
  90:  !Set New Tool and World Frame ;
  91:  UTOOL_NUM=2 ;
  92:  UFRAME_NUM=0 ;
  93:   ;
  94:  !Set Payload= Tool ;
  95:  R[221]=1    ;
  96:  PAYLOAD[R[221]] ;
  97:   ;
  98:  SET SEGMENT(53) ;
  99:  !SEG(53), Tool Pick Depart ;
 100:L P[9] 100mm/sec CNT1    ;
 101:L P[10:Tool-Drop-Pounce] 800mm/sec CNT25    ;
 102:   ;
 103:J P[11] 80% CNT50    ;
 104:J P[12] 75% CNT50    ;
 105:J P[13] 80% CNT50    ;
 106:J P[14] 100% CNT100    ;
 107:   ;
 108:  ! Move To Home ;
 109:  JMP LBL[100] ;
 110:   ;
 111:  !-------------------------------- ;
 112:  LBL[80:LATCHING FAULT] ;
 113:  !MOVE BACK TO HOME WITHOUT TOOL ;
 114:  !on Reverse Path before Tool Pick ;
 115:   ;
 116:  UNLATCH TOOL    ;
 117:   ;
 118:  R[221]=1    ;
 119:  PAYLOAD[R[221]] ;
 120:   ;
 121:  UFRAME_NUM=0 ;
 122:  UTOOL_NUM=10 ;
 123:   ;
 124:L P[15] 50mm/sec FINE    ;
 125:   ;
 126:L P[16] 300mm/sec CNT10    ;
 127:   ;
 128:L P[17:Tool-Pick-Pounce] 1500mm/sec CNT25    ;
 129:   ;
 130:J P[18] 100% CNT100    ;
 131:J P[19] 100% CNT100    ;
 132:J P[20:POUNCE] 100% CNT100    ;
 133:   ;
 134:   ;
 135:  SET SEGMENT(63) ;
 136:  !SEG(63), Robot Move to Home ;
 137:   ;
 138:  R[132]=0    ;
 139:  GO[71:0]=0 ;
 140:   ;
 141:  ! Move To Home ;
 142:  JMP LBL[100] ;
 143:   ;
 144:  !-------------------------------- ;
 145:  LBL[99:ABORT PROGRAM] ;
 146:  MESSAGE[...] ;
 147:  MESSAGE[ABORT PROGRAM] ;
 148:  ABORT ;
 149:   ;
 150:  !-------------------------------- ;
 151:  LBL[100:END OF PROGRAM] ;
 152:  EXIT I-ZONE(1) ;
 153:  EXIT I-ZONE(2) ;
 154:  END ;
 155:   ;
 156:  !***********FAULTS*********** ;
 157:  LBL[905:Invalid Tool Num] ;
 158:  MESSAGE[...] ;
 159:  MESSAGE[TOOL CHANGER FAULT] ;
 160:  MESSAGE[ ROBOT LATCHED TO] ;
 161:  MESSAGE[ WRONG TOOL.] ;
 162:  MESSAGE[ GI[70] DOES NOT ] ;
 163:  MESSAGE[ MATCH TOOL ID ] ;
 164:  DO[523:OFF]=ON ;
 165:  UALM[3] ;
 166:  DO[523:OFF]=OFF ;
 167:  JMP LBL[80] ;
 168:   ;
/POS
P[1:"POUNCE"]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =   322.518  mm,	Y = -1585.514  mm,	Z =   997.688  mm,
	W =   179.419 deg,	P =    33.212 deg,	R =   -88.296 deg
};
P[2]{
   GP1:
	UF : 0, UT : 10,	
	J1=  -121.779 deg,	J2=  -116.484 deg,	J3=    92.245 deg,
	J4=    10.447 deg,	J5=   -73.682 deg,	J6=    17.624 deg
};
P[3]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X = -1217.152  mm,	Y = -1817.149  mm,	Z =  -122.652  mm,
	W =   178.338 deg,	P =     7.862 deg,	R =   -88.381 deg
};
P[4:"Tool-Pick-Pounce"]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X = -1243.985  mm,	Y = -1599.059  mm,	Z =  -696.410  mm,
	W =   179.990 deg,	P =     2.040 deg,	R =   -90.261 deg
};
P[6]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X = -1258.113  mm,	Y = -1539.316  mm,	Z =  -911.539  mm,
	W =  -178.613 deg,	P =     -.406 deg,	R =   -92.372 deg
};
P[7]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X = -1248.227  mm,	Y = -1538.641  mm,	Z = -1214.262  mm,
	W =  -178.452 deg,	P =    -1.796 deg,	R =   -91.745 deg
};
P[8:"Pick Tool"]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X = -1246.999  mm,	Y = -1539.969  mm,	Z = -1264.160  mm,
	W =  -178.452 deg,	P =    -1.577 deg,	R =   -91.739 deg
};
P[9]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1061.482  mm,	Y = -1673.574  mm,	Z = -1243.099  mm,
	W =  -175.113 deg,	P =      .093 deg,	R =   -88.656 deg
};
P[10:"Tool-Drop-Pounce"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1062.522  mm,	Y = -1674.749  mm,	Z = -1200.615  mm,
	W =  -175.185 deg,	P =      .119 deg,	R =   -88.645 deg
};
P[11]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1059.314  mm,	Y = -1779.764  mm,	Z =  -369.678  mm,
	W =  -177.023 deg,	P =     2.722 deg,	R =   -86.344 deg
};
P[12]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -828.914  mm,	Y = -1993.364  mm,	Z =   299.922  mm,
	W =  -177.023 deg,	P =     2.722 deg,	R =   -86.344 deg
};
P[13]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -426.999  mm,	Y = -2219.864  mm,	Z =   543.157  mm,
	W =  -177.431 deg,	P =    13.580 deg,	R =   -94.523 deg
};
P[14]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   513.118  mm,	Y = -1666.966  mm,	Z =   894.038  mm,
	W =  -175.475 deg,	P =    35.264 deg,	R =   -84.803 deg
};
P[15]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X = -1246.506  mm,	Y = -1539.290  mm,	Z = -1255.150  mm,
	W =  -179.011 deg,	P =    -2.347 deg,	R =   -91.603 deg
};
P[16]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X = -1247.100  mm,	Y = -1537.765  mm,	Z = -1218.331  mm,
	W =  -179.011 deg,	P =    -2.348 deg,	R =   -91.604 deg
};
P[17:"Tool-Pick-Pounce"]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X = -1249.392  mm,	Y = -1535.589  mm,	Z = -1040.245  mm,
	W =   179.752 deg,	P =      .640 deg,	R =   -89.210 deg
};
P[18]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X = -1243.985  mm,	Y = -1599.059  mm,	Z =  -696.410  mm,
	W =   179.990 deg,	P =     2.040 deg,	R =   -90.261 deg
};
P[19]{
   GP1:
	UF : 0, UT : 10,	
	J1=  -121.779 deg,	J2=  -116.484 deg,	J3=    92.245 deg,
	J4=    10.447 deg,	J5=   -73.682 deg,	J6=    17.624 deg
};
P[20:"POUNCE"]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =   322.518  mm,	Y = -1585.514  mm,	Z =   997.688  mm,
	W =   179.419 deg,	P =    33.212 deg,	R =   -88.296 deg
};
/END
