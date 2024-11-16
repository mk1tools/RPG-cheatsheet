       // ARRAY

         //--- compile-time ---
           // 5 elements type character length 80 bytes
       dcl-s MyArray char(80) dim(5) ctdata perrcd(1);

           // run-time almost like compile-time
            // Msg(1) = m1
            // Msg(2) = m2
       dcl-ds Messagges;
        m1 like(Msg) inz('Text message 1');
        m2 like(Msg) inz('Text message 2');
        Msg char(120) pos(1) dim(2);
       end-ds;

         //--- run-time ---
       dcl-s MyArray char(80) dim(5);
       dcl-s MyArray2 like(MyArray) dim(%elem(MyArray));

         // multidimensional array
       dcl-ds MyStruct1 qualified;
         SubField1 packed(3);
         SubField2 char(5);
         SubField3 char(1) dim(3);
       end-ds;
        
       dcl-ds MyStruct2;
         aa2 dim(3);
         // overlay first element
         aa2a packed(3) overlay(aa2:*next);
         // overlay second element
         aa2b char(3) overlay(aa2:*next);
       end-ds;

       dcl-ds ArrayDs qualified;
         dcl-ds aa1 dim(2);
           x1 packed(3);
           x2 char(5);
           x3 char(1) dim(3);
         end-ds;
       end-ds;
        // example operations
        ArrayDs.aa1(1).x1    = 333;
        ArrayDs.aa1(1).x2    = 'AAA';
        ArrayDs.aa1(1).x3(*) = '%';
        ArrayDs.aa1(2).x1    = 444;
        ArrayDs.aa1(2).x2    = 'BBB';
        ArrayDs.aa1(2).x3(1) = '1';
        ArrayDs.aa1(2).x3(2) = '2';
        ArrayDs.aa1(2).x3(3) = '3';

       // dynamic arrays
         // user expand
      dcl-s MyDynArr1 char(2) dim(*var:2000);       
         // auto expand
      dcl-s MyDynArr2 char(2) dim(*auto:2000);
         // compile time dynamic array
      dcl-s MyDynArr3 char(2) dim(*ctdata);