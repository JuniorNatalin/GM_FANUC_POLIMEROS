/PROG  PRT17_PICK
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "142 PICKUP V4.";
PROG_SIZE	= 2610;
CREATE		= DATE 21-06-08  TIME 22:58:16;
MODIFIED	= DATE 21-06-08  TIME 22:58:16;
FILE_NAME	= PRT17_PI;
VERSION		= 0;
LINE_COUNT	= 73;
MEMORY_SIZE	= 2954;
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
  31:J P[1] 100% CNT100    ;
  32:J P[2] 100% CNT100    ;
  33:J P[3] 100% CNT100    ;
  34:   ;
  35:  REQUEST CONTINUE    ;
  36:  SET SEGMENT(12) ;
  37:  ENTER I-ZONE(1) ;
  38:   ;
  39:J P[4] 100% CNT100    ;
  40:J P[5] 100% CNT100    ;
  41:J P[6] 100% CNT100    ;
  42:J P[7] 100% CNT100    ;
  43:J P[8] 100% CNT100    ;
  44:J P[9] 100% CNT100    ;
  45:  Release Part(5) ;
  46:   ;
  47:L P[10] 2000mm/sec CNT50    ;
  48:   ;
  49:L P[18] 500mm/sec FINE    ;
  50:   ;
  51:  Grip Part(5) ;
  52:  CALL VACUUMON(6,7) ;
  53:  CHK PART PRESENT(1) ;
  54:  !Set Payload= Gripper & Part ;
  55:  PAYLOAD[3] ;
  56:   ;
  57:  !REPO TOOL HERE ? ;
  58:  REQUEST CONTINUE    ;
  59:   ;
  60:  SET SEGMENT(13) ;
  61:   ;
  62:  ENTER I-ZONE(2) ;
  63:   ;
  64:  !MOVE BACK FROM PICK POS ;
  65:  !TO CHECK NO PART IN TOOL ;
  66:   ;
  67:J P[13] 100% CNT100    ;
  68:J P[14] 100% CNT100    ;
  69:J P[15] 100% CNT100    ;
  70:J P[16] 100% CNT100    ;
  71:J P[17] 100% CNT100    ;
  72:   ;
  73:  SET SEGMENT(14) ;
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
	X =  -339.150  mm,	Y =  -676.388  mm,	Z =  1969.359  mm,
	W =   176.293 deg,	P =   -38.310 deg,	R =   -88.916 deg
};
P[10]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -390.161  mm,	Y =  -861.395  mm,	Z =  1780.757  mm,
	W =   179.592 deg,	P =   -39.551 deg,	R =   -89.833 deg
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
	X =  -123.940  mm,	Y =  -650.509  mm,	Z =  2184.372  mm,
	W =   174.504 deg,	P =   -49.638 deg,	R =   -73.495 deg
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
	X =   476.307  mm,	Y =   483.917  mm,	Z =  1829.647  mm,
	W =  -130.847 deg,	P =    -6.654 deg,	R =   -20.531 deg
};
P[18]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -401.843  mm,	Y =  -939.385  mm,	Z =  1730.990  mm,
	W =   179.609 deg,	P =   -43.191 deg,	R =   -89.665 deg
};
/END
