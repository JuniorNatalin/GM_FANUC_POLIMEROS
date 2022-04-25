/PROG  S105_DR_T03N1_R01
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "334 DRP TYP1 NST";
PROG_SIZE	= 3691;
CREATE		= DATE 18-03-05  TIME 18:54:50;
MODIFIED	= DATE 19-03-07  TIME 15:24:02;
FILE_NAME	= S105_DR_;
VERSION		= 0;
LINE_COUNT	= 115;
MEMORY_SIZE	= 4119;
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
  20:  UFRAME_NUM=1 ;
  21:  !++++++++++++++++++++++++++++++++ ;
  22:   ;
  23:  !******************************** ;
  24:  !BEGINNING OF PROGRAM PATH ;
  25:  !MOVE TO NEST 1 TOOL DROP ;
  26:  !******************************** ;
  27:   ;
  28:  !-------------------------------- ;
  29:  LBL[10:MOVE TO TL DRP] ;
  30:   ;
  31:  SET SEGMENT(50) ;
  32:  !SEG(50), Approach Tool Drop ;
  33:   ;
  34:J P[12:Tool-Pick-Clear] 50% CNT50    ;
  35:   ;
  36:J P[11] 100% CNT50    ;
  37:   ;
  38:L P[10:Tool-Pick-Dep-2] 2000mm/sec CNT50    ;
  39:L P[4:Tool-Pick-Dep-1] 400mm/sec CNT5    ;
  40:L P[13:Tool-Pick] 50mm/sec FINE    ;
  41:  !-------------------------------- ;
  42:  LBL[20:UNLATCH TOOL] ;
  43:   ;
  44:  UNLATCH TOOL    ;
  45:  !ADD DISCONNECT COMMANDS ;
  46:  !ADD ALL EOAT DEVICES ;
  47:  !CALL EN_ARON(x) ;
  48:  !x = EOAT ENET Node # ;
  49:   ;
  50:  !If TL UNL Pass, Return Home ;
  51:  !If TL UNL Fail, Latch Tool, ;
  52:  !  MHFault, and Return Home ;
  53:  IF R[170]=1,JMP LBL[30] ;
  54:   ;
  55:  SELECT R[168]=7,JMP LBL[80] ;
  56:         ELSE,JMP LBL[99] ;
  57:   ;
  58:  !-------------------------------- ;
  59:  LBL[30:COMPLETE PATH] ;
  60:  !TL DRP COMPLETE. MOVE AWAY ;
  61:  !AND RETURN HOME ;
  62:   ;
  63:  !Set ATI Tool and World Frame ;
  64:  !Modify UTOOL if required ;
  65:  UTOOL_NUM=10 ;
  66:  UFRAME_NUM=0 ;
  67:   ;
  68:  !Set Payload= ATI ;
  69:  R[221]=1    ;
  70:  PAYLOAD[R[221]] ;
  71:L P[17] 50mm/sec FINE    ;
  72:  WAIT DI[909:ON ]=OFF    ;
  73:   ;
  74:  SET SEGMENT(51) ;
  75:   ;
  76:L P[15:Tool-Pick-Apr] 2000mm/sec CNT100    ;
  77:   ;
  78:J P[14] 100% CNT100    ;
  79:J P[5:Tool-Pick-Pounce] 100% CNT50    ;
  80:   ;
  81:  ! Move To Home ;
  82:  JMP LBL[100] ;
  83:   ;
  84:  !-------------------------------- ;
  85:  LBL[80:UNLATCH FAULT] ;
  86:  !MOVE BACK TO HOME WITH TOOL ;
  87:  !on Reverse Path before Tool Drop ;
  88:   ;
  89:  LATCH TOOL    ;
  90:  WAIT DI[909:ON ]=ON    ;
  91:   ;
  92:  SET SEGMENT(63) ;
  93:  !SEG(63), Robot Move to Home ;
  94:L P[6:Tool-Pick-Dep-1] 50mm/sec FINE    ;
  95:L P[7] 2000mm/sec CNT20    ;
  96:L P[3:Tool-Pick-Dep-2] 2000mm/sec CNT50    ;
  97:   ;
  98:J P[1:Tool-Pick-Clear] 50% CNT50    ;
  99:   ;
 100:  SET SEGMENT(63) ;
 101:  R[132]=0    ;
 102:  GO[71:0]=0 ;
 103:   ;
 104:  ! Move To Home ;
 105:  JMP LBL[100] ;
 106:   ;
 107:  !-------------------------------- ;
 108:  LBL[99:ABORT PROGRAM] ;
 109:  MESSAGE[...] ;
 110:  MESSAGE[ABORT PROGRAM] ;
 111:  ABORT ;
 112:   ;
 113:  !-------------------------------- ;
 114:  LBL[100:END OF PROGRAM] ;
 115:  END ;
/POS
P[1:"Tool-Pick-Clear"]{
   GP1:
	UF : 1, UT : 10,		CONFIG : 'N U T, 0, 0, -1',
	X =  2341.068  mm,	Y =  -394.490  mm,	Z =   441.006  mm,
	W =   168.950 deg,	P =    33.878 deg,	R =   148.020 deg
};
P[3:"Tool-Pick-Dep-2"]{
   GP1:
	UF : 1, UT : 10,	
	J1=   -51.254 deg,	J2=   -83.092 deg,	J3=    65.225 deg,
	J4=   -15.521 deg,	J5=   -92.089 deg,	J6=  -211.893 deg
};
P[4:"Tool-Pick-Dep-1"]{
   GP1:
	UF : 1, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1748.379  mm,	Y = -1551.498  mm,	Z = -2434.515  mm,
	W =   162.166 deg,	P =    -2.481 deg,	R =    91.237 deg
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
	X =  1735.440  mm,	Y = -1556.756  mm,	Z = -2409.251  mm,
	W =   160.117 deg,	P =     -.977 deg,	R =    93.550 deg
};
P[7]{
   GP1:
	UF : 1, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1572.165  mm,	Y = -1574.638  mm,	Z = -1955.676  mm,
	W =   160.117 deg,	P =     -.977 deg,	R =    93.550 deg
};
P[10:"Tool-Pick-Dep-2"]{
   GP1:
	UF : 0, UT : 10,	
	J1=   -52.496 deg,	J2=    -9.283 deg,	J3=    14.736 deg,
	J4=   -49.608 deg,	J5=   -43.531 deg,	J6=  -167.754 deg
};
P[11]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, -1',
	X =  1442.342  mm,	Y = -1587.776  mm,	Z =   -70.206  mm,
	W =  -178.214 deg,	P =    -2.483 deg,	R =    95.011 deg
};
P[12:"Tool-Pick-Clear"]{
   GP1:
	UF : 1, UT : 10,	
	J1=   -10.267 deg,	J2=   -98.488 deg,	J3=    85.719 deg,
	J4=    -7.725 deg,	J5=   -77.338 deg,	J6=  -195.608 deg
};
P[13:"Tool-Pick"]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1754.441  mm,	Y = -1549.040  mm,	Z = -2460.495  mm,
	W =   162.166 deg,	P =    -2.480 deg,	R =    91.237 deg
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
	X =  1620.867  mm,	Y = -1569.952  mm,	Z = -2044.383  mm,
	W =   162.166 deg,	P =    -2.480 deg,	R =    91.237 deg
};
P[17]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1743.302  mm,	Y = -1550.785  mm,	Z = -2425.798  mm,
	W =   162.166 deg,	P =    -2.480 deg,	R =    91.237 deg
};
/END
