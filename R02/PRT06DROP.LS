/PROG  PRT06DROP
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "274";
PROG_SIZE	= 1913;
CREATE		= DATE 19-03-06  TIME 15:52:32;
MODIFIED	= DATE 19-03-06  TIME 16:27:08;
FILE_NAME	= PRT22DRO;
VERSION		= 0;
LINE_COUNT	= 52;
MEMORY_SIZE	= 2205;
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
  17:  PAYLOAD[3] ;
  18:  ENTER I-ZONE(1) ;
  19:  ENTER I-ZONE(2) ;
  20:   ;
  21:J P[12] 100% CNT100    ;
  22:J P[14] 100% CNT100    ;
  23:J P[13] 100% CNT100    ;
  24:   ;
  25:L P[2:Abv Drop] 2000mm/sec CNT50    ;
  26:   ;
  27:  !Robot at conveyor ;
  28:L P[3:At Drop] 1500mm/sec FINE    ;
  29:   ;
  30:  Turn OFF Vacuum(6,7) ;
  31:  PAYLOAD[2] ;
  32:   ;
  33:  !verify no part in tool ;
  34:L P[5] 2000mm/sec FINE    ;
  35:  REQUEST CONTINUE    ;
  36:   ;
  37:  !Robot clear of conveyor ;
  38:  SET SEGMENT(33) ;
  39:   ;
  40:J P[6] 100% CNT100    ;
  41:J P[10] 100% CNT100    ;
  42:J P[9] 100% CNT100    ;
  43:J P[1] 100% CNT100    ;
  44:   ;
  45:  EXIT I-ZONE(1) ;
  46:  EXIT I-ZONE(2) ;
  47:   ;
  48:J P[8] 100% CNT100    ;
  49:J P[7] 100% CNT100    ;
  50:   ;
  51:  !Robot clear of all ;
  52:  SET SEGMENT(63) ;
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
	X =  1402.947  mm,	Y = -1167.700  mm,	Z =   664.661  mm,
	W =   177.955 deg,	P =    30.551 deg,	R =    -3.693 deg
};
P[3:"At Drop"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1413.685  mm,	Y = -1145.905  mm,	Z =   473.113  mm,
	W =   177.955 deg,	P =    30.551 deg,	R =    -3.693 deg
};
P[5]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1406.385  mm,	Y = -1113.605  mm,	Z =   662.446  mm,
	W =   177.955 deg,	P =    30.551 deg,	R =    -3.693 deg
};
P[6]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1255.681  mm,	Y = -1155.721  mm,	Z =   949.620  mm,
	W =   179.704 deg,	P =    13.178 deg,	R =    -4.460 deg
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
	X =   442.648  mm,	Y =   544.449  mm,	Z =  1567.229  mm,
	W =  -130.848 deg,	P =    -6.654 deg,	R =   -20.530 deg
};
P[13]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1255.681  mm,	Y = -1155.721  mm,	Z =   949.620  mm,
	W =   179.704 deg,	P =    13.178 deg,	R =    -4.460 deg
};
P[14]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   809.226  mm,	Y =  -224.434  mm,	Z =  1438.419  mm,
	W =  -148.938 deg,	P =    -7.915 deg,	R =   -22.178 deg
};
/END
