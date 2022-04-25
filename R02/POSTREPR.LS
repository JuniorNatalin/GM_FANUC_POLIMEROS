/PROG  POSTREPR	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "POST REPAIR V4.0";
PROG_SIZE	= 1992;
CREATE		= DATE 08-10-29  TIME 12:35:24;
MODIFIED	= DATE 01-01-13  TIME 03:15:08;
FILE_NAME	= POSTREPR;
VERSION		= 0;
LINE_COUNT	= 71;
MEMORY_SIZE	= 2556;
PROTECT		= READ_WRITE;
STORAGE		= SHADOW;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00001000 00000000;
/APPL
  SPOT : TRUE ; 
  SPOT Welding Equipment Number : 1 ;
/MN
   1:  !**************************** ;
   2:  !MACRO POST REPAIR ;
   3:  !**************************** ;
   4:  !This macro contains detailed ;
   5:  !logical changes for resume from ;
   6:  !the repair functions ;
   7:   ;
   8:  ! Reset FFR Adaptive CapChange Fl ;
   9:  F[35]=(OFF) ;
  10:  IF DO[18]=OFF,JMP LBL[99] ;
  11:   ;
  12:  !CHECK IF PROCESS1 IS SPOTWELD ;
  13:  IF $AP_SELAP[2]=0,JMP LBL[99] ;
  14:  IF $SPOTEQSETUP[1].$STUDWELDER=1,JMP LBL[99] ;
  15:   ;
  16:  !CALL TIP DRESS IF CAPS CHANGED ;
  17:  !DURING FFR ;
  18:  IF DO[89]=OFF,JMP LBL[99] ;
  19:   ;
  20:  !Determine Fanuc Servo ;
  21:  !S/W Option J665 ;
  22:  !If option exists T/C device ;
  23:  !is present, if not manual ;
  24:  !modification is required ;
  25:  CALL SGTCLOAD    ;
  26:  IF R[163]=0,JMP LBL[20] ;
  27:   ;
  28:  !Determine if Tool Changer ;
  29:  !CALL CKDNETND(54,38) ;
  30:  CALL CKENETND(54,38) ;
  31:  IF R[38]=0,JMP LBL[20] ;
  32:   ;
  33:  LBL[10:TC Tip Dress] ;
  34:  !Latched and Rbt Holding Gun ;
  35:  CALL TCGETNUM    ;
  36:  !Call TD_PROCX for the held gun ;
  37:  SELECT R[113]=1,CALL TD_PROC1 ;
  38:         =2,CALL TD_PROC2 ;
  39:         =3,CALL TD_PROC3 ;
  40:         =4,CALL TD_PROC4 ;
  41:         ELSE,JMP LBL[5] ;
  42:   ;
  43:  JMP LBL[30] ;
  44:  !*****FAULTS******** ;
  45:  LBL[5:Invalid Gun Num] ;
  46:  MESSAGE[...] ;
  47:  MESSAGE[TOOL CHANGER FAULT] ;
  48:  MESSAGE[ INVALID GUN NUMBER] ;
  49:  MESSAGE[ R[113] AND GI[15] MUST] ;
  50:  MESSAGE[ BE 1, 2, 3 OR 4] ;
  51:  DO[523]=ON ;
  52:  UALM[3] ;
  53:  DO[523]=OFF ;
  54:  JMP LBL[10] ;
  55:   ;
  56:  LBL[20:Carried Tip Dres] ;
  57:  CALL TD_PROC1    ;
  58:  !For Carried DUAL GUN ;
  59:  !CALL TD_PROC2 (Gun2) or ;
  60:  !Teach all points in TD_PROC1 ;
  61:  !and call cap_wear sequencially ;
  62:   ;
  63:  LBL[30:Mov Home] ;
  64:   ;
  65:  MOVE TO HOME    ;
  66:   ;
  67:  !Check for FFRAdaptiveCCReq for ;
  68:  !for Carried Spot Application ;
  69:  IF (DO[2002] AND DO[18] AND (DO[96] OR DO[97] OR DO[98] OR DO[99])),F[35]=(ON) ;
  70:   ;
  71:  LBL[99] ;
/POS
/END
