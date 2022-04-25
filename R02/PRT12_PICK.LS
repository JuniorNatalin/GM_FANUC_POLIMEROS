/PROG  PRT12_PICK
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "332 PICKUP V4.0";
PROG_SIZE	= 2760;
CREATE		= DATE 19-11-26  TIME 08:24:10;
MODIFIED	= DATE 19-11-26  TIME 08:24:10;
FILE_NAME	= PRT12_PI;
VERSION		= 0;
LINE_COUNT	= 80;
MEMORY_SIZE	= 3076;
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
  33:J P[3] 100% CNT100    ;
  34:   ;
  35:  REQUEST CONTINUE    ;
  36:   ;
  37:  SET SEGMENT(12) ;
  38:   ;
  39:  ENTER I-ZONE(1) ;
  40:   ;
  41:J P[4] 100% CNT100    ;
  42:   ;
  43:   ;
  44:J P[5] 100% CNT100    ;
  45:J P[6] 100% CNT100    ;
  46:J P[7] 100% CNT100    ;
  47:J P[8] 100% CNT100    ;
  48:   ;
  49:   ;
  50:J P[9] 100% CNT100    ;
  51:   ;
  52:L P[10] 2000mm/sec CNT50    ;
  53:L P[11] 200mm/sec CNT30    ;
  54:   ;
  55:L P[12:PICK_PRT_12] 100mm/sec FINE    ;
  56:   ;
  57:  CALL VACUUMON(6,7) ;
  58:   ;
  59:  CHK PART PRESENT(1) ;
  60:  !Set Payload= Gripper & Part ;
  61:  PAYLOAD[3] ;
  62:   ;
  63:  !REPO TOOL HERE ? ;
  64:  REQUEST CONTINUE    ;
  65:   ;
  66:  SET SEGMENT(13) ;
  67:   ;
  68:  ENTER I-ZONE(2) ;
  69:   ;
  70:  !MOVE BACK FROM PICK POS ;
  71:  !TO CHECK NO PART IN TOOL ;
  72:   ;
  73:J P[13] 100% CNT100    ;
  74:J P[14] 100% CNT100    ;
  75:J P[15] 100% CNT100    ;
  76:J P[18] 100% CNT100    ;
  77:J P[17] 100% CNT100    ;
  78:J P[16] 100% CNT100    ;
  79:   ;
  80:  SET SEGMENT(14) ;
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
	X =  -303.953  mm,	Y =  -678.735  mm,	Z =  1968.837  mm,
	W =   176.293 deg,	P =   -38.310 deg,	R =   -88.916 deg
};
P[10]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -344.407  mm,	Y =  -907.146  mm,	Z =  1623.873  mm,
	W =   178.898 deg,	P =   -26.321 deg,	R =   -90.316 deg
};
P[11]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -343.884  mm,	Y = -1096.246  mm,	Z =  1613.865  mm,
	W =   178.785 deg,	P =   -29.173 deg,	R =   -90.251 deg
};
P[12:"PICK_PRT_12"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -329.807  mm,	Y = -1150.357  mm,	Z =  1568.341  mm,
	W =   179.643 deg,	P =   -28.904 deg,	R =   -88.145 deg
};
P[13]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -327.342  mm,	Y =  -976.497  mm,	Z =  1797.659  mm,
	W =   177.812 deg,	P =   -33.573 deg,	R =   -89.773 deg
};
P[14]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -278.256  mm,	Y =  -600.913  mm,	Z =  2184.372  mm,
	W =   174.504 deg,	P =   -49.638 deg,	R =   -87.555 deg
};
P[15]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -125.236  mm,	Y =  -621.742  mm,	Z =  2078.288  mm,
	W =   176.700 deg,	P =   -34.974 deg,	R =   -74.488 deg
};
P[16]{
   GP1:
	UF : 0, UT : 2,	
	J1=    17.832 deg,	J2=   -53.008 deg,	J3=    45.802 deg,
	J4=   -41.245 deg,	J5=   -99.276 deg,	J6=   -32.019 deg
};
P[17]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   562.145  mm,	Y =  -324.825  mm,	Z =  1680.291  mm,
	W =  -155.491 deg,	P =   -20.035 deg,	R =   -27.328 deg
};
P[18]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   377.757  mm,	Y =  -563.709  mm,	Z =  1709.581  mm,
	W =  -165.675 deg,	P =   -19.742 deg,	R =   -44.599 deg
};
/END
