/PROG  PRT07PICK
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "311 PICKUP V4.0";
PROG_SIZE	= 2625;
CREATE		= DATE 19-10-04  TIME 09:53:00;
MODIFIED	= DATE 19-10-04  TIME 09:53:00;
FILE_NAME	= PRT07PIC;
VERSION		= 0;
LINE_COUNT	= 71;
MEMORY_SIZE	= 2977;
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
  43:J P[16] 100% CNT100    ;
  44:   ;
  45:L P[9] 1500mm/sec CNT50    ;
  46:L P[7] 1500mm/sec FINE    ;
  47:L P[19] 800mm/sec FINE    ;
  48:   ;
  49:L P[3:PICK] 100mm/sec FINE    ;
  50:   ;
  51:  CALL VACUUMON(6,7) ;
  52:   ;
  53:  //CHK PART PRESENT(1) ;
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
  71:  SET SEGMENT(14) ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 2,	
	J1=      .921 deg,	J2=   -59.724 deg,	J3=    35.226 deg,
	J4=     4.021 deg,	J5=  -116.912 deg,	J6=   -34.287 deg
};
P[3:"PICK"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -141.049  mm,	Y = -1200.457  mm,	Z =  1186.140  mm,
	W =  -179.453 deg,	P =   -23.468 deg,	R =   -90.742 deg
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
	X =  -113.417  mm,	Y =  -952.221  mm,	Z =  1363.033  mm,
	W =   177.750 deg,	P =    -1.621 deg,	R =   -90.488 deg
};
P[7]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -141.321  mm,	Y = -1197.723  mm,	Z =  1207.829  mm,
	W =  -179.274 deg,	P =   -24.820 deg,	R =   -90.807 deg
};
P[8]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   245.399  mm,	Y =  1360.047  mm,	Z =  1282.276  mm,
	W =   179.003 deg,	P =    -7.565 deg,	R =    73.187 deg
};
P[9]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -133.578  mm,	Y = -1175.979  mm,	Z =  1286.016  mm,
	W =   179.678 deg,	P =   -18.753 deg,	R =   -90.455 deg
};
P[10]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   220.193  mm,	Y =  -923.938  mm,	Z =  1119.901  mm,
	W =   176.653 deg,	P =    -3.449 deg,	R =   -92.977 deg
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
	X =  -120.369  mm,	Y = -1172.760  mm,	Z =  1067.908  mm,
	W =   179.434 deg,	P =   -10.741 deg,	R =   -90.393 deg
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
	J1=    41.856 deg,	J2=   -57.596 deg,	J3=    31.533 deg,
	J4=     3.755 deg,	J5=  -104.271 deg,	J6=   -34.619 deg
};
P[16]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -113.297  mm,	Y = -1142.537  mm,	Z =  1360.514  mm,
	W =   177.585 deg,	P =   -19.894 deg,	R =   -90.430 deg
};
P[17]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2276.308  mm,	Y =  1434.843  mm,	Z =  1163.882  mm,
	W =   178.314 deg,	P =     3.736 deg,	R =   150.938 deg
};
P[19]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -141.329  mm,	Y = -1197.913  mm,	Z =  1195.112  mm,
	W =  -179.418 deg,	P =   -23.729 deg,	R =   -90.756 deg
};
/END
