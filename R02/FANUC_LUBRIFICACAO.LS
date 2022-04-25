/PROG  FANUC_LUBRIFICACAO
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1090;
CREATE		= DATE 19-10-12  TIME 17:17:30;
MODIFIED	= DATE 22-03-19  TIME 13:26:16;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 21;
MEMORY_SIZE	= 1510;
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
   1:J P[5] 100% FINE    ;
   2:   ;
   3:  !1 PARA 1_2_3. 2 PARA 4_5_6 ;
   4:  JMP LBL[2] ;
   5:   ;
   6:   ;
   7:  !ALIVIO EIXOS 1_2_3 ;
   8:  LBL[1] ;
   9:J P[1] 100% FINE    ;
  10:J P[3] 100% FINE    ;
  11:J P[2] 100% FINE    ;
  12:J P[4] 100% FINE    ;
  13:  JMP LBL[1] ;
  14:   ;
  15:  !ALIVIO EIXOS 4_5_6 ;
  16:  LBL[2] ;
  17:J P[8] 100% FINE    ;
  18:  LBL[3] ;
  19:J P[6] 100% FINE    ;
  20:J P[7] 100% FINE    ;
  21:  JMP LBL[3] ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 14,	
	J1=   153.298 deg,	J2=    40.184 deg,	J3=    15.497 deg,
	J4=      .021 deg,	J5=  -108.556 deg,	J6=    -1.118 deg
};
P[2]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X =   450.489  mm,	Y =   882.892  mm,	Z =  1543.219  mm,
	W =  -179.735 deg,	P =   -14.186 deg,	R =    58.208 deg
};
P[3]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X =  -587.499  mm,	Y =  1055.387  mm,	Z =  1353.190  mm,
	W =  -179.946 deg,	P =    -3.759 deg,	R =   115.023 deg
};
P[4]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X =  -587.499  mm,	Y =  1055.387  mm,	Z =  1353.190  mm,
	W =  -179.946 deg,	P =    -3.759 deg,	R =   115.023 deg
};
P[5]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -2283.868  mm,	Y =  1079.142  mm,	Z =  1268.237  mm,
	W =   179.919 deg,	P =     3.054 deg,	R =   152.171 deg
};
P[6]{
   GP1:
	UF : 0, UT : 14,	
	J1=    86.681 deg,	J2=   -49.781 deg,	J3=     -.193 deg,
	J4=   -30.000 deg,	J5=   -60.000 deg,	J6=    30.000 deg
};
P[7]{
   GP1:
	UF : 0, UT : 14,	
	J1=    86.681 deg,	J2=   -49.781 deg,	J3=     -.193 deg,
	J4=    30.000 deg,	J5=    60.000 deg,	J6=   -30.000 deg
};
P[8]{
   GP1:
	UF : 0, UT : 14,		CONFIG : 'N U T, 0, 0, 0',
	X = -1042.694  mm,	Y =   882.724  mm,	Z =   842.618  mm,
	W =  -166.242 deg,	P =   -24.002 deg,	R =   147.249 deg
};
/END
