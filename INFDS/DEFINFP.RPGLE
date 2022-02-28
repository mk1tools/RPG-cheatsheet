       //*** INFDS File Information Data Structure for printer file --- START ***
      /copy definfg
       //--- File information feedback DS for OPEN FEEDBACK (pos. 81-240)       
         // spool file name
          // member name of work file that contain spool data
         fi_SplFile char(10) pos(103); 
        // // spool file library (QSPL)
         fi_SplLib char(10) pos(113);
         // spool file number (deprecated)
         fi_SplNumOld int(5) pos(123); 
         // total number of rows into the printer/display file
         fi_Rows int(5) pos(152);
         // total number of columns into the printer/display file
         fi_Columns int(5) pos(154);
         // spool file number 
         fi_SplNum int(10) pos(160); 
         // overflow line
         fi_OFLine int(5) pos(188); 
       //--- File information feedback DS for PRTF DEVICE FEEDBACK (pos. 367-...)
       //     minimun length is 528
         // current line number
         fi_CurLine int(5) pos(367); 
         // current page number
          // can be updated by the program
         fi_CurPage int(10) pos(369); 
         // spool deleted
           // if the first bit of fi_PrtfDel is on, the spooled file has been deleted
           //  use TESTB X'80' or TESTB '0' to test this bit
         fi_PrtfDel char(1) pos(373); 
         // major ret code (83 = overflow)
         fi_PrtMajor char(2) pos(401); 
         // minor ret code (43 = overflow)
         fi_PrtMinor char(2) pos(403); 
       end-ds;
       //*** INFDS File Information Data Structure for printer file --- END ***