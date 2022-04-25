/PROG  BLOW_OF1	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "VAC CH1 BLOW OFF";
PROG_SIZE	= 696;
CREATE		= DATE 06-12-07  TIME 07:26:06;
MODIFIED	= DATE 16-10-27  TIME 06:27:18;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 22;
MEMORY_SIZE	= 1120;
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
  HANDLING : TRUE ; 
/MN
   1:  !******************************** ;
   2:  !  GM METAL FORMING GLOBAL 4 S/W ;
   3:  !******************************** ;
   4:  ! MACRO TO TURN CH1 BLOWOFF OFF ;
   5:  !******************************** ;
   6:  ! 2016-04-05 Global-4 S/W Rel 4.0 ;
   7:  !******************************** ;
   8:   ;
   9:  CALL DMSTAT    ;
  10:   ;
  11:  IF (R[155]=(1)) THEN ;
  12:  !Venturi System ;
  13:  DO[805:OFF]=OFF ;
  14:  DO[806:OFF]=OFF ;
  15:  ENDIF ;
  16:   ;
  17:  IF (R[155]=(2)) THEN ;
  18:  !Pump System ;
  19:  DO[865: * ]=OFF ;
  20:  DO[866: * ]=OFF ;
  21:  ENDIF ;
  22:  LBL[100:END OF PROGRAM] ;
/POS
/END
