/PROG  S105_DR_T01N1_R01
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "TL DRP TYP1 NST1";
PROG_SIZE	= 3677;
CREATE		= DATE 18-02-14  TIME 15:26:48;
MODIFIED	= DATE 18-03-27  TIME 15:50:24;
FILE_NAME	= S105_DR_;
VERSION		= 0;
LINE_COUNT	= 114;
MEMORY_SIZE	= 4109;
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
  34:J P[12:Tool-Pick-Clear] 100% CNT50    ;
  35:   ;
  36:L P[11] 2000mm/sec CNT50    ;
  37:   ;
  38:L P[10:Tool-Pick-Dep-2] 2000mm/sec CNT50    ;
  39:L P[4:Tool-Pick-Dep-1] 300mm/sec FINE    ;
  40:L P[13:Tool-Pick] 50mm/sec FINE    ;
  41:  !-------------------------------- ;
  42:  LBL[20:UNLATCH TOOL] ;
  43:  DO[907:OFF]=PULSE,0.5sec ;
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
  72:   ;
  73:  SET SEGMENT(51) ;
  74:   ;
  75:L P[15:Tool-Pick-Apr] 2000mm/sec CNT100    ;
  76:   ;
  77:L P[14] 2000mm/sec CNT100    ;
  78:J P[5:Tool-Pick-Pounce] 100% CNT50    ;
  79:   ;
  80:  ! Move To Home ;
  81:  JMP LBL[100] ;
  82:   ;
  83:  !-------------------------------- ;
  84:  LBL[80:UNLATCH FAULT] ;
  85:  !MOVE BACK TO HOME WITH TOOL ;
  86:  !on Reverse Path before Tool Drop ;
  87:   ;
  88:  LATCH TOOL    ;
  89:   ;
  90:  SET SEGMENT(63) ;
  91:  !SEG(63), Robot Move to Home ;
  92:L P[6:Tool-Pick-Dep-1] 50mm/sec FINE    ;
  93:L P[3:Tool-Pick-Dep-2] 2000mm/sec CNT50    ;
  94:   ;
  95:L P[2] 2000mm/sec CNT50    ;
  96:   ;
  97:J P[1:Tool-Pick-Clear] 50% CNT50    ;
  98:   ;
  99:  SET SEGMENT(63) ;
 100:  R[132]=0    ;
 101:  GO[71:0]=0 ;
 102:   ;
 103:  ! Move To Home ;
 104:  JMP LBL[100] ;
 105:   ;
 106:  !-------------------------------- ;
 107:  LBL[99:ABORT PROGRAM] ;
 108:  MESSAGE[...] ;
 109:  MESSAGE[ABORT PROGRAM] ;
 110:  ABORT ;
 111:   ;
 112:  !-------------------------------- ;
 113:  LBL[100:END OF PROGRAM] ;
 114:  END ;
/POS
P[1:"Tool-Pick-Clear"]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  2207.383  mm,	Y = -1563.618  mm,	Z =   573.403  mm,
	W =  -168.976 deg,	P =      .128 deg,	R =   -67.418 deg
};
P[2]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1697.076  mm,	Y = -1884.373  mm,	Z =   -72.555  mm,
	W =  -162.970 deg,	P =    -9.703 deg,	R =   -92.924 deg
};
P[3:"Tool-Pick-Dep-2"]{
   GP1:
	UF : 0, UT : 10,	
	J1=   -44.955 deg,	J2=   -60.265 deg,	J3=    21.412 deg,
	J4=   149.609 deg,	J5=   -14.826 deg,	J6=  -197.228 deg
};
P[4:"Tool-Pick-Dep-1"]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, -1',
	X =  1825.690  mm,	Y = -1674.727  mm,	Z = -2040.573  mm,
	W =  -156.842 deg,	P =    -1.861 deg,	R =   -88.736 deg
};
P[5:"Tool-Pick-Pounce"]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  2207.383  mm,	Y = -1563.618  mm,	Z =   -12.197  mm,
	W =  -168.976 deg,	P =      .128 deg,	R =   -67.418 deg
};
P[6:"Tool-Pick-Dep-1"]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, -1',
	X =  1825.671  mm,	Y = -1674.732  mm,	Z = -2040.578  mm,
	W =  -156.842 deg,	P =    -1.861 deg,	R =   -88.735 deg
};
P[10:"Tool-Pick-Dep-2"]{
   GP1:
	UF : 0, UT : 10,	
	J1=   -44.955 deg,	J2=   -60.265 deg,	J3=    21.412 deg,
	J4=   149.609 deg,	J5=   -14.826 deg,	J6=  -197.228 deg
};
P[11]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1697.076  mm,	Y = -1884.373  mm,	Z =   -72.555  mm,
	W =  -162.970 deg,	P =    -9.703 deg,	R =   -92.924 deg
};
P[12:"Tool-Pick-Clear"]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  2207.383  mm,	Y = -1563.618  mm,	Z =   573.403  mm,
	W =  -168.976 deg,	P =      .128 deg,	R =   -67.418 deg
};
P[13:"Tool-Pick"]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, -1',
	X =  1840.349  mm,	Y = -1675.516  mm,	Z = -2074.769  mm,
	W =  -156.842 deg,	P =    -1.860 deg,	R =   -88.735 deg
};
P[14]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =  1871.895  mm,	Y = -2049.508  mm,	Z =  -208.217  mm,
	W =  -160.314 deg,	P =    -1.439 deg,	R =   -88.363 deg
};
P[15:"Tool-Pick-Apr"]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, -1',
	X =  1871.895  mm,	Y = -1833.343  mm,	Z = -1544.904  mm,
	W =  -160.314 deg,	P =    -1.439 deg,	R =   -88.363 deg
};
P[17]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, -1',
	X =  1823.172  mm,	Y = -1674.592  mm,	Z = -2034.694  mm,
	W =  -156.842 deg,	P =    -1.861 deg,	R =   -88.736 deg
};
/END
