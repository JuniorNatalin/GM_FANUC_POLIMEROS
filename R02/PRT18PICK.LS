/PROG  PRT18PICK
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "298 PICKUP V4.0";
PROG_SIZE	= 2592;
CREATE		= DATE 19-08-16  TIME 01:23:54;
MODIFIED	= DATE 19-09-16  TIME 12:30:04;
FILE_NAME	= PRT18PIC;
VERSION		= 0;
LINE_COUNT	= 73;
MEMORY_SIZE	= 2936;
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
  31:J P[17] 80% CNT100    ;
  32:J P[5] 80% CNT100    ;
  33:J P[8] 80% CNT100    ;
  34:   ;
  35:  REQUEST CONTINUE    ;
  36:  SET SEGMENT(12) ;
  37:  ENTER I-ZONE(1) ;
  38:   ;
  39:J P[15] 80% CNT100    ;
  40:J P[1] 80% CNT100    ;
  41:J P[10] 80% CNT100    ;
  42:J P[6] 80% CNT100    ;
  43:   ;
  44:J P[2] 50% CNT100    ;
  45:   ;
  46:   ;
  47:L P[9] 1500mm/sec CNT50    ;
  48:L P[7] 1500mm/sec FINE    ;
  49:   ;
  50:L P[3:PICK] 800mm/sec FINE    ;
  51:   ;
  52:  CALL VACUUMON(6,7) ;
  53:  CHK PART PRESENT(1) ;
  54:  !Set Payload= Gripper & Part ;
  55:  PAYLOAD[3] ;
  56:   ;
  57:  !REPO TOOL HERE ? ;
  58:  REQUEST CONTINUE    ;
  59:  SET SEGMENT(13) ;
  60:  ENTER I-ZONE(2) ;
  61:   ;
  62:  !MOVE BACK FROM PICK POS ;
  63:  !TO CHECK NO PART IN TOOL ;
  64:   ;
  65:J P[13] 80% CNT100    ;
  66:J P[12] 80% CNT100    ;
  67:J P[11] 80% CNT100    ;
  68:J P[4] 80% CNT100    ;
  69:J P[14] 100% CNT100    ;
  70:   ;
  71:   ;
  72:   ;
  73:  SET SEGMENT(14) ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 2,	
	J1=      .921 deg,	J2=   -59.724 deg,	J3=    35.226 deg,
	J4=     4.021 deg,	J5=  -116.912 deg,	J6=   -34.287 deg
};
P[2]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -114.419  mm,	Y =  -925.032  mm,	Z =  1330.838  mm,
	W =   177.750 deg,	P =    -1.621 deg,	R =   -90.488 deg
};
P[3:"PICK"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -165.301  mm,	Y = -1084.420  mm,	Z =  1213.739  mm,
	W =   178.933 deg,	P =   -11.110 deg,	R =   -91.137 deg
};
P[4]{
   GP1:
	UF : 0, UT : 2,	
	J1=    -6.247 deg,	J2=   -57.524 deg,	J3=    36.935 deg,
	J4=   -29.509 deg,	J5=  -112.403 deg,	J6=   -25.779 deg
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
	X =    36.718  mm,	Y =  -851.867  mm,	Z =  1449.054  mm,
	W =   178.839 deg,	P =    -6.349 deg,	R =   -91.188 deg
};
P[7]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -165.301  mm,	Y = -1084.419  mm,	Z =  1235.698  mm,
	W =   178.933 deg,	P =   -11.110 deg,	R =   -91.137 deg
};
P[8]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   240.630  mm,	Y =  1440.357  mm,	Z =  1332.924  mm,
	W =  -176.064 deg,	P =   -21.193 deg,	R =    72.439 deg
};
P[9]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -160.570  mm,	Y = -1095.668  mm,	Z =  1263.715  mm,
	W =   178.701 deg,	P =   -10.332 deg,	R =   -90.375 deg
};
P[10]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   572.763  mm,	Y =  -627.074  mm,	Z =  1384.405  mm,
	W =   179.051 deg,	P =    -6.738 deg,	R =   -54.023 deg
};
P[11]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   865.252  mm,	Y =  -405.948  mm,	Z =  1352.420  mm,
	W =  -165.924 deg,	P =     -.845 deg,	R =   -36.236 deg
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
	X =    31.136  mm,	Y = -1040.113  mm,	Z =  1215.686  mm,
	W =   179.171 deg,	P =   -11.356 deg,	R =   -90.449 deg
};
P[14]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   318.139  mm,	Y =   669.521  mm,	Z =  1815.918  mm,
	W =  -131.601 deg,	P =   -11.914 deg,	R =   -16.294 deg
};
P[15]{
   GP1:
	UF : 0, UT : 2,	
	J1=    41.856 deg,	J2=   -57.596 deg,	J3=    31.533 deg,
	J4=     3.755 deg,	J5=   -94.956 deg,	J6=   -34.619 deg
};
P[17]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2276.308  mm,	Y =  1434.843  mm,	Z =  1163.882  mm,
	W =   178.314 deg,	P =     3.736 deg,	R =   150.938 deg
};
/END
