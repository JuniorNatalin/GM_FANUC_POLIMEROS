/PROG  S107_PK_T12N70
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "TL PCK TYP1 N70";
PROG_SIZE	= 4221;
CREATE		= DATE 18-11-16  TIME 14:09:16;
MODIFIED	= DATE 19-03-04  TIME 11:36:30;
FILE_NAME	= S107_PK_;
VERSION		= 0;
LINE_COUNT	= 152;
MEMORY_SIZE	= 4653;
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
  HANDLING : TRUE ; 
/MN
   1:  !******************************** ;
   2:  ! PATH - PK TOOL FROM N3=STA 70 ;
   3:  !******************************** ;
   4:  !* Robot ID: XXXXXR02B1 ;
   5:  !*    F-19XXXX ;
   6:  !* Line: XXXXXXXX ;
   7:  !* Platform: XX ;
   8:  !* Tool ID: TOOL xx ;
   9:  !* Program: S002_PK_TxxN3_R02 ;
  10:  !* Application: TOOL PICK ;
  11:  !******************************** ;
  12:  ! Author- Esys Automation ;
  13:  !******************************** ;
  14:   ;
  15:  !++++++++++++++++++++++++++++++++ ;
  16:  !ASSIGN PROGRAM PATH VALUES ;
  17:  !-------------------------------- ;
  18:  !Set ATI Tool and World UFrame ;
  19:  UTOOL_NUM=14 ;
  20:  UFRAME_NUM=0 ;
  21:  !++++++++++++++++++++++++++++++++ ;
  22:   ;
  23:  !******************************** ;
  24:  !BEGINNING OF PROGRAM PATH ;
  25:  !MOVE TO NEST 3 TOOL PICK ;
  26:  !******************************** ;
  27:   ;
  28:  !-------------------------------- ;
  29:  LBL[10:MOVE TO TL PICK] ;
  30:   ;
  31:  SET SEGMENT(52) ;
  32:  !SEG(52), Approach Tool Pick ;
  33:   ;
  34:J P[1] 100% CNT100    ;
  35:   ;
  36:J P[2:Tool-Pick-Pounce] 100% CNT100    ;
  37:   ;
  38:L P[9] 1000mm/sec CNT1    ;
  39:   ;
  40:L P[8] 50mm/sec FINE    ;
  41:   ;
  42:  !-------------------------------- ;
  43:  LBL[20:LATCH TOOL] ;
  44:  LATCH TOOL    ;
  45:   ;
  46:  !Add MH Ethernet Device from ;
  47:  !I/O Ethernet table ;
  48:  !which tool has ;
  49:   ;
  50:  !ADD DEVICE ONLINE CALLS ;
  51:  !WITHOUT STATUS CHECK ARG ;
  52:  !FOR ALL EOAT DEVICES ;
  53:  !CALL EN_ONLN(x,y) ;
  54:  !x = EOAT ENET Node # ;
  55:  !y = wait time ;
  56:  CALL EN_ONLN(31,5) ;
  57:  CALL EN_AROFF(31) ;
  58:   ;
  59:  !If TL LCH Pass, Return Home ;
  60:  !If TL LCH Fail, Unlatch TL, ;
  61:  !  MHFault, and Return Home ;
  62:  IF R[170]=1,JMP LBL[30] ;
  63:   ;
  64:  SELECT R[168]=6,JMP LBL[80] ;
  65:         ELSE,JMP LBL[99] ;
  66:   ;
  67:  !-------------------------------- ;
  68:  LBL[30:TOOL CHECK] ;
  69:   ;
  70:  ! Check if Tool Match with PLC ;
  71:  CALL TL_CHK_KM(R[156]) ;
  72:   ;
  73:  !If TL CHK Pass, Return Home ;
  74:  !If TL CHK Fail, Unlatch Tool, ;
  75:  !  MHFault, and Return Home ;
  76:  IF R[170]=1,JMP LBL[40] ;
  77:  IF R[170]=0,JMP LBL[905] ;
  78:   ;
  79:  !-------------------------------- ;
  80:  LBL[40:COMPLETE PATH] ;
  81:  !TL PK COMPLETE. MOVE AWAY ;
  82:  !AND RETURN HOME ;
  83:   ;
  84:  !Set New Tool and World Frame ;
  85:  UTOOL_NUM=2 ;
  86:  UFRAME_NUM=0 ;
  87:   ;
  88:  !Set Payload= Tool ;
  89:  R[221]=2    ;
  90:  PAYLOAD[R[221]] ;
  91:   ;
  92:  SET SEGMENT(53) ;
  93:  !SEG(53), Tool Pick Depart ;
  94:   ;
  95:L P[5] 50mm/sec FINE    ;
  96:   ;
  97:L P[6] 500mm/sec CNT50    ;
  98:   ;
  99:J P[7] 100% CNT100    ;
 100:   ;
 101:  ! Move To Home ;
 102:  JMP LBL[100] ;
 103:   ;
 104:  !-------------------------------- ;
 105:  LBL[80:LATCHING FAULT] ;
 106:  !MOVE BACK TO HOME WITHOUT TOOL ;
 107:  !on Reverse Path before Tool Pick ;
 108:   ;
 109:  UNLATCH TOOL    ;
 110:   ;
 111:  UFRAME_NUM=0 ;
 112:  UTOOL_NUM=14 ;
 113:   ;
 114:L P[4:PICK_T12_N70] 50mm/sec FINE    ;
 115:L P[3] 500mm/sec FINE    ;
 116:   ;
 117:L P[2:Tool-Pick-Pounce] 750mm/sec CNT100    ;
 118:   ;
 119:J P[1] 100% CNT100    ;
 120:   ;
 121:  SET SEGMENT(63) ;
 122:  !SEG(63), Robot Move to Home ;
 123:   ;
 124:  R[132]=0    ;
 125:  GO[71]=0 ;
 126:   ;
 127:  ! Move To Home ;
 128:  JMP LBL[100] ;
 129:   ;
 130:  !-------------------------------- ;
 131:  LBL[99:ABORT PROGRAM] ;
 132:  MESSAGE[...] ;
 133:  MESSAGE[ABORT PROGRAM] ;
 134:  ABORT ;
 135:   ;
 136:  !-------------------------------- ;
 137:  LBL[100:END OF PROGRAM] ;
 138:  END ;
 139:   ;
 140:  !***********FAULTS*********** ;
 141:  LBL[905:Invalid Tool Num] ;
 142:  MESSAGE[...] ;
 143:  MESSAGE[TOOL CHANGER FAULT] ;
 144:  MESSAGE[ ROBOT LATCHED TO] ;
 145:  MESSAGE[ WRONG TOOL.] ;
 146:  MESSAGE[ GI[70] DOES NOT ] ;
 147:  MESSAGE[ MATCH TOOL ID ] ;
 148:  DO[523]=ON ;
 149:  UALM[3] ;
 150:  DO[523]=OFF ;
 151:  JMP LBL[80] ;
 152:   ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2157.965  mm,	Y =  1020.774  mm,	Z =  1799.157  mm,
	W =  -148.691 deg,	P =     -.556 deg,	R =    64.095 deg
};
P[2:"Tool-Pick-Pounce"]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2247.452  mm,	Y =   667.956  mm,	Z =   581.376  mm,
	W =  -160.409 deg,	P =     -.154 deg,	R =    90.935 deg
};
P[3]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2358.499  mm,	Y =   666.985  mm,	Z =   269.350  mm,
	W =  -160.409 deg,	P =     -.154 deg,	R =    90.935 deg
};
P[4:"PICK_T12_N70"]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2370.628  mm,	Y =   666.879  mm,	Z =   235.265  mm,
	W =  -160.409 deg,	P =     -.154 deg,	R =    90.935 deg
};
P[5]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2079.955  mm,	Y =   811.407  mm,	Z =   136.791  mm,
	W =  -160.612 deg,	P =      .647 deg,	R =    90.919 deg
};
P[6]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1986.087  mm,	Y =   809.202  mm,	Z =   411.797  mm,
	W =  -161.947 deg,	P =      .200 deg,	R =    89.557 deg
};
P[7]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1430.516  mm,	Y =   908.811  mm,	Z =  1676.906  mm,
	W =  -145.907 deg,	P =     1.406 deg,	R =    88.198 deg
};
P[8]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2371.032  mm,	Y =   663.124  mm,	Z =   241.036  mm,
	W =  -159.064 deg,	P =      .260 deg,	R =    92.288 deg
};
P[9]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2355.727  mm,	Y =   663.916  mm,	Z =   281.081  mm,
	W =  -159.064 deg,	P =      .260 deg,	R =    92.288 deg
};
/END
