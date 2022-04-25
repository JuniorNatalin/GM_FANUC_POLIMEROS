/PROG  TL_PRSNT	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "CHK TOOL PRESENT";
PROG_SIZE	= 2218;
CREATE		= DATE 06-12-07  TIME 07:34:14;
MODIFIED	= DATE 16-10-26  TIME 11:32:58;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 84;
MEMORY_SIZE	= 2642;
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
   4:  ! TL_PRSNT: MACRO TO CHECK TOOL ;
   5:  !    PRESENT OR TOOL NOT PRESENT ;
   6:  !    STATUS. ;
   7:  !-------------------------------- ;
   8:  ! AR[1]- 1 for DPOP OR 2 for PICK ;
   9:  !******************************** ;
  10:  ! 2016-04-06 - UPDATED DI[269] TO ;
  11:  !    DI[264] FOR BYPASS TOOL CHK, ;
  12:  !    AND  DO[77] TO DO[338]  FOR ;
  13:  !    TOOL PRESENT ON ROBOT. ;
  14:  ! 2016-30-16 Global-4 S/W Rel 4.0 ;
  15:  !******************************** ;
  16:   ;
  17:  R[137]=AR[1]    ;
  18:  SELECT R[137]=1,JMP LBL[10] ;
  19:         =2,JMP LBL[20] ;
  20:         =0,JMP LBL[20] ;
  21:         ELSE,JMP LBL[99] ;
  22:   ;
  23:  !================================ ;
  24:  LBL[10:TOOL DROP] ;
  25:  ! TOOL NOT PRESENT ON ROBOT? ;
  26:  IF DO[338:ON ]=ON OR DI[905:ON ]=ON,JMP LBL[90] ;
  27:  MH FAULT RECOVRY(113,1,0) ;
  28:  MESSAGE[...] ;
  29:  MESSAGE[TL_PRSNT: Fault #113] ;
  30:  MESSAGE[Tool Not Presnt at Drop] ;
  31:  MESSAGE[Expect Tool Present ...] ;
  32:  R[133]=0    ;
  33:  ABORT ;
  34:  JMP LBL[100] ;
  35:   ;
  36:  !================================ ;
  37:  LBL[20:TOOL PICK] ;
  38:  ! TOOL NOT PRST AND TC UNLATCHED ;
  39:  IF DO[338:ON ]=OFF AND DI[905:ON ]=OFF AND DI[906:OFF]=ON,JMP LBL[90] ;
  40:   ;
  41:  IF DI[906:OFF]=OFF,JMP LBL[26] ;
  42:  JMP LBL[27] ;
  43:   ;
  44:  !TOOL CHANGER NOT UNLATCHED ;
  45:  LBL[26:TC NOT UNLATCHED] ;
  46:  MH FAULT RECOVRY(114,1,0) ;
  47:  MESSAGE[...] ;
  48:  MESSAGE[TL_PRSNT: Fault #114A] ;
  49:  MESSAGE[Tool Changer NOT] ;
  50:  MESSAGE[Unlatched at Pick] ;
  51:  R[133]=0    ;
  52:  ABORT ;
  53:  JMP LBL[100] ;
  54:   ;
  55:  LBL[27:TOOL LATCHED?] ;
  56:  IF DI[905:ON ]=ON OR DO[338:ON ]=ON,JMP LBL[28] ;
  57:  JMP LBL[99] ;
  58:   ;
  59:  !TOOL PRESENT ON ROBOT? ;
  60:  LBL[28:TOOL PRESENT] ;
  61:  MH FAULT RECOVRY(114,1,0) ;
  62:  MESSAGE[...] ;
  63:  MESSAGE[TL_PRSNT: Fault #114B] ;
  64:  MESSAGE[Tool Present at Pick] ;
  65:  MESSAGE[Expect No Tool Present] ;
  66:  R[133]=0    ;
  67:  ABORT ;
  68:  JMP LBL[100] ;
  69:   ;
  70:  !================================ ;
  71:  LBL[90] ;
  72:  R[133]=1    ;
  73:  JMP LBL[100] ;
  74:   ;
  75:  !================================ ;
  76:  LBL[99:ABORT PROGRAM] ;
  77:  MESSAGE[...] ;
  78:  MESSAGE[TL_PRSNT: Fault] ;
  79:  MESSAGE[CONFLICTING I/O OR] ;
  80:  MESSAGE[INVALID ARGUMENT PASSED] ;
  81:  MESSAGE[ABORT PROGRAM ...] ;
  82:  ABORT ;
  83:   ;
  84:  LBL[100:END OF PROGRAM] ;
/POS
/END
