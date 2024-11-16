//===============================================
//member prototype (e.g. MYPGM_H)
//===============================================
       dcl-pr MYPGM extpgm('MYPGM');
         *n char(5);
         *n packed(7:2);
       end-pr;

//===============================================
//member called program (e.g. MYPGM)
//===============================================
      /copy MYPGM_H
       dcl-pi MYPGM;
         parm1 char(5);
         parm2 packed(7:2);
       end-pi;

//===============================================
//member calling program (e.g. MYPGM2)
//===============================================
     /copy MYPGM_H
       callp MYPGM(parm1:parm2);
       // or
       MYPGM(parm1:parm2);

//===============================================
//optional parameters
//===============================================
//- options(*nopass): the parameter may not be passed. In the prototype all subsequent parameters must have the keyword *nopass.                                                                         
//- options(*omit): the parameter may be omitted

       // test optional parameters
      if %parms() > %parmnum(parm1);
        // ...
      endif;

      if %addr(parm2) <> *null;
        // ...
      endif;
//===============================================
//read only parameters
//===============================================
//- const

//===============================================
//variable length parameters
//===============================================
//- options(*varsize)

//===============================================
//data structures, arrays and parameters
//===============================================
       dcl-pr MYPGM extpgm('MYPGM');
        *n likeds(dsarray) dim(%elem(dsarray)) options(*varsize);
       end-pr;
       dcl-pi MYPGM;
        dsArrayp likeds(dsarray) dim(%elem(dsarray)) options(*varsize);
       end-pi;

       dcl-ds dsArray dim(5) qualified;
        fldu char(6);
        fld1 char(5) overlay(fldu);
        fld2 char(1) overlay(fldu:*next);
       end-ds;