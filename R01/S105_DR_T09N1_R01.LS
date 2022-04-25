/PROG  S105_DR_T09N1_R01
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "336 DRP TYP1 NST";
PROG_SIZE	= 4060;
CREATE		= DATE 18-06-15  TIME 14:18:34;
MODIFIED	= DATE 19-07-26  TIME 08:12:54;
FILE_NAME	= S105_DR_;
VERSION		= 0;
LINE_COUNT	= 130;
MEMORY_SIZE	= 4556;
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
  21:  PAYLOAD[8] ;
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
  46:L P[3] 400mm/sec FINE    ;
  47:L P[13:Tool-Pick] 50mm/sec FINE    ;
  48:  !-------------------------------- ;
  49:  LBL[20:UNLATCH TOOL] ;
  50:   ;
  51:  UNLATCH TOOL    ;
  52:  !ADD DISCONNECT COMMANDS ;
  53:  !ADD ALL EOAT DEVICES ;
  54:  !CALL EN_ARON(x) ;
  55:  !x = EOAT ENET Node # ;
  56:   ;
  57:  !If TL UNL Pass, Return Home ;
  58:  !If TL UNL Fail, Latch Tool, ;
  59:  !  MHFault, and Return Home ;
  60:  IF R[170]=1,JMP LBL[30] ;
  61:   ;
  62:  SELECT R[168]=7,JMP LBL[80] ;
  63:         ELSE,JMP LBL[99] ;
  64:   ;
  65:  !-------------------------------- ;
  66:  LBL[30:COMPLETE PATH] ;
  67:  !TL DRP COMPLETE. MOVE AWAY ;
  68:  !AND RETURN HOME ;
  69:   ;
  70:  !Set ATI Tool and World Frame ;
  71:  !Modify UTOOL if required ;
  72:  UTOOL_NUM=10 ;
  73:  UFRAME_NUM=0 ;
  74:   ;
  75:  !Set Payload= ATI ;
  76:  PAYLOAD[1] ;
  77:   ;
  78:L P[17] 50mm/sec FINE    ;
  79:  WAIT DI[909:ON ]=OFF    ;
  80:   ;
  81:  SET SEGMENT(51) ;
  82:   ;
  83:L P[15:Tool-Pick-Apr] 2000mm/sec CNT100    ;
  84:   ;
  85:J P[14] 100% CNT100    ;
  86:J P[5:Tool-Pick-Pounce] 100% CNT50    ;
  87:   ;
  88:  ! Move To Home ;
  89:  JMP LBL[100] ;
  90:   ;
  91:  !-------------------------------- ;
  92:  LBL[80:UNLATCH FAULT] ;
  93:  !MOVE BACK TO HOME WITH TOOL ;
  94:  !on Reverse Path before Tool Drop ;
  95:  PAYLOAD[8] ;
  96:   ;
  97:  LATCH TOOL    ;
  98:  WAIT DI[909:ON ]=ON    ;
  99:   ;
 100:  SET SEGMENT(63) ;
 101:  !SEG(63), Robot Move to Home ;
 102:   ;
 103:L P[4:Tool-Pick-Dep-1] 50mm/sec FINE    ;
 104:L P[10:Tool-Pick-Dep-2] 2000mm/sec CNT50    ;
 105:   ;
 106:J P[20] 100% CNT100    ;
 107:J P[19] 100% CNT100    ;
 108:J P[11] 100% CNT100    ;
 109:   ;
 110:J P[2] 100% CNT100    ;
 111:   ;
 112:J P[1:Tool-Pick-Clear] 50% CNT100    ;
 113:   ;
 114:   ;
 115:  SET SEGMENT(63) ;
 116:  R[132]=0    ;
 117:  GO[71:0]=0 ;
 118:   ;
 119:  ! Move To Home ;
 120:  JMP LBL[100] ;
 121:   ;
 122:  !-------------------------------- ;
 123:  LBL[99:ABORT PROGRAM] ;
 124:  MESSAGE[...] ;
 125:  MESSAGE[ABORT PROGRAM] ;
 126:  ABORT ;
 127:   ;
 128:  !-------------------------------- ;
 129:  LBL[100:END OF PROGRAM] ;
 130:  END ;
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
P[3]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1755.575  mm,	Y = -1522.494  mm,	Z = -2442.417  mm,
	W =   161.895 deg,	P =    -3.528 deg,	R =    88.622 deg
};
P[4:"Tool-Pick-Dep-1"]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1746.068  mm,	Y = -1529.782  mm,	Z = -2437.266  mm,
	W =   161.000 deg,	P =    -3.308 deg,	R =    88.551 deg
};
P[5:"Tool-Pick-Pounce"]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  2207.383  mm,	Y = -1563.618  mm,	Z =   -12.197  mm,
	W =  -168.976 deg,	P =      .128 deg,	R =   -67.418 deg
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
	J1=   -55.079 deg,	J2=   -24.454 deg,	J3=    14.614 deg,
	J4=   -51.127 deg,	J5=   -44.471 deg,	J6=  -166.362 deg
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
	X =  1762.178  mm,	Y = -1521.414  mm,	Z = -2462.488  mm,
	W =   161.895 deg,	P =    -3.528 deg,	R =    88.622 deg
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
	X =  1609.186  mm,	Y = -1549.184  mm,	Z = -2041.941  mm,
	W =   161.000 deg,	P =    -3.309 deg,	R =    88.551 deg
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
	X =  1736.262  mm,	Y = -1531.172  mm,	Z = -2408.946  mm,
	W =   161.000 deg,	P =    -3.309 deg,	R =    88.551 deg
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
/END
