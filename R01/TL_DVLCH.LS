/PROG  TL_DVLCH	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "DNET N_55 LATCH";
PROG_SIZE	= 1568;
CREATE		= DATE 06-12-07  TIME 07:34:06;
MODIFIED	= DATE 16-03-19  TIME 09:43:54;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 56;
MEMORY_SIZE	= 2000;
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
   2:  !  GM METAL FORMING GLOBAL 3 S/W ;
   3:  !******************************** ;
   4:  ! TL_DVLCH: MACRO TO CONNECT ;
   5:  !    DEVICE-NET NODE 55. ;
   6:  !******************************** ;
   7:  ! 2016-03-19 - UPDATED DI[269] TO ;
   8:  !    DI[264] FOR BYPASS TOOL CHK. ;
   9:  ! 2014-10-06 Global-3 S/W Rel 3.0 ;
  10:  !******************************** ;
  11:   ;
  12:  IF DI[264:OFF]=ON OR R[131]=1,JMP LBL[80] ;
  13:   ;
  14:  !REDUNDANT IN CASE IT'S MISSING ;
  15:  CALL DV_ARON(2,55) ;
  16:   ;
  17:  CALL DV_STCHK(2,55,118) ;
  18:   ;
  19:  IF R[118]=2,JMP LBL[50] ;
  20:   ;
  21:  R[119]=0    ;
  22:   ;
  23:  !================================ ;
  24:  LBL[10] ;
  25:  IF R[118]=2,JMP LBL[50] ;
  26:  R[119]=R[119]+1    ;
  27:  IF R[118]<2 AND R[119]<=AR[1],JMP LBL[10] ;
  28:  IF R[119]>=AR[1],JMP LBL[70] ;
  29:   ;
  30:  !================================ ;
  31:  LBL[50:N55 CONNECTED] ;
  32:  R[130]=1    ;
  33:  CALL DV_AROFF(2,55) ;
  34:  JMP LBL[100] ;
  35:   ;
  36:  !================================ ;
  37:  LBL[70:N55 NOT CONNECTD] ;
  38:  MESSAGE[...] ;
  39:  MESSAGE[TL_DVLCH: TC/MH FAULT..] ;
  40:  MESSAGE[Unable to Connect DNET] ;
  41:  MESSAGE[Node 55 in Tool Pick] ;
  42:   ;
  43:  R[130]=0    ;
  44:  MH FAULT RECOVRY(115,1,0) ;
  45:  JMP LBL[100] ;
  46:   ;
  47:  !================================ ;
  48:  LBL[80:TL CHK DISABLED] ;
  49:  MESSAGE[...] ;
  50:  MESSAGE[TL_CHKTP: DNet not] ;
  51:  MESSAGE[Connected Because] ;
  52:  MESSAGE[Tool Check Is Disabled] ;
  53:  R[133]=0    ;
  54:  MH FAULT RECOVRY(117,2,0) ;
  55:   ;
  56:  LBL[100:END OF PROGRAM] ;
/POS
/END
