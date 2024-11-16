       // pointer initialised
       dcl-s OutChar char(20);
       dcl-s ptr_OutChar pointer inz(%addr(OutChar));

       // based variable
       dcl-s OutPtr pointer;
       dcl-s Based_OutChar char(20) based(OutPtr);
       dcl-s Based_5 char(5) based(OutPtr);

       // pointer shift
       OutPtr += 5;
       OutPtr += %size(Based_5);

       // retrieve address character varying variable
       dcl-s MyVar varchar(20);
       dcl-s MyPointer pointer;
       
       MyPointer = %addr(MyVar:*data);
        // or
       MyPointer = %addr(MyVar) + 2;

       // check whether the variable has an assigned memory address
       if %addr(MyPointer) <> *null;
         // ...
       endif;