/PROG  PRT07DROP
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "311";
PROG_SIZE	= 1885;
CREATE		= DATE 19-07-17  TIME 08:21:10;
MODIFIED	= DATE 19-07-17  TIME 08:21:10;
FILE_NAME	= PRT07DRO;
VERSION		= 0;
LINE_COUNT	= 51;
MEMORY_SIZE	= 2181;
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
  42:J P[1] 80% CNT100    ;
  43:J P[9] 80% FINE    ;
  44:   ;
  45:  EXIT I-ZONE(2) ;
  46:   ;
  47:J P[8] 80% CNT100    ;
  48:J P[7] 80% CNT100    ;
  49:   ;
  50:  !Robot clear of all ;
  51:  SET SEGMENT(63) ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 2,	
	J1=    41.856 deg,	J2=   -49.592 deg,	J3=    24.314 deg,
	J4=     3.755 deg,	J5=  -104.271 deg,	J6=   -34.619 deg
};
P[2:"Abv Drop"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1441.425  mm,	Y = -1113.605  mm,	Z =   661.966  mm,
	W =   179.411 deg,	P =     7.578 deg,	R =    -3.208 deg
};
P[3:"At Drop"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1534.311  mm,	Y = -1079.647  mm,	Z =   368.525  mm,
	W =   179.399 deg,	P =   -11.148 deg,	R =    -3.860 deg
};
P[5]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1607.945  mm,	Y = -1090.500  mm,	Z =   451.607  mm,
	W =   179.416 deg,	P =    -8.039 deg,	R =    -3.756 deg
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
