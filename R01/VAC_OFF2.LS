/PROG  VAC_OFF2
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "VACUUM CH2 OFF";
PROG_SIZE	= 712;
CREATE		= DATE 06-12-19  TIME 08:38:16;
MODIFIED	= DATE 16-10-26  TIME 13:52:16;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 22;
MEMORY_SIZE	= 1004;
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
   4:  ! MACRO TO TURN VACUUM CH2 OFF & ;
   5:  ! PULSE THE BLOWOFF ON FOR 1 SEC. ;
   6:  !******************************** ;
   7:  ! 2016-10-25 Global-4 S/W Rel 4.0 ;
   8:  !******************************** ;
   9:   ;
  10:  CALL DMSTAT    ;
  11:   ;
  12:  IF (R[155]=(1)) THEN ;
  13:  !Venturi System ;
  14:  DO[807:OFF]=OFF ;
  15:  DO[808:OFF]=PULSE,1.0sec ;
  16:  ENDIF ;
  17:   ;
  18:  IF (R[155]=(2)) THEN ;
  19:  !Pump System ;
  20:  DO[867: * ]=OFF ;
  21:  DO[868: * ]=PULSE,1.0sec ;
  22:  ENDIF ;
/POS
/END
