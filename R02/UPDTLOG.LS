19/04/06 05:00:18

Version:  V8.33P/03/None
Build ID: V8.3354       4/24/2017

1A05B-2500-H590
1A05B-2500-H521
1A05B-2500-R764
1A05B-2500-R806
1A05B-2500-R805
1A05B-2500-R665
1A05B-2500-R796
1A05B-2500-R861
1A05B-2500-J924
1A05B-2500-R761
1A05B-2500-R657
1A05B-2500-J951
1A05B-2500-J535
1A05B-2500-J684
1A05B-2500-J567
1A05B-2500-R711
1A05B-2500-R528
1A05B-2500-J527
1A05B-2500-R713
1A05B-2500-R659
1A05B-2500-R785
1A05B-2500-R650
1A05B-2500-R545
1A05B-2500-R676
1A05B-2500-R632
1A05B-2500-J771
1A05B-2500-R577
1A05B-2500-R664
1A05B-2500-J695
1A05B-2500-R641
1A05B-2500-R812
1A05B-2500-J669
1A05B-2500-R758
1A05B-2500-R573
1A05B-2500-R866
1A05B-2500-J612
1A05B-2500-J694
1A05B-2500-R648
1A05B-2500-R854
1A05B-2500-R765
1A05B-2500-H722
Z

 ***At the beginning of Auto Update.***

Img.Backup Yes     * must have one ' ' then 'yes' or 'no'
! Next what devices should be backed up:
! Each line needs the word "BackupDevice", then space then 
! the device name with ":"
BackupDevice FR:
BackupDevice FRA:
!BackupDevice RD:
!BackupDevice FR1:
! Next is whether saving the backup (all and image) after 
! auto update or not. Select 'YES' or 'NO' after 
! "AfterBackup" and one space. YES: save, NO: not save.
! When MC: does not have enough capacity, backup is not
! saved even if "AfterBackup YES".
AfterBackup NO
!
! Restore I/O status,  must have one ' ' then 'yes' or 'no'
SetUpIOstat Yes
F Number: F196843    
VERSION : SpotTool+            
$VERSION: V8.3354       4/24/2017
DATE:     06-APR-19 05:02 

MEMORY USAGE::

MEMORY DETAIL (MAIN):
Pools        TOTAL     AVAILABLE      LARGEST
TPP         1000.0KB     310.0KB      55.4KB
PERM        3002.0KB     846.7KB     843.7KB
SYSTEM     10110.1KB       2.8KB       2.8KB
SHADOW      6564.4KB    5488.9KB      32.0KB
TEMP      114137.8KB   89633.7KB   64911.1KB
FROM      126740.0KB   67144.0KB        .0KB
HARDWARE
FROM     128MB
DRAM     128MB
SRAM       3MB

MEMORY DETAIL (COMM):
Pools        TOTAL     AVAILABLE      LARGEST
TPP            0.0KB       0.0KB       0.0KB
PERM          48.0KB      47.8KB      47.8KB
SYSTEM      6144.0KB    5271.0KB    5271.0KB
SHADOW      6564.4KB    5488.9KB      32.0KB
TEMP        9761.9KB    7336.2KB    7334.0KB
UD1:\00\TEMP\VARCHG.XML file missing from backup

 ***At Controlled Start.***

F Number: F196843    
VERSION : SpotTool+            
$VERSION: V8.3382        5/9/2018
DATE:     06-APR-19 06:23 

MEMORY USAGE::

MEMORY DETAIL (MAIN):
Pools        TOTAL     AVAILABLE      LARGEST
TPP         1000.0KB     318.7KB     309.9KB
PERM        3002.0KB     862.7KB     861.7KB
SYSTEM     10269.9KB       1.2KB       1.2KB
SHADOW      6698.3KB    5585.3KB      32.0KB
TEMP      113977.8KB   94427.0KB   66124.2KB
FROM      126740.0KB   64678.0KB        .0KB
HARDWARE
FROM     128MB
DRAM     128MB
SRAM       3MB

MEMORY DETAIL (COMM):
Pools        TOTAL     AVAILABLE      LARGEST
TPP            0.0KB       0.0KB       0.0KB
PERM          48.0KB      47.9KB      47.9KB
SYSTEM      6144.0KB    5255.6KB    5255.6KB
SHADOW      6698.3KB    5585.3KB      32.0KB
TEMP        9761.9KB    7366.4KB    7366.0KB

 ***At Cold Start.***

ERRALL.LS      Robot Name ROBOT 06-APR-19 06:25:34  

188" 06-APR-19 06:25:34 " SYST-032 ENBL signal from UOP is lost             " " WARN                          00000000"    "
189" 06-APR-19 06:25:34 " SYST-033 SFSPD signal from UOP is lost            " " WARN                          00000000"    "
190" 06-APR-19 06:25:34 " PRIO-230 EtherNet/IP Adapter Error (1)            " PRIO-231 EtherNet/IP Adapter Idle                 " WARN                          00000000"    "
191" 06-APR-19 06:25:30 " SYST-032 ENBL signal from UOP is lost             " " WARN                          00000000"    "
192" 06-APR-19 06:25:30 " SYST-033 SFSPD signal from UOP is lost            " " WARN                          00000000"    "
193" 06-APR-19 06:25:30 " PRIO-230 EtherNet/IP Adapter Error (1)            " PRIO-231 EtherNet/IP Adapter Idle                 " WARN                          00000000"    "
194" 06-APR-19 06:25:28 " PRIO-230 EtherNet/IP Adapter Error (1)            " PRIO-231 EtherNet/IP Adapter Idle                 " WARN                          00000000"    "
195" 06-APR-19 06:25:22 " SRVO-409 DCS SSO Servo Disconnect 1,1             " " SERVO                         00110110" act"
196" 06-APR-19 06:25:22 " SRVO-408 DCS SSO Ext Emergency Stop 1,1           " " SERVO                         00110110" act"
197" 06-APR-19 06:25:22 " SRVO-407 DCS SSO Fence Open 1,1                   " " SERVO                         00110110" act"
198" 06-APR-19 06:25:22 " SRVO-406 DCS SSO SVOFF input 1,1                  " " SERVO                         00110110" act"
199" 06-APR-19 06:25:22 " SRVO-003 Deadman switch released                  " " SERVO                         00110110" act"
200" 06-APR-19 06:25:22 " SRVO-401 CIP Safety comm. error 1,1               " " SERVO                         00110110" act"
201" 06-APR-19 06:25:22 " SRVO-402 DCS Cart. pos. limit(1,G1,M1) 11         " " SERVO                         00110110" act"
202" 06-APR-19 06:25:22 " SRVO-337 DCS PRMCHK alarm 2000000,2000000         " " SERVO                         00110110" act"
203" 06-APR-19 06:25:22 " SRVO-037 IMSTP input (Group:1)                    " " SERVO                         00110110" act"
204" 06-APR-19 06:25:22 " SYST-305 System startup in progress               " " STOP.G                        00100110" act"
205" 06-APR-19 06:25:22 " R E S E T                                         " "                               00000000"    "
206" 06-APR-19 06:25:22 " SRVO-408 DCS SSO Ext Emergency Stop 1,1           " " SERVO                         00110110"    "
207" 06-APR-19 06:25:22 " SRVO-407 DCS SSO Fence Open 1,1                   " " SERVO                         00110110"    "
208" 06-APR-19 06:25:22 " SRVO-406 DCS SSO SVOFF input 1,1                  " " SERVO                         00110110"    "
209" 06-APR-19 06:25:22 " SRVO-401 CIP Safety comm. error 1,1               " " SERVO                         00110110"    "
210" 06-APR-19 06:25:22 " SRVO-402 DCS Cart. pos. limit(1,G1,M1) 11         " " SERVO                         00110110"    "
211" 06-APR-19 06:25:22 " SRVO-337 DCS PRMCHK alarm 2000000,2000000         " " SERVO                         00110110"    "
212" 06-APR-19 06:25:22 " SRVO-003 Deadman switch released                  " " SERVO                         00110110"    "
213" 06-APR-19 06:25:22 " SYST-305 System startup in progress               " " STOP.G                        00100110"    "
214" 06-APR-19 06:25:22 " SRVO-037 IMSTP input (Group:1)                    " " SERVO                         00110110"    "
215" 06-APR-19 06:25:10 " HOST-028 ZDT URL parse error 101                  " " WARN                          00000000"    "
216" 06-APR-19 06:25:10 " SYST-026 System normal power up                   " " WARN                          00000000"    "
217" 06-APR-19 06:25:26 " SYST-032 ENBL signal from UOP is lost             " " WARN                          00000000"    "
218" 06-APR-19 06:25:26 " SYST-033 SFSPD signal from UOP is lost            " " WARN                          00000000"    "
219" 06-APR-19 06:25:26 " PRIO-230 EtherNet/IP Adapter Error (1)            " PRIO-231 EtherNet/IP Adapter Idle                 " WARN                          00000000"    "
220" 06-APR-19 06:25:24 " SYST-032 ENBL signal from UOP is lost             " " WARN                          00000000"    "
221" 06-APR-19 06:25:24 " SYST-033 SFSPD signal from UOP is lost            " " WARN                          00000000"    "
222" 06-APR-19 06:25:24 " PRIO-230 EtherNet/IP Adapter Error (1)            " PRIO-231 EtherNet/IP Adapter Idle                 " WARN                          00000000"    "
223" 06-APR-19 06:25:22 " APSH-000 iic_sig is NOT LOADED                    " " WARN                          00000000"    "
224" 06-APR-19 06:25:22 " PRIO-230 EtherNet/IP Adapter Error (1)            " PRIO-231 EtherNet/IP Adapter Idle                 " WARN                          00000000"    "
225" 06-APR-19 06:24:44 " FILE-066 UD1 Ins Kingston DataTraveler 2.0        " " WARN                          00000000"    "
226" 06-APR-19 06:24:44 " FILE-071 USB vend: 0930 prod: 6545                " " WARN                          00000000"    "
227" 06-APR-19 06:24:44 " FILE-069 USB hub Ins On Time Informatik OHCI Virtual Root Hub" " WARN                          00000000"    "
228" 06-APR-19 06:24:44 " FILE-071 USB vend: 0000 prod: 0000                " " WARN                          00000000"    "
229" 06-APR-19 06:23:16 " APSH-000 Press Shop Update Completed              " " WARN                          00000000"    "
230" 06-APR-19 06:23:16 " APSH-000 Press I/O Cmnts Updated                  " " WARN                          00000000"    "
231" 06-APR-19 06:23:16 " APSH-000 Press Registers Updated                  " " WARN                          00000000"    "
232" 06-APR-19 06:23:16 " APSH-000 Failed copy FRS:\varchg.xml  to FR:\varchg.xml" FILE-014 File not found                           " WARN                          00000000"    "
233" 06-APR-19 06:23:16 " APSH-000 Log File Not Opened in GMWIZLOG          " " WARN                          00000000"    "
234" 06-APR-19 06:23:12 " OPTN-017 No UPDATES on this media                 " " WARN                          00000000"    "
235" 06-APR-19 06:23:10 " SYST-290 Cycle power to use new DCS parameter     " " STOP.G                        00100110"    "
236" 06-APR-19 06:22:52 " TPIF-218 UD1:\00\TEMP\VAC_ON2.TP failed to load   " MEMO-006 Protection error occurred                " WARN                          00000000"    "
237" 06-APR-19 06:22:52 " TPIF-218 UD1:\00\TEMP\VAC_ON1.TP failed to load   " MEMO-006 Protection error occurred                " WARN                          00000000"    "
238" 06-APR-19 06:22:52 " TPIF-218 UD1:\00\TEMP\VAC_OFF2.TP failed to load  " MEMO-006 Protection error occurred                " WARN                          00000000"    "
239" 06-APR-19 06:22:50 " TPIF-218 UD1:\00\TEMP\VAC_OFF1.TP failed to load  " MEMO-006 Protection error occurred                " WARN                          00000000"    "
240" 06-APR-19 06:22:50 " TPIF-218 UD1:\00\TEMP\VACUUMON.TP failed to load  " MEMO-006 Protection error occurred                " WARN                          00000000"    "
241" 06-APR-19 06:22:50 " TPIF-218 UD1:\00\TEMP\VACUUMOF.TP failed to load  " MEMO-006 Protection error occurred                " WARN                          00000000"    "
242" 06-APR-19 06:22:50 " TPIF-218 UD1:\00\TEMP\USERPAGE.TP failed to load  " MEMO-006 Protection error occurred                " WARN                          00000000"    "
243" 06-APR-19 06:22:50 " TPIF-218 UD1:\00\TEMP\USERCLR.TP failed to load   " MEMO-006 Protection error occurred                " WARN                          00000000"    "
244" 06-APR-19 06:22:50 " TPIF-218 UD1:\00\TEMP\TL_UNLCH.TP failed to load  " MEMO-006 Protection error occurred                " WARN                          00000000"    "
245" 06-APR-19 06:22:50 " TPIF-218 UD1:\00\TEMP\TL_PRSNT.TP failed to load  " MEMO-006 Protection error occurred                " WARN                          00000000"    "
246" 06-APR-19 06:22:50 " TPIF-218 UD1:\00\TEMP\TL_MATCH.TP failed to load  " MEMO-006 Protection error occurred                " WARN                          00000000"    "
247" 06-APR-19 06:22:50 " TPIF-218 UD1:\00\TEMP\TL_LATCH.TP failed to load  " MEMO-006 Protection error occurred                " WARN                          00000000"    "
248" 06-APR-19 06:22:50 " TPIF-218 UD1:\00\TEMP\TL_CURTP.TP failed to load  " MEMO-006 Protection error occurred                " WARN                          00000000"    "
249" 06-APR-19 06:22:50 " TPIF-218 UD1:\00\TEMP\TL_CHKTP.TP failed to load  " MEMO-006 Protection error occurred                " WARN                          00000000"    "
250" 06-APR-19 06:22:48 " TPIF-218 UD1:\00\TEMP\STATPAGE.TP failed to load  " MEMO-006 Protection error occurred                " WARN                          00000000"    "
251" 06-APR-19 06:22:48 " TPIF-218 UD1:\00\TEMP\SET_TOOL.TP failed to load  " MEMO-006 Protection error occurred                " WARN                          00000000"    "
252" 06-APR-19 06:22:48 " TPIF-218 UD1:\00\TEMP\SET_SEGM.TP failed to load  " MEMO-006 Protection error occurred                " WARN                          00000000"    "
253" 06-APR-19 06:22:48 " TPIF-218 UD1:\00\TEMP\SETVALVE.TP failed to load  " MEMO-006 Protection error occurred                " WARN                          00000000"    "
254" 06-APR-19 06:22:48 " TPIF-218 UD1:\00\TEMP\SENDSYSV.TP failed to load  " MEMO-006 Protection error occurred                " WARN                          00000000"    "
255" 06-APR-19 06:22:48 " TPIF-218 UD1:\00\TEMP\SENDEVNT.TP failed to load  " MEMO-006 Protection error occurred                " WARN                          00000000"    "
256" 06-APR-19 06:22:48 " TPIF-218 UD1:\00\TEMP\SENDDATA.TP failed to load  " MEMO-006 Protection error occurred                " WARN                          00000000"    "
257" 06-APR-19 06:22:40 " TPIF-218 UD1:\00\TEMP\REQ_ERLY.TP failed to load  " MEMO-006 Protection error occurred                " WARN                          00000000"    "
258" 06-APR-19 06:22:40 " TPIF-218 UD1:\00\TEMP\REQ_CONT.TP failed to load  " MEMO-006 Protection error occurred                " WARN                          00000000"    "
259" 06-APR-19 06:22:40 " TPIF-218 UD1:\00\TEMP\REQMENU.TP failed to load   " MEMO-006 Protection error occurred                " WARN                          00000000"    "
260" 06-APR-19 06:22:40 " TPIF-218 UD1:\00\TEMP\PRT_RATE.TP failed to load  " MEMO-006 Protection error occurred                " WARN                          00000000"    "
261" 06-APR-19 06:22:40 " TPIF-218 UD1:\00\TEMP\PRT_PICK.TP failed to load  " MEMO-006 Protection error occurred                " WARN                          00000000"    "
262" 06-APR-19 06:22:40 " TPIF-218 UD1:\00\TEMP\PRT_HPCK.TP failed to load  " MEMO-006 Protection error occurred                " WARN                          00000000"    "
263" 06-APR-19 06:22:40 " TPIF-218 UD1:\00\TEMP\PRT_HDRP.TP failed to load  " MEMO-006 Protection error occurred                " WARN                          00000000"    "
264" 06-APR-19 06:22:40 " TPIF-218 UD1:\00\TEMP\PRT_DROP.TP failed to load  " MEMO-006 Protection error occurred                " WARN                          00000000"    "
265" 06-APR-19 06:22:38 " TPIF-218 UD1:\00\TEMP\PRT_CHK.TP failed to load   " MEMO-006 Protection error occurred                " WARN                          00000000"    "
266" 06-APR-19 06:22:36 " TPIF-218 UD1:\00\TEMP\PROMPTYN.TP failed to load  " MEMO-006 Protection error occurred                " WARN                          00000000"    "
267" 06-APR-19 06:22:36 " TPIF-218 UD1:\00\TEMP\PROMPTOK.TP failed to load  " MEMO-006 Protection error occurred                " WARN                          00000000"    "
268" 06-APR-19 06:22:36 " TPIF-218 UD1:\00\TEMP\POUNC_SV.TP failed to load  " MEMO-006 Protection error occurred                " WARN                          00000000"    "
269" 06-APR-19 06:22:36 " TPIF-218 UD1:\00\TEMP\POUNC_PK.TP failed to load  " MEMO-006 Protection error occurred                " WARN                          00000000"    "
270" 06-APR-19 06:22:36 " TPIF-218 UD1:\00\TEMP\POUNC_DR.TP failed to load  " MEMO-006 Protection error occurred                " WARN                          00000000"    "
271" 06-APR-19 06:22:36 " TPIF-218 UD1:\00\TEMP\OPN_VLE5.TP failed to load  " MEMO-006 Protection error occurred                " WARN                          00000000"    "
272" 06-APR-19 06:22:36 " TPIF-218 UD1:\00\TEMP\OPN_VLE4.TP failed to load  " MEMO-006 Protection error occurred                " WARN                          00000000"    "
273" 06-APR-19 06:22:36 " TPIF-218 UD1:\00\TEMP\OPN_VLE3.TP failed to load  " MEMO-006 Protection error occurred                " WARN                          00000000"    "
274" 06-APR-19 06:22:36 " TPIF-218 UD1:\00\TEMP\OPN_VLE2.TP failed to load  " MEMO-006 Protection error occurred                " WARN                          00000000"    "
275" 06-APR-19 06:22:36 " TPIF-218 UD1:\00\TEMP\OPN_VLE1.TP failed to load  " MEMO-006 Protection error occurred                " WARN                          00000000"    "
276" 06-APR-19 06:22:34 " TPIF-218 UD1:\00\TEMP\OPERMENU.TP failed to load  " MEMO-006 Protection error occurred                " WARN                          00000000"    "
277" 06-APR-19 06:22:34 " TPIF-218 UD1:\00\TEMP\OKTOPICK.TP failed to load  " MEMO-006 Protection error occurred                " WARN                          00000000"    "
278" 06-APR-19 06:22:34 " TPIF-218 UD1:\00\TEMP\MOV_HOME.TP failed to load  " MEMO-006 Protection error occurred                " WARN                          00000000"    "
279" 06-APR-19 06:22:34 " TPIF-218 UD1:\00\TEMP\LISTMENU.TP failed to load  " MEMO-006 Protection error occurred                " WARN                          00000000"    "
280" 06-APR-19 06:22:34 " TPIF-218 UD1:\00\TEMP\INV_ROUT.TP failed to load  " MEMO-006 Protection error occurred                " WARN                          00000000"    "
281" 06-APR-19 06:22:34 " TPIF-218 UD1:\00\TEMP\HOME_IO.TP failed to load   " MEMO-006 Protection error occurred                " WARN                          00000000"    "
282" 06-APR-19 06:22:34 " TPIF-218 UD1:\00\TEMP\GRIPPART.TP failed to load  " MEMO-006 Protection error occurred                " WARN                          00000000"    "
283" 06-APR-19 06:22:34 " TPIF-218 UD1:\00\TEMP\GETDATA.TP failed to load   " MEMO-006 Protection error occurred                " WARN                          00000000"    "
284" 06-APR-19 06:22:34 " TPIF-218 UD1:\00\TEMP\FLT_MH.TP failed to load    " MEMO-006 Protection error occurred                " WARN                          00000000"    "
285" 06-APR-19 06:22:34 " TPIF-218 UD1:\00\TEMP\EXITIZON.TP failed to load  " MEMO-006 Protection error occurred                " WARN                          00000000"    "
286" 06-APR-19 06:22:34 " TPIF-218 UD1:\00\TEMP\ENTRIZON.TP failed to load  " MEMO-006 Protection error occurred                " WARN                          00000000"    "
287" 06-APR-19 06:22:34 " TPIF-218 UD1:\00\TEMP\DROPPART.TP failed to load  " MEMO-006 Protection error occurred                " WARN                          00000000"    "

 ***At Cold Start.***

F Number: F196843
VERSION : SpotTool+            
$VERSION: V8.3382        5/9/2018
DATE:     06-APR-19 06:25 

MEMORY USAGE::

MEMORY DETAIL (MAIN):
Pools        TOTAL     AVAILABLE      LARGEST
TPP         1000.0KB     318.7KB     309.9KB
PERM        3002.0KB     832.0KB     831.6KB
SYSTEM     10269.9KB       1.2KB       1.2KB
SHADOW      6564.4KB    5451.5KB      32.0KB
TEMP      113977.8KB   89109.1KB   66061.9KB
FROM      126740.0KB   64886.0KB        .0KB
HARDWARE
FROM     128MB
DRAM     128MB
SRAM       3MB

MEMORY DETAIL (COMM):
Pools        TOTAL     AVAILABLE      LARGEST
TPP            0.0KB       0.0KB       0.0KB
PERM          48.0KB      47.9KB      47.9KB
SYSTEM      6144.0KB    5255.6KB    5255.6KB
SHADOW      6564.4KB    5451.5KB      32.0KB
TEMP        9761.9KB    7341.5KB    7336.7KB
** Update Complete 06-APR-19 06:25 

22/04/16 16:01:38

Version:  V8.33P/05/None
Build ID: V8.3382        5/9/2018

1A05B-2500-H590
1A05B-2500-H521
1A05B-2500-R764
1A05B-2500-R806
1A05B-2500-R805
1A05B-2500-R665
1A05B-2500-R796
1A05B-2500-R861
1A05B-2500-J924
1A05B-2500-R761
1A05B-2500-R657
1A05B-2500-J951
1A05B-2500-J535
1A05B-2500-J684
1A05B-2500-J567
1A05B-2500-R711
1A05B-2500-R528
1A05B-2500-J527
1A05B-2500-R713
1A05B-2500-R659
1A05B-2500-R785
1A05B-2500-R650
1A05B-2500-R545
1A05B-2500-R676
1A05B-2500-R632
1A05B-2500-J771
1A05B-2500-R577
1A05B-2500-R664
1A05B-2500-J695
1A05B-2500-R641
1A05B-2500-R812
1A05B-2500-J669
1A05B-2500-R758
1A05B-2500-R573
1A05B-2500-R866
1A05B-2500-J612
1A05B-2500-J694
1A05B-2500-R648
1A05B-2500-R854
1A05B-2500-R765
1A05B-2500-H722
1A05B-2500-R798
Z
