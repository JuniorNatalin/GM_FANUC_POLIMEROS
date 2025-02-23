/PROG  PRT41_R02
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Main MH V4.0 375";
PROG_SIZE	= 2800;
CREATE		= DATE 19-05-25  TIME 08:49:46;
MODIFIED	= DATE 19-06-21  TIME 11:20:04;
FILE_NAME	= PRT07_R0;
VERSION		= 0;
LINE_COUNT	= 103;
MEMORY_SIZE	= 3316;
PROTECT		= READ_WRITE;
STORAGE		= SHADOW;
TCD:  STACK_SIZE	= 500,
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
   2:  !  GM METAL FORMING GLOBAL 4 S/W ;
   3:  !******************************** ;
   4:  !* Robot ID: IM010R01B01 ;
   5:  !*    F-196839 ;
   6:  !* Line: XXXXXXXX ;
   7:  !* Platform: XX ;
   8:  !* Tool ID: TOOL 03 ;
   9:  !* Part ID: PART 335 ;
  10:  !* Program: PRT03 ;
  11:  !* Application: MH PROCESS ;
  12:  !* SOURCE: TEMPLA12 ;
  13:  !******************************** ;
  14:  ! TEMPLA12: STANDARD PATH PROGRAM ;
  15:  ! TEMPLATE  FOR PICKING  FROM THE ;
  16:  ! EXIT  CONVEYOR  AND DROPING  ON ;
  17:  ! THE EOL CONVEYOR, WITH ONLY ONE ;
  18:  ! INTERFERENCE ZONE AT PICK. ;
  19:  !******************************** ;
  20:  ! 2016-02-14 GLOBAL-4 S/W REL 4.0 ;
  21:  !******************************** ;
  22:  !++++++++++++++++++++++++++++++++ ;
  23:  !INITIALIZE STYLE PROGRAM ;
  24:  !-------------------------------- ;
  25:  GO[1]=(41) ;
  26:  R[14]=100    ;
  27:  R[18]=.5    ;
  28:  R[19]=.5    ;
  29:  R[20]=1.5    ;
  30:   ;
  31:   ;
  32:  !INICIALIZE ALL TOOL DATA ;
  33:   ;
  34:  R[230]=1    ;
  35:  R[231]=1    ;
  36:  R[232]=1    ;
  37:  R[233]=0    ;
  38:  R[234]=0    ;
  39:  R[235]=0    ;
  40:  R[236]=1    ;
  41:   ;
  42:  ! R[142]=1 --> Vacuum Only ;
  43:  ! R[142]=2 --> Grippers Only ;
  44:  ! R[142]=3 --> Vacuum & Grippers ;
  45:   ;
  46:  R[142]=3    ;
  47:  R[211]=1    ;
  48:  R[212]=1    ;
  49:  R[213]=1    ;
  50:  R[214]=1    ;
  51:  !Check for correct Tool ;
  52:  CALL TL_CHK_KM(41) ;
  53:  !++++++++++++++++++++++++++++++++ ;
  54:   ;
  55:  !******************************** ;
  56:  !BEGINNING OF STYLE PROGRAM PATH ;
  57:  !******************************** ;
  58:  ! ;
  59:  !Move to Pick Pounce Core Moving ;
  60:  CALL POUNCE    ;
  61:   ;
  62:  !-------------------------------- ;
  63:  LBL[10:TOP OF LOOP] ;
  64:   ;
  65:  ! Move to Home or Continue Cycle ;
  66:  SELECT R[150]=0,JMP LBL[20] ;
  67:         =15,JMP LBL[90] ;
  68:         ELSE,JMP LBL[10] ;
  69:   ;
  70:  !-------------------------------- ;
  71:  LBL[20:MOVE TO PICK] ;
  72:  ! Move to Pick ;
  73:  CALL PRT41PICK    ;
  74:   ;
  75:  !-------------------------------- ;
  76:  LBL[29:Pick Loop] ;
  77:   ;
  78:  ! Move to PROC1, PROC2, or DROP2 ;
  79:   ;
  80:  SELECT R[150]=0,JMP LBL[30] ;
  81:         =1,JMP LBL[40] ;
  82:         ELSE,JMP LBL[29] ;
  83:  !-------------------------------- ;
  84:  LBL[30:Process1] ;
  85:  !Move to De-gate (Flambagem) Part ;
  86:  CALL PRT41PROC1    ;
  87:   ;
  88:  !-------------------------------- ;
  89:  LBL[39:Process1 Loop] ;
  90:  REQUEST CONTINUE    ;
  91:   ;
  92:  ! Move to PROC2, DROP1 or DROP2 ;
  93:  SELECT R[150]=0,JMP LBL[40] ;
  94:         ELSE,JMP LBL[39] ;
  95:   ;
  96:  !-------------------------------- ;
  97:  LBL[40:Drop] ;
  98:  CALL PRT41_DROP    ;
  99:   ;
 100:  !-------------------------------- ;
 101:  LBL[90:END CYCLE] ;
 102:  !Move Home ;
 103:  MOVE TO HOME    ;
/POS
/END
