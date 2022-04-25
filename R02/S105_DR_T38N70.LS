/PROG  S105_DR_T38N70
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "TL DRP TYP1 N70";
PROG_SIZE	= 3627;
CREATE		= DATE 20-08-06  TIME 07:20:26;
MODIFIED	= DATE 20-08-06  TIME 07:20:26;
FILE_NAME	= S105_DR_;
VERSION		= 0;
LINE_COUNT	= 124;
MEMORY_SIZE	= 4019;
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
  34:J P[1] 100% CNT100    ;
  35:   ;
  36:J P[2] 100% CNT100    ;
  37:   ;
  38:L P[3:Tool-Pick-Pounce] 3000mm/sec CNT100    ;
  39:  Grip Part(5) ;
  40:   ;
  41:L P[11] 300mm/sec CNT1    ;
  42:   ;
  43:L P[10] 50mm/sec FINE    ;
  44:   ;
  45:  !-------------------------------- ;
  46:  LBL[20:UNLATCH TOOL] ;
  47:  UNLATCH TOOL    ;
  48:   ;
  49:  !ADD DISCONNECT COMMANDS ;
  50:  !ADD ALL EOAT DEVICES ;
  51:  !CALL EN_ARON(x) ;
  52:  !x = EOAT ENET Node # ;
  53:   ;
  54:  !If TL UNL Pass, Return Home ;
  55:  !If TL UNL Fail, Latch Tool, ;
  56:  !  MHFault, and Return Home ;
  57:  IF R[170]=1,JMP LBL[30] ;
  58:   ;
  59:  SELECT R[168]=7,JMP LBL[80] ;
  60:         ELSE,JMP LBL[99] ;
  61:   ;
  62:  !-------------------------------- ;
  63:  LBL[30:COMPLETE PATH] ;
  64:  !TL DRP COMPLETE. MOVE AWAY ;
  65:  !AND RETURN HOME ;
  66:   ;
  67:  !Set ATI Tool and World Frame ;
  68:  PAYLOAD[1] ;
  69:  UTOOL_NUM=14 ;
  70:  UFRAME_NUM=0 ;
  71:   ;
  72:  SET SEGMENT(51) ;
  73:  !SEG(51), Tool Drop Depart ;
  74:   ;
  75:L P[6:Tool-Pick-Apr] 50mm/sec FINE    ;
  76:   ;
  77:L P[7] 3000mm/sec CNT100    ;
  78:   ;
  79:J P[8] 100% CNT100    ;
  80:J P[9] 100% CNT100    ;
  81:   ;
  82:  ! Move To Home ;
  83:  JMP LBL[100] ;
  84:   ;
  85:  !-------------------------------- ;
  86:  LBL[80:UNLATCH FAULT] ;
  87:  !MOVE BACK TO HOME WITH TOOL ;
  88:  !on Reverse Path before Tool Drop ;
  89:   ;
  90:  !Set Payload= ATI ;
  91:  R[221]=1    ;
  92:  PAYLOAD[R[221]] ;
  93:  UFRAME_NUM=0 ;
  94:  UTOOL_NUM=1 ;
  95:   ;
  96:  LATCH TOOL    ;
  97:   ;
  98:  SET SEGMENT(63) ;
  99:  !SEG(63), Robot Move to Home ;
 100:   ;
 101:L P[5:DROP_T17_N70] 50mm/sec FINE    ;
 102:   ;
 103:L P[4:Tool-Pick-Dep] 50mm/sec CNT1    ;
 104:   ;
 105:L P[3:Tool-Pick-Pounce] 1000mm/sec CNT30    ;
 106:   ;
 107:J P[2] 100% CNT100    ;
 108:J P[1] 100% CNT100    ;
 109:   ;
 110:  R[132]=0    ;
 111:  GO[71]=0 ;
 112:   ;
 113:  ! Move To Home ;
 114:  JMP LBL[100] ;
 115:   ;
 116:  !-------------------------------- ;
 117:  LBL[99:ABORT PROGRAM] ;
 118:  MESSAGE[...] ;
 119:  MESSAGE[ABORT PROGRAM] ;
 120:  ABORT ;
 121:   ;
 122:  !-------------------------------- ;
 123:  LBL[100:END OF PROGRAM] ;
 124:  END ;
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
	X = -2332.678  mm,	Y =   665.650  mm,	Z =   270.458  mm,
	W =  -159.561 deg,	P =      .062 deg,	R =    91.097 deg
};
P[7]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2308.079  mm,	Y =   565.934  mm,	Z =   378.095  mm,
	W =  -159.742 deg,	P =      .103 deg,	R =    91.101 deg
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
	X = -2065.186  mm,	Y =   806.240  mm,	Z =    92.577  mm,
	W =  -161.105 deg,	P =      .438 deg,	R =    89.725 deg
};
P[11]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2057.663  mm,	Y =   806.373  mm,	Z =   114.546  mm,
	W =  -161.105 deg,	P =      .438 deg,	R =    89.725 deg
};
/END
