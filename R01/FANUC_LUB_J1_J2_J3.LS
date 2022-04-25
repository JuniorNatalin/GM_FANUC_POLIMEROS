/PROG  FANUC_LUB_J1_J2_J3
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 846;
CREATE		= DATE 19-12-17  TIME 09:01:58;
MODIFIED	= DATE 22-03-19  TIME 13:35:02;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 17;
MEMORY_SIZE	= 1282;
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
   1:   ;
   2:   ;
   3:  UTOOL_NUM=10 ;
   4:  UFRAME_NUM=0 ;
   5:  PAYLOAD[1] ;
   6:   ;
   7:J P[5] 100% FINE    ;
   8:   ;
   9:  !ALIVIO EIXOS 1_2_3 ;
  10:  LBL[1] ;
  11:J P[1] 100% FINE    ;
  12:J P[3] 100% FINE    ;
  13:  JMP LBL[1] ;
  14:   ;
  15:  !POSICAO PARA LUBRIFICACAO ;
  16:   ;
  17:  //J P[2] 100% FINE    ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =   449.057  mm,	Y =  3096.905  mm,	Z =  -396.209  mm,
	W =  -179.396 deg,	P =    34.127 deg,	R =    81.676 deg
};
P[2]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'F D T, 0, 0, 0',
	X =  3830.331  mm,	Y =    63.763  mm,	Z =   296.386  mm,
	W =     -.010 deg,	P =   -89.791 deg,	R =  -179.987 deg
};
P[3]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =   930.277  mm,	Y =    62.845  mm,	Z =  2707.471  mm,
	W =   177.803 deg,	P =   -67.891 deg,	R =     2.370 deg
};
P[5]{
   GP1:
	UF : 0, UT : 10,		CONFIG : 'N U T, 0, 0, 0',
	X =   930.277  mm,	Y =    62.845  mm,	Z =  2707.471  mm,
	W =   177.803 deg,	P =   -67.891 deg,	R =     2.370 deg
};
/END
