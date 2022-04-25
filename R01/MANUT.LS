/PROG  MANUT	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 851;
CREATE		= DATE 18-03-21  TIME 12:08:44;
MODIFIED	= DATE 18-03-21  TIME 16:23:36;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 9;
MEMORY_SIZE	= 1187;
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
   2:J P[6] 100% FINE    ;
   3:L P[5] 2000mm/sec FINE    ;
   4:L P[3] 2000mm/sec CNT100    ;
   5:L P[1] 2000mm/sec FINE    ;
   6:  PAUSE ;
   7:L P[2] 2000mm/sec CNT100    ;
   8:L P[4] 2000mm/sec FINE    ;
   9:J P[7] 100% FINE    ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  -393.701  mm,	Y = -2050.492  mm,	Z = -2426.682  mm,
	W =  -178.989 deg,	P =   -22.791 deg,	R =   -42.857 deg
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  -393.701  mm,	Y = -2050.492  mm,	Z =  -811.003  mm,
	W =  -178.989 deg,	P =   -22.791 deg,	R =   -42.857 deg
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  -393.701  mm,	Y = -2050.492  mm,	Z =  -811.179  mm,
	W =  -178.989 deg,	P =   -22.791 deg,	R =   -42.857 deg
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  -267.222  mm,	Y = -2209.612  mm,	Z =  -298.964  mm,
	W =  -178.989 deg,	P =   -22.791 deg,	R =   -42.857 deg
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  -267.222  mm,	Y = -2209.612  mm,	Z =  -298.964  mm,
	W =  -178.989 deg,	P =   -22.791 deg,	R =   -42.857 deg
};
P[6]{
   GP1:
	UF : 0, UT : 1,	
	J1=   -94.280 deg,	J2=  -104.052 deg,	J3=    88.314 deg,
	J4=   -18.935 deg,	J5=   -75.242 deg,	J6=    54.378 deg
};
P[7]{
   GP1:
	UF : 0, UT : 1,	
	J1=   -99.099 deg,	J2=  -103.383 deg,	J3=    78.653 deg,
	J4=   -21.005 deg,	J5=   -67.791 deg,	J6=    62.532 deg
};
/END
