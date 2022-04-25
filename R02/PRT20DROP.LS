/PROG  PRT20DROP
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "300";
PROG_SIZE	= 1970;
CREATE		= DATE 19-12-16  TIME 16:48:54;
MODIFIED	= DATE 20-03-30  TIME 13:59:20;
FILE_NAME	= PRT05DRO;
VERSION		= 0;
LINE_COUNT	= 53;
MEMORY_SIZE	= 2258;
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

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : TRUE;
/MN
   1:  !******************************** ;
   2:  !DROPOFF PART TO CONVEYOR ;
   3:  !******************************** ;
   4:   ;
   5:  !ASSIGN PATH SEGEMENT VALUES ;
   6:  SET SEGMENT(32) ;
   7:   ;
   8:  !******IMPORTANT************ ;
   9:  !for MH tool changers ;
  10:  !make sure Set MH TOOL(AR) ;
  11:  !matches tool number ;
  12:  Set MH Tool(1) ;
  13:   ;
  14:  !Place Part ;
  15:  UTOOL_NUM=2 ;
  16:  UFRAME_NUM=0 ;
  17:  PAYLOAD[2] ;
  18:  ENTER I-ZONE(1) ;
  19:  ENTER I-ZONE(2) ;
  20:   ;
  21:J P[12] 80% CNT100    ;
  22:J P[14] 80% CNT100    ;
  23:J P[4] 80% CNT100    ;
  24:J P[13] 80% CNT100    ;
  25:   ;
  26:L P[2:Abv Drop] 2000mm/sec CNT50    ;
  27:   ;
  28:  !Robot at conveyor ;
  29:  //L P[3:At Drop] 1500mm/sec FINE    ;
  30:   ;
  31:  Turn OFF Vacuum(6,7) ;
  32:  PAYLOAD[3] ;
  33:   ;
  34:  !verify no part in tool ;
  35:L P[5] 2000mm/sec FINE    ;
  36:  REQUEST CONTINUE    ;
  37:   ;
  38:  !Robot clear of conveyor ;
  39:  SET SEGMENT(33) ;
  40:   ;
  41:J P[6] 50% CNT100    ;
  42:J P[10] 50% CNT100    ;
  43:J P[9] 100% CNT100    ;
  44:J P[1] 100% CNT100    ;
  45:   ;
  46:  EXIT I-ZONE(1) ;
  47:  EXIT I-ZONE(2) ;
  48:   ;
  49:J P[8] 100% CNT100    ;
  50:J P[7] 100% CNT100    ;
  51:   ;
  52:  !Robot clear of all ;
  53:  SET SEGMENT(63) ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   790.103  mm,	Y =   974.074  mm,	Z =  1234.714  mm,
	W =   179.231 deg,	P =    -7.461 deg,	R =    37.516 deg
};
P[2:"Abv Drop"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1304.786  mm,	Y = -1129.780  mm,	Z =   403.063  mm,
	W =   179.913 deg,	P =     7.606 deg,	R =    -3.132 deg
};
P[3:"At Drop"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1304.787  mm,	Y = -1129.781  mm,	Z =   263.623  mm,
	W =   179.913 deg,	P =     7.606 deg,	R =    -3.132 deg
};
P[4]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1103.049  mm,	Y =  -597.975  mm,	Z =  1154.532  mm,
	W =  -170.351 deg,	P =    -3.924 deg,	R =    -4.013 deg
};
P[5]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1304.787  mm,	Y = -1129.781  mm,	Z =   464.263  mm,
	W =   179.913 deg,	P =     7.606 deg,	R =    -3.132 deg
};
P[6]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1321.347  mm,	Y = -1045.301  mm,	Z =  1003.062  mm,
	W =   179.492 deg,	P =     6.133 deg,	R =    -3.198 deg
};
P[7]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1544.176  mm,	Y =  1312.796  mm,	Z =  1091.707  mm,
	W =   178.170 deg,	P =     3.650 deg,	R =   145.534 deg
};
P[8]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   244.076  mm,	Y =  1386.536  mm,	Z =  1165.339  mm,
	W =   177.696 deg,	P =    -3.914 deg,	R =    73.318 deg
};
P[9]{
   GP1:
	UF : 0, UT : 2,	
	J1=    41.856 deg,	J2=   -49.592 deg,	J3=    24.314 deg,
	J4=     3.755 deg,	J5=  -104.271 deg,	J6=   -34.619 deg
};
P[10]{
   GP1:
	UF : 0, UT : 2,	
	J1=      .921 deg,	J2=   -59.209 deg,	J3=    33.351 deg,
	J4=     4.021 deg,	J5=  -113.132 deg,	J6=   -34.287 deg
};
P[12]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   421.009  mm,	Y =   541.577  mm,	Z =  1552.418  mm,
	W =  -130.607 deg,	P =    -3.006 deg,	R =   -23.514 deg
};
P[13]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1321.347  mm,	Y = -1045.301  mm,	Z =  1003.062  mm,
	W =   179.492 deg,	P =     6.133 deg,	R =    -3.198 deg
};
P[14]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   874.730  mm,	Y =  -196.512  mm,	Z =  1477.899  mm,
	W =  -151.499 deg,	P =   -15.515 deg,	R =    -9.483 deg
};
/END
