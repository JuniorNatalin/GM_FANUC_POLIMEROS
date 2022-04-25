/PROG  S107_PK_T01N1_R01
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "TL PCK TYP1 NST1";
PROG_SIZE	= 4425;
CREATE		= DATE 18-02-14  TIME 15:23:22;
MODIFIED	= DATE 18-02-22  TIME 15:31:22;
FILE_NAME	= S107_PK_;
VERSION		= 0;
LINE_COUNT	= 148;
MEMORY_SIZE	= 4865;
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
   2:  ! PATH - PK TOOL FROM N1=STA 50 ;
   3:  !******************************** ;
   4:  !* Robot ID: XXXXXR01B1 ;
   5:  !*    F-19XXXX ;
   6:  !* Line: XXXXXXXX ;
   7:  !* Platform: XX ;
   8:  !* Tool ID: TOOL xx ;
   9:  !* Program: S107_PK_TxxN1 ;
  10:  !* Application: TOOL PICK ;
  11:  !******************************** ;
  12:  ! Author- Esys Automation ;
  13:  !******************************** ;
  14:   ;
  15:  !++++++++++++++++++++++++++++++++ ;
  16:  !ASSIGN PROGRAM PATH VALUES ;
  17:  !-------------------------------- ;
  18:  !Set ATI Tool and World UFrame ;
  19:  UTOOL_NUM=10 ;
  20:  UFRAME_NUM=0 ;
  21:  !++++++++++++++++++++++++++++++++ ;
  22:   ;
  23:  !******************************** ;
  24:  !BEGINNING OF PROGRAM PATH ;
  25:  !MOVE TO NEST 1 TOOL PICK ;
  26:  !******************************** ;
  27:   ;
  28:  !-------------------------------- ;
  29:  LBL[10:MOVE TO TL PICK] ;
  30:   ;
  31:  SET SEGMENT(52) ;
  32:  !SEG(52), Approach Tool Pick ;
  33:   ;
  34:J P[1:Tool-Pick-Pounce] 100% CNT50    ;
  35:J P[9] 100% CNT100    ;
  36:   ;
  37:L P[2:Tool-Pick-Apr] 2000mm/sec CNT50    ;
  38:L P[8] 300mm/sec FINE    ;
  39:L P[3:Tool-Pick] 50mm/sec FINE    ;
  40:   ;
  41:  !-------------------------------- ;
  42:  LBL[20:LATCH TOOL] ;
  43:   ;
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
  57:   ;
  58:  !If TL LCH Pass, Return Home ;
  59:  !If TL LCH Fail, Unlatch TL, ;
  60:  !  MHFault, and Return Home ;
  61:  IF R[170]=1,JMP LBL[30] ;
  62:   ;
  63:  SELECT R[168]=6,JMP LBL[80] ;
  64:         ELSE,JMP LBL[99] ;
  65:   ;
  66:  !-------------------------------- ;
  67:  LBL[30:TOOL CHECK] ;
  68:   ;
  69:  ! Check if Tool Match with PLC ;
  70:  CALL TL_CHK_KM(R[156]) ;
  71:   ;
  72:  !If TL CHK Pass, Return Home ;
  73:  !If TL CHK Fail, Unlatch Tool, ;
  74:  !  MHFault, and Return Home ;
  75:  IF R[170]=1,JMP LBL[40] ;
  76:  IF R[170]=0,JMP LBL[905] ;
  77:   ;
  78:  !-------------------------------- ;
  79:  LBL[40:COMPLETE PATH] ;
  80:  !TL PK COMPLETE. MOVE AWAY ;
  81:  !AND RETURN HOME ;
  82:   ;
  83:  !Set New Tool and World Frame ;
  84:  UTOOL_NUM=10 ;
  85:  UFRAME_NUM=0 ;
  86:   ;
  87:  !Set Payload= Tool ;
  88:  R[221]=2    ;
  89:  PAYLOAD[R[221]] ;
  90:   ;
  91:  SET SEGMENT(53) ;
  92:  !SEG(53), Tool Pick Depart ;
  93:   ;
  94:L P[4:Tool-Pick-Dep-1] 50mm/sec FINE    ;
  95:L P[5:Tool-Pick-Dep-2] 2000mm/sec CNT50    ;
  96:   ;
  97:L P[6] 2000mm/sec CNT50    ;
  98:   ;
  99:J P[7:Tool-Pick-Clear] 50% CNT50    ;
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
 111:L P[13] 300mm/sec FINE    ;
 112:L P[12:Tool-Pick-Apr] 2000mm/sec CNT100    ;
 113:   ;
 114:J P[11] 100% CNT100    ;
 115:J P[10:Tool-Pick-Pounce] 75% CNT50    ;
 116:   ;
 117:  SET SEGMENT(63) ;
 118:  !SEG(63), Robot Move to Home ;
 119:   ;
 120:  R[132]=0    ;
 121:  GO[71:0]=0 ;
 122:   ;
 123:  ! Move To Home ;
 124:  JMP LBL[100] ;
 125:   ;
 126:  !-------------------------------- ;
 127:  LBL[99:ABORT PROGRAM] ;
 128:  MESSAGE[...] ;
 129:  MESSAGE[ABORT PROGRAM] ;
 130:  ABORT ;
 131:   ;
 132:  !-------------------------------- ;
 133:  LBL[100:END OF PROGRAM] ;
 134:  END ;
 135:   ;
 136:  !***********FAULTS*********** ;
 137:  LBL[905:Invalid Tool Num] ;
 138:  MESSAGE[...] ;
 139:  MESSAGE[TOOL CHANGER FAULT] ;
 140:  MESSAGE[ ROBOT LATCHED TO] ;
 141:  MESSAGE[ WRONG TOOL.] ;
 142:  MESSAGE[ GI[70] DOES NOT ] ;
 143:  MESSAGE[ MATCH TOOL ID ] ;
 144:  DO[523:OFF]=ON ;
 145:  UALM[3] ;
 146:  DO[523:OFF]=OFF ;
 147:  JMP LBL[80] ;
 148:   ;
/POS
P[1:"Tool-Pick-Pounce"]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  2207.383  mm,	Y = -1563.618  mm,	Z =   -12.197  mm,
	W =  -168.976 deg,	P =      .128 deg,	R =   -67.418 deg
};
P[2:"Tool-Pick-Apr"]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, -1',
	X =  1871.895  mm,	Y = -1833.343  mm,	Z = -1544.904  mm,
	W =  -160.314 deg,	P =    -1.439 deg,	R =   -88.363 deg
};
P[3:"Tool-Pick"]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, -1',
	X =  1840.348  mm,	Y = -1675.516  mm,	Z = -2074.769  mm,
	W =  -156.842 deg,	P =    -1.860 deg,	R =   -88.735 deg
};
P[4:"Tool-Pick-Dep-1"]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, -1',
	X =  1825.689  mm,	Y = -1674.727  mm,	Z = -2040.572  mm,
	W =  -156.842 deg,	P =    -1.861 deg,	R =   -88.736 deg
};
P[5:"Tool-Pick-Dep-2"]{
   GP1:
	UF : 0, UT : 10,	
	J1=   -44.955 deg,	J2=   -60.265 deg,	J3=    21.412 deg,
	J4=   149.609 deg,	J5=   -14.826 deg,	J6=  -197.228 deg
};
P[6]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1697.076  mm,	Y = -1884.373  mm,	Z =   -72.555  mm,
	W =  -162.970 deg,	P =    -9.703 deg,	R =   -92.924 deg
};
P[7:"Tool-Pick-Clear"]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  2207.383  mm,	Y = -1563.618  mm,	Z =   573.403  mm,
	W =  -168.976 deg,	P =      .128 deg,	R =   -67.418 deg
};
P[8]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, -1',
	X =  1823.172  mm,	Y = -1674.592  mm,	Z = -2034.694  mm,
	W =  -156.842 deg,	P =    -1.861 deg,	R =   -88.736 deg
};
P[9]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1871.895  mm,	Y = -2049.508  mm,	Z =  -208.217  mm,
	W =  -160.314 deg,	P =    -1.439 deg,	R =   -88.363 deg
};
P[10:"Tool-Pick-Pounce"]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  2207.383  mm,	Y = -1563.618  mm,	Z =   -12.197  mm,
	W =  -168.976 deg,	P =      .128 deg,	R =   -67.418 deg
};
P[11]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1871.895  mm,	Y = -2049.508  mm,	Z =  -208.217  mm,
	W =  -160.314 deg,	P =    -1.439 deg,	R =   -88.363 deg
};
P[12:"Tool-Pick-Apr"]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, -1',
	X =  1871.895  mm,	Y = -1833.343  mm,	Z = -1544.904  mm,
	W =  -160.314 deg,	P =    -1.439 deg,	R =   -88.363 deg
};
P[13]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, -1',
	X =  1823.172  mm,	Y = -1674.592  mm,	Z = -2034.694  mm,
	W =  -156.842 deg,	P =    -1.861 deg,	R =   -88.736 deg
};
/END
