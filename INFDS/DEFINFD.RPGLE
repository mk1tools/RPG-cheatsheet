       //*** INFDS File Information Data Structure for display file --- START ***
      /copy definfg
       //--- File information feedback DS for FILE FEEDBACK (pos. 1-80)
         // pos. 67-76 valid afer a POST
         // screen size
          // *size - product of the number or rows and the number of columns
         fi_ScreenSize zoned(4) pos(67);
         // *inp - keyboard type 
          // 00: alphanumeric/katakana, 10: ideographic
         fi_KbdType zoned(2) pos(71);
         // *out - display type
          // 00: alphanumeric/katakana, 10: ideographic, 20: DBCS
         fi_DspType zoned(2) pos(73);
         // *mode - always set to 00
         fi_DspMode zoned(2) pos(75);
       //--- File information feedback DS for OPEN FEEDBACK (pos. 81-240)         
         // total number of rows into the printer/display file
         fi_Rows int(5) pos(152); 
         // total number of columns into the printer/display file
         fi_Columns int(5) pos(154); 
       //--- File information feedback DS for INPUT/OUTPUT FEEDBACK (241-366)
         // program device
         fi_PgmDev char(10) pos(241); 
         // device description
         fi_DevDesc char(10) pos(251);
         // user id 
         // ? corrisponde al nome del formato record ?
         fi_User char(10) pos(261); 
         // device class
         fi_DspDevClass char(1) pos(271);
         // device type 
         fi_DevType char(6) pos(272);
         // requester: C per display file
         fi_ReqDev char(1) pos(278); 
         // acquire status
         fi_AcqStat char(1) pos(279); 
         // invite status
         fi_InvStat char(1) pos(280); 
         // data available
         fi_DataAvail char(1) pos(281);
         // number of rows 
         fi_NumRows int(5) pos(282); 
         // number of cols
         fi_NumCols int(5) pos(284);
         // allow blink 
         fi_Blink char(1) pos(286); 
         // online/offline
         fi_LineStat char(1) pos(287);
         // display location 
         fi_DspLoc char(1) pos(288); 
         // display type
         fi_DspType2 char(1) pos(289); 
         // keyboard type
         fi_KbdType2 char(1) pos(290);
         // session status
         fi_SessStatus char(1) pos(291);
         // synch level
         fi_SyncLvl char(1) pos(292);
         // conversation type
         fi_ConvType char(1) pos(293);
         // remote location
         fi_RmtLoc char(10) pos(294);
         // controller info 
         fi_CtlInfo char(1) pos(342);
         // color capable  
         fi_Color char(1) pos(343);
         // grid line dsp 
         fi_Grid char(1) pos(344); 
       //--- File information feedback DS for DSPF DEVICE FEEDBACK (pos. 367-...)
         // display flags
         fi_DspFlag1 char(2) pos(367);
         // key function (hexadecimal value) - aid byte
          // see also DEFKEYHEX
         fi_KeyFunc char(1) pos(369); 
         // cursor location
          // hexadecimal value (x'0203' row 2 col 3)         
         fi_Cursor char(2) pos(370); 
         // actual data len
         fi_DataLen int(10) pos(372);
         // subfile rrn 
         fi_SFRRN int(5) pos(376); 
         // subfile lowest rrn displayed
         fi_MinRRN int(5) pos(378); 
         // subfile number records
         fi_SFNumRcds int(5) pos(380); 
         // active window cursor location
          // hexadecimal value (x'0203' row 2 col 3)
         fi_ActCur char(2) pos(382); 
         // ISDN rmt number len
         fi_ISDN_Len int(5) pos(385);
         // ISDN rmt number type
         fi_ISDN_Type char(2) pos(387);
         // ISDN rmt number plan
         fi_ISDN_PLan char(2) pos(389);
         // ISDN rmt number
         fi_ISDN_Num char(40) pos(391);
         // major return code
         fi_DspMajor char(2) pos(401); 
         // minor ret code
         fi_DspMinor char(2) pos(403); 
         // SNA sense rc
         fi_SNA char(8) pos(405);
         // safe indicator
         fi_SafeInd char(1) pos(413);
         // request write
         fi_ReqWrt char(1) pos(415);
         // remote record format
         fi_RcdFmtRmt char(10) pos(416);
         // mode name
         fi_ModeName char(8) pos(430);
         // ISDN rmt sub-address length
         fi_ISDN_SLen int(5) pos(435);
         // ISDN rmt sub-address type
         fi_ISDN_SType char(2) pos(437);
         // ISDN rmt sub-address
         fi_ISDN_SNum char(40) pos(439);
         // ISDN connection
         fi_ISDN_Conn char(1) pos(480);
         // ISDN rmt address len
         fi_ISDN_RLen int(5) pos(481);
         // ISDN rmt address
         fi_ISDN_RNum char(32) pos(483);
         // ISDN extension len
         fi_ISDN_ELen int(5) pos(519);
         // ISDN extension type
         fi_ISDN_EType char(1) pos(521);
         // ISDN extension num
         //fi_ISDN_ENum char(40) pos(522);
         // ISDN X.25 call type
         //fi_ISDN_XType char(1) pos(566); 
       end-ds;
         //*** INFDS File Information Data Structure for display file --- END ***