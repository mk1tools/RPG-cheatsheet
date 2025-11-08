       // suggested default control specification
       ctl-opt copyright('My company')
         cursym('€')
         decedit('0,')
         indent(' ')
         option(*nodebugio: *srcstmt: *showcpy: *nounref)
         expropts(*resdecpos: *alwblanknum)
         extbinint(*yes);

       // ignore decimal errors
       ctl-opt fixnbr(*zoned:*inputpacked);

       // allow null field
	   ctl-opt alwnull(*usrctl);
	   
       //-- DATE FORMAT --
       // yyyy-mm-dd format 
       ctl-opt datedit(*ymd);
       // dd-mm-yyyy format 
       ctl-opt datedit(*dmy);
	   
	   //-- DATE 2-YEAR WARNING --
	     // only warning at compile time
	   ctl-opt dateyy(*warn);
	     // error at compile time
	   ctl-opt dateyy(*noallow);
	     // does not check for dates with 2-digit years. Default
	   ctl-opt dateyy(*allow);

       //-- ACTIVATION GROUP AND BINDING DIRECTORIES --
       // new activation group
       ctl-opt dftactgrp(*no) actgrp(*new);
        // or
       ctl-opt actgrp(*new); 
       // caller activation group
       ctl-opt dftactgrp(*no) actgrp(*caller);
       // named activation group
       ctl-opt dftactgrp(*no) actgrp('MYACTGRP');
       // binding directories
       ctl-opt bnddir(DIR1:DIR2);

       //-- WEB SERVICES
       ctl-opt pgminfo(*PCML:*MODULE:*V7);

       //-- LINEAR-MAIN
       ctl-opt main(MyMainProc);

       //-- SERVICE PROGRAMS
       ctl-opt nomain;