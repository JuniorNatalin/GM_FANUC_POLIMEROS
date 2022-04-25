/PROG  CLR_ADC
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "CLEAR FOR ADC";
PROG_SIZE	= 2211;
CREATE		= DATE 06-12-15  TIME 12:01:00;
MODIFIED	= DATE 16-02-20  TIME 20:43:46;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 66;
MEMORY_SIZE	= 2707;
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
   4:  !*  LINE: Plant X Line Y        * ;
   5:  !*  ROBOT: RXX                  * ;
   6:  !******************************** ;
   7:  ! CLR_ADC: CLEAR-FOR-ADC PROGRAM ;
   8:  !  THIS PROGRAM IS USED TO MOVE ;
   9:  !  THE ROBOT TO A POSITION THAT ;
  10:  !  IS CLEAR OF THE DIE-CART. ;
  11:  !******************************** ;
  12:  ! 2015-2-13 Global-4 S/W Rel 4.0 ;
  13:  !******************************** ;
  14:   ;
  15:  !INITIALIZE ;
  16:  GO[1:0]=(126) ;
  17:   ;
  18:  UTOOL_NUM=1 ;
  19:  UFRAME_NUM=1 ;
  20:   ;
  21:  !-------------------------------- ;
  22:  !BEGINNING OF PROGRAM ;
  23:   ;
  24:  SET SEGMENT(1) ;
  25:J P[1:Start-Point] 75% CNT100    ;
  26:   ;
  27:J P[2:Pounce] 75% CNT50    ;
  28:   ;
  29:  !-------------------------------- ;
  30:  LBL[10] ;
  31:  AT SERV POUNCE    ;
  32:   ;
  33:  SELECT R[150]=0,JMP LBL[20] ;
  34:         =15,JMP LBL[90] ;
  35:         ELSE,JMP LBL[10] ;
  36:   ;
  37:  !-------------------------------- ;
  38:  LBL[20] ;
  39:  SET SEGMENT(61) ;
  40:J P[3:Middle-3] 75% CNT50    ;
  41:J P[4:Middle-4] 75% CNT50    ;
  42:J P[5:Middle-5] 75% CNT50    ;
  43:   ;
  44:J P[7:Clear-for-ADC] 100% FINE    ;
  45:   ;
  46:  REQUEST CONTINUE    ;
  47:   ;
  48:  !-------------------------------- ;
  49:  ! RETURN TO HOME ;
  50:   ;
  51:  SET SEGMENT(63) ;
  52:J P[5:Middle-5] 75% CNT50    ;
  53:J P[4:Middle-4] 75% CNT50    ;
  54:J P[3:Middle-3] 75% CNT50    ;
  55:   ;
  56:J P[2:Pounce] 75% CNT50    ;
  57:   ;
  58:  !-------------------------------- ;
  59:  LBL[90:MOVE TO HOME] ;
  60:   ;
  61:J P[9:End-Point] 75% CNT50    ;
  62:   ;
  63:  MOVE TO HOME    ;
  64:   ;
  65:  !-------------------------------- ;
  66:  LBL[100:END OF PROGRAM] ;
/POS
P[1:"Start-Point"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  ********  mm,	Y =  ********  mm,	Z =  ********  mm,
	W =  ******** deg,	P =  ******** deg,	R =  ******** deg
};
P[2:"Pounce"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  ********  mm,	Y =  ********  mm,	Z =  ********  mm,
	W =  ******** deg,	P =  ******** deg,	R =  ******** deg
};
P[3:"Middle-3"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  ********  mm,	Y =  ********  mm,	Z =  ********  mm,
	W =  ******** deg,	P =  ******** deg,	R =  ******** deg
};
P[4:"Middle-4"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  ********  mm,	Y =  ********  mm,	Z =  ********  mm,
	W =  ******** deg,	P =  ******** deg,	R =  ******** deg
};
P[5:"Middle-5"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  ********  mm,	Y =  ********  mm,	Z =  ********  mm,
	W =  ******** deg,	P =  ******** deg,	R =  ******** deg
};
P[7:"Clear-for-ADC"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  ********  mm,	Y =  ********  mm,	Z =  ********  mm,
	W =  ******** deg,	P =  ******** deg,	R =  ******** deg
};
P[9:"End-Point"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  ********  mm,	Y =  ********  mm,	Z =  ********  mm,
	W =  ******** deg,	P =  ******** deg,	R =  ******** deg
};
/END
