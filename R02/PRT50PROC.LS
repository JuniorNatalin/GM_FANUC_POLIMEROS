/PROG  PRT50PROC
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "PRT50PROC2";
PROG_SIZE	= 1881;
CREATE		= DATE 22-04-02  TIME 17:48:58;
MODIFIED	= DATE 22-04-02  TIME 18:46:30;
FILE_NAME	= PRT50PRO;
VERSION		= 0;
LINE_COUNT	= 40;
MEMORY_SIZE	= 2221;
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
/MN
   1:  UFRAME_NUM=1 ;
   2:  UTOOL_NUM=1 ;
   3:   ;
   4:  SET SEGMENT(22) ;
   5:   ;
   6:J P[1] 100% FINE    ;
   7:   ;
   8:  !****** INICIO PECA 1 e 2 ****** ;
   9:   ;
  10:J P[2] 100% CNT20 PSPD100    ;
  11:J P[3] 100% CNT20 PSPD100    ;
  12:J P[4] 100% CNT20 PSPD100    ;
  13:J P[5] 100% CNT20 PSPD100    ;
  14:J P[6] 100% CNT20 PSPD100    ;
  15:J P[7] 100% CNT20 PSPD100    ;
  16:   ;
  17:  !****** FIM PECA 1 e 2 ****** ;
  18:   ;
  19:J P[8] 100% CNT100    ;
  20:J P[9] 100% CNT100    ;
  21:   ;
  22:  !****** INICIO PECA 3 e 4 ****** ;
  23:   ;
  24:J P[10] 100% CNT20 PSPD100    ;
  25:J P[11] 100% CNT20 PSPD100    ;
  26:J P[12] 100% CNT20 PSPD100    ;
  27:J P[13] 100% CNT20 PSPD100    ;
  28:J P[14] 100% CNT20 PSPD100    ;
  29:J P[15] 100% CNT20 PSPD100    ;
  30:   ;
  31:  !****** FIM PECA 3 e 4 ****** ;
  32:   ;
  33:   ;
  34:J P[16] 100% CNT100    ;
  35:J P[17] 100% CNT100    ;
  36:J P[18] 100% CNT100    ;
  37:J P[19] 100% FINE    ;
  38:   ;
  39:  REQUEST CONTINUE    ;
  40:   ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1043.412  mm,	Y =  -373.611  mm,	Z =  -394.027  mm,
	W =     4.766 deg,	P =    30.489 deg,	R =    13.591 deg
};
P[2]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -685.840  mm,	Y =   127.547  mm,	Z =  -356.714  mm,
	W =   -23.346 deg,	P =    -8.669 deg,	R =   -86.278 deg
};
P[3]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   196.906  mm,	Y =   195.532  mm,	Z =  -587.496  mm,
	W =   -19.294 deg,	P =    -3.511 deg,	R =   -86.871 deg
};
P[4]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -748.849  mm,	Y =  -122.874  mm,	Z =  -284.690  mm,
	W =   -23.346 deg,	P =    -8.669 deg,	R =   -86.278 deg
};
P[5]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   175.913  mm,	Y =  -151.697  mm,	Z =  -766.233  mm,
	W =   -31.378 deg,	P =    -8.819 deg,	R =   -76.538 deg
};
P[6]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -823.000  mm,	Y =  -346.660  mm,	Z =  -612.806  mm,
	W =   -17.406 deg,	P =     1.190 deg,	R =   -91.502 deg
};
P[7]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -74.041  mm,	Y =  -400.165  mm,	Z =  -915.810  mm,
	W =   -45.527 deg,	P =    -6.251 deg,	R =   -89.228 deg
};
P[8]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -525.499  mm,	Y =  -332.104  mm,	Z = -1020.411  mm,
	W =   -52.410 deg,	P =     6.237 deg,	R =  -110.228 deg
};
P[9]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -379.430  mm,	Y =  -701.465  mm,	Z = -1216.146  mm,
	W =   -29.770 deg,	P =   -65.047 deg,	R =   170.833 deg
};
P[10]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  -682.770  mm,	Y = -1087.231  mm,	Z =  -622.037  mm,
	W =     5.211 deg,	P =     8.212 deg,	R =    88.558 deg
};
P[11]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   467.120  mm,	Y =  -909.683  mm,	Z =  -936.580  mm,
	W =    28.727 deg,	P =     3.272 deg,	R =   104.772 deg
};
P[12]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  -688.352  mm,	Y =  -766.909  mm,	Z =  -472.181  mm,
	W =     5.211 deg,	P =     8.212 deg,	R =    88.558 deg
};
P[13]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   296.531  mm,	Y =  -865.991  mm,	Z =  -834.826  mm,
	W =    34.352 deg,	P =     6.548 deg,	R =   100.001 deg
};
P[14]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  -626.621  mm,	Y =  -594.899  mm,	Z =  -448.851  mm,
	W =     5.202 deg,	P =     7.466 deg,	R =    88.489 deg
};
P[15]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   199.506  mm,	Y =  -509.520  mm,	Z =  -733.948  mm,
	W =    34.352 deg,	P =     6.548 deg,	R =   100.001 deg
};
P[16]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  -387.826  mm,	Y =  -851.672  mm,	Z = -1190.958  mm,
	W =    50.921 deg,	P =     2.609 deg,	R =    84.484 deg
};
P[17]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -379.430  mm,	Y =  -701.464  mm,	Z = -1216.146  mm,
	W =   -29.770 deg,	P =   -65.047 deg,	R =   170.833 deg
};
P[18]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -525.499  mm,	Y =  -332.104  mm,	Z = -1020.411  mm,
	W =   -52.410 deg,	P =     6.237 deg,	R =  -110.228 deg
};
P[19]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -854.393  mm,	Y =   180.737  mm,	Z =  -715.262  mm,
	W =   -43.106 deg,	P =    38.915 deg,	R =   -15.838 deg
};
/END
