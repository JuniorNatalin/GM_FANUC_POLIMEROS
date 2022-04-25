/PROG  SEND_OVR	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Send Ovr to PLC";
PROG_SIZE	= 620;
CREATE		= DATE 11-11-24  TIME 20:02:54;
MODIFIED	= DATE 16-10-26  TIME 13:52:12;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 14;
MEMORY_SIZE	= 1100;
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
   2:  !  GM METAL FORMING GLOBAL 4 S/W ;
   3:  !******************************** ;
   4:  ! SEND_OVR:  MACRO TO SEND ROBOT ;
   5:  !     PERCENT  OVERRIDE  TO  PLC ;
   6:  !     TO DISPLAY ON HMI. ;
   7:  !******************************** ;
   8:  ! 2016-05-03 GLOBAL-4 S/W Rel 4.0 ;
   9:  !******************************** ;
  10:   ;
  11:  R[13]=$MCR.$GENOVERRIDE ;
  12:  GO[76:95]=R[13] ;
  13:   ;
  14:  LBL[100:END OF MACRO] ;
/POS
/END
