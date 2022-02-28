       // API error parameter
       dcl-ds API_Error inz;                                                                        
        //  size of data structure                                                         
        //   0: exception is returned to the caller                                                                                               
        //   8-11: exception is NOT returned to the caller
        //         and API_error return the message ID
        //   >=12: exception is NOT returned to the caller
        //         and API_error return the message ID and the message data
        //   max 32783                                                                              
        errDSLen int(10) inz(%size(api_error));                                                     
        //  number of bytes returned from API                                                              
        //  0: API success                                                           
        //  >0: API error. The value of the subfield specifies the amount 
        //                 of information returned in the error parameter                                                                                  
        errDSRtnLen int(10) inz(0);                                                                 
        //  message ID                                                              
        errDSMsgID char(7);                                                                         
        // reserved 
        errReserved char(1) inz(x'00');                                                             
        //  message data (MSGDTA)                                     
        //   the length of the data in this subfield is the value of                     
        //   errDSRtnLen - 16                                                                       
        //   max 32767                                                                              
        errMsgData char(240);                                                                       
       end-ds;                                                                                      

       // EXAMPLE PROTOTYPES

       // API write to joblog
       dcl-pr WriteToJobLog int(10) extproc('Qp0zLprintf');
         *n pointer value options(*string:*nopass);
       end-pr;

       WriteToJobLog('Nel mezzo del cammin di nostra vita' + x'25');

       // API sleep
       dcl-Pr sleep int(10) extproc('sleep');
         *n uns(10) value;
       end-pr;       