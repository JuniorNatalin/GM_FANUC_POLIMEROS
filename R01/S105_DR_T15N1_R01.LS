/PROG  S105_DR_T15N1_R01
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "311 DRP TYP1 NST";
PROG_SIZE	= 4298;
CREATE		= DATE 19-01-11  TIME 09:00:00;
MODIFIED	= DATE 19-01-11  TIME 09:00:00;
FILE_NAME	= S105_DR_;
VERSION		= 0;
LINE_COUNT	= 133;
MEMORY_SIZE	= 4782;
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
/MN
   1:  !******************************** ;
   2:  ! PATH - drop tool into N1=STA 50 ;
   3:  !******************************** ;
   4:  !* Robot ID: XXXXXR01B1 ;
   5:  !*    F-19XXXX ;
   6:  !* Line: XXXXXXXX ;
   7:  !* Platform: XX ;
   8:  !* Tool ID: TOOL xx ;
   9:  !* Program: S105_DR_TxxN1 ;
  10:  !* Application: TOOL DROP ;
  11:  !******************************** ;
  12:  ! Author- Esys Automation ;
  13:  !******************************** ;
  14:   ;
  15:  !++++++++++++++++++++++++++++++++ ;
  16:  !ASSIGN PROGRAM PATH VALUES ;
  17:  !-------------------------------- ;
  18:  !Set Robot Tool and World UFrame ;
  19:  UTOOL_NUM=10 ;
  20:  UFRAME_NUM=0 ;
  21:  PAYLOAD[6] ;
  22:   ;
  23:  !++++++++++++++++++++++++++++++++ ;
  24:   ;
  25:  !******************************** ;
  26:  !BEGINNING OF PROGRAM PATH ;
  27:  !MOVE TO NEST 1 TOOL DROP ;
  28:  !******************************** ;
  29:   ;
  30:  !-------------------------------- ;
  31:  LBL[10:MOVE TO TL DRP] ;
  32:   ;
  33:  SET SEGMENT(50) ;
  34:  !SEG(50), Approach Tool Drop ;
  35:   ;
  36:J P[12:Tool-Pick-Clear] 50% CNT100    ;
  37:   ;
  38:J P[18] 100% CNT100    ;
  39:J P[16] 100% CNT100    ;
  40:J P[9] 100% CNT100    ;
  41:J P[8] 100% CNT100    ;
  42:J P[7] 100% CNT100    ;
  43:   ;
  44:  !REPROGRAMAR DEPOSITO ;
  45:   ;
  46:L P[10:Tool-Pick-Dep-2] 2000mm/sec CNT50    ;
  47:L P[4:Tool-Pick-Dep-1] 400mm/sec CNT5    ;
  48:   ;
  49:L P[13:Tool-Pick] 50mm/sec FINE    ;
  50:  !-------------------------------- ;
  51:  LBL[20:UNLATCH TOOL] ;
  52:   ;
  53:  UNLATCH TOOL    ;
  54:  !ADD DISCONNECT COMMANDS ;
  55:  !ADD ALL EOAT DEVICES ;
  56:  !CALL EN_ARON(x) ;
  57:  !x = EOAT ENET Node # ;
  58:   ;
  59:  !If TL UNL Pass, Return Home ;
  60:  !If TL UNL Fail, Latch Tool, ;
  61:  !  MHFault, and Return Home ;
  62:  IF R[170]=1,JMP LBL[30] ;
  63:   ;
  64:  SELECT R[168]=7,JMP LBL[80] ;
  65:         ELSE,JMP LBL[99] ;
  66:   ;
  67:  !-------------------------------- ;
  68:  LBL[30:COMPLETE PATH] ;
  69:  !TL DRP COMPLETE. MOVE AWAY ;
  70:  !AND RETURN HOME ;
  71:   ;
  72:  !Set ATI Tool and World Frame ;
  73:  !Modify UTOOL if required ;
  74:  UTOOL_NUM=10 ;
  75:  UFRAME_NUM=0 ;
  76:   ;
  77:  !Set Payload= ATI ;
  78:  PAYLOAD[1] ;
  79:   ;
  80:L P[17] 50mm/sec FINE    ;
  81:  WAIT DI[909:ON ]=OFF    ;
  82:  SET SEGMENT(51) ;
  83:   ;
  84:L P[15:Tool-Pick-Apr] 2000mm/sec CNT100    ;
  85:   ;
  86:J P[22] 100% CNT100    ;
  87:J P[14] 100% CNT100    ;
  88:J P[5:Tool-Pick-Pounce] 100% CNT50    ;
  89:   ;
  90:  ! Move To Home ;
  91:  JMP LBL[100] ;
  92:   ;
  93:  !-------------------------------- ;
  94:  LBL[80:UNLATCH FAULT] ;
  95:  !MOVE BACK TO HOME WITH TOOL ;
  96:  !on Reverse Path before Tool Drop ;
  97:  PAYLOAD[6] ;
  98:   ;
  99:  LATCH TOOL    ;
 100:   ;
 101:  SET SEGMENT(63) ;
 102:  !SEG(63), Robot Move to Home ;
 103:  WAIT DI[909:ON ]=ON    ;
 104:   ;
 105:L P[6:Tool-Pick-Dep-1] 50mm/sec FINE    ;
 106:L P[3:Tool-Pick-Dep-2] 1500mm/sec CNT50    ;
 107:   ;
 108:J P[21] 100% CNT100    ;
 109:J P[20] 100% CNT100    ;
 110:J P[19] 100% CNT100    ;
 111:J P[11] 100% CNT100    ;
 112:   ;
 113:J P[2] 100% CNT100    ;
 114:   ;
 115:J P[1:Tool-Pick-Clear] 50% CNT100    ;
 116:   ;
 117:   ;
 118:  SET SEGMENT(63) ;
 119:  R[132]=0    ;
 120:  GO[71:0]=0 ;
 121:   ;
 122:  ! Move To Home ;
 123:  JMP LBL[100] ;
 124:   ;
 125:  !-------------------------------- ;
 126:  LBL[99:ABORT PROGRAM] ;
 127:  MESSAGE[...] ;
 128:  MESSAGE[ABORT PROGRAM] ;
 129:  ABORT ;
 130:   ;
 131:  !-------------------------------- ;
 132:  LBL[100:END OF PROGRAM] ;
 133:  END ;
/POS
P[1:"Tool-Pick-Clear"]{
   GP1:
	UF : 0, UT : 10,	
	J1=   -10.267 deg,	J2=   -98.488 deg,	J3=    85.719 deg,
	J4=    -7.725 deg,	J5=   -48.538 deg,	J6=  -164.955 deg
};
P[2]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, -1',
	X =  2173.722  mm,	Y = -1206.544  mm,	Z =   243.055  mm,
	W =   156.371 deg,	P =    26.445 deg,	R =   111.837 deg
};
P[3:"Tool-Pick-Dep-2"]{
   GP1:
	UF : 0, UT : 10,	
	J1=   -53.619 deg,	J2=     -.717 deg,	J3=    14.822 deg,
	J4=   -50.972 deg,	J5=   -44.089 deg,	J6=  -163.406 deg
};
P[4:"Tool-Pick-Dep-1"]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1709.110  mm,	Y = -1545.939  mm,	Z = -2455.731  mm,
	W =   159.718 deg,	P =    -2.016 deg,	R =    91.084 deg
};
P[5:"Tool-Pick-Pounce"]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  2207.383  mm,	Y = -1563.618  mm,	Z =   -12.197  mm,
	W =  -168.976 deg,	P =      .128 deg,	R =   -67.418 deg
};
P[6:"Tool-Pick-Dep-1"]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1704.016  mm,	Y = -1602.879  mm,	Z = -2438.324  mm,
	W =   159.498 deg,	P =    -1.853 deg,	R =    92.531 deg
};
P[7]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1541.040  mm,	Y = -1572.172  mm,	Z = -1986.785  mm,
	W =   159.769 deg,	P =    -2.514 deg,	R =    91.742 deg
};
P[8]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1583.785  mm,	Y = -1598.329  mm,	Z = -1432.966  mm,
	W =   159.592 deg,	P =    -2.308 deg,	R =    93.440 deg
};
P[9]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1583.784  mm,	Y = -1598.329  mm,	Z = -1108.965  mm,
	W =   159.592 deg,	P =    -2.308 deg,	R =    93.440 deg
};
P[10:"Tool-Pick-Dep-2"]{
   GP1:
	UF : 0, UT : 10,	
	J1=   -51.556 deg,	J2=     8.800 deg,	J3=    15.040 deg,
	J4=   -52.652 deg,	J5=   -44.201 deg,	J6=  -164.948 deg
};
P[11]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, -1',
	X =  1583.784  mm,	Y = -1598.328  mm,	Z =   -19.364  mm,
	W =   159.592 deg,	P =    -2.308 deg,	R =    93.440 deg
};
P[12:"Tool-Pick-Clear"]{
   GP1:
	UF : 0, UT : 10,	
	J1=   -10.267 deg,	J2=   -98.488 deg,	J3=    85.719 deg,
	J4=    -7.725 deg,	J5=   -48.538 deg,	J6=  -164.955 deg
};
P[13:"Tool-Pick"]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1721.530  mm,	Y = -1543.126  mm,	Z = -2476.672  mm,
	W =   159.717 deg,	P =    -2.015 deg,	R =    91.085 deg
};
P[14]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1820.555  mm,	Y = -2125.244  mm,	Z =  -182.312  mm,
	W =  -139.949 deg,	P =    43.105 deg,	R =  -159.871 deg
};
P[15:"Tool-Pick-Apr"]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1655.556  mm,	Y = -1554.537  mm,	Z = -2308.906  mm,
	W =   159.768 deg,	P =    -2.514 deg,	R =    91.742 deg
};
P[16]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, -1',
	X =  1583.784  mm,	Y = -1598.328  mm,	Z =   -19.364  mm,
	W =   159.592 deg,	P =    -2.308 deg,	R =    93.440 deg
};
P[17]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1707.276  mm,	Y = -1546.779  mm,	Z = -2449.677  mm,
	W =   159.768 deg,	P =    -2.514 deg,	R =    91.742 deg
};
P[18]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, -1',
	X =  2173.722  mm,	Y = -1206.544  mm,	Z =   243.055  mm,
	W =   156.371 deg,	P =    26.445 deg,	R =   111.837 deg
};
P[19]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1583.784  mm,	Y = -1598.329  mm,	Z = -1108.965  mm,
	W =   159.592 deg,	P =    -2.308 deg,	R =    93.440 deg
};
P[20]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1583.785  mm,	Y = -1598.329  mm,	Z = -1432.966  mm,
	W =   159.592 deg,	P =    -2.308 deg,	R =    93.440 deg
};
P[21]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1675.668  mm,	Y = -1594.186  mm,	Z = -1973.574  mm,
	W =   159.592 deg,	P =    -2.308 deg,	R =    93.440 deg
};
P[22]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1519.997  mm,	Y = -1574.870  mm,	Z = -1939.946  mm,
	W =   159.768 deg,	P =    -2.514 deg,	R =    91.742 deg
};
/END
