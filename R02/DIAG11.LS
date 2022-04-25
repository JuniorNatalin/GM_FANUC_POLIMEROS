/PROG  DIAG11
/ATTR
OWNER		= iRDiag;
COMMENT		= "RV Freq Diag";
PROG_SIZE	= 2737;
CREATE		= DATE 17-07-21  TIME 11:36:20;
MODIFIED	= DATE 17-07-21  TIME 11:36:20;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 61;
MEMORY_SIZE	= 2993;
PROTECT		= READ;
STORAGE		= CMOS;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
/MN
   1:  PAYLOAD[GP1:1] ;
   2:J P[1:BASEPOS] 100% FINE    ;
   3:   ;
   4:J P[2:J1 Min] 100% FINE    ;
   5:  DIAG_START[1,1] ;
   6:J P[3:J1 PreMove] 4% FINE    ;
   7:J P[2:J1 Min] 4% FINE    ;
   8:J P[4:J1 Max] 100% FINE    ;
   9:  DIAG_END ;
  10:   ;
  11:  PAYLOAD[GP1:1] ;
  12:J P[1:BASEPOS] 100% FINE    ;
  13:   ;
  14:J P[5:J2 Min] 100% FINE    ;
  15:  DIAG_START[1,2] ;
  16:J P[6:J2 PreMove] 4% FINE    ;
  17:J P[5:J2 Min] 4% FINE    ;
  18:J P[7:J2 Max] 100% FINE    ;
  19:  DIAG_END ;
  20:   ;
  21:  PAYLOAD[GP1:1] ;
  22:J P[1:BASEPOS] 100% FINE    ;
  23:   ;
  24:J P[8:J3 Min] 100% FINE    ;
  25:  DIAG_START[1,3] ;
  26:J P[9:J3 PreMove] 4% FINE    ;
  27:J P[8:J3 Min] 4% FINE    ;
  28:J P[10:J3 Max] 100% FINE    ;
  29:  DIAG_END ;
  30:   ;
  31:  PAYLOAD[GP1:1] ;
  32:J P[1:BASEPOS] 100% FINE    ;
  33:   ;
  34:J P[11:J4 Min] 100% FINE    ;
  35:  DIAG_START[1,4] ;
  36:J P[12:J4 PreMove] 4% FINE    ;
  37:J P[11:J4 Min] 4% FINE    ;
  38:J P[13:J4 Max] 100% FINE    ;
  39:  DIAG_END ;
  40:   ;
  41:  PAYLOAD[GP1:1] ;
  42:J P[1:BASEPOS] 100% FINE    ;
  43:   ;
  44:J P[14:J5 Min] 100% FINE    ;
  45:  DIAG_START[1,5] ;
  46:J P[15:J5 PreMove] 4% FINE    ;
  47:J P[14:J5 Min] 4% FINE    ;
  48:J P[16:J5 Max] 100% FINE    ;
  49:  DIAG_END ;
  50:   ;
  51:  PAYLOAD[GP1:1] ;
  52:J P[1:BASEPOS] 100% FINE    ;
  53:   ;
  54:J P[17:J6 Min] 100% FINE    ;
  55:  DIAG_START[1,6] ;
  56:J P[18:J6 PreMove] 4% FINE    ;
  57:J P[17:J6 Min] 4% FINE    ;
  58:J P[19:J6 Max] 100% FINE    ;
  59:  DIAG_END ;
  60:   ;
  61:J P[1:BASEPOS] 100% FINE    ;
/POS
P[1:"BASEPOS"]{
   GP1:
	UF : F, UT : F,	
	J1=   110.566 deg,	J2=   -48.444 deg,	J3=    41.918 deg,
	J4=   -11.538 deg,	J5=    49.513 deg,	J6=    -9.356 deg
};
P[2:"J1 Min"]{
   GP1:
	UF : F, UT : F,	
	J1=   100.566 deg,	J2=   -48.444 deg,	J3=    41.918 deg,
	J4=   -11.538 deg,	J5=    49.513 deg,	J6=    -9.356 deg
};
P[3:"J1 PreMove"]{
   GP1:
	UF : F, UT : F,	
	J1=   101.566 deg,	J2=   -48.444 deg,	J3=    41.918 deg,
	J4=   -11.538 deg,	J5=    49.513 deg,	J6=    -9.356 deg
};
P[4:"J1 Max"]{
   GP1:
	UF : F, UT : F,	
	J1=   120.566 deg,	J2=   -48.444 deg,	J3=    41.918 deg,
	J4=   -11.538 deg,	J5=    49.513 deg,	J6=    -9.356 deg
};
P[5:"J2 Min"]{
   GP1:
	UF : F, UT : F,	
	J1=   110.566 deg,	J2=   -58.444 deg,	J3=    41.918 deg,
	J4=   -11.538 deg,	J5=    49.513 deg,	J6=    -9.356 deg
};
P[6:"J2 PreMove"]{
   GP1:
	UF : F, UT : F,	
	J1=   110.566 deg,	J2=   -57.444 deg,	J3=    41.918 deg,
	J4=   -11.538 deg,	J5=    49.513 deg,	J6=    -9.356 deg
};
P[7:"J2 Max"]{
   GP1:
	UF : F, UT : F,	
	J1=   110.566 deg,	J2=   -38.444 deg,	J3=    41.918 deg,
	J4=   -11.538 deg,	J5=    49.513 deg,	J6=    -9.356 deg
};
P[8:"J3 Min"]{
   GP1:
	UF : F, UT : F,	
	J1=   110.566 deg,	J2=   -48.444 deg,	J3=    31.918 deg,
	J4=   -11.538 deg,	J5=    49.513 deg,	J6=    -9.356 deg
};
P[9:"J3 PreMove"]{
   GP1:
	UF : F, UT : F,	
	J1=   110.566 deg,	J2=   -48.444 deg,	J3=    32.918 deg,
	J4=   -11.538 deg,	J5=    49.513 deg,	J6=    -9.356 deg
};
P[10:"J3 Max"]{
   GP1:
	UF : F, UT : F,	
	J1=   110.566 deg,	J2=   -48.444 deg,	J3=    51.918 deg,
	J4=   -11.538 deg,	J5=    49.513 deg,	J6=    -9.356 deg
};
P[11:"J4 Min"]{
   GP1:
	UF : F, UT : F,	
	J1=   110.566 deg,	J2=   -48.444 deg,	J3=    41.918 deg,
	J4=   -21.538 deg,	J5=    49.513 deg,	J6=    -9.356 deg
};
P[12:"J4 PreMove"]{
   GP1:
	UF : F, UT : F,	
	J1=   110.566 deg,	J2=   -48.444 deg,	J3=    41.918 deg,
	J4=   -20.538 deg,	J5=    49.513 deg,	J6=    -9.356 deg
};
P[13:"J4 Max"]{
   GP1:
	UF : F, UT : F,	
	J1=   110.566 deg,	J2=   -48.444 deg,	J3=    41.918 deg,
	J4=    -1.538 deg,	J5=    49.513 deg,	J6=    -9.356 deg
};
P[14:"J5 Min"]{
   GP1:
	UF : F, UT : F,	
	J1=   110.566 deg,	J2=   -48.444 deg,	J3=    41.918 deg,
	J4=   -11.538 deg,	J5=    39.513 deg,	J6=    -9.356 deg
};
P[15:"J5 PreMove"]{
   GP1:
	UF : F, UT : F,	
	J1=   110.566 deg,	J2=   -48.444 deg,	J3=    41.918 deg,
	J4=   -11.538 deg,	J5=    40.513 deg,	J6=    -9.356 deg
};
P[16:"J5 Max"]{
   GP1:
	UF : F, UT : F,	
	J1=   110.566 deg,	J2=   -48.444 deg,	J3=    41.918 deg,
	J4=   -11.538 deg,	J5=    59.513 deg,	J6=    -9.356 deg
};
P[17:"J6 Min"]{
   GP1:
	UF : F, UT : F,	
	J1=   110.566 deg,	J2=   -48.444 deg,	J3=    41.918 deg,
	J4=   -11.538 deg,	J5=    49.513 deg,	J6=   -19.356 deg
};
P[18:"J6 PreMove"]{
   GP1:
	UF : F, UT : F,	
	J1=   110.566 deg,	J2=   -48.444 deg,	J3=    41.918 deg,
	J4=   -11.538 deg,	J5=    49.513 deg,	J6=   -18.356 deg
};
P[19:"J6 Max"]{
   GP1:
	UF : F, UT : F,	
	J1=   110.566 deg,	J2=   -48.444 deg,	J3=    41.918 deg,
	J4=   -11.538 deg,	J5=    49.513 deg,	J6=      .644 deg
};
/END
