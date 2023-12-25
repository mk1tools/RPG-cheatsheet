       //--- Program Status DS --- START ---
       dcl-ds psds PSDS;
        // 1-10 *proc - Program or module name
        ps_Program char(10) pos(1);
        // 11-15 *status - Status code
        //  https://www.ibm.com/docs/en/i/7.4?topic=structure-program-status-codes#ptacode
        ps_Status zoned(5) pos(11);
        // 16-20 - Previous status code
        ps_StatusPrev zoned(5) pos(16);
        // 21-28 - RPG source listing line number or statement number. See also 354-355
        ps_SeqN char(8) pos(21);
        // 29-36 *routine - Name of the RPG routine in which the exception occurred
        //   *INIT/*DETL/*GETIN/*TOTC/*TOTL/*DETC/*OFL/*TERM/*ROUTINE
        ps_Routine char(8) pos(29);
        // 37-39 *parms/%parms - Number of parameters passed to this program. -1 if not available
        ps_Parm zoned(3) pos(37);
        // 40-46 - Exception type (CPF or MCH) + exception number
        ps_ErrID char(7) pos(40);
        // 47-50 - MI/ODT (machine instruction / object definition (Reserved)
        ps_MIODT char(4) pos(47);
        // 51-80 - Work area for messages
        ps_Msg char(30) pos(51);
        // 81-90 - Name of library in which the program is located
        ps_Lib char(10) pos(81);
        // 91-170 - Retrieved exception data. CPF msg when *status = 09999
        ps_ErrMsg char(80) pos(91);
        // 171-174 - Identification of the exception that caused RNX9001
        ps_ErrIDR char(4) pos(171);
        // 175-184 - Name of file on which the last file operation occured
        ps_File char(10) pos(175);
        // 185-190 - Unused
        ps_Fil1 char(6) pos(185);
        // 191-198 - Date (*date format) job entered the system. Same as 270-275
        ps_DateJobYY char(8) pos(191);
        // 199-200 - First 2 digits of a 4-digit year (*year format). Same as 270-275
        ps_Century zoned(2) pos(199);
        // 201-208 - Name of file on which the last file operation occured. See 175-184
        ps_File8 char(8) pos(201);
        // 209-243 - Status information on the last file used (status code, RPG opcode,
        //   RPG routine, source listing number or statement number, record name)
        ps_StatusF char(35) pos(209);
        // 209-213 - Status information on the last file (Code)
        ps_StatusFC char(5) overlay(ps_statusf);
        // 244-253 - Job name
        ps_Job char(10) pos(244);
        // 254-263 - User name from the user profile. See also 358-367
        ps_User char(10) pos(254);
        // 264-269 - Job number
        ps_JobNbr zoned(6) pos(264);
        // 270-275 - Date (in UDATE format) the program started running. Same as 191-198
        ps_DateJob zoned(6) pos(270);
        // 276-281 - Date of program running (the system date in UDATE format)
        ps_DateSys zoned(6) pos(276);
        // 282-287 - Time of program running in the format hhmmss.
        ps_Time zoned(6) pos(282);
        // 288-293 - Date (in UDATE format) the program was compiled.
        ps_DateCmp char(6) pos(288);
        // 294-299 - Time (in the format hhmmss) the program was compiled
        ps_TimeCmp char(6) pos(294);
        // 300-303 - Level of the compiler
        ps_LvlCmp char(4) pos(300);
        // 304-313 - Source file name
        ps_SrcF char(10) pos(304);
        // 314-323 - Source library name
        ps_SrcL char(10) pos(314);
        // 324-333 - Source file member name
        ps_SrcM char(10) pos(324);
        // 334-343 - Program containing procedure
        ps_PgmP char(10) pos(334);
        // 344-353 - Module containing procedure
        ps_ModP char(10) pos(344);
        // 354-355 - Source Id matching the statement number from positions 21-28
        ps_SeqN2 bindec(2) pos(354);
        // 356-357 - Source Id matching the statement number from positions 228-235
        ps_SeqN3 bindec(2) pos(356);
        // 358-367 - Current user name from the user profile. See also 254-263
        ps_CurUser char(10) pos(358);
        // 368-371 - External error code
        ps_ExtErr int(10) pos(368);
        // 372-379 - XML elements set by operation XML-INTO, DATA-INTO
        ps_XMLElem int(20) pos(372);
        // 380-395 - internal job ID (da 7.2)
        ps_IntJobID char(16) pos(380);
        // 396-403 - system name (da 7.2)
        ps_SysName char(8) pos(396);
        // 404-429 - Unused
        ps_Fil2 char(50) pos(404);
       end-ds;
       //--- Program Status DS --- END ---