/PROG  REPAIR
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "REPAIR PRG V4.0";
PROG_SIZE	= 4634;
CREATE		= DATE 14-10-06  TIME 19:53:04;
MODIFIED	= DATE 16-12-06  TIME 09:57:20;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 208;
MEMORY_SIZE	= 5082;
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
   2:  !  GM METAL FORMING GLOBAL 4 S/W ;
   3:  !******************************** ;
   4:  !      REPAIR PROGRAM ;
   5:  !******************************** ;
   6:  !  LINE: Plant X Line Y ;
   7:  !  ROBOT: RX1 ;
   8:  !******************************** ;
   9:  ! 2016-12-06 Global-4 S/W Rel 4. ;
  10:  !******************************** ;
  11:   ;
  12:  GO[1:0]=(127) ;
  13:   ;
  14:  UTOOL_NUM=1 ;
  15:  UFRAME_NUM=1 ;
  16:   ;
  17:  SET SEGMENT(1) ;
  18:   ;
  19:J P[1] 50% CNT50    ;
  20:J P[2] 100% CNT100    ;
  21:J P[3] 100% CNT100    ;
  22:J P[4] 100% CNT100    ;
  23:   ;
  24:J P[5] 50% CNT50    ;
  25:   ;
  26:  !-------------------------------- ;
  27:  LBL[1] ;
  28:   ;
  29:  AT SERV POUNCE    ;
  30:  SELECT R[150]=1,JMP LBL[10] ;
  31:   ;
  32:         =2,JMP LBL[20] ;
  33:         =3,JMP LBL[30] ;
  34:         =4,JMP LBL[40] ;
  35:         =5,JMP LBL[50] ;
  36:         =6,JMP LBL[60] ;
  37:         =7,JMP LBL[70] ;
  38:         =15,JMP LBL[90] ;
  39:         ELSE,JMP LBL[1] ;
  40:   ;
  41:  !-------------------------------- ;
  42:  LBL[10:TOOL TYPE 1] ;
  43:  SET SEGMENT(5) ;
  44:J P[11] 100% CNT100    ;
  45:J P[12] 100% CNT100    ;
  46:J P[13] 100% CNT100    ;
  47:J P[14] 100% CNT100    ;
  48:   ;
  49:J P[15] 50% CNT50    ;
  50:  REQUEST CONTINUE    ;
  51:   ;
  52:  SET SEGMENT(63) ;
  53:J P[14] 100% CNT100    ;
  54:J P[13] 100% CNT100    ;
  55:J P[12] 100% CNT100    ;
  56:J P[11] 100% CNT100    ;
  57:  JMP LBL[90] ;
  58:   ;
  59:  !-------------------------------- ;
  60:  LBL[20:TOOL TYPE 2] ;
  61:  SET SEGMENT(5) ;
  62:J P[21] 100% CNT100    ;
  63:J P[22] 100% CNT100    ;
  64:J P[23] 100% CNT100    ;
  65:J P[24] 100% CNT100    ;
  66:   ;
  67:J P[25] 50% CNT50    ;
  68:  REQUEST CONTINUE    ;
  69:   ;
  70:  SET SEGMENT(63) ;
  71:J P[24] 100% CNT100    ;
  72:J P[23] 100% CNT100    ;
  73:J P[22] 100% CNT100    ;
  74:J P[21] 100% CNT100    ;
  75:  JMP LBL[90] ;
  76:   ;
  77:  !-------------------------------- ;
  78:  LBL[30:TOOL TYPE 3] ;
  79:  SET SEGMENT(5) ;
  80:J P[31] 100% CNT100    ;
  81:J P[32] 100% CNT100    ;
  82:J P[33] 100% CNT100    ;
  83:J P[34] 100% CNT100    ;
  84:   ;
  85:J P[35] 50% CNT50    ;
  86:  REQUEST CONTINUE    ;
  87:   ;
  88:  SET SEGMENT(63) ;
  89:J P[34] 100% CNT100    ;
  90:J P[33] 100% CNT100    ;
  91:J P[32] 100% CNT100    ;
  92:J P[31] 100% CNT100    ;
  93:  JMP LBL[90] ;
  94:   ;
  95:  !-------------------------------- ;
  96:  LBL[40:TOOL TYPE 4] ;
  97:J P[36] 100% CNT100    ;
  98:J P[37] 100% CNT100    ;
  99:J P[38] 100% CNT100    ;
 100:J P[39] 100% CNT100    ;
 101:J P[40] 50% CNT100    ;
 102:  REQUEST CONTINUE    ;
 103:  SET SEGMENT(63) ;
 104:J P[39] 100% CNT100    ;
 105:J P[38] 100% CNT100    ;
 106:J P[37] 100% CNT100    ;
 107:J P[36] 100% CNT100    ;
 108:  ! Insert the middle points from ;
 109:  ! REPAIR to the Pounce position. ;
 110:   ;
 111:  JMP LBL[90] ;
 112:   ;
 113:  !-------------------------------- ;
 114:  LBL[50:TOOL TYPE 5] ;
 115:J P[44] 100% CNT100    ;
 116:J P[45] 100% CNT100    ;
 117:J P[46] 100% CNT100    ;
 118:J P[47] 100% CNT100    ;
 119:   ;
 120:J P[48] 50% CNT50    ;
 121:   ;
 122:  ! Insert middle points up to ;
 123:  ! the REPAIR position. ;
 124:   ;
 125:  REQUEST CONTINUE    ;
 126:   ;
 127:  SET SEGMENT(63) ;
 128:J P[47] 100% CNT100    ;
 129:J P[46] 100% CNT100    ;
 130:J P[45] 100% CNT100    ;
 131:J P[44] 100% CNT100    ;
 132:  ! Insert the middle points from ;
 133:  ! REPAIR to the Pounce position. ;
 134:   ;
 135:  JMP LBL[90] ;
 136:   ;
 137:  !-------------------------------- ;
 138:  LBL[60:TOOL TYPE 6] ;
 139:J P[52] 100% CNT100    ;
 140:J P[53] 100% CNT100    ;
 141:J P[54] 100% CNT100    ;
 142:J P[55] 100% CNT100    ;
 143:   ;
 144:J P[56] 50% CNT50    ;
 145:   ;
 146:  ! Insert middle points up to ;
 147:  ! the REPAIR position. ;
 148:   ;
 149:  REQUEST CONTINUE    ;
 150:   ;
 151:  SET SEGMENT(63) ;
 152:J P[55] 100% CNT100    ;
 153:J P[54] 100% CNT100    ;
 154:J P[53] 100% CNT100    ;
 155:J P[52] 100% CNT100    ;
 156:  ! Insert the middle points from ;
 157:  ! REPAIR to the Pounce position. ;
 158:   ;
 159:  JMP LBL[90] ;
 160:   ;
 161:  !-------------------------------- ;
 162:  LBL[70:NO TOOL] ;
 163:   ;
 164:  ! Make this position the zero or ;
 165:  ! mastering position. ;
 166:J P[6] 100% CNT100    ;
 167:  SET SEGMENT(5) ;
 168:  IF DO[338:ON ]=ON,JMP LBL[85] ;
 169:   ;
 170:J P[71] 100% CNT100    ;
 171:J P[72] 100% CNT100    ;
 172:J P[73] 100% CNT100    ;
 173:J P[74] 100% CNT100    ;
 174:   ;
 175:J P[75] 50% CNT50    ;
 176:  REQUEST CONTINUE    ;
 177:   ;
 178:  SET SEGMENT(63) ;
 179:J P[74] 100% CNT100    ;
 180:J P[73] 100% CNT100    ;
 181:J P[72] 100% CNT100    ;
 182:J P[71] 100% CNT100    ;
 183:  JMP LBL[90] ;
 184:   ;
 185:  !-------------------------------- ;
 186:  LBL[85] ;
 187:  MESSAGE[...] ;
 188:  MESSAGE[REPAIR: NO TOOL REPAIR] ;
 189:  MESSAGE[ POSITION SELECTED BUT] ;
 190:  MESSAGE[ TOOL PRESENT IS ON ...] ;
 191:  CALL FLT_RCVR(119,2,0) ;
 192:  JMP LBL[90] ;
 193:   ;
 194:  !-------------------------------- ;
 195:  LBL[90:MOVE TO HOME] ;
 196:   ;
 197:J P[5] 100% CNT100    ;
 198:   ;
 199:J P[4] 100% CNT100    ;
 200:J P[3] 100% CNT100    ;
 201:J P[2] 100% CNT100    ;
 202:   ;
 203:J P[9] 50% CNT100    ;
 204:   ;
 205:  MOVE TO HOME    ;
 206:   ;
 207:  !-------------------------------- ;
 208:  LBL[100:END OF PROGRAM] ;
/POS
P[1]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[2]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[3]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[4]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[5]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[6]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[9]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[11]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[12]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[13]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[14]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[15]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[21]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[22]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[23]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[24]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[25]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[31]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[32]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[33]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[34]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[35]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[36]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[37]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[38]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[39]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[40]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[44]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[45]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[46]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[47]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[48]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[52]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[53]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[54]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[55]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[56]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[71]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[72]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[73]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[74]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[75]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
/END
