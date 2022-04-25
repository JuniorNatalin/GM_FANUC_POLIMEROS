/PROG  SHIP_POS
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "SETUP-SHIP POS";
PROG_SIZE	= 1136;
CREATE		= DATE 16-04-26  TIME 08:28:12;
MODIFIED	= DATE 16-05-02  TIME 14:18:44;
FILE_NAME	= CLR_ADC;
VERSION		= 0;
LINE_COUNT	= 22;
MEMORY_SIZE	= 1552;
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
   4:  ! PLANT: ;
   5:  ! ROBOT: Rxx ;
   6:  !******************************** ;
   7:  ! SHIP_POS: PROGRAM FOR MOVING ;
   8:  !   THE ROBOT FROM HOME TO THE ;
   9:  !   SHIPPING POSITION. ;
  10:  !******************************** ;
  11:  ! 2016-05-03 GLOBAL-4 S/W Rel 4.0 ;
  12:  !******************************** ;
  13:   ;
  14:  UFRAME_NUM=1 ;
  15:  UTOOL_NUM=1 ;
  16:   ;
  17:J P[1] 100% FINE    ;
  18:   ;
  19:J P[9] 100% FINE    ;
  20:  PAUSE ;
  21:  !-------------------------------- ;
  22:  LBL[100:END OF PROGRAM] ;
/POS
P[1]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X =  ********  mm,	Y =  ********  mm,	Z =  ********  mm,
	W =  ******** deg,	P =  ******** deg,	R =  ******** deg,
	E1=  ******** deg
};
P[9]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X =  ********  mm,	Y =  ********  mm,	Z =  ********  mm,
	W =  ******** deg,	P =  ******** deg,	R =  ******** deg,
	E1=  ******** deg
};
/END
