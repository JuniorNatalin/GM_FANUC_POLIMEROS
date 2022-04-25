/PROG  S105_DR_T17N1_R01
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "142 DRP TYP1 NST";
PROG_SIZE	= 4233;
CREATE		= DATE 18-10-20  TIME 10:55:22;
MODIFIED	= DATE 19-03-08  TIME 08:20:54;
FILE_NAME	= S105_DR_;
VERSION		= 0;
LINE_COUNT	= 131;
MEMORY_SIZE	= 4725;
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
  47:L P[22:Tool-Pick-Dep-1] 400mm/sec CNT5    ;
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
  86:J P[14] 100% CNT100    ;
  87:J P[5:Tool-Pick-Pounce] 100% CNT50    ;
  88:   ;
  89:  ! Move To Home ;
  90:  JMP LBL[100] ;
  91:   ;
  92:  !-------------------------------- ;
  93:  LBL[80:UNLATCH FAULT] ;
  94:  !MOVE BACK TO HOME WITH TOOL ;
  95:  !on Reverse Path before Tool Drop ;
  96:  PAYLOAD[6] ;
  97:   ;
  98:  LATCH TOOL    ;
  99:   ;
 100:  SET SEGMENT(63) ;
 101:  !SEG(63), Robot Move to Home ;
 102:  WAIT DI[909:ON ]=ON    ;
 103:   ;
 104:L P[6:Tool-Pick-Dep-1] 50mm/sec FINE    ;
 105:L P[3:Tool-Pick-Dep-2] 1500mm/sec CNT50    ;
 106:   ;
 107:J P[21] 100% CNT100    ;
 108:J P[20] 100% CNT100    ;
 109:J P[19] 100% CNT100    ;
 110:J P[11] 100% CNT100    ;
 111:J P[2] 100% CNT100    ;
 112:   ;
 113:J P[1:Tool-Pick-Clear] 50% CNT100    ;
 114:   ;
 115:   ;
 116:  SET SEGMENT(63) ;
 117:  R[132]=0    ;
 118:  GO[71:0]=0 ;
 119:   ;
 120:  ! Move To Home ;
 121:  JMP LBL[100] ;
 122:   ;
 123:  !-------------------------------- ;
 124:  LBL[99:ABORT PROGRAM] ;
 125:  MESSAGE[...] ;
 126:  MESSAGE[ABORT PROGRAM] ;
 127:  ABORT ;
 128:   ;
 129:  !-------------------------------- ;
 130:  LBL[100:END OF PROGRAM] ;
 131:  END ;
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
	J1=   -51.184 deg,	J2=     1.892 deg,	J3=    15.173 deg,
	J4=   -52.842 deg,	J5=   -44.205 deg,	J6=  -165.184 deg
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
	X =  1735.351  mm,	Y = -1549.398  mm,	Z = -2418.706  mm,
	W =   159.711 deg,	P =    -2.256 deg,	R =    93.051 deg
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
	J1=   -53.884 deg,	J2=   -17.737 deg,	J3=    14.760 deg,
	J4=   -49.170 deg,	J5=   -44.091 deg,	J6=  -166.994 deg
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
	X =  1745.535  mm,	Y = -1543.126  mm,	Z = -2460.209  mm,
	W =   161.732 deg,	P =    -2.720 deg,	R =    91.018 deg
};
P[14]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1933.228  mm,	Y = -2247.035  mm,	Z =   134.679  mm,
	W =  -128.449 deg,	P =    45.876 deg,	R =  -151.796 deg
};
P[15:"Tool-Pick-Apr"]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1328.231  mm,	Y = -1603.635  mm,	Z = -1418.003  mm,
	W =   159.768 deg,	P =    -2.515 deg,	R =    91.742 deg
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
	X =  1733.605  mm,	Y = -1545.061  mm,	Z = -2424.018  mm,
	W =   161.732 deg,	P =    -2.721 deg,	R =    91.019 deg
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
	X =  1541.040  mm,	Y = -1572.173  mm,	Z = -1986.785  mm,
	W =   159.769 deg,	P =    -2.514 deg,	R =    91.742 deg
};
P[22:"Tool-Pick-Dep-1"]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1741.026  mm,	Y = -1544.404  mm,	Z = -2435.034  mm,
	W =   161.732 deg,	P =    -2.721 deg,	R =    91.019 deg
};
/END
