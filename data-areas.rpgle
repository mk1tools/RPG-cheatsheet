       // data area mapped with a stand-alone variable
       dcl-s TotAmt zoned(8:2) dtaara;
       
       // data area with constant name
       dcl-s Area1 char(300) dtaara('MYAREA');
       dcl-s Area2 char(300) dtaara('MYLIB/MYAREA');

       // data area with variable name 
       dcl-s Area3 char(300) dtaara(AreaName);

       // data area mapped with external data structure
       dcl-ds MyDS ext dtaara('MYDATARA') end-ds;

       // data area mapped with internal data structure
       dcl-ds MyLocDS dtaara(*lda);
         Field1 char(2) overlay(MyLocDS:221);
         Field2 char(25) overlay(MyLocDS:223);
       end-ds;
        // read Local Data Area
        in *lock MyLockDS;
        // update Local Data Area
        out MyLocDS;
        // unlock Local Data Area
        unlock MyLocDS;

         // Implicit Local Data Area *LDA
       dcl-ds *n dtaara(*auto);
         SubField1 char(2) pos(221);
         SubField2 char(15) pos(223);
       end-ds;
