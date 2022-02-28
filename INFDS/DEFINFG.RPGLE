       //--- File Information Data Structure: generic section ---
       //--- File information feedback DS for FILE FEEDBACK (pos. 1-80)
         // *file - file name (first 8 characters)
         fi_File char(8) pos(1);
         // *on = file is open 
         fi_OpenInd ind pos(9);
         // *on = end of file, if the file is close, then it is *on 
         fi_EOF ind pos(10); 
         // *status - status code
          // if > 99 --> exception/error condition. Same BIF %status
          // https://www.ibm.com/docs/en/i/7.4?topic=structure-file-status-codes#stacod9
         fi_Status zoned(5) pos(11);
         // *opcode - operation code 
          // 1-5: DELET / EXCPT / REDPE / UNLCK / UPDAT / WRITE / OPEN / CLOSE / EXFMT
          // 6: F (file name) / R (record name) / I (implicit file operation)
         fi_OpCode char(6) pos(16); 
         // *routine - rpg subroutine (first 8 characters)
         fi_Routine char(8) pos(22);
         // last listing line number executed
          // option(*nosrcstmt) --> source listing line number
          // option(*srcstmt) --> source listing statement number
          // if statement number > 6 digits or includes source ID other than 0
          //  ==> the field start with + and the rest of the statement is in pos 53-54 (?)
         fi_ListNum char(8) pos(30);
         // special status: User-specified reason for error on SPECIAL file
         //fi_SpclStat zoned(5) pos(38);
         // *record - record name (first 8 characters)
         fi_RekName char(8) pos(38);
         // error msgid 
         fi_MsgID char(7) pos(46); 
         // listing line number: Source Id matching the statement number from positions 30-37
         fi_ListNumSrc int(5) pos(77);
       //--- File information feedback DS for OPEN FEEDBACK (pos. 81-240)
       //    updated whenever the file associated is opened
         // odp type 
          // DB = database / DS = display / SP = printer file
         fi_ODPType char(2) pos(81); 
         // file name
         fi_FileOpen char(10) pos(83);
         // library name 
         fi_Lib char(10) pos(93); 
         // max record len
         fi_RcdLen int(5) pos(125); 
         // max key len
         fi_KeyLen int(5) pos(127); 
         // member name
          // for printer files: member name of work file that contain spool data
         fi_Member char(10) pos(129);
         // file type 
          // 21 = DB file / 1 = display file
         fi_Type int(5) pos(147); 
         // volume label offset 
         fi_VolOff int(5) pos(184);
         // max rcds in block
         fi_BlkRcds int(5) pos(186); 
         // block increment
         fi_BlkIncr int(5) pos(190); 
         // misc flags
         fi_Flags1 char(1) pos(196); 
         // job name (requester)
         fi_Requester char(10) pos(197);
         // open count 
         fi_OpenCount int(5) pos(207); 
         // number based members
         fi_BasedMbrs int(5) pos(211);
         // misc flags 
         fi_Flags2 char(1) pos(213); 
         // open identifier
         fi_OpenID char(2) pos(214); 
         // max rcd fmt len
         fi_RcdFmtLen int(5) pos(216);
         // database ccsid 
         fi_Ccsid int(5) pos(218); 
         // misc flags
         fi_flags3 char(1) pos(220); 
       //--- File information feedback DS for INPUT/OUTPUT FEEDBACK (241-366)
         // 241-242 not used
         // number devs defined
         fi_NumDevs int(5) pos(227); 
         // write count (file ICF)
         fi_WriteCnt int(10) pos(243);
         // read count (file ICF)
         fi_ReadCnt int(10) pos(247); 
         // write/read count (file ICF)
         fi_WrtRdCnt int(10) pos(251); 
         // other I/O count (file ICF)
         fi_OtherCnt int(10) pos(255);
         // current I/O operation 
         fi_OpIO char(1) pos(260); 
         // Record format name
         fi_RcdFmtName char(10) pos(261);
         // device class 
         fi_DevClass char(2) pos(271); 
         // pgm device/job name
         fi_PgmDevName char(10) pos(273);
         // rcd len of I/O 
         fi_RcdLenIO int(10) pos(283); 
       //--- File Information Data Structure: generic section --- END ---