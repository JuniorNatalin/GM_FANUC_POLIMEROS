/PROG  MAINPLAT	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 957;
CREATE		= DATE 18-03-21  TIME 12:42:30;
MODIFIED	= DATE 18-03-22  TIME 12:35:06;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 10;
MEMORY_SIZE	= 1289;
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
   1:J P[6] 100% FINE    ;
   2:J P[8] 100% FINE    ;
   3:J P[5] 100% FINE    ;
   4:J P[2] 100% FINE    ;
   5:J P[1] 100% FINE    ;
   6:  PAUSE ;
   7:J P[3] 100% FINE    ;
   8:J P[4] 100% FINE    ;
   9:J P[9] 100% FINE    ;
  10:J P[7] 100% FINE    ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N D T, 0, 0, -1',
	X = -3324.102  mm,	Y = -1415.314  mm,	Z =   924.700  mm,
	W =   -52.955 deg,	P =   -56.108 deg,	R =    80.373 deg
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X = -1095.559  mm,	Y = -3388.212  mm,	Z =  1067.393  mm,
	W =   -52.955 deg,	P =   -56.108 deg,	R =   129.392 deg
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X = -1095.559  mm,	Y = -3388.212  mm,	Z =  1067.393  mm,
	W =   -52.955 deg,	P =   -56.108 deg,	R =   129.392 deg
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, -1',
	X =  -701.070  mm,	Y = -2230.364  mm,	Z =  1394.131  mm,
	W =  -160.826 deg,	P =   -28.467 deg,	R =  -137.084 deg
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, -1',
	X =  -701.070  mm,	Y = -2230.364  mm,	Z =  1394.131  mm,
	W =  -160.826 deg,	P =   -28.467 deg,	R =  -137.084 deg
};
P[6]{
   GP1:
	UF : 0, UT : 1,	
	J1=     -.001 deg,	J2=  -105.137 deg,	J3=    90.776 deg,
	J4=     -.000 deg,	J5=   -76.379 deg,	J6=      .000 deg
};
P[7]{
   GP1:
	UF : 0, UT : 1,	
	J1=     -.001 deg,	J2=  -105.137 deg,	J3=    90.776 deg,
	J4=     -.000 deg,	J5=   -76.379 deg,	J6=      .000 deg
};
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, -1',
	X =   703.168  mm,	Y = -2318.164  mm,	Z =  1490.735  mm,
	W =   -96.546 deg,	P =    37.899 deg,	R =  -149.253 deg
};
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, -1',
	X =   703.168  mm,	Y = -2318.164  mm,	Z =  1490.735  mm,
	W =   -96.546 deg,	P =    37.899 deg,	R =  -149.253 deg
};
/END
