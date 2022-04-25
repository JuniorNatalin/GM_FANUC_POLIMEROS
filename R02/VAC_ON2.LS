/PROG  VAC_ON2
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "VACUUM CH2 ON";
PROG_SIZE	= 668;
CREATE		= DATE 06-12-19  TIME 08:38:18;
MODIFIED	= DATE 16-10-26  TIME 13:52:18;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 21;
MEMORY_SIZE	= 964;
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
   2:  !  GM METAL FORMING GLOBAL-4 S/W ;
   3:  !******************************** ;
   4:  ! MACRO TO TURN VACUUM CH2 ON. ;
   5:  !******************************** ;
   6:  ! 2016-10-25 Global-4 S/W Rel 4.0 ;
   7:  !******************************** ;
   8:   ;
   9:  CALL DMSTAT    ;
  10:   ;
  11:  IF (R[155]=(1)) THEN ;
  12:  !Venturi System ;
  13:  DO[807]=ON ;
  14:  DO[808]=OFF ;
  15:  ENDIF ;
  16:   ;
  17:  IF (R[155]=(2)) THEN ;
  18:  !Pump System ;
  19:  DO[867]=ON ;
  20:  DO[868]=OFF ;
  21:  ENDIF ;
/POS
/END
