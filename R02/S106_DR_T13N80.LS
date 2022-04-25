/PROG  S106_DR_T13N80
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "TL DRP TYP1 N80";
PROG_SIZE	= 3486;
CREATE		= DATE 21-06-09  TIME 04:22:32;
MODIFIED	= DATE 21-06-09  TIME 12:45:28;
FILE_NAME	= S106_DR_;
VERSION		= 0;
LINE_COUNT	= 116;
MEMORY_SIZE	= 3910;
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
  35:J P[2] 100% CNT100    ;
  36:   ;
  37:L P[3] 1000mm/sec CNT50    ;
  38:L P[11] 200mm/sec FINE    ;
  39:   ;
  40:L P[10:Drop Tool] 50mm/sec FINE    ;
  41:   ;
  42:  LBL[20:UNLATCH TOOL] ;
  43:  UNLATCH TOOL    ;
  44:   ;
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
  64:  UTOOL_NUM=14 ;
  65:  UFRAME_NUM=0 ;
  66:   ;
  67:  !Set Payload= ATI ;
  68:  R[221]=1    ;
  69:  PAYLOAD[R[221]] ;
  70:   ;
  71:  SET SEGMENT(51) ;
  72:  !SEG(51), Tool Drop Depart ;
  73:   ;
  74:L P[7] 50mm/sec FINE    ;
  75:L P[8] 300mm/sec CNT50    ;
  76:   ;
  77:L P[9] 1000mm/sec CNT100    ;
  78:J P[12] 100% CNT100    ;
  79:   ;
  80:   ;
  81:  ! Move To Home ;
  82:  JMP LBL[100] ;
  83:   ;
  84:  !-------------------------------- ;
  85:  LBL[80:UNLATCH FAULT] ;
  86:  !MOVE BACK TO HOME WITH TOOL ;
  87:  !on Reverse Path before Tool Drop ;
  88:   ;
  89:  UFRAME_NUM=0 ;
  90:  UTOOL_NUM=2 ;
  91:   ;
  92:  LATCH TOOL    ;
  93:   ;
  94:L P[4] 50mm/sec FINE    ;
  95:L P[5] 1000mm/sec CNT50    ;
  96:   ;
  97:J P[6] 100% CNT100    ;
  98:   ;
  99:  SET SEGMENT(63) ;
 100:  !SEG(63), Robot Move to Home ;
 101:   ;
 102:  R[132]=0    ;
 103:  GO[71]=0 ;
 104:   ;
 105:  ! Move To Home ;
 106:  JMP LBL[100] ;
 107:   ;
 108:  !-------------------------------- ;
 109:  LBL[99:ABORT PROGRAM] ;
 110:  MESSAGE[...] ;
 111:  MESSAGE[ABORT PROGRAM] ;
 112:  ABORT ;
 113:   ;
 114:  !-------------------------------- ;
 115:  LBL[100:END OF PROGRAM] ;
 116:  END ;
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
P[3:""]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2007.499  mm,	Y =  1900.198  mm,	Z =   419.355  mm,
	W =  -161.639 deg,	P =      .099 deg,	R =    90.821 deg
};
P[4:""]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2098.207  mm,	Y =  1810.121  mm,	Z =   131.873  mm,
	W =  -161.643 deg,	P =      .065 deg,	R =    90.888 deg
};
P[5]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2032.183  mm,	Y =  1812.104  mm,	Z =   369.414  mm,
	W =  -161.643 deg,	P =      .065 deg,	R =    90.888 deg
};
P[6:""]{
   GP1:
	UF : 0, UT : 2,	
	J1=   140.239 deg,	J2=    27.835 deg,	J3=     5.259 deg,
	J4=   -13.426 deg,	J5=   -80.526 deg,	J6=   -48.130 deg
};
P[7]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2377.088  mm,	Y =  1661.588  mm,	Z =   274.933  mm,
	W =  -160.103 deg,	P =     -.265 deg,	R =    92.196 deg
};
P[8]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2286.016  mm,	Y =  1751.760  mm,	Z =   557.261  mm,
	W =  -160.104 deg,	P =     -.263 deg,	R =    92.197 deg
};
P[9]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2178.860  mm,	Y =  1723.125  mm,	Z =  1000.162  mm,
	W =  -159.254 deg,	P =      .655 deg,	R =    89.058 deg
};
P[10:"Drop Tool"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2107.629  mm,	Y =  1812.484  mm,	Z =   100.138  mm,
	W =  -161.576 deg,	P =      .050 deg,	R =    90.803 deg
};
P[11]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2098.570  mm,	Y =  1810.027  mm,	Z =   137.031  mm,
	W =  -161.639 deg,	P =      .097 deg,	R =    90.820 deg
};
P[12]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2145.074  mm,	Y =  1093.619  mm,	Z =  1812.060  mm,
	W =  -155.016 deg,	P =   -19.514 deg,	R =    98.817 deg
};
/END
