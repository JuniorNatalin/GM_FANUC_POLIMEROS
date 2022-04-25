/PROG  REF_POS_FLT
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "RefPosFlt V4.0";
PROG_SIZE	= 2092;
CREATE		= DATE 00-12-27  TIME 00:00:00;
MODIFIED	= DATE 18-04-09  TIME 10:53:36;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 69;
MEMORY_SIZE	= 2680;
PROTECT		= READ_WRITE;
STORAGE		= SHADOW;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00001000 00000000;
/APPL
  HANDLING : TRUE ; 
/MN
   1:  !******************************** ;
   2:  !This program is Called From ;
   3:  !MOV_POUNCE when a reference ;
   4:  !position is not ENABLED but ;
   5:  !is enabled to be used in Multi- ;
   6:  !ple pounce set-up. Register 105 ;
   7:  !indicates how many pounces are ;
   8:  !used for the pounces. ;
   9:  !******************************** ;
  10:   ;
  11:  R[110]=AR[1]    ;
  12:  CALL LOG_ERR('Ref. Pos#',110,' DISABLED & is u','sed in MOV_POUNC') ;
  13:  !Jump to Refpos not Enabled ;
  14:  !Ref. Position #1 NOT Enabled ;
  15:  JMP LBL[R[110]] ;
  16:   ;
  17:  !Ref. Position #1 NOT Enabled ;
  18:  LBL[1:Ref Pos#1 Flt] ;
  19:  $REFPOS1[1].$ENABLED=1 ;
  20:  JMP LBL[99] ;
  21:   ;
  22:  !Ref. Position #2 NOT Enabled ;
  23:  LBL[2:Ref Pos#2 Flt] ;
  24:  $REFPOS1[2].$ENABLED=1 ;
  25:  JMP LBL[99] ;
  26:   ;
  27:  !Ref. Position #3 NOT Enabled ;
  28:  LBL[3:Ref Pos#3 Flt] ;
  29:  $REFPOS1[3].$ENABLED=1 ;
  30:  JMP LBL[99] ;
  31:   ;
  32:  !Ref. Position #4 NOT Enabled ;
  33:  LBL[4:Ref Pos#4 Flt] ;
  34:  $REFPOS1[4].$ENABLED=1 ;
  35:  JMP LBL[99] ;
  36:   ;
  37:  !Ref. Position #5 NOT Enabled ;
  38:  LBL[5:Ref Pos#5 Flt] ;
  39:  $REFPOS1[5].$ENABLED=1 ;
  40:  JMP LBL[99] ;
  41:   ;
  42:  !Ref. Position #6 NOT Enabled ;
  43:  LBL[6:Ref Pos#6 Flt] ;
  44:  $REFPOS1[6].$ENABLED=1 ;
  45:  JMP LBL[99] ;
  46:   ;
  47:  !Ref. Position #7 NOT Enabled ;
  48:  LBL[7:Ref Pos#7 Flt] ;
  49:  $REFPOS1[7].$ENABLED=1 ;
  50:  JMP LBL[99] ;
  51:   ;
  52:  !Ref. Position #8 NOT Enabled ;
  53:  LBL[8:Ref Pos#8 Flt] ;
  54:  $REFPOS1[8].$ENABLED=1 ;
  55:  JMP LBL[99] ;
  56:   ;
  57:  !Ref. Position #9 NOT Enabled ;
  58:  LBL[9:Ref Pos#9 Flt] ;
  59:  $REFPOS1[9].$ENABLED=1 ;
  60:  JMP LBL[99] ;
  61:   ;
  62:  !Ref. Position #9 NOT Enabled ;
  63:  LBL[10:Ref Pos#10 Flt] ;
  64:  $REFPOS1[10].$ENABLED=1 ;
  65:  JMP LBL[99] ;
  66:   ;
  67:  LBL[99:End of Program] ;
  68:  CALL LOG_ERR('REF_POS_FLT enab','led RefPos#',110,' for use in MOV_','POUNC') ;
  69:   ;
/POS
/END
