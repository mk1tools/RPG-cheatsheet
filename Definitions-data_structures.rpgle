       // DATA STRUCTURES
        // internal
        dcl-ds DtaStr;
          FldAlf1 char(15);
          FldAlf2 char(3);
          FldNum1 zoned(5);
        end-ds;
        // external
        dcl-ds Str extname('STREST') inz end-ds;
        dcl-ds MyStruct extname('DB2SAMPLE/EMPLOYEE') end-ds;
          // only keys
        dcl-ds MyKStruct extname('DB2SAMPLE/EMPLOYEE':*key) end-ds;
        // external with rename fields
        dcl-ds StrExt ext prefix(RN) end-ds;
        dcl-ds StrExt ext;
          RNDATBEG extfld(DATBEG);
        end-ds;
        // like
        dcl-ds NewDS likeds(MyDS) inz(*likeds);

        // keyword qualified
        dcl-ds dsItemOld qualified;
          ItemCode char(15);
          Unit char(2);
          Price packed(13:3);
        end-ds;
        dcl-ds dsItemNew qualified;
          ItemCode char(15);
          Description char(50);
          Unit char(2);
          Price packed(13:3);
          PriceProm like(dsItemNew.Price);
        end-ds;
          // example reference to subfield in the qualified ds
          dsItemOld.ItemCode = 'XYZ';
          dsItemOld.Price = 30;
          // example operation between qualified ds
          eval-corr dsItemNew = dsItemOld;  

        // nested
        dcl-ds DSExt qualified;
          subFieldE1 char(1);
          dcl-ds DSInt;
            subFieldI1 char(2);
          end-ds;
        end-ds;
          //example reference to subfield in nested ds
          DSExt.DSInt.subFieldI1 = 'AB';

        // keyword pos
        dcl-ds d_nlsinfo;                     
          d_nls_ccsid int(10) pos(1);
          d_nls_cntry char(2) pos(5);
          d_nls_lang  char(3) pos(7);
        end-ds; 
        // keyword overlay e array
        dcl-ds  dsAlphabet;
          wholeAlp char(26) inz('ABCDEFGHIJKLMNOPQRSTUVWXYZ');
          letter char(1) dim(26) overlay(whole);
        end-ds; 
        dcl-ds FFD;
          field char(140) dim(200);            
          name char(130) overlay(field);
          sys_cname char(10) overlay(field:*next);
        end-ds; 
        // key data structure. It is implicitly qualified
        dcl-ds MyKey likerec(MyRecord:*key);

        // keyword alias
         // the RPG compiler use the alias names for the subfields
        dcl-ds MyDS extname('MYTAB') alias end-ds;

        // keyword template
         // the definition is to be used only for further LIKE or LIKEDS definitions
        dcl-ds MyDS extname('MYTAB') template end-ds;

        // date/time
        // LastUpd è un timestamp. UpdDate e UpdTime sono rispettivamente la porzione data e ora del timestamp.
        //  Devono essere in formato *ISO affinché siano compatibili con il formato del timestamp
        dcl-ds; 
          LastUpd timestamp;
          UpdDate date(*ISO) overlay(LastUpd);
          UpdTime time(*ISO) overlay(LastUpd:12);
        end-ds;