/PROG  BLOW_OF2	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "VAC CH2 BLOW OFF";
PROG_SIZE	= 696;
CREATE		= DATE 06-12-07  TIME 07:26:08;
MODIFIED	= DATE 16-10-27  TIME 06:27:22;
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
   4:  ! MACRO TO TURN CH2 BLOWOFF OFF ;
   5:  !******************************** ;
   6:  ! 2016-04-05 Global-4 S/W Rel 4.0 ;
   7:  !******************************** ;
   8:   ;
   9:  CALL DMSTAT    ;
  10:   ;
  11:  IF (R[155]=(1)) THEN ;
  12:  !Venturi System ;
  13:  DO[807:OFF]=OFF ;
  14:  DO[808:OFF]=OFF ;
  15:  ENDIF ;
  16:  IF (R[155]=(2)) THEN ;
  17:  !Pump System ;
  18:  DO[867: * ]=OFF ;
  19:  DO[868: * ]=OFF ;
  20:  ENDIF ;
  21:   ;
  22:  LBL[100:END OF PROGRAM] ;
/POS
/END
