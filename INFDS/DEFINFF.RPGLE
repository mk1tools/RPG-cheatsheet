       //*** INFDS File Information Data Structure for database file --- START ***
      /copy definfg
       //--- File information feedback DS for OPEN FEEDBACK (pos. 81-240)
         // number total of records (at the open time)
         fi_NumRcds int(10) pos(156); 
         // access type
          // KN = key access / KU = key access unique key / AR = arrival order
          // KL = LIFO key / KF = FIFO key not unique
         fi_AccType char(2) pos(160);
         // duplicate key 
          // D = not unique / U = unique      
         fi_DupKey char(1) pos(162);
         // Y = source file
         fi_SrcFile char(1) pos(163);
         // number of key fields
         fi_NumCols int(5) pos(284); 
       //--- File information feedback DS for DB DEVICE FEEDBACK (pos. 367-...)
         // size of db feedback - current line number
         fi_FdbkSize int(10) pos(367); 
         // jfile bits
         fi_Join int(10) pos(371); 
         // number locked record (not only in this program)
         fi_LockRcds int(5) pos(377); 
         // file pos bits
         fi_PosBits char(1) pos(385); 
         // record deleted bits
         fi_DltBits char(1) pos(384);
         // number keys (bin) 
         fi_NumKeys int(5) pos(387); 
         // key length
         fi_KeyLen int(5) pos(393);
         // member number 
         fi_MbrNum int(5) pos(395);
         // relative-record-number 
         fi_RRN int(10) pos(397); 
         // key value (max size 2000)
         fi_KeyVal char(128) pos(401); 
       end-ds;
       //*** INFDS File Information Data Structure for database file --- END ***