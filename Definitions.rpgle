       // VARIABLES
       dcl-s FldAlpha char(15);
       dcl-s FldNum packed(7:2);
       dcl-s wrkItem like(ItemCode);
        // UTF-8 variable
       dcl-s MyDesc char(50) ccsid(*utf8);
        // date/time
       dcl-s DateFld date(*YMD) inz(d'29/01/19');
       dcl-s TimeFld time(*EUR) inz(t'13:00:00');
        // pointers
       dcl-s MyPtr pointer;
       dcl-s MyVar based(MyPtr);

       // INITIALIZATIONS
       dcl-s CurUser char(10) inz(*user);
       dcl-s CurDataJob date inz(*job);
       dcl-s CurDataSys date inz(*sys);
       dcl-s CurOra time inz(*sys);
       dcl-s CurDataOra timestamp inz(*sys);
       dcl-s FldAlpha2 char(15) inz('ABC');
       dcl-s FldNum2 zoned(5) inz(10);

       // KEYWORD
       dcl-s bName char(128) template;       
       dcl-s bSysName char(10) template;
       dcl-s MyLib like(bName);
         // increment length
       dcl-s Amount like(Price:+2);

       // CONSTANTS
         // alphanumeric
       dcl-c CstAlpha const('TENNIS');
         // numeric
       dcl-c CstNum const(12345,67);
         // line feed
       dcl-c xLF const(x'25');

       // ENUMERATIONS
       dcl-enum CASE_TYPE;
         LOWER 'L';
         UPPER 'U';
       end-enum;

       dcl-enum COLOR qualified;
         RED 1;
         BLU 2;
         GREEN 3;
       end-enum;