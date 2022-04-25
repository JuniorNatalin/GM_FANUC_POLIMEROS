/PROG  S109_DR_TCOMUM35
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "TL DRP TYP1NST35";
PROG_SIZE	= 3597;
CREATE		= DATE 19-03-25  TIME 17:17:06;
MODIFIED	= DATE 20-12-12  TIME 19:44:44;
FILE_NAME	= S109_DR_;
VERSION		= 0;
LINE_COUNT	= 121;
MEMORY_SIZE	= 4001;
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
   2:  ! PATH - drop tool into N35=STA 3 ;
   3:  !******************************** ;
   4:  !* Robot ID: XXXXXR02B1 ;
   5:  !*    F-19XXXX ;
   6:  !* Line: XXXXXXXX ;
   7:  !* Platform: XX ;
   8:  !* Tool ID: TOOL xx ;
   9:  !* Program: S001_DR_T01N35_R02 ;
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
  25:  !MOVE TO NEST 35 TOOL DROP ;
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
  36:J P[3:Tool-Pick-Pounce] 100% CNT50    ;
  37:   ;
  38:L P[10] 300mm/sec CNT1    ;
  39:   ;
  40:L P[9] 50mm/sec FINE    ;
  41:  WAIT DI[11]=ON    ;
  42:  !UNLATCH-SO-COM-PECA------------- ;
  43:  LBL[20:UNLATCH TOOL] ;
  44:  UNLATCH TOOL    ;
  45:   ;
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
  65:  PAYLOAD[1] ;
  66:  UTOOL_NUM=14 ;
  67:  UFRAME_NUM=0 ;
  68:   ;
  69:  SET SEGMENT(51) ;
  70:  !SEG(51), Tool Drop Depart ;
  71:  //L P[11] 50mm/sec FINE    ;
  72:   ;
  73:L P[6:Tool-Pick-Apr] 50mm/sec FINE    ;
  74:   ;
  75:L P[7] 3000mm/sec CNT50    ;
  76:   ;
  77:J P[8] 100% CNT100    ;
  78:   ;
  79:  ! Move To Home ;
  80:  JMP LBL[100] ;
  81:   ;
  82:  !-------------------------------- ;
  83:  LBL[80:UNLATCH FAULT] ;
  84:  !MOVE BACK TO HOME WITH TOOL ;
  85:  !on Reverse Path before Tool Drop ;
  86:   ;
  87:  !Set Payload= ATI ;
  88:  R[221]=1    ;
  89:  PAYLOAD[R[221]] ;
  90:  UFRAME_NUM=0 ;
  91:  UTOOL_NUM=2 ;
  92:   ;
  93:  LATCH TOOL    ;
  94:   ;
  95:L P[5:DROP_T17_R1_N35] 50mm/sec FINE    ;
  96:L P[4:Tool-Pick-Dep] 250mm/sec CNT25    ;
  97:L P[3:Tool-Pick-Pounce] 3000mm/sec CNT50    ;
  98:   ;
  99:J P[2] 100% CNT100    ;
 100:   ;
 101:J P[1] 100% CNT100    ;
 102:   ;
 103:  SET SEGMENT(63) ;
 104:  !SEG(63), Robot Move to Home ;
 105:   ;
 106:  R[132]=0    ;
 107:  GO[71]=0 ;
 108:   ;
 109:  ! Move To Home ;
 110:  JMP LBL[100] ;
 111:   ;
 112:  !-------------------------------- ;
 113:  LBL[99:ABORT PROGRAM] ;
 114:  MESSAGE[...] ;
 115:  MESSAGE[ABORT PROGRAM] ;
 116:  ABORT ;
 117:   ;
 118:  !-------------------------------- ;
 119:  LBL[100:END OF PROGRAM] ;
 120:   ;
 121:  END ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U B, 0, 0, 0',
	X =   -33.148  mm,	Y =  -266.230  mm,	Z =  2426.870  mm,
	W =   -93.331 deg,	P =     1.054 deg,	R =  -135.434 deg
};
P[2]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   591.115  mm,	Y = -1108.538  mm,	Z =  2137.655  mm,
	W =  -133.887 deg,	P =   -12.911 deg,	R =  -113.954 deg
};
P[3:"Tool-Pick-Pounce"]{
   GP1:
	UF : 0, UT : 2,	
	J1=   -53.131 deg,	J2=     6.789 deg,	J3=    18.263 deg,
	J4=    -1.419 deg,	J5=  -108.844 deg,	J6=   -36.128 deg
};
P[4:"Tool-Pick-Dep"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   965.045  mm,	Y = -1872.056  mm,	Z =  1443.697  mm,
	W =   179.182 deg,	P =     1.150 deg,	R =   -90.218 deg
};
P[5:"DROP_T17_R1_N35"]{
   GP1:
	UF : 0, UT : 2,	
	J1=   -54.211 deg,	J2=     7.280 deg,	J3=    14.777 deg,
	J4=    -1.381 deg,	J5=  -105.383 deg,	J6=   -34.956 deg
};
P[6:"Tool-Pick-Apr"]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X =  1273.102  mm,	Y = -1730.124  mm,	Z =  1432.241  mm,
	W =  -179.267 deg,	P =     1.309 deg,	R =   -88.943 deg
};
P[7]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X =  1275.853  mm,	Y = -1729.356  mm,	Z =  1574.426  mm,
	W =  -179.250 deg,	P =     1.259 deg,	R =   -88.799 deg
};
P[8]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X =   839.643  mm,	Y = -1002.916  mm,	Z =  2351.433  mm,
	W =  -132.600 deg,	P =   -13.871 deg,	R =  -112.874 deg
};
P[9]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   959.494  mm,	Y = -1871.636  mm,	Z =  1358.041  mm,
	W =   178.879 deg,	P =     1.588 deg,	R =   -90.362 deg
};
P[10]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   961.245  mm,	Y = -1869.307  mm,	Z =  1446.925  mm,
	W =   178.879 deg,	P =     1.588 deg,	R =   -90.362 deg
};
P[11]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X =  1273.409  mm,	Y = -1728.903  mm,	Z =  1385.768  mm,
	W =  -179.244 deg,	P =     -.246 deg,	R =   -88.966 deg
};
/END
