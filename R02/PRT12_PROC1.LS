/PROG  PRT12_PROC1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "332";
PROG_SIZE	= 1596;
CREATE		= DATE 18-11-16  TIME 14:55:46;
MODIFIED	= DATE 19-02-16  TIME 19:23:08;
FILE_NAME	= PRT17_PR;
VERSION		= 0;
LINE_COUNT	= 35;
MEMORY_SIZE	= 2088;
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
/MN
   1:  ENTER I-ZONE(1) ;
   2:  ENTER I-ZONE(2) ;
   3:   ;
   4:  IF DO[66]=ON,JMP LBL[900] ;
   5:  SET SEGMENT(22) ;
   6:   ;
   7:  UTOOL_NUM=2 ;
   8:  UFRAME_NUM=0 ;
   9:  PAYLOAD[3] ;
  10:   ;
  11:J P[1] 70% CNT100    ;
  12:   ;
  13:J P[2] 80% CNT50    ;
  14:J P[3] 90% CNT50    ;
  15:J P[4] 100% CNT50    ;
  16:   ;
  17:J P[5] 100% CNT50    ;
  18:L P[6] 2000mm/sec CNT50    ;
  19:L P[7] 2000mm/sec CNT50    ;
  20:L P[8] 2000mm/sec CNT50    ;
  21:L P[9] 2000mm/sec CNT100    ;
  22:L P[10] 2000mm/sec CNT50    ;
  23:   ;
  24:   ;
  25:   ;
  26:L P[11] 2000mm/sec CNT50    ;
  27:L P[12] 2000mm/sec CNT50    ;
  28:L P[13] 2000mm/sec CNT50    ;
  29:L P[14] 1500mm/sec CNT50    ;
  30:L P[15] 1000mm/sec CNT50    ;
  31:   ;
  32:J P[16] 80% CNT100    ;
  33:   ;
  34:  LBL[900:PROGRAM END] ;
  35:  END ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   789.792  mm,	Y =   252.325  mm,	Z =  1692.901  mm,
	W =  -132.556 deg,	P =   -15.552 deg,	R =    -2.013 deg
};
P[2]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   874.935  mm,	Y =   741.424  mm,	Z =  1697.619  mm,
	W =  -134.111 deg,	P =   -14.232 deg,	R =   -12.981 deg
};
P[3]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   849.419  mm,	Y =   686.972  mm,	Z =  1442.939  mm,
	W =  -146.515 deg,	P =   -14.766 deg,	R =    -8.652 deg
};
P[4]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   865.119  mm,	Y =   658.798  mm,	Z =  1396.221  mm,
	W =  -163.238 deg,	P =   -14.766 deg,	R =    -8.652 deg
};
P[5]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   857.068  mm,	Y =   550.773  mm,	Z =  1364.765  mm,
	W =   178.541 deg,	P =   -14.766 deg,	R =    -8.652 deg
};
P[6]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   818.307  mm,	Y =   306.707  mm,	Z =  1370.851  mm,
	W =   178.541 deg,	P =   -14.766 deg,	R =    -8.652 deg
};
P[7]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   803.819  mm,	Y =   215.478  mm,	Z =  1373.126  mm,
	W =   178.541 deg,	P =   -14.766 deg,	R =    -8.652 deg
};
P[8]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1234.085  mm,	Y =   -38.488  mm,	Z =  1317.964  mm,
	W =  -173.093 deg,	P =    -8.943 deg,	R =    14.620 deg
};
P[9]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1175.479  mm,	Y =   -89.580  mm,	Z =  1297.109  mm,
	W =  -164.232 deg,	P =    -8.943 deg,	R =    14.620 deg
};
P[10]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1462.515  mm,	Y =   -51.771  mm,	Z =   751.526  mm,
	W =  -128.491 deg,	P =   -12.813 deg,	R =    27.265 deg
};
P[11]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   818.307  mm,	Y =   306.707  mm,	Z =  1370.851  mm,
	W =   178.541 deg,	P =   -14.766 deg,	R =    -8.652 deg
};
P[12]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   857.068  mm,	Y =   550.773  mm,	Z =  1364.765  mm,
	W =   178.541 deg,	P =   -14.766 deg,	R =    -8.652 deg
};
P[13]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   865.119  mm,	Y =   658.798  mm,	Z =  1396.221  mm,
	W =  -163.238 deg,	P =   -14.766 deg,	R =    -8.652 deg
};
P[14]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   849.419  mm,	Y =   686.972  mm,	Z =  1442.940  mm,
	W =  -146.515 deg,	P =   -14.766 deg,	R =    -8.652 deg
};
P[15]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   874.935  mm,	Y =   741.424  mm,	Z =  1697.619  mm,
	W =  -134.111 deg,	P =   -14.232 deg,	R =   -12.981 deg
};
P[16]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   789.792  mm,	Y =   252.325  mm,	Z =  1692.901  mm,
	W =  -132.556 deg,	P =   -15.552 deg,	R =    -2.013 deg
};
/END
