/PROG  PRT07PROC1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "311";
PROG_SIZE	= 6793;
CREATE		= DATE 19-06-15  TIME 11:11:44;
MODIFIED	= DATE 19-06-15  TIME 11:11:44;
FILE_NAME	= PRT07PRO;
VERSION		= 0;
LINE_COUNT	= 127;
MEMORY_SIZE	= 7173;
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
   1:  EXIT I-ZONE(1) ;
   2:  EXIT I-ZONE(2) ;
   3:   ;
   4:  IF DO[66]=ON,JMP LBL[900] ;
   5:  SET SEGMENT(22) ;
   6:   ;
   7:  UTOOL_NUM=2 ;
   8:  UFRAME_NUM=0 ;
   9:  PAYLOAD[3] ;
  10:   ;
  11:J P[61] 70% CNT100    ;
  12:J P[3] 90% CNT100    ;
  13:   ;
  14:  !DEFLASH 1 ;
  15:L P[1] 1000mm/sec CNT50    ;
  16:L P[2] 1500mm/sec CNT50    ;
  17:L P[62] 2000mm/sec CNT50    ;
  18:L P[63] 2000mm/sec CNT50    ;
  19:L P[64] 2000mm/sec CNT50    ;
  20:L P[4] 2000mm/sec CNT50    ;
  21:L P[6] 2000mm/sec CNT50    ;
  22:L P[7] 2000mm/sec CNT50    ;
  23:L P[8] 2000mm/sec CNT50    ;
  24:L P[9] 2000mm/sec CNT50    ;
  25:L P[10] 2000mm/sec CNT50    ;
  26:L P[11] 2000mm/sec CNT50    ;
  27:L P[12] 2000mm/sec CNT50    ;
  28:L P[13] 2000mm/sec CNT50    ;
  29:L P[14] 2000mm/sec CNT50    ;
  30:L P[15] 2000mm/sec CNT50    ;
  31:L P[16] 2000mm/sec CNT50    ;
  32:L P[5] 2000mm/sec CNT50    ;
  33:L P[17] 2000mm/sec CNT50    ;
  34:L P[65] 2000mm/sec CNT50    ;
  35:L P[18] 2000mm/sec CNT50    ;
  36:L P[19] 2000mm/sec CNT50    ;
  37:L P[20] 2000mm/sec CNT50    ;
  38:L P[21] 2000mm/sec CNT50    ;
  39:L P[22] 2000mm/sec CNT50    ;
  40:   ;
  41:L P[77] 2000mm/sec CNT50    ;
  42:L P[78] 2000mm/sec CNT50    ;
  43:L P[79] 2000mm/sec CNT50    ;
  44:L P[80] 2000mm/sec CNT50    ;
  45:L P[81] 2000mm/sec CNT50    ;
  46:L P[23] 2000mm/sec CNT50    ;
  47:L P[24] 2000mm/sec CNT50    ;
  48:L P[25] 2000mm/sec CNT50    ;
  49:L P[27] 2000mm/sec CNT50    ;
  50:L P[28] 2000mm/sec CNT50    ;
  51:L P[29] 2000mm/sec CNT50    ;
  52:L P[30] 2000mm/sec CNT50    ;
  53:L P[31] 2000mm/sec CNT50    ;
  54:L P[32] 2000mm/sec CNT50    ;
  55:L P[33] 2000mm/sec CNT50    ;
  56:L P[34] 2000mm/sec CNT50    ;
  57:L P[35] 2000mm/sec CNT50    ;
  58:L P[36] 2000mm/sec CNT50    ;
  59:L P[37] 2000mm/sec CNT50    ;
  60:L P[38] 2000mm/sec CNT50    ;
  61:L P[39] 2000mm/sec CNT50    ;
  62:L P[40] 2000mm/sec CNT50    ;
  63:   ;
  64:L P[41] 2000mm/sec CNT50    ;
  65:L P[42] 2000mm/sec CNT50    ;
  66:L P[43] 2000mm/sec CNT50    ;
  67:L P[44] 2000mm/sec CNT50    ;
  68:L P[45] 2000mm/sec CNT50    ;
  69:L P[49] 2000mm/sec CNT50    ;
  70:L P[54] 2000mm/sec CNT50    ;
  71:L P[53] 2000mm/sec CNT50    ;
  72:L P[52] 2000mm/sec CNT50    ;
  73:L P[51] 2000mm/sec CNT50    ;
  74:L P[50] 2000mm/sec CNT50    ;
  75:L P[48] 2000mm/sec CNT50    ;
  76:L P[46] 2000mm/sec CNT50    ;
  77:L P[47] 2000mm/sec CNT50    ;
  78:L P[55] 2000mm/sec CNT50    ;
  79:L P[56] 2000mm/sec CNT50    ;
  80:L P[57] 2000mm/sec CNT50    ;
  81:L P[58] 2000mm/sec CNT50    ;
  82:L P[66] 2000mm/sec CNT50    ;
  83:L P[59] 2000mm/sec CNT50    ;
  84:L P[60] 2000mm/sec CNT50    ;
  85:L P[70] 2000mm/sec CNT50    ;
  86:L P[68] 2000mm/sec CNT50    ;
  87:L P[69] 2000mm/sec CNT50    ;
  88:   ;
  89:L P[71] 2000mm/sec CNT50    ;
  90:L P[72] 2000mm/sec CNT50    ;
  91:L P[84] 2000mm/sec CNT50    ;
  92:L P[83] 1800mm/sec CNT50    ;
  93:L P[82] 1800mm/sec CNT50    ;
  94:L P[75] 1800mm/sec CNT50    ;
  95:L P[74] 1800mm/sec CNT50    ;
  96:L P[73] 1800mm/sec CNT50    ;
  97:   ;
  98:L P[90] 2000mm/sec CNT100    ;
  99:L P[89] 2000mm/sec CNT100    ;
 100:L P[88] 2000mm/sec CNT100    ;
 101:L P[87] 2000mm/sec CNT100    ;
 102:L P[86] 2000mm/sec CNT100    ;
 103:L P[85] 2000mm/sec CNT100    ;
 104:   ;
 105:   ;
 106:L P[91] 2000mm/sec CNT100    ;
 107:L P[67] 2000mm/sec CNT100    ;
 108:L P[98] 2000mm/sec CNT100    ;
 109:L P[99] 2000mm/sec CNT100    ;
 110:L P[100] 2000mm/sec CNT100    ;
 111:   ;
 112:   ;
 113:   ;
 114:   ;
 115:   ;
 116:L P[92] 2000mm/sec CNT100    ;
 117:L P[93] 2000mm/sec CNT100    ;
 118:L P[94] 2000mm/sec CNT100    ;
 119:   ;
 120:L P[95] 1500mm/sec CNT50    ;
 121:L P[96] 1500mm/sec CNT50    ;
 122:L P[97] 1000mm/sec CNT50    ;
 123:   ;
 124:J P[76] 80% CNT100    ;
 125:   ;
 126:  LBL[900:PROGRAM END] ;
 127:  END ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   304.648  mm,	Y =   899.500  mm,	Z =  1704.435  mm,
	W =   148.515 deg,	P =    51.273 deg,	R =  -149.782 deg
};
P[2]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   330.020  mm,	Y =   985.854  mm,	Z =  1573.728  mm,
	W =   150.887 deg,	P =    48.142 deg,	R =  -146.968 deg
};
P[3]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   120.292  mm,	Y =   670.136  mm,	Z =  1718.821  mm,
	W =   148.515 deg,	P =    51.274 deg,	R =  -149.781 deg
};
P[4]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =    80.025  mm,	Y =   896.401  mm,	Z =  1645.131  mm,
	W =   148.515 deg,	P =    51.273 deg,	R =  -149.782 deg
};
P[5]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   593.000  mm,	Y =   929.393  mm,	Z =  1731.361  mm,
	W =   159.085 deg,	P =    52.577 deg,	R =  -144.213 deg
};
P[6]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =    68.335  mm,	Y =   816.688  mm,	Z =  1951.735  mm,
	W =   153.553 deg,	P =    42.149 deg,	R =  -141.074 deg
};
P[7]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   124.812  mm,	Y =   923.739  mm,	Z =  1957.676  mm,
	W =   148.515 deg,	P =    51.273 deg,	R =  -149.782 deg
};
P[8]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   123.692  mm,	Y =   942.969  mm,	Z =  2016.943  mm,
	W =   148.515 deg,	P =    51.273 deg,	R =  -149.782 deg
};
P[9]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   177.663  mm,	Y =  1028.851  mm,	Z =  2030.212  mm,
	W =   152.905 deg,	P =    51.839 deg,	R =  -149.210 deg
};
P[10]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   218.147  mm,	Y =  1042.652  mm,	Z =  2032.730  mm,
	W =   152.905 deg,	P =    51.839 deg,	R =  -149.210 deg
};
P[11]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   246.857  mm,	Y =  1080.523  mm,	Z =  1766.019  mm,
	W =   157.406 deg,	P =    49.328 deg,	R =  -147.195 deg
};
P[12]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   704.347  mm,	Y =  1064.549  mm,	Z =  1674.710  mm,
	W =   159.677 deg,	P =    41.744 deg,	R =  -148.266 deg
};
P[13]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   328.119  mm,	Y =  1111.423  mm,	Z =  1793.721  mm,
	W =   155.101 deg,	P =    51.838 deg,	R =  -149.211 deg
};
P[14]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   600.996  mm,	Y =   972.645  mm,	Z =  1764.486  mm,
	W =   155.100 deg,	P =    51.838 deg,	R =  -149.211 deg
};
P[15]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   628.034  mm,	Y =   989.957  mm,	Z =  1820.669  mm,
	W =   155.100 deg,	P =    51.838 deg,	R =  -149.211 deg
};
P[16]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   535.159  mm,	Y =   917.719  mm,	Z =  1751.588  mm,
	W =   154.867 deg,	P =    52.510 deg,	R =  -151.521 deg
};
P[17]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   579.166  mm,	Y =   863.592  mm,	Z =  1690.950  mm,
	W =   169.734 deg,	P =    55.426 deg,	R =  -131.063 deg
};
P[18]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   625.005  mm,	Y =   761.169  mm,	Z =  1548.703  mm,
	W =  -140.859 deg,	P =    43.726 deg,	R =   -68.996 deg
};
P[19]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   784.138  mm,	Y =   648.230  mm,	Z =  1623.464  mm,
	W =  -130.418 deg,	P =    30.176 deg,	R =   -51.829 deg
};
P[20]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   829.646  mm,	Y =   659.623  mm,	Z =  1626.811  mm,
	W =  -127.570 deg,	P =    23.185 deg,	R =   -45.505 deg
};
P[21]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   741.010  mm,	Y =   723.630  mm,	Z =  1616.249  mm,
	W =  -127.570 deg,	P =    23.185 deg,	R =   -45.505 deg
};
P[22]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   901.119  mm,	Y =   669.960  mm,	Z =  1466.199  mm,
	W =  -127.571 deg,	P =    23.184 deg,	R =   -45.506 deg
};
P[23]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   680.373  mm,	Y =   804.530  mm,	Z =  1190.512  mm,
	W =  -134.843 deg,	P =    42.143 deg,	R =   -64.492 deg
};
P[24]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   555.910  mm,	Y =   831.746  mm,	Z =  1240.478  mm,
	W =  -136.755 deg,	P =    44.127 deg,	R =   -67.287 deg
};
P[25]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   296.242  mm,	Y =   902.090  mm,	Z =  1109.920  mm,
	W =  -142.329 deg,	P =    36.418 deg,	R =   -75.881 deg
};
P[27]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   255.050  mm,	Y =   798.744  mm,	Z =  1285.435  mm,
	W =  -134.450 deg,	P =    45.793 deg,	R =   -65.659 deg
};
P[28]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   220.629  mm,	Y =   853.617  mm,	Z =  1291.101  mm,
	W =  -136.754 deg,	P =    44.127 deg,	R =   -67.287 deg
};
P[29]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   225.122  mm,	Y =   785.393  mm,	Z =  1321.495  mm,
	W =  -136.755 deg,	P =    44.127 deg,	R =   -67.287 deg
};
P[30]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   401.213  mm,	Y =   833.592  mm,	Z =  1433.300  mm,
	W =  -136.755 deg,	P =    44.127 deg,	R =   -67.287 deg
};
P[31]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   545.590  mm,	Y =   785.310  mm,	Z =  1529.860  mm,
	W =  -136.755 deg,	P =    44.127 deg,	R =   -67.287 deg
};
P[32]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   718.996  mm,	Y =   713.904  mm,	Z =  1587.259  mm,
	W =  -136.755 deg,	P =    44.127 deg,	R =   -67.288 deg
};
P[33]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   881.824  mm,	Y =   630.091  mm,	Z =  1621.345  mm,
	W =  -136.755 deg,	P =    44.127 deg,	R =   -67.287 deg
};
P[34]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   911.856  mm,	Y =   638.388  mm,	Z =  1621.888  mm,
	W =  -136.755 deg,	P =    44.127 deg,	R =   -67.287 deg
};
P[35]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   954.760  mm,	Y =   625.240  mm,	Z =  1591.154  mm,
	W =  -136.755 deg,	P =    44.127 deg,	R =   -67.288 deg
};
P[36]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   778.588  mm,	Y =   737.708  mm,	Z =  1630.621  mm,
	W =  -136.755 deg,	P =    44.127 deg,	R =   -67.288 deg
};
P[37]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   633.071  mm,	Y =   745.097  mm,	Z =  1501.104  mm,
	W =  -136.755 deg,	P =    44.127 deg,	R =   -67.287 deg
};
P[38]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   486.228  mm,	Y =   748.958  mm,	Z =  1430.615  mm,
	W =  -136.755 deg,	P =    44.127 deg,	R =   -67.287 deg
};
P[39]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   384.520  mm,	Y =   776.996  mm,	Z =  1354.161  mm,
	W =  -136.755 deg,	P =    44.127 deg,	R =   -67.287 deg
};
P[40]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   254.484  mm,	Y =   814.751  mm,	Z =  1244.279  mm,
	W =  -136.755 deg,	P =    44.127 deg,	R =   -67.288 deg
};
P[41]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   257.456  mm,	Y =   798.719  mm,	Z =  1257.100  mm,
	W =  -136.754 deg,	P =    44.127 deg,	R =   -67.287 deg
};
P[42]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   433.219  mm,	Y =   767.551  mm,	Z =  1355.783  mm,
	W =  -132.395 deg,	P =    37.416 deg,	R =   -59.105 deg
};
P[43]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   892.484  mm,	Y =   721.224  mm,	Z =  1620.079  mm,
	W =  -133.423 deg,	P =    23.139 deg,	R =   -45.569 deg
};
P[44]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   939.617  mm,	Y =   693.563  mm,	Z =  1825.963  mm,
	W =  -135.164 deg,	P =    20.592 deg,	R =   -45.404 deg
};
P[45]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   992.133  mm,	Y =   742.861  mm,	Z =  1939.585  mm,
	W =  -140.945 deg,	P =    17.703 deg,	R =   -42.043 deg
};
P[46]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1166.527  mm,	Y =   656.647  mm,	Z =  1505.784  mm,
	W =  -139.452 deg,	P =    -7.358 deg,	R =   -33.320 deg
};
P[47]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1071.671  mm,	Y =   514.329  mm,	Z =  1284.204  mm,
	W =  -139.559 deg,	P =    -6.314 deg,	R =   -32.423 deg
};
P[48]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1201.568  mm,	Y =   671.768  mm,	Z =  1682.426  mm,
	W =  -139.585 deg,	P =    -6.029 deg,	R =   -32.178 deg
};
P[49]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   997.714  mm,	Y =   852.336  mm,	Z =  2014.775  mm,
	W =  -142.934 deg,	P =    17.976 deg,	R =   -38.768 deg
};
P[50]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1223.410  mm,	Y =   725.767  mm,	Z =  1742.907  mm,
	W =  -139.653 deg,	P =     5.215 deg,	R =   -22.653 deg
};
P[51]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1232.050  mm,	Y =   773.766  mm,	Z =  1806.989  mm,
	W =  -141.227 deg,	P =    13.215 deg,	R =   -32.432 deg
};
P[52]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1219.590  mm,	Y =   731.823  mm,	Z =  1905.993  mm,
	W =  -142.934 deg,	P =    17.975 deg,	R =   -38.767 deg
};
P[53]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1148.529  mm,	Y =   786.578  mm,	Z =  1966.683  mm,
	W =  -142.934 deg,	P =    17.976 deg,	R =   -38.767 deg
};
P[54]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1100.435  mm,	Y =   786.578  mm,	Z =  2056.775  mm,
	W =  -142.934 deg,	P =    17.976 deg,	R =   -38.767 deg
};
P[55]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1015.929  mm,	Y =   451.846  mm,	Z =  1224.540  mm,
	W =  -130.005 deg,	P =     9.510 deg,	R =   -56.116 deg
};
P[56]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   974.990  mm,	Y =   484.333  mm,	Z =  1112.266  mm,
	W =  -136.294 deg,	P =    16.621 deg,	R =   -65.214 deg
};
P[57]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   823.580  mm,	Y =   492.051  mm,	Z =  1055.816  mm,
	W =  -145.348 deg,	P =    19.756 deg,	R =   -77.944 deg
};
P[58]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   723.805  mm,	Y =   481.813  mm,	Z =  1065.448  mm,
	W =  -154.240 deg,	P =    20.881 deg,	R =   -83.107 deg
};
P[59]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   518.862  mm,	Y =   696.504  mm,	Z =  1266.659  mm,
	W =   173.677 deg,	P =    19.094 deg,	R =  -116.952 deg
};
P[60]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   451.853  mm,	Y =   671.043  mm,	Z =  1311.553  mm,
	W =   173.719 deg,	P =    17.978 deg,	R =  -116.822 deg
};
P[61]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   442.639  mm,	Y =   544.423  mm,	Z =  1567.241  mm,
	W =  -130.847 deg,	P =    -6.654 deg,	R =   -20.530 deg
};
P[62]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   289.256  mm,	Y =   963.100  mm,	Z =  1524.364  mm,
	W =   150.887 deg,	P =    48.142 deg,	R =  -146.968 deg
};
P[63]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   148.426  mm,	Y =   817.812  mm,	Z =  1557.416  mm,
	W =   148.515 deg,	P =    51.273 deg,	R =  -149.782 deg
};
P[64]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =    90.105  mm,	Y =   854.291  mm,	Z =  1578.538  mm,
	W =   148.515 deg,	P =    51.273 deg,	R =  -149.782 deg
};
P[65]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   653.686  mm,	Y =   775.395  mm,	Z =  1671.612  mm,
	W =  -166.465 deg,	P =    56.857 deg,	R =  -107.431 deg
};
P[66]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   598.382  mm,	Y =   598.455  mm,	Z =  1147.969  mm,
	W =  -173.947 deg,	P =    22.174 deg,	R =  -104.173 deg
};
P[67]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   955.604  mm,	Y =   806.936  mm,	Z =  1367.275  mm,
	W =  -176.421 deg,	P =    47.818 deg,	R =  -111.041 deg
};
P[68]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   431.181  mm,	Y =  1007.127  mm,	Z =  1650.198  mm,
	W =   152.802 deg,	P =    11.792 deg,	R =  -145.445 deg
};
P[69]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   357.741  mm,	Y =   980.126  mm,	Z =  1744.520  mm,
	W =   147.835 deg,	P =    32.813 deg,	R =  -158.269 deg
};
P[70]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   438.414  mm,	Y =   873.807  mm,	Z =  1490.905  mm,
	W =   159.423 deg,	P =    16.955 deg,	R =  -136.530 deg
};
P[71]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   646.462  mm,	Y =   974.366  mm,	Z =  1744.520  mm,
	W =   147.835 deg,	P =    32.813 deg,	R =  -158.269 deg
};
P[72]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   761.406  mm,	Y =  1081.153  mm,	Z =  1486.538  mm,
	W =   147.835 deg,	P =    32.813 deg,	R =  -158.269 deg
};
P[73]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   825.769  mm,	Y =   512.560  mm,	Z =  1377.864  mm,
	W =  -119.411 deg,	P =    20.331 deg,	R =   -48.235 deg
};
P[74]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1031.574  mm,	Y =   685.764  mm,	Z =  1214.422  mm,
	W =  -130.978 deg,	P =    31.869 deg,	R =   -59.118 deg
};
P[75]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   951.017  mm,	Y =   734.837  mm,	Z =  1155.976  mm,
	W =  -150.315 deg,	P =    43.766 deg,	R =   -79.839 deg
};
P[76]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   442.639  mm,	Y =   544.423  mm,	Z =  1567.241  mm,
	W =  -130.847 deg,	P =    -6.654 deg,	R =   -20.530 deg
};
P[77]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   707.365  mm,	Y =   738.568  mm,	Z =  1562.148  mm,
	W =  -127.570 deg,	P =    23.184 deg,	R =   -45.505 deg
};
P[78]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   736.627  mm,	Y =   759.628  mm,	Z =  1387.563  mm,
	W =  -127.570 deg,	P =    23.184 deg,	R =   -45.505 deg
};
P[79]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   694.006  mm,	Y =   710.677  mm,	Z =  1131.443  mm,
	W =  -127.570 deg,	P =    23.184 deg,	R =   -45.505 deg
};
P[80]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   681.184  mm,	Y =   725.030  mm,	Z =  1357.537  mm,
	W =  -126.561 deg,	P =    28.628 deg,	R =   -50.336 deg
};
P[81]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   674.559  mm,	Y =   712.426  mm,	Z =  1309.259  mm,
	W =  -125.689 deg,	P =    36.524 deg,	R =   -57.794 deg
};
P[82]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   799.357  mm,	Y =   780.205  mm,	Z =  1077.459  mm,
	W =  -150.313 deg,	P =    43.766 deg,	R =   -79.836 deg
};
P[83]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   667.424  mm,	Y =   800.689  mm,	Z =  1034.948  mm,
	W =  -150.313 deg,	P =    43.766 deg,	R =   -79.836 deg
};
P[84]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   724.445  mm,	Y =   974.647  mm,	Z =  1324.120  mm,
	W =   160.504 deg,	P =    43.051 deg,	R =  -139.693 deg
};
P[85]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   768.704  mm,	Y =  1082.245  mm,	Z =  1464.134  mm,
	W =   147.835 deg,	P =    32.813 deg,	R =  -158.269 deg
};
P[86]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   796.141  mm,	Y =   980.776  mm,	Z =  1364.336  mm,
	W =   160.504 deg,	P =    43.051 deg,	R =  -139.693 deg
};
P[87]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   693.869  mm,	Y =   830.019  mm,	Z =  1108.694  mm,
	W =  -150.313 deg,	P =    43.766 deg,	R =   -79.836 deg
};
P[88]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   763.937  mm,	Y =   830.198  mm,	Z =  1150.881  mm,
	W =  -152.497 deg,	P =    42.889 deg,	R =   -79.640 deg
};
P[89]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   958.838  mm,	Y =   778.220  mm,	Z =  1234.399  mm,
	W =  -150.794 deg,	P =    43.625 deg,	R =   -80.168 deg
};
P[90]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   977.594  mm,	Y =   753.486  mm,	Z =  1237.536  mm,
	W =  -132.412 deg,	P =    31.816 deg,	R =   -59.804 deg
};
P[91]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   805.430  mm,	Y =  1084.602  mm,	Z =  1458.468  mm,
	W =   147.835 deg,	P =    32.813 deg,	R =  -158.269 deg
};
P[92]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   721.064  mm,	Y =   897.974  mm,	Z =  1206.266  mm,
	W =  -176.368 deg,	P =    48.565 deg,	R =  -110.970 deg
};
P[93]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   783.895  mm,	Y =   714.938  mm,	Z =  1727.452  mm,
	W =  -135.308 deg,	P =    34.921 deg,	R =   -63.413 deg
};
P[94]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   983.722  mm,	Y =   622.140  mm,	Z =  1638.221  mm,
	W =  -126.040 deg,	P =     2.201 deg,	R =   -36.227 deg
};
P[95]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1056.252  mm,	Y =   867.444  mm,	Z =  1528.351  mm,
	W =  -137.332 deg,	P =     -.975 deg,	R =   -37.620 deg
};
P[96]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1098.697  mm,	Y =   848.101  mm,	Z =  1538.885  mm,
	W =  -137.332 deg,	P =     -.975 deg,	R =   -37.620 deg
};
P[97]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   830.361  mm,	Y =   618.179  mm,	Z =  1588.183  mm,
	W =  -126.040 deg,	P =     2.201 deg,	R =   -36.227 deg
};
P[98]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   902.672  mm,	Y =   708.585  mm,	Z =  1304.997  mm,
	W =  -134.315 deg,	P =    34.230 deg,	R =   -63.258 deg
};
P[99]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   847.820  mm,	Y =   752.980  mm,	Z =  1125.973  mm,
	W =  -134.315 deg,	P =    34.230 deg,	R =   -63.258 deg
};
P[100]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1014.474  mm,	Y =   738.858  mm,	Z =  1242.960  mm,
	W =  -137.693 deg,	P =    35.415 deg,	R =   -69.346 deg
};
/END
