/PROG  PRT03_PROC1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "335";
PROG_SIZE	= 2394;
CREATE		= DATE 18-11-18  TIME 10:11:42;
MODIFIED	= DATE 19-02-17  TIME 19:54:12;
FILE_NAME	= PRT12_PR;
VERSION		= 0;
LINE_COUNT	= 49;
MEMORY_SIZE	= 2830;
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
  13:J P[2] 90% CNT50    ;
  14:L P[3] 2000mm/sec CNT50    ;
  15:L P[4] 2000mm/sec CNT100    ;
  16:L P[5] 2000mm/sec CNT50    ;
  17:L P[6] 3000mm/sec CNT50    ;
  18:L P[7] 3000mm/sec CNT50    ;
  19:   ;
  20:L P[8] 3000mm/sec CNT50    ;
  21:L P[9] 2000mm/sec CNT50    ;
  22:L P[10] 2000mm/sec CNT50    ;
  23:L P[11] 2000mm/sec CNT50    ;
  24:L P[12] 1500mm/sec CNT100    ;
  25:L P[13] 1000mm/sec CNT50    ;
  26:   ;
  27:L P[14] 1000mm/sec CNT50    ;
  28:L P[15] 2000mm/sec CNT50    ;
  29:J P[16] 66% CNT50    ;
  30:J P[17] 100% CNT50    ;
  31:J P[18] 66% CNT50    ;
  32:L P[19] 2000mm/sec CNT50    ;
  33:   ;
  34:L P[20] 3000mm/sec CNT100    ;
  35:   ;
  36:L P[21] 2000mm/sec CNT50    ;
  37:L P[22] 2000mm/sec CNT50    ;
  38:L P[23] 2000mm/sec CNT50    ;
  39:L P[24] 2000mm/sec CNT50    ;
  40:L P[25] 2000mm/sec CNT50    ;
  41:L P[26] 2000mm/sec CNT50    ;
  42:L P[27] 2000mm/sec CNT50    ;
  43:L P[28] 1500mm/sec CNT50    ;
  44:L P[29] 1000mm/sec CNT50    ;
  45:   ;
  46:J P[30] 100% CNT100    ;
  47:   ;
  48:  LBL[900:PROGRAM END] ;
  49:  END ;
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
	X =   752.319  mm,	Y =   968.398  mm,	Z =  1938.619  mm,
	W =  -163.238 deg,	P =   -14.766 deg,	R =    -8.652 deg
};
P[3]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   925.118  mm,	Y =   968.398  mm,	Z =  1893.019  mm,
	W =  -157.140 deg,	P =   -13.786 deg,	R =   -10.157 deg
};
P[4]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   937.118  mm,	Y =   889.198  mm,	Z =  1758.619  mm,
	W =  -154.867 deg,	P =   -13.380 deg,	R =   -10.691 deg
};
P[5]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   833.918  mm,	Y =   968.398  mm,	Z =  1674.618  mm,
	W =  -163.239 deg,	P =   -14.766 deg,	R =    -3.161 deg
};
P[6]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   886.718  mm,	Y =   872.397  mm,	Z =  1396.221  mm,
	W =  -163.238 deg,	P =   -14.766 deg,	R =    -8.652 deg
};
P[7]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   981.867  mm,	Y =   889.173  mm,	Z =  1218.365  mm,
	W =   178.541 deg,	P =   -14.764 deg,	R =     1.332 deg
};
P[8]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   981.867  mm,	Y =   550.773  mm,	Z =  1218.365  mm,
	W =   178.541 deg,	P =   -14.764 deg,	R =     1.332 deg
};
P[9]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1015.576  mm,	Y =   -50.688  mm,	Z =  1150.311  mm,
	W =  -160.385 deg,	P =     2.042 deg,	R =     3.486 deg
};
P[10]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1010.311  mm,	Y =  -100.853  mm,	Z =  1289.780  mm,
	W =  -164.327 deg,	P =    -7.988 deg,	R =     5.574 deg
};
P[11]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1013.447  mm,	Y =  -200.335  mm,	Z =  1321.809  mm,
	W =  -166.164 deg,	P =    -8.235 deg,	R =     4.475 deg
};
P[12]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1026.372  mm,	Y =  -313.861  mm,	Z =  1293.977  mm,
	W =  -163.253 deg,	P =    -8.235 deg,	R =     4.475 deg
};
P[13]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1038.544  mm,	Y =  -436.718  mm,	Z =  1434.672  mm,
	W =  -165.987 deg,	P =   -20.181 deg,	R =     1.840 deg
};
P[14]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   875.008  mm,	Y =  -526.378  mm,	Z =  1480.241  mm,
	W =  -165.987 deg,	P =   -20.181 deg,	R =     1.840 deg
};
P[15]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   916.404  mm,	Y =  -435.875  mm,	Z =  1558.133  mm,
	W =  -178.199 deg,	P =   -24.637 deg,	R =    17.376 deg
};
P[16]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1177.575  mm,	Y =  -235.736  mm,	Z =  1304.249  mm,
	W =  -168.649 deg,	P =   -18.776 deg,	R =    26.191 deg
};
P[17]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1177.576  mm,	Y =   -14.936  mm,	Z =  1431.449  mm,
	W =  -177.776 deg,	P =    -6.616 deg,	R =    27.917 deg
};
P[18]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1052.775  mm,	Y =   -14.936  mm,	Z =  1431.449  mm,
	W =  -177.776 deg,	P =    -6.616 deg,	R =    27.917 deg
};
P[19]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1052.775  mm,	Y =    89.464  mm,	Z =  1431.449  mm,
	W =  -177.776 deg,	P =    -6.616 deg,	R =    27.917 deg
};
P[20]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1165.576  mm,	Y =    89.464  mm,	Z =  1316.249  mm,
	W =  -177.776 deg,	P =    -6.616 deg,	R =    27.917 deg
};
P[21]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   991.574  mm,	Y =   315.063  mm,	Z =  1316.249  mm,
	W =  -177.776 deg,	P =    -6.616 deg,	R =    15.312 deg
};
P[22]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   914.903  mm,	Y =   496.611  mm,	Z =  1308.757  mm,
	W =  -176.903 deg,	P =    -6.256 deg,	R =     7.534 deg
};
P[23]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   875.490  mm,	Y =   735.051  mm,	Z =  1309.894  mm,
	W =  -176.903 deg,	P =    -6.256 deg,	R =     7.534 deg
};
P[24]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   815.121  mm,	Y =   841.879  mm,	Z =  1315.694  mm,
	W =  -176.903 deg,	P =    -6.257 deg,	R =     7.534 deg
};
P[25]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   773.041  mm,	Y =   893.284  mm,	Z =  1417.714  mm,
	W =  -176.903 deg,	P =    -6.256 deg,	R =     7.534 deg
};
P[26]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   647.690  mm,	Y =   876.707  mm,	Z =  1403.854  mm,
	W =  -176.903 deg,	P =    -6.256 deg,	R =     7.533 deg
};
P[27]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   704.778  mm,	Y =   905.248  mm,	Z =  1625.987  mm,
	W =  -158.923 deg,	P =    -7.502 deg,	R =     7.465 deg
};
P[28]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   676.848  mm,	Y =   862.137  mm,	Z =  1878.796  mm,
	W =  -158.923 deg,	P =    -7.502 deg,	R =     7.466 deg
};
P[29]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   769.704  mm,	Y =   893.493  mm,	Z =  2040.242  mm,
	W =  -158.923 deg,	P =    -7.503 deg,	R =     7.465 deg
};
P[30]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   789.792  mm,	Y =   252.325  mm,	Z =  1692.901  mm,
	W =  -132.556 deg,	P =   -15.552 deg,	R =    -2.013 deg
};
/END
