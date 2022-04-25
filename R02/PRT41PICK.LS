/PROG  PRT41PICK
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "375 PICKUP V4.0";
PROG_SIZE	= 3120;
CREATE		= DATE 20-12-10  TIME 09:18:52;
MODIFIED	= DATE 22-01-17  TIME 07:10:38;
FILE_NAME	= PRT41PIC;
VERSION		= 0;
LINE_COUNT	= 87;
MEMORY_SIZE	= 3408;
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
  24:  Set MH Tool(4) ;
  25:   ;
  26:  !MOVE TO ROBOT PICKUP ;
  27:  UFRAME_NUM=0 ;
  28:  UTOOL_NUM=2 ;
  29:  PAYLOAD[2] ;
  30:   ;
  31:  Grip Part(2) ;
  32:  Grip Part(1) ;
  33:  Grip Part(5) ;
  34:   ;
  35:J P[17] 100% CNT100    ;
  36:J P[27] 100% CNT100    ;
  37:J P[28] 100% CNT100    ;
  38:J P[29] 100% CNT100    ;
  39:J P[26] 100% CNT100    ;
  40:   ;
  41:  REQUEST CONTINUE    ;
  42:  SET SEGMENT(12) ;
  43:  ENTER I-ZONE(1) ;
  44:   ;
  45:J P[4] 100% CNT100    ;
  46:J P[30] 100% CNT100    ;
  47:J P[33] 100% CNT100    ;
  48:J P[34] 100% CNT100    ;
  49:J P[35] 100% CNT100    ;
  50:J P[36] 100% CNT100    ;
  51:   ;
  52:L P[37] 2000mm/sec CNT80    ;
  53:L P[3:PICK] 2000mm/sec FINE    ;
  54:   ;
  55:  Grip Part(5) ;
  56:  Release Part(1) ;
  57:  Release Part(5) ;
  58:  WAIT    .50(sec) ;
  59:  CALL VACUUMON(6,7) ;
  60:  WAIT   1.50(sec) ;
  61:   ;
  62:  CHK PART PRESENT(1) ;
  63:  !Set Payload= Gripper & Part ;
  64:  PAYLOAD[3] ;
  65:  Grip Part(5) ;
  66:   ;
  67:  !REPO TOOL HERE ? ;
  68:  REQUEST CONTINUE    ;
  69:  SET SEGMENT(13) ;
  70:  ENTER I-ZONE(2) ;
  71:   ;
  72:  !MOVE BACK FROM PICK POS ;
  73:  !TO CHECK NO PART IN TOOL ;
  74:   ;
  75:  Release Part(1) ;
  76:  Release Part(5) ;
  77:   ;
  78:   ;
  79:L P[8] 2000mm/sec CNT100    ;
  80:J P[7] 100% CNT100    ;
  81:J P[6] 100% CNT100    ;
  82:J P[5] 100% CNT100    ;
  83:J P[9] 100% CNT100    ;
  84:J P[1] 100% CNT100    ;
  85:J P[2] 100% FINE    ;
  86:   ;
  87:  SET SEGMENT(14) ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   927.734  mm,	Y =  -371.241  mm,	Z =  1599.981  mm,
	W =  -147.957 deg,	P =   -29.506 deg,	R =   -16.905 deg
};
P[2]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   927.734  mm,	Y =  -371.241  mm,	Z =  1599.981  mm,
	W =  -147.957 deg,	P =   -29.506 deg,	R =   -16.905 deg
};
P[3:"PICK"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 1, 0',
	X =   152.271  mm,	Y = -1494.202  mm,	Z =   865.680  mm,
	W =    -3.497 deg,	P =      .705 deg,	R =   -88.444 deg
};
P[4]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   667.067  mm,	Y =  1177.263  mm,	Z =  1985.143  mm,
	W =    44.479 deg,	P =   -17.692 deg,	R =    41.325 deg
};
P[5]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1309.693  mm,	Y =  -844.413  mm,	Z =   656.470  mm,
	W =    42.324 deg,	P =    14.959 deg,	R =   -36.839 deg
};
P[6]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   792.156  mm,	Y = -1273.337  mm,	Z =   370.486  mm,
	W =     8.952 deg,	P =    19.540 deg,	R =   -67.393 deg
};
P[7]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 1, 0',
	X =    15.052  mm,	Y = -1399.075  mm,	Z =   212.759  mm,
	W =    -5.829 deg,	P =    23.827 deg,	R =   -87.702 deg
};
P[8]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 1, 0',
	X =   138.708  mm,	Y = -1491.851  mm,	Z =   644.828  mm,
	W =    -3.497 deg,	P =      .705 deg,	R =   -88.443 deg
};
P[9]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1057.741  mm,	Y =  -863.590  mm,	Z =  1388.796  mm,
	W =   119.847 deg,	P =    -7.475 deg,	R =   -30.179 deg
};
P[17]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2276.308  mm,	Y =  1434.843  mm,	Z =  1163.882  mm,
	W =   178.314 deg,	P =     3.736 deg,	R =   150.938 deg
};
P[26]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   204.925  mm,	Y =  1337.509  mm,	Z =  1985.143  mm,
	W =    44.479 deg,	P =   -17.692 deg,	R =    62.151 deg
};
P[27]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1619.188  mm,	Y =  1318.442  mm,	Z =  1513.078  mm,
	W =   148.294 deg,	P =    -1.949 deg,	R =   128.953 deg
};
P[28]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -878.353  mm,	Y =  1141.921  mm,	Z =  1651.318  mm,
	W =   115.156 deg,	P =   -15.573 deg,	R =   121.077 deg
};
P[29]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -488.430  mm,	Y =  1276.855  mm,	Z =  1683.471  mm,
	W =    93.879 deg,	P =    -5.013 deg,	R =   108.562 deg
};
P[30]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1089.874  mm,	Y =   547.514  mm,	Z =  1788.734  mm,
	W =    50.812 deg,	P =   -10.393 deg,	R =    15.708 deg
};
P[33]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1309.776  mm,	Y =  -202.443  mm,	Z =  1212.790  mm,
	W =    51.504 deg,	P =    -5.664 deg,	R =   -10.650 deg
};
P[34]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1309.693  mm,	Y =  -844.413  mm,	Z =   656.470  mm,
	W =    42.324 deg,	P =    14.959 deg,	R =   -36.839 deg
};
P[35]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   792.156  mm,	Y = -1273.337  mm,	Z =   370.486  mm,
	W =     8.952 deg,	P =    19.540 deg,	R =   -67.393 deg
};
P[36]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 1, 0',
	X =    15.052  mm,	Y = -1399.075  mm,	Z =   212.759  mm,
	W =    -5.829 deg,	P =    23.827 deg,	R =   -87.702 deg
};
P[37]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 1, 0',
	X =   138.708  mm,	Y = -1491.851  mm,	Z =   644.828  mm,
	W =    -3.497 deg,	P =      .705 deg,	R =   -88.443 deg
};
/END
