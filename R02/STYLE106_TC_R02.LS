/PROG  STYLE106_TC_R02
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "TC DR STA80";
PROG_SIZE	= 4384;
CREATE		= DATE 18-11-03  TIME 13:36:20;
MODIFIED	= DATE 22-04-09  TIME 18:12:26;
FILE_NAME	= PRT102R1;
VERSION		= 0;
LINE_COUNT	= 213;
MEMORY_SIZE	= 5080;
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
   4:  !* ROBOT ID: IM01R02B02 ;
   5:  !*    F-196844 ;
   6:  !* Line: Line B02 ;
   7:  !******************************** ;
   8:  !******************************** ;
   9:  ! STYLE106: PROGRAM FOR MULTI ;
  10:  !    TOOL DROP TO R02 FAR NEST ;
  11:  ! FAR = STATION 80 ;
  12:  !******************************** ;
  13:  !  2016-08-01 Global-4 S/W Rel 4. ;
  14:  !******************************** ;
  15:  ! Author- Esys Automation ;
  16:  !******************************** ;
  17:   ;
  18:  ! INITIALIZE ;
  19:  GO[1]=106 ;
  20:  R[14]=100    ;
  21:  R[139]=2    ;
  22:  R[140]=1    ;
  23:   ;
  24:  !-------------------------------- ;
  25:  LBL[10:TOOL CHECKS] ;
  26:   ;
  27:  !Check if Tool Present ;
  28:  R[133]=0    ;
  29:  CHK TOOL PRESENT(1) ;
  30:   ;
  31:  !Get Tool ID From PLC ;
  32:  R[156]=GI[15]    ;
  33:   ;
  34:  !Check if Correct Tool for Drop ;
  35:  R[133]=0    ;
  36:  CALL TL_CHK_KM(R[156]) ;
  37:   ;
  38:  !If TL CHK Pass, Cont to Pounce ;
  39:  IF R[133]=1,JMP LBL[20] ;
  40:   ;
  41:  !If TL CHK Fail, MHFault ;
  42:  JMP LBL[905] ;
  43:   ;
  44:  !-------------------------------- ;
  45:  LBL[20:MOVE TO POUNCE] ;
  46:   ;
  47:  CALL POUNCE_STA80    ;
  48:   ;
  49:  ! Move to Home or Continue Cycle ;
  50:  SELECT R[150]=0,JMP LBL[30] ;
  51:         =15,JMP LBL[299] ;
  52:         ELSE,JMP LBL[20] ;
  53:   ;
  54:  !-------------------------------- ;
  55:  LBL[30:START TOOL DROP] ;
  56:   ;
  57:  !Drop Tool to station 80 ;
  58:  ! based on carried tool ;
  59:  SELECT R[156]=1,JMP LBL[101] ;
  60:         =2,JMP LBL[102] ;
  61:         =3,JMP LBL[103] ;
  62:         =5,JMP LBL[105] ;
  63:         =6,JMP LBL[106] ;
  64:         =7,JMP LBL[107] ;
  65:         =9,JMP LBL[109] ;
  66:         =12,JMP LBL[112] ;
  67:         =13,JMP LBL[113] ;
  68:         =17,JMP LBL[117] ;
  69:         =18,JMP LBL[118] ;
  70:         =20,JMP LBL[120] ;
  71:         =38,JMP LBL[138] ;
  72:         =41,JMP LBL[141] ;
  73:         =42,JMP LBL[142] ;
  74:         =46,JMP LBL[146] ;
  75:   ;
  76:         =50,JMP LBL[150] ;
  77:   ;
  78:         ELSE,JMP LBL[910] ;
  79:   ;
  80:  LBL[101] ;
  81:  !Drop Tool 01 STA 80 ;
  82:   ;
  83:  JMP LBL[299] ;
  84:   ;
  85:  LBL[102] ;
  86:  !Drop Tool 2 STA 80 ;
  87:   ;
  88:  JMP LBL[299] ;
  89:   ;
  90:  LBL[103] ;
  91:  !Drop Tool 3 STA 80 ;
  92:  CALL S106_DR_T03N80    ;
  93:  JMP LBL[299] ;
  94:   ;
  95:  LBL[105] ;
  96:  !Drop Tool 5 STA 80 ;
  97:  CALL S106_DR_T05N80    ;
  98:  JMP LBL[299] ;
  99:   ;
 100:  LBL[106] ;
 101:  !Drop Tool 6 STA 80 ;
 102:  CALL S106_DR_T06N80    ;
 103:  JMP LBL[299] ;
 104:   ;
 105:  LBL[107] ;
 106:  !Drop Tool 7 STA 80 ;
 107:  CALL S106_DR_T07N80    ;
 108:  JMP LBL[299] ;
 109:   ;
 110:  LBL[109] ;
 111:  !Drop Tool 9 STA 80 ;
 112:  CALL S106_DR_T09N80    ;
 113:  JMP LBL[299] ;
 114:   ;
 115:  LBL[112] ;
 116:  !Drop Tool 12 STA 80 ;
 117:  CALL S106_DR_T12N80    ;
 118:  JMP LBL[299] ;
 119:   ;
 120:  LBL[113] ;
 121:  !Drop Tool 13 STA 80 ;
 122:  CALL S106_DR_T13N80    ;
 123:  JMP LBL[299] ;
 124:   ;
 125:  LBL[117] ;
 126:  !Drop Tool 17 STA 80 ;
 127:  CALL S106_DR_T17N80    ;
 128:  JMP LBL[299] ;
 129:   ;
 130:  LBL[118] ;
 131:  !Drop Tool 18 STA 80 ;
 132:  CALL S106_DR_T18N80    ;
 133:  JMP LBL[299] ;
 134:   ;
 135:  LBL[120] ;
 136:  !Drop Tool 20 STA 80 ;
 137:  CALL S106_DR_T20N80    ;
 138:  JMP LBL[299] ;
 139:   ;
 140:  LBL[138] ;
 141:  !Drop Tool 38 STA 80 ;
 142:  CALL S106_DR_T38N80    ;
 143:  JMP LBL[299] ;
 144:   ;
 145:  LBL[141] ;
 146:  !Drop Tool 41 STA 80 ;
 147:  CALL S106_DR_T41N80    ;
 148:  JMP LBL[299] ;
 149:   ;
 150:  LBL[142] ;
 151:  !Drop Tool 41 STA 80 ;
 152:  CALL S106_DR_T42N80    ;
 153:  JMP LBL[299] ;
 154:   ;
 155:  LBL[150] ;
 156:  !Drop Tool 41 STA 80 ;
 157:  CALL S106_DR_T50N80    ;
 158:  JMP LBL[299] ;
 159:   ;
 160:  LBL[146] ;
 161:  !Drop Tool 41 STA 80 ;
 162:  CALL S106_DR_T46N80    ;
 163:  JMP LBL[299] ;
 164:   ;
 165:   ;
 166:  LBL[299:Return Home] ;
 167:   ;
 168:  !SEG 63, Robot Move to Home ;
 169:  SET SEGMENT(63) ;
 170:   ;
 171:  CALL RET_HOME_STA80    ;
 172:   ;
 173:  MOVE TO HOME    ;
 174:   ;
 175:  !Check if No Tool Present ;
 176:  R[133]=0    ;
 177:  CHK TOOL PRESENT(0) ;
 178:   ;
 179:  !Update Tool Information ;
 180:  R[157]=GI[15]    ;
 181:  GO[70]=0 ;
 182:  END ;
 183:   ;
 184:   ;
 185:  !*****FAULTS******** ;
 186:  LBL[905:Invalid Tool Num] ;
 187:  MESSAGE[...] ;
 188:  MESSAGE[TOOL CHANGER FAULT] ;
 189:  MESSAGE[ INVALID TOOL NUMBER] ;
 190:  MESSAGE[ GI[70] MUST BE ] ;
 191:  MESSAGE[ EQUAL GI[15] ] ;
 192:  DO[523]=ON ;
 193:  UALM[3] ;
 194:  DO[523]=OFF ;
 195:  JMP LBL[10] ;
 196:   ;
 197:  LBL[910:Invalid Code] ;
 198:  MESSAGE[...] ;
 199:  MESSAGE[TOOL CHANGER FAULT] ;
 200:  MESSAGE[ INVALID TOOL NUMBER] ;
 201:  MESSAGE[ R[156] NOT IN SELECT] ;
 202:  MESSAGE[ LIST.] ;
 203:  MESSAGE[ GI[70:NextToolID] ] ;
 204:  MESSAGE[ NOT EQUAL TO CARRIED TOOL] ;
 205:  MESSAGE[ CHECK PLC OR ] ;
 206:  MESSAGE[ TEACH DROP PATH FOR] ;
 207:  MESSAGE[ CARRIED TOOL.] ;
 208:  MESSAGE[...] ;
 209:  DO[523]=ON ;
 210:  UALM[3] ;
 211:  DO[523]=OFF ;
 212:  JMP LBL[10] ;
 213:   ;
/POS
/END
