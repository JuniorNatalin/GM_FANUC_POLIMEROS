/PROG  S101_DR_TCOMUM35_R01
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "TL01 DRP STA35";
PROG_SIZE	= 4027;
CREATE		= DATE 19-03-04  TIME 09:48:10;
MODIFIED	= DATE 20-12-12  TIME 19:47:04;
FILE_NAME	= S101_DR_;
VERSION		= 0;
LINE_COUNT	= 139;
MEMORY_SIZE	= 4503;
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
   2:  ! PATH - DRP TOOL TO STA 35 ;
   3:  !******************************** ;
   4:  !* ROBOT ID: IM01R01B02 ;
   5:  !*    F-196840 ;
   6:  !* Line: Line B02 ;
   7:  !* Platform: XX ;
   8:  !* Tool ID: TOOL xx ;
   9:  !* Program: S109_DR_TXXS35_R01 ;
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
  23:  ENTER I-ZONE(1) ;
  24:  ENTER I-ZONE(2) ;
  25:   ;
  26:  !******************************** ;
  27:  !BEGINNING OF PROGRAM PATH ;
  28:  !MOVE TO STA35 TOOL BUCK DROP ;
  29:  !******************************** ;
  30:   ;
  31:  !-------------------------------- ;
  32:  LBL[10:MOVE TO TL DRP] ;
  33:   ;
  34:  SET SEGMENT(50) ;
  35:  !SEG(50), Approach Tool Drop ;
  36:   ;
  37:J P[1] 100% CNT100    ;
  38:J P[2] 80% CNT50    ;
  39:J P[3] 75% CNT50    ;
  40:J P[4] 80% CNT50    ;
  41:   ;
  42:L P[11] 800mm/sec CNT25    ;
  43:   ;
  44:L P[7] 100mm/sec CNT1    ;
  45:   ;
  46:L P[6] 50mm/sec FINE    ;
  47:   ;
  48:  !ADD DISCONNECT COMMANDS ;
  49:  !ADD ALL EOAT DEVICES ;
  50:  !CALL EN_ARON(x) ;
  51:  !x = EOAT ENET Node # ;
  52:  CALL EN_OFFLN(35) ;
  53:  CALL EN_ARON(35) ;
  54:   ;
  55:  !-------------------------------- ;
  56:  LBL[20:UNLATCH TOOL] ;
  57:  UNLATCH TOOL    ;
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
  73:  UTOOL_NUM=10 ;
  74:  UFRAME_NUM=0 ;
  75:   ;
  76:  !Set Payload= ATI ;
  77:  R[221]=1    ;
  78:  PAYLOAD[R[221]] ;
  79:   ;
  80:  SET SEGMENT(51) ;
  81:  !SEG(51), Tool Drop Depart ;
  82:   ;
  83:L P[8:Tool-Drop-Depart] 50mm/sec CNT1    ;
  84:   ;
  85:L P[15:Tool-Pick-Pounce] 1500mm/sec CNT25    ;
  86:   ;
  87:J P[14] 100% CNT100    ;
  88:J P[10] 100% CNT100    ;
  89:J P[9:POUNCE] 100% CNT100    ;
  90:   ;
  91:  ! Move To Home ;
  92:  JMP LBL[100] ;
  93:   ;
  94:  !-------------------------------- ;
  95:  LBL[80:UNLATCH FAULT] ;
  96:  !MOVE BACK TO HOME WITH TOOL ;
  97:  !on Reverse Path before Tool Drop ;
  98:   ;
  99:  LATCH TOOL    ;
 100:   ;
 101:  R[221]=2    ;
 102:  PAYLOAD[R[221]] ;
 103:   ;
 104:  UFRAME_NUM=0 ;
 105:  UTOOL_NUM=2 ;
 106:   ;
 107:L P[13] 50mm/sec FINE    ;
 108:   ;
 109:L P[12] 50mm/sec CNT1    ;
 110:   ;
 111:L P[5:Tool-Drop-Pounce] 100mm/sec CNT25    ;
 112:   ;
 113:L P[4] 800mm/sec CNT50    ;
 114:J P[3] 80% CNT50    ;
 115:J P[2] 75% CNT50    ;
 116:J P[1] 80% CNT100    ;
 117:   ;
 118:   ;
 119:  SET SEGMENT(63) ;
 120:  !SEG(63), Robot Move to Home ;
 121:   ;
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
 136:  EXIT I-ZONE(1) ;
 137:  EXIT I-ZONE(2) ;
 138:  END ;
 139:   ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   513.118  mm,	Y = -1666.966  mm,	Z =   894.038  mm,
	W =  -175.475 deg,	P =    35.264 deg,	R =   -84.803 deg
};
P[2]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -426.999  mm,	Y = -2219.864  mm,	Z =   543.157  mm,
	W =  -177.431 deg,	P =    13.580 deg,	R =   -94.523 deg
};
P[3]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -828.914  mm,	Y = -1993.364  mm,	Z =   299.922  mm,
	W =  -177.023 deg,	P =     2.722 deg,	R =   -86.344 deg
};
P[4]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1059.314  mm,	Y = -1779.764  mm,	Z =  -369.678  mm,
	W =  -177.023 deg,	P =     2.722 deg,	R =   -86.344 deg
};
P[5:"Tool-Drop-Pounce"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1061.746  mm,	Y = -1793.737  mm,	Z = -1166.945  mm,
	W =  -175.938 deg,	P =     -.324 deg,	R =   -88.696 deg
};
P[6:""]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1057.168  mm,	Y = -1678.354  mm,	Z = -1277.167  mm,
	W =  -175.965 deg,	P =     -.506 deg,	R =   -88.661 deg
};
P[7]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1064.375  mm,	Y = -1678.214  mm,	Z = -1167.596  mm,
	W =  -175.938 deg,	P =     -.324 deg,	R =   -88.696 deg
};
P[8:"Tool-Drop-Depart"]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X = -1247.100  mm,	Y = -1537.765  mm,	Z = -1218.331  mm,
	W =  -179.011 deg,	P =    -2.348 deg,	R =   -91.603 deg
};
P[9:"POUNCE"]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =   322.518  mm,	Y = -1585.514  mm,	Z =   997.688  mm,
	W =   179.419 deg,	P =    33.212 deg,	R =   -88.296 deg
};
P[10]{
   GP1:
	UF : 0, UT : 10,	
	J1=  -121.779 deg,	J2=  -116.484 deg,	J3=    92.245 deg,
	J4=    10.447 deg,	J5=   -73.682 deg,	J6=    17.624 deg
};
P[11]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1059.971  mm,	Y = -1871.715  mm,	Z = -1166.504  mm,
	W =  -175.938 deg,	P =     -.324 deg,	R =   -88.696 deg
};
P[12]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1059.057  mm,	Y = -1679.149  mm,	Z = -1274.099  mm,
	W =  -176.054 deg,	P =    -1.099 deg,	R =   -88.548 deg
};
P[13]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1061.152  mm,	Y = -1675.421  mm,	Z = -1283.645  mm,
	W =  -175.938 deg,	P =     -.324 deg,	R =   -88.696 deg
};
P[14]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X = -1243.985  mm,	Y = -1599.059  mm,	Z =  -696.410  mm,
	W =   179.990 deg,	P =     2.040 deg,	R =   -90.261 deg
};
P[15:"Tool-Pick-Pounce"]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X = -1249.392  mm,	Y = -1535.589  mm,	Z = -1040.245  mm,
	W =   179.752 deg,	P =      .640 deg,	R =   -89.210 deg
};
/END
