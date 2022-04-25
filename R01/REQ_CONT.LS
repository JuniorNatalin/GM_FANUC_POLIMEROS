/PROG  REQ_CONT	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "REQ_CONT V4.1";
PROG_SIZE	= 1666;
CREATE		= DATE 05-05-26  TIME 14:58:06;
MODIFIED	= DATE 16-10-17  TIME 10:00:12;
FILE_NAME	= REQ_CONT;
VERSION		= 0;
LINE_COUNT	= 70;
MEMORY_SIZE	= 2226;
PROTECT		= READ;
STORAGE		= CMOS;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00001000 00000000;
/APPL
/MN
   1:  ! REQUEST PERMISSION TO ENTER ;
   2:  ! INTO NEXT PATH SEGMENT ;
   3:   ;
   4:  LBL[1:BEGIN] ;
   5:   ;
   6:  IF R[159]=1,JMP LBL[10] ;
   7:  !RESET REQUEST CONTINUE ;
   8:  DO[56:OFF]=OFF ;
   9:   ;
  10:  !PLC OK to continue look ahead ;
  11:  IF (GI[3:0]=GO[3:0]),JMP LBL[11] ;
  12:   ;
  13:  ! WAIT FOR OK TO CONTINUE=OFF ;
  14:  WAIT DI[56:OFF]=OFF    ;
  15:  DO[56:OFF]=ON ;
  16:   ;
  17:  !Prompt User to Continue in Teach ;
  18:  IF UO[8:OFF]=OFF,JMP LBL[10] ;
  19:  CALL USERCLR    ;
  20:  CALL CUSTOYN(1,40) ;
  21:  IF UO[8:OFF]=OFF,JMP LBL[10] ;
  22:  IF R[40]=1,JMP LBL[11] ;
  23:   ;
  24:  LBL[10:WAIT FOR OK CONT] ;
  25:  ! SET SegReqConti ;
  26:  R[159]=0    ;
  27:  MESSAGE[WAITING FOR CONTINUE] ;
  28:   ;
  29:  ! WAIT FOR PathSegConti ;
  30:  WAIT DI[56:OFF]=ON    ;
  31:  LBL[11:OK to Continue] ;
  32:   ;
  33:  ! Capture Decision Code ;
  34:  R[150]=GI[2:0]    ;
  35:  $SHELL_WRK.$CUR_DECSN=R[150] ;
  36:  ! Echo Decision Code ;
  37:  GO[2:0]=R[150] ;
  38:  IF (R[150]=13 AND (DO[2002:OFF] OR DO[2003:OFF])),JMP LBL[20] ;
  39:  IF (R[150]=14 AND (DO[2002:OFF] OR DO[2003:OFF])),JMP LBL[30] ;
  40:  IF (R[150]=12 AND (DO[2004:OFF] OR DO[2005:OFF] OR DO[2006:OFF])),JMP LBL[40] ;
  41:  JMP LBL[99] ;
  42:   ;
  43:  LBL[20:PedInspectDress] ;
  44:  !Execute Ped Inspection Dress ;
  45:   ;
  46:  DO[56:OFF]=OFF ;
  47:   ;
  48:  CALL PDINSDRS    ;
  49:   ;
  50:  JMP LBL[1] ;
  51:   ;
  52:  LBL[30:Cap Change] ;
  53:  !Execute Cap Change Functionality ;
  54:   ;
  55:  DO[56:OFF]=OFF ;
  56:   ;
  57:  CALL TIP_RST    ;
  58:   ;
  59:  JMP LBL[1] ;
  60:   ;
  61:  LBL[40:Wakeup Dispenser] ;
  62:  !Remote Start/Purge Dispenser ;
  63:   ;
  64:  DO[56:OFF]=OFF ;
  65:   ;
  66:  IF (DI[66:OFF]=OFF),CALL RMTSTRT1 ;
  67:  IF ($SLEQNUM=2 AND DI[130:OFF]=OFF),CALL RMTSTRT2 ;
  68:   ;
  69:  JMP LBL[1] ;
  70:  LBL[99] ;
/POS
/END
