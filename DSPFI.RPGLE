       //--- indicator area for display file --- START ---
       dcl-ds DspfI;
         // key functions
         F1 ind pos(1);
         F2 ind pos(2);
         F3 ind pos(3);
         F3_End ind pos(3);         
         F4 ind pos(4);
         F5 ind pos(5);
         F6 ind pos(6);
         F7 ind pos(7);
         F8 ind pos(8);
         F9 ind pos(9);
         F10 ind pos(10);
         F11 ind pos(11);
         F12 ind pos(12);
         F12_Return ind pos(12);
         F13 ind pos(13);
         F14 ind pos(14);
         F15 ind pos(15);
         F16 ind pos(16);
         F17 ind pos(17);
         F18 ind pos(18);
         F19 ind pos(19);
         F20 ind pos(20);
         F21 ind pos(21);
         F22 ind pos(22);
         F23 ind pos(23);
         F24 ind pos(24);
         // subfile  
         sflDsp ind pos(30);
         sflClr ind pos(31);
         sflEnd ind pos(32);
         sflNxtChg ind pos(33);
         // display attributes 40-59
         // error 60-80
         erGen ind pos(60);
         // subfile message
         MsgReserved ind pos(99);
       end-ds;
       //--- indicator area for display file --- END ---