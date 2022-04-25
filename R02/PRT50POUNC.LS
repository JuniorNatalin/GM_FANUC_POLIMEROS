/PROG  PRT50POUNC
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "s18pounc";
PROG_SIZE	= 1106;
CREATE		= DATE 22-03-12  TIME 09:13:44;
MODIFIED	= DATE 22-04-16  TIME 09:14:06;
FILE_NAME	= PRT46POU;
VERSION		= 0;
LINE_COUNT	= 22;
MEMORY_SIZE	= 1390;
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
   1:  !******************************** ;
   2:  !GENERAL MOTORS ;
   3:  !ROBOT: KM3200_M01_R02 ;
   4:  !STYLE: 18 ;
   5:  !ASSEMBLY: REAR_FASCIA_UPPER ;
   6:  !******************************** ;
   7:  !PROCESS SIMULATE: v15.1 ;
   8:  !TEACH: Fanuc RJ v2.72 ;
   9:  !XML  : v8.3_R30iB_GM_global4 ;
  10:  !STUDY: JCCC1_FRONT_FASCIA_UPPER ;
  11:  !USER : HZFLTF ;
  12:  !DATE : 2021-11-04 ;
  13:  !******************************** ;
  14:  !PATH SEGMENT - MOVE TO POUNCE ;
  15:  SET SEGMENT(1) ;
  16:  PAYLOAD[1] ;
  17:  UFRAME_NUM=0 ;
  18:  UTOOL_NUM=1 ;
  19:J P[1] 100% CNT100    ;
  20:J P[3] 100% FINE    ;
  21:  AT POUNCE    ;
  22:   ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,	
	J1=   102.905 deg,	J2=   -57.598 deg,	J3=    33.508 deg,
	J4=    10.655 deg,	J5=   -78.711 deg,	J6=   -85.634 deg
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -29.411  mm,	Y =  1124.671  mm,	Z =  1597.558  mm,
	W =  -128.794 deg,	P =   -11.278 deg,	R =   -24.098 deg
};
/END
