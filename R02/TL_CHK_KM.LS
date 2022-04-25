/PROG  TL_CHK_KM
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "CHK TOOL TYPE";
PROG_SIZE	= 1994;
CREATE		= DATE 17-10-10  TIME 13:06:08;
MODIFIED	= DATE 18-02-08  TIME 15:58:36;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 74;
MEMORY_SIZE	= 2458;
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
   2:  !  GM METAL FORMING GLOBAL 4 S/W ;
   3:  !******************************** ;
   4:  ! ESYS MODIFIED GM TL_CHK MACRO ;
   5:  ! TL_CHK: MACRO FOR CHECKING ;
   6:  ! THAT THE TOOL ID MATCHES THE ;
   7:  ! PROGRAMMED TOOL ID. ;
   8:  ! Source- TL_CHKTP ;
   9:  !-------------------------------- ;
  10:  ! AR[1]- TOOL ID CODE ;
  11:  ! R[156]- TOOL ID REQUEST ;
  12:  ! R[157]- CURRENT TOOL ID ;
  13:  !******************************** ;
  14:  ! 2016-10-25 Global-4 S/W Rel 4.0 ;
  15:  !******************************** ;
  16:  ! Author- Esys Automation ;
  17:  !******************************** ;
  18:   ;
  19:  IF DI[264]=ON OR R[131]=1,JMP LBL[80] ;
  20:   ;
  21:  R[156]=AR[1]    ;
  22:  R[157]=GI[15]    ;
  23:   ;
  24:  !================================ ;
  25:  LBL[10:CHK NO TOOL] ;
  26:  IF GI[15]<>255,JMP LBL[20] ;
  27:  JMP LBL[30] ;
  28:   ;
  29:  !-------------------------------- ;
  30:  LBL[20:CHK TOOLID] ;
  31:   ;
  32:  IF GI[15]>0 AND GI[15]<=100,JMP LBL[30] ;
  33:   ;
  34:  !ELSE M/H FAULT ;
  35:  MESSAGE[...] ;
  36:  MESSAGE[TL_CHKTP: Fault #101] ;
  37:  MESSAGE[Invalid Tool ID or] ;
  38:  MESSAGE[Tool ID Number] ;
  39:  MESSAGE[...] ;
  40:  R[133]=0    ;
  41:  MH FAULT RECOVRY(101,1,0) ;
  42:  JMP LBL[100] ;
  43:   ;
  44:  !-------------------------------- ;
  45:  LBL[30:TOOL TYPE IN S/W] ;
  46:  IF R[157]=R[156],JMP LBL[90] ;
  47:   ;
  48:  ! ELSE M/H FAULT ;
  49:  MESSAGE[...] ;
  50:  MESSAGE[TL_CHKTP: Fault #108] ;
  51:  MESSAGE[Tool ID Request] ;
  52:  MESSAGE[Is Not Correct for] ;
  53:  MESSAGE[Current Tool ID.] ;
  54:  MESSAGE[...] ;
  55:  R[133]=0    ;
  56:  MH FAULT RECOVRY(108,1,0) ;
  57:  JMP LBL[100] ;
  58:   ;
  59:  !================================ ;
  60:  LBL[80:TL CHK DISABLED] ;
  61:  MESSAGE[...] ;
  62:  MESSAGE[TL_CHKTP: Tool Type] ;
  63:  MESSAGE[Not Checked Because] ;
  64:  MESSAGE[Tool Check Is Disabled] ;
  65:  MH FAULT RECOVRY(117,2,0) ;
  66:  JMP LBL[90] ;
  67:   ;
  68:  !================================ ;
  69:  LBL[90] ;
  70:  R[133]=1    ;
  71:  JMP LBL[100] ;
  72:   ;
  73:  !================================ ;
  74:  LBL[100:END OF PROGRAM] ;
/POS
/END
