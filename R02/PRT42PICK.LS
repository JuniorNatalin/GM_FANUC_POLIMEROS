/PROG  PRT42PICK
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "376 PICKUP V4.0";
PROG_SIZE	= 2495;
CREATE		= DATE 20-12-01  TIME 09:53:46;
MODIFIED	= DATE 20-12-01  TIME 09:53:46;
FILE_NAME	= PRT42PIC;
VERSION		= 0;
LINE_COUNT	= 67;
MEMORY_SIZE	= 2863;
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
  46:L P[3:PICK] 1500mm/sec FINE    ;
  47:   ;
  48:  CALL VACUUMON(6,7) ;
  49:  CHK PART PRESENT(1) ;
  50:  !Set Payload= Gripper & Part ;
  51:  PAYLOAD[3] ;
  52:   ;
  53:  !REPO TOOL HERE ? ;
  54:  REQUEST CONTINUE    ;
  55:  SET SEGMENT(13) ;
  56:  ENTER I-ZONE(2) ;
  57:   ;
  58:  !MOVE BACK FROM PICK POS ;
  59:  !TO CHECK NO PART IN TOOL ;
  60:   ;
  61:J P[13] 100% CNT100    ;
  62:J P[12] 100% CNT100    ;
  63:J P[11] 100% CNT100    ;
  64:J P[4] 100% CNT100    ;
  65:J P[14] 100% CNT100    ;
  66:   ;
  67:  SET SEGMENT(14) ;
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
P[3:"PICK"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -109.597  mm,	Y = -1379.515  mm,	Z =  1257.158  mm,
	W =   179.175 deg,	P =   -10.910 deg,	R =   -90.415 deg
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
	X =  -110.838  mm,	Y = -1364.278  mm,	Z =  1346.366  mm,
	W =   179.175 deg,	P =   -10.911 deg,	R =   -90.414 deg
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
	X =   459.961  mm,	Y =   591.949  mm,	Z =  1586.602  mm,
	W =  -123.626 deg,	P =    -6.808 deg,	R =   -20.773 deg
};
P[15]{
   GP1:
	UF : 0, UT : 2,	
	J1=    41.856 deg,	J2=   -49.592 deg,	J3=    24.314 deg,
	J4=     3.755 deg,	J5=  -104.271 deg,	J6=   -34.619 deg
};
/END
