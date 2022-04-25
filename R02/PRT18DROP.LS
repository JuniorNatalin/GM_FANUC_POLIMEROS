/PROG  PRT18DROP
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "DEPOSITO 298 ";
PROG_SIZE	= 1832;
CREATE		= DATE 19-07-31  TIME 09:39:16;
MODIFIED	= DATE 19-08-07  TIME 14:11:10;
FILE_NAME	= PRT07DRO;
VERSION		= 0;
LINE_COUNT	= 50;
MEMORY_SIZE	= 2132;
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
  18:  ENTER I-ZONE(2) ;
  19:   ;
  20:J P[12] 100% CNT100    ;
  21:J P[14] 100% CNT100    ;
  22:J P[13] 100% CNT100    ;
  23:   ;
  24:L P[2:Abv Drop] 2000mm/sec CNT50    ;
  25:   ;
  26:  !Robot at conveyor ;
  27:L P[3:At Drop] 1500mm/sec FINE    ;
  28:   ;
  29:  Turn OFF Vacuum(6,7) ;
  30:  PAYLOAD[2] ;
  31:   ;
  32:  !verify no part in tool ;
  33:L P[5] 1000mm/sec FINE    ;
  34:   ;
  35:  REQUEST CONTINUE    ;
  36:   ;
  37:  !Robot clear of conveyor ;
  38:  SET SEGMENT(33) ;
  39:   ;
  40:J P[6] 80% CNT100    ;
  41:J P[10] 80% CNT100    ;
  42:J P[9] 80% FINE    ;
  43:   ;
  44:  EXIT I-ZONE(2) ;
  45:   ;
  46:J P[8] 80% CNT100    ;
  47:J P[7] 80% CNT100    ;
  48:   ;
  49:  !Robot clear of all ;
  50:  SET SEGMENT(63) ;
/POS
P[2:"Abv Drop"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1441.425  mm,	Y = -1113.604  mm,	Z =   661.966  mm,
	W =  -179.967 deg,	P =    -3.574 deg,	R =    -3.186 deg
};
P[3:"At Drop"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1448.697  mm,	Y = -1087.191  mm,	Z =   428.687  mm,
	W =  -179.977 deg,	P =   -13.212 deg,	R =    -3.690 deg
};
P[5]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1448.696  mm,	Y = -1087.191  mm,	Z =   594.288  mm,
	W =  -179.977 deg,	P =   -13.212 deg,	R =    -3.690 deg
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
	X =   485.914  mm,	Y =  1098.553  mm,	Z =  1493.750  mm,
	W =  -167.732 deg,	P =   -25.236 deg,	R =    42.208 deg
};
P[9]{
   GP1:
	UF : 0, UT : 2,	
	J1=    44.345 deg,	J2=   -51.593 deg,	J3=    26.003 deg,
	J4=    12.096 deg,	J5=   -97.054 deg,	J6=   -33.417 deg
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
	X =   809.226  mm,	Y =  -224.433  mm,	Z =  1438.419  mm,
	W =  -148.938 deg,	P =    -7.915 deg,	R =   -22.178 deg
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
