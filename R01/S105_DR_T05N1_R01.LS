/PROG  S105_DR_T05N1_R01
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "239 DRP TYP1 NST";
PROG_SIZE	= 3711;
CREATE		= DATE 18-06-19  TIME 13:45:52;
MODIFIED	= DATE 19-03-09  TIME 10:20:04;
FILE_NAME	= S105_DR_;
VERSION		= 0;
LINE_COUNT	= 117;
MEMORY_SIZE	= 4131;
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
  21:  PAYLOAD[10] ;
  22:  !++++++++++++++++++++++++++++++++ ;
  23:   ;
  24:  !******************************** ;
  25:  !BEGINNING OF PROGRAM PATH ;
  26:  !MOVE TO NEST 1 TOOL DROP ;
  27:  !******************************** ;
  28:   ;
  29:  !-------------------------------- ;
  30:  LBL[10:MOVE TO TL DRP] ;
  31:   ;
  32:  SET SEGMENT(50) ;
  33:  !SEG(50), Approach Tool Drop ;
  34:   ;
  35:J P[12:Tool-Pick-Clear] 50% CNT50    ;
  36:   ;
  37:J P[11] 100% CNT50    ;
  38:   ;
  39:L P[10:Tool-Pick-Dep-2] 2000mm/sec CNT50    ;
  40:L P[4:Tool-Pick-Dep-1] 400mm/sec FINE    ;
  41:L P[13:Tool-Pick] 50mm/sec FINE    ;
  42:  !-------------------------------- ;
  43:  LBL[20:UNLATCH TOOL] ;
  44:   ;
  45:  UNLATCH TOOL    ;
  46:  !ADD DISCONNECT COMMANDS ;
  47:  !ADD ALL EOAT DEVICES ;
  48:  !CALL EN_ARON(x) ;
  49:  !x = EOAT ENET Node # ;
  50:   ;
  51:  !If TL UNL Pass, Return Home ;
  52:  !If TL UNL Fail, Latch Tool, ;
  53:  !  MHFault, and Return Home ;
  54:  IF R[170]=1,JMP LBL[30] ;
  55:   ;
  56:  SELECT R[168]=7,JMP LBL[80] ;
  57:         ELSE,JMP LBL[99] ;
  58:   ;
  59:  !-------------------------------- ;
  60:  LBL[30:COMPLETE PATH] ;
  61:  !TL DRP COMPLETE. MOVE AWAY ;
  62:  !AND RETURN HOME ;
  63:   ;
  64:  !Set ATI Tool and World Frame ;
  65:  !Modify UTOOL if required ;
  66:  UTOOL_NUM=10 ;
  67:  UFRAME_NUM=0 ;
  68:   ;
  69:  !Set Payload= ATI ;
  70:  PAYLOAD[1] ;
  71:   ;
  72:L P[17] 50mm/sec FINE    ;
  73:  WAIT DI[909:ON ]=OFF    ;
  74:   ;
  75:  SET SEGMENT(51) ;
  76:   ;
  77:L P[15:Tool-Pick-Apr] 2000mm/sec CNT50    ;
  78:   ;
  79:J P[14] 100% CNT100    ;
  80:J P[5:Tool-Pick-Pounce] 100% CNT50    ;
  81:   ;
  82:  ! Move To Home ;
  83:  JMP LBL[100] ;
  84:   ;
  85:  !-------------------------------- ;
  86:  LBL[80:UNLATCH FAULT] ;
  87:  !MOVE BACK TO HOME WITH TOOL ;
  88:  !on Reverse Path before Tool Drop ;
  89:  PAYLOAD[10] ;
  90:   ;
  91:  LATCH TOOL    ;
  92:  WAIT DI[909:ON ]=ON    ;
  93:   ;
  94:  SET SEGMENT(63) ;
  95:  !SEG(63), Robot Move to Home ;
  96:L P[6:Tool-Pick-Dep-1] 50mm/sec FINE    ;
  97:L P[7] 2000mm/sec CNT20    ;
  98:L P[3:Tool-Pick-Dep-2] 2000mm/sec CNT50    ;
  99:   ;
 100:J P[1:Tool-Pick-Clear] 50% CNT50    ;
 101:   ;
 102:  SET SEGMENT(63) ;
 103:  R[132]=0    ;
 104:  GO[71:0]=0 ;
 105:   ;
 106:  ! Move To Home ;
 107:  JMP LBL[100] ;
 108:   ;
 109:  !-------------------------------- ;
 110:  LBL[99:ABORT PROGRAM] ;
 111:  MESSAGE[...] ;
 112:  MESSAGE[ABORT PROGRAM] ;
 113:  ABORT ;
 114:   ;
 115:  !-------------------------------- ;
 116:  LBL[100:END OF PROGRAM] ;
 117:  END ;
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
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1737.527  mm,	Y = -1542.868  mm,	Z = -2447.049  mm,
	W =   161.701 deg,	P =    -2.412 deg,	R =    91.370 deg
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
	X =  1734.037  mm,	Y = -1556.877  mm,	Z = -2426.717  mm,
	W =   159.436 deg,	P =    -2.019 deg,	R =    93.929 deg
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
	J1=   -51.753 deg,	J2=    -1.426 deg,	J3=    14.449 deg,
	J4=   -50.915 deg,	J5=   -43.260 deg,	J6=  -166.910 deg
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
	X =  1744.126  mm,	Y = -1541.867  mm,	Z = -2467.055  mm,
	W =   161.701 deg,	P =    -2.411 deg,	R =    91.370 deg
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
	X =  1645.814  mm,	Y = -1556.774  mm,	Z = -2169.041  mm,
	W =   161.701 deg,	P =    -2.412 deg,	R =    91.370 deg
};
P[17]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1733.535  mm,	Y = -1543.474  mm,	Z = -2434.949  mm,
	W =   161.701 deg,	P =    -2.412 deg,	R =    91.370 deg
};
/END
