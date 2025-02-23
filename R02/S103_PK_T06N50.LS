/PROG  S103_PK_T06N50
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "TL PCK TYP1 N50";
PROG_SIZE	= 4456;
CREATE		= DATE 18-11-02  TIME 10:05:48;
MODIFIED	= DATE 19-07-20  TIME 14:00:28;
FILE_NAME	= S103_PK_;
VERSION		= 0;
LINE_COUNT	= 161;
MEMORY_SIZE	= 4980;
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
  42:L P[12] 500mm/sec CNT1    ;
  43:   ;
  44:L P[11] 50mm/sec FINE    ;
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
 100:L P[8] 2000mm/sec CNT50    ;
 101:   ;
 102:J P[9] 100% CNT100    ;
 103:J P[10] 100% CNT100    ;
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
 115:  UFRAME_NUM=0 ;
 116:  UTOOL_NUM=14 ;
 117:   ;
 118:L P[6:PICK_T6_R1_N1] 50mm/sec FINE    ;
 119:   ;
 120:L P[5] 500mm/sec FINE    ;
 121:   ;
 122:L P[4:Tool-Pick-Pounce] 750mm/sec CNT100    ;
 123:   ;
 124:L P[3] 3000mm/sec CNT100    ;
 125:   ;
 126:J P[2] 100% CNT100    ;
 127:   ;
 128:J P[1] 100% CNT100    ;
 129:   ;
 130:  SET SEGMENT(63) ;
 131:  !SEG(63), Robot Move to Home ;
 132:   ;
 133:  R[132]=0    ;
 134:  GO[71]=0 ;
 135:   ;
 136:  ! Move To Home ;
 137:  JMP LBL[100] ;
 138:   ;
 139:  !-------------------------------- ;
 140:  LBL[99:ABORT PROGRAM] ;
 141:  MESSAGE[...] ;
 142:  MESSAGE[ABORT PROGRAM] ;
 143:  ABORT ;
 144:   ;
 145:  !-------------------------------- ;
 146:  LBL[100:END OF PROGRAM] ;
 147:  END ;
 148:   ;
 149:  !***********FAULTS*********** ;
 150:  LBL[905:Invalid Tool Num] ;
 151:  MESSAGE[...] ;
 152:  MESSAGE[TOOL CHANGER FAULT] ;
 153:  MESSAGE[ ROBOT LATCHED TO] ;
 154:  MESSAGE[ WRONG TOOL.] ;
 155:  MESSAGE[ GI[70] DOES NOT ] ;
 156:  MESSAGE[ MATCH TOOL ID ] ;
 157:  DO[523]=ON ;
 158:  UALM[3] ;
 159:  DO[523]=OFF ;
 160:  JMP LBL[80] ;
 161:   ;
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
	X = -1906.948  mm,	Y = -1503.598  mm,	Z =   528.533  mm,
	W =  -160.181 deg,	P =      .252 deg,	R =    90.652 deg
};
P[5]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2004.090  mm,	Y = -1504.662  mm,	Z =   274.540  mm,
	W =  -159.720 deg,	P =     -.101 deg,	R =    92.571 deg
};
P[6:"PICK_T6_R1_N1"]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2003.948  mm,	Y = -1502.092  mm,	Z =   236.222  mm,
	W =  -159.775 deg,	P =     -.141 deg,	R =    92.561 deg
};
P[7]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1735.313  mm,	Y = -1352.247  mm,	Z =   129.995  mm,
	W =  -161.313 deg,	P =      .229 deg,	R =    91.188 deg
};
P[8]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1626.375  mm,	Y = -1355.798  mm,	Z =   430.373  mm,
	W =  -161.679 deg,	P =      .482 deg,	R =    89.757 deg
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
	X = -2018.876  mm,	Y = -1506.896  mm,	Z =   242.721  mm,
	W =  -159.836 deg,	P =     -.021 deg,	R =    91.558 deg
};
P[12]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2006.329  mm,	Y = -1506.327  mm,	Z =   276.395  mm,
	W =  -159.539 deg,	P =      .100 deg,	R =    92.375 deg
};
/END
