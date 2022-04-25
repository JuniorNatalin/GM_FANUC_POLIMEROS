/PROG  PRT_INIT	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "INITIALZ MH DATA";
PROG_SIZE	= 1618;
CREATE		= DATE 17-03-16  TIME 11:03:34;
MODIFIED	= DATE 17-03-16  TIME 11:03:34;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 62;
MEMORY_SIZE	= 2002;
PROTECT		= READ_WRITE;
STORAGE		= SHADOW;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
  HANDLING : TRUE ; 
/MN
   1:  !******************************** ;
   2:  !  GM METAL FORMING GLOBAL 4 S/W ;
   3:  !******************************** ;
   4:  ! MACRO FOR INTIALIZING ALL DATA ;
   5:  ! REALTED TO MATERIAL HANDLING. ;
   6:  !******************************** ;
   7:  ! 2016-10-25 Global-4 S/W Rel 3.0 ;
   8:  !******************************** ;
   9:   ;
  10:  ! INITIALIZE STYLE NUM ;
  11:  R[100]=GO[1:0]    ;
  12:   ;
  13:   ;
  14:  R[155]=0    ;
  15:  ! INITIALIZE VACUUM TYPE ;
  16:  ! R[155]=1 --> Venturi ;
  17:  ! R[155]=2 --> Smart Vac Pump ;
  18:   ;
  19:  IF (DI[273:OFF]=ON AND DI[274:ON ]=ON),JMP LBL[95] ;
  20:  IF (DI[273:OFF]=OFF AND DI[274:ON ]=OFF),JMP LBL[96] ;
  21:  IF DI[273:OFF]=ON,JMP LBL[10] ;
  22:  IF DI[274:ON ]=ON,JMP LBL[20] ;
  23:   ;
  24:  LBL[10:VENTURI] ;
  25:  R[155]=1    ;
  26:  JMP LBL[30] ;
  27:   ;
  28:  LBL[20:SMART PUMP] ;
  29:  R[155]=2    ;
  30:   ;
  31:  LBL[30] ;
  32:  R[211]=DI[269:OFF]    ;
  33:  R[212]=DI[270:ON ]    ;
  34:  R[213]=DI[271:ON ]    ;
  35:  R[214]=DI[272:OFF]    ;
  36:   ;
  37:  JMP LBL[100] ;
  38:   ;
  39:  !******************************** ;
  40:  LBL[95:WRONG VAC INPUT] ;
  41:  MESSAGE[...] ;
  42:  MESSAGE[PRT_INIT: BOTH VACUUM] ;
  43:  MESSAGE[TYPE INPUTS ARE ON...] ;
  44:  MESSAGE[ONLY ONE VACUUM TYPE] ;
  45:  MESSAGE[INPUT SHOULD BE ON.] ;
  46:  MESSAGE[PROGRAM ABORTED ...] ;
  47:  MH FAULT RECOVRY(181,1,1) ;
  48:  ABORT ;
  49:   ;
  50:  !******************************** ;
  51:  LBL[96:WRONG VAC INPUT] ;
  52:  MESSAGE[...] ;
  53:  MESSAGE[PRT_INIT: BOTH VACUUM] ;
  54:  MESSAGE[TYPE INPUTS ARE OFF..] ;
  55:  MESSAGE[AT LEAST  ONE  VACUUM] ;
  56:  MESSAGE[TYPE INPUT MUST BE ON] ;
  57:  MESSAGE[PROGRAM ABORTED ...] ;
  58:  MH FAULT RECOVRY(182,1,1) ;
  59:  ABORT ;
  60:   ;
  61:  !******************************** ;
  62:  LBL[100:END OF PROGRAM] ;
/POS
/END
