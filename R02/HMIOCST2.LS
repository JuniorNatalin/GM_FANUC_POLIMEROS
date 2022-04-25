/PROG  HMIOCST2	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "CUSTOM HOME IO";
PROG_SIZE	= 698;
CREATE		= DATE 07-12-16  TIME 17:43:28;
MODIFIED	= DATE 16-07-07  TIME 08:25:48;
FILE_NAME	= HMIOCST;
VERSION		= 0;
LINE_COUNT	= 20;
MEMORY_SIZE	= 1122;
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
   4:  ! HMIOCST2: MACRO FOR CUSTOM ;
   5:  !    POSITION REGISTERS. ;
   6:  !******************************** ;
   7:  ! 2016-05-03 GLOBAL-4 S/W Rel 4.0 ;
   8:  !******************************** ;
   9:   ;
  10:  PR[11]=PR[100]    ;
  11:  PR[12]=PR[100]    ;
  12:  PR[13]=PR[100]    ;
  13:  PR[14]=PR[100]    ;
  14:  PR[15]=PR[100]    ;
  15:  PR[16]=PR[100]    ;
  16:   ;
  17:  IF R[125]=0,JMP LBL[100] ;
  18:  PR[46]=PR[100]    ;
  19:   ;
  20:  LBL[100:END OF MACRO] ;
/POS
/END
