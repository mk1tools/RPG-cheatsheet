**free
// ESEMPIO PER DEFINIZIONE CAMPI CON REFERENCE FIELD
// (c) MarkOneTools - www.markonetools.it - 2023

ctl-opt copyright('MK1')
        decedit('0,')
        indent(' ')
        option(*nodebugio: *srcstmt: *showcpy: *nounref)
        expropts(*resdecpos)
        extbinint(*yes);

dcl-f REFFLDV workstn;
// W_BIGINT          P(18,0)      !!!
// W_BOOLEAN         D(10*ISO-)   !!!
// W_CHAR            A(10)
// W_DATE            D(10*ISO-)
// W_DEC             P(5,2)
// W_INT             P(9,0)       !!!
// W_NUM             P(5,2)
// W_ROWID           === NO       !!!
// W_SMALLINT        P(4,0)       !!!
// W_TIME            T(8*ISO.)
// W_TIMESTMP        Z(26)
// W_VARCHAR         A(10)        !!!
// W2BIGINT          P(20,0)      ! ok
// W2INT             P(10,0)      ! ok
// W2SMALLINT        P(5,0)       ! ok



dcl-f EXDATATYPE rename(EXDATATYPE:REC);
// F_BIGINT          P(20,0)
// F_BOOLEAN         N(1)
// F_CHAR            A(10)
// F_DATE            D(10*ISO-)
// F_DEC             P(5,2)
// F_INT             P(10,0)
// F_NUM             P(5,2)
// F_ROWID           A(40)        !!!
//                   VARYING(2)
// F_SMALLINT        P(5,0)
// F_TIME            T(8*ISO.)
// F_TIMESTMP        Z(26)
// F_VARCHAR         A(10)
//                   VARYING(2)


*inlr = *on;