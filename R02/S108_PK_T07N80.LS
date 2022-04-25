/PROG  S108_PK_T07N80
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "TL PCK TYP1 N80";
PROG_SIZE	= 4424;
CREATE		= DATE 18-11-03  TIME 14:37:48;
MODIFIED	= DATE 19-07-20  TIME 15:00:20;
FILE_NAME	= S108_PK_;
VERSION		= 0;
LINE_COUNT	= 151;
MEMORY_SIZE	= 4860;
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
  39:L P[6] 300mm/sec CNT1    ;
  40:   ;
  41:L P[9] 50mm/sec FINE    ;
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
  97:L P[99:Tool-Pick-APR] 50mm/sec FINE    ;
  98:L P[7] 2000mm/sec CNT50    ;
  99:   ;
 100:J P[8:Tool-Pick-Dep] 100% CNT100    ;
 101:   ;
 102:  ! Move To Home ;
 103:  JMP LBL[100] ;
 104:   ;
 105:  !-------------------------------- ;
 106:  LBL[80:LATCHING FAULT] ;
 107:  !MOVE BACK TO HOME WITHOUT TOOL ;
 108:  !on Reverse Path before Tool Pick ;
 109:   ;
 110:  UNLATCH TOOL    ;
 111:   ;
 112:  SET SEGMENT(63) ;
 113:  !SEG(63), Robot Move to Home ;
 114:   ;
 115:L P[5:Pick_T07_N80] 200mm/sec FINE    ;
 116:L P[4:Tool-Pick-APR] 2000mm/sec CNT50    ;
 117:   ;
 118:J P[3] 25% CNT100    ;
 119:J P[2:Tool-Pick-Pounce] 25% CNT100    ;
 120:   ;
 121:J P[1] 100% CNT100    ;
 122:   ;
 123:  R[132]=0    ;
 124:  GO[71]=0 ;
 125:   ;
 126:  ! Move To Home ;
 127:  JMP LBL[100] ;
 128:   ;
 129:  !-------------------------------- ;
 130:  LBL[99:ABORT PROGRAM] ;
 131:  MESSAGE[...] ;
 132:  MESSAGE[ABORT PROGRAM] ;
 133:  ABORT ;
 134:   ;
 135:  !-------------------------------- ;
 136:  LBL[100:END OF PROGRAM] ;
 137:  END ;
 138:   ;
 139:  !*****FAULTS******** ;
 140:  LBL[905:Invalid Tool Num] ;
 141:  MESSAGE[...] ;
 142:  MESSAGE[TOOL CHANGER FAULT] ;
 143:  MESSAGE[ ROBOT LATCHED TO] ;
 144:  MESSAGE[ WRONG TOOL.] ;
 145:  MESSAGE[ GI[70] DOES NOT ] ;
 146:  MESSAGE[ MATCH TOOL ID ] ;
 147:  DO[523]=ON ;
 148:  UALM[3] ;
 149:  DO[523]=OFF ;
 150:  JMP LBL[80] ;
 151:   ;
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
	X = -2086.306  mm,	Y =  1755.085  mm,	Z =  1038.813  mm,
	W =  -160.101 deg,	P =      .311 deg,	R =    91.663 deg
};
P[3]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2295.993  mm,	Y =  1745.626  mm,	Z =   457.761  mm,
	W =  -160.055 deg,	P =     -.130 deg,	R =    91.108 deg
};
P[4:"Tool-Pick-APR"]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2369.506  mm,	Y =  1741.467  mm,	Z =   259.225  mm,
	W =  -160.106 deg,	P =     -.033 deg,	R =    91.537 deg
};
P[5:"Pick_T07_N80"]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2379.218  mm,	Y =  1742.312  mm,	Z =   229.491  mm,
	W =  -160.110 deg,	P =     -.030 deg,	R =    91.542 deg
};
P[6]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2364.338  mm,	Y =  1742.690  mm,	Z =   270.630  mm,
	W =  -160.110 deg,	P =     -.030 deg,	R =    91.542 deg
};
P[7]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2010.952  mm,	Y =  1888.052  mm,	Z =   349.204  mm,
	W =  -161.594 deg,	P =      .233 deg,	R =    89.733 deg
};
P[8:"Tool-Pick-Dep"]{
   GP1:
	UF : 0, UT : 2,	
	J1=   146.539 deg,	J2=    23.979 deg,	J3=    -3.618 deg,
	J4=    -7.591 deg,	J5=   -68.188 deg,	J6=   -27.508 deg
};
P[9]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2379.239  mm,	Y =  1742.309  mm,	Z =   229.443  mm,
	W =  -160.110 deg,	P =     -.030 deg,	R =    91.541 deg
};
P[99:"Tool-Pick-APR"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2088.250  mm,	Y =  1887.466  mm,	Z =   116.929  mm,
	W =  -161.594 deg,	P =      .233 deg,	R =    89.733 deg
};
/END
