/PROG  PRT38PICK
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "373 PICKUP V4.0";
PROG_SIZE	= 2949;
CREATE		= DATE 22-03-30  TIME 18:43:18;
MODIFIED	= DATE 22-03-30  TIME 18:43:18;
FILE_NAME	= PRT38PIC;
VERSION		= 0;
LINE_COUNT	= 83;
MEMORY_SIZE	= 3253;
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
  44:   ;
  45:J P[9] 100% CNT100    ;
  46:J P[10] 100% CNT100    ;
  47:L P[11:PICK] 600mm/sec FINE    ;
  48:   ;
  49:  Release Part(5) ;
  50:  //WAIT    .50(sec) ;
  51:   ;
  52:  CALL VACUUMON(6,7) ;
  53:   ;
  54:  CHK PART PRESENT(1) ;
  55:   ;
  56:  Grip Part(5) ;
  57:  CHK PART PRESENT(1) ;
  58:  WAIT    .50(sec) ;
  59:  !Set Payload= Gripper & Part ;
  60:  PAYLOAD[3] ;
  61:   ;
  62:  !REPO TOOL HERE ? ;
  63:  REQUEST CONTINUE    ;
  64:  SET SEGMENT(13) ;
  65:   ;
  66:  ENTER I-ZONE(2) ;
  67:   ;
  68:  !MOVE BACK FROM PICK POS ;
  69:  !TO CHECK NO PART IN TOOL ;
  70:   ;
  71:J P[12] 100% CNT100    ;
  72:J P[13] 100% CNT100    ;
  73:J P[14] 100% CNT100    ;
  74:J P[15] 100% CNT100    ;
  75:J P[16] 100% CNT100    ;
  76:J P[17] 100% CNT100    ;
  77:J P[18] 100% CNT100    ;
  78:J P[19] 100% CNT100    ;
  79:J P[20] 100% CNT100    ;
  80:J P[21] 100% CNT100    ;
  81:   ;
  82:   ;
  83:  SET SEGMENT(14) ;
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
	X = -1544.176  mm,	Y =  1312.796  mm,	Z =  1091.707  mm,
	W =   178.170 deg,	P =     3.650 deg,	R =   145.534 deg
};
P[3]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   245.747  mm,	Y =  1353.078  mm,	Z =  1965.781  mm,
	W =  -173.979 deg,	P =   -25.481 deg,	R =    71.164 deg
};
P[4]{
   GP1:
	UF : 0, UT : 2,	
	J1=    18.097 deg,	J2=   -24.495 deg,	J3=    38.380 deg,
	J4=     2.034 deg,	J5=  -102.059 deg,	J6=   -17.669 deg
};
P[5]{
   GP1:
	UF : 0, UT : 2,	
	J1=    10.820 deg,	J2=   -39.420 deg,	J3=    37.044 deg,
	J4=     2.876 deg,	J5=   -59.211 deg,	J6=   -76.450 deg
};
P[6]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1104.700  mm,	Y =   204.476  mm,	Z =  1711.718  mm,
	W =   -59.429 deg,	P =   -11.890 deg,	R =   -82.245 deg
};
P[7]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1003.047  mm,	Y =   100.561  mm,	Z =  1476.820  mm,
	W =   -77.445 deg,	P =    17.977 deg,	R =  -104.811 deg
};
P[8]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   971.260  mm,	Y =   450.794  mm,	Z =  2025.019  mm,
	W =    73.668 deg,	P =    -3.501 deg,	R =    74.145 deg
};
P[9]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =  1190.500  mm,	Y =  -538.713  mm,	Z =  1588.362  mm,
	W =    74.816 deg,	P =      .054 deg,	R =    14.608 deg
};
P[10]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   981.708  mm,	Y =  -735.778  mm,	Z =  1338.534  mm,
	W =    86.121 deg,	P =      .004 deg,	R =   -39.559 deg
};
P[11:"PICK"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   863.530  mm,	Y =  -921.608  mm,	Z =  1388.356  mm,
	W =    88.534 deg,	P =     1.508 deg,	R =   -39.363 deg
};
P[12]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   981.708  mm,	Y =  -735.778  mm,	Z =  1338.534  mm,
	W =    86.121 deg,	P =      .004 deg,	R =   -39.559 deg
};
P[13]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =  1190.500  mm,	Y =  -538.713  mm,	Z =  1588.362  mm,
	W =    74.816 deg,	P =      .054 deg,	R =    14.608 deg
};
P[14]{
   GP1:
	UF : 0, UT : 2,	
	J1=    21.259 deg,	J2=   -59.606 deg,	J3=    46.697 deg,
	J4=    83.831 deg,	J5=   -53.144 deg,	J6=  -346.831 deg
};
P[15]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   753.415  mm,	Y =   194.620  mm,	Z =  2258.907  mm,
	W =    65.515 deg,	P =    14.814 deg,	R =    45.998 deg
};
P[16]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   435.292  mm,	Y =   856.705  mm,	Z =  2091.581  mm,
	W =    69.929 deg,	P =    19.848 deg,	R =    95.955 deg
};
P[17]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   320.376  mm,	Y =  1033.546  mm,	Z =  1924.705  mm,
	W =   107.359 deg,	P =    21.188 deg,	R =   110.604 deg
};
P[18]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =  -180.713  mm,	Y =  1066.865  mm,	Z =  1924.705  mm,
	W =   107.359 deg,	P =    21.188 deg,	R =   137.440 deg
};
P[19]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =  -180.860  mm,	Y =  1066.939  mm,	Z =  1924.567  mm,
	W =   107.392 deg,	P =    16.189 deg,	R =   179.876 deg
};
P[20]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -180.860  mm,	Y =  1066.939  mm,	Z =  1924.566  mm,
	W =   -82.701 deg,	P =    -3.662 deg,	R =    -4.161 deg
};
P[21]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   572.740  mm,	Y =   375.739  mm,	Z =  1646.165  mm,
	W =  -116.212 deg,	P =    -5.348 deg,	R =    -1.452 deg
};
/END
