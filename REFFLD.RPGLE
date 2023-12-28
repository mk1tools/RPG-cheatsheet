**free
// ESEMPIO PER DEFINIZIONE CAMPI CON REFERENCE FIELD
// (c) MarkOneTools - www.markonetools.it - 2023

ctl-opt copyright('MK1')
        decedit('0,')
        indent(' ')
        option(*nodebugio: *srcstmt: *showcpy: *nounref)
        expropts(*resdecpos)
        extbinint(*yes);

//--> display file definition
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

//--> data structure based on format display file
dcl-ds rFMT01 likerec(FMT01:*all) inz;
// W_BIGINT          S(18,0)
// W_BOOLEAN         D(10*ISO-)   !!!
// W_CHAR            A(10)
// W_DATE            D(10*ISO-)
// W_DEC             S(5,2)
// W_INT             S(9,0)       !!!
// W_NUM             S(5,2)
// W_ROWID           === NO       !!!
// W_SMALLINT        S(4,0)       !!!
// W_TIME            T(8*ISO.)
// W_TIMESTMP        Z(26)
// W_VARCHAR         A(10)        !!!
// W2BIGINT          S(20,0)      ! ok
// W2INT             S(10,0)      ! ok
// W2SMALLINT        S(5,0)       ! ok

//--> database file definition
dcl-f DATATYPE usage(*input:*output);
// F_BIGINT          P(20,0)
// F_BOOLEAN         N(1)
// F_CHAR            A(10)
// F_DATE            D(10*ISO-)
// F_DEC             P(5,2)
// F_INT             P(10,0)
//                   P(9,0) se extbinint(*no)
// F_NUM             P(5,2)
// F_ROWID           A(40)        !!! a runtime CPF428A
//                   VARYING(2)       tipo dati gestibile solo con embedded SQL
// F_SMALLINT        P(5,0)
//                   P(4,0) se extbinint(*no)
// F_TIME            T(8*ISO.)
// F_TIMESTMP        Z(26)
// F_VARCHAR         A(10)
//                   VARYING(2)

//--> database file definition (view)
dcl-f DATATYPE_1 rename(RDTYPE:RDTYPEV1) usage(*input:*output) prefix('V1');
// V1F_BIGINT          P(20,0)
// V1F_BOOLEAN         N(1)
// V1F_CHAR            A(10)
// V1F_DATE            D(10*ISO-)
// V1F_DEC             P(5,2)
// V1F_INT             P(10,0)
//                     P(9,0) se extbinint(*no)
// V1F_NUM             P(5,2)
// V1F_SMALLINT        P(5,0)
//                     P(4,0) se extbinint(*no)
// V1F_TIME            T(8*ISO.)
// V1F_TIMESTMP        Z(26)
// V1F_VARCHAR         A(10)
//                     VARYING(2)

//--> data structure based on format database file
dcl-ds dsDataType1 extname('DATATYPE_1') qualified inz end-ds;
// F_BIGINT          I(20)
// F_BOOLEAN         N(1)
// F_CHAR            A(10)
// F_DATE            D(10*ISO-)
// F_DEC             P(5,2)
// F_INT             I(10,0)
//                   I(9,0) se extbinint(*no) ?
// F_NUM             S(5,2)
// F_ROWID           A(40)
//                   VARYING(2)
// F_SMALLINT        I(5,0)
//                   I(4,0) se extbinint(*no) ?
// F_TIME            T(8*ISO.)
// F_TIMESTMP        Z(26)
// F_VARCHAR         A(10)
//                   VARYING(2)

// limit test
F_CHAR = 'STD';
W_INT = 999999999;
W_SMALLINT = 9999;

F_INT = W_INT;
F_SMALLINT = W_SMALLINT;

write RDTYPE;

F_CHAR = 'ADJ';
W2INT = 9999999999;
W2SMALLINT = 99999;

F_INT = W2INT;
F_SMALLINT = W2SMALLINT; // a runtime overflow

write RDTYPE;

*inlr = *on;