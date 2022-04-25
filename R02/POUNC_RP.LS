/PROG  POUNC_RP	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "REPAIR POUNCE";
PROG_SIZE	= 915;
CREATE		= DATE 17-07-03  TIME 13:58:46;
MODIFIED	= DATE 17-07-19  TIME 22:38:54;
FILE_NAME	= POUNC_SV;
VERSION		= 0;
LINE_COUNT	= 16;
MEMORY_SIZE	= 1223;
PROTECT		= READ_WRITE;
STORAGE		= SHADOW;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00001000 00000000;
/APPL
  HANDLING : TRUE ; 
/MN
   1:  !******************************** ;
   2:  !  GM METAL FORMING GLOBAL 4 S/W ;
   3:  !******************************** ;
   4:  ! POUNC_RP: AT SRVC POUNCE MACRO. ;
   5:  !******************************** ;
   6:  ! 2014-10-06 GLOBAL-4 S/W Rel 4.0 ;
   7:  !******************************** ;
   8:   ;
   9:  SET SEGMENT(1) ;
  10:  MESSAGE[WAITING AT POUNCE REPAR] ;
  11:   ;
  12:  UFRAME_NUM=0 ;
  13:  UTOOL_NUM=1 ;
  14:J P[1] 25% FINE    ;
  15:   ;
  16:  AT SERV POUNCE    ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -2033.402  mm,	Y =   991.764  mm,	Z =  1886.935  mm,
	W =   179.999 deg,	P =   -80.675 deg,	R =   154.001 deg
};
/END
