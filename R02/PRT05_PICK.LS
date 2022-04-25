/PROG  PRT05_PICK
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "239 PICKUP V4.0";
PROG_SIZE	= 2700;
CREATE		= DATE 19-03-09  TIME 14:53:56;
MODIFIED	= DATE 19-03-09  TIME 17:40:26;
FILE_NAME	= PRT03_PI;
VERSION		= 0;
LINE_COUNT	= 72;
MEMORY_SIZE	= 3048;
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
  24:  Set MH Tool(2) ;
  25:   ;
  26:  !MOVE TO ROBOT PICKUP ;
  27:  UFRAME_NUM=0 ;
  28:  UTOOL_NUM=2 ;
  29:  PAYLOAD[2] ;
  30:   ;
  31:J P[1] 100% CNT100    ;
  32:J P[2] 100% CNT100    ;
  33:J P[18] 100% CNT100    ;
  34:   ;
  35:  REQUEST CONTINUE    ;
  36:  SET SEGMENT(12) ;
  37:  ENTER I-ZONE(1) ;
  38:   ;
  39:J P[3] 100% CNT100    ;
  40:J P[4] 100% CNT100    ;
  41:J P[5] 100% CNT100    ;
  42:J P[6] 100% CNT100    ;
  43:J P[7] 100% CNT100    ;
  44:J P[8] 100% CNT100    ;
  45:J P[9] 100% CNT50    ;
  46:   ;
  47:L P[10] 2000mm/sec CNT50    ;
  48:L P[11] 300mm/sec CNT10    ;
  49:   ;
  50:L P[12:PICK_PRT_03] 50mm/sec FINE    ;
  51:   ;
  52:  CALL VACUUMON(6,7) ;
  53:  CHK PART PRESENT(1) ;
  54:  !Set Payload= Gripper & Part ;
  55:  PAYLOAD[3] ;
  56:   ;
  57:  !REPO TOOL HERE ? ;
  58:  REQUEST CONTINUE    ;
  59:  SET SEGMENT(13) ;
  60:   ;
  61:  ENTER I-ZONE(2) ;
  62:   ;
  63:  !MOVE BACK FROM PICK POS ;
  64:  !TO CHECK NO PART IN TOOL ;
  65:   ;
  66:J P[13] 100% CNT100    ;
  67:J P[14] 100% CNT100    ;
  68:J P[15] 100% CNT100    ;
  69:J P[19] 100% CNT100    ;
  70:J P[17] 100% CNT100    ;
  71:   ;
  72:  SET SEGMENT(14) ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2276.308  mm,	Y =  1434.843  mm,	Z =  1163.882  mm,
	W =   178.314 deg,	P =     3.736 deg,	R =   150.938 deg
};
P[2]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1249.599  mm,	Y =  1119.665  mm,	Z =  2154.999  mm,
	W =   178.980 deg,	P =   -31.092 deg,	R =   145.333 deg
};
P[3]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   261.867  mm,	Y =  1030.427  mm,	Z =  2132.150  mm,
	W =  -169.562 deg,	P =   -34.589 deg,	R =    68.946 deg
};
P[4]{
   GP1:
	UF : 0, UT : 2,	
	J1=    35.755 deg,	J2=   -55.642 deg,	J3=    80.757 deg,
	J4=    -4.861 deg,	J5=  -104.469 deg,	J6=     8.951 deg
};
P[5]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U B, 0, 0, 0',
	X =    -4.444  mm,	Y =  -196.911  mm,	Z =  2420.385  mm,
	W =   163.530 deg,	P =   -65.573 deg,	R =    43.471 deg
};
P[6]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U B, 0, 0, 0',
	X =   -93.319  mm,	Y =  -173.452  mm,	Z =  2420.385  mm,
	W =   163.530 deg,	P =   -65.573 deg,	R =    16.483 deg
};
P[7]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U B, 0, 0, 0',
	X =  -196.841  mm,	Y =     6.897  mm,	Z =  2420.385  mm,
	W =   163.530 deg,	P =   -65.573 deg,	R =   -47.243 deg
};
P[8]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U B, 0, 0, 0',
	X =  -209.065  mm,	Y =  -142.987  mm,	Z =  2330.215  mm,
	W =   169.184 deg,	P =   -57.764 deg,	R =   -83.550 deg
};
P[9]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -160.451  mm,	Y =  -917.900  mm,	Z =  1649.474  mm,
	W =  -179.618 deg,	P =   -15.055 deg,	R =   -87.672 deg
};
P[10]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -144.196  mm,	Y = -1008.754  mm,	Z =  1475.376  mm,
	W =   179.425 deg,	P =    -5.978 deg,	R =   -89.101 deg
};
P[11]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -141.480  mm,	Y = -1206.016  mm,	Z =  1458.028  mm,
	W =   179.428 deg,	P =     2.053 deg,	R =   -89.181 deg
};
P[12:"PICK_PRT_03"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -141.792  mm,	Y = -1204.955  mm,	Z =  1428.289  mm,
	W =   179.428 deg,	P =     2.053 deg,	R =   -89.181 deg
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
	X =   220.193  mm,	Y =  -923.938  mm,	Z =  1119.901  mm,
	W =   176.653 deg,	P =    -3.449 deg,	R =   -92.977 deg
};
P[15]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   864.087  mm,	Y =  -405.697  mm,	Z =  1013.368  mm,
	W =  -165.190 deg,	P =    10.658 deg,	R =   -33.304 deg
};
P[17]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   442.639  mm,	Y =   544.423  mm,	Z =  1567.241  mm,
	W =  -130.847 deg,	P =    -6.654 deg,	R =   -20.530 deg
};
P[18]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   253.511  mm,	Y =  1037.246  mm,	Z =  2133.126  mm,
	W =  -169.668 deg,	P =   -34.576 deg,	R =    69.559 deg
};
P[19]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1101.333  mm,	Y =   -72.149  mm,	Z =  1310.065  mm,
	W =  -164.174 deg,	P =   -13.732 deg,	R =    10.358 deg
};
/END
