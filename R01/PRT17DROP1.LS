/PROG  PRT17DROP1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "ROBOT DROP 142";
PROG_SIZE	= 2055;
CREATE		= DATE 19-06-17  TIME 08:41:44;
MODIFIED	= DATE 19-06-17  TIME 08:41:44;
FILE_NAME	= PRT17DRO;
VERSION		= 0;
LINE_COUNT	= 69;
MEMORY_SIZE	= 2407;
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
  12:  Set MH Tool(7) ;
  13:   ;
  14:  R[221]=2    ;
  15:  PAYLOAD[R[221]] ;
  16:   ;
  17:  UTOOL_NUM=7 ;
  18:  UFRAME_NUM=0 ;
  19:   ;
  20:J P[1:POS COMUM] 100% FINE    ;
  21:   ;
  22:  !INTERZONE COM R02 FLAME ;
  23:  ENTER I-ZONE(1) ;
  24:   ;
  25:  !INTERZONE COM R02 DROP ESTEIRA ;
  26:  ENTER I-ZONE(2) ;
  27:   ;
  28:J P[2] 100% CNT50    ;
  29:   ;
  30:J P[3] 50% CNT50    ;
  31:J P[4] 100% CNT50    ;
  32:   ;
  33:  !DROP POSITION PARA 010R02 ;
  34:L P[5:DROP_POSITION ] 800mm/sec FINE    ;
  35:   ;
  36:  EXIT I-ZONE(1) ;
  37:   ;
  38:  !ROBOT WAITING R02 ;
  39:  REQUEST CONTINUE    ;
  40:   ;
  41:  !Robot Leavig The Drop Pos ;
  42:  SET SEGMENT(36) ;
  43:   ;
  44:  Turn OFF Vacuum(6,7) ;
  45:   ;
  46:  R[221]=1    ;
  47:  PAYLOAD[R[221]] ;
  48:   ;
  49:  !CHECK PART IN EOAT ;
  50:  CHK PART PRESENT(0) ;
  51:   ;
  52:L P[6] 150mm/sec CNT10    ;
  53:L P[7] 200mm/sec CNT50    ;
  54:   ;
  55:L P[8] 300mm/sec CNT50    ;
  56:   ;
  57:J P[11:POS COMUM] 100% FINE    ;
  58:   ;
  59:  !verify no part in tool ;
  60:  REQUEST CONTINUE    ;
  61:   ;
  62:  EXIT I-ZONE(1) ;
  63:  EXIT I-ZONE(2) ;
  64:   ;
  65:  !Robot clear of Robot R02 ;
  66:   ;
  67:  !Robot clear of all ;
  68:  SET SEGMENT(63) ;
  69:   ;
/POS
P[1:"POS COMUM"]{
   GP1:
	UF : 0, UT : 7,	
	J1=   -78.957 deg,	J2=  -103.572 deg,	J3=   105.815 deg,
	J4=     4.234 deg,	J5=   -75.306 deg,	J6=   -11.576 deg
};
P[2]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =   233.464  mm,	Y = -2136.789  mm,	Z =   396.117  mm,
	W =  -172.870 deg,	P =    22.656 deg,	R =   -86.282 deg
};
P[3]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =   233.464  mm,	Y = -2057.590  mm,	Z =  -110.283  mm,
	W =  -172.870 deg,	P =    22.656 deg,	R =   -86.282 deg
};
P[4:""]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =   233.464  mm,	Y = -2057.590  mm,	Z =  -746.284  mm,
	W =  -172.870 deg,	P =    22.656 deg,	R =   -86.282 deg
};
P[5:"DROP_POSITION "]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =   251.367  mm,	Y = -2072.714  mm,	Z =  -878.151  mm,
	W =  -175.835 deg,	P =      .419 deg,	R =   -89.134 deg
};
P[6]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =   227.442  mm,	Y = -2074.520  mm,	Z =  -685.208  mm,
	W =  -172.909 deg,	P =      .418 deg,	R =   -89.132 deg
};
P[7]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =   233.463  mm,	Y = -2057.590  mm,	Z =  -746.284  mm,
	W =  -172.870 deg,	P =    22.656 deg,	R =   -86.282 deg
};
P[8]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =   233.464  mm,	Y = -2057.590  mm,	Z =  -110.283  mm,
	W =  -172.870 deg,	P =    22.656 deg,	R =   -86.282 deg
};
P[11:"POS COMUM"]{
   GP1:
	UF : 0, UT : 7,		CONFIG : 'N U T, 0, 0, 0',
	X =   663.375  mm,	Y = -2475.173  mm,	Z =  1063.053  mm,
	W =  -175.130 deg,	P =     -.498 deg,	R =   -86.320 deg
};
/END
