/PROG  PRT41PROC1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "375";
PROG_SIZE	= 3450;
CREATE		= DATE 21-02-22  TIME 15:58:16;
MODIFIED	= DATE 21-05-19  TIME 08:09:36;
FILE_NAME	= PRT41PRO;
VERSION		= 0;
LINE_COUNT	= 62;
MEMORY_SIZE	= 3834;
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
  11:J P[61] 100% CNT100    ;
  12:J P[3] 100% CNT100    ;
  13:   ;
  14:  !DEFLASH 1 ;
  15:L P[7] 2000mm/sec CNT60    ;
  16:L P[8] 2000mm/sec CNT60    ;
  17:L P[43] 2000mm/sec CNT70    ;
  18:L P[42] 2000mm/sec CNT70    ;
  19:L P[40] 2000mm/sec CNT70    ;
  20:L P[44] 2000mm/sec CNT70    ;
  21:L P[46] 2000mm/sec CNT70    ;
  22:L P[45] 2000mm/sec CNT60    ;
  23:L P[4] 2000mm/sec CNT60    ;
  24:   ;
  25:J P[68] 100% CNT100    ;
  26:J P[52] 100% CNT100    ;
  27:J P[14] 100% CNT100    ;
  28:J P[53] 100% CNT100    ;
  29:J P[10] 100% CNT100    ;
  30:   ;
  31:L P[60] 2000mm/sec CNT60    ;
  32:L P[59] 2000mm/sec CNT60    ;
  33:L P[58] 2000mm/sec CNT70    ;
  34:L P[57] 2000mm/sec CNT70    ;
  35:L P[56] 2000mm/sec CNT70    ;
  36:L P[55] 2000mm/sec CNT60    ;
  37:L P[54] 2000mm/sec CNT60    ;
  38:   ;
  39:J P[41] 100% CNT100    ;
  40:J P[6] 100% CNT100    ;
  41:   ;
  42:L P[38] 2000mm/sec CNT60    ;
  43:L P[1] 2000mm/sec CNT60    ;
  44:L P[2] 2000mm/sec CNT70    ;
  45:L P[63] 2000mm/sec CNT70    ;
  46:L P[64] 2000mm/sec CNT70    ;
  47:L P[47] 2000mm/sec CNT70    ;
  48:L P[48] 2000mm/sec CNT70    ;
  49:L P[49] 2000mm/sec CNT70    ;
  50:L P[39] 2000mm/sec CNT70    ;
  51:L P[50] 2000mm/sec CNT50    ;
  52:L P[5] 2000mm/sec CNT70    ;
  53:L P[51] 2000mm/sec CNT70    ;
  54:L P[26] 2000mm/sec CNT70    ;
  55:L P[9] 2000mm/sec CNT70    ;
  56:L P[36] 2000mm/sec CNT70    ;
  57:L P[11] 2000mm/sec CNT70    ;
  58:L P[12] 2000mm/sec CNT60    ;
  59:L P[13] 2000mm/sec CNT60    ;
  60:   ;
  61:J P[66] 100% CNT100    ;
  62:  LBL[900:PROGRAM END] ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 1, 0',
	X =   291.493  mm,	Y =   687.576  mm,	Z =  1481.677  mm,
	W =  -161.685 deg,	P =    43.807 deg,	R =   -98.058 deg
};
P[2]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   666.147  mm,	Y =   506.859  mm,	Z =  1436.297  mm,
	W =  -142.766 deg,	P =    -2.909 deg,	R =   -34.746 deg
};
P[3]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1271.677  mm,	Y =  -351.819  mm,	Z =   876.329  mm,
	W =  -113.791 deg,	P =   -10.527 deg,	R =   -23.193 deg
};
P[4]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1403.915  mm,	Y =     7.401  mm,	Z =   901.527  mm,
	W =  -138.116 deg,	P =   -25.862 deg,	R =     5.046 deg
};
P[5]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1188.782  mm,	Y =   314.793  mm,	Z =  1408.639  mm,
	W =  -119.266 deg,	P =    -1.649 deg,	R =   -34.866 deg
};
P[6]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 1, 0',
	X =   278.167  mm,	Y =   694.631  mm,	Z =  1475.551  mm,
	W =  -163.971 deg,	P =    45.340 deg,	R =  -101.479 deg
};
P[7]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1361.310  mm,	Y =  -348.096  mm,	Z =   658.528  mm,
	W =  -108.356 deg,	P =    -6.317 deg,	R =   -21.940 deg
};
P[8]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1393.349  mm,	Y =     5.348  mm,	Z =   650.298  mm,
	W =   -96.997 deg,	P =    -2.906 deg,	R =   -22.564 deg
};
P[9]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1202.120  mm,	Y =   296.417  mm,	Z =  1553.424  mm,
	W =  -146.117 deg,	P =   -13.668 deg,	R =   -27.976 deg
};
P[10]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 1, 0',
	X =   575.851  mm,	Y =   491.924  mm,	Z =  1239.345  mm,
	W =  -159.143 deg,	P =    22.011 deg,	R =   -77.688 deg
};
P[11]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1494.106  mm,	Y =    43.794  mm,	Z =  1325.389  mm,
	W =  -131.135 deg,	P =     6.773 deg,	R =   -24.090 deg
};
P[12]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1645.956  mm,	Y =   155.216  mm,	Z =  1709.410  mm,
	W =  -154.437 deg,	P =     6.367 deg,	R =   -27.801 deg
};
P[13]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1177.587  mm,	Y =    98.456  mm,	Z =  1709.410  mm,
	W =  -148.001 deg,	P =    -5.880 deg,	R =   -27.773 deg
};
P[14]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   713.734  mm,	Y =   325.905  mm,	Z =  1173.620  mm,
	W =  -149.411 deg,	P =    15.174 deg,	R =   -60.928 deg
};
P[26]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1142.000  mm,	Y =   307.217  mm,	Z =  1487.184  mm,
	W =  -146.117 deg,	P =   -13.668 deg,	R =   -27.976 deg
};
P[36]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1317.321  mm,	Y =   212.418  mm,	Z =  1565.423  mm,
	W =  -146.117 deg,	P =   -13.668 deg,	R =   -27.976 deg
};
P[38]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 1, 0',
	X =   290.887  mm,	Y =   687.436  mm,	Z =  1482.028  mm,
	W =  -161.744 deg,	P =    43.861 deg,	R =   -98.156 deg
};
P[39]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   893.186  mm,	Y =   497.738  mm,	Z =  1360.218  mm,
	W =  -146.179 deg,	P =   -19.606 deg,	R =   -35.355 deg
};
P[40]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1351.518  mm,	Y =    91.018  mm,	Z =   732.803  mm,
	W =  -106.356 deg,	P =    -4.097 deg,	R =    -7.833 deg
};
P[41]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 1, 0',
	X =   278.578  mm,	Y =   693.945  mm,	Z =  1475.195  mm,
	W =  -163.820 deg,	P =    45.292 deg,	R =  -101.268 deg
};
P[42]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1396.810  mm,	Y =    60.425  mm,	Z =   658.117  mm,
	W =   -99.449 deg,	P =    -3.239 deg,	R =   -15.517 deg
};
P[43]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1396.810  mm,	Y =    60.425  mm,	Z =   658.117  mm,
	W =   -99.449 deg,	P =    -3.239 deg,	R =   -15.517 deg
};
P[44]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1343.820  mm,	Y =   122.128  mm,	Z =   716.538  mm,
	W =  -111.676 deg,	P =    -6.874 deg,	R =   -12.266 deg
};
P[45]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1329.783  mm,	Y =    10.722  mm,	Z =   671.739  mm,
	W =  -133.301 deg,	P =    -3.319 deg,	R =    -4.103 deg
};
P[46]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1344.233  mm,	Y =    49.997  mm,	Z =   701.278  mm,
	W =  -128.975 deg,	P =    -6.321 deg,	R =    -8.461 deg
};
P[47]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   855.506  mm,	Y =   559.898  mm,	Z =  1312.698  mm,
	W =  -146.179 deg,	P =   -19.606 deg,	R =   -35.355 deg
};
P[48]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   876.663  mm,	Y =   616.120  mm,	Z =  1361.897  mm,
	W =  -146.179 deg,	P =   -19.606 deg,	R =   -35.355 deg
};
P[49]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1085.960  mm,	Y =   783.234  mm,	Z =  1493.918  mm,
	W =  -148.541 deg,	P =   -17.274 deg,	R =   -33.396 deg
};
P[50]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1152.337  mm,	Y =   441.786  mm,	Z =  1507.274  mm,
	W =  -119.266 deg,	P =    -1.649 deg,	R =   -34.865 deg
};
P[51]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1117.223  mm,	Y =   227.297  mm,	Z =  1271.059  mm,
	W =  -119.266 deg,	P =    -1.649 deg,	R =   -34.866 deg
};
P[52]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1002.605  mm,	Y =    57.394  mm,	Z =  1038.287  mm,
	W =  -145.137 deg,	P =    11.625 deg,	R =   -36.082 deg
};
P[53]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   556.444  mm,	Y =   472.553  mm,	Z =  1245.539  mm,
	W =  -143.387 deg,	P =    15.601 deg,	R =   -72.547 deg
};
P[54]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 1, 0',
	X =   279.544  mm,	Y =   692.348  mm,	Z =  1474.370  mm,
	W =  -163.470 deg,	P =    45.181 deg,	R =  -100.776 deg
};
P[55]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   303.160  mm,	Y =   696.115  mm,	Z =  1460.327  mm,
	W =  -163.752 deg,	P =    45.302 deg,	R =  -101.183 deg
};
P[56]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   433.351  mm,	Y =   721.076  mm,	Z =  1409.817  mm,
	W =  -163.752 deg,	P =    45.302 deg,	R =  -101.183 deg
};
P[57]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   453.511  mm,	Y =   721.076  mm,	Z =  1357.018  mm,
	W =  -163.752 deg,	P =    45.302 deg,	R =  -101.183 deg
};
P[58]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   481.352  mm,	Y =   721.076  mm,	Z =  1242.780  mm,
	W =  -163.752 deg,	P =    45.302 deg,	R =  -101.183 deg
};
P[59]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 1, 0',
	X =   484.114  mm,	Y =   626.660  mm,	Z =  1208.643  mm,
	W =  -161.672 deg,	P =    23.190 deg,	R =   -89.961 deg
};
P[60]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 1, 0',
	X =   483.081  mm,	Y =   625.490  mm,	Z =  1209.239  mm,
	W =  -161.765 deg,	P =    23.101 deg,	R =   -89.973 deg
};
P[61]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   927.760  mm,	Y =  -371.257  mm,	Z =  1599.953  mm,
	W =  -147.957 deg,	P =   -29.504 deg,	R =   -16.905 deg
};
P[63]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   760.706  mm,	Y =   567.819  mm,	Z =  1451.900  mm,
	W =  -153.067 deg,	P =    -9.882 deg,	R =   -33.594 deg
};
P[64]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   893.186  mm,	Y =   546.699  mm,	Z =  1403.900  mm,
	W =  -153.067 deg,	P =    -9.882 deg,	R =   -33.594 deg
};
P[66]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   927.760  mm,	Y =  -371.257  mm,	Z =  1599.953  mm,
	W =  -147.957 deg,	P =   -29.504 deg,	R =   -16.905 deg
};
P[68]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1238.645  mm,	Y =  -104.519  mm,	Z =   935.188  mm,
	W =  -137.670 deg,	P =    -9.578 deg,	R =    -9.912 deg
};
/END
