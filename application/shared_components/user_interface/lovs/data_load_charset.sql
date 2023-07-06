prompt --application/shared_components/user_interface/lovs/data_load_charset
begin
--   Manifest
--     DATA_LOAD_CHARSET
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.1'
,p_default_workspace_id=>5027543859619014164
,p_default_application_id=>129733
,p_default_id_offset=>29154433241069204883
,p_default_owner=>'WKSP_WORKPLACETESTES'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(44706215679584136993)
,p_lov_name=>'DATA_LOAD_CHARSET'
,p_lov_query=>'.'||wwv_flow_imp.id(44706215679584136993)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(44706216052519136992)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Unicode UTF-16 Little Endian'
,p_lov_return_value=>'utf-16le'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(44706216407714136992)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Unicode UTF-16 Big Endian'
,p_lov_return_value=>'utf-16be'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(44706216886843136992)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'US-ASCII'
,p_lov_return_value=>'us-ascii'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(44706217257352136992)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('ISO-8859-6 - \00C1rabe')
,p_lov_return_value=>'iso-8859-6'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(44706217598963136992)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('Windows 1256 - \00C1rabe')
,p_lov_return_value=>'windows-1256'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(44706218023868136992)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('Big5 - Chin\00EAs')
,p_lov_return_value=>'big5'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(44706218424557136991)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('GBK - Chin\00EAs')
,p_lov_return_value=>'gbk'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(44706218828944136991)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('ISO-8859-5 - Cir\00EDlico')
,p_lov_return_value=>'iso-8859-5'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(44706219224325136991)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('KOI8-R - Cir\00EDlico')
,p_lov_return_value=>'koi8-r'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(44706219596579136991)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('KOI8-U - Cir\00EDlico')
,p_lov_return_value=>'koi8-u'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(44706220068167136991)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('Windows 1251 - Cir\00EDlico')
,p_lov_return_value=>'windows-1251'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(44706220484603136991)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'ISO-8859-2 - Europa Oriental'
,p_lov_return_value=>'iso-8859-2'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(44706220813555136991)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Windows 1250 - Europa Oriental'
,p_lov_return_value=>'windows-1250'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(44706221193612136990)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'ISO-8859-7 - Grego'
,p_lov_return_value=>'iso-8859-7'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(44706221618468136990)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Windows 1253 - Grego'
,p_lov_return_value=>'windows-1253'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(44706222072003136990)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'ISO-8859-8-i - Hebraico'
,p_lov_return_value=>'iso-8859-8-i'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(44706222483678136990)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Windows 1255 - Hebraico'
,p_lov_return_value=>'windows-1255'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(44706222882562136990)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('EUC - Japon\00EAs')
,p_lov_return_value=>'euc-jp'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(44706223217590136990)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('Shift JIS - Japon\00EAs')
,p_lov_return_value=>'shift_jis'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(44706223610790136990)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'EUC - Coreano'
,p_lov_return_value=>'euc-kr'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(44706224021145136989)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'ISO-8859-4 - Norte da Europa'
,p_lov_return_value=>'iso-8859-4'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(44706224402242136989)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Windows 1257 - Norte da Europa'
,p_lov_return_value=>'windows-1257'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(44706224819112136989)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'ISO-8859-3 - Sul da Europa'
,p_lov_return_value=>'iso-8859-3'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(44706225252466136989)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('TIS-620 - Tailand\00EAs')
,p_lov_return_value=>'tis-620'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(44706225597009136989)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'ISO-8859-9 - Turco'
,p_lov_return_value=>'iso-8859-9'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(44706226082088136989)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Windows 1254 - Turco'
,p_lov_return_value=>'windows-1254'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(44706226394787136989)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Unicode UTF-8'
,p_lov_return_value=>'utf-8'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(44706226839259136988)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Windows 1258 - Vietnamita'
,p_lov_return_value=>'windows-1258'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(44706227231762136988)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'ISO-8859-1 - Europa Ocidental'
,p_lov_return_value=>'iso-8859-1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(44706227595214136988)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Windows 1252 - Europa Ocidental'
,p_lov_return_value=>'windows-1252'
);
wwv_flow_imp.component_end;
end;
/
