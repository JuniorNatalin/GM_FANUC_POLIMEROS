/PROG  S105_DR_T31N1_R01
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "383 DRP TYP1 NST";
PROG_SIZE	= 4307;
CREATE		= DATE 19-07-18  TIME 14:28:10;
MODIFIED	= DATE 20-12-08  TIME 17:19:20;
FILE_NAME	= S105_DR_;
VERSION		= 0;
LINE_COUNT	= 140;
MEMORY_SIZE	= 4763;
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
  42:   ;
  43:  !REPROGRAMAR DEPOSITO ;
  44:   ;
  45:L P[10:Tool-Pick-Dep-2] 2000mm/sec CNT50    ;
  46:L P[23:Tool-Pick-Dep-1] 450mm/sec FINE    ;
  47:   ;
  48:L P[13:Tool-Pick] 50mm/sec FINE    ;
  49:  !-------------------------------- ;
  50:  LBL[20:UNLATCH TOOL] ;
  51:   ;
  52:  UNLATCH TOOL    ;
  53:  !ADD DISCONNECT COMMANDS ;
  54:  !ADD ALL EOAT DEVICES ;
  55:  !CALL EN_ARON(x) ;
  56:  !x = EOAT ENET Node # ;
  57:   ;
  58:  !If TL UNL Pass, Return Home ;
  59:  !If TL UNL Fail, Latch Tool, ;
  60:  !  MHFault, and Return Home ;
  61:  IF R[170]=1,JMP LBL[30] ;
  62:   ;
  63:  SELECT R[168]=7,JMP LBL[80] ;
  64:         ELSE,JMP LBL[99] ;
  65:   ;
  66:  !-------------------------------- ;
  67:  LBL[30:COMPLETE PATH] ;
  68:  !TL DRP COMPLETE. MOVE AWAY ;
  69:  !AND RETURN HOME ;
  70:   ;
  71:  !Set ATI Tool and World Frame ;
  72:  !Modify UTOOL if required ;
  73:  UTOOL_NUM=10 ;
  74:  UFRAME_NUM=0 ;
  75:   ;
  76:  !Set Payload= ATI ;
  77:  PAYLOAD[1] ;
  78:   ;
  79:L P[4] 50mm/sec FINE    ;
  80:   ;
  81:   ;
  82:   ;
  83:   ;
  84:  WAIT DI[909:ON ]=OFF    ;
  85:  SET SEGMENT(51) ;
  86:   ;
  87:L P[15:Tool-Pick-Apr] 2000mm/sec CNT100    ;
  88:   ;
  89:J P[22] 100% CNT100    ;
  90:J P[14] 100% CNT100    ;
  91:J P[5:Tool-Pick-Pounce] 100% CNT50    ;
  92:   ;
  93:  ! Move To Home ;
  94:  JMP LBL[100] ;
  95:   ;
  96:  !-------------------------------- ;
  97:  LBL[80:UNLATCH FAULT] ;
  98:  !MOVE BACK TO HOME WITH TOOL ;
  99:  !on Reverse Path before Tool Drop ;
 100:  PAYLOAD[6] ;
 101:   ;
 102:  LATCH TOOL    ;
 103:   ;
 104:  SET SEGMENT(63) ;
 105:  !SEG(63), Robot Move to Home ;
 106:  WAIT DI[909:ON ]=ON    ;
 107:   ;
 108:L P[6:Tool-Pick-Dep-1] 50mm/sec FINE    ;
 109:L P[3:Tool-Pick-Dep-2] 1500mm/sec CNT50    ;
 110:   ;
 111:J P[21] 100% CNT100    ;
 112:J P[20] 100% CNT100    ;
 113:J P[19] 100% CNT100    ;
 114:J P[11] 100% CNT100    ;
 115:   ;
 116:J P[2] 100% CNT100    ;
 117:   ;
 118:J P[1:Tool-Pick-Clear] 50% CNT100    ;
 119:   ;
 120:   ;
 121:  SET SEGMENT(63) ;
 122:  R[132]=0    ;
 123:  GO[71:0]=0 ;
 124:   ;
 125:  ! Move To Home ;
 126:  JMP LBL[100] ;
 127:   ;
 128:  !-------------------------------- ;
 129:  LBL[99:ABORT PROGRAM] ;
 130:  MESSAGE[...] ;
 131:  MESSAGE[ABORT PROGRAM] ;
 132:  ABORT ;
 133:   ;
 134:  !-------------------------------- ;
 135:  LBL[100:END OF PROGRAM] ;
 136:   ;
 137:  MOVE TO HOME    ;
 138:   ;
 139:   ;
 140:  END ;
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
P[4]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1625.457  mm,	Y = -1550.340  mm,	Z = -2305.000  mm,
	W =   161.626 deg,	P =    -2.860 deg,	R =    89.371 deg
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
P[8]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1485.155  mm,	Y = -1611.482  mm,	Z = -1648.808  mm,
	W =   159.433 deg,	P =    -2.446 deg,	R =    92.862 deg
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
	J1=   -54.632 deg,	J2=   -13.244 deg,	J3=    13.663 deg,
	J4=   -52.027 deg,	J5=   -43.570 deg,	J6=  -166.510 deg
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
	X =  1676.985  mm,	Y = -1543.177  mm,	Z = -2459.688  mm,
	W =   161.626 deg,	P =    -2.860 deg,	R =    89.371 deg
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
	X =  1643.769  mm,	Y = -1574.095  mm,	Z = -2259.038  mm,
	W =   161.683 deg,	P =    -3.382 deg,	R =    87.797 deg
};
P[16]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, -1',
	X =  1583.784  mm,	Y = -1598.328  mm,	Z =   -19.364  mm,
	W =   159.592 deg,	P =    -2.308 deg,	R =    93.440 deg
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
P[23:"Tool-Pick-Dep-1"]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1551.042  mm,	Y = -1560.693  mm,	Z = -2081.612  mm,
	W =   161.626 deg,	P =    -2.860 deg,	R =    89.371 deg
};
/END
