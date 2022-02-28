       // character variables
       eval MyVar = wsField;

       // replacement of portion of variable
       eval %subst(MyVar:1:2) = 'AA';

       //assigning an expression
       eval MyVar = 'select * from ' + %trim(TableName);

       // concatenating variables with superscript
       sqlstm = 'select lastname from employee +
                   where empno = ' + '''' + ws_code + '''';
        // or
       sqlstm = 'select lastname from employee +
                   where empno = ''' + ws_code + '''';
        // or
       dcl-c SS const(''''); 
       sqlstm = 'select lastname from employee +
                   where empno = ' + SS + ws_code + SS;            

       // concatenating variables with blank
       sqlstm = 'select lastname from employee +
                   where empno = '' ''';
        // or
       dcl-c SS const(''''); 
       sqlstm = 'select lastname from employee +
                   where empno = ' + SS + ' ' + SS; 
        // or
       dcl-c BL const(''' ''');
       sqlstm = 'select lastname from employee +
                   where empno = ' + BL;

       // right assignment
       evalr %subst(TO10:6) = From5;

       // example number to character
       MyNbr = 12345.67;
       To10  = *all'x';
        // to10 contains '   1234567'
       evalr to10 = %editc(mynbr:'X');
        // to10 contains '0001234567'
       evalr to10 = '0000000000' + %trim(%editc(myNbr:'X'));
        // to10 contains '0012345,67'
       evalr to10 = '0000000000' + %trim(%editc(myNbr:'3'));

       // reverse scan %scanr
       Path = '/home/qpgmr/123.txt';
       LastSlash = %scanr('/':Path);
       if LastSlash = *zeros;
         FileName = Path;
       else;
         FileName = %subst(Path:LastSlash+1);
       endif;       

       // translate %xlate
       OutChar2 = %xlate('abcde':'ABCDE':CharData:1);

       // substring %subst
       FileName = %subst(Path : pos1+1 : pos2-1);