/PROG  S105_DR_T41N70
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "TL DRP TYP1 N70";
PROG_SIZE	= 3802;
CREATE		= DATE 19-05-25  TIME 08:54:42;
MODIFIED	= DATE 20-11-23  TIME 15:27:20;
FILE_NAME	= S105_DR_;
VERSION		= 0;
LINE_COUNT	= 127;
MEMORY_SIZE	= 4182;
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
   2:  ! PATH - drop tool into N1=STA 70 ;
   3:  !******************************** ;
   4:  !* Robot ID: XXXXXR02B1 ;
   5:  !*    F-19XXXX ;
   6:  !* Line: XXXXXXXX ;
   7:  !* Platform: XX ;
   8:  !* Tool ID: TOOL xx ;
   9:  !* Program: S001_DR_TxxN3_R02 ;
  10:  !* Application: TOOL DROP ;
  11:  !******************************** ;
  12:  ! Author- Esys Automation ;
  13:  !******************************** ;
  14:   ;
  15:  !++++++++++++++++++++++++++++++++ ;
  16:  !ASSIGN PROGRAM PATH VALUES ;
  17:  !-------------------------------- ;
  18:  !Set Robot Tool and World UFrame ;
  19:  UTOOL_NUM=2 ;
  20:  UFRAME_NUM=0 ;
  21:  !++++++++++++++++++++++++++++++++ ;
  22:  Set MH Tool(4) ;
  23:  Release Part(1,2,5) ;
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
  36:J P[1] 100% CNT100    ;
  37:   ;
  38:J P[2] 100% CNT100    ;
  39:   ;
  40:L P[12] 3000mm/sec CNT100    ;
  41:   ;
  42:L P[11] 300mm/sec CNT1    ;
  43:L P[14] 50mm/sec FINE    ;
  44:L P[13] 30mm/sec FINE    ;
  45:   ;
  46:L P[10] 20mm/sec FINE    ;
  47:   ;
  48:  !-------------------------------- ;
  49:  LBL[20:UNLATCH TOOL] ;
  50:  UNLATCH TOOL    ;
  51:   ;
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
  71:  PAYLOAD[1] ;
  72:  UTOOL_NUM=14 ;
  73:  UFRAME_NUM=0 ;
  74:   ;
  75:  SET SEGMENT(51) ;
  76:  !SEG(51), Tool Drop Depart ;
  77:   ;
  78:L P[6:Tool-Pick-Apr] 50mm/sec FINE    ;
  79:   ;
  80:L P[7] 3000mm/sec CNT100    ;
  81:   ;
  82:J P[8] 100% CNT100    ;
  83:J P[9] 100% CNT100    ;
  84:   ;
  85:  ! Move To Home ;
  86:  JMP LBL[100] ;
  87:   ;
  88:  !-------------------------------- ;
  89:  LBL[80:UNLATCH FAULT] ;
  90:  !MOVE BACK TO HOME WITH TOOL ;
  91:  !on Reverse Path before Tool Drop ;
  92:   ;
  93:  !Set Payload= ATI ;
  94:  R[221]=1    ;
  95:  PAYLOAD[R[221]] ;
  96:  UFRAME_NUM=0 ;
  97:  UTOOL_NUM=1 ;
  98:   ;
  99:  LATCH TOOL    ;
 100:   ;
 101:  SET SEGMENT(63) ;
 102:  !SEG(63), Robot Move to Home ;
 103:   ;
 104:L P[5:DROP_T17_N70] 50mm/sec FINE    ;
 105:   ;
 106:L P[4:Tool-Pick-Dep] 50mm/sec CNT1    ;
 107:   ;
 108:L P[3:Tool-Pick-Pounce] 1000mm/sec CNT30    ;
 109:   ;
 110:J P[2] 100% CNT100    ;
 111:J P[1] 100% CNT100    ;
 112:   ;
 113:  R[132]=0    ;
 114:  GO[71]=0 ;
 115:   ;
 116:  ! Move To Home ;
 117:  JMP LBL[100] ;
 118:   ;
 119:  !-------------------------------- ;
 120:  LBL[99:ABORT PROGRAM] ;
 121:  MESSAGE[...] ;
 122:  MESSAGE[ABORT PROGRAM] ;
 123:  ABORT ;
 124:   ;
 125:  !-------------------------------- ;
 126:  LBL[100:END OF PROGRAM] ;
 127:  END ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1871.537  mm,	Y =  1036.048  mm,	Z =  1608.502  mm,
	W =  -150.223 deg,	P =      .071 deg,	R =    62.819 deg
};
P[2]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1797.455  mm,	Y =   901.543  mm,	Z =   882.258  mm,
	W =  -160.599 deg,	P =     1.278 deg,	R =    88.209 deg
};
P[3:"Tool-Pick-Pounce"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1968.561  mm,	Y =   709.054  mm,	Z =   424.467  mm,
	W =  -161.287 deg,	P =      .475 deg,	R =    89.728 deg
};
P[4:"Tool-Pick-Dep"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2073.561  mm,	Y =   706.981  mm,	Z =   114.536  mm,
	W =  -161.287 deg,	P =      .475 deg,	R =    89.728 deg
};
P[5:"DROP_T17_N70"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2079.705  mm,	Y =   706.859  mm,	Z =    96.396  mm,
	W =  -161.287 deg,	P =      .475 deg,	R =    89.728 deg
};
P[6:"Tool-Pick-Apr"]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2362.528  mm,	Y =   667.167  mm,	Z =   193.587  mm,
	W =  -160.901 deg,	P =      .593 deg,	R =    91.653 deg
};
P[7]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2101.385  mm,	Y =   680.903  mm,	Z =   942.697  mm,
	W =  -160.929 deg,	P =      .680 deg,	R =    91.046 deg
};
P[8]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2166.851  mm,	Y =   569.337  mm,	Z =   760.858  mm,
	W =  -159.742 deg,	P =      .103 deg,	R =    91.101 deg
};
P[9]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2157.965  mm,	Y =  1020.774  mm,	Z =  1799.158  mm,
	W =  -149.817 deg,	P =    -8.762 deg,	R =    77.858 deg
};
P[10]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2092.953  mm,	Y =   805.596  mm,	Z =     9.880  mm,
	W =  -161.876 deg,	P =      .164 deg,	R =    89.815 deg
};
P[11]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2085.869  mm,	Y =   809.903  mm,	Z =    39.674  mm,
	W =  -161.864 deg,	P =      .621 deg,	R =    90.064 deg
};
P[12]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1817.935  mm,	Y =   821.513  mm,	Z =   806.650  mm,
	W =  -162.487 deg,	P =     1.023 deg,	R =    89.665 deg
};
P[13]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2082.725  mm,	Y =   805.652  mm,	Z =    41.128  mm,
	W =  -161.876 deg,	P =      .164 deg,	R =    89.815 deg
};
P[14]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2087.527  mm,	Y =   809.546  mm,	Z =    33.926  mm,
	W =  -161.891 deg,	P =      .658 deg,	R =    90.431 deg
};
/END
