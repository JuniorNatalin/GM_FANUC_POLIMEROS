/PROG  MOV_POUNCE	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Multiple Pounce";
PROG_SIZE	= 6644;
CREATE		= DATE 03-10-17  TIME 16:29:24;
MODIFIED	= DATE 17-04-03  TIME 07:47:12;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 168;
MEMORY_SIZE	= 7356;
PROTECT		= READ_WRITE;
STORAGE		= SHADOW;
TCD:  STACK_SIZE	= 1200,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
/MN
   1:  !******************************* ;
   2:  !GM Global Robot Specification 4 ;
   3:  !******************************* ;
   4:  !Pounce Path for paths between ;
   5:  !pounce positions ;
   6:  ! ;
   7:  !AR[1] Destination Pos Reg# ;
   8:   ;
   9:  !AR[2] If program expects to be ;
  10:  !at a known pounce already ;
  11:   ;
  12:  !AR[2] to 1 = Should be at a ;
  13:  !known pounce and validate it is ;
  14:  !AR[2] is 2 = Not expected to be ;
  15:  !known Pounce is called from end ;
  16:  !of pick,drop, program to return ;
  17:  !back to pounce without checks ;
  18:  !******************************* ;
  19:   ;
  20:  !Save Passed Arguments ;
  21:  !Set Destination Register ;
  22:  R[103]=AR[1]    ;
  23:  R[109]=AR[2]    ;
  24:   ;
  25:  !Verify AR[2] is supported ;
  26:  IF (AR[2]<1 OR AR[2]>2),JMP LBL[10001] ;
  27:  !Check Request Pounce is valid ;
  28:  IF (R[103]>R[105]),JMP LBL[10002] ;
  29:   ;
  30:  !Verifiy Pounces REFPos& Enabled ;
  31:  !If used,must be enabled or Fault ;
  32:  IF ($REFPOS1[1].$ENABLED=0 AND R[105]>=1),CALL REF_POS_FLT(1) ;
  33:  IF ($REFPOS1[2].$ENABLED=0 AND R[105]>=2),CALL REF_POS_FLT(2) ;
  34:  IF ($REFPOS1[3].$ENABLED=0 AND R[105]>=3),CALL REF_POS_FLT(3) ;
  35:  IF ($REFPOS1[4].$ENABLED=0 AND R[105]>=4),CALL REF_POS_FLT(4) ;
  36:  IF ($REFPOS1[5].$ENABLED=0 AND R[105]>=5),CALL REF_POS_FLT(5) ;
  37:  IF ($REFPOS1[6].$ENABLED=0 AND R[105]>=6),CALL REF_POS_FLT(6) ;
  38:  IF ($REFPOS1[7].$ENABLED=0 AND R[105]>=7),CALL REF_POS_FLT(7) ;
  39:  IF ($REFPOS1[8].$ENABLED=0 AND R[105]>=8),CALL REF_POS_FLT(8) ;
  40:  IF ($REFPOS1[9].$ENABLED=0 AND R[105]>=9),CALL REF_POS_FLT(9) ;
  41:  IF ($REFPOS1[10].$ENABLED=0 AND R[105]>=10),CALL REF_POS_FLT(10) ;
  42:   ;
  43:  R[110]=0    ;
  44:  R[104]=0    ;
  45:   ;
  46:  !Jump to the type of MOV_Pounce ;
  47:  !the user has selected to use ;
  48:  JMP LBL[R[109]] ;
  49:   ;
  50:  !-------------------------------- ;
  51:  LBL[1:Known Pounce] ;
  52:  !Programmed that the robot should ;
  53:  !be at a known pounce to move to ;
  54:  !the next pounce ;
  55:  !-------------------------------- ;
  56:   ;
  57:  !Check if at a Pounce Position ;
  58:  !All Pounces are Reference Pos. ;
  59:  !Outputs maintained by System ;
  60:  !Set which Ref Pos pounce is ON ;
  61:  IF (DO[433:ON ]=ON AND $REFPOS1[1].$ENABLED=1 AND R[105]>=1),R[104]=(1) ;
  62:  IF (DO[434:OFF]=ON AND $REFPOS1[2].$ENABLED=1 AND R[105]>=2),R[104]=(2) ;
  63:  IF (DO[435:OFF]=ON AND $REFPOS1[3].$ENABLED=1 AND R[105]>=3),R[104]=(3) ;
  64:  IF (DO[436:OFF]=ON AND $REFPOS1[4].$ENABLED=1 AND R[105]>=4),R[104]=(4) ;
  65:  IF (DO[437:OFF]=ON AND $REFPOS1[5].$ENABLED=1 AND R[105]>=5),R[104]=(5) ;
  66:  IF (DO[438:OFF]=ON AND $REFPOS1[6].$ENABLED=1 AND R[105]>=6),R[104]=(6) ;
  67:  IF (DO[439:OFF]=ON AND $REFPOS1[7].$ENABLED=1 AND R[105]>=7),R[104]=(7) ;
  68:  IF (DO[440:OFF]=ON AND $REFPOS1[8].$ENABLED=1 AND R[105]>=8),R[104]=(8) ;
  69:  IF (DO[441:OFF]=ON AND $REFPOS1[9].$ENABLED=1 AND R[105]>=9),R[104]=(9) ;
  70:  IF (DO[442:OFF]=ON AND $REFPOS1[10].$ENABLED=1 AND R[105]>=10),R[104]=(10) ;
  71:   ;
  72:  !Not at pounce & needed go Delay ;
  73:  IF ((R[110]<20 AND R[104]=0) OR ($MOR_GRP[1].$ROB_MOVE=1)),JMP LBL[10004] ;
  74:   ;
  75:  !Make sure at a Pounce, if User ;
  76:  !passed robot should be @ Pounce ;
  77:  IF R[104]=0,JMP LBL[10003] ;
  78:   ;
  79:  R[106]=0    ;
  80:   ;
  81:  !Call program to see if user has ;
  82:  !create intermediate path program ;
  83:  !from current pounce found,to the ;
  84:  !destination pounce passed for ;
  85:  !use in this pounce move path ;
  86:   ;
  87:  CALL CKPRPATH    ;
  88:   ;
  89:  !If use PR Path > Zero,indicates ;
  90:  !user had created path program ;
  91:  !and it is Loaded for use in SR 1 ;
  92:  IF (R[106]>0),CALL SR[1] ;
  93:   ;
  94:  !After returning, Path should be ;
  95:  !able to move to Pounce Directly ;
  96:  !-------------------------------- ;
  97:  LBL[2:To Destination] ;
  98:  !-------------------------------- ;
  99:  !Set to the Default Frames ;
 100:  UFRAME_NUM=0 ;
 101:  UTOOL_NUM=1 ;
 102:  LOCK PREG ;
 103:  !Move to the requested Pounce ;
 104:J PR[R[103]] 100% FINE    ;
 105:  UNLOCK PREG ;
 106:  R[104]=R[103]    ;
 107:  !Update Reference Position just ;
 108:  !moved to so it is latest ;
 109:  //CALL GET_HOME    ;
 110:  END ;
 111:   ;
 112:  !******************************* ;
 113:  !*** MOV_POUNCE Program FAULTS * ;
 114:  !******************************* ;
 115:  LBL[10001:AR-2 is Invalid] ;
 116:  CALL LOG_ERR('MOV_POUNCE AR[2]','=',109,' that must be',' 1 or 2') ;
 117:   ;
 118:  CALL USERPAGE    ;
 119:  !Write to the User Menu ;
 120:  CALL WRT_USER('In MOV_POUNCE t','he AR[2] is',109,' values') ;
 121:  CALL WRT_USER('are 1 and 2. Pas','sing a 1 indicat','es the') ;
 122:  CALL WRT_USER('User expects the',' Robot to be at ','a ') ;
 123:  CALL WRT_USER('known pounce whe','n the program is',' called.') ;
 124:  CALL WRT_USER('Passing a 2 mean','s the robot IS N','OT ') ;
 125:  CALL WRT_USER('at a Pounce and ','the User expects',' that.') ;
 126:  CALL WRT_USER(' ') ;
 127:  CALL WRT_USER('This Error cause','s the Robot to A','BORT!') ;
 128:  ABORT ;
 129:   ;
 130:  !******************************* ;
 131:  !**** Invalid Pounce Error ***** ;
 132:  !******************************* ;
 133:  LBL[10002:Invalid Pounce] ;
 134:  !Passed Pounce number INVALID ;
 135:  CALL LOG_ERR('MOV_POUNCE AR[1]','=',103,' that must be',' 1-',105) ;
 136:  !Write to the User Menu ;
 137:  CALL USERPAGE    ;
 138:  CALL WRT_USER('The MOV_POUNCE p','rogram was passe','d Pounce') ;
 139:  CALL WRT_USER('#',103,' and the max','imum setup is',105,' Pounces.') ;
 140:  CALL WRT_USER('The maximum poss','iable to setup i','s 10. If') ;
 141:  CALL WRT_USER('the value in Reg','[105] is less yo','u can ') ;
 142:  CALL WRT_USER('change the value',' in register 105',' then ') ;
 143:  CALL WRT_USER('restart the prog','ram again. ') ;
 144:  CALL WRT_USER(' ') ;
 145:  CALL WRT_USER('This Error cause','s the Robot to A','BORT!') ;
 146:  ABORT ;
 147:   ;
 148:  LBL[10003:No Start Pounce] ;
 149:  CALL LOG_ERR('Robot MUST BE ','at a POUNCE in ','MOV_POUNCE') ;
 150:  !Write to the User Menu ;
 151:  CALL USERPAGE    ;
 152:  CALL WRT_USER('In MOV_POUNCE,',' the AR[2] is',109,'. Values') ;
 153:  CALL WRT_USER('are 1 or 2. Pas','sing 1 indicat','es the') ;
 154:  CALL WRT_USER('User expects the',' Robot to be at ','a known') ;
 155:  CALL WRT_USER('pounce when the ','program is call','ed.') ;
 156:  CALL WRT_USER('NONE of the REFP','ositions indicat','e Robot') ;
 157:  CALL WRT_USER('at a Pounce and ','the User expects',' that.') ;
 158:  CALL WRT_USER('User was trying ','to move to Pounc','e#',103) ;
 159:  CALL WRT_USER(' ') ;
 160:  CALL WRT_USER('This Error cause','s the Robot to A','BORT!') ;
 161:  ABORT ;
 162:   ;
 163:  LBL[10004:Not At Pounce] ;
 164:  R[110]=(R[110]+1) ;
 165:  !Delay & Check for Pounces again ;
 166:  WAIT    .10(sec) ;
 167:  JMP LBL[1] ;
 168:   ;
/POS
/END
