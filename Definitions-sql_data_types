       // SQL DATA TYPES

         // CLOB files
         dcl-s MyFile sqltype(clob_file);
           // result is ==>
             // path and name 
           MyFile_Name = '/home/Myfile.txt';
             // path length 
           MyFile_nl = %len(%trim(MyFile_name));
             // open mode
           MyFile_fo = SQFRD;   // read
           MyFile_fo = SQFCRT;  // create
           MyFile_fo = SQFOVR;  // create or overwrite
           MyFile_fo = SQFAPP;  // append

            exec sql
              set :Myfile = 'testo di esempio';