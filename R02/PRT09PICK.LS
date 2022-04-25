/PROG  PRT09PICK
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "336 PICKUP V4.0";
PROG_SIZE	= 2757;
CREATE		= DATE 19-03-08  TIME 16:30:12;
MODIFIED	= DATE 19-03-08  TIME 17:28:18;
FILE_NAME	= PRT06PIC;
VERSION		= 0;
LINE_COUNT	= 75;
MEMORY_SIZE	= 3093;
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
   1:  !******************************* ;
   2:  !*   KM - R02 Pick up from     * ;
   3:  !*         Robot Tool          * ;
   4:  !******************************* ;
   5:  !* Robot ID: XXXXXR02B1        * ;
   6:  !*    F-19XXXX                 * ;
   7:  !* Line: XXXXXXXX              * ;
   8:  !* Platform: XX                * ;
   9:  !* Program: S01PICK_R.TP       * ;
  10:  !* Application: MH PICK        * ;
  11:  !******************************* ;
  12:  ! Author: Esys Automation      * ;
  13:  !******************************* ;
  14:   ;
  15:  !ASSIGN PATH SEGEMENT VALUES ;
  16:   ;
  17:  SET SEGMENT(10) ;
  18:   ;
  19:  !*******IMPORTANT************ ;
  20:  !for MH tool changers ;
  21:  !make sure Set MH TOOL(AR) ;
  22:  !matches tool number ;
  23:   ;
  24:  Set MH Tool(1) ;
  25:   ;
  26:  !MOVE TO ROBOT PICKUP ;
  27:  UFRAME_NUM=0 ;
  28:  UTOOL_NUM=2 ;
  29:  PAYLOAD[2] ;
  30:   ;
  31:J P[5] 100% CNT100    ;
  32:J P[8] 100% CNT100    ;
  33:   ;
  34:  REQUEST CONTINUE    ;
  35:  SET SEGMENT(12) ;
  36:  ENTER I-ZONE(1) ;
  37:   ;
  38:J P[15] 100% CNT100    ;
  39:J P[1] 100% CNT100    ;
  40:J P[2] 100% CNT100    ;
  41:J P[10] 100% CNT100    ;
  42:J P[6] 100% CNT100    ;
  43:   ;
  44:L P[9] 2000mm/sec CNT50    ;
  45:L P[7] 2000mm/sec FINE    ;
  46:   ;
  47:   ;
  48:L P[17] 2000mm/sec CNT50    ;
  49:L P[18] 2000mm/sec CNT50    ;
  50:L P[19] 2000mm/sec CNT50    ;
  51:   ;
  52:   ;
  53:L P[3] 500mm/sec FINE    ;
  54:L P[16:PICK] 300mm/sec FINE    ;
  55:   ;
  56:  CALL VACUUMON(6,7) ;
  57:  CHK PART PRESENT(1) ;
  58:  !Set Payload= Gripper & Part ;
  59:  PAYLOAD[3] ;
  60:   ;
  61:  !REPO TOOL HERE ? ;
  62:  REQUEST CONTINUE    ;
  63:  SET SEGMENT(13) ;
  64:  ENTER I-ZONE(2) ;
  65:   ;
  66:  !MOVE BACK FROM PICK POS ;
  67:  !TO CHECK NO PART IN TOOL ;
  68:   ;
  69:J P[13] 100% CNT100    ;
  70:J P[12] 100% CNT100    ;
  71:J P[11] 100% CNT100    ;
  72:J P[4] 100% CNT100    ;
  73:J P[14] 100% CNT100    ;
  74:   ;
  75:  SET SEGMENT(14) ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 2,	
	J1=      .921 deg,	J2=   -59.209 deg,	J3=    33.351 deg,
	J4=     4.021 deg,	J5=  -113.132 deg,	J6=   -34.287 deg
};
P[2]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   818.043  mm,	Y =  -575.679  mm,	Z =  1128.958  mm,
	W =  -178.245 deg,	P =   -10.433 deg,	R =   -52.675 deg
};
P[3:""]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   -98.766  mm,	Y = -1442.735  mm,	Z =  1278.729  mm,
	W =   179.174 deg,	P =   -10.904 deg,	R =   -90.415 deg
};
P[4]{
   GP1:
	UF : 0, UT : 2,	
	J1=    17.832 deg,	J2=   -53.008 deg,	J3=    45.802 deg,
	J4=   -41.245 deg,	J5=   -99.276 deg,	J6=   -32.019 deg
};
P[5]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1544.176  mm,	Y =  1312.796  mm,	Z =  1091.707  mm,
	W =   178.170 deg,	P =     3.650 deg,	R =   145.534 deg
};
P[6]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   361.370  mm,	Y =  -890.070  mm,	Z =  1222.374  mm,
	W =   179.261 deg,	P =    -6.929 deg,	R =   -84.042 deg
};
P[7]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   -96.486  mm,	Y = -1128.011  mm,	Z =  1208.376  mm,
	W =   179.174 deg,	P =   -10.904 deg,	R =   -90.415 deg
};
P[8]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   244.076  mm,	Y =  1386.536  mm,	Z =  1165.339  mm,
	W =   177.696 deg,	P =    -3.914 deg,	R =    73.318 deg
};
P[9]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =    89.566  mm,	Y = -1021.883  mm,	Z =  1371.678  mm,
	W =   179.098 deg,	P =    -7.290 deg,	R =   -94.264 deg
};
P[10]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   584.267  mm,	Y =  -883.642  mm,	Z =  1131.526  mm,
	W =   178.681 deg,	P =    -6.161 deg,	R =   -84.183 deg
};
P[11]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   864.087  mm,	Y =  -405.697  mm,	Z =  1013.368  mm,
	W =  -165.190 deg,	P =    10.658 deg,	R =   -33.304 deg
};
P[12]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   220.193  mm,	Y =  -923.938  mm,	Z =  1119.901  mm,
	W =   176.653 deg,	P =    -3.449 deg,	R =   -92.977 deg
};
P[13]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -106.239  mm,	Y =  -990.333  mm,	Z =  1288.642  mm,
	W =   178.937 deg,	P =    -7.992 deg,	R =   -90.477 deg
};
P[14]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   442.639  mm,	Y =   544.423  mm,	Z =  1567.241  mm,
	W =  -130.847 deg,	P =    -6.654 deg,	R =   -20.530 deg
};
P[15]{
   GP1:
	UF : 0, UT : 2,	
	J1=    41.856 deg,	J2=   -49.592 deg,	J3=    24.314 deg,
	J4=     3.755 deg,	J5=  -104.271 deg,	J6=   -34.619 deg
};
P[16:"PICK"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   -98.739  mm,	Y = -1442.761  mm,	Z =  1240.647  mm,
	W =   179.174 deg,	P =   -10.903 deg,	R =   -90.414 deg
};
P[17]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   -96.908  mm,	Y = -1270.755  mm,	Z =  1284.240  mm,
	W =   179.174 deg,	P =   -10.904 deg,	R =   -90.415 deg
};
P[18]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   -97.533  mm,	Y = -1357.007  mm,	Z =  1300.857  mm,
	W =   179.174 deg,	P =   -10.905 deg,	R =   -90.415 deg
};
P[19]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   -97.791  mm,	Y = -1360.092  mm,	Z =  1284.835  mm,
	W =   179.174 deg,	P =   -10.905 deg,	R =   -90.415 deg
};
/END
