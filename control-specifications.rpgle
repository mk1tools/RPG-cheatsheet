       // suggested default control specification
       ctl-opt copyright('My company')
         cursym('€')
         decedit('0,')
         indent(' ')
         option(*nodebugio: *srcstmt: *showcpy)
         expropts(*resdecpos)
         extbinint(*yes);

       // ignore decimal errors
       ctl-opt fixnbr(*zoned:*inputpacked);

       //-- DATE FORMAT --
       // yyyy-mm-dd format 
       ctl-opt datedit(*ymd);
       // dd-mm-yyyy format 
       ctl-opt datedit(*dmy);

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

       // web services
       ctl-opt pgminfo(*PCML:*MODULE:*V7);