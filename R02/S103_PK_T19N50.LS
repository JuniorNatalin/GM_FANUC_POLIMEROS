/PROG  S103_PK_T19N50
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "TL PCK TYP1 N50";
PROG_SIZE	= 4479;
CREATE		= DATE 21-04-29  TIME 07:13:18;
MODIFIED	= DATE 21-04-29  TIME 09:01:12;
FILE_NAME	= S103_PK_;
VERSION		= 0;
LINE_COUNT	= 159;
MEMORY_SIZE	= 4883;
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
  35:J P[2] 100% CNT100    ;
  36:J P[3] 100% CNT100    ;
  37:J P[4] 100% CNT100    ;
  38:   ;
  39:L P[5] 500mm/sec CNT1    ;
  40:   ;
  41:L P[6:Pick Tool - 19] 30mm/sec FINE    ;
  42:   ;
  43:  !-------------------------------- ;
  44:  LBL[20:LATCH TOOL] ;
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
  58:  CALL EN_AROFF(31) ;
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
  86:  UTOOL_NUM=2 ;
  87:  UFRAME_NUM=0 ;
  88:   ;
  89:  !Set Payload= Tool ;
  90:  R[221]=2    ;
  91:  PAYLOAD[R[221]] ;
  92:   ;
  93:  SET SEGMENT(53) ;
  94:  !SEG(53), Tool Pick Depart ;
  95:   ;
  96:L P[7] 100mm/sec FINE    ;
  97:   ;
  98:L P[8] 2000mm/sec CNT50    ;
  99:   ;
 100:J P[9] 100% CNT100    ;
 101:J P[10] 100% CNT100    ;
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
 113:  UFRAME_NUM=0 ;
 114:  UTOOL_NUM=14 ;
 115:   ;
 116:L P[11:PICK_T3_R1_N1] 50mm/sec FINE    ;
 117:   ;
 118:L P[12] 500mm/sec FINE    ;
 119:   ;
 120:L P[13] 750mm/sec CNT100    ;
 121:   ;
 122:L P[3] 3000mm/sec CNT100    ;
 123:   ;
 124:J P[2] 100% CNT100    ;
 125:   ;
 126:J P[1] 100% CNT100    ;
 127:   ;
 128:  SET SEGMENT(63) ;
 129:  !SEG(63), Robot Move to Home ;
 130:   ;
 131:  R[132]=0    ;
 132:  GO[71]=0 ;
 133:   ;
 134:  ! Move To Home ;
 135:  JMP LBL[100] ;
 136:   ;
 137:  !-------------------------------- ;
 138:  LBL[99:ABORT PROGRAM] ;
 139:  MESSAGE[...] ;
 140:  MESSAGE[ABORT PROGRAM] ;
 141:  ABORT ;
 142:   ;
 143:  !-------------------------------- ;
 144:  LBL[100:END OF PROGRAM] ;
 145:  END ;
 146:   ;
 147:  !***********FAULTS*********** ;
 148:  LBL[905:Invalid Tool Num] ;
 149:  MESSAGE[...] ;
 150:  MESSAGE[TOOL CHANGER FAULT] ;
 151:  MESSAGE[ ROBOT LATCHED TO] ;
 152:  MESSAGE[ WRONG TOOL.] ;
 153:  MESSAGE[ GI[70] DOES NOT ] ;
 154:  MESSAGE[ MATCH TOOL ID ] ;
 155:  DO[523]=ON ;
 156:  UALM[3] ;
 157:  DO[523]=OFF ;
 158:  JMP LBL[80] ;
 159:   ;
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
P[4]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -1810.175  mm,	Y = -1479.010  mm,	Z =   701.566  mm,
	W =  -160.099 deg,	P =      .282 deg,	R =    92.862 deg
};
P[5]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -1967.542  mm,	Y = -1489.031  mm,	Z =   266.032  mm,
	W =  -160.099 deg,	P =      .282 deg,	R =    92.862 deg
};
P[6:"Pick Tool - 19"]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -1981.530  mm,	Y = -1489.919  mm,	Z =   227.319  mm,
	W =  -160.099 deg,	P =      .282 deg,	R =    92.862 deg
};
P[7]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1690.712  mm,	Y = -1338.689  mm,	Z =   126.799  mm,
	W =  -161.648 deg,	P =      .645 deg,	R =    91.486 deg
};
P[8]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1567.726  mm,	Y = -1331.321  mm,	Z =   497.964  mm,
	W =  -161.648 deg,	P =      .645 deg,	R =    91.486 deg
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
P[11:"PICK_T3_R1_N1"]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -1985.240  mm,	Y = -1468.564  mm,	Z =   232.950  mm,
	W =  -160.182 deg,	P =     -.205 deg,	R =    91.920 deg
};
P[12]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -1972.818  mm,	Y = -1468.270  mm,	Z =   267.427  mm,
	W =  -160.182 deg,	P =     -.205 deg,	R =    91.920 deg
};
P[13:""]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -1760.306  mm,	Y = -1572.902  mm,	Z =   727.655  mm,
	W =  -160.107 deg,	P =      .639 deg,	R =    91.877 deg
};
/END
