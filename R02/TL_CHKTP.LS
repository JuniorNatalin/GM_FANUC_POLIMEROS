/PROG  TL_CHKTP	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "CHK TOOL TYPE";
PROG_SIZE	= 2906;
CREATE		= DATE 06-12-18  TIME 07:34:18;
MODIFIED	= DATE 16-10-26  TIME 13:52:12;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 113;
MEMORY_SIZE	= 3342;
PROTECT		= READ;
STORAGE		= CMOS;
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
   4:  ! TL_CHKTP: MACRO FOR CHECKING ;
   5:  ! THAT THE TOOL TYPE(CURRENT TYPE ;
   6:  ! FOR TOOL DROP AND NEXT TYPE ;
   7:  ! FOR TOOL PICK) MATCHES THE ;
   8:  ! PROGRAMMED TOOL TYPE. ;
   9:  !-------------------------------- ;
  10:  ! AR[1]- 1 for DPOP OR 2 for PICK ;
  11:  ! AR[2]- TOOL TYPE CODE ;
  12:  ! VALID TOOL TYPE CODES: ;
  13:  ! 101 for TYPE 1, 102 for TYPE 2 ;
  14:  ! 103 for TYPE 3, 104 for TYPE 4 ;
  15:  ! 105 for TYPE 5, 106 for TYPE 6 ;
  16:  !******************************** ;
  17:  ! 2016-10-25 Global-4 S/W Rel 4.0 ;
  18:  !******************************** ;
  19:   ;
  20:  IF DI[264]=ON OR R[131]=1,JMP LBL[80] ;
  21:   ;
  22:  R[137]=AR[1]    ;
  23:  R[138]=AR[2]    ;
  24:   ;
  25:  SELECT R[137]=1,JMP LBL[10] ;
  26:         =2,JMP LBL[50] ;
  27:         ELSE,JMP LBL[99] ;
  28:   ;
  29:  !================================ ;
  30:  LBL[10:TOOL DROP] ;
  31:  IF GI[15]<>255,JMP LBL[20] ;
  32:  JMP LBL[30] ;
  33:   ;
  34:  !-------------------------------- ;
  35:  LBL[20:CHK TOOLID] ;
  36:  IF GI[15]>100 AND GI[15]<=106,JMP LBL[40] ;
  37:   ;
  38:  IF GI[15]>0 AND GI[15]<=100,JMP LBL[30] ;
  39:   ;
  40:  !ELSE M/H FAULT ;
  41:  MESSAGE[...] ;
  42:  MESSAGE[TL_CHKTP: Fault #101] ;
  43:  MESSAGE[Invalid Tool ID or] ;
  44:  MESSAGE[Tool Type Number] ;
  45:  R[133]=0    ;
  46:  MH FAULT RECOVRY(101,1,0) ;
  47:  JMP LBL[100] ;
  48:   ;
  49:  !-------------------------------- ;
  50:  LBL[30:TOOL TYPE IN S/W] ;
  51:  IF R[138]=R[132],JMP LBL[90] ;
  52:   ;
  53:  ! ELSE M/H FAULT ;
  54:  MESSAGE[...] ;
  55:  MESSAGE[TL_CHKTP: Fault #108] ;
  56:  MESSAGE[Tool Drop Program] ;
  57:  MESSAGE[Is Not Correct for] ;
  58:  MESSAGE[Tool Typ Last Pickd] ;
  59:  R[133]=0    ;
  60:  MH FAULT RECOVRY(108,1,0) ;
  61:  JMP LBL[100] ;
  62:   ;
  63:  !-------------------------------- ;
  64:  LBL[40:TOOL TYPE IN H/W] ;
  65:  IF GI[15]=R[138],JMP LBL[90] ;
  66:   ;
  67:  ! ELSE M/H FAULT ;
  68:  MESSAGE[...] ;
  69:  MESSAGE[TL_CHKTP: Fault #106] ;
  70:  MESSAGE[Tool Drop Program] ;
  71:  MESSAGE[Is Not Correct for] ;
  72:  MESSAGE[Current Tool Type] ;
  73:  R[133]=0    ;
  74:  MH FAULT RECOVRY(106,1,0) ;
  75:  JMP LBL[100] ;
  76:   ;
  77:  !================================ ;
  78:  LBL[50:TOOL PICK] ;
  79:  R[135]=GI[71]+100    ;
  80:  IF R[135]=R[138],JMP LBL[90] ;
  81:   ;
  82:  ! ELSE M/H FAULT ;
  83:  MESSAGE[...] ;
  84:  MESSAGE[TL_CHKTP: Fault #107] ;
  85:  MESSAGE[Tool Pick Program] ;
  86:  MESSAGE[Is Not Correct for] ;
  87:  MESSAGE[Next Tool Type] ;
  88:  R[133]=0    ;
  89:  MH FAULT RECOVRY(107,1,0) ;
  90:  JMP LBL[100] ;
  91:   ;
  92:  !================================ ;
  93:  LBL[80:TL CHK DISABLED] ;
  94:  MESSAGE[...] ;
  95:  MESSAGE[TL_CHKTP: Tool Type] ;
  96:  MESSAGE[Not Checked Because] ;
  97:  MESSAGE[Tool Check Is Disabled] ;
  98:  MH FAULT RECOVRY(117,2,0) ;
  99:  JMP LBL[90] ;
 100:   ;
 101:  !================================ ;
 102:  LBL[90] ;
 103:  R[133]=1    ;
 104:  JMP LBL[100] ;
 105:   ;
 106:  !================================ ;
 107:  LBL[99:INVALID ARGUMENT] ;
 108:  MESSAGE[...] ;
 109:  MESSAGE[INVALID ARGUMENT PASSED] ;
 110:  R[133]=0    ;
 111:   ;
 112:  !================================ ;
 113:  LBL[100:END OF PROGRAM] ;
/POS
/END
