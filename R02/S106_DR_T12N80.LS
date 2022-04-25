/PROG  S106_DR_T12N80
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "TL DRP TYP1 N80";
PROG_SIZE	= 3555;
CREATE		= DATE 18-11-16  TIME 13:52:56;
MODIFIED	= DATE 19-07-20  TIME 15:27:04;
FILE_NAME	= S106_DR_;
VERSION		= 0;
LINE_COUNT	= 121;
MEMORY_SIZE	= 3959;
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
   2:  ! PATH - drop tool into N1=STA 80 ;
   3:  !******************************** ;
   4:  !* Robot ID: XXXXXR02B1 ;
   5:  !*    F-19XXXX ;
   6:  !* Line: XXXXXXXX ;
   7:  !* Platform: XX ;
   8:  !* Tool ID: TOOL xx ;
   9:  !* Program: S001_DR_TxxN4_R02 ;
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
  38:L P[3:Tool-Pick-Pounce] 3000mm/sec CNT50    ;
  39:   ;
  40:L P[11] 300mm/sec CNT25    ;
  41:   ;
  42:L P[10] 50mm/sec FINE    ;
  43:   ;
  44:  LBL[20:UNLATCH TOOL] ;
  45:  UNLATCH TOOL    ;
  46:   ;
  47:  !ADD DISCONNECT COMMANDS ;
  48:  !ADD ALL EOAT DEVICES ;
  49:  !CALL EN_ARON(x) ;
  50:  !x = EOAT ENET Node # ;
  51:   ;
  52:  !If TL UNL Pass, Return Home ;
  53:  !If TL UNL Fail, Latch Tool, ;
  54:  !  MHFault, and Return Home ;
  55:  IF R[170]=1,JMP LBL[30] ;
  56:   ;
  57:  SELECT R[168]=7,JMP LBL[80] ;
  58:         ELSE,JMP LBL[99] ;
  59:   ;
  60:  !-------------------------------- ;
  61:  LBL[30:COMPLETE PATH] ;
  62:  !TL DRP COMPLETE. MOVE AWAY ;
  63:  !AND RETURN HOME ;
  64:   ;
  65:  !Set ATI Tool and World Frame ;
  66:  UTOOL_NUM=14 ;
  67:  UFRAME_NUM=0 ;
  68:   ;
  69:  !Set Payload= ATI ;
  70:  R[221]=1    ;
  71:  PAYLOAD[R[221]] ;
  72:   ;
  73:  SET SEGMENT(51) ;
  74:  !SEG(51), Tool Drop Depart ;
  75:   ;
  76:L P[6:Tool-Pick-Apr] 50mm/sec FINE    ;
  77:   ;
  78:L P[7] 3000mm/sec CNT100    ;
  79:   ;
  80:J P[8] 100% CNT100    ;
  81:J P[9] 100% CNT100    ;
  82:   ;
  83:  ! Move To Home ;
  84:  JMP LBL[100] ;
  85:   ;
  86:  !-------------------------------- ;
  87:  LBL[80:UNLATCH FAULT] ;
  88:  !MOVE BACK TO HOME WITH TOOL ;
  89:  !on Reverse Path before Tool Drop ;
  90:  UFRAME_NUM=0 ;
  91:  UTOOL_NUM=2 ;
  92:   ;
  93:  LATCH TOOL    ;
  94:   ;
  95:L P[5:DROP_T12_N80] 50mm/sec FINE    ;
  96:   ;
  97:L P[4:Tool-Pick-Dep] 250mm/sec CNT25    ;
  98:   ;
  99:L P[3:Tool-Pick-Pounce] 3000mm/sec CNT100    ;
 100:   ;
 101:J P[2] 100% CNT100    ;
 102:J P[1] 100% CNT100    ;
 103:   ;
 104:  SET SEGMENT(63) ;
 105:  !SEG(63), Robot Move to Home ;
 106:   ;
 107:  R[132]=0    ;
 108:  GO[71]=0 ;
 109:   ;
 110:  ! Move To Home ;
 111:  JMP LBL[100] ;
 112:   ;
 113:  !-------------------------------- ;
 114:  LBL[99:ABORT PROGRAM] ;
 115:  MESSAGE[...] ;
 116:  MESSAGE[ABORT PROGRAM] ;
 117:  ABORT ;
 118:   ;
 119:  !-------------------------------- ;
 120:  LBL[100:END OF PROGRAM] ;
 121:  END ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1905.823  mm,	Y =  1316.578  mm,	Z =  1704.024  mm,
	W =  -156.086 deg,	P =   -19.025 deg,	R =    97.401 deg
};
P[2]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1894.754  mm,	Y =  1853.844  mm,	Z =   855.871  mm,
	W =  -160.812 deg,	P =     1.039 deg,	R =    87.687 deg
};
P[3:"Tool-Pick-Pounce"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2007.499  mm,	Y =  1900.198  mm,	Z =   419.355  mm,
	W =  -161.639 deg,	P =      .099 deg,	R =    90.821 deg
};
P[4:"Tool-Pick-Dep"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2105.760  mm,	Y =  1898.277  mm,	Z =   123.239  mm,
	W =  -161.639 deg,	P =      .099 deg,	R =    90.821 deg
};
P[5:"DROP_T12_N80"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2111.579  mm,	Y =  1898.162  mm,	Z =   105.700  mm,
	W =  -161.639 deg,	P =      .099 deg,	R =    90.821 deg
};
P[6:"Tool-Pick-Apr"]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2379.722  mm,	Y =  1749.989  mm,	Z =   272.277  mm,
	W =  -160.104 deg,	P =     -.263 deg,	R =    92.197 deg
};
P[7]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2310.314  mm,	Y =  1751.769  mm,	Z =   464.098  mm,
	W =  -160.104 deg,	P =     -.263 deg,	R =    92.197 deg
};
P[8]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2146.677  mm,	Y =  1511.959  mm,	Z =   772.650  mm,
	W =  -159.102 deg,	P =      .463 deg,	R =    90.425 deg
};
P[9]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -1893.869  mm,	Y =  1192.844  mm,	Z =  1398.826  mm,
	W =  -159.103 deg,	P =      .463 deg,	R =    90.425 deg
};
P[10]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2112.849  mm,	Y =  1897.667  mm,	Z =   106.048  mm,
	W =  -161.639 deg,	P =      .097 deg,	R =    90.821 deg
};
P[11]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2105.163  mm,	Y =  1897.815  mm,	Z =   129.212  mm,
	W =  -161.639 deg,	P =      .097 deg,	R =    90.821 deg
};
/END
