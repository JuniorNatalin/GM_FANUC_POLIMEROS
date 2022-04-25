/PROG  PRT03DROP2
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "ROBOT DROP 335";
PROG_SIZE	= 2053;
CREATE		= DATE 18-11-21  TIME 05:27:40;
MODIFIED	= DATE 19-02-17  TIME 18:18:06;
FILE_NAME	= PRT12DRO;
VERSION		= 0;
LINE_COUNT	= 69;
MEMORY_SIZE	= 2405;
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
   1:  !******************************** ;
   2:  !DROPOFF PART TO CONVEYOR ;
   3:  !******************************** ;
   4:   ;
   5:  !ASSIGN PATH SEGEMENT VALUES ;
   6:  SET SEGMENT(35) ;
   7:   ;
   8:  !******IMPORTANT************ ;
   9:  !for MH tool changers ;
  10:  !make sure Set MH TOOL(AR) ;
  11:  !matches tool number ;
  12:  Set MH Tool(3) ;
  13:   ;
  14:  R[221]=2    ;
  15:  PAYLOAD[R[221]] ;
  16:   ;
  17:  UTOOL_NUM=3 ;
  18:  UFRAME_NUM=0 ;
  19:   ;
  20:J P[1:POS COMUM] 100% CNT100    ;
  21:   ;
  22:  !INTERZONE COM R02 FLAME ;
  23:  ENTER I-ZONE(1) ;
  24:   ;
  25:  !INTERZONE COM R02 DROP ESTEIRA ;
  26:  ENTER I-ZONE(2) ;
  27:   ;
  28:J P[2] 100% CNT50    ;
  29:   ;
  30:J P[3] 100% CNT100    ;
  31:J P[4] 100% CNT100    ;
  32:   ;
  33:  !DROP POSITION PARA 010R02 ;
  34:L P[5:DROP_POSITION ] 2000mm/sec FINE    ;
  35:   ;
  36:  EXIT I-ZONE(1) ;
  37:   ;
  38:  !ROBOT WAITING R02 ;
  39:  REQUEST CONTINUE    ;
  40:   ;
  41:  !Robot Leavig The Drop Pos ;
  42:  SET SEGMENT(36) ;
  43:   ;
  44:  VACUUM CAN 1 OFF(6,7) ;
  45:   ;
  46:  R[221]=1    ;
  47:  PAYLOAD[R[221]] ;
  48:   ;
  49:  !CHECK PART IN EOAT ;
  50:  CHK PART PRESENT(0) ;
  51:   ;
  52:L P[6] 150mm/sec CNT10    ;
  53:L P[7] 1500mm/sec CNT50    ;
  54:   ;
  55:L P[8] 2000mm/sec CNT50    ;
  56:L P[9] 2000mm/sec FINE    ;
  57:   ;
  58:  !verify no part in tool ;
  59:  REQUEST CONTINUE    ;
  60:   ;
  61:  EXIT I-ZONE(1) ;
  62:  EXIT I-ZONE(2) ;
  63:   ;
  64:  !Robot clear of Robot R02 ;
  65:  SET SEGMENT(34) ;
  66:   ;
  67:  !Robot clear of all ;
  68:  SET SEGMENT(63) ;
  69:   ;
/POS
P[1:"POS COMUM"]{
   GP1:
	UF : 0, UT : 3,	
	J1=   -89.384 deg,	J2=  -101.620 deg,	J3=   116.830 deg,
	J4=     1.966 deg,	J5=   -92.542 deg,	J6=     1.037 deg
};
P[2]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  -959.066  mm,	Y = -2701.398  mm,	Z =   137.869  mm,
	W =   177.037 deg,	P =     4.060 deg,	R =   -88.564 deg
};
P[3]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  -949.091  mm,	Y = -2779.063  mm,	Z =  -528.735  mm,
	W =   177.002 deg,	P =     4.064 deg,	R =   -88.598 deg
};
P[4:""]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  -741.195  mm,	Y = -2325.070  mm,	Z = -1392.021  mm,
	W =  -178.080 deg,	P =    20.771 deg,	R =   -89.512 deg
};
P[5:"DROP_POSITION "]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  -768.566  mm,	Y = -2479.695  mm,	Z = -1418.482  mm,
	W =   178.841 deg,	P =      .100 deg,	R =   -89.880 deg
};
P[6]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  -768.579  mm,	Y = -2479.647  mm,	Z = -1310.519  mm,
	W =   178.841 deg,	P =      .101 deg,	R =   -89.880 deg
};
P[7]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  -768.578  mm,	Y = -2366.849  mm,	Z = -1310.519  mm,
	W =   178.862 deg,	P =    10.223 deg,	R =   -89.879 deg
};
P[8]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  -768.577  mm,	Y = -2366.849  mm,	Z =  -672.120  mm,
	W =   178.892 deg,	P =    23.300 deg,	R =   -89.870 deg
};
P[9]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  -768.577  mm,	Y = -2366.849  mm,	Z =   295.080  mm,
	W =   178.892 deg,	P =    23.300 deg,	R =   -89.870 deg
};
/END
