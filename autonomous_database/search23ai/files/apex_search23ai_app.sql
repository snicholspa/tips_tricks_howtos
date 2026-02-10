prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>63196332793876848
,p_default_application_id=>100
,p_default_id_offset=>149414392472314861
,p_default_owner=>'SEARCH23AI'
);
end;
/
 
prompt APPLICATION 100 - Search 23ai
--
-- Application Export:
--   Application:     100
--   Name:            Search 23ai
--   Date and Time:   22:49 Monday February 9, 2026
--   Exported By:     SEARCH23AI
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     28
--       Items:                   91
--       Validations:              2
--       Processes:               29
--       Regions:                 72
--       Buttons:                 36
--       Dynamic Actions:         12
--     Shared Components:
--       Logic:
--         Items:                  1
--         Processes:              1
--         Build Options:          3
--       Navigation:
--         Lists:                  3
--         Breadcrumbs:            1
--           Entries:             18
--       Security:
--         Authentication:         1
--         Authorization:          1
--       User Interface:
--         Themes:                 1
--         Templates:
--         LOVs:                   6
--         Plug-ins:               1
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--   Version:         24.2.11
--   Instance ID:     8796067571353157
--

prompt --application/delete_application
begin
wwv_flow_imp.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'SEARCH23AI')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Search 23ai')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'AISEARCH102105100')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'7843CCD5D2E4919AF6EFAFF8F660B54CA31B49A48EFF03D79B83A0AB1EBCA8E3'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'24.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(684135204756772342)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'Search 23ai'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'AI Examples'
,p_substitution_string_02=>'G_URL'
,p_substitution_value_02=>'https://objectstorage.us-ashburn-1.oraclecloud.com'
,p_substitution_string_03=>'TENANCY_NAME'
,p_substitution_value_03=>'natdcshjumpstartprod'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>7
,p_version_scn=>46234685961588
,p_print_server_type=>'NATIVE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'Y'
,p_pwa_manifest_display=>'standalone'
,p_pwa_manifest_orientation=>'any'
,p_pwa_apple_status_bar_style=>'default'
,p_pwa_is_push_enabled=>'Y'
,p_pwa_push_credential_id=>wwv_flow_imp.id(112610419253750972)
,p_ai_remote_server_id=>wwv_flow_imp.id(99325799465369351)
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_imp_shared.create_user_interface(
 p_id=>wwv_flow_imp.id(100)
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:25:&APP_SESSION.::&DEBUG.:::'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>true
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(684136073017772366)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2467739217141810545
,p_nav_list_template_options=>'#DEFAULT#:js-defaultCollapsed:js-navCollapsed--hidden:t-TreeNav--styleA'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(684425267777773608)
,p_nav_bar_list_template_id=>2847543055748234966
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --workspace/credentials/credentials_for_openai_provider
begin
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(99325530960369344)
,p_name=>'Credentials for openai_provider'
,p_static_id=>'credentials_for_openai_provider'
,p_authentication_type=>'HTTP_HEADER'
,p_valid_for_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'https://api.openai.com/v1',
''))
,p_prompt_on_install=>true
);
end;
/
prompt --workspace/credentials/app_133_push_notifications_credentials
begin
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(112610419253750972)
,p_name=>'App 133 Push Notifications Credentials'
,p_static_id=>'App_133_Push_Notifications_Credentials'
,p_authentication_type=>'KEY_PAIR'
,p_prompt_on_install=>false
);
end;
/
prompt --workspace/credentials/credentials_for_oci_api_key
begin
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(213902547940969678)
,p_name=>'Credentials for OCI API KEY'
,p_static_id=>'credentials_for_list_compartments_in_tenancy'
,p_authentication_type=>'OCI'
,p_namespace=>'ocid1.tenancy.oc1..aaaaaaaapox4qeg75qpeqjruuqxe7ybflk5utmt5cwwtdukuphkmise4h3hq'
,p_prompt_on_install=>true
);
end;
/
prompt --workspace/remote_servers/openai_provider
begin
wwv_imp_workspace.create_remote_server(
 p_id=>wwv_flow_imp.id(99325799465369351)
,p_name=>'openAI_provider'
,p_static_id=>'openai_provider'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('openai_provider'),'https://api.openai.com/v1')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('openai_provider'),'')
,p_server_type=>'GENERATIVE_AI'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('openai_provider'),'')
,p_credential_id=>wwv_flow_imp.id(99325530960369344)
,p_remote_sql_default_schema=>nvl(wwv_flow_application_install.get_remote_server_default_db('openai_provider'),'')
,p_mysql_sql_modes=>nvl(wwv_flow_application_install.get_remote_server_sql_mode('openai_provider'),'')
,p_prompt_on_install=>true
,p_ai_provider_type=>'OPENAI'
,p_ai_is_builder_service=>true
,p_ai_model_name=>nvl(wwv_flow_application_install.get_remote_server_ai_model('openai_provider'),'gpt-3.5-turbo')
,p_ai_http_headers=>nvl(wwv_flow_application_install.get_remote_server_ai_headers('openai_provider'),'')
,p_ai_attributes=>nvl(wwv_flow_application_install.get_remote_server_ai_attrs('openai_provider'),'')
);
end;
/
prompt --workspace/remote_servers/identity_us_ashburn_1_oci_oraclecloud_com
begin
wwv_imp_workspace.create_remote_server(
 p_id=>wwv_flow_imp.id(213902830125969675)
,p_name=>'identity-us-ashburn-1-oci-oraclecloud-com'
,p_static_id=>'identity_us_ashburn_1_oci_oraclecloud_com'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('identity_us_ashburn_1_oci_oraclecloud_com'),'https://identity.us-ashburn-1.oci.oraclecloud.com/')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('identity_us_ashburn_1_oci_oraclecloud_com'),'')
,p_server_type=>'WEB_SERVICE'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('identity_us_ashburn_1_oci_oraclecloud_com'),'')
,p_remote_sql_default_schema=>nvl(wwv_flow_application_install.get_remote_server_default_db('identity_us_ashburn_1_oci_oraclecloud_com'),'')
,p_mysql_sql_modes=>nvl(wwv_flow_application_install.get_remote_server_sql_mode('identity_us_ashburn_1_oci_oraclecloud_com'),'')
,p_prompt_on_install=>false
,p_ai_is_builder_service=>false
,p_ai_model_name=>nvl(wwv_flow_application_install.get_remote_server_ai_model('identity_us_ashburn_1_oci_oraclecloud_com'),'')
,p_ai_http_headers=>nvl(wwv_flow_application_install.get_remote_server_ai_headers('identity_us_ashburn_1_oci_oraclecloud_com'),'')
,p_ai_attributes=>nvl(wwv_flow_application_install.get_remote_server_ai_attrs('identity_us_ashburn_1_oci_oraclecloud_com'),'')
);
end;
/
prompt --workspace/remote_servers/objectstorage_us_ashburn_1_oraclecloud_com_n_natdcshjumpstartprod
begin
wwv_imp_workspace.create_remote_server(
 p_id=>wwv_flow_imp.id(214300772227894649)
,p_name=>'objectstorage-us-ashburn-1-oraclecloud-com-n-natdcshjumpstartprod'
,p_static_id=>'objectstorage_us_ashburn_1_oraclecloud_com_n_natdcshjumpstartprod'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('objectstorage_us_ashburn_1_oraclecloud_com_n_natdcshjumpstartprod'),'https://objectstorage.us-ashburn-1.oraclecloud.com/n/natdcshjumpstartprod/')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('objectstorage_us_ashburn_1_oraclecloud_com_n_natdcshjumpstartprod'),'')
,p_server_type=>'WEB_SERVICE'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('objectstorage_us_ashburn_1_oraclecloud_com_n_natdcshjumpstartprod'),'')
,p_remote_sql_default_schema=>nvl(wwv_flow_application_install.get_remote_server_default_db('objectstorage_us_ashburn_1_oraclecloud_com_n_natdcshjumpstartprod'),'')
,p_mysql_sql_modes=>nvl(wwv_flow_application_install.get_remote_server_sql_mode('objectstorage_us_ashburn_1_oraclecloud_com_n_natdcshjumpstartprod'),'')
,p_prompt_on_install=>false
,p_ai_is_builder_service=>false
,p_ai_model_name=>nvl(wwv_flow_application_install.get_remote_server_ai_model('objectstorage_us_ashburn_1_oraclecloud_com_n_natdcshjumpstartprod'),'')
,p_ai_http_headers=>nvl(wwv_flow_application_install.get_remote_server_ai_headers('objectstorage_us_ashburn_1_oraclecloud_com_n_natdcshjumpstartprod'),'')
,p_ai_attributes=>nvl(wwv_flow_application_install.get_remote_server_ai_attrs('objectstorage_us_ashburn_1_oraclecloud_com_n_natdcshjumpstartprod'),'')
);
end;
/
prompt --application/shared_components/data_profiles/list_compartments_in_tenancy
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(213903033916969672)
,p_name=>'List Compartments in Tenancy'
,p_format=>'JSON'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(213903214361969664)
,p_data_profile_id=>wwv_flow_imp.id(213903033916969672)
,p_name=>'ID'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'id'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(213903549298969662)
,p_data_profile_id=>wwv_flow_imp.id(213903033916969672)
,p_name=>'NAME'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'name'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(213903872096969661)
,p_data_profile_id=>wwv_flow_imp.id(213903033916969672)
,p_name=>'DEFINEDTAGS_ORACLE_TAGS_CREATEDBY'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'definedTags."Oracle-Tags".CreatedBy'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(213904105774969660)
,p_data_profile_id=>wwv_flow_imp.id(213903033916969672)
,p_name=>'DEFINEDTAGS_ORACLE_TAGS_CREATEDON'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'TIMESTAMP WITH TIME ZONE'
,p_format_mask=>'YYYY"-"MM"-"DD"T"HH24":"MI:SS.FF9TZR'
,p_has_time_zone=>true
,p_selector=>'definedTags."Oracle-Tags".CreatedOn'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(213904419066969659)
,p_data_profile_id=>wwv_flow_imp.id(213903033916969672)
,p_name=>'DESCRIPTION'
,p_sequence=>5
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'description'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(213904725734969659)
,p_data_profile_id=>wwv_flow_imp.id(213903033916969672)
,p_name=>'TIMECREATED'
,p_sequence=>6
,p_column_type=>'DATA'
,p_data_type=>'TIMESTAMP WITH TIME ZONE'
,p_format_mask=>'YYYY"-"MM"-"DD"T"HH24":"MI:SS.FF9TZR'
,p_has_time_zone=>true
,p_selector=>'timeCreated'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(213905097990969658)
,p_data_profile_id=>wwv_flow_imp.id(213903033916969672)
,p_name=>'COMPARTMENTID'
,p_sequence=>7
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'compartmentId'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(213905338228969657)
,p_data_profile_id=>wwv_flow_imp.id(213903033916969672)
,p_name=>'LIFECYCLESTATE'
,p_sequence=>8
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'lifecycleState'
,p_remote_data_type=>'string'
);
end;
/
prompt --application/shared_components/data_profiles/list_buckets_in_compartment
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(214300969840894642)
,p_name=>'List Buckets in Compartment'
,p_format=>'JSON'
,p_has_header_row=>false
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(214306902082864058)
,p_data_profile_id=>wwv_flow_imp.id(214300969840894642)
,p_name=>'ETAG'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'etag'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(214307480952864057)
,p_data_profile_id=>wwv_flow_imp.id(214300969840894642)
,p_name=>'NAME'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'name'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(214307949780864055)
,p_data_profile_id=>wwv_flow_imp.id(214300969840894642)
,p_name=>'CREATEDBY'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'createdBy'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(214308499235864054)
,p_data_profile_id=>wwv_flow_imp.id(214300969840894642)
,p_name=>'NAMESPACE'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'namespace'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(214308997490864053)
,p_data_profile_id=>wwv_flow_imp.id(214300969840894642)
,p_name=>'DEFINEDTAGS'
,p_sequence=>5
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'definedTags'
,p_remote_data_type=>'null'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(214309491937864051)
,p_data_profile_id=>wwv_flow_imp.id(214300969840894642)
,p_name=>'TIMECREATED'
,p_sequence=>6
,p_column_type=>'DATA'
,p_data_type=>'TIMESTAMP WITH TIME ZONE'
,p_format_mask=>'YYYY"-"MM"-"DD"T"HH24":"MI:SS.FF9TZR'
,p_has_time_zone=>true
,p_selector=>'timeCreated'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(214309949567864050)
,p_data_profile_id=>wwv_flow_imp.id(214300969840894642)
,p_name=>'FREEFORMTAGS'
,p_sequence=>7
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'freeformTags'
,p_remote_data_type=>'null'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(214310491597864049)
,p_data_profile_id=>wwv_flow_imp.id(214300969840894642)
,p_name=>'COMPARTMENTID'
,p_sequence=>8
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'compartmentId'
,p_remote_data_type=>'string'
);
end;
/
prompt --application/shared_components/data_profiles/list_object_in_bucket
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(214312143683848947)
,p_name=>'List Object In Bucket'
,p_format=>'JSON'
,p_row_selector=>'objects'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(214312327203848946)
,p_data_profile_id=>wwv_flow_imp.id(214312143683848947)
,p_name=>'NAME'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'name'
,p_remote_data_type=>'string'
);
end;
/
prompt --application/shared_components/web_sources/list_compartments_in_tenancy
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(213905638422969653)
,p_name=>'List Compartments in Tenancy'
,p_static_id=>'list_compartments_in_tenancy'
,p_web_source_type=>'NATIVE_OCI'
,p_data_profile_id=>wwv_flow_imp.id(213903033916969672)
,p_remote_server_id=>wwv_flow_imp.id(213902830125969675)
,p_url_path_prefix=>'/20160918/compartments'
,p_credential_id=>wwv_flow_imp.id(213902547940969678)
,p_version_scn=>45772720812635
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(213906294029969643)
,p_web_src_module_id=>wwv_flow_imp.id(213905638422969653)
,p_name=>'compartmentId'
,p_param_type=>'QUERY_STRING'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'ocid1.tenancy.oc1..aaaaaaaapox4qeg75qpeqjruuqxe7ybflk5utmt5cwwtdukuphkmise4h3hq'
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(213905879463969649)
,p_web_src_module_id=>wwv_flow_imp.id(213905638422969653)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
end;
/
prompt --application/shared_components/web_sources/list_buckets_in_compartment
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(214302032054894629)
,p_name=>'List Buckets in Compartment'
,p_static_id=>'list_buckets_in_compartment'
,p_web_source_type=>'NATIVE_OCI'
,p_data_profile_id=>wwv_flow_imp.id(214300969840894642)
,p_remote_server_id=>wwv_flow_imp.id(214300772227894649)
,p_url_path_prefix=>'/b/'
,p_credential_id=>wwv_flow_imp.id(213902547940969678)
,p_version_scn=>45772722347649
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(214303914063887388)
,p_web_src_module_id=>wwv_flow_imp.id(214302032054894629)
,p_name=>'compartmentId'
,p_param_type=>'QUERY_STRING'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'ocid1.compartment.oc1..aaaaaaaak6srivkkpg3uhv7fst2nfkoqsqpyrtzvuscy7b7lgrt3imrpp4fq'
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(214302279144894621)
,p_web_src_module_id=>wwv_flow_imp.id(214302032054894629)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(214302613192894616)
,p_web_src_module_id=>wwv_flow_imp.id(214302032054894629)
,p_operation=>'POST'
,p_database_operation=>'INSERT'
,p_url_pattern=>'.'
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(214303023877894615)
,p_web_src_module_id=>wwv_flow_imp.id(214302032054894629)
,p_operation=>'PUT'
,p_database_operation=>'UPDATE'
,p_url_pattern=>'/:id'
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(214303454831894614)
,p_web_src_module_id=>wwv_flow_imp.id(214302032054894629)
,p_operation=>'DELETE'
,p_database_operation=>'DELETE'
,p_url_pattern=>'/:id'
,p_allow_fetch_all_rows=>false
);
end;
/
prompt --application/shared_components/web_sources/list_object_in_bucket
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(214312603154848942)
,p_name=>'List Object In Bucket'
,p_static_id=>'list_object_in_bucket'
,p_web_source_type=>'NATIVE_OCI'
,p_data_profile_id=>wwv_flow_imp.id(214312143683848947)
,p_remote_server_id=>wwv_flow_imp.id(214300772227894649)
,p_url_path_prefix=>'b/:BUCKET_NAME/o'
,p_credential_id=>wwv_flow_imp.id(213902547940969678)
,p_version_scn=>45772722538000
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(214313111454848939)
,p_web_src_module_id=>wwv_flow_imp.id(214312603154848942)
,p_name=>'BUCKET_NAME'
,p_param_type=>'URL_PATTERN'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'vector'
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(214312863065848940)
,p_web_src_module_id=>wwv_flow_imp.id(214312603154848942)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(684136073017772366)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>46234685797906
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(282012476999294493)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home Page'
,p_list_item_link_target=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'25'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(276539073057125213)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'View My Data'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(673416070471446783)
,p_list_item_display_sequence=>170
,p_list_item_link_text=>'View PDF Documents'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-binoculars'
,p_parent_list_item_id=>wwv_flow_imp.id(276539073057125213)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'16'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(500243234266800681)
,p_list_item_display_sequence=>180
,p_list_item_link_text=>'View Image Documents'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa fa-file-image-o'
,p_parent_list_item_id=>wwv_flow_imp.id(276539073057125213)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'5'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(273739080567156446)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Search'
,p_list_item_icon=>'fa-cloud-search'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(666620696623819301)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Search A Document'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-clipboard-search'
,p_parent_list_item_id=>wwv_flow_imp.id(273739080567156446)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(673510491820531767)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Search Across Documents'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-cloud-search'
,p_parent_list_item_id=>wwv_flow_imp.id(273739080567156446)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'12'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(685038064785902714)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Vector Search with Keyword'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-ai-sparkle-generate-document'
,p_parent_list_item_id=>wwv_flow_imp.id(273739080567156446)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(649638074545118001)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Global Search'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-cloud-search'
,p_parent_list_item_id=>wwv_flow_imp.id(273739080567156446)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'10'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(692838318129723155)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Hybrid Search'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table-search'
,p_parent_list_item_id=>wwv_flow_imp.id(273739080567156446)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'8'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(670156134762670883)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Search Conversations'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table-search'
,p_parent_list_item_id=>wwv_flow_imp.id(273739080567156446)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(671281433218034322)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Add Documents '
,p_list_item_link_target=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-ai-sparkle-generate-document'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'13,14'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(251098543735878902)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Run Agent Team'
,p_list_item_link_target=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-workflow'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'11'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(214313753025843228)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Maintain Object Storage'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-files-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'9'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(274939029769142244)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Configure'
,p_list_item_icon=>'fa-tools'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(292064233469252986)
,p_list_item_display_sequence=>75
,p_list_item_link_text=>'Update AI Agents'
,p_list_item_link_target=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table-pointer'
,p_parent_list_item_id=>wwv_flow_imp.id(274939029769142244)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'29'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(673641232441238312)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>'Prompt Instructions'
,p_list_item_link_target=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-ai-prompt'
,p_parent_list_item_id=>wwv_flow_imp.id(274939029769142244)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'17'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(675003210701881150)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>'AI Configuration'
,p_list_item_link_target=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-ai'
,p_parent_list_item_id=>wwv_flow_imp.id(274939029769142244)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'19'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(670180409786035796)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>'Domains'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table'
,p_parent_list_item_id=>wwv_flow_imp.id(274939029769142244)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'7'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(684425267777773608)
,p_name=>'Navigation Bar'
,p_list_status=>'PUBLIC'
,p_version_scn=>41590306147472
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(684447180947773855)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Install App'
,p_list_item_link_target=>'#action$a-pwa-install'
,p_list_item_icon=>'fa-cloud-download'
,p_list_text_02=>'a-pwaInstall'
,p_list_item_current_type=>'NEVER'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(684447534738773855)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(684455526874773892)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'Settings'
,p_list_item_link_target=>'f?p=&APP_ID.:20000:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-gear'
,p_parent_list_item_id=>wwv_flow_imp.id(684447534738773855)
,p_required_patch=>wwv_flow_imp.id(684449211438773863)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(684447983080773856)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(684447534738773855)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(684448407603773856)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(684447534738773855)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/user_settings
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(684452846670773877)
,p_name=>'User Settings'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(684449211438773863)
,p_version_scn=>41590306146913
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(684453207480773879)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Push Notifications'
,p_list_item_link_target=>'f?p=&APP_ID.:20010:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-bell-o'
,p_list_text_01=>'Configure whether you want to receive push notifications on this device.'
,p_list_text_02=>'<span class="a-pwaPush--state"></span>'
,p_required_patch=>wwv_flow_imp.id(684448930849773860)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/listentry
begin
null;
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000000017352474200AECE1CE9000008924944415458477D577D8C14E51D7E6666E76377766FEF901E0404697AF54A0388ED2987508E784DD5087F484908F5388ABDF6';
wwv_flow_imp.g_varchar2_table(2) := '90520A6DDADA466313536B9A349226B54139AEEA45C4DADA26589180D5624E252D5AA8B557EF848A78C055B8AF9DD9D999D9699EDFECACF741FBFE73BB7BEFBCEFF37B9EE7F731CA631B3B23C3B2A0280AA6AE2802BCA28B282AC34ADB98B825F07D0481';
wwv_flow_imp.g_varchar2_table(3) := '0F55D390D274944A4598661A8A3AFD1C9E5B741DA8AA06C334275DA3746FFE5614063E4C2B83A2330E2DA5C3302DD9C48B4B9E277F75C39403B808D62F7948E906DCC21832D99A498746E5321C671C866141370C445104A73006424BDBB949C12A3D1DDF';
wwv_flow_imp.g_varchar2_table(4) := '8D0AE3A34867B2F05C87D7C2B032D0344D1E2C7945395C555589B85C2E2363E7040081BACE384C2B5D05C7BDFC9FA2A82879AE8063004E615CCED475135ED1816E5AD0750302A0E816E48008113455431004B0D2992A005ECE8B7990A2AAB2B71C86B86A';
wwv_flow_imp.g_varchar2_table(5) := 'DED598DFB404C31F5EC040EF718996AC10341973C6472BEC44283A0568BACEF84456EE25EB028088134A290111324A3210FFAE5735E483BEE741D1542CF8DC522C5AD38AFE636FE0EF87FF24119276FA819E21ED6449D3527229F5779D02B58561A5E380';
wwv_flow_imp.g_varchar2_table(6) := '08801791055249EA9CC228EC6C1E6118A25C0E85AA845682110A7513F39BAE835963E3D41F8FC8738661CA39648C5ACBE70AED8964342F994E6929B86E210630D5FDA48E07047E09AA9692C8A6AEDCEC7A2C597FBB98F49D8387F1D199B392050C26312A';
wwv_flow_imp.g_varchar2_table(7) := '2F93ECB032A031097EE2E2F99300305A050A7CBF24FBA8B399CE886BF999F4A5ED2C6AE7CCC6E2F5B763FF430FA3E416B1F147BB70E6E5D731F4EEE9C9D91045C21699A4A4724E390481D123FC3E090035237D94829B481FF5E36224602245116EB97717';
wwv_flow_imp.g_varchar2_table(8) := '1EBFFFA7685E7B2B2C3B83A33DCFA0EDBEEFE178D77EF84E116110C0F35C897C2A7B715D89E28C2088C7BED219D1305CA49E9FC330A8D6822424EA6998698968E58EAFE3E0235D686DDF80E18BFFC1C09B27B1686533CE1C7D15A1E3C52E673654CCC80C';
wwv_flow_imp.g_varchar2_table(9) := '720B94B5463224954A498056C686B2F7CEAD119D9F4AE9288C8DC0CEE5C53CAC0BD4880FCF59D80823979122C5DFE6DC783D7A7EFC106EEDD8043393C1F3BFDA279FC34B23884A017CDF4358F4F1FE5B2785051AB0C4BA6198121CEFA2CCBC43E96EDF1E';
wwv_flow_imp.g_varchar2_table(10) := 'B1C0F0CBD8C825E4F233A4B8F03B522A545DC3B28DEB0115183977410EC8CE9F2B0026AE3577DF059B005D0FF6CC3AD8757578E3A9DF220A428C5E1C12BD8330906A48000424BED847007E49BE8C8D5C1606581169B6959D9B707E70B0EAECE4C2DA59F5';
wwv_flow_imp.g_varchar2_table(11) := '57046066D2F01C7712B06BAE6DC0A10777435553C20C810803252F2ECB5D6DDB221604EA2B95CBCE894E74FF17B6B6A3F7C523923E9F5DB10CA75EE9151F2EBD79150E3EB217B775B4434BA570A4E7009A6E69C5077DFDB06C1BB316CC43FF8993B06BF3';
wwv_flow_imp.g_varchar2_table(12) := '58DCDC8497763F1AD712BF843028C14A67ABFE50BADAEE8E98EBE274CF453A9D958D44B97AFB5D78F585C30260E1F21BF0F6B1D764DFD22FAE46C975F1DEA157307AE923ACE86CC7D0B9419CFDE7BB9215F5D7CCC3C09BA760D7D660C9F21BF1D2EE3DD5';
wwv_flow_imp.g_varchar2_table(13) := '66C60CE1799480655FD9B7E99B11D381B53A2C87B0B335A23337DEBCA3032F3EF5ACA4E3D58D0D38FB4E9F0058B5611D9428C25FBA9E16BFB4EEDA8A0B1F0EA2EFF809F97F6DFD4C0CBEF76F5092D5EBD60A00A9FB13FA39CD1D5092C7B7EC8C9893D484';
wwv_flow_imp.g_varchar2_table(14) := '0D9F54255D90000EEF7F569ACFDCC606BC5F01D0320100E55AB57D0B86CE5FBC2280963BD6E0E55FEC95DAC245C3D37304C4749D568AB981D590DAD2032FF41CF8BF0CF0D09B3ADBAECC40DA42CBBAB5E8DDD3538D9E8C3120B2C146A53CB16567448AB9';
wwv_flow_imp.g_varchar2_table(15) := '483D3380DF69CA966D5FFD9F1E48A5345CFA47BFF865C14D4D38FBAF81691EC8D46471DD8A6601902CD61A1620322E53164732F6691609D249FA69124E49ADDFEE44EFA123D0F4549C057FEE957EBEB47515344D857BEE22CC9A2CECFAABF0C1C0E98FB3';
wwv_flow_imp.g_varchar2_table(16) := 'E093F3D1FFD7BF215393C3A2E6261CFB65B798906B7C74384EF5A2130378F26BDF8938563127898A00A487A775DC76CF4EF49D786B5A1D685CF6790152383F043D6DC2AACBC32D38181C383DAD0E34DE703D8E3EBC07CED0659195B52697AF936A2B0092';
wwv_flow_imp.g_varchar2_table(17) := '8988FD9D1210000DE38725E43F310B4537AE8A64248222430435A491589A59D9983D4C5BEA4A63719AA2CBD94183A00404110A23C3623C4A90ADA9ADCC1F9589888D816D32E952F158E5A25C8EE442011086029097A88A1A0FACAC66022E06AE6AAA7C26';
wwv_flow_imp.g_varchar2_table(18) := '83C934C567182923A60C9439297694BA3A114D9D5A3F1EC70C69D15CC5A2035552D584958B2F0E3C0E2D1ACA6A047764B43A82C9FECA902B1D962D5AC6324B3C46F392BD6A1A922EFE928CDE930A7AE54BE21196E93B7E762F06DFEEC36BDD07507FEDA7';
wwv_flow_imp.g_varchar2_table(19) := 'B07CCB063CF78307263DCF4B796632534C3C93014EAB03710172C560F21E90A467108844948612CC59FC192CFC520B66CC9B8B6776DD87599F6E10007FF8E183A23D57C25A925992F395C92A1E56E2515ED9B3A1434A3137D00BC930526DC9A4D219876E';
wwv_flow_imp.g_varchar2_table(20) := '5808421F9695C18A6FB42133A316F9D9F578BDE737702F8F6265C79DF8FD3D3F1193116872A10C399C2D8292CC8CBC9C6C138C9467362369C7D9BC389B2BE90D29238E3831168B54269FC7977F7E3F7ABB9FC6ECC606E4EA67E2C473CFA3A573337EF7FD';
wwv_flow_imp.g_varchar2_table(21) := '07844119B9CB65493BA6B89DAB9517938C9D95DE9148C226A8746DDA1685BE0F538CE20B758C80FA90A2F88D28AEDD348EB89D4DA5D2D759BA099094926E4AC5E8E917B246F6F8764493D3FDFC2BB3201494F95EF0EBCD3BE4C5843FF2E10400D960EAB1';
wwv_flow_imp.g_varchar2_table(22) := '399136A61BFFEF158B926E4C453E23AF6B617C29538DEF0704C348590FD86559E41249C7C78605087D2699C042C4B2483A2201A00903A4906947DD92E192F2905246CF5EC12E4A00DC2BB2B98EBC41277320D9A28402946FD361BC97699974DCF8D58CC3';
wwv_flow_imp.g_varchar2_table(23) := 'A7BC05952BEE8CF3DE2D8CCBBB20A75882E26201E2BB47E2722950815F6580FA26753F0170A594E66F0CFCBF536E327C3CF281710000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(684426356959773643)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_144_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B8000000017352474200AECE1CE90000200049444154785EED5D079815D5D9FEE6F6B20D10A5D93B288A46B1830D3B1A1545056529ABD811D4685434F9133551881A8505';
wwv_flow_imp.g_varchar2_table(2) := 'A4087663ECB1C5122B92A8312AA22020BD2CECEEDDBBED96F9F37E67CEDC3373E796BDBBEB92873DCF9327B277CA9973DEF3F5A251E7E85C8156AC80D68A7B3B6FED5C01EA045027085AB5029D006AD5F275DEDC09A04E0CB46A053A01D4AAE5EBBCB913';
wwv_flow_imp.g_varchar2_table(3) := '409D1868D50A7402A855CBD7797327803A31D0AA15E80450AB96AFF3E64E007562A0552BD009A0562D5FE7CD9D00EAC440AB56A01340AD5ABECE9BB74900CD1E764DF798A7A99BDBE5EA96D4B46E5A82BA914BEF1A4FC48B93F138B95C2E72B93C148F37';
wwv_flow_imp.g_varchar2_table(4) := 'F30EE2BF3D1E4FAB77331E8F533219B73CC7E5F190C7657D769292146FC67549F2787C847F635E18BE40007F6EDDD02842496D8BEEA62A97AE572592C92A6FDC5F35FAD98736B5EEC16D7F7787024827D29E1C3571DFA43B3950276DA04E74B8467A7F22';
wwv_flow_imp.g_varchar2_table(5) := 'CDEBF4A94D8DF5146B6E228FD747FE4090A275B544BA4E1E8F97FCC130695AEB3EA73E5A4BC944C2F26ACDE5A260A8885C2E77EAEFBA4E8D0D518AC763E63B755D27AF2FC0F36ABFA1C774D2BE8A35352E6C6A6EF8CC9DD01756FC65EE128D486FBF7766';
wwv_flow_imp.g_varchar2_table(6) := '7F72EB56BC85B37EA6FC9AEE4D1EEF912E5D8085880E23A2D27C1F138DD450329920AFCF4F8160989A9B1A09A072BBDD14081691CBAD6C72BE0F35AE0300A27535E4D25CE40F84281E6BA6E6E626C2DE78BC785FC802D058532335373702BF3CBC3E1FF9';
wwv_flow_imp.g_varchar2_table(7) := 'FCC1568338D7B4753D4975B5353C2F12C114353E9F7F913F185CE8D25D0B3D94F8E88247A76EC9F59CB6FAFD670310A8CD1363270DD549BF89888E6AE907F00647AAF93680C5E3F5929E4C521DFF4DA340284C5EAFAFA58F35AF071863B1660A1795987F';
wwv_flow_imp.g_varchar2_table(8) := '6B6C00C56B24D23406ACFDF9003310A4B9DC050107600000C192F31DB1581335D647C9EDF692CBED628AEC767B787E2EB7EBA3FF2EC53D97CC9CF2EACF4595DA1D40951515DEB05E324A4F262791AEEF83CD109CA665AF066B01CBD25C1A858B4ACD0D03';
wwv_flow_imp.g_varchar2_table(9) := '800024C93E0A65636049D80850373900DABA5A0014ECC9CF94A9D0E7DB0102B0C69B9B988E8005FBFC813C30A45163431D830660F6FA837CA83027CC4D79C6128DB43FD6B96A1FBB7CC68C581E0F2EF89296ED620B5F33EF8A09BDDD71D78BB158F3A160';
wwv_flow_imp.g_varchar2_table(10) := '3592EA6AA4913F18E285CB774800B900A0E232F3B6A68628B31A97DB43A17011695AFEA7597D77637D1DCB56F89F3A9A1A1BA8B9A9819F1B2E4E0137DF793B5D9788C7A8A13E4AA0407C9440E1424539D703D7456AB7F281C13C219B01E0780E948840A8';
wwv_flow_imp.g_varchar2_table(11) := 'D802708DB47F7A134DA75F30A7FD84EF7603D082F2897DC94D6FEABADEBB09AC2006792235B021A1A292BCC977260035373551536394172E545446009865E8BAC06D0E01BBA1BE8EE5186855EA4824E2545F574BA046986F4B40EF041E3C07EF0288588E';
wwv_flow_imp.g_varchar2_table(12) := '6B6E64C11D80C0BFB3CD13BFD56CDDCCD788EB8B28D6DC4000399E5B54D2256D3D75A2656E2D79F6C533A77ED31AD067BAB75D00346FF4C463DC2E7A0502B258B008250C35171F8FBF61780DE1D4E06959BFCF0490DBC52C4C0E08BBD8108C5051290BD4';
wwv_flow_imp.g_varchar2_table(13) := '160AD2504F493EB15EDE7C6855F681F980028105B86D54514FEA148DD6F0A98790DC5A2D0B73A9AFAB66D343305C4CB1E6663E0018F8AE6C8A00E619A9D9A20028CCDF565F07A19AC81F0893CF9F62C1F81B7ED734AD4677E9675F3A73EAFB6D0DA23607';
wwv_flow_imp.g_varchar2_table(14) := 'D0F461E57D03E1A2451E8F2F84C93280A211C249069B090482ACFE4268151F6DE1DD19BF2F4581042B9143FC5D2EA0F559603D389D6268E406990F84D236098B0C00011C760041CA6536D6DCC8F32F2A2E350F40219B01F905F2160BE53EBFA208504E80';
wwv_flow_imp.g_varchar2_table(15) := 'E25BEBEAAA092280A45842B9105A19A867305C64395C4293241CA0FA80DF77785B53A2360550E55915A16420B6C8EBF3F7C50249008105406309854B7813F9C437D4513C26EC28A01CB93411A985E17A5506C2E64BED4C5D405C8F9389DFD5017B4EA808';
wwv_flow_imp.g_varchar2_table(16) := 'B2428A1225137196493067CCCF3E001EB06110CE92B26E860A5D087C88EAEB22BC16D01A4111C53CC5FA60149776CDF86050711C16AC01A8A5DF1F64F68CB927E2CD6CAB126B2328BC5430C4F9D1A0247CA317F73AFCF21977D61736FBF4BBDA1640178C';
wwv_flow_imp.g_varchar2_table(17) := '999BD49397B15A190AF307C98DC7FFE3E32450D886D3D4C06A302F46800956C6610510289098BA24E1F81DCF96E0C28660B32060623E9ADBCDB61DDC8577A9DA16A82354E34C0092540373E543E0CD5FF8B77F10845ECC535D1F55467462C3F219160005';
wwv_flow_imp.g_varchar2_table(18) := '820C200C737E0A00C1720136292E4004C401F0FB02F3463F3E6DD43607A0C747DF30AA2E5A3347F05CB140F284D5D56E655B495839F92A8500DB603B460E7B083FC7D086E402A80B8593094112038B0DD90B23182A66CA024A25E421ABC00A960A392A64';
wwv_flow_imp.g_varchar2_table(19) := '5C675F5C7583A41133758DCE9B2484DFDCE711DF807581D62587CA6AB3C9592A8054D60F93005830284F3054C2F25E2291A086A810FE31F05C7C07AE09854ACA2F9DFBA7B96D01A2DC5F9CC75B9E993021D81C71ADA98F46BA40BBC0C002C156010A10A9';
wwv_flow_imp.g_varchar2_table(20) := 'D9CA86AF509155CD86EB80856B4DA360309CA642ABAF6615D61020850C24A68EE74BB6807F4B1620B4B37A9677A47110B2071691DD13CCAE04259100912C56BE570AB4D27887BFCBCD0770052B8E1AC6441753528BCBC361ED00206CA66AF7118A000469';
wwv_flow_imp.g_varchar2_table(21) := '5051B02167E37C760089FBA57A0FF10062820410547EDC0F76ECF5FAB6248AF49D2F9F31A3D5ACAC4D00B460DCC42B48A769CD8D0D822DB1695F18DEF051990004B621D57B295466C2AB1540293B1053B2688420C708008102C1E026C0A23E57AAE4822A';
wwv_flow_imp.g_varchar2_table(22) := 'C19A2D5476B8251A1BEB2D5A50B0B484065D358A0225C5044300B4310C109A8D3F2CA7CF9F7D99B6AEDB40898470E88ADF5CE4F707C89BC12808211887C66EF3C1BC4001014ABC00807702A20540C130F90CA3A70A1668A16083F8761C20C1DADD82656A';
wwv_flow_imp.g_varchar2_table(23) := '2E968BF0EF603034FED2B90F4ECF833E64BDA4D500828BE2F1B1131713D1BEAA40CBAC066E018D04803CDE34431F2CB10D38C17968639900A46A49788E5485B12138D945C5658AEA0E2A56C5EF53D9983416AA325AA84B199D7AEBB5142C4BB936E44AAE';
wwv_flow_imp.g_varchar2_table(24) := 'FDFA3BFA60E602AA5EB78EC1259EE767108322FAFD21F2DAD4695C83F7606343E1628B26086001F00092B42AAB329A7C2F3CFE3029B0EB2658C4762B0CF57E29070A3F210EB37036B38DC9E5628D0DF2A13F105A5C3EFFE17EAD7579B41A40F3C74C3855';
wwv_flow_imp.g_varchar2_table(25) := 'D35C7F931F09B0482D40B21A906D293BA886327C08844AFC2D1F578190A5AC7620A620866A2C285F801D9F26804ACA2C1A17DC21825A419B1396652C344243C2E112136CB900F4FEF4B954B311D115F0858125C2636F9C70374E78BA73179BC706493B80';
wwv_flow_imp.g_varchar2_table(26) := '604600800CF69F490E02158CD46E1142B8E10F94EB6EB267C3400B5605CA8AC1E60B637E2CEF45234C854245C5A78D7C74EAEBADA142AD06D082B113318153E424C04E543988D949B45600C4C1D25A5B5D250C63866099C9126B6A610E00925A14002916';
wwv_flow_imp.g_varchar2_table(27) := 'A644845B8002D90004BB08DC1F825A01306E21C7C09DA0F8BA7201E8BD6973A8769308CF519500A8E4988FDD3727BDFD20587600A9660D710844B4817D80C5C19521D74A553A2048E3BB58D30A04790EF87EA68ECADA82424A20878B4ADFB874CE9F4EED';
wwv_flow_imp.g_varchar2_table(28) := '3000CD193539E0F5D461374CA30AA47F69190518607C03A09C0C86AA695E6E7C260065B244A79F40D84884B112EFB503481ADEB090D2C30ED063D354B62101041968E9470B69D1B32FB28C020FB8DF13A09A4D1B4D23250BAED8704DE377E2794CE120CB';
wwv_flow_imp.g_varchar2_table(29) := '18967196738CBFC30E65957160AD1780171BEE6399C5BE16124098A77C9FBAF95026128998F96C695B928235AE55950E8FCF9F2CDD315874C1D4A9D2DADA622CB58A02CD1F3B69B046FABBEA5BED5A117E6367A1839685BFD756237445C81150C1330108';
wwv_flow_imp.g_varchar2_table(30) := '8080AA8A0D81B6641F0018D476BBE1D0FE4C004806A6692E0F9B164035ECCEDD14808AE8BBBF7F401FCE7E5C58D30D2D49B20CA618300B186AB9D5AC00BB5409B350D329CBD10460ABD6A5579F876F044070F8AC6B2B5C19D0E09C2894B08941754F194F';
wwv_flow_imp.g_varchar2_table(31) := 'ED3295F87EC86282BD1595763B7EE4ACFBDE6B31728C1B5A05A0056327FEEABFF2EFDDF697AB464226F166BC8A2DE04BD3A83E52C31B239C8130343A078549ADC2E3F15320E46C7464BF5253BDD0666C1BABCE916D440D752C7C82DCE37ADE1065535500';
wwv_flow_imp.g_varchar2_table(32) := '2D79F72306101B220D162A59A49DE5F006410334A80940008061FE92C53AA9E92A80543B9A3A6F49B1416121E7390DAC25D61FDF86B940FEC137AAEBAA6A6DA1E2B25B2E9B3DF59E0E02D00D2F106967DB5F8E89C338860F817CC03E26DB6992F7801A08';
wwv_flow_imp.g_varchar2_table(33) := 'BF18BCDD70863AC7364B631B8C823094651AA054D828E92F72A468BACE1BCC3140900F1CFC6350E34FBDED3A0A9614D3F7EF7DCC00621B12626F82618EE5C1BB30EC9674B071D860ECE1B1E25A6787ACAA7667A3D8F0C6FB02419E73A681F56700197625';
wwv_flow_imp.g_varchar2_table(34) := 'BB8196A975439495098FD7FFE2B827A69FF3B30368F2E4C9AEBDD7D46D24223887D2863460E1876C210AD804905D5E34C3F8E8F43C09B46CBEA2962E42CACC6F25C4A032079F7B3AED77D2B1CC32ABD7ACA3771F994D1B7E58C6B20D280A406AAADD50A9';
wwv_flow_imp.g_varchar2_table(35) := '6DA0969B24150ACC4DB23FA7F59042B6A49E4E6B01CA545BBD8901ECF3E51380967945E47A6A9AB6E18A6766F768E9DAC9EB0B66614F544CDC2F9924D87F5A35545F9954C19D1E08F927914C5842395AF5E20C3783E4F73DED78EA7FD6106669509D1105';
wwv_flow_imp.g_varchar2_table(36) := 'B9EEBBEFE99D87665164D3665336C10906D8209339B961009464222928A2CBC5A126EAC1B24F41D5609D28958887AE66D74C362A9CCFBA601E324A82DCFAEEE39F9ABB229FFBECD7140C20BBFDA79097E31E56611BA3146F6EE60D2B29ED9AB6C832DC02';
wwv_flow_imp.g_varchar2_table(37) := 'BF43056EAF810DEF77FA0974D039A7F12B562F594A1B7F5A4D071D7F0CCB12EBBF5F4A1FCF7D92362D136B2DADBC995C0F2D9D27D28AE0BF12541B0177566D8DED5D8DF51C525268E4A53A2700928D8D49FDB4B14F5616640F2A18408F8F9B345CD7F527';
wwv_flow_imp.g_varchar2_table(38) := '5BBA484ED7CBEC0A210795A50585090D0CF28A875D10ED31009E83CE3995FA9E7A3C538B655FFE87FE36631E55AD5B4F43465D4C879D3E843C5E0F55AD5C451FCD7B92608D66B6E4862697AE15163A47350483ED41F85EC321CA1A1689A806331DA4D017';
wwv_flow_imp.g_varchar2_table(39) := '29F725F5E445973E3AF5A9421E553080A4FFAB9097DAEF512DC94EA11D32EA10C238487B5E033E16572AFA31DB3DB0ED1C7CDE19B4EFF147131209D72E5D4E2F3C309DD62EFD916FF3F87C74CA981134F08C210CAE4D3FAEA0F7A7CFA1CD2B56B17DABB5';
wwv_flow_imp.g_varchar2_table(40) := '518AEADC58DD47FCB8A111FAFC21F2F97CAC68C0BA6C0F1ACB6B2D725DA4D1F81133EF2FC82F56388032A8F0B9E6EAF43B6404501819B5683FD100180C6DB0D9A4450C3A3C10CF1371C771D3FE942954C4EDF550BF534FA003870EE12755AD5D4F7F9D3A';
wwv_flow_imp.g_varchar2_table(41) := '8D567CFDADE5C9507D87DF7203F53FFE189677D62F594A9FCC798A1AB6A4626E0AF9F6F47B1060262238E548858B20A509B14CAD13A0D3DFA94D1831EBBE3F1532FF8201347FCC0DF7689A76738B5F0A72EC10E09ECA7E108E4229244AF9877D48703DE4';
wwv_flow_imp.g_varchar2_table(42) := '917D2ABDEB726E22C04DF8AA2C43D3A8EF904134E0BC33784EABBEFB815E9B3E87562DF9C1F1B320109F37F12A3AF8C4E3989DD6AC5D4F9F2D789E36FE2028555B0DB6E534369AA9DBF2B9223425771E26D60A87471A14F1DD22D232E376DF3262D6FD05';
wwv_flow_imp.g_varchar2_table(43) := 'D9820A06D0827193A693AE5FDE92450319C687E163A00AAB01EE000A5B921309B605C9500BA8C19081107D07FB47AEC142393CF1F118937B799265809B092AAF87FA0F1D42FB9D3C8855F5E55F7D43AF4C9B4D1B96AF7404B8BCCF170CD089232EA48167';
wwv_flow_imp.g_varchar2_table(44) := '0E61D656BB7E132D7AE2795ABFD81974B9E69BE977A8F310AA45F2A14C42F0E5957D6B890542B01B327703A18CF156BAAEDF3BF2D129300AB778140EA0B11311D17659BE6F94E673B118C29602F7814A51542D04D788304C4410CAD4E2DC395FC2956008';
wwv_flow_imp.g_varchar2_table(45) := '9B45A5EC9B023B0380A4EDC4EDF3D2A1170CA53D8F399C3764FD8F2BE8850767D0EAEF979AC229E62983C6708255B0838D0E197D091D31F45472BB5CB465D55A5AF8D8B3B465E5EABC96038646B059B7CB6D9804DA36B53DA59480E585F930C99874470A';
wwv_flow_imp.g_varchar2_table(46) := 'AE69952366DE77455E93B75D543080E68F9D58A91155E4F352952A0018D810501CA4A0705CAFC296446C4B3D6B1B586068229CC62C93D073BC50C624C9E079BC8FB33674E17D473CF3FE270FA283CF3B9D9F54B5661D3D3F751AADFC2665D20A84C3D463';
wwv_flow_imp.g_varchar2_table(47) := 'F75D69C0C983A9A8AC94167FF2192DFDFC2BAAD9B4D99C472216A78B6F9F44071C7B24836BCB4F6BE8ADFB1EA1788335FFCD3E5DE12B44103DDC2D70352056C781BDE6B3B00ED7B07DC7C83BC3CF30BC3245AA8FB001D229CE88B675000947679D288CE0';
wwv_flow_imp.g_varchar2_table(48) := '455847C80CB7C837AD27DFF594A74F1AE254E72164A86071311D31EA42DA79C00114AD89D09C5BEEA2F5605BC628EE5A46A78EBD940E3AFE58CB2B37AF594BAF4E9B43DF2FFA3C458D74A2F36FBA860E3EE138BE76EE98EBC8AB79B2B24099CF0F3B0E0C';
wwv_flow_imp.g_varchar2_table(49) := '8BA00E1965B47C3F5AB94E0DEAC3C12C2EE9C26C1C4A0AC02B63C62D8FEE08003D3E7662A59E27054AA9E93A7BA2C1364478A70C7A2F724CA72960FDCC5416D515003300FC5EB0D99475DFD104D08AAF17D3F4EB6F4909EC89049D79E5183AEA9C33F8D5';
wwv_flow_imp.g_varchar2_table(50) := '302436D4D5519F7DF6A6607198AA376EA2CA1B7E4D912A04CD89D1638FDDE8AA3FFF8159F1EC515713C5937C40320D08C770F8726688D767968961C02314360F25413A659DDE618F0A85835AE5008E110F1D01A0CAE1632B7DFE4005284AB6A1864FE0BF';
wwv_flow_imp.g_varchar2_table(51) := '4152251F96F12BF9A4F5E40B26843B806D899867E17495795F58F8AE3D7AD191E5C39902FDF8EFAF69C6A4DBCDE254604BBF7DED19F2F8BCB4F09537E8DD279EA3442C46FD8E3992CE1C3F9AFFBEE86F6FD38B0F563A03A8FC6A8A3734B2533893B62822';
wwv_flow_imp.g_varchar2_table(52) := '3045D201288F94D9A433395B660A1CC451AE612403D6A0CE5BA510270061B2B2D288A32DAD2300347D583953204ED709173BA60C63E282278BD4663B80647420E480200750E5169273811561AF6900524246BBECD8838E1A73B123804A77DC816E9C378D';
wwv_flow_imp.g_varchar2_table(53) := 'E70990FCEB8D77F8BFBBF4D889CE9F7815ED7AC0FEB4F4F37FD39C5B7F6B0244A54073465F43CDD17A96EB3205D603E06A788B08FF10B503C062334523E0BB21CB34D4C3D52140836BD9B5A3CA904AA2A59AE12163A461C908178BD427737414805C6E4F';
wwv_flow_imp.g_varchar2_table(54) := '05F86BB6C20058A05486A84C2E14313FF80D0B2A12ED7257A7C84585A4B3311B804A77E84EC7568CA43E07A7532004C2DFF1D7F9BC3D1F3EFF0ABD3907314031DAFFC8C368E855E3A8B47B37FAEABD0FE9997B1F70A4408F8FBF9122555522B5C6165F84';
wwv_flow_imp.g_varchar2_table(55) := '1B70889095619779445E5794296636578D8CF3962F97B631B5E0831A11AA0248868B88AC0F1B85EC10005D38B632180C57408EC101B0677BAA1FC919924690977ACAD488C45C693DB9C0230199A240A93C33000B1B0481B5A84B571A3CBE9CFA1CDC2F9D';
wwv_flow_imp.g_varchar2_table(56) := '85C5E334EE8FBFA13D0E3E90EA6B23B478E13FA96E6B35ED35E020EAB5D7EE3C8559936EA795DF2E7104D0D357DF4A5B37AE3700223273D5A102084091A60136963608CB3984DE4C72902555D978B05D095153975400493950A60D59A87D470068E6F08A';
wwv_flow_imp.g_varchar2_table(57) := 'CA40385CD1D4D8C8E1913855A8369116C76BCB5147F2BF594245D3285A8B6C514E33C95A6489ED325C0D0C9280B3F501BF0B00A5121B25B0642E7E5159190DBE728C2380706DB79E3D68FC43F7105479690B9271CD1FFFF5157A6DC63C0B285416F6CCB5';
wwv_flow_imp.g_varchar2_table(58) := 'B7D196F56B790D0010BBDBC50410B36C24591ADF01366F24016462636AA6299E8B3B85B1D4CBEB2E4726005963B26DE1271D01A0CAE11595A170B802E6195925CBA9488225EE84CBD3596D11329413EC03F9544EC2A76A59E5E43DF88390558AE8C02264';
wwv_flow_imp.g_varchar2_table(59) := '98BA4554B551E710FF1D088002A522172144A20041A0A8988E29BF987AF6DB378D02C94DE8BDCF5E74EAD891D4AD570F9E0F36FE83E75EA245AFBD951665A802E8953BFEC09A5A921269EF075B15C27CC488821459174DD17A4AC24E631410CD4489D588';
wwv_flow_imp.g_varchar2_table(60) := '45D8727060718FCBA88B24B1981F806C41FD1D03A0B195A150490569B2BA44D2918A588D88E9219D88630675C844C1B0C8AA6515FF0688CA76DC917AF6DD97F63BE938EAB65B1F530097897E762A95FA3BB1691FC0B06B61E6313662898BBA88A444A8F2';
wwv_flow_imp.g_varchar2_table(61) := '8DD17A4770AB009271C8E2394E74D2287665FCDE5CDF40DFBFFB11ADFAE23FB461D9720E0386F0ED14AE9A0AFD25B6A8C3AD230CA43AFFB7B4B2AB00C23A418D67F9CBCC0A11D4D95228AB230034FDC2B195E1A212B6449B590ECA84551948FE8EBF31C9';
wwv_flow_imp.g_varchar2_table(62) := '45FC8C615956D54E6B16A97882D0525241EA706BC49B1B698F81BFA041578C227F386495197258ACD56A651901646152D9FFA102289F181D4BB534832D2FFDE053FA68CE532CA77186076AFCD8BE432DF8C97E417FC054CDD53CB24C004AD9DDF4F40C99';
wwv_flow_imp.g_varchar2_table(63) := '8E01D0E8CA705159054E72AA3A447A6A8E6A07C256C0910A2D40BA26048B13451638A8DE569F07027003C21B1016CAE4BA8413E37CC12041A3F285821C41B8CBA1FDA9A1A6969EBBF92E765B207343AD7708360875D91B0CD0B1634650AF03F6CB4C810A';
wwv_flow_imp.g_varchar2_table(64) := '04D0CB77FC91D578848A8AFAD2229D581E04B8304A7BF6A0B3EE9844B039BD7DDF34AADF5A4DF1A618D5D7541BC64EE171B7BB6E248058BE0A16B14B86C112A9218F9188C8ECD6929797A240B2DC0D16C70779532926DA21AE8C47CE2BAF2C2E2DABC002';
wwv_flow_imp.g_varchar2_table(65) := '61F321CB609269F1BA4A852F2C243403691D35294C36FE0F80269B191450F783C8E38A88DC2784927A83411A70EE19B4EB6107517D750D3D33F10E61A853AA6FE03D22C8BD8EBC81001D37EE52EAD3BF6F9B03E8C55BEFA6E6FA7AD3C2CEE1276A159168';
wwv_flow_imp.g_varchar2_table(66) := '84CA7AF5A4B3EFBA990D946FDEFB30450DABB68C61420104DCC72119B138C59B846FCD0220A30C8D3483C87A4CF8FF4C00C2B59055F1FF69B1E71D4281869557FA83E10A2ED3A638F0D8B8A58678DA00845362F7C7A0A2072A7B3805D517EFD88D065E76';
wwv_flow_imp.g_varchar2_table(67) := '81598347B84110E290142D0F3C1E2ADAA12B058A8BB8DDC046235E19D7D9057280085A5C69CF9DC81F0EB73980AA96FFC44E5235274B25665C4CD3E7A56EBBEDC2DFB375D51A06891C220D4827971BC2BF4E6BBEFC86BE7EEDEF4CC5AC00121A5ECA0C22';
wwv_flow_imp.g_varchar2_table(68) := 'B54E51172895199CA24078873403A899AA421CEB006F3C2CD12EB7AF02357FA41C046157148012D99806ED366B0C1A93A52218B294E02E2924DBE5235C5FD6A7279D3179620B984AFE97B6B90C94FFABF3BA12B2D127B39F269707F9FBA2E839B3716481';
wwv_flow_imp.g_varchar2_table(69) := '1829D3D2B828527DFC5900A4B11113E12D6975083A0A40E4725540F0C5300D5546ED1DD306E2408164C530B98A124000150C692AFF2FEBD383CE983C892FC58637378894DC42071CAA3DF7DC8DE0756F6B007DBFE80BC764C296CC151A62AF3D77E7F959';
wwv_flow_imp.g_varchar2_table(70) := '016414C7B251707BF441264BB47AC8D32AC275188034AD42B223760AA2A45A12EABC12FC0E001959AA825A5A4356F137E9AD07D54281282B805214E8BE5157D196B5EB046B52FC3F7867DADFA0C5B0E151504218DE92BA4EC17088CE9B740DF53DEAF0DC';
wwv_flow_imp.g_varchar2_table(71) := '00929A50160FB9AA85FDE69723A9B1DEAAEEF37BB3CC0F6CD80C276395DC4FBF9C7025F51F7C8C2380703DD65CAE912CD72202F4AC657F65B129F3A01A05C0D252CDB705006192B206A15A6C40205F547B9700423D63591C49051016A5B4CB0E160075E9';
wwv_flow_imp.g_varchar2_table(72) := 'D3934E3758D894D1D750EDE62ADAE7B043A864872E2C58373534D0E76FBD47BB1DD89783C0B0617043202DA73E52C7991492757EF9CE3FF89EF36EB892F6CF02208E3D2E2BA1926E5D59E86F8844A8B66A2BC729DB870AA0FF3B7F14B388FD06FE82EFC7';
wwv_flow_imp.g_varchar2_table(73) := 'BB1AEBA2F4F9DBEFD19E071F483BEDB60BDF1EC5FCBEF88AA2D5B574E439A79B2AFB7F3EF884624D4D74CE755750FF41472B0072B18A0F6D17A0405A8F0490A4380016B458A16D89DC323B8064768B28DEA0D42FEA2800C11B2F4BCA61C20D51C42237B3';
wwv_flow_imp.g_varchar2_table(74) := '80A79AEAD5B41DCE2DB7554995EC0F27550DF7C033BBECDC8B4EBFE3065E10000846BD8B6FBF91763FB02FFF0D795BF75F76259D714539C7F180E22044F52F531EA18D2B57D19D2F3D610AD37F1A7B1DD555D76405101CA683869F4B5D7BF6A0B2EE3BB0';
wwv_flow_imp.g_varchar2_table(75) := 'AC11ADA965E07EF5FE47F4CD879F5A30640710ACE223EFFA15F5D9776FBE6EED0F3FD203974FE060FCC30D30235DE82FF73FCC694377BFF557F379D3AEFD156D5ABD260D409A1B001271DE760081FA729B2AA6FCC292CFF58E3867CD1A842F6B6AA755FF';
wwv_flow_imp.g_varchar2_table(76) := 'D85600A456BF820D449627915550D9380600D98B4C22719093FD139C75A996357102D025B7DF44BB1DB83F2FD2D60D1BE98F23AFE0789D23CF3E5D0068F94ADE2000E8AE9753B98FB900D4679F3DE9E23B6EA262C3026DA736B04623BC15DE7869AF7204';
wwv_flow_imp.g_varchar2_table(77) := 'D06F6EA13EFBECC5B7AF5FB682A68EBB8ECEBFF11A3AECB49304A896FE48CFDFFF30AD4903D0CDB469F5DA3400C1DA2F4AE021E1C04A81F03C53863458ADA04E3AF97C21F207538908325A415638336D6EDB0A80F031B292AA6A2E17762284B4220E1814';
wwv_flow_imp.g_varchar2_table(78) := 'C85AA554CD0BB3FB82EC00DABA7E03050CFF17DE07951E2C0B9D027D4111DCC671D5D10626E745A5A54200629F5D84DFEDC4C276DA75672ABF7B32157529651BCDD69FD6D2AA2FBFA6C896CDD4639FBD699701FD29501CA64422499FBCF82ABD39E7097E';
wwv_flow_imp.g_varchar2_table(79) := '8F1D404DF5F51408878C5AD2C296D35017E58DF406644DC324E1BA443CC160956E16B05CF8EFEC2C2C17803864D5388012F4B226A51A70269DCDB29085E9CEE84800A9852999BF1B451CADD55191382862A29D00C4FE32C31B6DB705D90154BD612375ED';
wwv_flow_imp.g_varchar2_table(80) := 'D59302A1000B9FF1E618AD5FFE139575EF46F05D012C9023B6AEDFC4F9F6BDF6DEC324241B56FCC4D6693B808245613AE7DACB59704DC6E2F4ED9BEFD1E237DFA7587D031F08BC67F74307D01123875159EF9EB4E9A7D54CE190C5610710E4A41D7AF760';
wwv_flow_imp.g_varchar2_table(81) := '40E33E688D1B57AEA62E3DBA53D80073AC11F3DB482845BCF37E7B9BF20C9E0B0ADD5200E103D9E18C9E1B30147A45B535A7BE1BB28083E5A0762480ECB595E12E10B58845F0BCA85091AA42EA04202C80F4CADB5377ED008AD6D632BBDA1932068C711B';
wwv_flow_imp.g_varchar2_table(82) := '37D19C5B7E4BC75D780E1D72F2602E650B39021462CBBA0D74F523F799C11FF36EFF3D53030B8026DE46BB1DB03F9D7FE3B5B443EF9EB472D197F4E9BC678505980B605533EB00DBDDF59083E884092211E5ADB94FD0877F7989BAEFB2B319130D211ADF';
wwv_flow_imp.g_varchar2_table(83) := '3BF49AB1D4738FDD797EEB57FC440BEEBA974EBEEC220628B8CC8695AB39586DD3CAD574C39C3FF37500DB53BFBB80EECFA600002000494441549FBF270D402ED1278C73EAD8508BE4C2F4542059AF285B4721E92B83CD88CB300B8DF6E74FEB9121AD69';
wwv_flow_imp.g_varchar2_table(84) := '25E4D0451071BFE8AA63543D150153A20AA910A28369E9B9D25066777538C94017DD3689F6E8DF8F3712D91253CAAFA6D32A2EA3A3CF3D8BADD3EB7E5CC132062A6B48211A54EE8171D7A70BD1136F63E00DBBF15A969FDE7D6026ADFD3A1530266B5963';
wwv_flow_imp.g_varchar2_table(85) := 'CE1EB797CEFCCD4D2CD87FF1F67BF4F2C38F52D75E3D2C0082103D62F2CDB4F3FEFBF0FC562FF9811EBA72129D3BE14A16A2F1FD6B7E58C6F35BBB6CB92944637ED3AF8310ED24038903268A773A17E0B4CB6B99FE2D856E59E9840DBE1D0920550BC3A4';
wwv_flow_imp.g_varchar2_table(86) := 'B90A287A5424E1AB1205B3ED7590ED256A5910444393C606A616A28F9888E6B303A8B6AA8A0E38F628EADA6327961D1A6AEB5826D9EB90836897FDF72572691C45B8F89345545F534B832E3ACF5CCB852FBFCE32934A81664EBA9D0E3BED643AF7862BF9';
wwv_flow_imp.g_varchar2_table(87) := 'BA177F7D37D56D14B5A4550115591388413A7AEC25B4C7D187D157EF7F4C2F3C308DB535999521D4F8381D38E8282AEBDE9D744DE70C8ECF5E7E83CD0660A7F08D45B66EA5C51F7F46B55BB6D2C9975D6C365AF9D7EB6F53637D431A05C2730064475F63';
wwv_flow_imp.g_varchar2_table(88) := 'BEC831AE93CE6D68BE1CDA0A3B59C702C8DA5D469567A4CF452DF9263DEAF6704F59C55D96A995AD004A7BF7A433EF14AE0CA8F15BD6AD6FE192592F47A4A15D060280F0378C176EF91D4537A7D27654431D626E8E1C7D11ED75ECC08C006A8C46A5CC5E';
wwv_flow_imp.g_varchar2_table(89) := 'D03C913A6D6761495D88002876C515DA0A4E07155392F62004E4B3C7A0A300448A255A5D2D69D71141DF084D1031C9F87F35C8C9BEC208900290D4A2E4A1EE5DE89CDFDD6A0208A777E019A750F79D7BB15500769DB7E63C4E071C7714532100B4667315';
wwv_flow_imp.g_varchar2_table(90) := '7DFEE63B14D9524D43AF1E67BEE6EDC79E62A1BB2500521BBAC10573540E00814A1C39F474EADA73479E1FCC0CEF2C78860E39F978DABD7F3F1639AA376EE68C8FEA4D9BE9FC49573355844CF3EEE3CF5143349A06A0842E120345BF91D617D8928986F2';
wwv_flow_imp.g_varchar2_table(91) := '3077188034B7A7C2A9B8921A240E4A03BB4EDC6879C95D0A1D02A6B0CB6A7F521822B119E19DBAD1B03FDC69020886C48B7E3D91370303A9C953465F4DA78D830C74A669487C1E86C49F56D3E4171F1786449DE8810A0719C8606199289019CFD4D4C81D';
wwv_flow_imp.g_varchar2_table(92) := '0191D1918D024106BA64F24DB4F37E52065A4A7FBE6A129D7BFD786148D434362E3E3F252503B1DD46D7E9E16B6E660A6BA7408924EC6448466C417DA42CF44F8D9EE03ADA2E77C708D1FE40B8C2A92784901D9A3803538DAC736AF6A67E672A2D474422';
wwv_flow_imp.g_varchar2_table(93) := '62E311FAA002A8BEB696A90A6B6144B465C3467AF4A63B69D085BFA45F9C7A220BD100CE1BB31770AD9FEB2AA7F273202F415B4BD3C2720008EF9096746878275C3D2E2B80F0AEB3AFADA0DE7B09F30104E5F977DE43A7945FC2E9D2F87DC3CA55F4FAA3';
wwv_flow_imp.g_varchar2_table(94) := 'F369E38A5574E3FC690C6E7C2FAE03F5B40308D67DF8134D9693277394EE0EA73873D96A13797DA160B872E49C3FFDBCC5152A2F1C5B190A17734059A68153838F672AE472F30972FA183BFB93359671ED0EBBED4A67FF9FA83C2265204E52949D083517';
wwv_flow_imp.g_varchar2_table(95) := '979E03EB936575C126110281FBB9F6A23110C5172C2A6A110B6399C128B1978835D349D75E41FB0C3E2AAB0CA4CE8F8B6B7A3C948C8B8A1C18D9E6E70F052D00FA78F653E22092462194BBCB2BF539C9141FD54E70A0B81BB5BD172C773942966B028FAE';
wwv_flow_imp.g_varchar2_table(96) := '1CFFCC9C9F17408F955F5FE972BB7356E7C0E20B00E59F75AA9E9C342D8C9DA903A8B8ABC8AE84D0FAE53B1FD0AEFDF613CE54D86E6A6B69D9975F33B581FB40B0309DFEFDDE87BC112D9181F00EC9C6603D3EFEAA31B4FF89C765D6C26231DA77E0A114';
wwv_flow_imp.g_varchar2_table(97) := '2E157513235BB6D2D71F7C42BB1FD48F7AECBA0B03205A5343CBBEF80F5BD0E17E912C0CCE54180425055AF6C1422E2F9C34DA3238B5E34C3BBCB6E807FC8EB587A7DE0E22A120D411E9C9CAF1CFCDFD7901D492F22E79525CC7CBD2EC4091085D70F3F5';
wwv_flow_imp.g_varchar2_table(98) := '6CFC83290DC6C2072FBF9E4E193D828E187A1ACB401B56ACA4171F9C419B56ADA15F3F9B6ACCF7F05537B263B4A5006210914EB1C6463A7ACC25592910EA2D4246832F0CF383BC33FDFA5FD1D06B2A98C5428D075B43EAF4BA1F57D26F5E79D2E0F23A17';
wwv_flow_imp.g_varchar2_table(99) := '6E80855A02E8BB773EA4771F9E45C1E2120EB6CF67A82D4005786464A668D769A760D09049D72B2F9BFBC0F601A07A00E8A6EB68D703F6E3F5DCBA6E233D78C5041A522E0A3E318096FF442FFD792603E8D667669BEBFEC8D53771499742008487800D1D';
wwv_flow_imp.g_varchar2_table(100) := '397A78561908001A7ECB04EABDAF70A6AE5BBA9CA65F770B0DBDB6820E1D7202ABE0EB96ADA0971E9AC10082A1535A9567DC701B6B6D29007D409FCC799ADD22F90E35A00CF740C9411C145C49B25057DAB33A428D6F2D05E2A07114923482BEDC2ED4D5';
wwv_flow_imp.g_varchar2_table(101) := '495F263B054291A7DDFBF7A5E2AE5D992A34451BE8DB8F1752AFBDF620384461486C88D4D14FDF2EE15CAE834E48D5F959FCF1226667ED0920C85CBBF5EF673A493117180D5198A15BEF9E82ED46A2B4F2DBEFD8D079C829278A5A863AD19285FFE23549';
wwv_flow_imp.g_varchar2_table(102) := '8F0772EE1FE2042A3543469A4C202F22F355742F726868F3BF0620086EB03C83DF73C336CD65B65BB20BD976004943A27A1D6B6C52C632A2089D3410FCADA586447593F2A14090C9E0C44C09F9A8769FB414A592320F0E8CFD3B9C0C895008F219785634';
wwv_flow_imp.g_varchar2_table(103) := '827E65A287875AC3DA2CEF12444A8F8DA2FD4F01C8E8712AA98FDB68CC0B5039A9A976008185FDF2FAF1A69A5C53554595D7DF4A275D76110D386910CB18F027BD3EEB31DABC7A2D4D98F5A0B9F6B37F75174729B6940261AE08F100D08F193722270B3B';
wwv_flow_imp.g_varchar2_table(104) := '6FE2D5821A1A6583E12E39FDF251D47FF0D14C6936FEB48AFE36733E6D58BE826E5A30C39CDF6393EFE6D4E88229904E54CB8D89C52355BF192214589B434CB511C76EBEF87F09406A891251862EC42A27EA408B7E9FD632B6B99DA9EB684AF955853B53';
wwv_flow_imp.g_varchar2_table(105) := '6D76A0976FBBD7CCD562B947F69F279DD386068D1F4DFB0D3E3AA31696C9997A9EE14CC506B2331586C4A55667EAC357DFE46848CC97028988C36A23025CB7346591C546B799F22E8F8D9E80325D152D51CF21EFA07A8648EF1509741C546EC403C16007';
wwv_flow_imp.g_varchar2_table(106) := '0BB45A08D20EA0BAEA6A3AE6DCB368C75DFAF0018A6CADA1571E9945034E1A4CFB1E7E08B3049CE285AFBCC946B961375D6B8A56AF56CEA5585373560AB4E4EF1F524CC9FCE0D6910825F578D951BAFB610753D75DFA640410E499E3869DC3851930B6AC';
wwv_flow_imp.g_varchar2_table(107) := 'DF407F9BF9180D3CF314DA6B407FE36F1BB9021A34AE8B6F43C68908CD787DF60256ED0BA5403264555016A43017A71AF37233BA1AA640DCEA532DE6D5111408E55D744DAF809A88C5CD47CDB436C715F1285206904DEAB8A68D9298E8240371D2A02B55';
wwv_flow_imp.g_varchar2_table(108) := '1A05917D9081A00189B543BF2C515F1995E8E5E0CAF5A1ECCED47C640D5C93C91B0F190861A710E6792A4951620F7353E5B4B4F9E92292D21BF0170C20352F9EABD27203BF94FD4D96BE4139184B25B48E00908C07C2223905CA3B6D84A521AFADCC0B36';
wwv_flow_imp.g_varchar2_table(109) := '1BD18C38395C8ED6B07BA487736CA1038E3D824ABBEFC0AF40C604A80D1CA98869C609433807341A9CE663879D2D6C1FBA4E9FBDF6167BB4B3C9400DD5085017CD7B0325A20854BCB1894350317CA1106F72B6700EC83A1C1D49C4A5813F7FF35DCE24E9';
wwv_flow_imp.g_varchar2_table(110) := '8D700EB4F9DCB295BEFBF49FEC083EF19261AC66637E70B0C20554280592F587784F8CCE8AF280E2FFEB90129E8CA71703EB18008DAEF487C215F870841A608269C8B6A128D5723BBD4E1083C1E8F5AE0A7FB965208780B2652B58C6C82BA0CCEE0BFBD5';
wwv_flow_imp.g_varchar2_table(111) := 'EFA86EF3160A979571C74280E8FB773FA6454FFE9529C491A32EA4BD071DD96219289F8032BB0CF4C33F3EA10F662CE03869A7546DFB2195611AF83B3CF728E6A56A79B2426C5A2FB28E00D0A323C657FAFC417665C878E66CCDD7709D0CD7C07F3B75E4';
wwv_flow_imp.g_varchar2_table(112) := '9339F26AEAAD5348EB199797536F501B1DA1111B69DE6DBFA763870DA501270EE693B779F51A7A7BDE93B465FD46BAF2A17B4DA112CECAC6BAFABCB430B5672A00F4CFA75EC8CB9008628752C18895C6FCD62F5F414FFEEE7E3AF9D2E11C72026AB869E5';
wwv_flow_imp.g_varchar2_table(113) := '2A7A6BDE936CE8BC7EE6036C8986ECF4D4EFA7506DD51693022DFEFB3FD8128DFC7FF8B3C0F2B3C99C6A8F10A7BA9592426D13B9F18F955F5BE972792AB0206ADFF6B4C929C7241780F081B806A78DBB3C7BBC69118908AAEF82E20846D03AD46B78B74B';
wwv_flow_imp.g_varchar2_table(114) := '77E846E132A1C1C59B9A5990869D8937D218085A477F8B7CD4F8420184538E68496498CAA07A84DD96EDD89D4225229607F343EC3354EBDE7BEF6906D56F5EB5864381250B5BFCF7F7E9DD871F65003155F178B336DC93F1E8B8D6DEB79EE5314389B1E7';
wwv_flow_imp.g_varchar2_table(115) := 'ED75483C90DD122D6387B3B1B25C00C247D6565719E9CF9083FCD465D7DE74FAED13780141E291D6D39A0143E259578D658D0D85C6E7DDF63B8E89C6DF305EBBEB7EAADB524DA1D2123A71E2E514282EA6651F2EA42FFEF22A07D71F7EF1B9B4C751BFA0';
wwv_flow_imp.g_varchar2_table(116) := '6F3F5A48AF4C9BC3D91663FFF81B9EF31F2FBB929AA222A9AFD0816A63678E2FA7BE470FA425EF7D446F3F582972D00C392E532D493622D6D5B0A688C1B5B76D6D242C000AA66A176D13009276064C325367620B801CFA3660112250F391A1DAA52BF53A';
wwv_flow_imp.g_varchar2_table(117) := '607F1A74C5A5E4326A1D9AD6DD427747DEA7A1918B083283A71BFF2D650508D942ADD62C9A9E99AF6F5C8B7FB305DC1058F168CE816FE5DC6405338E614256C7E225F4FE8CF9148F3650B456AAE1E985CC79ED90826458E2616DE646786A0D01930279AC';
wwv_flow_imp.g_varchar2_table(118) := 'FD393A4206B25320D6A28C72BE69E5438C45CD05205C867278884C3C66F42574C02927A636B1951BF3BF7C3BA2003E99FD142DF9F013A630A2B2BFB5F5551A801CDA8BCB803D50344B83976D0140D820595C8155E05038ADEA7A2E2D0CCF6067603442DD';
wwv_flow_imp.g_varchar2_table(119) := 'F7DA83BAEFBA8BA55425EC4830EA61B170C29C12E764EC0E0C655868BB6F0D9A1E6C2032685FCA06F0CD41CB82ECC5F7681AD766C4F3547B15AE07B545957DF4B650D3B05590E279D86C69E2C8144807AA854383F9A8B61979BF688DE5A59A351B68EBBA';
wwv_flow_imp.g_varchar2_table(120) := 'F5D404AFBA52D22E4554AD14C889D56DF30052E520A7D49D7C00041B0CF2CA3090762241C25537A211168C6194C3F39D02AC44EF891ADE38C4BFD8232623D555A9024B8A0316C0027851FC0A422BDE07768AC1358B14740883681DC748AB40342F312AB6';
wwv_flow_imp.g_varchar2_table(121) := '41ADE65610DC6539436D6B238F8E7B7BF844CC0FBE411453100034B3483523751CA5FE6CDF6FA7404EE582A50C249414F4EA309CB4DB0A05522BAE8A6627D620A87C00A4067CA36EB41A0BC36E105D67BB0816C06953649D2206A013806AB7F2C2D97B74';
wwv_flow_imp.g_varchar2_table(122) := '61C3002073E191F111D9CA0084F3D194812495ACAF63211F94D63E387C023DBB12E8CEE8A3109208320C6940E5DAD7C67AA95AAD358B45E33AD30026AE57BDEAE239A2062283CEA975045A4BA8DFBFAD014865634E82744A06C207A6ACCDF6B5452D21C8';
wwv_flow_imp.g_varchar2_table(123) := '416ABD4535D22E7B6F0E943B4162235A4BA553208010A0E0229CEE949BC34CAD469F8B50119F7E3469932AAF3A47B37D945193C73E7FB558844A459D30C407261A619F956CA6CB31D89C0726BA35A2D2891CD21D6457D3537975A8B168A330CA8B656D69';
wwv_flow_imp.g_varchar2_table(124) := '0B05DF5628901482E1D7C247203C4375DA4900A59517B1ADACEA330315014B911B8A05CF74F2A53CC369C0B198601DB6586C4EBB7609B6A002C8F4567335FD22A61E00725AD559A36877B6066E391BBC29DF2B1DC9084391B50444107F1D53133B2B9211';
wwv_flow_imp.g_varchar2_table(125) := '875C8B523920A09E526663254655D395F771FBF0A6062B85DA960094EAC8879ACEA516CBA914B2B99866960C0335151A724E285CCA1F0DAA04151BA7159B9C69C8FC32D1DCCE1ACC9F09407816424A105AA2B246C70E7F4A31084149AD3DD3646B06C7D8';
wwv_flow_imp.g_varchar2_table(126) := '9B347EA7F377C51371E3C0694616882887632FB86561F14A7F11B50A5C36632EA8237C8E164FC0360520C3290A895F9583CCB81A3DC9A5F9D9C89565A8A5FD51B103E1ABA238838B7D3C59FB6A1927D8EB0D580A2C318B650A8422E0A96E39EA34443F53';
wwv_flow_imp.g_varchar2_table(127) := '518646F8F69CA30165512735EA4F3E87F3FC1BEA45DB271C941C43520599AB2E2910E660AF198947992E0BB4B444FC948632C0A2082746B60326E4D4AD465B0A630FB63500C9A6AF666886A6711D68F8BA8480576C7609CCB4B66A9FD5D435E9C5A99CEE';
wwv_flow_imp.g_varchar2_table(128) := '97140C8B257B45F0758610996B6385371E942BB359900B8343D6623693EA8E289AEA461884F9B6B0926094B596A453D4A9EC313E4315B2B1C6703E033C7867AEC8080920214319E134DB1280F0816A7314698F909E76B58755AE93294349C1F72153E17F';
wwv_flow_imp.g_varchar2_table(129) := 'F9C41DE1B9D2A4A00691CB8D69AB169B525653CBE6A66272103A9A2E83397D730A4060F96E3313369BAC273CEB82A5ABC3C985A1FE2E35658B3F6C5B0390AA85E044708997A4A82ECF26F62C4D699D1658A8A6F8257F47816C8F24B5159671A250AD63A2';
wwv_flow_imp.g_varchar2_table(130) := '5D548E5EAFB9C02D7F471F8F7802B62964DE869875E1FBD31C96591E68521C2F54FE629689C0C2B35130693005F830B0C66097B9C23E523D5A45CA4F879577C995D62304495191430E36AA713865FE40C87723EDD709B5BF56D41B32E2ACA50A6B17EECB';
wwv_flow_imp.g_varchar2_table(131) := '7AF7A03D8F19481EBFB05BA17FC5B28F3E23049739023A99A4BD8E3D8276D87357D1D32211A76FDF7E9F367EBF54A42D034CACE5E5974DC1D54B90061E6B66B909EC13C0C86502C08112EB2B7D79E955CBECF367ADCFA8F80AD6CBE59675BD72C4A3537E';
wwv_flow_imp.g_varchar2_table(132) := 'E6C4C23137DCA369DACDD93618AA65BCB98951CEAE059F3F6373DE428192ED3E51DA3F61B834046B953624791FB4B4FD4E1E4403CE13ADBE3190DBF5E9DC6769E5A22F1C1F2F03CBF63AEE08F3F7F7FE3C9B967DFA4F72BB910B2F40D092013305D47029';
wwv_flow_imp.g_varchar2_table(133) := 'C780723AB9625AF2CC4CD7CA5C7FE1A60990AE69F78E79EC615180A085A36052B060EC44BCF0EE5CEF9396D15CD7B5C7EFB24D249E0D27B5008FB52B22C253075F3B8676548A71E27A3439F9CF4B6F3AB62E7002D08795F369C5A22F5B455D4567EB24FB';
wwv_flow_imp.g_varchar2_table(134) := 'E1A065B617A5C69E80C5C334222CECDA2DE39F9D7D4F217B503880C64DBC82749A56C84B7FCE7BB86A07B4131764B1F44DE9D2A7179D76DBF51CC8A58E869A08BD7AD7FDD414A94B9BAE13803EA89CCF053ADB6BD3DB7CCD907860C8A59ACB3DFED2D953';
wwv_flow_imp.g_varchar2_table(135) := 'A717F28E8201F4F8B849C3755D4F55F12EE4ED0669B074F12BF43985DCA713E7BA23400C032D28D1C04E8EF71F994BABBFF8BA03018498236BF66A219F99EB1E4DD32EBA64E67D4FE5BACEE9F78201347FCC845335CDF5B7425E0AE4C32888602E2E71AB';
wwv_flow_imp.g_varchar2_table(136) := 'EBAC45806CE755C2A490973A7EBD46E7DD7707058C50D34FE63E4D03CE3F930B9963ACFEF737F4C6BD0F71933AD570F9735020684BB15813A7274128874DC8297C25D352801DB241146BEBF16435BCEA7AF2B4918F4E7DBD90652D18400BC6DE700491F6';
wwv_flow_imp.g_varchar2_table(137) := '494B5F2A9C87429D862A8DAC4B6C08046E54004348432E2BB5FA4EE6E74D8D028CACCE22D6C7EA5AC834C77D8E3F9A0EBBF897E6CF2FFCFAF7D4EFF41369EFA307F2DF30AFA727DC46759BAA58F597206A31808C70D496AC95EA9AC07D7837CC04F91C30';
wwv_flow_imp.g_varchar2_table(138) := 'D58CC26B620090EB423B0EFDC811B3A6589B80E439D98201F444C5C4FD92496DB128499A5B7D94F391667EB65B84D17E5A64A642F3696A8C422348C5F3E6F111AA099FE7E17291D7830C8660568D0FB2CAA9B75D4F5D77E9CD6F896CDA4CCFDFFA7FD4AB';
wwv_flow_imp.g_varchar2_table(139) := 'EFBE74F284F1E69B51B5FEFD99F38C66C1C51CE0D6120041B3E21A3CC64642BDCFB5E85CD5D6A8EC2F8C942156F3915AEDCF12C52027ADB6495797D0C9ED220E1DED7FF18CFBBFCB63B9D32EC9F52D199F3967D4A840BCD98F009D0023DCEBCB4A26E583';
wwv_flow_imp.g_varchar2_table(140) := '609B81DDC46E24C386A20409A889F0D6A31F7CAAEFBBD344D44C4CC40841F5C542EBC9046F38362B933A5DBCE30E74F24D5751B054644AFCEB2F2FD1E7CFBF4AA192121AFEE0DD66462B72C49E9B34597454362201F302904CD78E89127B3830B2E977B8';
wwv_flow_imp.g_varchar2_table(141) := 'C81AA560FF36D5712C1CC26E4BDBEE60B824AB8D498D66C0B3316FACAF346388F01073EB1B63F1A22EE573EF2AA8935FC100C2C4A60D2B7F8F8806E1BF850FC6DA07CCBE30ECA947B4219AE22207DE1670064A249D9962B340723344F2C96ECFE8430AB0';
wwv_flow_imp.g_varchar2_table(142) := 'A03B9096CAB387ADC3E3F6F07BD234234DA3432F184AFB9E70B4A052BA4E3F7CF8296DF8E147AE06B6F7B14750498FEE3C7DB43C58F4E40BF4CD5BEF120A5306C361422D232418AA7620BB16260BA7CBFA478820E4CC8968AD0847C9608D1786BE28D796';
wwv_flow_imp.g_varchar2_table(143) := 'C47FABFDD3E07BC37739F596956BCD166AB4C734AAE2AACE67F95CB5CFBC4EDAFB2367DD37B810EAC3FB5EE88D0CA00B46DFE976B927B3FF86C3205C6C8ACF24EC71E5563404C99058C81BC675FB226C0B0922372C4369B7548B4D78CDADDE79B5A09253';
wwv_flow_imp.g_varchar2_table(144) := '6B0008CD47950FA79E07EC9BF3F3B1213F7EB488FE316B3E35A18288DBC3F3CA06206E555E2F0A3A61A841EC1C4EC20EE5F498715C2B0A24C0022E940B1540C8236B6CAC234427381E0C23F70B0175C8C717940F154F449A752AA4557C03D73122EDAE91';
wwv_flow_imp.g_varchar2_table(145) := 'B3EE1375940B18AD03D0F9A30607C2C5EF02388811C6C641880D17832DA43FBA11EDBD0DDF8D1305921F6966BA225CA1445422B30F59302953F16DB0372E20892A154A782716B167BF7DE9D88A11E40B67122AAD6FDBB27235BD3F7D1E6D58F623E4050A';
wwv_flow_imp.g_varchar2_table(146) := '068BE9C8F2E11929108023DAA00BC15E05B1A40E4E31E3B856385671C8E09EB0B600C5DC91BAC3490B7CB8D259BC1A562CDE1DB0503B19F62AD7E4BF14E8F8FF522070928246AB000439C8AD95224634906AA622626D9CB4851480340ED3CC445D541900';
wwv_flow_imp.g_varchar2_table(147) := 'A11F4EAC4E868CC0B796293342460088132BB22D50ADE3C0B38650BFD34E304F65ED868DDCDE4056FCC0C695F6EA61CA47B8101D7CFEFDDA1B4623B7201D8B42538A2B4365616A4421B376A5580428435DA486354D7BDE16DE2383DA04F57073388A8CC7';
wwv_flow_imp.g_varchar2_table(148) := 'E6C0F9DA6A96F1649766FBAEDB6B24DA8B76C9B01A234AA255F20FDEDD2A00E1010BC6DEF0149176A1AA0D654A2C4CB5AE76F186666A4BA4868338B1A054545E33159776CB787224C91631D0451C830443E1C9378EA7B23EBDF83ED402FA70F6E3B4F2B3';
wwv_flow_imp.g_varchar2_table(149) := '2F4D4063A3065E3A8CF63AE67033310F1D94DF9F318FD391D1B567F0F8F28C0052E7AFD6414AB111B03184A416A7698AB26DA8138044FBA91A16A83365A8AA3512F10C7B4D44292208B9B1E8E94B1F9D32BC20D263DCD41600627B902A34660AD892E55D';
wwv_flow_imp.g_varchar2_table(150) := 'A41C9151566A6E62C72206075585ADFD2152AD14625452666DD26B5F0C99C921B5BE9DF6D9937B7E8958699DEAAB6BE9C5DB7F4F890611922147DF538FA7FE670D31F3D29BA3F5F4EC4D93A9AE6A0B0BD1C75F399A3DF87C0A35E22A1A7065082A82DE5E';
wwv_flow_imp.g_varchar2_table(151) := '42FEB1975941B03F470590E82362D712550071520122090C3309808D1276F877A6B6075837E4AC8981E62CD60326435A45B64769C1F61FB94EAD061053A131133F4DC463031B2007A1A893A1FDD81747A6F5A4B59DB6EDBAAA863A15146000196933F686';
wwv_flow_imp.g_varchar2_table(152) := '77E90042AA4BD22C368012741E3F8A4C0A5F106B8571C112546D0DAC0E95EDE5006BA8D9BC91E53CB0D4A2B2AE6C04950305132000CB781B19C6A20AB1BCA566935C9D83FEED6B24A934AEB5CB2F985FCDD6CD86C6EBDC3743A627C97971771F6598CD63';
wwv_flow_imp.g_varchar2_table(153) := '745A78C5B3B353E1040592A1360110FC628944E249844FC88AA490F2ED761C9995910960E66628B1444EC62FB54768B6A83DA606462769A72C11B92108338150996DE05423C80BA73F5B44A3BDD0B73D804EA6F1E01BECED42F17ED502ED642BABD98AE2';
wwv_flow_imp.g_varchar2_table(154) := '139491025900C44A88A8E82F874CBCD493C98BC63F37B720FF97FABC3601D0BB93277B56AFAE5D1EADABEDC300CA90D826019429775E4E4CA5304E21B01C2F8D26BE087535323F336DBE8CF6C39CCC066BCAC5A806921780A01D21A6FBBF312CAA506C7F';
wwv_flow_imp.g_varchar2_table(155) := '2F6B41605106DBB10785C94842AE0719466CB855935201641780D98E944306422E5B8CCB278B3A9496987043956F8846D6AC59DF6BB7BBDEBB4BE8FAAD186D0220BCFFF1B113CE8E446A5FE00A1AB0E1B090EC9C999A0B40789E8C694E556E4D4D550598';
wwv_flow_imp.g_varchar2_table(156) := '5DC6B0AF85C807173287FDC43355698866CD7495CF937957F877B64A6C7635DACE4270BF14B29D14845873235BD3319CD8B36471BE408873F32DD40065EC6AABCDA62E8EF58474A2C6E686A163E73FF2722B7063DEDA6600C213A75F38E64F7A32791D2F';
wwv_flow_imp.g_varchar2_table(157) := '7296D4E6BC0064A4A9D8B5189E39E79E0B6B6D3E0012D6ED649AFB44BA55044B85DB2373086ACA7029120F9D6C30989A5D0B720290598A0E769E1261E49303119CF5F575666EBFDD1C227D89A90A1DD62D94F59540E90040FB3C358D1EB864E6FDD7B705';
wwv_flow_imp.g_varchar2_table(158) := '7898CAB5D583F09CCA8A0A6F726BEC23223ACC29203C5F168667C9BCB04CEC50F27AFC8EECD14C5E6A55E6B0B3BB5CD544D4B59141FADC76298BB55DAD838DFB9D0024D27264E2206494D436200417B59EF15D4E14088E52E4C73BD54064EA87821046CC';
wwv_flow_imp.g_varchar2_table(159) := 'B9435B83F7A2AEC890CB67CC103CAE0D469B0208F399367CD46E5A5CFBC2170C96C11EA40ED9533E9F132FCBFEC2082D54562BB9CE1740605D4D8D229DD7BEA1723EB952AD719F99D706D78043D106F99DB014AB8385585B1281CA82852696A27CF0B7C1';
wwv_flow_imp.g_varchar2_table(160) := 'AA8F61FF0D7F132C122C596455A8A6073947A60CB03359AB826C7051FCA08B673DD0BA126F36D0B539801844E78D19E00FF99FF7F983A902854AFDA05C6A3C9E21E39941419C6485148090A99A398314CF52C31B54A1360520E77A46EA5A49E1D6AE96DB';
wwv_flow_imp.g_varchar2_table(161) := '0FB15A8104BFC1D6E3949D219F078B349C9B72481947B59EABEF805387DD21CD8DEC94851F106B241CD135A6FB04141994D9304DACD493FAD923674FF9771B101DCB23DA054078C3BC4BAFEAE6F605A0269E24DF6855E3B3CB1CB847CA28C23069094160';
wwv_flow_imp.g_varchar2_table(162) := '16007923970C244FAD74B5B06D2514E6D81AAEE2011B1107DBA31B60E6E53501E4466A92B51D837A974A05184008BD308A645A8060441E102509E119920A49636BB69C300E18E3EE3B71F2C225E20F70903C271A1ADA9FB4546B44EFC49B7D175CF6D8DD';
wwv_flow_imp.g_varchar2_table(163) := 'A95EE66D88A2760310E6F8CCB061EEE6D25DFE4C449C73D4121908D7CBB2BF4EE54A2480401170CA7305B39BAE16A8F3E1626A6E6EE6530C529FC9316901063B391BB858433600C9BE1FF25E595DC469CF4035208781DAC8644BFC1BB9EEA24A6DAAFC8C';
wwv_flow_imp.g_varchar2_table(164) := 'FD7EC9060126E92B93F961A04CFE2053B5FB7D353FDD7CC1B3CF8A88B67618ED0A2039DF05C8E048D203D1BA1A1F3E38DFD462617617CD432C0595640530A39DA6BD418BE36629459F586E10E92C3C17B53747A635966C50CA1699AF138D63E470ECCFA5';
wwv_flow_imp.g_varchar2_table(165) := 'DC0C8D0CE6040E38D311C34CE4F50732FA09ED540CAC3E61C40EE11946EC344851F98859539E6E07CC581EF9B300086F9C77AA5DE53D0000020449444154E984DE0D4DB563745D1FEBF70777762C0DE7F0B552A6508B4AA9E112999C8A4E0BC78D536231';
wwv_flow_imp.g_varchar2_table(166) := '665BA05CB09364ABF2A13E03C1EDF551513A8F295086EC5AB55A3CAECD541EC6F26CA4D7B0FD4C6D5159C8D66BAB354ACE8A7BF459974D9FBAA69027B4F49E9F0D407262606B0DC53D87BA5DDECB8968482E53026C3D22AE075A87A8F783E035181AB189';
wwv_flow_imp.g_varchar2_table(167) := 'C28ED2B2CF2824D9913DFB916A8E89965D869C165BB5248BD828D17CB71D4742277A8D74ADD25FBBF2F5F664574EDFD0B2956FE35578A6E2E6D258227E50D24503349D0610D12144B43F9CF0F255AA73127E31B4BE465C11D709540A2CB5F1D4D21E27E5';
wwv_flow_imp.g_varchar2_table(168) := '15FC90CD9028353B11C88666B9D9E3BA5B386FB81E166BA47DA1137DE1D2125F3424BC9F8F99FD87480B9FD36697772880327DC533E5D7748F7B7DDD92095737DD95E8166B6EEED6D4500FB77231580F04489CEE50111CA02DCB416FCDCAD5D50A1B4F20';
wwv_flow_imp.g_varchar2_table(169) := '10228FBD6D24FF02B709AE1173127EA896CF4F233DA293B685B46495967457B9DCC92A4FACB9EA82390F6D6ACDFCDBE3DE6D1240EDF1A19DCF6C9F15E80450FBACEB76F3D44E006D375BDD3E1FDA09A0F659D7EDE6A99D00DA6EB6BA7D3EB41340EDB3AE';
wwv_flow_imp.g_varchar2_table(170) := 'DBCD533B01B4DD6C75FB7C682780DA675DB79BA7760268BBD9EAF6F9D04E00B5CFBA6E374FED04D076B3D5EDF3A19D006A9F75DD6E9EDA09A0ED66ABDBE7433B01D43EEBBADD3CF5FF018691CFF8FE4147430000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(684426635353773648)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_256_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A866000000017352474200AECE1CE90000200049444154785EED7D07981CC599F6D7B3333B3BB349422024B24832204C34886CC0C63618939140224B02616C937C679FEF0E';
wwv_flow_imp.g_varchar2_table(2) := '639FFD834DB27D264BC2086182236010C9800922838DC82072509636C7E9FFDEAAA999EAEAEAAEEA99D9D9D56ED73D7AF0ED74A8AAAE7AEB8BEFE750DCE219886760C4CE803362471E0F3C9E8178062806807811C43330826720068011FCF1E3A1C73310';
wwv_flow_imp.g_varchar2_table(3) := '0340BC06E21918C1331003C008FEF8F1D0E3198801205E03F10C8CE019880160047FFC78E8F10CC40010AF81780646F00CC40030823F7E3CF47806620088D7403C03237806620018C11F3F1E7A3C033100C46B209E81113C0331008CE08F1F0F3D9E8118';
wwv_flow_imp.g_varchar2_table(4) := '00E23510CFC0089E81180046F0C78F871ECF400C00F11A88676004CF400C0023F8E3C7438F67200680780DC43330826720068011FCF1E3A1C733100340BC06E21918C1331003C008FEF8F1D0E3198801205E03F10C8CE019880160047FFC78E8F10CC400';
wwv_flow_imp.g_varchar2_table(5) := '10AF81780646F00CC40030823F7E3CF47806462C005C376B5673B2B36E474AF46FEF50620772697BC7A1EDC9A58DC297854BBDBD3DD4D7DB53B82C954A533295A2DEDE5EEAEBED2EFCDD71125497A91FB455E6924BDD9D1DE4BA397D1F1C87124E826AD3';
wwv_flow_imp.g_varchar2_table(6) := '7584BE86B5FE5C1FF5747711B92EBB2C519364F7F5F7F5526F8F3C66876AD3594A24C29F376893E2D0A7AE4BAF39E4BE9A73DCD76AC879B53BDDB3F8CCEBAF5F3B687D1AC4170F7B005830FB07A39DFEDE1DDC1C6DEF92BB0391B33D11E19F61A3EBBF8A';
wwv_flow_imp.g_varchar2_table(7) := 'EBBAD4DDD55158F48EE3505DB68192C914F5F7F751475B8BE7C64CB69181C360346CCCAECE76C3AB1D4AD5A6295D97218C25A8B9B91CB5B7B710FECB9B43E94C867ABBBB2997EBF780615D76F040AFD479EEEDEDF9B4A7ABF3B55CAEFF5597E835C7C9BD';
wwv_flow_imp.g_varchar2_table(8) := 'EA26B3AF9D7DEB35AB4B7DE6BA70DFB005803BCE386FBD1E4A1CEE24E848D7750F2172B295F820384D3BDADA2897EBE3DB2091A06C7D53E1C46B6F5DEBD910C9542D65B20D957875E467B4B7B552AEBF97F7139B5B6C70D7250059B1390C0070A287B5CE';
wwv_flow_imp.g_varchar2_table(9) := 'F676EAEB2B9EF6DE6B1D06749078C28024F220AA70432E97A3AE8E3606E052EB20A2FB89127F4E3535FD6DC69C2B5755A12B557FC5B00280DFCDFAF7CD92B9FE235DC73D925CDA9F886A2A3DA3582CD8E4447C03D5D42429DBD054788D7AEA42B4C6EFD5';
wwv_flow_imp.g_varchar2_table(10) := '1689D14F482300AC9A648A849A0211BEB7B79B7ABABB3DAA01800C4085F104B55C7F3F9328E48D82CD8E3102E8B82AB1EE2D29A836DD5D9D856F0AE9467C5FCC453259DB9FCE64FFE138357F4ABA893F9D30F7179F567A5D0DD6F3D6BDAFA599296CFC44';
wwv_flow_imp.g_varchar2_table(11) := 'AEEFE70ED109504F077232FBFBFAA8A3BD28E6D7A633ECF4140D1BAFB3BD85F0DFFCD14BE9BA2CD5D6A607B25BBE670388A0AA607366EA1B28912862214EFFDE9E2EA6D3CB92404DB296B2F5E1D20A40000080FBC4E677120E7BFEBAB8F9318E4E9CFE7D';
wwv_flow_imp.g_varchar2_table(12) := '45492999AC656314AA0DC6856F0855898872E4D0827E27F99FA75C7FE98755FDA803F0B2751A00E6CF3A777CC24DFC87EB3AB388A87600E6C7F74818FFB06044C3A989D34F346623E86C678642D152A95A6E0CACE2E908E35F4F4F177B6F7EE17AC7E2BA';
wwv_flow_imp.g_varchar2_table(13) := 'D4D10EB1972FFCE27806CF66518DEFA7BE83D936F292127E63125B7D23F5F4743390140D5214BEB504723D44EEB56E2277C949D75FF5D960F4BD12EF5C270160DEA9E78E4AA6923F725CF7DB44543C7E2B31238667888D252EAB6F68A6448D57D350D500';
wwv_flow_imp.g_varchar2_table(14) := '88D5308CC9A7F0807615A75A673BF354D4373607BE17A7797B9BD7F85D5393A26C43E380762FCAC32149611C7D38A15D97195B016850592AD154401700D09FEB67402E4B4800060081D23AC9A1DFF4F6F6FFBFD36EBA6A4D25FA54CD67AC530070C7D967';
wwv_flow_imp.g_varchar2_table(15) := '3774F764BEEB107D3F97CB8DE2BA2844D1041747F17FF86F851687EE43A800D0D8BC9EEF322CD6AE0E2C1EAE06087760B5BC01CCA8055DBDAF9774FD933BDCD9DE467D7D456945A80C61B6806A2DD0BEDE5EA6C6C85E06BC1B227A3A531957634F572775';
wwv_flow_imp.g_varchar2_table(16) := '7743FFE74D0000A435614311BFE1BD50A7021A36FFA5B58DB95F1D7FE595C507566BB24A7CCF3A0300B7CEBAE00BB97EBA8F1CDA020B03E26D516FCB03003374738314FE0D844E2A0300DED5D034CA37F500260080BC70991DC060652FF11BFA6E938D75';
wwv_flow_imp.g_varchar2_table(17) := '2600005875B6B74ACFB0F30854AAAF41CFC137EEEA6A97DC8EF2958835A8A3741DBC16E52D611D00E2A48754D7D1DE5A5863797860EA414D32D8504A444B9CFEFEAF4E9B77D592819EA34A3CBFBCD9AB440F2C9E317FE6F97B3BE4DC472E354124C3E926';
wwv_flow_imp.g_varchar2_table(18) := '07E2A88FC0C6ACADABA3DADA70B796C5AB7D97C800A07A00C4C57C0342BF96FCE3CCD79E1D1050523B094325DE0F49C00400D081B1D0BDBEFCEADB2CE431C8128CD878D8909857619DE7DE95C6B2D5AAF656186C8BEE3F2101E07DB003400D901BD614A4';
wwv_flow_imp.g_varchar2_table(19) := '0F435B9148D051275E7FF913A60B07FBF7210F000B665E30CD7569AE30F2A9469BA0091C2851D60600D047E8E04242411F113987D36320A412750E840A82BFEB2414F97A35B009BF55DD66A10C80DB50E086E7AE56E8FCF807E36B311089986BB3DCA0A3';
wwv_flow_imp.g_varchar2_table(20) := 'D6B55EF7BE0C000045EEF22D36A897B0FB587CC71E97DC9927DD78C5CD83BDC9C3DE3F6401C0257216CC3CFF67E43A3F9407A08BB60B1A20B3DC2230A582360119008274422C5226A5E45D4BE214E3063943C82D733FE5D802ABA9816B2DBAB14B182183';
wwv_flow_imp.g_varchar2_table(21) := '241475BED40D87F982F70006B76A3726E17560EEB85D428E4FE8C4DF3DA1D60E6561842DF1FBF2980EAFDD4E0600BCBFA3ADD5E329C1774174A7410D284C9B43F4F3136FBCFC3F1D39B0A0DA931AF2BE210B000BCEB8E02AD7A1EFF94E37C50D679A4B9C';
wwv_flow_imp.g_varchar2_table(22) := '1C7575D98AB9E0640008120783D4944C7D63E8A62ADA0E3800400C852D23954C4502311ED8D2E10B520A9A2BAE32786D1681EE43D38497F93B4E5D6E7CE3A7BF3CC7AAC59E4B0775546716C9B5BD52633A18E0E4DD80C2B323E6523C408909B01AADEBBA';
wwv_flow_imp.g_varchar2_table(23) := '979E34E78A1F585D5CE58B862400CC9936FBAC74267B8D6E2E748B80E9FCD0F71DCA07B714935FF0C16A2B1888E35101922926D6EB1A36949C24C316735D96D20186402C780418713D576A7949000147562732E210BA11E4D3690D007E9D9B8BDDD5B259';
wwv_flow_imp.g_varchar2_table(24) := 'C8C3EDEDE961F60BD11A1A9BC9C9073141B26A534E6C9CFE1929143BCAFEB101009D1A106607C0770468609D0244906C95E2C956334F9A73F98D51FA578D6B871C005C7BDCE97B256A6A1EABCBD6A7747E73BFDF164929F584601B34D50587BF319D3653';
wwv_flow_imp.g_varchar2_table(25) := 'EFF3D79732C13636003C5707004C1A09C80E842BAAA70B8127728C7EB187CCA68150DD700B34F39517002004A03C63CF1B56E5E0A56ADA2CE4BEC0E806E31B1AFA502F8559E36F6D2D6BC9758B20C94E64E9FB47F9A6BDDD5DD4D5055B83779E65E3A2CE';
wwv_flow_imp.g_varchar2_table(26) := 'E6042086ED41A79E21A418E0EB7966220130ED4D256B0E9C3EE7AA27A3F471A0AF1D520070ED31A76EE3269CA71CC7599FE9A052849D9808649FC13D249ACE10C4C4367C8442C24BE55C5BD8A4DDDD7CD184E9D8FEF872FD82C6737427B0EEC30310A146';
wwv_flow_imp.g_varchar2_table(27) := '84E9BCEC04C222ECE9F288CFA685A42EDCC1CA6140545E2E9F94838DAD86506B252B3BCBBC6F0AB400C08C7C4D85CDAD860A871E28AE4B6DAD00285DFA35735D2E4F66EAF63DE5862BDE327D8F6AFD3E6400E0D7D3A635A57A6A9F27A26D3078E6E74D67';
wwv_flow_imp.g_varchar2_table(28) := '7CBABB4D241EC4361892E4A4954402493B08E58C6E54933F862C816043C2B0A76B22165F8E24C369D5D034DA77B9ECB6337D7835F740BD5E36A259BAACD82374FD35D92C4C7D2DE5F7D6B5C8BE851404035F1333847AE6DF17B7402C3A8F4978118D813A';
wwv_flow_imp.g_varchar2_table(29) := '00C033EA1B8BB11D32A08A7EE09ABA8C5F1A83DBB74389ACF4CE8143A974FAAD3A37F9A5E90B7EE3CD1B2F65B22A70CF900080EB66CD4AB9ABFBFFE652EEAB624C385DB10055778B1A9C11E4E7D689D43016C168544E535590A0F7E33A9C56DEB45BD2FA';
wwv_flow_imp.g_varchar2_table(30) := 'E5919D07C0921BC4DFBABA0C7523E0A9B718AF6FD2794B05005D7F79B08DD1E75DCE747AEE95F56D802B447115B07996234ED9A2AA14B4214D1DD302404D8AEA9550681DAF025400489F7253A553DDFBF346C4FBDF9F30E6D08B2FBE3880A9C5D4F3CAFD';
wwv_flow_imp.g_varchar2_table(31) := '3E2400E0E6D3CF3BABB3A3ED1A21FA617898289D8B47CEB7779C1A6A68D29FC038FD11E1E659281A9D32EA54CA0010A602706B36DEEFFDC6FC54F34692A90B0CC6239C68B8CEAF83C2A899978E349DE77C053CB0278A040029A4B3A3F2F315657E65A35C';
wwv_flow_imp.g_varchar2_table(32) := '90119289E488D0F3E6EE07273D85744007003A3B0D8B4A64605EFC965C12F34622AA1E83C261964CB23075E116E671160DB34F9E7BE5B551E66720AE1D7400B865DA779ADC74EAEDAEAEF6B16A745F5D5D3D4426CFB8E5C00D939F1BEE24DF42C936140C';
wwv_flow_imp.g_varchar2_table(33) := '86A54CA89C40838D8AA0105DC36261596605061D7E152CD649D9902719EDF8150EF314D4E6538CB9551986A562661A334205C437C8CC3D510000E38274252FF22095A59479B3B9A708840E73ED05653132E94E9A0F3C1B929D89D548ED830E00E03286D5';
wwv_flow_imp.g_varchar2_table(34) := '5E6EBAD06ED8A754F213354E413C03E3C0F5201D29B837D3D9A58DD98689C75F7FE9A052910D3A00CC9F71E18F1D722FD2197774813651004087C83639EF618BD51B3CE25063B35FA717F723C8A4C00B90FFA3EA5FE7E9C31D8CA4834B3E3C1D55CE30E4';
wwv_flow_imp.g_varchar2_table(35) := 'AE31A8085CEC65C945597DA08EDCBF720100EFD2653BE2EF008ABEBE3EC2A98D7E71D211040E95BEA4847DC71488A413C94BB1F1D802808E3148A7A2B0F46A29B14A06007C77F940C2FD75F54D179F32F78A1FDB80E3405D53FAD7AA408F6E3EEBC2B189';
wwv_flow_imp.g_varchar2_table(36) := '7EF76DC4F8EBACE6584C086595ED005100401735A85278451D861A3D16166BAF4691F193CAEB0A54455A1D851813CF3BBD61B04C04C549A5700C408D82E48156090000DFA170B18AB9C21C20D008A1CEE24463918BC9143B854B4D7B16F305FB4726247D';
wwv_flow_imp.g_varchar2_table(37) := '5AE7EA0D03ABA06F6C0B00FAC84E62C642D9F0A8D2C115243AE4A5A433CCD02A7334D6D666D66632A98927DEF8ABA551D761A5AE1F5400B865E685D792EB9E89C1E8ACD0F8BB4AAA19050070BF3FD6BB48E259CA24CA0010940D289EAB1309D50DAEEAF8';
wwv_flow_imp.g_varchar2_table(38) := '3AB587BB0971BA14935682FCF47D3D3D0C2CD082A2F9324D8D34F9B4A9B4D1A489D653F0E21FEEA6371E7C9C052AC9A4A8EA03845F1E6A8A45BCBCE7762131713FBB877CC3739D4E2467E3D5A88C6103D40240808A0823AD90D2C433E10948D516C96074';
wwv_flow_imp.g_varchar2_table(39) := '129F1CA700B00448C869E2F58D4DBF3A69CE95E75A7F880A5F386800F0FBB3CEDDA2BFAFE61DC1DBA73342E94EB1A800E047E5F26202640030D920549725C6A3BA9954520EF554C13DFAD06218491B7D064539BF5D652B126BA71C00809D0627B53E6089';
wwv_flow_imp.g_varchar2_table(40) := '73E961D143278FC21108171A37DAE68C493E3A372F93AE222607E9004037FF78B62EC007B60216668E580E8D0D857FEF1A9E0496775122F008EF15AD369DE94AD565B73FF9C6CBDEABF0DEB67ADCA001C02D332EB88D88A6885E3274847B47319AA9BEF6';
wwv_flow_imp.g_varchar2_table(41) := 'A800A043EE72E2C7A300804E5765D964F54D8505010B33ACEFA205BA35351166BA9800C604948FA4035BB12E72B01C0040469EBC8045BF016CE80F360A3FE138DDB86D9C3EA21005038F49750912C94D1299BA2374001034FF3A09558E540C3AC054898F';
wwv_flow_imp.g_varchar2_table(42) := 'C70A4045CBD75740705743D3ED27CFB962AAD58EADF045830200F34EFDFEB85432076655CFFB753AB31A912603405868AD98271E0FE00DCDE4F4D5C12266D81CCB00607ABFD606A16493D9061671BDB76845461F11238F5879B9C9711241A7593900D0BA';
wwv_flow_imp.g_varchar2_table(43) := '669526D28D9366D6A6D34C4D91DD89B64945FC84E527A389A21C00C33306BD7C86B837C868A9FBA6BA5C8020000872EB8AEB835458F500D39190A6D3593799496E3C18DC82830200B7CCBCE02C72C997EC03AAEA6E29CC972D7225D65B0600D34981FB75';
wwv_flow_imp.g_varchar2_table(44) := 'C943616E3413C0CAD15E36EF67A1A152E10C18ED649660FBB8021077F8DD8A0D8DA33C998242E5811781F30FF8231F4B058057173E42ED2D7EDA3B66B4CBE75AA8EA0ADECF426BC3A2F4240E43E606B5A851A0F31A31F0D0840F077D531500E049A86F2C';
wwv_flow_imp.g_varchar2_table(45) := '52BCABF7A11E447F7F913E0DBF0B294BA7220815408D16855B97D390F3C6A484BAECECE983101730380030E3828544F4357582B93E5C148FC4EF62A3F928B92D62C0FD9457E52507C91BD6060074AE48590581251DA7369AC9A6A0332AAA7ABE00480D8B';
wwv_flow_imp.g_varchar2_table(46) := '6D61BA4B058057EE7D883A99FEEF6DAAD1CE4FE811EEA3F7E642D80140D0864BD6A61918D93413C5BBFA0CDD612200270890746E6735B088B904B3F5F79F32EF575FB7E97725AFA93A00CC39FDDF1AD389FE154134DE38E5646B37DB18F9C0170084AC2F';
wwv_flow_imp.g_varchar2_table(47) := '23574004CC044D8A2E9D13F1E5500154365F9B898D0A004C7484714BB26DE423C19841504E7F3501800ECC64C3976C5084010E3AB9CE125F3200DCF3A087125DCC976A5351F9054C7E7D6F2E841D00E8DDC6C10957BA6FAB0280515D819D0AF469521422';
wwv_flow_imp.g_varchar2_table(48) := '36385C962A15BC789F6E8DB2750CFE85C27358E0534FAADFD9A0DA39025507800533CF3FD5759D79419B4DAF0670861A6C0099AB3D9369A0A4E486D13D53C7FA526AEC389E0F1798D0556D2400969E9BCFCE13FDE3F1E0E0EBAF654140C8DCB39100704D';
wwv_flow_imp.g_varchar2_table(49) := '5BCB1A8F0ECE035290BDE630E0E4454BB0A0F8F3754D07004B9E7C8E5E7FE4711F8741B22645B5993A6A5BB692D62C5BE6B3A7E844765D76A32E724EF4CD9B0B610700B2D1501E6394380F150082BC26F2F365890D7F17042105EA7265C27586589D5707';
wwv_flow_imp.g_varchar2_table(50) := 'F6A4DABACC0927CFB912C6F1AAB5AA03C02D01E2BF187110E71F2608932CC7F6DB187C82689F8222E94C332F6F58E389917F982E908725FB64EA0BAE2F5B00D0D15823690A528D5037649DDC16005EBDEFEFF4ECED7FA66E252929994AB3130E4DA78260';
wwv_flow_imp.g_varchar2_table(51) := '03409A5229CF7522B17EBEF200993700DA32EEE8723DF886F44752067D531500828CA6F2FD6AE4A60001FC574DFC023806458AAA2A0C4BF56E68FCEBC973AE3CD2B4062BF97B5501C024FE8B49D4B3FE721FB368B6A19F3A40E18B56CF37609ADC8E8ED6';
wwv_flow_imp.g_varchar2_table(52) := '42765E909B4D7D862EA5542C5639F6DEC03BCF1EABFA9B65C623B141A11680B936281047270100009EBFF3AF3E1D5F7663F969B2F9860357BE3FC1A9871974BDE9D008614625E56232941A09190428BEEF92771BABA1D651BEADECA5B132560A40D7D0BE';
wwv_flow_imp.g_varchar2_table(53) := 'EBD64DD8F7E47600AF5727936DEC49F6B9555503AA0A000B665E38D575DDDF9B36194F4D0DA96B1FC217A0DB7C72ED37F1BBEDE9AD3EAF1858E4E4ABEED8F10BB09A811D6D1EFD517DB64D9F746082531AA9C32299C7C4901304002FFEF11E9F955FF675';
wwv_flow_imp.g_varchar2_table(54) := 'EB23DDF4F4DCBC46A2976E1CE3C54987FE0910E036156F9E839A0B11B45E74FDE15E968C15253CE6B2AD8557FF8EC680E412AF5BD01150B780F7388CBB8151C081FC442EAD0E0366B6E18469375C563535A0AA002087FE8681803EF2AD7847DE6A1A5AC9';
wwv_flow_imp.g_varchar2_table(55) := '565CCD9FD5E16193651FA70EB1F4D1AB8A092B7B50BE7AD8B8823685D81826B61FF16C161380F4D4BC61117A2FE2F5617D17925158524E1000BCFCE7FBA875CD4ACF10844E8D3FEADC906A64A37CB3AAAE14A5B71A36FFE0CB53C948C39EE707637FB215';
wwv_flow_imp.g_varchar2_table(56) := 'FBB6B5194A67ECBEADF89EA6F063DD77C57780282F1B05C57536750BD4203516C8D43CFABAE9375C7696E990ACD4EF550580F9332E7CD421F7009BCE331D4FE181C77D4CE4AD85F5DF9ED843E7320A4AA609052689943288B0C434366120C3A2110A0D3E';
wwv_flow_imp.g_varchar2_table(57) := '3CC028C868A77B663170A6A816310E0510642A2C3AEAFD4100F0CADD0FD09A15CBBC0090D7A93900F8F90DC25891F8290729A098C3609A9F286E3C5DE0189E6F0AD092FB20004097DF6FEA6B01907B7B99815AA83B0031A84E2A9B91FA3C350A14BF671B';
wwv_flow_imp.g_varchar2_table(58) := '9A1F3B65DE555FB67D77B9D75515006E9971C1E744B4A16DA761E945B8A6A8B083858D932E6A892D2666229D56629181051FA750948415F98399F4EC5020715D5E7E1A0CC00EFCFF29E362519F07DB417717D867BBD9C2C346C478D4CC3D5D3F7400F0FA';
wwv_flow_imp.g_varchar2_table(59) := '038FD23FFF723FB5AC5AE1114B854E8DA84311AB2F3FD3945E8D71C270AAF23204CD4F94126A81B1009A5CFDA0F7090088F25EDBF56BBA8E01A4C2049DAACD2C9DB1E0EA71A67B2BF57BD50000157D53C91AAE704568D824424FC222379D6EBA47EBB2C7';
wwv_flow_imp.g_varchar2_table(60) := 'C2026582BA272FB8C158307E107099EBCF250040C24A25C2861EBFC344FAD2894751C306630A8F5CF9DE87F4D4DCDFD3E7EFBCEBDDAC799D3AE1D4F88C56B8D9C451886BD047963EACB0F8A8E3896288C3BDBAEAC6F87B148E400E00C8102D324B47589E';
wwv_flow_imp.g_varchar2_table(61) := '655FAAE68B0068D39986D1D5AA345C3500B865C6F993899C4565CF58090FD0C58E63A2EBA52C2D9BC78A449B30420E9BE70CE635A337DB98F69B7512358C1DE3917E701AADF9E8135AF88BFFA5B5CBBC6A00A4252415E9380E757C01BAF101C441572E12';
wwv_flow_imp.g_varchar2_table(62) := '95D46B985D07346826DA73E546994558FC1425CE03003098DF9351B8B57B8DC36EA266AFB36FBFF1E96AAC93EA014040FC7F35068977E8527375FC7C61FD1156E7722209AB355EFFE9EAD0A84D37A283BE7B06D53507C7BBAF7CFF437AE0CA6BA8E5F365';
wwv_flow_imp.g_varchar2_table(63) := '059D965727AAE5D57A25350AEFB089C550FB022621961F816741722951B2C3731118C6EB08CA2D3C104A5C29DC8051006320BE1F0F6A2A7ABD1CC7997DD61D73ABC217583500082AF5351013AA7B26426E55BFB48DF82A9E25C713441131AB35BEB0F724';
wwv_flow_imp.g_varchar2_table(64) := '6A12B4E1C4ADE94B271E4D8D1BAE1FDA258CF393C5AFD3A2F977D0AA0F3F661B1EE36581464833F600809FB1A9DAE3953910E57787451E8AEB844DA79285634A193FE618AA0002B9F27121BF9A7DE7BCAA9084540D004C1180A54C5C947B64C28982A818';
wwv_flow_imp.g_varchar2_table(65) := '81251821A0CC2BE1BAAC4457102967943E55E35AE8FCE3B6DB86763DF69BD4BCC9788FD8DFB27215BD70FFC3B4E7E15FA76C63B1C41974EB4F5F7D831E9F730BADFD6C293330E21F4FBF2D7A1D000C41A5D1AA3136BC23C8CD6BE3111152E14014918D3A';
wwv_flow_imp.g_varchar2_table(66) := '7E8C03F30B15A9AFBFEFFED977CCAD4A6250350120920720EA04DA5CAFD317D574DAA0E780F31D15811800207D1319670A1F9F4D1FAA7D4D90CE8FCD7FC72557D1C76FBD4BBB7EF5CB74C86927525D7D318B0E27EBCA0F3EA27B2FB98A3A5683B8D61B89';
wwv_flow_imp.g_varchar2_table(67) := '8971F0B45D3B7FFB408E5B254D15EF0A7329CA813851998406722CE8979BCB7D70F2BCABB618C8F78867571300F445EFAA31CAFC3BA02BCAC9446C115BE68FCB1E80287EE62A0ECFF32A9C805A9D1FC6BEE52BE89EABE7D29BCFBE9017F193B4CFD1DFA4';
wwv_flow_imp.g_varchar2_table(68) := '03A61C45E9ACB710C88AF73EA007AFBAD66313102F429E3F22E806BB057104A25F41D58D70D2B2483E577832ECE34A067ABC2E51F749375E5E950E8D280080F1A99365CB159B4DFC3DC45E1E67CFC920A2D80E067AB1E89E1FA6F3AF59B69C1E98BB8016';
wwv_flow_imp.g_varchar2_table(69) := '3FF1B4A71231ACEF0081FD8F3FD22709A83601FECE68A1D003390F6191A3888C848B4F0ECA813AC82210FBFB984A546A5EC8408E69FA8D9757656F56E52598A85B665C30E81200E05E2DDEA89236EA3EAA9CDE6A9BAD166571B0905EC789149414F47C93';
wwv_flow_imp.g_varchar2_table(70) := 'CE7FD76F6EA0B79E7FC95F869CF9CF93B4DBD70EA2AF9C3235D426807797124711654EA25EAB33F28A67A0AF70652263117A368C6DB0E930180B48668AFAFE4A5F1F0340A56734FF3C7FFCB53E9D557EBD2C626283F132DD2882517E836A21E8A6218D80';
wwv_flow_imp.g_varchar2_table(71) := 'EB3F943ECBF04A93CEFFC1AB6F68D2568B0FAD49A568B7430E0CB409DCFFCBDF524F5B07DB4CA5F2FF973F6BBA27B8D4D5512CB0A25E81EF867F4CC7F6D41544D1587F0DCA81E9A3FD536300B09FAB4857CA8533C48D26966099E22A0AE184A9633AD660';
wwv_flow_imp.g_varchar2_table(72) := '48028CCD27958E040451747E53BF843AA0B309B42E5B418F5F7B33ADF9F8B3502031BD63207EE7A9C5E0EDF3938506BDAFD4A4B081E8BFFCCC180006688699BEC818658BE48E617E60F865A1FF0B915126C828A78B6A1EBCFA2C4803D05D6D72154AD1F9';
wwv_flow_imp.g_varchar2_table(73) := '4D7D0FB209408D5ABEE4037AF18EBB09E1C37E120CD39307F6774619DED5C15D964AD092FA66994DA9DC5E21D291E5ACE09D796903014EA54A73310044FC22F8F0B693AD465E89539795DA9298CA19FB0B44F43C651713FF19FB4EF996EF201E79316CBC';
wwv_flow_imp.g_varchar2_table(74) := '0B5176A63195A3F39BA638C826807959B1E4037A6EC19F68F54760771F5A0D361B2449C12E20E7DBCBBDC4BCC2955B09558EE53A7477160E09BC07CF07C0C0655C5BEB2D706B335B3100D8CC12124250A70ED966395874136CB2B55565A5E7B18D2D15E4';
wwv_flow_imp.g_varchar2_table(75) := '641F8CA519D7B1CAB0825F4FFDA895F41723930FF4D072C14FF49BFF8D37B5F4946E4ACAD5F94DD31C6413C049D7BA7C253DF2AB1B096AC1D06BF0A7BB6C7D0004F05F7C77A880D89898EBA87907BA31AA87847A0DD692A85C1C658E6200B098AD20828D';
wwv_flow_imp.g_varchar2_table(76) := '540A34D4E1C634C130AC524A05BD9671B6A16A6F18BFBD459FC525AA3152B0C7CAA5CCB0F9B2D962849E7A828DDD66027DF99CD32959279D301A3F7F846E692F5D576D02E58EDBE67EAC1F30FBC8D46EFC4001531437384621B011EF8C01C030FB4C87EE';
wwv_flow_imp.g_varchar2_table(77) := '40C14CBDC107A2175276C3362C53050CB44EE806447EF8FE55E24B9B05A2BB4665CD95B3D1D47255D986661F57402299A48D77DC8EA5F4664679137B82FCFCA5F655DC574D9B00BE2DC46A4875600DC237C42632A943E58EB194FB75D585844D893306F1';
wwv_flow_imp.g_varchar2_table(78) := '4425481C588F36361D5C1F0380E16B70DE407F769A7C9B554208FCC25D9D4AAEBA935F74092626C220570A0F41D010BC3CF8C4730BF2D57055A946353A62136CB2D30EB4CBB18751E3586F620FC27BC3FCFCA23F00B2B15B6C4A63C68F63CC4A1D2D2DB4';
wwv_flow_imp.g_varchar2_table(79) := 'F4838F69F5D265A11C77D5B209A865B6009008E481440435CC761395B2A1A3DEA32D1A2A4AC033E252CEFB17D57E140380E14BE8D27BB138B048D9A99EB70033C2CC10865CBC86E986B97EBEF81D6CFE1A6E0AAC50708E3A142F0FBE1A59A8D064274073';
wwv_flow_imp.g_varchar2_table(80) := 'DD549064B2A39AE9EB3FFA9EEFE417B1FD263FFFD6BBEEC4A2FD36DC7C33AAA94DB21316EA100C661FBDF136DD3F773EADFC04691BFA66B209FCE5873F2B2B3E2054B2731CC69E84EF5929552CEA8657AFF733257BEB1AC8001185EE2C0680902FA323F8';
wwv_flow_imp.g_varchar2_table(81) := '28907492C3882778F10E041FDA159A28772158DF0F03240A964A3CF82AAFBEA77494524BB07ECC683AF2921F795EB776F90ABAFBB7730AB1FDBABEA0B8C741D38FA77D8F3E3CB4ABDD1D9DF4B76BE7D1BF1E7D8231DFEA5A984DE0FAA9333DE5B0ADE725';
wwv_flow_imp.g_varchar2_table(82) := '7F21D7A9D72AEE456F22928D7A17F5BDA55E2FD7AAE4CFF0AE3795B5A8A16994B65EA3FAFE180042BE883FF98395562A58FF195F5E6731C2AE54B699521745D87DEA09A7960B6712097CD928F39DB76FC8AA8C0A00D8A4FFB8E32FF4E8EFFFA80DEFC5F3';
wwv_flow_imp.g_varchar2_table(83) := '328D0D2CD167F2B7BE6165C7685BB3961EBCE9567AF9E1C7A8BFAF3F10048EB9F01CFAE201FB787EBFF6F8D379AE3D8944320000200049444154045CAA25644BAA3A35F469B8EA301732FB6E299C8E95FE9EFAA233BCF8ABF04431C69FB6B60231AA2D95';
wwv_flow_imp.g_varchar2_table(84) := '5C0C00215F4B2D3EA9DBE0BC720CF2F751AB3EBA11A6D28B453C8F138B144FB8A08AB4B2E8285B915500E8E9ECA2BF5D7713CBEBD73500CC8E07EC4387CF3E9D01816D5BF1F127B4E0A797D1F20F3F0EBCE5EB334EA67D8FF14A1400807200B7A7AB8BA5';
wwv_flow_imp.g_varchar2_table(85) := '5DA331CF4B96D770F4D51B54CAACDB8EAB92D7E90C806A7211001F36A628E5DFD0C7180002BE14F7BB22ADB7BB70052FB659EFD33DBDE9BF08AC691CF4F455950A5AAEBC230F5935728AA2215101009B7ECA0FCE25E8FE727BE7C57FD1DF6FB98370DA6F';
wwv_flow_imp.g_varchar2_table(86) := 'BADD3674C094A369EC669B142EC13C3FFDD7FBE86FD7059671A42000E0801B5E11386823CAE5D4D5D352ADCE6B97C969D8F260E3E9ED61517C30C646F1F4D80000DE2E877CF37A01459B4E50EF861D005C3775A65B9B4E338B7A39565C2E52792BCE0431';
wwv_flow_imp.g_varchar2_table(87) := 'F4A81FA892813CA59E247235603C2328B458F52F8B0DD5B0FE7A1E1B804902183D6E433AFBD79752A691937D6063BFF6D4B374D76FAEA7F6B5C5D4E8F5C68FA3D37EFE5F347ADCD8C2D0701AFFCFB1A750AE9F4B516A0B03009B2C4BF57972A92EFCA6AB';
wwv_flow_imp.g_varchar2_table(88) := 'D5A71ADD6C095D82BE17C286E17A150DEA0B72316CD6A82D00C8B4F4B6E9C7C30E00AE39EE34960E0CDEFA24523351BCA2141DB1BF8F055EC82D8CA24BAEA6CB68A71B9BAD3E6EA91BDC749FEABD08CB2D904B5F89F4DBA800B0DD5E7BD0B4FFFE7EA15B';
wwv_flow_imp.g_varchar2_table(89) := '5DED1DF497ABAEA5C54FF8099A0F9A763C1D34FD38CF10AE9AF93D5AF1B13EDC370C00F0109BEACDF2CBE4B909626DE612545B2182D256A7D67D17DD06E66B9447939A2205830020936DF4DCABBA7D6DF824862D00608259118B889570C407544F50FC3D';
wwv_flow_imp.g_varchar2_table(90) := '8CA4538DB8B329016DDAC4E5FC0EBB849C88140E006B0BB1EC2237005CFEB217C0240140FF870A205A474B2B2DB8F817F4C16B6FF88631718FDDE8A48B7FE0F9FB75E7FD883E7AE32D6B09005E00117F0F971D526D6D9B4CD916547A4D4DA282FA0791BA';
wwv_flow_imp.g_varchar2_table(91) := '94A6AB762C9E6363C7D055F6D15527862700854045811B9BF894610D009864C7415DFBE8A1B53AFF7F184DB70A18834DE705E9452E9011060038E9040B1113891B9AA871EC06910040DDD49D6DEDF4C7CB7E436F3CF3826FCF1C7CF2543AF084633C7FFF';
wwv_flow_imp.g_varchar2_table(92) := 'CDECF369E9FB1F5903C0DC93BEEDC96780C465C31BA0AA3C61D59F912F0123295F47A52568B1F7B5B7188A7BC28EE1A5489327428DDAE4FDF197275701C08684745802004E0439579B9D10F50D9154011D0084C55AAB7ED828C5274B39554CF7440300D0';
wwv_flow_imp.g_varchar2_table(93) := '90158D9D905E9AC76D18090036D874133AEBAA9F533ACBC93B990DE0C967E8EEABE750DBEA35EC6F9893D1E3C7D1D41F9E4BE3B79A5018425F4F0FFDF888698143D2A900BF3BED7BAC849868B5E92CCBCB3035B5EC79583AB447A456E2244CEF11BFDB44';
wwv_flow_imp.g_varchar2_table(94) := '92C2D58832EB41CD160054B7AE4D5D89610700D74F9DE922DC1522B90C025175B80EC4FFE7B9F9C48709ABECA2BADD069B022A8A0AE04B18AACBD2E88DC64702009D1700A2EB2B8F3D45AF3EF134C1263066E3F1B4FBD70EA24D266EED89B77FE69E852C';
wwv_flow_imp.g_varchar2_table(95) := 'C028A8E900E09633CE67E1AFC2FD6A2BA24701001E08869C7FCEE9C08CBBD8A8116C4A417505E5B19A8CC6BA67E8240015006C9283861D00DC70E2992E5C59E24317D26091970D8A2DCB1C7B04C8C82E402106AAD174E243AA811803C1E9677BEAE03A55';
wwv_flow_imp.g_varchar2_table(96) := '8209E3D657CB6BE3445A6F938D2301004EF79D0EDE9F0E3BF334AAABF79E66F0022060AA6154B3AFDAF28A4F3EA3DFFFEC325AFADE87D10060C605D405D545E2DC43ED00532E451400408778BC004FA70E720307753C8844149B57CEEA33198D7536042D';
wwv_flow_imp.g_varchar2_table(97) := '00B012F54552599B5264C30E00E64C3FDB4574185C016A169F8D55547C4C9D0A80DF849F5CFDE89C01A8B82011AA09370F38ED07A3A9FD0F53495411B31400C01841F57DE8AC936997AF1C48600F32B5DEAE6E7AE896DB591C00C4ED2812C0821917F842';
wwv_flow_imp.g_varchar2_table(98) := '9D2146E3340D6B3E0030E470C8223C829D18B3AF254F23CBC68424A9142B85340AE948965061D10F8A0DB005008C5B3DB87831D2E03919B60000314D36E26072A294DA8A0A0020AE60A25A9ED5A72032668B45304C1B02BFB332D7C81A94C27301224073';
wwv_flow_imp.g_varchar2_table(99) := '1B9F711080850200321E99CB8B371830C76CB249240940DC8B3880A3CFFB366DB5F38E84BC005D63C5325A5AE9F9850FD1A3B7FD890004614DA7022C9879A127F005F7DB00BC0A00A67062D568187400E8FAAFAB23202A1343AD906B0D86A901650140A6';
wwv_flow_imp.g_varchar2_table(100) := '3E94B8665803004F76E165B6D0A220B8CE0DC84EB9BA2C3BD9754D25DFE4E9B7E0DB339F86789E601D92DD77ACDF4E829D0E886D50A9A552993A1AB5C9784AD6D67ABA848214BD121F211307516548D338BF5D7BE11758C6478D1D4B7B9D3EB5F037931B';
wwv_flow_imp.g_varchar2_table(101) := '507E2CFAB2F341FB116203D6DF783C358C46628AC3C4F5D695ABE9D377DFA37F3DF2042DF9E7E2D0935F3C5307007FBFEA060696905E50B61C0DF38D40A6B086B18ACA4B0CEC526946A785D6D3D1C94848FB95E424394E228A2D495D7F788788B3C081D1';
wwv_flow_imp.g_varchar2_table(102) := '2E790758AE06A8D934F6857200C0D4DF610700374E9BEDF213D3617E626E0C2C8A97A609118B072730A2C1D416766278B2EBF2041FD87426BD54BC43B760E4F7CB120C9EB9E1C4AD688B3D77A10DB6DE9292692F00089618F9FE3020F2E8A4E490535343';
wwv_flow_imp.g_varchar2_table(103) := '75F9A83EB6390CB900EA3CB19A794D8DCCF0D7387A14339CF5F7F611D289977FF409A1049A6DD30140E75A7C1B2FF536DF3CA61214C1F7F4B477D067AFBD45EF2D7A9E567DF849A17BB247254AE831427F65C90A0F14C945F8DF72A8398FDC6BD0AA017A';
wwv_flow_imp.g_varchar2_table(104) := '00D0D3C6AB2A8049C2197600208C80829B5D368AB0532255CB0B6E1A2CB9BA0C2C7E62D4B2325FBAFB0138F858229B2C6A3968D518A7DB54582463B7DC82261DFE55DA70DB2D09124035186CA20280EDE6B6B94E070036F795720D540448021FBFB4985E';
wwv_flow_imp.g_varchar2_table(105) := '5BF808E3239437A0EDFAC1BB7574ECB0530004F8EF9C6C4618AAB9CDC8EF0E0C02005DA5A118004E98C5DC806283422767C11C420DB04C920802009955475D60DCEA8BA01A91DFEE301500A0616A41A48F02C8C4FD8DEBAF4F47FDEC3F288B53B58A6DA4';
wwv_flow_imp.g_varchar2_table(106) := '00803CA51FBEF02F5A34EF366A5DBDBA1027614DA3CEF81804216BFEA90826821131BF1E38651BE8E6B8841A64A38A0200DC6528382A6017A923F04006B92E879D04806420B8830400A8E9BA98689B305D5D3210EE0D0A1D150B07629D20E1C0DF6C550E';
wwv_flow_imp.g_varchar2_table(107) := '5D1D012632A6339E1C7530F51C71F10FA87EF4E8C25A4D241304FE3EB971C39A5C25CD81601F08195C8F2E5ECFEC0E925A31D400A0AF8BFBE685FE5F70F7B231068D535CEDB2F5914C7BADE3D0FDDDFEE21C7CF4CFC5F4ECFC3F50FB9A3505E36ED801E0';
wwv_flow_imp.g_varchar2_table(108) := '995C0D00E8DC72F2891D14161C0500B0F678F4A2B08B84D77D187E00306586CB4B3071C31BB338B3ACBEA21DC01478C1EFF36703DA0080CA3367AB33EA0A7808C31D540B41FA08AAAC09BBEE4C69A9C4F6463B6E475BEDF325CFFAFBFBAF6F28F8C8F183';
wwv_flow_imp.g_varchar2_table(109) := 'C80E0B4200E8AB723870F3FA1BD09E27171376861A00A06A101AE2DE514FA140CD96ACE51297060370E2E25AFC77D446E3688FA94717A6A3AFBB87DE7AE4495A298523A35CF9AA0F3EA2EE8E0E5604C4E6FB171EA801005D608E77BDE825C64800D0D3CD';
wwv_flow_imp.g_varchar2_table(110) := 'D78AA0AA33147E197600806C4035BD538DA4C2C602655258F3FBF5F9D52609000B1221AA8508B5648A491C269B038F24C47D45661C4E5451CFB05CCE4C54F3D3271EBC1FED3EF508CF70E64E3FDBE3923425CCA85E8FB19B6F4147FFF2BF0BCF1C6A0000';
wwv_flow_imp.g_varchar2_table(111) := '37209AEAD60BB3D1C00BC1085E73391AF7856DE8C89FFCB038BE8E4E5A34EF76FAF8E5C5BE652167E399BE7F1800E84273616C46BC8A00309D2B534D2596015DA813E2BD6AE8318CC55C22D67BA2862900781343D4387D4C160830C3D23083447213D182';
wwv_flow_imp.g_varchar2_table(112) := '9AFC21FCBE26439DCEE6202F98B616B0FB14C141E67CD301C00D279CE9093431951A5333CEC66CBA291D77F9C5431E00B884876C46CE259040D69EA402CABB5936CA4501004860A8A3C0371EDC754D66C3AB4602D001801A67A05331F4B900FA72E3284D';
wwv_flow_imp.g_varchar2_table(113) := 'DFD5818324EFFA8637A601FB61040180AED20DE8B10004A2991230820000F7EB0824E4852617DD6060D3D0640C416EDC707D6ADC6803CFE983C586A01C7CBC9E9E6E0F571D540B518B7EFCF613993B506E8F5D7B93A75C15C258C32A19A1BA8DA0C8C273';
wwv_flow_imp.g_varchar2_table(114) := '1A46AF475F3AE1A8210B0030CE898670DD5C1E1C59D5A600A20D16379067786A1E3F8E763DEAB0C233FA7A7AE9DDC79FA15501D464DC5ACF9B8E777FE99BEF52FBCAD5C54F600900B8415E2F1CC0203116376C14006092A4927D18B6FE86A50420AADFC8';
wwv_flow_imp.g_varchar2_table(115) := '1B42550320CA218534A8850180497A5013716C8C8E13BFB21FED3EC52BC607766E107E186A2AC0204C41E82B1FBFF677F4E10BAF940400DEF5E2B075299FD85100400514FCFF61EB6F5802802EF14516E3842817963C120600A60DAD1A6D6AEBB29CBD36';
wwv_flow_imp.g_varchar2_table(116) := 'A4C500103C39D58C03281558CA01006EB9E7464634A8189004448B0A002ABF43507C019E3F2C014067E46356FDF6D6A21A60C8EF0E0300441AC25813D474C93561F9DE78CEB607ED4D5F3AA168952E75210ED47DB104103EB37A0028D665C0DD4194726A';
wwv_flow_imp.g_varchar2_table(117) := 'C4A0AAC20603803E72D0170C8472610161E0C3120030D98D4DA33DC10F2CD046A9D40B3D9AE5776B5A180098DC88EA073319E07400007BC5DA152B038932076AA38BE7C2BE306AC3A24D62A801C0CA4F83AB0A0DF8DC24912BE12D97A602806EFD044511';
wwv_flow_imp.g_varchar2_table(118) := 'AA466A757DD912828871AB12451857C2B005002456A831F8EAC484917C860180C9A5A65AD46DC82A54090039F47FBAF26AEA6A2B1A9F067A61CBCF4702CF093FBAA0F0A7A10600375CF85FD59C0ECFBBEA4735D389FFC9DD90A2E90000EE60390F25F0E0';
wwv_flow_imp.g_varchar2_table(119) := '4009F496A20151ADE11008008CEAAEC6370FEAF5231200747A3AF30377A0D067DE6594A861A1BA3A92907000082788D4559D31114A6E7BF0BEF4A5A947163E264EFFDF7EFBDF5841CDC16838FD2FBCE9EA210B00FFF90D2FAB7035E7A869FDF5E8DFE65F';
wwv_flow_imp.g_varchar2_table(120) := '170E002CAEC35BCE3B4CE2543D470D4DA30BB1235D5D9DD4CB48498A2D0ABF4358DCCBB095007421B89C34B1981D18C69D1E0600A640225DDC4163F37AA16B543502AA0000694647B2012E7DE1DE7412286A99D446C1C1CD5510EF93FA12D8702189125D';
wwv_flow_imp.g_varchar2_table(121) := 'EB1200D4588C079181300EAB3960709733EE857C04B0CDB36C00C01FD7115E3BD2EF392A1284E82201C300402D6C82EF1EB4FE862D00E8C42D5D745F50AC7E109D93D844A60DAD1673345D3FF1ABFBD1EEC717DD802A004CDA7F1FDA68AB2D7C20F2F60B';
wwv_flow_imp.g_varchar2_table(122) := 'FFA4F717BFC6A2DB907B3F69BFBDA836E337503E306F41E1DEDDBF7E10AD377EBCE75918EF47AFBF456F3CF33CFB7B250020994A12C4E54C038F84449464777B07B5AE5A5D08DCB139B9755E005902F8E297F7A17113BC73A38E0764A5A8599856E606AA';
wwv_flow_imp.g_varchar2_table(123) := 'D6F3F73D48DD9DBC6807E66FA3ADB7F475EBF3F7DEA77F3DFA24FBFB4000805CAA0CEF90ED462AC12B7E0F03005D1D81110700411C78AA853428561F0B48AEB5A6AE08D3866E6B59EDA93C6B0A1EFAC22107D06EC715EBDFA90030F54717D0A47D27FB16';
wwv_flow_imp.g_varchar2_table(124) := 'E67D37CEA7457FF91B9302B6D96D673AE6826F33020EB5C91B66E6653FA1CD77D8CE7309EE7FEA2FF7D2C21B798C7D390080EA3FDBECB61323FF6C5E7F0CD5E5018049601D1DB4FAF3A5F4DE2BAFD392975F6160606A2600403D02D425909B3A9EA6F5C7';
wwv_flow_imp.g_varchar2_table(125) := 'D039BFFD05659BBCDCFEE02698F3EF3F2E30171F7DFEB769D7AF7ED9D7A5571E7B926EBFE42A6B00F06FC2700900E0C8C3BDB928820D0E9A30FC9705B1E5231D45C7C222127551A5230E008210D2972D15C20FA0CBE7161FC0542A4A2E3E817B4CC143DB';
wwv_flow_imp.g_varchar2_table(126) := '1DF265DAF5B86F1616DEBA08002003DDE3B043E84B871E42F5CD4D944AEBCBB33170EDECA2559F2FA5BF2FB893DE7CE6F9506FC7BA08007E313C1C0074C967F0DF439285FB5A266CC122D19182CAA8A54AA041EB75D8AA004100A0C64A872577A80C3FF2';
wwv_flow_imp.g_varchar2_table(127) := '049B36B45A5B0E1C0561BC00EB3A00C02DF6CDD9A7D317267BB3124DA73B7E7FE181BFD3BDD7DD44DD1D5E4397B8775D04003FA7A4090038A724B2158BA7BC43285DC66D3C726A37514D4D2D651B82AB30CBA5EAC20EA01107007EA445E825AAA8FADD29';
wwv_flow_imp.g_varchar2_table(128) := '6AADB52800D0097A66A9B2B02978C804005F39E5049AB0E3F6BEFDF4CC3DF7D3E27F3CC5444488DCA8BE0B2A2EB5C96EB3C3CF3E83C66DA9E8CCB91CBDF28FA708CF8BAA02A0DAEFA1679EEAAB0C6CB3F9C5352F3EF8283D3CFF765ABB7C85EF3613001C';
wwv_flow_imp.g_varchar2_table(129) := '78E2B1BE77C326228F0712C9D1E79D4D750D5E5E44BCEF9EABE750472B27453D60EAD1B4EDEEDEBC0AFCFDBD7F2DA6876EBEDD5A05880A007830D61BD68D9B2BE6ACE8E690552902C57D083BB17A000545AF8E3800C084AA56D520A657B5D45214005073';
wwv_flow_imp.g_varchar2_table(130) := '0F4CA5C24C00D0B8DE68AAADF3D33B77B4B451677B3BCBFF4ED5D652FDE8E6429290DC5F3970A671CC7A54AB700832A3675B7B6123D8DA006078FCD6393369CB9D77F4AE55D7A5B695AB69D9DB4B68ED674BA9ABBD9D6A52495A7FC2E6346EDBAD7C8C46';
wwv_flow_imp.g_varchar2_table(131) := '58FC2F3FFC1803811639A986485B1E5CB6696073ABB508D4F1C08B027B84EA495103AE50BB4054379207D4D3DDCD084DD16C8C80A50000538D188B5091D1C70F00E19284B85E578D5847513F2201400DD449D6A6195593DACA010035BFDE140C64028028';
wwv_flow_imp.g_varchar2_table(132) := 'A76925AEB50180545D9ABE327D0A4D3EE21BBED4EA371E7E9CDE7CF871EA6E6D6764A0AD6B57B2C84CCC75F3B8B1B4FBD1DFA2CDF7D8D9D35558C2EFFACD0DF4CF471EF718504D124025C61BE519030500E8032786412D81A2DBB6D837D49A48B3307413';
wwv_flow_imp.g_varchar2_table(133) := 'BF844A6A1BB4C6872D0084D12CEB12837404216ADC401409206AAD401300E0F4971344445F50574F7010E2944BA5D3DAC581135834F0F5FB551E976D5400179A0D00E0D43FFADCD99E906130EBBC78C75DF4F63F9EF6ECA9F6D6160F2B53F3980D58F6E3';
wwv_flow_imp.g_varchar2_table(134) := '56FBEEE1A1337BFB8597E9CE5FFC9AD50D10CD040000227F3097773CAC5213AB5BE8A50A824A0883A4C89FC7FCE9782220A10826E38104003D08F0F80E6C7E5694C4A23419542096FB925727826C62C3170034D553E515E9CFD9F78BCE6AADB52800C019';
wwv_flow_imp.g_varchar2_table(135) := '7E8A916026ABAD0900F63BF608DA6CBB6D7D07D58B0F3DCA2AF0E27D1B6D35819DC619892E4CDCB0E0A7BF2CDC7BC8A927D2069B6EEC7956CECDD19BCFBC40D0C56D0000750A0E38E1184F955FF010BEFEC0A3F4DAC2477DDCFAA065532BE1346E308676';
wwv_flow_imp.g_varchar2_table(136) := '9F7A246DBACBA402C10636DAAD3FBD8CDE7CB65855D80400FB1E73386DBEFD1742C703BBC8A1B34EF1C50180A6FCA19B6F23543346DBEB5BDFA02D779AE49BE70F5E7D839EF8D3DDECEF5600C0C83925A3264B3ECB1418814D1207AB5FD0D5C9ACFFD0F5';
wwv_flow_imp.g_varchar2_table(137) := 'A1429A4E7DF9995C9D2826230511D98C58005075341D1553590000510E65A10AB5EB8279DFF1E14C0030D4E200B0A1100FBF856498FCFC8D77E8E979B751FB2A5E0D586E6A01D2BABA2CA5D275347EFB6D69DF59D3A956AA2788AAC2B7FECF65D612C050';
wwv_flow_imp.g_varchar2_table(138) := '8C03505DC86151A74160C0A5121098DA1596519FE3296BC600085582BC0CD5C31700422AAD60A2541D49ABA363134BC516E509360502B1EC43D9AD830F90461AB19E17605D0380E60DD6A7EF5E7B45C1600695E7F5071EA37FFEF93E8FFE2EE60C053611';
wwv_flow_imp.g_varchar2_table(139) := '58259A0000A82D077E6F068DDB6E9BC26F1DADADF4F3E34F1F660090605465B645624C1282CDEFDEDA84FA5A95C31600C24225317956227A19008077A859596169C4EB1A00C08D78CE6F8B6A456F67173D33FF0FF4C1732F6BD7A61A182387BAEE70E8C1';
wwv_flow_imp.g_varchar2_table(140) := 'B4F351DFF0DCF78B93CEA296152BD9DF4C2AC0509400FCC559C319A86C367429D7C891AFBA74E4910B00AC884747A1E003443430F7D4D6165D6D412A80894E4C7C28B6E8C1259727680C2B4E6A02807D8E3A9C36DDDE6F0378E9A1C7E8ADE75EE44CB75B';
wwv_flow_imp.g_varchar2_table(141) := '6E41930FFF1A0BBD55DB6D3FBBBCF0A7AF9E72028DD96423CF25B8FFADE75EA2971EB2B3016CB6C31768D6653F2D3C0331FEA0EA5EFAC63BDA75AA1A45E550ED099377A3BDCF38A16400D8EB884369F349DED066753C505900246AC1D2B655ABE9A1F9B7';
wwv_flow_imp.g_varchar2_table(142) := '17D2AEF73CFCEB34E18B3BF8C6803C8927A3D8003A3BCA2E145BCA8657EF8151B7BB0B19B0A2BC7983876E6CD80280C9ED8689F2F10328A5A2830000DCFCD9AC3FD8469D7CB53AAC8E175EDC63CA06C43B91A9A63664F915B3017911516405AA0D966ED1';
wwv_flow_imp.g_varchar2_table(143) := '6035D79636EBEB2F78144C5E001F00B4B5D363BF9D47CBDF795FBB6E55B24A26A13534338BF666BB7D91F63BEBE4920100567BC418A82D278D07E3C5B8750DC6CB425D81548A129A79C6EFA28AB18D11B0145EC84A6C78DF1CC01B903746EB0A930C5B00';
wwv_flow_imp.g_varchar2_table(144) := 'B061E1F1F103A02066A6C80F80458B135C18F2C4E49A1885C5756A71D23043904A0832D4F90022030024AE8EB642B112D92B522E000CC4C6097BA60D00A8197C727E7FB5FB2B7B6084ED45F461D802803A50DDA4F3DA6CDE0D2EA7070705029948410BEF';
wwv_flow_imp.g_varchar2_table(145) := '626A463B81F3AD70FAD6A200A43F9063CBFDF7A4BD4E2A925CA800803456DD29D7D3D54D880540C34908115777BACB7E7544CDE98C51780E9E8756690900CF94A32365302C1700E0DFD7F9EEE5F1402ACAD437F8B8125849F6F68E62618E4C9DB6426F6F';
wwv_flow_imp.g_varchar2_table(146) := '774FA4380039165F65F8A93600C89C836AE194610B0099FA461E3461686A76205407B004415CE7B900ED1E7E7D3CCE940824BF527D3E369E48F314D7414F9BF8957D69AF938E2FDCAA02C0C1271D4F5BEEA484DBFE9F81ECE9BB16D2E22716311BC0A6DB';
wwv_flow_imp.g_varchar2_table(147) := '6DCB7201324ABC3B1E2AE7021CF19D993476F3CD3C33838DF0EA134FD3D377DD376000A056AD11AED7720100360DD91D8901A8E3A91FD544C79C7F8E2FCC17A9C97FBBEE26EA14B900538EA66DBFE4CF054074E2B37F7B80CD8D490280BA8074F082C498';
wwv_flow_imp.g_varchar2_table(148) := 'CE30D01FAC26A707B334E37AE4BE70D7E2B005005B914B2D2D854981FA00B250BE6041D75CCCC462D983A83C13506945FDC8BAE7C31F8BA82EBE505152BC8D763CF4ABA10030D4E200A2AA006CAC289BD6D956B059884ABB9BEFBE535936806A78019EF8';
wwv_flow_imp.g_varchar2_table(149) := 'E3DD05AE041300A8A1E6B017C18633984D0E7C93A5E3610900089905B7BA6DC32697D330711F883FB1F1655247FCDDB6D8A7FC6E95A79D8BBF0D4C0CEF469C415F2FED74F8D7873D00A82C4BC2283A618F5D871500C8C6657CEBB0D25CB66BB4DCEBE4C0';
wwv_flow_imp.g_varchar2_table(150) := '249E02DFC454C5610900B6463A31A9BCBE1C62D5C3D330012C900C7424A2611F483D1174D79A0060CA0FCFA31DF6D9D377EBFD7317D0A2BFDECB4ED5AD77DD898E3E6FB69611E8BFBF39B570EF8C4B7F4C38C1E5066E413CE7FEB9B70C980A8007ABD593';
wwv_flow_imp.g_varchar2_table(151) := '6173D97AEF3DCA0280E3BEFF5DDAF180BD43C78353FBEC5F5FEA4B955EF1F1A734F7873F2930021D75DE6CDAE5E0037CF3FCE49FEFA1FBE7F0B931490032E063AD401D8D12C65BEE66D7DDCFD638AB8BC1AB6423B418737FD29C2B826BC657B023557909';
wwv_flow_imp.g_varchar2_table(152) := 'FA8BEAC0D6463A698042DC579957C425D8FC98B064D2EF6EB29927D52DE4BDC7A19D8FF8064D9E766CE1CFAA0D0034556337DFD4F7AA379F7DA9C0093866E3F1F4C5FDF7A6B414562B6E5878E3FCC2BD60ED596FFC869E67C186F0FEE2D7E9CD675F1C50';
wwv_flow_imp.g_varchar2_table(153) := '005055226C9089FBED43FB9F7D8AA73F51028176DC7F1FDA785B2F8F9F3A1E183EF73EF2305F1C0074FFA7EF5E582023D971FFBD69E36DB7F2CD33E6E68DA7395FA2090064719BDB3910FD59B92D009D1E1B1A4F842A6A0B2E4C32417E028B4B715858F0';
wwv_flow_imp.g_varchar2_table(154) := '8C05D756AE63211BA12A2FC1FBAF9F3A930180AD8E5EEC338A6376E7C355259DBFA6869235294AD6D6463EF93D272C4BEE40E051D123800F076081B1F28B871D42BB4DF9562000D8804C25AF19082F80E81FF8F2A1F688B6CDBE7BD1C1DF9D5932005472';
wwv_flow_imp.g_varchar2_table(155) := 'DC36CF0A0300A88CBC3CBCCB0CC941B4F336EF51AFC1E1048331E60EFFDBC1FF256AD846B63178AB6E693C7FF69DF3AAB237ABF2120C68EEC9E7B872345F9489C647C30685DB0400924AD6B2E01B4CB44D0AA6E95D783E4E26A66A380ED58085C8711882';
wwv_flow_imp.g_varchar2_table(156) := '9B22014DCFAEF4EF0309006AA2CC9693BF44879C3F7BDD0780E7FF458C8883314121B2B48EE57F54A215B3FBF06C2F3D184B75CE8072CE6C68E4391945C291610700F3CF38DFB515892AF1612AF50C13002094155288DAE0C3EEEEE44936F81D2E409DF4';
wwv_flow_imp.g_varchar2_table(157) := '23E2EA711D1874FC56694ED4D9D5CE8B540E2400E0F9323FC0969377A743CE3FBB6400D0CF8D773C2CF27054B36F6E727D7DD4DED2CA80190D14E6BA88C19ECECEC2DCE824807F5CF33B5AF2F4F34CCA6361B7C95ACA64EBADC573D33AEAEFEDA58E8E22';
wwv_flow_imp.g_varchar2_table(158) := '4782EF7ACB74634638D281D8172E890E3B00B865C6055E7834CDEC10F9DD0400A0FB9EB8C7AEBEDEFE7DC11F987F1ABAF556BB7C911173D637FBC3947F3EE58CC2BDD32FFA77DA4CC92B801110CF014B6F35000034D8C85707FFDD843D77A3AF9C7B56C9';
wwv_flow_imp.g_varchar2_table(159) := '0070F479DFA62F4CF6CE8D3A1E50AA9D71C9459455E666F9479FD2AD3FFD25A13E001AE60F7506D4F6CC3D0FD2C3F36F637FD601C0A3FF3B87DE7A62118B3F40D20DEC457289EFB29699EB326E099D919A813D244BA1722092D560A762C14F00AA5C8E66';
wwv_flow_imp.g_varchar2_table(160) := 'DD764355A4F3AABC04933C5C016038C401A89B007AAC9B7369B3DD77A203CE3EB56400180A71000F5E790DBDBBE8B9CA6F7E2202937567BBBF441C4B604B6708642EC83C65526008CDBD3CC16CEE5D974E9E7B5555F666555E120340F50A839412081474';
wwv_flow_imp.g_varchar2_table(161) := '0A961B09381400E0812BAEA60F5F788545FC55ECE4CF4F98AE36207E1251ABC8AB905D7C7055235EC5A60DBB3880E12A011CFBFDEFD0F67BEDE1FBA60FFEEEF78CCA5BA80008F36D18E5AF0CF493A34F2ADC7BDACFFF8B36FD8237B51862219EF3E04DB7';
wwv_flow_imp.g_varchar2_table(162) := '5645059007522E001C7DFED93469DFBD3C73A38EA769CC7A34EB8AFFA16CA3573D5AF1C96774F37FFD8CDAD6AC65F71FF19D59B4D381FBF9E6F9A9BFDE4B0FFDEEF7812AC063BFBD893E7E79B1CD9E8B7C8D4AA7261E20334DCBB126AC6A5023027DCC4C';
wwv_flow_imp.g_varchar2_table(163) := '42310044FE1C0137C0B76A41D618F43A930D60CB9D76A0D1E3C6F96EFFE88DB768F9871F33710E8B7C8B49DB518AF99DBDED85FB1F2EFCE10B9377A7FAE666EF05AE4BCB3EFC883E7AE3ED750E0030E6311B7BF90DA017CBE301A9EAF6FB4CF6E9C7B088';
wwv_flow_imp.g_varchar2_table(164) := 'C3BF2F083F91533066236FDD444CC8E74BDEA74FDE7E371000D4F2E0955B56D0FFD7168C94E2B9CCF22F517C71E35E91824E4771A7EB530C00657E291866584E7EAEAF0000100111E71E85FEC90400657633F2ED03ED05A8A40410797065DE600A042AF3';
wwv_flow_imp.g_varchar2_table(165) := 'F19EDB795C419BB63418220C6B6A8A1C1130AA22E3122DACE295FC821800CAF85A8817C0A4C3E2ECF5CD3A94487086A1B072010DCFD7000020004944415460F2AB6300289D10A48C4F58D2ADD5040035745A74584779C7D37EC16E0C22D170125AF19C18';
wwv_flow_imp.g_varchar2_table(166) := '004A590220FCECEE620944824946F718B86840306213A565020088A5F59AAABFAB3FFBBC506117FE7088C2BA38800F5F7DBDD0C5F15B4DD0A8092EB5AD5A43AB3EFB7CC055003167225EA35C1BC0861336A77436AB7C02EF78C094347EEB2D7D73D3D3D1';
wwv_flow_imp.g_varchar2_table(167) := '41CB3EFCB890A18870EA7A8D0D65EDB2E585B265D504005DA21A068A64B56C83D79EE12D650715A18E7909C25A0C002500804A25C61FE1B08D8ECD070621E1B31529AFA6E02413000C173720FCFF3C528E73D44154DD628F5D69FFD9A54B0043C10B3010';
wwv_flow_imp.g_varchar2_table(168) := '3600963DD9816CD162F8B858AE3AC62B35D417D2278AD2C60050C2260FBA85932C22DA8B478E89068EFB741A6C3C09B6C04124229A9CFF1FF4DC9100009C61A9C353200400B0F55E7BD041DF2B3D1760B8024058652A6D1D8B3C0395C837C1810400083B';
wwv_flow_imp.g_varchar2_table(169) := '7C6209200238E828C4D8D9CFDC2ECD9E8966915BF9D44B246C809F20EC430C7B00C8AB4D9E6A39F9B92F371760B80200A4A52E8940455EAA419477B2CAC0E20432F5A1C6E818002200804A222A6ED5055EA81C00AC2848082D9409008EB9E01CDA6EF2EE';
wwv_flow_imp.g_varchar2_table(170) := 'BEDE82D2BA100ABCF38E74F8B767102ADCAAED7F8E2B46DA9DF2D3FFD0C601E03928938516D50B80BA00AF2D7C845A97732E7FB54162E2166A1EA90D5AF09A44927A7BBB69DCC4AD6987AF1DE4B9254A3AF051E7CEF6712500ACE5F1348D194D337EF913';
wwv_flow_imp.g_varchar2_table(171) := '7F1CC0A79FD12D175D528803C0FCEDF4E57D7DFD5F74F7427A383F37D5B201B0F5C6CA857BA54D74AE0E2EC03CAB94DC5939E557C702AC0E6CD801C0CDA79DCB5658943C695B0C40651B964F2DB520770BAFF28A7A789C80C1E4963101C026DB6E4D8D63';
wwv_flow_imp.g_varchar2_table(172) := '46FBBABAEC838F68D5674B9931121B7FFCD613B4A496AF2F7AAE702FFCE699464537745DF69CA51F7C541200D8CEA1ED75510000F9FB8881F034653C48999DB0D30EFE3880CE2E42DD3F516075A3AD2710AA1EA90DE5D531D768D502803009008C3E3A62';
wwv_flow_imp.g_varchar2_table(173) := '1A8C03520337B43A2C1D39CC1335EC00E0FAA933380038090602B096A66A9126595E34B21A682116886056D189F75E42D0F0BAEE2600B0DD3895BA2EAA0450A9F78AE74401804ABFDBF4BCAA010023A56D6309466A0BE2BC0468703E027E8FCC72AD1BD7';
wwv_flow_imp.g_varchar2_table(174) := 'B003003002C903C5C684253E9DC996959A8909E5F1D65EDAB0B009E608DE5EB0058479046200F02ECF18009004D4CBBC00AAC1D95499AABD754D0134183D1E54CF8028D5610F006259411240D96C9BF8681D52CAD4CA85DF1D8732F0F3A7FC79FAEC1AA5';
wwv_flow_imp.g_varchar2_table(175) := '2E40585C800900B6DF7B0F1F8D175EF1FEE23758882AF4C4F5C68FA36D77DF99924CE2F136B0DA8A3669BFBD69D4D8318AC4ECD2C76FBD4B1F2CE6F10251250046A6D2D5ED014806BE75698F110A5CFDFD3D453620BC2B914CFA72F0A300C0F6FBEC49EB';
wwv_flow_imp.g_varchar2_table(176) := '8D1B1B3A1ED44BD8F9A0FD0921C1726B5BD3C2E8D0452830E64F47BDF6E9BBEFD392975F61B7564B02080200AC37B05E05353977C0E409189600C0FDCB09C2092CE7508789EB26B10FBA3C8843BDD24582E95861813E3D3DDDCC6D28EA03B21AF19AE00C';
wwv_flow_imp.g_varchar2_table(177) := '13000CF5380018015FFEF37DB4FAA34F0B53946EA8A749871D4C63B62872192E79EA395AF2D40B1EA0183B714BDAF9C8A15D1CD48616FC83E7FFC5BE335307CBC80B1113A8D651107F4FA7B38C6D28A8C98549519424DB0057A03E3168D801C0B553CE70';
wwv_flow_imp.g_varchar2_table(178) := '33990666ECE161949D05118A27502055525F232E0C04D4EAB6B8D6C6CAAAEA64B07E33CE426581ACEB00D0ADA90D98696AA4C9A74DA58D264D2C4CEDABF7FD9D5EB9FB01EAEFE5C651B4CD76FD22EDB78E07023DFABF73E99D45CFE6893912CCF0866F5D';
wwv_flow_imp.g_varchar2_table(179) := '4E53E349C4B3509722ECD9F25AC53A430DC6208ECC61070073A79FED0A771BC452D065F5F6160B63B29A740D8DCC2A1FA5E9A2FFF00CD03E81D833ACC93A19AEC30751138546340094591C7428C4013C78E5D5F4EE22CE1A2C0E07CE0CE42F0367BBEED4';
wwv_flow_imp.g_varchar2_table(180) := 'F2F2E2BEFAC651A19C030809EE900844108312B446871D00DC74CA775DC47D8B06DD1D6C2AB2251593C1AAFB4410D3D47AEF783E32B144818FB08F8A02A37D2CFC95379D0FD70400479E3B9BBEA0A504BB939E5FF8104B48DA72A74974E899A76AE3002E';
wwv_flow_imp.g_varchar2_table(181) := '39B1186937FDC7FF4E702BCA0DF73F77DF43F4C8AD95A304B39600CA040070206CA77025A8E30125D8E9FFEFBF7DEE4FB8F76EFD9F5F52FB1AAEDE1D76D669046A70B5812BE1915BFFC0FEACB3018010049C80DE06C69E3453F9A2AC35F68C80C029C741';
wwv_flow_imp.g_varchar2_table(182) := '5099B93255EBDA5585AE84D1E40F3B00401C807ABA7251CA5BE2CB365F5ACC6239002017C5C4F352283D96ADF7AC1513008C1ABB01A5D27E6363EBAAD505B24A18B8B0D07569C8CB3FFAA4F03E180BD552E3AC70444B0B75B4B4B1EBA21A01CB5201CA04';
wwv_flow_imp.g_varchar2_table(183) := '0004F9A8C940EA78305E8C5B6D7DBD7DB476F9F27C4627B1F9430D01B5B5AD59439DAD3CBCDB1E007035B2F2A2AB9D4C7A2D300C177BC30FAF609D5E5C29172745346090DA3BEC0060FE19E7B93A83079850FB7A8BA730742220A36D959F7200408D0A44';
wwv_flow_imp.g_varchar2_table(184) := 'FF1A9ABCAC3D2600F0ADC801FEC3BA0400033C15BEC74703006E2B42E04E14AAB0A0442093555F74562E4F1E76D80D3B0008A204930B3688498A2205E80000272D5400999441B718E1A26B6B5DE3F949B503C400507A36E05005006C7CE1C3D765EF85F5';
wwv_flow_imp.g_varchar2_table(185) := '3B28EEC436BB143527E18142C33DAC34BAA68D1800500B53622EE452E0A645A403001B2F804E24C3DF440011B8FCB36346D16EC77F8B369A54ACD7077FF9BB2FBF42BD8ACFDCD4CF4AFD0EDD552E930D9D7AE9FB1FD2CA3C5F40E3A866DA7CD27685D7C1';
wwv_flow_imp.g_varchar2_table(186) := 'F0B4FC9DF7A8BBBD182A0D80840B303BAA58A8B575F90A5AF3F16794CB15E3B540D5BDC1D6133C5D7FFB8597A9BB931B6F37DA6A822F0662F1134F576AA8919F93CED4D136BBEDECB90FEECDE7FF7437B52C5D467DDD3D6CD3C108D8DD85409E3C4147B6';
wwv_flow_imp.g_varchar2_table(187) := 'C18A1B020F6600D0D6EAA302B7050004A0F1B46BBECE21818C6800C0E0554BBE2D6B0AEE2D1700D4DA80998646DA64D2F6B4C9CE3B10AAE3D636F8F5CEC82B33BE615067A0736D0BBDF3D4B3F4FE732F51CBA7CB28D7CBB3F9008EEC246694DD88483593';
wwv_flow_imp.g_varchar2_table(188) := '756A03CFF2A739EC4726A3A2AC02C400905F163C51C21B5A69CAD2132B4A0F0030F08444024ACB1191665D5D458E8083BF339336DA6E2265C78C367ECC415DD5F1CB23CF00A49CCF5E7D939E5BF067963C264A714591186300883CEDFC86305A704405C2';
wwv_flow_imp.g_varchar2_table(189) := '1828F2F48BA86C46541D00E0FE300BAB3C04040475B471EA69B4336F9F136FFC12BFF1BA705BFBCA55F4971FFC9C6583CAA49EE0EBB7890D8801A0C4AF1C0600DCB2DAE6A94C6B6BA12D170060086C4796160A8312D1B4DFFE820140982887AA39F83FB9';
wwv_flow_imp.g_varchar2_table(190) := 'B12C47CBC4466484F2B450FE0CD3FB708DF79DBC7F41EF63C54ED9F379D3F5CD7B8DE9795CF70D7B5ED8B2E0E3F566CE45992FF16CF939AC022F0BEDF5BF59F73E310F9D6BD6D20397FE96DD24C7E6B3B470C4A0A0A457480B0200DB70F6580508985C64';
wwv_flow_imp.g_varchar2_table(191) := '578184426ED9FA26633D355081419F5337235701CC219FBA746296A995D1EBFE3C8A117D2DF2C1C18DC4BC0E86DA6FA28F2AA554D8FBC43DB2F188B99C32FA62A36AA00A361A2CCDAA5B558E81087D1E2B8155CC7EC3A6636EDA08E1B46AE86CD4F92ACC';
wwv_flow_imp.g_varchar2_table(192) := '1BC03AEFB50933BA0585EAAA1E1ED5F6141698A3EB83BCE698E72A5D67CC35900100C658F449D7468C17400C1EFA1827F5289E5CA6E40ADC5B6A2E803CE9326F3BFE1E56C74D2514C1F536144FF2FB2075200A1124A568722599A0C347B51E87514AC90B';
wwv_flow_imp.g_varchar2_table(193) := '9B1B54FDF6100FA0208B2D531FB87851038F9159E472ECD44D23802528D352330075A3712F4F4324FFBB78AC88A40B0300F57BE25EDD09CFA43F14F7C84B4B362EC12009C094DF2FFA8F4AC2A828CC9B438DCD7E3219FC32E200009B01155464D135CC4F';
wwv_flow_imp.g_varchar2_table(194) := '2A26B41200A06677856D68BE685A3C22AD6DE147D1673C031B10272B03000B96582FA75C78A8B3CC430F3D811954713A494D060013004162E9141C7801CF0B022E5DE45CD4F9929FDDDEBA96B9E0707AF2B071456467917A9DD4D353CC3311730CE05255';
wwv_flow_imp.g_varchar2_table(195) := '3B6F792F87058285A97F980B8086DA6C6D4EAACADAD8AC3026E51F3CE2008085882AA5964D040B81124004DE7F3C832FF0A21132E8D4C4B5AAD1107FB311E13D1200E323682BD05D994470DC2BB318615EE0720A8A96F4F2D043C2A8636EAE42032D1A00';
wwv_flow_imp.g_varchar2_table(196) := '086A8CC586565516DFF382763FF39BAB14DA79400A499B0D791C237FC1611146F9A6A3EC0E22EB441D891EA485E79B69236B0F9C08EB4D5559630090BEB61A9B8F9F822896C46D3A7D8F4702066F107581E98C9041FC00EA072C3595D95AA7CF7716271A';
wwv_flow_imp.g_varchar2_table(197) := '23EF64C12BE17C07EA86554F5C9945D946A45725962827B86A63E13604A4CD86676A068180BC4674D9774106656487EAEC169C4FA2B5A07A9AD400D56D8C7E46596FAA041164E71A711280388955F10A8B25CC98A7030D7C68A6231B2CBAF222539F13C4';
wwv_flow_imp.g_varchar2_table(198) := '0FA0129096BAA06551D0A6BFB29A62020035BA529518B0E839255ABF5D3CBC2C31448CD45423E760656779F0B62E13050964C0D76D1E1EAADBE6712987CD2FC08D51CAE5BD402C95BC1E69E97A6F809A418AEED97C3F310CEE756A29300A83230351A76A';
wwv_flow_imp.g_varchar2_table(199) := '1B91008049504B2E9BC44D9D1B5097D517265632558259BABD36085DBEB65A128AB92BB160A46290A677A922BD4DFA721400509FCFD414C94A2D33D4EA4A59E9FA2F0364142BBEDFD0164E9B659A3B6C54D801D074E2BA2E54376C3DA860699288DA5B91';
wwv_flow_imp.g_varchar2_table(200) := 'C25E244D413FA2AC37554209524D462C00A816635DB145799174A0F4B2E4922B5524D7D920741F562E2C827ED8C62BA80B1B2E4F80178F47375398450500CEB7503CD9985D03A2774D0DAB9D28AAD5C21A6F63D1F7D15AB354D600CE4569B0AACD248837';
wwv_flow_imp.g_varchar2_table(201) := 'DFB4F1BD27288FDBD0D95E7C006061E350093E827CFAF8566D2DAB95AE825B204FF0693308C54819C42338620140D59182FCD862AE65BFAAD8906A79669BEF826B5435406C9A645E5FD5650F3280822F37A248EB8D44E3AEBAB00D1515009854D3CB3D2B';
wwv_flow_imp.g_varchar2_table(202) := 'C580A3047B078C8478BFAE7252D05CA980025D99C7CF87473FA93AB38E75C9F6FBE03AD9A650934A5136EB2DC4E953392C6C0E980F783944A18F2023AB9A3ECED75B796E517003D637FA1382462C00A83A197CA5DC20A7275B940916F041C2122C4C0B0D';
wwv_flow_imp.g_varchar2_table(203) := '8B1C61C1B22B12440FF0F1020474F46336AE4ADD7B558923C8E828EE9501C0E40590DF07EAB59E1E6FD114FEBB435CFCB4E76194B91BA0CB430737D959E4642B6C161875CB699837D8616014D57DEB526C0E3AC3214F49C79A2B025C50E259D40347B663';
wwv_flow_imp.g_varchar2_table(204) := '309B487D932F0271E40280262C38C8EAACF3C9C2D75B5B02B9A85894BA88448000C4427C38395F01F7D8442B062DF82E30CB74737F35C4709D9F5A070036368382C8AC14A6149B1F808A7FA6135CEEBBCA69670A7EE11213F4751EDC8579845DA5AC2651';
wwv_flow_imp.g_varchar2_table(205) := '72E9085C54003051758BBE788BC5E4553BC5B6236210E4FE9762D4F40040800D69C4020026578DE40A3AF1FC27B2430D28061AC1FAAF2E462E05A0828BB7D0886ED146212ED1DD2F6F28532CBABC40998722281458F3229C70F09D3311D77198D5DA7472';
wwv_flow_imp.g_varchar2_table(206) := '076D527913985408D56392AC4DF388C3729AC2C9A7FAD1550048A533541752FB517445CB51297904D4E421715F2912A71700609BF1F3118C6800F01A9CF854EB4E1B1114223E862DDA9BD65F4F7737F57473035D50B3258030BD0B6E4F51D5284C9A90BD';
wwv_flow_imp.g_varchar2_table(207) := '0F51FCF0A6F747FD9D07C2207D9ACF4D100872150746C8A2C5BC5CE98CBD5001003516400DD50DB2B2EBC6AD6798860A98A1BEFEDE7C9112EF9A304941BAF7F0484D9EBF12147436A201C0137A9A9F41B590023FA9BD21B9D0C5C28A81D82E762C5E88E6';
wwv_flow_imp.g_varchar2_table(208) := 'D033752000711D0B3FAAEB4FF77ED9F0984AD731BD5C6D6A345DB99287ED3CE8AEF3B9CD02381CFDC5331CC67E63A26933F64D0100354EA41C00D07982F826454C8037C3127F0F8A15318D413EE00000B575599FDA3AA2010013A8FADBF1375984048A22';
wwv_flow_imp.g_varchar2_table(209) := '2B4F6CD052DD71811FCB7559700822FF44830E8B08369BF45DD32210BFE31D1CC8B83B502525C57572645F5898B2ED3BCBBD4E25706112495DB6A87A31BB438727BBD35485D9BA4F0A00A86088780EB83F45330592A9EF651E01160FE22FFC295F1B25F8';
wwv_flow_imp.g_varchar2_table(210) := '477D875A5AACB63643E94CC673D9880780209D8B1514ADAB23C470B358F67C1B4CB1D87AF16A2E54B30B750BD69B8E5B5AE051397DD48824C40C98859A0A0E3362A22C16404C00965CFECD96E1C9A69FB2DF9E034B53C198A9C6EA97E276542B57C97DC2';
wwv_flow_imp.g_varchar2_table(211) := 'F8CA2D2C620AD5C6FB463C006012B8780C2B79B02ECE4534046304BB0A6D16D5A05DC34E34314EA422A7595523B9C12601124BB4528C4E0331367843780255D158CA37478A49333238474D9736F597273BB517C277399B0F071F4FF9AD44821A1ABD34EF';
wwv_flow_imp.g_varchar2_table(212) := 'A667E377DEFF5EF62C48029C78040424282D968AC485A07B9FEA76D419B96300C87F08E1F30DFB70D83430D4946AD9B6591403798D9CBE8B31F058745E224D5D2C26A313AAFE6EB3FF64CA34E9DD6D1F3CFF12AD7CFFE3928633E9D083A9365BB451404A';
wwv_flow_imp.g_varchar2_table(213) := 'C33F0034483797BFFBBEEFB9B0DD2060A8D4E49FA00D24AF0B6CD09A24EC32752CD7BEBB9B67F799E6CA3409987BC1812040C0748FEDEF322721EE51E30E6200C8CF243E02023038038F5F1260E5C5C1C65A86EBCFF6A30DD4756A3AB2ACD7E2A445F8B1';
wwv_flow_imp.g_varchar2_table(214) := '683C5F3D98B66ACC84CDE8ABDF9F1D586371C9A2E7E9E9DFDD51D250BEF5B31F52C3186F200FFF222E3D7AED3C7AEBB1A73CCF452835EA410E0430EBBC0CB2B1CE94D453D20454F0263529480D078F01409A6C06025D9DD4D7D7C3E2B23059F8C0B0C223';
wwv_flow_imp.g_varchar2_table(215) := '40274A304B05BF61E51EA518CD303E167D984AB11055C12063E347DFF15B87D0170F3F24B06F1DABD7D2BD175F4EDDEDC51C78DB811C79C97F50FD183D81C593736EA5B71F7F9A28E7B2EF02401E888D2FF79591C922F32F9FC9277EE3F39729A9DAB4ED';
wwv_flow_imp.g_varchar2_table(216) := '5C54E23A35959DF7BB8E9C440D9D7AD3AF2D1926CBEB49555E822E869182DA0E012E9E4A5AE06DDF5B8DEBD46C44A14FCB45244C345AB5D90C7DF3E2EF53462AF8A1F61DC5315EB8E32E7AE71FD10B788401C0A279B7D192A7D4229C033F734836829D08';
wwv_flow_imp.g_varchar2_table(217) := 'C941581B3818A06EC04A3FD40F06D5A55A9C2D8766DF39B72A7BB32A2FA914000CFC721ADC37A0E824377A7A1BDC8F88663311716E73C05EB4C7F46342078145F7E1F32FD333F3FF48BDF90A3FB6A31E8A00C01410A1AB27B8A16E5D6A38D4F0DD65A329';
wwv_flow_imp.g_varchar2_table(218) := 'FA3FFBCE7955D99B5579490C00764B920520F574F39C03C67B97A45432C50823845130EC49079F7F268DDB6E1BE3CB50026CD1BCDB69D587D18C814315008C031EE217C01E000910762ED09D43853AE396ABABB237ABF2921800067E05AEBFE5E6F4E573';
wwv_flow_imp.g_varchar2_table(219) := '4EA774A339D61E46C7176EBF8BDE7E6C512105D6A6873100D8CC5265AE898D809599C711F194444D827638F42BB4C3370EA29A94976B0F9B5D17B2FCF13F5FA545736FA39E0E5DAAB07EDA6200A8DE728A01A0C2730D310BD57C6C44E90ABF7AC01F971D';
wwv_flow_imp.g_varchar2_table(220) := 'D54C934F9B42E3B7DFD6F7AEF79E7E81264CDECDF777E8FF0B7FF62B6A59BADCBA7FEB220030FB000BE641E5A6AA09BCD6731A74610C00654CA1D0A978A04A8EC8ED4712196BCC525C932494D90EA2D52EE3D583722BF4FEBD4E9B42D9D1FEA8B77B7F72';
wwv_flow_imp.g_varchar2_table(221) := '05ED37FB146ADC608CAF6F2FFDF96FF4C29DF7305210C17A143680750D00E03A66D5A6F0ED1DA2644D8A050B5522894B374F5877F04A308F444D4D598969C311001026B6F940EF107D1C3790DF5FCB0F8B61A0E308D46C42760655F024C262DEFEEB07D2';
wwv_flow_imp.g_varchar2_table(222) := '4E477EDD37B54BDF7C971EFDDF39B4C749C7B252E76A5BFBD952BAE3C2FFA2FE5EF0EBF1A09DB053725D0280BE1E547DF6A7740BCE48C4F3574A2210712AE05A941B63934AC37BC313C822B40FA6DF78F91611AE2FF9D248BD2AF92D3C0E6021117DAD9C';
wwv_flow_imp.g_varchar2_table(223) := '6798EE9563E6F93EE3891B987C8881F8D7DF0769A098E9055EB9BA74B6E2A70227E1E863D65DC135873E61C3323F754DE445A11D7E5D63031DF8BD19B4DEE69BF87E7F76C19FE85F0B1FA4495F3F88F63CF158ED227CE08AAB69C9D3DC7F8FC83DD4440C';
wwv_flow_imp.g_varchar2_table(224) := '5AACEB0A00C0830266271EA62C377110388C5094272F95BF05580C07325341B8A26958830058931B57BAF5FEE9375EEE4774D30628E1F7F2476FF9D205675C7095EBD0F72C2F8F7C19442F96C659880A03D166D6130D269871E06B9717074BEDACAB1C08';
wwv_flow_imp.g_varchar2_table(225) := '08771E988D747C02C58C329EC0524EDB70E2D60C0054E35F6F5737DD75D12F68F97BEFD1A63B4DA203BF7D06C156A0B60F5F7A85EEBFEC7FF3D1860E9B2F9158A35E5B290080EF1BE02880584475562A7290117BA0CEA444E88271216C1C1C0F9CD64D64';
wwv_flow_imp.g_varchar2_table(226) := '30961FAA1C548CD4230D247018A5AD68D85CD7BDF4A43957FCA09C75617B6FD500E09699179C452E5D63DBB1A8D7A9C54559B9AD6C8316E1B1F9915FE001811468B6F4D747ED8B9AEF1D743F16645D365B966172EFD34FA0097BF98D7CCBDE7D8FEEFB7F';
wwv_flow_imp.g_varchar2_table(227) := 'BFA2CE96161AB5D1383AF0EC3368C36DB7F275A5736D0B2DBCE437B4F4DD255C4D426625F2D335A5BB2A01004C45CB6F4EB63F45856FC7219EEA1DAE8698BE05CB11001DBA74FAF362A4281453C3E22BC068247E2F27AF1F7DE1E2BF9C1AADC81C4E4292';
wwv_flow_imp.g_varchar2_table(228) := '3841FE51C7D482B0E638EE69D36EB8E226D3582BF17BF500E0D4F327F7F4772F12BC74407B81FCE58A61BA904A538D371DDF40259876D4EC3DFE91F869037583D702288A8A2C151465CC4A28958500A1A32FBF8852757E66DF7FDE733F3D77DB9FA9AFA7';
wwv_flow_imp.g_varchar2_table(229) := '87BDF780334FA56DF79BECB33FE0245E7CCF83F4FC9D7715083C10C7CF2A0A2B25C0CB0580A09392AB686C3BB153BA9CE42E996E8B4F7D9E55BAB6C82AEDAB9D68507DC2369A9FC55ABE9A735442EA807A8AF1D9D5AD70F79A7EE315D163B54B4084AA01';
wwv_flow_imp.g_varchar2_table(230) := 'C0BC534F1DD5D5EEA85515982E8C8D5782A1A4305C56EA0AA89E17FF6D0A6DE0667F951F5E3CC3C6221E34D79ECABCF9CDCF0D6C5CDCE7B1EB9D9CA4332FA2020470F241578CD2B63BE400DAF5B8C37DB760D3FFE3FA9BE9EDC717B18D0563E7F65F3980';
wwv_flow_imp.g_varchar2_table(231) := '769F7A2425D3FE777CFACAEB84649EB5CB96152A16E37BF0F26A3C2D19AD1C0000B312380D549508CF87F11127B2D824265B44D81CC934E47CFF27186188AA5EC814DFB6EB45F75E958148BE46705402F021A1F6300215EE8A0E03FDDEBEFED1A7DD74D5';
wwv_flow_imp.g_varchar2_table(232) := '9A286BA1D46BAB0600E8E035C79DF6F9FFFD6743B5B36211D854A8D10DD45F4D28BC7AAE78868E030E0B3FC35487E8BA399EC7EACD4BC620F0FCA519FD76F179D081FB7A413C5AE41C342D0A75DCC9749AA5FDEA8C7FC8F45BF2F473CCC72FEC0D700342';
wwv_flow_imp.g_varchar2_table(233) := '55D0D5A16B5BB18A90CCF3D9EB6F313A2DB149D5B2E1A50240B0518E989A86EF2EB3F9964A7BC669E2913A5DF4F8045596528967394D7A74F543579B527C2BAC2301EA181F0E1C11F31FC260B574FA8D978F2B754347BDAFDA00F028111D2036832A0A87';
wwv_flow_imp.g_varchar2_table(234) := '15650C1A984E078BC29B8F54DB8E8E22871C1719FD248D3613CB491E8A91754C9CAD0FB22B20EEBF87598F4553E9ADC2DE89BCFF03BF83D0DF06DF659813C6D45330822149862811A06600B016FFED215A7CEFDFA9A365ADC4E5E7B0AA35420A281500E0';
wwv_flow_imp.g_varchar2_table(235) := '1EC3E2579BCA8118A54E826E6ED4F9C73561A5E5DA5BD710C0985F57C36A3C46E595D0150B09923CD43A16DC48ED2B7853350F00EBA7CDC2AED435D71C7FDAB5E4D299405BE8979C7CB188D6AC50657D43243FB94EE78E02009C70A43D4F38C2475A0A85';
wwv_flow_imp.g_varchar2_table(236) := '958EE021DB5064F6099A43B94C38AEB129348945BADBF187D3B607EE1379C106F563D95B4BE8F16B6FA6D695ABA8AB935356A3D5A6B30583602900109CF2EA2579C5BBE43A0951495E75D29709005475010010C155C7E647AD1529E62DA8BEA05C5D9801';
wwv_flow_imp.g_varchar2_table(237) := '60A3B7AC9CE3D2AFA6CDB9FCDC4AED39D373AA0B00C79E3AD549247E0F7E78887D0000350D322A8D93AE1A6CD40DACB2DCF285CF39066D0D943C00A91878C2F57E73ED3C2C5CCC036C02FCE480FB12A2632AF0DB356EB801ED75EA14DA60EBCAC58AE4FA';
wwv_flow_imp.g_varchar2_table(238) := 'FAE8E12BAEA3CFDF78C72346CB1C84A50000A36F97CA61CB83D21526950B8F44A92380F9530F14060021D58854A3A4AED8A86903A9A5E9F8F57E17B4788E5A5D495613F2DFFF8469375C769BE9BD95FABDAA00F0EB69D39AD2BDE9E575F54DB538A5D5C9';
wwv_flow_imp.g_varchar2_table(239) := 'E0888DFAEC0DD6AE312D00C005C80C58767A3C16294E62B109F98788C6BE2B9FE45175588020C04388A3908EB0F883FABFF18EDBB1D05F9DF85FCEC278F7C967992D80BBD138D9A75CBBAE1400D015D42CCCAFC638271B666D4B97E3792A008B79082B16';
wwv_flow_imp.g_varchar2_table(240) := 'A3167BC5DAABC7896CD9D4CAC7E2B6307B8E2A292A125F4F77AE66FD33E6FE42D2492D3B53E265550500F4F1DA2967FC259B6D3C42C463ABF5D6ECDC24C5D1EA0080C50044289D055D99896612CD38DE602B8DA86A88EC77B6F92E45DE435889F31567EB';
wwv_flow_imp.g_varchar2_table(241) := 'F4D58261C4DBF99843B9F85F812836B97F00E43F9CFBDFD4B6660D2B212EFA02AA7218474B0180201D39A8A806B78B1455106C489B04AEA022A83A966579CCAA086FFB3E063ADD08372EDA70C473C3BEBFBA56BC761FF7AFD36FBCE2489B3553A96BAA0E';
wwv_flow_imp.g_varchar2_table(242) := '00D74F39636AB671D4EFC500C0EFDFD3E5351045E1F8D701808D1EAD4EA0AA8BE3775B0A6EA03AEE874B080DEA0D00284ACC3F8C91AC4475DE261214C88468BE83CE9D49CD1BEB0DC5CFDEF627FAECB5B758B089CEA0D538767D263D0419BB103EFCDA03';
wwv_flow_imp.g_varchar2_table(243) := '8F148D939251B4140008D291A15EB1801805C4D4CA3EB20D226CD1EBBE1FAE3701806A0788A276E85458F6CE902034D5E60449535417761CA7AAE23F03F84A2189ED73A006AC9719871C54E690860F1F9571E406E9007AB04D19291D009412D0A373E704';
wwv_flow_imp.g_varchar2_table(244) := '55EA51C7EA0380DA340780288DB9105B24824B8759A5D500A14D779944FB9F7DAAF6C97DDDDDF4FBEFFD907A5A3B59E49BAED535351298834605000812881EBEEA3A6A59B5B2E04510BA71540060E2AE526E9DF7295847E622726B21A4DB16844B050055';
wwv_flow_imp.g_varchar2_table(245) := '4281551ED679530B323A160E80ACDF3BC39E9927B84570109B893CC0A66AD35517FF070500F052393148D589C4A4B048348BC018BEC8E41A81F9C8AFB4CFBD12FA4DD5F2D0E262B5FAACEE21AA9F5BF59F9B1693F8BDB31D52045703F8424AFB36F201DF';
wwv_flow_imp.g_varchar2_table(246) := '3E8D36D97907ED233F7DED4DBAEBC7970616ECC44D0804DA6DCA11B4F57E7B6A9FD1D3DE418F5D73132D79EEC542C4A290C88EBAF44781ACC03A52D0A0C8BF501D59358A2612545FDF64F476940A00AA04609218C4A40555AE62DFCD7000A8712BF9EBAB';
wwv_flow_imp.g_varchar2_table(247) := 'EAFE13E3A8BA04C00040CA0BD087CE124BCE41108DA9A9226354039C78BEBF9825FFA5A169B451D7E6A59EDA58949FCD02081A93AEDCF90A18B400000E93494441547963739187BFAEB9918EBAF43F0333179F9C772B2D5EF8300FE30D024FC7A12DF7DA';
wwv_flow_imp.g_varchar2_table(248) := '8DF63CF938ED73584CC0C287E9C99B0A5A5A5EA4AD67EF0EA205D70140D0A634EBC800425EF68D7D4F8BE8CCA07705155C15DF00D2A79C13620B00BA0AD605E03600800A8CDCE8DB70DAC973AB13FF2FAFBF410180F9B3CE1DEFE46A3EC1F70D4AA6B00D';
wwv_flow_imp.g_varchar2_table(249) := '07552DB1A502002F0A598C8213931456B25B5CE30300CDC96D0232FCAEF38AF08ABA9CE66BAB7DF660FFBCCDA51C084F722E3D72CD5C6AF97C39531DC2482F466FBA11EDF08D83B5D98188A2FBF48DB7E8C53FDE4DDD1DDC36238CAAFBCF3E9532CDFA8A';
wwv_flow_imp.g_varchar2_table(250) := '438BEF7D883E5DFC86A76BED280FDECFED227233E9C8CC9E9237C8DA7ECF2000301D24AD6B5779FBA629CDA6FB76410786CD01A0268BD5246A7A6AEAD7ABAAF55F8C695000002FBF65C605C8763A45ADF72E3A06FF2D82824C21B96A3148DB05A37E549D';
wwv_flow_imp.g_varchar2_table(251) := '2A826B6C0100063CE13A2B35C34C9566F07EA3514AA996CBDC76AC58A69D0BD4370F2852D2513C811900E48D9A51BC0E41F369DA207E720D3B952E2824D7541D7820008019383565DEC55CABB50D134EE27767DE31476FD8B13939CAB866D000E0E61917';
wwv_flow_imp.g_varchar2_table(252) := '4E4890FB1A11D5F9455F8C0861A87001852F6424582092AF80682C90C6CE7EA0CE5B7B2B8C705E12095356219EA16697458DEB97FBA10696D818A5E4F90B0B7DB55927BAECB652BC2AC13AB2C3ACFF488E0A6AEA7AB031EA06D970EA1B4785AEA1CA0380';
wwv_flow_imp.g_varchar2_table(253) := '19B094EAC05D54E36E37FBB69BFC85156D3E5899D70C1A00A0DF8224C49F41C74765426F5CA35A714B9500F02C9C7C8C434E6AA9748615E5086BAA486713CD17F4BC0E44054AF10836C130B24E592E00F8A5102C689E2813A505E9C836DF475D0F26A31A';
wwv_flow_imp.g_varchar2_table(254) := 'FAA503001B2F8EEAA6B405BB6015C00C008AD7E857B3EF9C57B5D05FF51B0E2A00DC3AE37B1BE628F9665F5F6F33369F9C1C848ED6211826EDCF759707E1078068117CF2B374811D3646211D0108A8B5E03E8BDAD4B8089B0D3D90001035304B8C376883';
wwv_flow_imp.g_varchar2_table(255) := 'D8C4F8AB145B2C9ACF1057A10300A862B0878435D50B60B21998C7E7305A35004958CB1F362DD4D7B7CDEC3FCF5F16759D54EAFA4105000C62FE8C0B7F9CEBEBBD085674110A2B066785FC3E15A0740050B3B5D00FB0D4203439ACA92A00AEE59C73D1D3';
wwv_flow_imp.g_varchar2_table(256) := '4B5543200F14414C8497EF5FEE4FA55500D9AD6A7362EBE6260800C262F3C57314119925E80000C232F574006013DB8FEC4DC650946FE065B09176C0B98028401FE9ABC5F72A482CDD9D17CFBE63EE8F2BB5994B79CEA003C01DB3FEBDB9ABB7FBCDCECE';
wwv_flow_imp.g_varchar2_table(257) := 'B60D85114D0CC406C1FD46C0D2010006C9D6162F67894D7C382FEF5D340232E028C17086FBFC59853C3D1960A86B6AB65DF946C01C75C07A5F2057811BAE2132C575904E1E169B2FC687394068B6C8CDB049EED2E502D800801A7A6C73E81436304BFDF6';
wwv_flow_imp.g_varchar2_table(258) := 'B24DDBA674F7F7F52D5BDBBB629BEF2E58E08D822B65179771CFA00300FA7EF3E9E79EDBD5D176A5F0A31700009E8006BDDB4916C51092291ADF00CD46DF7DD09CF972131200143FA38C7CBF1A0988DFE08663F9E511ADF18CA4A4A395909D67230961A3';
wwv_flow_imp.g_varchar2_table(259) := '62C30AF50927B688DD2F655DA891955193A2C43B4B0DCC29DC2FD9638228CAE4F1E9240E1B00C0FCE19B17D75C8A90C66D6A41390EA6B803F1DC5C2E37FBE4B9575E6B7ACF40FF3E2400E0BA59B3524E8BFBD7FEFEBE6FC803B631E2A808CE754C731E7E';
wwv_flow_imp.g_varchar2_table(260) := 'D0C422132E6A56A02E98091B31DB60F662A8FDD0F113842537815E0C2EB0020096E105C133FC0010DDABC2D86F982B51130360E967F726F7400AE129E4414D6774B403801C811844341B9B4B50F2189E61E33676881E6C4BB41E76E6F5D7FB2768A077BC';
wwv_flow_imp.g_varchar2_table(261) := 'F2FC210100E8D375C7CD6ACE51EF33443451EEA3291457F5FF967A628977EA9E279235C2BE8DEEC4B3590CBA67AA7A29732B66EBB57600BFE7C26C850E1B870E0090B31E852843D5E1E5F7D9185571BD2AD29B8CAA5A92D7DA3A66900B1DAF927B2027E7';
wwv_flow_imp.g_varchar2_table(262) := '04DDA74B1FE7D73AD4D0342A5CFA74E96DEAEAD97DFA82DF0CAAE85F3830AA0C38A1AFBBFAB8D3273AE402040A49D94600E8EC60ACABC513B00C1B407EE1C9345DB62E3D1D00A8640FB673CDADFA88C22BD4336346305D782FD4056412165B7900C0DD80';
wwv_flow_imp.g_varchar2_table(263) := '1089F9BB4B01549D5154F4AF2659CB599F0C4D8DCC443C441865384007D29BEC49B2910074842C82B026A88B2A09ADB80E6A1FD4CFC0E6508B9348EC3EEDBA5FBE6D1A7FB57E1F32128018F0D5C79EFE0DC771EF811A8DBF99F2B3FD22BB9951276C7275';
wwv_flow_imp.g_varchar2_table(264) := 'A1C5E934F2120C6E1DD08A31D6D7622B1500FAFAFA586E814C2E0A8F828E4FDEAF8B9609008C58B3A81397020088A58064A26B364655DCA766DB05F1078877B0395342B991519AAA35302DB348CA4E1647209A29F0A8B7BB8B951D539B2173B1D7253AEC';
wwv_flow_imp.g_varchar2_table(265) := 'A41B2F7FB05A9BDBE63D430E00D0E9AB8F3DFD5CC771AFC4FF3689D16A3247A96E2B3159FEEC4264779953442B2901E88C8A4127A01A388471D85AB2750B44F5AA4027862D234A187058A51C2B1D3BDF3195BA5B47EF5D00805E4EB02ABBE510120DB7A3';
wwv_flow_imp.g_varchar2_table(266) := 'A9A906C430B76328C76198CBD8A1D9D36FB87CD08D7EEA5C0C49004027058168D501404947455FC29257C484561200F04CD58D86D305B6087523FA0937CA93005400B0CDC797175658A69C4C3166DA988C4F504AF546E5261DAD399EC36D3738C5B9EAC2';
wwv_flow_imp.g_varchar2_table(267) := '7349FCF3A57B27DE83707261B40C0B7ED2A91AE2998161E38E73DDF41B2E3BCB34DEC1F87DC802C01DC71D57B3D26DF865B6A1E9BCB0AA39959600F8E6F35AD66DFCD0953402A20F7EA396C3927CD42CBFB696D59E53AF5C094805005BA39DBC78837464';
wwv_flow_imp.g_varchar2_table(268) := '5C1355A590A9BE834010CF55E73F48650ADA64083F0608080982A72C839BD29B8BA2CF5BE1DC892C0B532AA492AFB5F6F3DAB51F5C74FC9D77F25CF121D6862C008879FADDC9E74CA949A7AF2797B40101F868BCE20A6FE56E003CC317DB1F502A4BFE96';
wwv_flow_imp.g_varchar2_table(269) := '3A003025A298D6827ABAABBAA92E7231CA09AB7B7F250020AC10485400505D8ABA535675C3965AE9474D2C53EB3AB0988B76B9006D710699C1113923458AB3567268CAF41B2EBFCFF49D07F3F7210F00989CF9A7FFDB4427D1FF57D54588DF2A990B203E';
wwv_flow_imp.g_varchar2_table(270) := '0477F380AABB188C6322085501C07160118E5E68425E0CAA2E8D85CD527DF3A792BA6071AF4DF662D8825341A514094067C3280274742F8D9C3EAB2BE0A1BAE54A4DC7E69204AAF7744B65DB922CFE2047396EE495EA58E48F1C46E18EF521490BAF3835';
wwv_flow_imp.g_varchar2_table(271) := '89638692B53FE89BAF130080CEDF32ED3B4D94A9BD9E88A6C883F10180258554D826E0861EBE104433D90154000813576D115F57BA4C149CC04264F4DD8572E8A5871FCBFD51DD8015078012BF0FC00EE4B19813F4A92E833C0B2E9E73F19D175DC5DF70';
wwv_flow_imp.g_varchar2_table(272) := '1207854EDBCC3D9E075664F900D0DD0730826B163520A43C853FD436E64E3EFECA2B8BD159362F1DA46BD6190010F3B360C60547FF5FBDCB9F0B6940CDE62AC568A59B7B79C1E17716D98790E09A62B14C8F0AD0D1E6A92E546A3290DA172E92C3A526FC';
wwv_flow_imp.g_varchar2_table(273) := 'F20E2F27E5BA856293B88795D6CE784EA19296941A0854690088E2059007808D0FDB0C74707C0B6C3C9CF4D8A488DC041062F3836700997851BC16BA89C2F3F8B3FBA83F07C6A57E063ED8F4D8EC586738F9A524AD57C871FF63FA0D57C085BDCEB4750E';
wwv_flow_imp.g_varchar2_table(274) := '0030B38F5C7451F2D34FDA4F71C9BDB8AD65EDC6AE5BB4AFD8D2489BBE901A638FEB83D400ADCA50623AB0DA2FB6F061E196829D8A64CE1C14F8E6CF58F1E79BC6ADAB7160CAC7F0F559A149977FB7E13708EA23FAC68BA874E64F7B9415E725B7D9499C';
wwv_flow_imp.g_varchar2_table(275) := 'AEABC81CA8C0C3FE7FD76510CC557CD45A2C6C9D4F1DA28BDFDAB8E1C68B2FBEB858F7DD34D143E4F7751200C4DCDD71DC799915B4F61C87E887442E63CF2C35F846F73D3ADA40F4C9C929D967472DB7A651BE4BFD8420893C2B517079AF28DF1F3A3578';
wwv_flow_imp.g_varchar2_table(276) := '02384F9E947D064AE9342F2B5EEE8927FAA3E62294726287D9004C413656F382E2A7B95C61F3E344AED4F8ADDECF2F5AED38CEA5A986FE5FAF2BE2BE6E6CEB340088015D7DE289A3A92FFD7D879C731B1A47652AB51838334D31D310EFD3D5B3F355058E';
wwv_flow_imp.g_varchar2_table(277) := '589ACC76D1C140574CD34D3075A452632DF441E5AD2F41670F0300535C87ED5C0CE2759DAEEBFE3A515B7BE9B46B2EF1E68E0F62A74A7DF5B0000031782414D537351DE63AEE910E11320BCD41E72133A733C22126219B6D2CB87BD835AC965ED1636022';
wwv_flow_imp.g_varchar2_table(278) := '852CF56355E53E956434628D44F431285946570DB72A632AFF253805163A0EFDC5EDE8B97BA824F2943FAC41A80C54894EDB3CE3DEEF7C27BDB223FD9584E31EE9127DEBFF228CC7DADCA75EA3067EA85162D8F8F0D78B16D5CF5D4A9F06F41E1F00D8F1';
wwv_flow_imp.g_varchar2_table(279) := 'F2CB7D423E056378CAD74910BFD5A46A291B543167400755D2C397B9E4DE8D4D5FBBA6F181E3EFBCB8A80B96F4B8A179D3B0920082A6F8A28B2E4A6CFB79C756B99CBB0BE572BB3A09DAC57513BB38E46E60FA2C3C370059664543232CBFDCE25EC3DC4F';
wwv_flow_imp.g_varchar2_table(280) := '329168B97E78537F06FC771D004464590EA203B34ACE19F001FA5FE092B3DC71722FB9397AC971E8A57E875E5AB251E33BEBA2512FEAF48D0800089A945B66FCDB260937B74B8EDC5DC8717725A25D889CCDD4EB796E3AB73C174EB39A24330A8A0A36F8';
wwv_flow_imp.g_varchar2_table(281) := '7B2A55477559735DB9A81FA9DAD7CB524F29A4A06A2835EF3F68DEC1ACA477A3566F8CEE8744F49243F452CEA197927DF4D209F3AEF8A87AEF1F5A6F1AD10030B43E45DC9B7806AA3F033100547FCEE337C63330646620068021F329E28EC43350FD1988';
wwv_flow_imp.g_varchar2_table(282) := '01A0FA731EBF319E8121330331000C994F1177249E81EACF400C00D59FF3F88DF10C0C9919880160C87C8AB823F10C547F066200A8FE9CC76F8C6760C8CC400C0043E653C41D8967A0FA33100340F5E73C7E633C03436606620018329F22EE483C03D59F';
wwv_flow_imp.g_varchar2_table(283) := '811800AA3FE7F11BE3191832331003C090F9147147E219A8FE0CC40050FD398FDF18CFC0909981180086CCA7883B12CF40F567200680EACF79FCC6780686CC0CC40030643E45DC917806AA3F033100547FCEE337C63330646620068021F329E28EC43350';
wwv_flow_imp.g_varchar2_table(284) := 'FD198801A0FA731EBF319E8121330331000C994F1177249E81EACF400C00D59FF3F88DF10C0C9919880160C87C8AB823F10C547F066200A8FE9CC76F8C6760C8CC400C0043E653C41D8967A0FA33100340F5E73C7E633C03436606FE3FA31E1584A82A13';
wwv_flow_imp.g_varchar2_table(285) := 'F30000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(684426903389773656)
,p_file_name=>'icons/app-icon-256-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_512_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA000000097048597300000EC400000EC401952B0E1B0000200049444154789CECBD6777E34A96B5B903DE11F494529979CB74F7BBFAC3FCFF9F32AB67A6AAABEEBD9932';
wwv_flow_imp.g_varchar2_table(2) := 'F420BC8DF91001109417292945319EB5983449912008228EDD871479460180528082D3DC0068FB8E402010080482A38080B4EF345784DF96DE7D8B040281402010FC7214CA1D7CE1E70B04028140F0B9A1CD3F80F2D493C9534F1008040281407074282F';
wwv_flow_imp.g_varchar2_table(3) := 'F5FC89B0080402814020F870D0672EE8F5D3440D8040201008042788726FF27FA77070D7E517110081402010083E3EF4C13B0C11011008040281E00411068040201008042788D216FA21CDB588F30B0402814070CCB457F27AAD6F670244044020100804';
wwv_flow_imp.g_varchar2_table(4) := '821344180002814020109C20C2001008040281E004D9550224BB83020402814020101C074FADDD6D19604044000402814020384984012010080402C109220C0081402010084E1061000804028140708208034020100804821344180002814020109C20C2';
wwv_flow_imp.g_varchar2_table(5) := '001008040281E0041106804020100804278830000402814020384184012010080402C109220C0081402010084E1061000804028140708208034020100804821344180002814020109C20C2001008040281E0041106804020100804278830000402814020';
wwv_flow_imp.g_varchar2_table(6) := '384184012010080402C109220C0081402010084E1061000804028140708208034020100804821344180002814020109C20C2001008040281E0041106804020100804278830000402814020384184012010080402C109220C0081402010084E1061000804';
wwv_flow_imp.g_varchar2_table(7) := '028140708208034020100804821344180002814020109C20C2001008040281E0041106804020100804278830000402814020384184012010080402C109220C0081402010084E1061000804028140708228BF7A030482638010F2E2BFA1F4CE23AFB22D9F';
wwv_flow_imp.g_varchar2_table(8) := '9E5BFBFAA13D7F77F78AFD2B10BC046100084E8B672E2E4FFDDDB3FEE491FFDB59AA4E75E16AED53F2C0E38FFEF923FF278C0381E069840120F8FC3CB4D0DC7EE49185E7E5CB3F40EFFC516B3B9A058982DE79F54FBA58DD31BE0EDBF777F612B96FFFF2';
wwv_flow_imp.g_varchar2_table(9) := 'E7B65F4418030201006100084E8D3D17A1BDDEEA91FFA3F7DD3B997589EF99F682FD961196E68193D9C102C1B3100680E0D37167317964A1794B03605FB60EEA6758B0486BBD27DBC7B0FB5DEC6300ECCBEEEEFD0CFB5820D80F6100088E979DD07E7B21';
wwv_flow_imp.g_varchar2_table(10) := 'BFF3C477D99CFD21F75D0100E8D185AB6F19583B0BFBAFFE1EC8EE5610512B20386D840120381E6E7BEF9FC20020CF0A3C1C475480DC8DB0908F1161796E8461BB9B3FF27E16085E076100088E1072EB1A1F267CFFBAECC4027ED956EC0521BBD71F89F6';
wwv_flow_imp.g_varchar2_table(11) := '361D85612510BC0DC200107C6CEECD13BF5E0E9952CA2E006855A1AA2A5494A2AA2A504A51D1D673B857D83CFF1E2F9180409298272C4904B22441221264496A1E23E4AEA7FCFCED053EDC6245EAD07AEB7391BBDFD16DDAFBAF2C4B146585B22A5196EC';
wwv_flow_imp.g_varchar2_table(12) := '3B60FB7FF79ABD0F9A7D585F24C2F6B52C4B502419B22CEDBCFF4BF737056945013ED8FE16085E096100083E142F29E07B0D686B8129ABAA59888AB2E4F72B948D3140779E5F1B09C0360521F145A85E8C5445692E8A248142822CBDFCB3DCF7FC5F5B1F';
wwv_flow_imp.g_varchar2_table(13) := 'F04071DF4B175AFE19CAAA4256E4C8F21C595EA02C2B14DC1828B96156566CDF4B92D41857B224F17D2E435314E8AA02AA02841B5AA0F499FBFA76EAE2BEE0803004049F0B6100083E0EA4BD80ECE7B9BD140A348B795996C88A12795E202F0AE44589BC';
wwv_flow_imp.g_varchar2_table(14) := '2C5114055F7C2A5455BDF87303A1AA9AED2420DB455F96A1AA0A745505D558A73F5114800012E4E76FE0CB0A04DE15C217FC43BF234A81B2AC906505A234439266C88B827D1745C18CB1B2445196A0A090B987AFC832BB2832545986A169A05487241128';
wwv_flow_imp.g_varchar2_table(15) := 'B204891040925E540172E7B3F0688F40F019110680E097D30E1B3F16E6BF4DDB03AEAAAA09CBB3CB6EE8BE5EE8DB617C80859EEB853C2F0A647981947BA1CC0860973A2C5D55154A4AD9DF95770D0045969901A0CAD05415A6A6C1D4D9455555A80AF354';
wwv_flow_imp.g_varchar2_table(16) := '655986246D43D7ED50F68B521BEFBE406DBF17429E3600EE444EAAAD1155D6B7AB0A6996238863844982304991E705B22267C658597263AC00A580D25AFC55456E222CA6AEC3310DA4790E53D77914466EA204124FC148ADFD2C49CF1F87F221D32F02C1';
wwv_flow_imp.g_varchar2_table(17) := '01080340F06B78A5EAF0DA06282B8A827B8BCC7B648B79C617F0A2AC50708FBEF626CBB2F6F0D9FDFA765E16CD63254F0754948256DBC5AC6CD50BB08FC03E832CB1C5499625A8323302745561D79A0A43D39A6B53D760E81A4C5D87AEAA303476916579';
wwv_flow_imp.g_varchar2_table(18) := 'E7359FB51FDF250AD08AD0EC446B1E8619566CBFA6798E384911A529E234459AE548737649D21C719A224E522459B6FD3E5A8656515600A5905A29963AE7AFC832744D65C696A6C3D035E8AACA2EF5E3BADEEC734D51A0A90AB4A70C803B11813B370482';
wwv_flow_imp.g_varchar2_table(19) := 'A34518008277665B30B67DE4905E717622AEAA0A5951204E332459863049102529A224459C664833F67892B13C73BDF8E46D23A1285BF966E69D963CEC7FA708B0F16C77B78679981264897997B597AAC872B3D85B860EC734D1756C741D1BBD8E8D8E65';
wwv_flow_imp.g_varchar2_table(20) := 'C1B52D288A02497E6A2FDC16336A2F476FB43035857EF76DC1C39455852CCF9164198238C17A1360E5FB58F901F3F8A304419C2049B3C618C8F2A289B454B70B3381C683DF7AF5CCC35714193A5FD8754D856D18B04C03B661A0D771D0EFD8E8390E5CDB';
wwv_flow_imp.g_varchar2_table(21) := '826D1A9024024D559FFEE8F7DC115D8282CF80300004EF485D38465E2D0200B093715555C8F202719AC28F627861844D10C20B4204110B2D077182284E10A5CC0B8D92AD179A6539CF31A3491FB0D7E6D7ED25F6D1B33FE155EADB30B9C4ABE32D438763';
wwv_flow_imp.g_varchar2_table(22) := '99702C033DC7C1D9A08749BF87BCC85155155445866DE8A08ACC42EBCFDD0177DADADE6A75BA15017806153700A224C52608315DAD70355FE17AB1C4DA0FB00A42AC83007192ED446300DC31B87637659B7AA837A5DD05A0A90A5CDB46D7B1E0DA36CE06';
wwv_flow_imp.g_varchar2_table(23) := '3D9C0FFB28CB8AFDAD44A0A9CF3CFDDDDB36F8E00302C1D1200C00C1BBC04ED65B03E0A13CF7ED137D5996CC13E79E60516D2BF48BB24459B0EB947B98411CC38F126CC2109B30C2268CB80190228C1344498238CD58183A499BAAF3B4605EE75B62EA1A';
wwv_flow_imp.g_varchar2_table(24) := 'EC28866D1A08E3147951345E6F9CB2D0779A65702C93A50954159AAAB27C35F7761F4F0BD0D75FFF77DAE8DA8BEEDDEFAC5EA8B7A997BCF92EBC30C272E3E366B1C6F562859BE50A5E10C20B02787E8824CB50D6DFF301EE356BB394A02A72F39DFB51C2';
wwv_flow_imp.g_varchar2_table(25) := '6A088A12595E224A33049183284E1125194B05F0C88154B76B3EABB8F16E0448203826840120783BEEF5F25FE6ED97BC402CCD7324D9364F1CA72CB4BFBDB0C7227EBB0EFF4749BDB0E63B39E72C2F90E579634CBC474B5D59B228052129EAFD90643936';
wwv_flow_imp.g_varchar2_table(26) := '618C85E763B6F270DDE960E076D0771D0CBA2EBAB6C58BDC6448CA533FD79696F0AB7E1E82A7BEB73A4C5F9425BC90455ED67E88B51F60E90758F901D67ED03CE6056193A6C9CA124553AC79D876534A4150A12AC18C42429AEF37CD326C8210B395837E';
wwv_flow_imp.g_varchar2_table(27) := 'C7E1690176DDE3E90156832101B20CF94903A0FE7F6105088E136100085E9F7BBCC4170BB1F005AC284BC45986304E104431BC30C43A08E105CCBBF7B9971F2609D2BC4056E7F68B6D2B5F51144DE460DB52B6ED2FAF73FC6F4D595548F31C25E5518B3C';
wwv_flow_imp.g_varchar2_table(28) := 'C3268C305F6FD0B14CB836AB03381BF6F17D320200A88A0283F7B2F32EC247213CC2F22A92B68D17FCBC4AFF8AEF632F0871355FE26ABEC46CED61E1F958781BAC83100937D8922C63D197A240CE73FE75FAE5102865DD1EA0CC70AC5310699661138698';
wwv_flow_imp.g_varchar2_table(29) := 'AE34389689BEC30D00B783AFE3218A72085D5521F3A2C007BB03EE0C933A16996681E02EC20010BC11B7BDC6FDF2FC6559314F2E8AB1DA0498AD3DCCD66BB6B0ACD9C232F77C8471DC2CF0F7E590D9753BA7FFFED4ED86699E2322A4A91390787D8065E8';
wwv_flow_imp.g_varchar2_table(30) := 'B00D03ABC0070585651A706D1B12215015857D800F28AD5BB75F96BC0EC30B435C2D96F8E7CF2B5C2D9698ADD698AE3C6CC268DB9E890772FBAFB43D25A52879D4074013D22784C0D0B5C60018B81D9465095D55D0EF38D054154422902B8A97C8350804';
wwv_flow_imp.g_varchar2_table(31) := 'C788300004AFC703F9E2ED635BDAFDF965B915DFD9F6E1E7BC373C61B9621E565EF901561B1E4EAE8BFCE208719AA1AABDFA2348CCD65A050045092049738002555961B9F671692EA02B2A8AA2C4B0EB62D8EDA0EABAD05405B22433A19BA75AD8F6D508';
wwv_flow_imp.g_varchar2_table(32) := '687D8F0F45009ACA7C4A916459138959FB017EBF9EE2CF9B39AE172B2C3C1F5E18234E33E445B9CFD61C44FDF94B6679B03B598E2049400801A514F6DC80AAC8A0A018F5BA2C2DE0D8702C73476DF0A92896D009101C1BC200101C462BB7FF92307FED01';
wwv_flow_imp.g_varchar2_table(33) := '569422CF0B8471CC8AF8A2B829DEDB8411FC284610C5F0E3B8A9E60F63261613F11C721D42AE8E58B5ADE2FDF200B00E42688B25CAAA821FC7F83E19A3284B68AA02CB30A0AB2A2449C5FDCB3FB97BF3850611CB226C17FF7BB797D2A63F3F8C12DC2C56';
wwv_flow_imp.g_varchar2_table(34) := 'B89C2F71B558E266B9C274B9C66CBDC6268C1127691395F9085494A50542425081425B2C515515C238C1F9A88FAFE31128A58DBCB0FA985E00B9550770AC07A0E024110680E015D863C04D4B1D2E2F0A04718285B7C172C38AE1666B0F331E36AE8BC558';
wwv_flow_imp.g_varchar2_table(35) := 'AB584BA6B7285194EC76ADC8F76BF5F1F7A7AC2AD022475195A001782E3DC2C2F3511425544546D7B150EF6B559101F92D62D4E4D6E57E58C89F456EFC28C2F562857FFEB8C4FF5E5EF3EA7E560458D76394E5DB7658BC84AAA248F31C455521E185A07E';
wwv_flow_imp.g_varchar2_table(36) := '1463BAF4B00922D00A30350DB66180EA6CF68038530A3E23E2B016ECC73DE1FEFBC2FC357591571D966E17E405498CB5CFF2FB37CB352E670B5CCE97B89C2FE0051113F0E1FAF09F958A525425054A160988920492B7C1C2DBC0D054B8B68951CF6D260B';
wwv_flow_imp.g_varchar2_table(37) := 'EA2A93BFAD79B448AFB9F18471D4B46ADEFD3E6F1B56AC8831479266F08210D7CB15FE757583FFE78F9F4878874692661F321DC38CCEB289B8A46986B51F409565E4450ED3D4D1771D743B3628281459E25197ED6B3C57A25A20F8C8080340B0072F2F44';
wwv_flow_imp.g_varchar2_table(38) := '636D58AC952FCD79557F9C208C637801EB115F783EBFDE60E5F988E204799EA32CCAD33AA952368618158B8EAC83003F670B68AA86709CE262346834F0A57B16EB37DB2C6C17373F8A315F3303E5CF9B397E4E17586F02A469D64CF33B966FAC4E670004';
wwv_flow_imp.g_varchar2_table(39) := '7E9C60BA5CE17F0D1D6555E26CD0C7F9A00F4D55A1C872A33C28107C0684012078012DAFBF11847B7AE1A987C0C469DAE4F6971B1F73EEE1AEFD009B30C626626D7DCC3048102649B398BCB548CF47621B29A9501405D67E809FD305932A2E0A688A8C6E';
wwv_flow_imp.g_varchar2_table(40) := 'C786631AA07CE0CDFD90568AFA89FA887B94F5EE6ED8B6703388635C2F57F8FDEA063F6E66B89C2FB10A8246C7FFBDB4155E83BA16056589308E71B35C83826934E445095D55D1771D008022CB20F78E18268DC865FD9A02C1474718008267F2808CEF13';
wwv_flow_imp.g_varchar2_table(41) := 'D180BAF8BAAC28E234C73A8C305F7BB89C2FF1733AC7E56C8185B76989F964AD763EB6F03727E813825256B99E1525D67E84BCA8E00521244942B7E3E0623444D1A9A0804022140F54043E93DB39FFFBBFD376EB5E10C6B89E2FF18F3F2FF1633AC3DA67';
wwv_flow_imp.g_varchar2_table(42) := '1D1A719A3546C2B150510A5A9628C1221B94320327886268AAC2B402F20292243F6382607BDF1DD35E109C22C200103C03B2D5A67F625C6D7BC12E5AED7D719AE166B9C674B5C6CD7285CBF9023FA673FC982EB0DCF8ACB08F8F7EFDA89056D4A3B9D4F7';
wwv_flow_imp.g_varchar2_table(43) := '5B277E3639B0D59570C082585615A23441561408E218836E87A5488210AE63B301439A0645D98D026CBF1676E3D13A00B29D5DF01075B1663D3C69E90798ADD6B89A2F70BD58350A8CE52B446A081FDB2B13894BFB6EF775FD11DA6386593BE236E2B08F';
wwv_flow_imp.g_varchar2_table(44) := 'AD58FF499617D8D0087196A1282B4CFA3DCCD71E961B1F5DBB8469E84D6B60B3BDDB0DDF79C513B3590547883000044FD05AF09F39FEB51EBB1BC609EBD5F703ACFC100BCF6BC2FE0B6F83F9DA471827C873A6D4F791BD7C42083FF1133686968FA09579';
wwv_flow_imp.g_varchar2_table(45) := '3FBECC3DC3BA9DAFEE546866161CB030561545454A140545942458F9016E964B189A8A5EC701E90086AEBDE2A7BD4BC9DBE436114BE14C572B3ED12F6161FF036729D48694C417D77A1682CEC723B35E7C16A5282B3E22B82CB7639FF3A219DB7C48FAA1';
wwv_flow_imp.g_varchar2_table(46) := '4E57D5458EEB20C4CD6285DF9D2926FD2E863D179AA2EE14600A04C78A388A058FF3B40CFC0E251FCB9B6439D67EC0AAF9670B5C2F575C0B9E4D800B794F7FDD235E7D700340226CE15765567CA7A90A345585A6288D21A0C832CAAA6C2AE0E32C439E17';
wwv_flow_imp.g_varchar2_table(47) := 'A0D88EB2DD074A294F875044718AD5C6C7D562059D8FB235340D709EFB6AE49EBBCFD1FAA78892144BCFC774E5E166E161B90910443192346BB66F6F5A8B7F3D15D1B12C742C139ACAF6711DE5688B4635331F081BEC9497AC60B43CC0006006049B25E0';
wwv_flow_imp.g_varchar2_table(48) := '05216E966B18BA064A2BA8AA82AE6D03D09FFA40F52BEEB51D02C17B200C00C1C3EC51615E9615523E9677E587F8399BE31F3F2EF1FBD5147EC4847DFC30E25E310BDD1EB470BC1384102892C4B4F9359587DE7518BAD60CEB51150579514055124844E2';
wwv_flow_imp.g_varchar2_table(49) := '216A6614E584EC2D745FF1428A1240982658FA016C6E0018BA8E7EE7D9ABFFDED4118085E7E3E774CE23003EFC38469C65000E1C3B0036C94F96D93EB60C03BD8E8D81DB81A169CDB43E00BC9B84CD13D884112489B01400282AD083A22D1400AD282A94';
wwv_flow_imp.g_varchar2_table(50) := 'CC880D425C2F56A06073195CDB4631FCB8692A81E025080340702FACD2FFA1FEFEEDEDA22C7706EFACFDB091E8BD9C2FF1E7748EABC50A736FC3C47CF8C4BEB7AE92AEDBB524895F73CDFDE636CF2D6FEFB79ED3FA5BC2F3D08DD7AFA84D78DAD034E89A';
wwv_flow_imp.g_varchar2_table(51) := '0A4591A1720F352F4B445CA9B01E60E44731FC28E2D308D914C27D17A92C2F10443196DE068E6960D47591E6F99DFD79FB3B23776EB4EF3FACE350BF6A51960893042BDFC7F5628985E723E06376F7FD2A1599A551544586A169CD2C04C7347626F5199A';
wwv_flow_imp.g_varchar2_table(52) := 'DA18590069263AA659DEDABF3182386EDA4BA324455EE44D8A601FCA9275AE786108492218755DF8518C24639A14750BE6434581625090E0A3230C00C12E2FC8F703682454EB13F174E561B662C37AA65CD16FE16D10C62C445B14E52B8FAABD9F46C695';
wwv_flow_imp.g_varchar2_table(53) := '7BE68AB25D6C1459E1D7ECBE2A2BDB45BC798EDCFC8DD27A9DFA9ABDB6029587FF654986244B2879EE38CD7244290B992F37ECE2F95C212F0C51A6D95E9F2B2F586DC5CA0FD0B14C04718C2C2F9A5DFA723980A7BA38284F41F0F7F5025C2FD6586D7C44';
wwv_flow_imp.g_varchar2_table(54) := '497290C29FA62AB00D03B6A9A3EBD818BA2E06DD0E061D078E65C2B12C3896C9BE0F89ED67027005C8B2292EADBB47BC306CF6F7CA0FD87C8228E646CACB8FB95ABBC20F235415C5DA67298F38615A074D0DC8DE7B4020F8B5080340B0C37D95FE8F5196';
wwv_flow_imp.g_varchar2_table(55) := '15A224C562E363BEDEE0E7748E1FB3057ECEE6586DFCC623AB2BC4DF432086005CBD4D81A1EBD0793199AEA9DBDBAA0AA37E8C7BF2BA5A5F587EDF683D5FE1B97E8517A4D503625884813453FDEAEE87B2AC9064196E162B5C2F56B859AE70ADAE402945';
wwv_flow_imp.g_varchar2_table(56) := '94A648F636000A8471020AC0364CF85182346B4700C8FD46C003DFE7530A823B06409262E907B85EACE04711C20335FE355565A3795D0767833EBE8E87B8180F7136E8C3D034981A8BB2C8B20489482012EB04A8C73897BCE0B21E29BCF4FD667F9B8B15';
wwv_flow_imp.g_varchar2_table(57) := 'A6B28CA2AC1044F15E35011537006A43601DF09A872C43C655295961E203888E40C107471800820642A49DD07FCD6DEFA97DBFF60C979E8FCBD902FFBEBAC1BF2EAFF1EFAB1B36FEF59EBF7F4B0858F85F9565E83CAC5C5F4C5D8759DFD7F963ADDB96AE';
wwv_flow_imp.g_varchar2_table(58) := 'C3D43598BA0ECBA8AFD9736E2FFC0FD11E379CE505FE7467702C0B86A6A1A240943263695FF2A26804921CC34010D511007AA7F5EFCEBEB967B17FD4D06BB5D9155C9E78B561298034CF511ED8DDA0AB0A3A968951D7C5D7D1107FFFFA05FFF1F51CDF26';
wwv_flow_imp.g_varchar2_table(59) := 'E39D48CC43DBD8B40056ACC872BEDEA06BDBD0350D8410E44589208AF75649A49436E9060058FB21FC28469CB26896440894074498C8AE2A9058FF051F12610008F09C32FF763F7B9CB2FC7618274CA56EB6C4D59CE9F74F571EFC2866D5D86FB0A5758E';
wwv_flow_imp.g_varchar2_table(60) := '9E1072C7B3D75ADEBB6518CDC26F68DAD6DB575568ED4880A64257B55BD101A5B9AD2A0A6BF1DB436E57220496A161E03A28CB124996218CD9DC832CCF9097258A82091E3D174A59DAA520653318292BD822254B124B47C8F21E62CD7729AB8A8F666603';
wwv_flow_imp.g_varchar2_table(61) := '7FA224650B7F3D0AB8DEA06742B861A6F08E8951B78BAFA321BE9F4FF0753CC4A8EBC2320CDE5AF9BCFDCDDA07C18F0756A17F3EE8B3A2C99229292659DE6CFB21F5174551204AD366D85165D1A66551203846840170F2B425606FABFCB56809AF847182';
wwv_flow_imp.g_varchar2_table(62) := 'D9CAE3A23E4CD8A70E737B41884D14ED9D777D0A49921A6FDCB14CB8B605D7B1D0E12D638E65C0314DE6ED736F5E531FA901E039FEE6F63D350012D7807F4947445DD56EE93AFA9D0E1459419C6658072166EB0DC2840FCCA1198AF2F9E980A6CF1DE08B';
wwv_flow_imp.g_varchar2_table(63) := '7FD178A9AAA200044CA4E61566039465C56A19E2047E18214A1236458F0F717AA9E29F4408545581A96B30340DA37E17179321FE767186F3611F3DC78163185024991900CF3163B840902401BAAEA2DBB140244051E466DF8449DA1C9775EA601FB29245';
wwv_flow_imp.g_varchar2_table(64) := '41BC20C42608A14832CC37D65F1008DE1261009C3A4D0BF8238B3F5AEA6BBC1F7CB6F2F0EFAB297E4C678D31305B798DC758BCC1E4BE5A214EE1AD628E6562D87531E9F730ECBA18763B18B81DF45D67EBF5EB5A33C465B7EAFF765780D4E4F1DB8F1389';
wwv_flow_imp.g_varchar2_table(65) := 'EC3D704722A4491F742C03519260EE6D307057D88411009642C10BCA01589F3A50556C9A5D2D8293662C4C2D4BE4D5222F65C50C80204EB08962E645672CF4BF8FAE0121049AA2C0D275742C13E31E0BFDFFF5CB19C6FD6E5383C1C2FEC0732253DC74E5';
wwv_flow_imp.g_varchar2_table(66) := '11000D5D5B82A51BB00D036996214E5204710422014555224E53207FF1AE00009E06C9B00E2274830886AEA35358FBBD9840F0011006C009B39BEFBF3FEF5FE7F0B3822DEC799163E96D70B35CE2C7CD14BF5FCFB0DC6CB0DC04581E90DB7E08A956DFE3';
wwv_flow_imp.g_varchar2_table(67) := '9EBFA16930B80739E977713EECE37C38C0A4DFC3B8DFC5A8D7C5B0EBF2103E4B07C88FE4EC5F9BDB32C9CC10615EE2C00FD0776D741D1BAE6DA2288BBD8A016BCFBB282B142597E7E5298052919F6C097C2E655521CB59F83C8C93662473B9674E5B9208';
wwv_flow_imp.g_varchar2_table(68) := '746D5BF837EABA180FD87738ECBA2FDEDEDBC38B3469AB1560E82A6F478DE08511F2BC429430619F7D29CA12499622E07A165DC7BEB708F2B6F1F2EC71CC02C13B230C805364A7D5EF6115B85AD3BE284BACFD00CB4D8095CF8460FEB899E166B9861704';
wwv_flow_imp.g_varchar2_table(69) := '089314F92B7AFCED3E7C43D3609B46D31FEE58260BF59B26FA1D077D97B58D753B6C61754C03BAAA405558B1DEDB0FC97D3EB2244157F9E7310D4449FA6011D9F3601199BCAA90152554F575459568C5AAFFB33C6F167F26F7BBDF7BC8920453D7D0736C';
wwv_flow_imp.g_varchar2_table(70) := '4CFA3D741D1BA6AEBF8981460881A969E8F2F78A9214EB2038E8BDEAAE8334CB91E5198AF230F96381E057230C8013A4099B3EB23CD69AE81597F65D6D023EBC678EABF912D7CB156E566BACFC004996EF2DB6721FB5229C22CBB04D03A39E8B51D7C5B0';
wwv_flow_imp.g_varchar2_table(71) := 'EBEE08C438DC30B04D03A6B155E6ABBD7EB9EE6AF8203003406532B7A6814D184196F75F906A95C192F7C4B3D0FCEB0DA1A9E856133FCDF366B6C1BE484482A9E9CDA2DC736C586F6400484482C18D8D46D297A763F6A5E20651ADF39017E58796AF1608';
wwv_flow_imp.g_varchar2_table(72) := '9E421800274933FEEDC167D4A1FFB2A2C8F2124B3FC48FE91CFFF3FB0F4C576BAC7934208C9357D7F127842DFE9ACAF2FCA35E17DFC6235C8C0718F7BA18F77B18F7BAD05426C6A3C83294A62F7F3BA9ED232DFE001327D235159661C2364C189A76D082';
wwv_flow_imp.g_varchar2_table(73) := '447904A016C561C370F6F7D06F53F11904758D41CE0D8C7D5F5E96084C832DCA67831E7A1D07A6AE1D64043D8444080C5D83EBD8A828C5DCDBF00E83030C00CA23007981B41E3E2422008223461800274653CCF690F42B5FC8B33C4718A78892046B3FC4';
wwv_flow_imp.g_varchar2_table(74) := 'D57CC13CFFF912CB8D8F30664561D92B84FE09212D653EA59184B54C1DE35E175F27232612331C60C08BFD865DB7E911DFA745EF57407885BEAAC85055A56977DB1B5A1B0155D39AF79A9D17F5609CA264D31DCBC6C0D80FC2FBE6754D83691830343647';
wwv_flow_imp.g_varchar2_table(75) := '417A8B480D017F2F159669F0990DF241FB9BD26D54A4A82A3ECBE2BEFD7DDF7B884881E0E3210C8053A19DF77FB0D3AF9EADCED4EAA6EB35A6CB35AE172BFC7133C5F572092F0C10A509D2A27895D9EF0053EDB30D96DF774C5620D6EF3818B80E066E87';
wwv_flow_imp.g_varchar2_table(76) := '57F8BB18B81D742C13A6A641E6ED5F1F7FD9DF42B84ADF76BEFDC7FE04DB2850D544790EB22F5ADD1492C495FD1E391E0FA1192F4C5801A9447857C701AF4941D9A0209E1E7B4F812B81E02D1006C089B02BF1FB80B21AD0A8AAC549C65BFD6EF0EFAB1B';
wwv_flow_imp.g_varchar2_table(77) := 'D6E6B7F4E005119BFFFE8AE14F4556609B46E3D99F0FFB381FF471361CA0C70BFB6CD38065B0023F5D539BB6BD63F0FC77A917416E081CFA72BC22BF8EDEBCEA9244D118844D84E1C077A817FF7A517EEC783C0C0209ADF7921E3FF69F05E5EDB0153304';
wwv_flow_imp.g_varchar2_table(78) := 'D89D57DB6081E0DD1106C049406E5DEEA75E444A1E0198AF3DFCEBF206FFF3FB9FF0C3B819E75B1EA0FF7E1FB22C3103C0657DE1BF9D4FF0DBF9187F399FA06399906B0D7E9EBFAD3FC1F12DFECFF9163E0E14B429062DB9C77BA8D74B707BDAE22B1841';
wwv_flow_imp.g_varchar2_table(79) := 'F7BF1108411301A80B420F3B6468B34FB60697B00004C78B30003E25ED5E7476FF318DFFFA9C1EC60936618C4D14E1E7748ECBF9020BCF831F8688D30C799E831EE0F5B3902C6FD1D2F546AEB7D771F06538C0C568C0FBFAFB18743ACCE3D7B4D68271E4';
wwv_flow_imp.g_varchar2_table(80) := '73D7F8CABF4D017C6C6A6FBDAECDA8BDF67D617A124C4E771346B00D1D1DAB78934AFADDF70A117015C343D25684B06882A230F548E991390502C131200C8023E5EE89873C70F3F1F1BEEDD0B11FC5B859AE70B558E2C7748ECBD98215FC2529F2BC4051';
wwv_flow_imp.g_varchar2_table(81) := '5607793C92449AB1AE5DC7C6B8DFE555FDDD9DEAFE9E63A3635B501565A76851F0BE4884409198EAA2A6B26E8B438AE8AAAA429A6708A2186BDF47C734D0EBD86F52494F294596177C747288208C9166F941EF550FFFD15495EF8F4F60940A4E1A61001C';
wwv_flow_imp.g_varchar2_table(82) := '25F70491C96DAFBFFDDCC7A973C8411CE37AB1C23F7F5CE1C77486E9728DA5E7238A135E08B67F1118012013A991F1EDDA162E4643FCE5CB0417A321066E0703D741BFD36906F6A8AAD288F988E5FFFD213C7CAE2A323459611AFD0744002A4A91650582';
wwv_flow_imp.g_varchar2_table(83) := '38C66A13A0D771D8A2FC5611803CE7C3977CF831AB5D3948C780EB53688A0CAD9E13210C53C111230C802362EBF5DF53FC764B82F63917E81E1F0000200049444154D442324559A12C2B7841849BE50ABF5FDFE0C774814DC8869E24D99EE2E9CDD63249';
wwv_flow_imp.g_varchar2_table(84) := '5F5555B88CAF8A41CFC5C57880BF5F9CE3FB640CD7B1E0DA365C5B68AB7F142442A028CCE3D535158A2AF34143D8ABF8ADAA288B00C43156BE8F51E822E2A3758BB23CB8A593F22E054A29F2A2449C66D88411961B1F9B20449CA6285F3079F1369244A0';
wwv_flow_imp.g_varchar2_table(85) := '2AAC0855D354280FB415B6EB242815C582828F8B30003E328F85F95F81B22AE147312FF08BF173B6C06CB5C6DA0F10C675B5FFE121534596A1692A862E1BD633E876F06D32C2B7C918C3AE0BDB32A16B1A9437108411EC4F2D5DEC98263A96054BD3A128';
wwv_flow_imp.g_varchar2_table(86) := '32F6B500AAAA429C66F0FC1012087A8E8D9EE3A0EF38A014D0351586C6C63AEF0393EA6523928328C1DCF370B35CE1C7748ED9DA43C0C754EF8B22B349861DCB826BD930351D8A2C4EA182E3451CBD1F8C1DEFE79601B05336F64AE35E8328C674C5FAFD';
wwv_flow_imp.g_varchar2_table(87) := '7F4EE798AE3CAC360182284196170755FC4B3C7F6C682A6CD3C4F9B08FAF9311BE9F8D9A7CFFD075E19806343E054EF07190651986A6C2B10CB8B609D3D0A0290A2442B08F59585266001012212B4A743B0EBA1D36BD519225B8960559920E3200D22C63';
wwv_flow_imp.g_varchar2_table(88) := 'BAFF7E80F9DAC3F57C859FD339961B1F7E141F34A552916518DC00E8D8264C5D18AD82E34618001F0572BB58EFED7BDCCBAA821FC598ADD6F8FD7A8ACB260210227805895F4922D05405A6A1A3EB58381F0EF0F78B2FF83FBF7D45AF6337437E0CDED72F';
wwv_flow_imp.g_varchar2_table(89) := '0AAA3E16B224B1E97D9509D7B260E93A54456E54A45F7A68541565DD2405AB03E8F3B90EC38E035D552113362C685FAAB242C2C717AF8310F3F58647001608E318099F67B02F8A2CC3D475B88EC90C225DE3111181E0381106C007A05DE5FE689EFF11DA';
wwv_flow_imp.g_varchar2_table(90) := '2230554B16B69EDB4E9BFB1494B2823E3F8A315F79B85AB030E974B5C63A0811A5FB4FF7ABF3B81221B07436F8A5DFE960D2EFE2623CC4D709BBD8A6014DD96AF90B3E1E7504871A80651A300D7ED175D652576EF5019E03CBCD17A8E746AD7C1FB39587';
wwv_flow_imp.g_varchar2_table(91) := '8E650284B0E13A159B3F204B126499B5DDDDD736B9D5286022456555B18AFF8D8FA51F60B65CE366B9C66CBDC12A089A0E809776016CEB1200435361193A3A9605DBB458DA4ABAFFD8DDB6D852F032DB17BDAF40F01E0803E017F05801DFBEB417F97A6C';
wwv_flow_imp.g_varchar2_table(92) := '695116FC9A5DCA8269BAB39370092F8CF0FB74869FB305AE972BACFD005192A2AC0EF192A466611FB81D7C190D70311AE2CB68886F1356ED6F682A54596E4EEE828F89449848930AA6A9EF98067A8E8551D74510C788D30C71CA5421F7218A53CCD61E64';
wwv_flow_imp.g_varchar2_table(93) := '494294A458F93E169B0D066E0796AEC3343458BACEDB0FB7C6406DE096558524CB90A419922C831786587A3E961B1F736F83CBD9025E10F221492F574A24045065198A224355D864CA5A95D23634E87C9E834070AC0803E0BD786E6E7FDF42BF96C75F14';
wwv_flow_imp.g_varchar2_table(94) := '25D28C9D14D38C8D72CDF202699E3727CC38652352FFBC99E17236C7CD62852849916487554AD7C35E2C43C7A0DBC1C57884BF7F3DC76F679346E35F5755C8FCA42E96FF8F4BDD064840D818635347D7B631E8762049049402699E037BDA8B619260B65A';
wwv_flow_imp.g_varchar2_table(95) := '234933AC83004BCFC77CCD0C00163972D0756CE82AABB8AF873F955589B26443793661844D18C18F222C370116DE060B6FC32BFF23786188B22841F7D0EE276045AC86A6C2D034B6F09B6C5E856518501519F203110086F0FC051F1B6100BC33F7EBD7BF';
wwv_flow_imp.g_varchar2_table(96) := '4E04A0D66DAF679647498A304911A7FC92A4089304419434BDD897F3252E670B5C2F9728CBAA1908B42FF509D3360C0CDC0EBE8E87F8CFAF17F8FBB773680A1350D154B509AB0A3E2EB501204BAC42DF360D741D0BC36E878BFAB05CFEBE84718238CDB0';
wwv_flow_imp.g_varchar2_table(97) := 'F07C582B037D77833E1F0035E97731E9F791E6392C5DDF396EF256246BE16D305F7BEC9ADF9EAF375807216B6FE5C6C2BE9F5F51B841CB177EC734D0310DD8867EA4B32804822DC2007833C8EE552BC7FF9801D0F6522A2EBE53E738CBB244C13D9FB20E';
wwv_flow_imp.g_varchar2_table(98) := 'EBF3FFABE7C1E745C117FF8C2FFC19F7FA99F71FA529A2848DF9F5C318AB8D8F204E90E7C5DEBE8A24498DE67AD7B69A0AFFDFCEC6381FF4D1771D38A6D9CAEB8A13E731B1735CB4064A1DFA0D5694A2E2C7310820870415DD1ECB595E204E539E325278';
wwv_flow_imp.g_varchar2_table(99) := '0122697E03455962E50758F93ED69B002B3FC03A08B1092344497AE0D6B1E39A0DA97231ECB9180FBA701D1BBAA63673291E866E350004820F8A3000DE84D7F3F28BB24456E448F38287EED9021EA775783F4392E548B31C49DE0AF967EC6F325EF95CF7';
wwv_flow_imp.g_varchar2_table(100) := '476779D13C274E53F8518C34CBF65EFCD98C772E17AB2818745D7C9B8CF0DBD9045F27439C0D7B702C03B22C1D24F222787FEAA812A51405178C6246666D781E381EB845595648B31C1221A0154559568893142B3F6085A2920499A700AA96411C2609C2';
wwv_flow_imp.g_varchar2_table(101) := '38E1D729A234DDBB26E1368A2CA16399381FF4F1FD6C8C8BE1003DDB86AA88D3A6E073208EE4D7A4F6F29F50EA7B09455522C9F246D56C1384F0B89713C43182384118C55BCFBE5156DB9EB0EBEAE77624A12C2BE4DCCB4AF3FD95FE0817FBD15596271D';
wwv_flow_imp.g_varchar2_table(102) := 'BA2EBE8D47F8AFEF17381F0EE0DA56E3FD1FC3001C418BD674C8B2AA768C80B22C41E9EB69F8B39442CE7BF9F3A6975F5355C88480F02813DB2CDAA4AA1AC3965FD745AF8742084B67B9B685B3610F7FBB38C797611F5DC77A860140EBAADC83B7432078';
wwv_flow_imp.g_varchar2_table(103) := '4B8401F01AECB4F091277383B78B91DAB5C9EDF6A18A0F3489D3940F5009305FF39CE7C687E787580701BC20841FC5CC2088E266417F8FF38F440854B916FB3130EC75F07532C27F7EBFC0B8D7E5A37CA567844C05BF9ADBC7655D695F96258AA240D12C';
wwv_flow_imp.g_varchar2_table(104) := 'B26C305455BDDE38DCFA58CFF2FD857A5E0B36059140551566000CFAF8EBC519FA1D071DD3BCD3FB7FE7F74C21C6040B8E0261001CCC7E3E6D452968552FF22C245F87E6EBD07ECA454DC238411027F0A3085E103595CF21FFBF308E91708195B718AC72';
wwv_flow_imp.g_varchar2_table(105) := '1FB537AFAB2A06AE8349BF87C9A087EF9331062E1BE853D706886ABFE3A1E29D2415A57C3C74082F88305F7BF8F7E535AE174BACFD10211FAFFB1693FC7E25ACDB81B5FA8D7B2EBE8C0618763BE898064C4D83AA880140F773FF34D217411FBC23782384';
wwv_flow_imp.g_varchar2_table(106) := '01B0372DAFFF56A1DF7360C57D2C141FC6093651043F8CF9F5B6B58915EC6DC3FB499A214E52C4AD16BF34CB9B10281366798BCFBBA511FB9124189A8A61D7C5F7F3310B938E0618743BAC504A22209208FB1F13B5104FC95BECAE162B5CCD97B89C2F71';
wwv_flow_imp.g_varchar2_table(107) := '355FE07AB1C23A0891A41937003ED7895AD754F43B0EC6FD2EBE8C06F8321C30B96ACB82A16B50B914F27DEC88FF7CAEDD7287E78E23DF973BBB4FA453DE046100EC45DDC2763BD4FFCC297C00286513F8F2A2409824586D02CC780BD3DCF3B0E0AD4DB5';
wwv_flow_imp.g_varchar2_table(108) := 'D84A9C65C8F31265C5ABFFCB6D4EBF6AAEE9BB7864F5743F5992A0EB1A06DD0EBE4FC6F8EFBF7C83EBD8E839360C5D8324CB6C94AFF0988E868AB2D6B9AC2CE04711AE174BFCE3C725FEB89E62B909B0DAF8F0FC80B7D855A85EB10EE023A0A90AFAAE83';
wwv_flow_imp.g_varchar2_table(109) := '8BF1107F399FE08247001CAE5C294912C8A323914F41F9EFA971E4CFFDBDDF4E85DE77E733EFC75F8F30005EC836CF0FDC31005AB7DBDE00055A8B342BA24A79E57E9A6598AD37B859AD30E5F2A5D315BBCC561EF7F05935FF7B85F79F429625E8BC2FBB';
wwv_flow_imp.g_varchar2_table(110) := '6BDB18765D9C8F58A5B4AEAAD03536344616DAFE1F9EBAA0AE2EF68BD3AC89364D571E2EE74BFC7933C31F37B36DCAE9155AEC3E0A8410C8B204459621CB32FA9D0EC6FD1EBE8E86F8366143ABBA8E03D3D0778EE73B237F9BEBCFDBFAF7DAE3C8F7E5A5';
wwv_flow_imp.g_varchar2_table(111) := '824E82871106C0B368F5F4B77E044FD1AEBC4FB31C619C204A583E9F15EC25F0E3189E1F60E58758FB012BEAF343F8618C34CB91F32AFE8F74C8EB9A867EC741AFE3E06234C4D9A08FAE6D43E73952599644DEFF48A828455194C84B56805747A0E6EB0D';
wwv_flow_imp.g_varchar2_table(112) := '7ECEE6F87133C7D2F3112529D22C3F4825F22321B5D258AE6DC1B52D746C0B5F4603FCE57C822FE32146BD2E5CDB82AEA9279BC67A6C3AE93B6DC1CED51D84317010C2007806DBE39EBC48FEA4A2B469B70BE384C9946E7C2CBC0D1330E121D530491A71';
wwv_flow_imp.g_varchar2_table(113) := '9EBAC73F6EE5585F3270E53D30789EF4EB78886F933126832E936CD554AE1C2734FE8F055AB156BA24CB112509A6AB35FEB89EE28FEB296E962BCCB9AC6E14278DF8CEB143C83685A52832BA8E8DB3611FE7C33EBE0C07F83A1EE2EB688071CF85A9EBD0';
wwv_flow_imp.g_varchar2_table(114) := '55F519C7F327F1FE1FC9EDBFF638F2176D067DA0EEE29E5B82E7230C8047B9E5EDBFB0A29D155495C8F31C411C63EE6DF073B6C0E56C81E9CAC39487FBD33CDFAAFBF134411D3D003EDE39C5D034F4DD0EBE8E47F8ED7C8CB33EEB8F36F81C77D1EF7F3C';
wwv_flow_imp.g_varchar2_table(115) := 'B05EFA12499A2188624C976BFCFBEA06FFF3FB9F58789BA60035CDF2265570EC109046B9529365F41C1B17C301FEFEF50BBE8C0698F4BB18F77BE875ECC6A03D35EA5FF0AF8B00DC4E313CF65CCA0D84E33F36DF1B61003CC29D3CFF3DFDFDED0963653D';
wwv_flow_imp.g_varchar2_table(116) := '692F6715F9F5C9338C13CCBD0DAEE60B5CCD97B85EAE783F3FD32F2FCAF2C39F5CDBE3593B96C95AFF063D9C0DFAE8756C5886217AFD8F84AA55301A2529961B1FCBCD06F3D5063FA6335CCD9798ADD6D88411B2BC6894FFF681002012D9A99CAF0FF3A6';
wwv_flow_imp.g_varchar2_table(117) := 'FEE0153ED353287CAA5F2D5A65EA1A4C5D836D18F87E36C6B7C91817E32126BD2E7AAE838E65C2D4F5DD1769FF3EEBBC3F5A39E98FFBF37D1EADF3DB2106006DED9BE6FEAD7DC37CA95B43D15E632AEA073E877E448401F010E49E4AD707A84F6479CE2A';
wwv_flow_imp.g_varchar2_table(118) := 'A7FD30861F455873A19E951F62E5B331A5AB8D8F951FC00F63C459DA84F73FF2814B0881A62A30740DA6A661D87531EABA18F55C0CDC0E1CD38426E4518F867A76445614588721AEE60BFC982EF0733AC7E57C81F9DA439C64CDC27FC8B14924090A2FB2';
wwv_flow_imp.g_varchar2_table(119) := '9308D98EE5A5D8E960790BEA481421A459EC6D5347C7B2D0756C741D1BBD8E83F3411F67C33EC6FD2E5CDB86A9EBCF376677F4FE3FEE6FF85176EA9A5EC7CB6F1B77B4F59D0380241148F7CAA5EF0B0108C59D6DFFC0E7D48F82386BDFE696AA5FFBB1FB';
wwv_flow_imp.g_varchar2_table(120) := 'A04023999A1705FC28C674CD2AF8A7AB35664B76BD0922444982904FE54BB9F8CF3E634ADF1B0240E30229AE65B2896DDD0E465D17832E1BEFABA9E2503A16CAB26A664BACFD0057F325FEF7E715FEF9E3125E18C10B42C4293300AA038F4FA925152D4B';
wwv_flow_imp.g_varchar2_table(121) := '52B3E85794829440018A8A9237F90DD4EDAA122130348D8D1876D9713BEE773119B0A1553DC746D7614681A16BD014158AFC74D87F6BB87FECDFEF8390DB5EFEEBCEEAA817FFFAFBAE2ACA5F5F025AFA2087BC63BB3EEBBEF767378EF4FB7907C4597B87';
wwv_flow_imp.g_varchar2_table(122) := 'B605FCCCC3B265E5E665013F8C305BADF1E7CD0C3FA673FC9C2EF0633A471827773C9E63392C0921D014058E61A0E73818F293E8A8E762E8BACD7304C7415955C8F25A6F3FC4E57C897FFCBCC2FFFDAF3F98E67FADF5FF0AEF2549042A370014456E265A';
wwv_flow_imp.g_varchar2_table(123) := 'D68255554541F0365D2EB560952C49307566004CFA5D5C8C598BDFB7C9185FC74368AAD218B175BEFF748EE7D7F3FADB348B3F6F2FADAA0A55596D8D0EE915BDFF7BDF5DF01C8401D0407673600FF4B5524A1B219EA22C11A56923C7BBE2DE54AD9E365B';
wwv_flow_imp.g_varchar2_table(124) := '6DE00521926C2BD3FB5E39CF3AF4D9CC7497E5A6A0A91EC95B7B4712AFDA97F898DE7A6A5F730295650C3A0EF3FC3BACF8AFEF7660683AA4132C903A76D8C8DD1269CE2748E639B29CA949D61EDB21C7A8CA73ED8AA2C0B52CF43B0EFA1D0796A16FBD41';
wwv_flow_imp.g_varchar2_table(125) := '4A91D4A3AAB3BC19015CCF1EA87F2BCD75B59B2623B78E51A939CEA526DFAF294AB3B8F73B0E865D1783AE8B71AF8B71AF8BAE63C1D43528B2CCDA572569E778BE1395B8D3FB7F9CDE7FBBA6E9B6D77FDBF0D9A66C58475356E4CD54D17A3264511B755C';
wwv_flow_imp.g_varchar2_table(126) := '41B2193AC685A26E4700B6E721B9F9DE2469ABC7505F54456EC640AB8AD23CD6FE8E9E34D4DEE97C7BAC0803E09E1FC16350DE375D8FDE5D781BCC561EBBAC37ACD58F5F365184204E5828B58E14BCE9876134A14FBEC86BAACA3C1C8589F7682A1BDDAB';
wwv_flow_imp.g_varchar2_table(127) := 'AA3214496E06F628B78C8476AB54AFC999DA18F77BE8771C689A387C8E91BA3B25CB73641997906EE94D1C728C1202688A0253D761193AC6FD2E2E46437C190DD0756C00DB75B4D6C560ADAF2C2D9664CC1829F9E4C1662169A206B4315025892D1EB588';
wwv_flow_imp.g_varchar2_table(128) := '8FA628D03515BAC626539ABA0E4B67D71DDB44C7B2D0B14DD6F76F59E89826542E582591A75B57EB741FBB3AB66565EBD8BC28BA4129288F5C66399B4D12446C0A699CD62DCB693392BC9625DF512A6D1911B7CF4DCD82AF6C278AB2EF4E8365E8B00D03';
wwv_flow_imp.g_varchar2_table(129) := '96C18E25D3D0412409AAD4FE440F7F56FE8141485BA2F9D8BEB7B7E5E4CFE0E496E7FF1414405EB2B6A9304E305B79F8FD7A8ADFAFA6B85E2CB18962A6E51F454C9F9F5BCAEFAAE24798067F7D72343415966EC034F4A6FAD9D4D90F4DE55E92A6285015';
wwv_flow_imp.g_varchar2_table(130) := '666D2B8A02B5A99A96A0290A3AB5588AC54EA48E6542E76D7F82E3A2AA2A140553A34CB28C55FA97FB57FAB721205079BD48D7B1713E1CE0AF5FCEF0B7AFE798F47BDBC814D00CB8F2F982522B0D4669CABDCCB2890CD4DE6645E9D66394A4C63BAC8D0E';
wwv_flow_imp.g_varchar2_table(131) := 'DBD4F9301F131DCB84631AE858260C5D6B542A754D85CE8F7B55919B28C273D81A0147B890D46DCC2F30009A71D09422CD0B6CA2180B8F1534FB219B5BE27347278C5384498238CD78AAE7FE22D276F44653B7E71FDB34E098261CD3846B9BE83A0E733A';
wwv_flow_imp.g_varchar2_table(132) := '1C1B65558148849F739E57A0795F7D40DB88139CB801D058C30FB4F7D5D4212CCA3DA7304E9A62A9EBE50A7F5C4FF18F1F3F71355F22C9F246C4E73DB6BD3E996EC3F6E027468585415515B6C17E58F59433DBD06199062C9D9F0CEB0881AA40E5910255';
wwv_flow_imp.g_varchar2_table(133) := 'ADC36F0A545581C3FFD6318D261CA788B6BFA3A41EF39BD721DCAA3C78A84F3B5D64193ABA8E8D51CFC5F9904944FFFD82F5D8D78BB7440836518C4D10C1E30BC926AA179398192579CE460417BCBD961725B643C89A5A47B5D871EEDA6CE1AFD5FD5C87';
wwv_flow_imp.g_varchar2_table(134) := '5DABB2DC44B41E4B5BDD27F1BB73FFE816FF564AB375CE6873FB5CD74EBDD4E39FB3A2841F4658AE374CAA7CE9611D0458FB01EF6A62869C1FC5089374C700780C5D5361A82C6AE35826BAF636D2387463C4498A3C2F1A054A459251D10A12D9A631DBDD';
wwv_flow_imp.g_varchar2_table(135) := '1E2F89E40A4ED6007859A15F5E144DA82B8C93EDD09EB5C7FAFA172B6CC21829EF997EAB012975BE5E96255658A5A9D0550D86562FDE4A13E66F2FEC75FB9EC1BDFE3A44AAA96AE341B16B9E7B93B7690159629100435361682A8B0CF0DA81532993123C';
wwv_flow_imp.g_varchar2_table(136) := '8E22CB2CA2C45BEDCE877D9C0FFAF832ECE3623CC2B8D785C5B5F4D971C38E1C95FF1DA515148940D714D8868E24B36FE59779CD0D8F0048AD08C036572CB3D0B1A1C3343458BA0ECB309AEE0352AB53EE55DCD76EF3FBDC0B4745294BC92429A294CB96';
wwv_flow_imp.g_varchar2_table(137) := '47ACC6C90BA346C174ED07CCEBE7D19B761AA77CC0F3BFF7FDB8218A9C404A521010D6A592E588920C5E1062B6F61AA3A0E738E8D82C4AD0B10C5886D14A693E57B2B9FDACCFFD7D3EC5091A00B706F93CE384909725FC286E7AF9AFE6CBE6B2DCF858FB';
wwv_flow_imp.g_varchar2_table(138) := '0136618834CB5FC59B7A70CB09ABA8D65496EB742DA65FDEB12DD84DBE8CE5CC4C9EFB64234CE55B217E76C2546419523BEFDFCEFD93DD22C1DA5090B92725ED7D32157C361459866DB20E9181EBE0DB648C6F9311BE4F4618F65CF43B0E4C5DE7DEDA36';
wwv_flow_imp.g_varchar2_table(139) := '05A028329B1A291168AA0ACB3090D9CCE3ACAA6A5B3DDE9A764929DD16FF49A4F1E865496A7E1B6ABBD645551A0D82972854EE6A7334CA456FB0F7DE92FB8B9A1F8215FAB108E76AE37381289FCB97FBF0821061BC4DD734A3C89B480DBB34DA26CFD8C2';
wwv_flow_imp.g_varchar2_table(140) := 'BA1EA55D6898641982248117864D4D405DBFC144C83A98F4BB98F47B18F65C58860E18048AA23C794E6229DFE6131FDF57FACA9C9E01C017FF97E4C28AA26452BE6BA6E6F7FBF50C7FDC4CF1C7CD14519C363F007620BF5D7849924813D6B70C03BD8E83';
wwv_flow_imp.g_varchar2_table(141) := '618F89F2741D07BD0E0B9F75AC6DB8DF32F466116F0F40D956FB63E72441B887B67D0CADE7EE7608080400A0C8126CD3C0A0DB6121FFF311FEF6E50C7FFB720EC7329B10FD6D495D851B939AAA3429365635BE5D7CDB2232ED5F551DF205EAE396A7C15A';
wwv_flow_imp.g_varchar2_table(142) := '462B4B35484D77CB0B32DFD8F1F68F7D9578C6B9AECE6E9425E5734B7C5C72E5D2AB057376D67EC016F97C3B9D74671439DD7E7FCFA52E122CC0223E499635DF99DC4AD9B0D42513729A0C7A0893335050A8AA0C4200555140A9F6D48EB8C7F93FF2EFF6';
wwv_flow_imp.g_varchar2_table(143) := '404ECA0068F260F714FEDD5EB4332EE79B1705169E8F9BE51A9773D6D37F395FE07AC1C6F76679F1AAE78776956CBBC259E121CEBA22B6635918753B8D01D0EB6C0B663AB6C92301CC00A85FB7D90702C181D4A9224591D1EF3818F7BAF8321AE0EB78C4';
wwv_flow_imp.g_varchar2_table(144) := '27440E30EA776168DA835EA8F4CC62AED7E63103BD6EEF3BEE8AF15B15FF0F9CEBEAEBBC2890E605B28CCD2CB95E2CD924C8E91C578B25AE796BF3268CB60BFE2BEE9B66647A59020FCC9A0AE30486CE5297699E43261214490201419CB242565A51E89A';
wwv_flow_imp.g_varchar2_table(145) := 'CA239C0A9B4ADADE2BB78502D9A347FC3D1FCEE918008D157CCB0ABC45FDA30893046B3F80178498AED6B89C2FF173B6C0F57C89B9B761C23EE5EB87902449E285312C57EF98066C5ECDBC2DC433E158C6AD1440EDF11B307596DFBFFD0310085E0B53D7';
wwv_flow_imp.g_varchar2_table(146) := 'E0DA16BAB6CD5AFDC6437C1D0F71311A62D473E198C6510CD1B91DE63FFEE230F2AC28675BA12F8C132C363E961E9B547ABD58E17AB9C6CD7285E5C68717467C3269D5B433BF3755C5B42B0872F841849BE50A945204718CC9A08F49BF87304E9B0868C7';
wwv_flow_imp.g_varchar2_table(147) := '3221CB8F4704B89974D213054FC300B813B67EF847D11800718CD9DA6BC260D78B25AEE62B4C576BDEBF9CA27A030D73499260A81A1CCB40C7B230E492BBC39EDB3AB82D38A6C17B9EB745801AAFE057EA2A7D4912857A8237C134740CBB5D3642773468';
wwv_flow_imp.g_varchar2_table(148) := '0C80F3619F19AA860159923F76C4A9E5E5D34F13EE7F5E6B73A3D0575608E214D3E51A7FDC4CF173B6C0BCA56712C6ACB82FCB9836C3CEF0A377A4A41550F0FA2A12A3A414419C60EEF9F0820841942049734C061928659100437F2225B09316A2A02738';
wwv_flow_imp.g_varchar2_table(149) := '51F0340C00002F91BCA400C224C574C546A3FE98CE71B358E166B9C6C2DBB4F295AF7FB0C812695A6206AE838BD1105F27237C1D0F31705D74795B936D1AAD5640ECE4E6B713BD0482B7C1D4750CBB1D7C9B0CF1DBF90417A3212EC6439C0D7A3B352747';
wwv_flow_imp.g_varchar2_table(150) := 'C389E583EB0840515508E31837CB35FEF9F31AFFFBE30A5E10C20B42AC83B051657C571D937B60D32B0BE400B2A2681C34435511C609928C8D5407280C4D43AF63FFD2ED3D163EBD01F054FF6B7D5C1765D9A89245698A3FAE67F8395BE06ABEC26CE561';
wwv_flow_imp.g_varchar2_table(151) := '1D8488921479F14092EA85B4AB97EBB63C43639EFF804BA7F6DD0ECEF8C8DD719F0D2DB179F8FFCEA85281E00DA87F31B22C33553D4387A9EBF8ED6C82EF9311BE8E4738EBF731703B4C70477BD8EBFAB5E1F57BFAFBE9DD14C031F39C1AA73ACA19C609';
wwv_flow_imp.g_varchar2_table(152) := '36BC77FFCF9B197ECE9893B3F036089304619236D2D01F0DD61902006C66C5DA0FA06BEAB61B4461F2CF9452AE6FC2DAA2DB6C3582D82D4A01424EAF2BE0F31A00F5C14F9EF2FCD9979EE705567EC0257D3DFC98CEF0E36686E97285D526401427C88BE2';
wwv_flow_imp.g_varchar2_table(153) := '95368DB0D63CDEA7CFA69439E8773AE8771CDEEF6A37F2BBF5C53274E89A0A5912023C82B7A7AEB4970881AE2AE8BB1D360ABAD7C5D7F1105F27435C8C0718755D74AC178C84BEEF2C4B1EBCF302E8BD37D9DDF6FF513CF8C4A385E0A92867BDF85715C5';
wwv_flow_imp.g_varchar2_table(154) := '26887875FF0A3F676C68D9C2F311C4096B67E6AD791F9D8A5244698AE5C667024112A0286C04755995CDB9F3B60120607C5203E07E2BF8362C9FC50EA2B46006C08FE91CFFBABAC1CD72859BE50AD3E50A7E1423E7223FAFB2750450640526AFEA1FF7BB';
wwv_flow_imp.g_varchar2_table(155) := 'F8CA43A8E37E175DDB6E94CCEA3CBFAE31D11E45928FA2B84AF0096885F2355545DF75F0FD6C84DFCE27381BF47136E861D2EF37C7A9F61C69E89DFEFA07DEF6C907EAD7BA7D771F03E03370ABE0EFD1C23FD6EBBF09235CCD97F8FF7E5CE272B6C07CED';
wwv_flow_imp.g_varchar2_table(156) := '61B9D9208C633E83E175CE756F0DE5C2455555214A1200E0F54FAC3DB0E251807A0EC58310009417507EBAE3E3613EA701F040D8FF8EB46755A1AC582E2C4D332CBD003F6673FCBF7FFEC46AE3F34BF0AAB2BE04804C24E8AA02CB34E0DA1626FD1EBE9F';
wwv_flow_imp.g_varchar2_table(157) := '8FF11F5FBFE0CB70C094AE2CA6BB2F10FC2AEAC96D4CE94FC7904F82FC3FDFBE62D87331703B18743BBBE9A8DBBFB1F66D5E74F76A9EE5492DF28F508B2B3DE6ECD05D09682F6463A0FFF9E31257F3158298A503E2347BC70D3F1C4AC1274AD6DB4D1AA9';
wwv_flow_imp.g_varchar2_table(158) := '725996A0AA2A5CDBBA771EC1CE7DB0C3A929033C91E3E7731A00CF24CE32F8610C3F8A305D79F8319BE166B96E642ED33C3F58D6B73ECC34556DD4F96CD3684E9E03B783F3511F17C301FA6E07966940535528A2854FF00B688BE8D8A6D168B38F7B5DFC';
wwv_flow_imp.g_varchar2_table(159) := 'F5CB19BE8C86E8753B6C1894A63D631CF4670CB71F1F65553692BE7E14F316BF0D366184384D90E6C5AB0C836A532FB2ED31E314750EFF150DC116599E631344B859AEA1F20151AE6D61D8759B89A78AFCC1BB53DE91CF6500ECA8D73DFCB4FAC08B93AC';
wwv_flow_imp.g_varchar2_table(160) := 'E97BBD9C2F58CE7FC50C802465E37E0F96F5E5AD26BAAAA2E7D84D1E75D2EF6232E835A3757B8E8D1E9F99AEF111A502C17B2371495D4551D0B31D5C8C598BDF97E100E7C33ECE867D0C3A0ECCBA1E853C719CD2AD67FE68C1DDC3D1FB475FFB8907049C';
wwv_flow_imp.g_varchar2_table(161) := 'A2646AA60B8F8D2EBF5EAEB0D8F8F0A3181117D2794D09F34635146829FAC90098F46F818A57EDBF2E599EC30B02505A4102E05A2686DD0E82286E8AADEF3FB7D66383795120701251804F64006C878C9067B6FC25193300FEBC99E1F76B36CE77CA2300';
wwv_flow_imp.g_varchar2_table(162) := 'F5408B437AFD1BCD72C25AFBBA1D07E7C33E2EB860CAC578808BD1909D4CB97EB92ACB90E4C7279609046F852C497C36BB82AE63E1CB6888FFFAFE15DFCFC64D716AD771F8C02816297892DA0878F609F54E6C5F702065593572E63FA60BDC2CD6587A3E';
wwv_flow_imp.g_varchar2_table(163) := '3661D4E4D05FB3D5AF5D405A2B99AA8ADCBC4745E983AA7F8790E605BC20429C66A828C5A0EBE26CD8871FC7CD28694D551ED0A03CBD21419FC600D87AFD8FE7C28AB24451B0F9E76B5EF5FF73B6C0CFE91C0B3ED8274AD2C3B605ECE0D7F8CC714D5531';
wwv_flow_imp.g_varchar2_table(164) := 'EABA381BF470311EE2FBD9085F46C3A6775A916521D52BF825300D89ED301D53D71BC5C9B3411F5FC7437C3F1BE32FE71396C2327458BAFE706DCD3D23746B795DC1EBF3749B33DBEF5951C00F59EFFC8FD91CB3D51A5E10224ED3BDBB9BEAF35CBB5644';
wwv_flow_imp.g_varchar2_table(165) := '9699446FBDE8CBF5B4463E848C528A342B90F2F929555535CE56595528CBAAB9BD0FF5F4C8284D21491216DE064B8FA91C56156DEA59EEECC31DABC4117E00002000494441542840097E8DE6E1FBF2490C80A75B600034B2979B28821FC6F8936B5DCF56';
wwv_flow_imp.g_varchar2_table(166) := '6BACFC00E181AD7E5B1D7F7642EDBB0E069D0EFAAE8349BFD78450CF067DF43BAC784A0CD515FC4A584BAA02D3D0D0B12D8C7B5D8CFB5D8C7A5D7C1B8F70311EA2D77160681AD47B06FADCA63965EEE8CD7FFE13E947A4AEFAAF281BAFEB4711166B1FD7';
wwv_flow_imp.g_varchar2_table(167) := 'F325967E8028490ECAFBD79AFBAA22C3320C36ADCF3461996C0CB3A6B17EFCED687189B55C17ACA32A2B0A24698A38E1A3D6937AFC708C24CBF8B0A1FD6B054A9EF698AE99CA615E16501519AE6D02106D81C02731009EEB34534A112609E6EB0D6E962B';
wwv_flow_imp.g_varchar2_table(168) := 'FC7933C3E57C89E9CAC36A1320C9592EEC900D91E5ED8CF2A1DB616351CFC66C7465D7C5A0CB0C024B3760E91AA4C7471308046F8A2449D01405A6A6C3B52C9C0D7AF8ED7C82BF9C4F3019F430EABAE8776C98BACA3CBA67A5A6DAB97EB1F8BF09CFD039';
wwv_flow_imp.g_varchar2_table(169) := 'A194A2A4CCC34EF20C7E1463EE6D70355F224C0E97335764A5296C1EB80EAB69EAF5786788064BD7611AFACE70334A790D4051212F0A7821531DF4C2108BB58FF9DA435551E465055296006163A1F7A1E063DC67AB0D74558322CB702D0B45F9D467BED3';
wwv_flow_imp.g_varchar2_table(170) := '13F069397203E0716DFFDB54154518A798AF3DFC7933C38FE90CD78B2566EB355681DF8CB4DC7B6B082FA25264E8AA8A81DBC1F7B331FEFB2FDF7136E8F379D64CC65796B6634A05825F854408545586A96BE8D82626831EFEFAE50CFFFD976F4D8B9F69';
wwv_flow_imp.g_varchar2_table(171) := 'E8D055F5F963A05F9CF317BC0515056FFB6311804D1861EE6D70395FA2AC58115EF9E462783F04802A4BD0350D8E6960D875F16DC252455F46033896D95C1A9972F076445E5B951725666B0FB3F51AF3B5074B5B8082F5F547498202879D8F8BB24210C5';
wwv_flow_imp.g_varchar2_table(172) := '98ADD7A0B4826B9B38EBF750BE41F1E1B172D406C09D9CFF3D42186555A128585E28E68A51D3E51A97B36DC1DF2112BF750E9548043AEF39AD2FDFCFC64C1F7DD8C7A8EBB2FCA9A13F2A972A10BC3512CFD76AAAC25B525D144505D3D0F16D32C6F97080';
wwv_flow_imp.g_varchar2_table(173) := '51AF0BD7B6584FB5C2F2B96DDA61D9BBB7E967779C7E39ECD4F7B841565625D22C479CA6D884318228411427885356E3548FE17DF67B1240E642648A226F9521BB2EBE8C86F83619E1CB7880F3411F161F08D5CC2C69BD4E5D705894258804C8B2C45524';
wwv_flow_imp.g_varchar2_table(174) := '092AFEE9344D851FC5F0B95CF13E69808A564832D616080AACFD10419C22E5A26E12212012B97F6645CB60617CCE03FAA80D80E7509615E22C439CA4D8842166AB356E966B5C2FD858DF204A0E6A479108F3F8555941C7367136ECE39CB74C7D1B8F703E';
wwv_flow_imp.g_varchar2_table(175) := '1CA06BDB3075DEDEF754DB9440F0C6C892045D5561EB064AA7822249E85806E234C597E100A36E0786CE42A692243D3F4A45DB5EFFE73C611E1379C1E69B784184B5EF2388636479BE9D0BF0C2D793B88099AE69B074AD39C77D9D8C30E9F730EAB91876';
wwv_flow_imp.g_varchar2_table(176) := '5DD87C52E96DA3B1861002094C10CDD475749D0AB22481701D7FC734D0EFD8B89A2F7145084B55F082C6971802554591E54553D41DC609D33CC872E445C1EA122003F2E946618FDC00787CE635C0ACE03849E10521E6DE06D395879BE50A578B25BC20E4';
wwv_flow_imp.g_varchar2_table(177) := '07C30106403D7C4253D1B12D9C0F07F88FAF5FF0F7AFE76CA04FA7838E63B1FE53D1DE27F80028B2044D5360993A2499C0B10D8C8A2E2A4AE15A2C7A65683A144566D1AD077F5FADC59E8A82BFF783DCBADC4F511488E2146B3FC06A13208C636479B1F7';
wwv_flow_imp.g_varchar2_table(178) := '37244912749585FC5DDBC697E1007FBD38C77F7EBBC0C0EDC0325984D3D4B4A60BE0BE2DAC8F27599660EA1A6489C0D4D95873C73030701DF41D1B1291102529A62B8F750AE06503A52A4A91E539402B144581208A11A729D222435116204479FC7C7C02';
wwv_flow_imp.g_varchar2_table(179) := '5D81476E003C4D595688536E00ACBC5604607570BB1FC0C6F7AA8A0243D7D0B52D7C19F6F11FDFBEE0FFFAFB5FA1F3164036C0472CFC828F812CC9CDB43453D79A30BFAA28AC6F9B77B1BCAC3E452CFE1F8DBC2C1126093300789753764097131B55BEF5';
wwv_flow_imp.g_varchar2_table(180) := 'D0BF8C06F8DBC519FEFBAFDFD1B52D9096E2DF53105EBC68683A0C8DB5E5B99685BEDB419CA4E8771C446986D9CA6B8A076959BEE828A394222B0AE44501423204718C28C91AA78F1009B244F18028C04970B406405390744F1EACCE315555853049B0DC';
wwv_flow_imp.g_varchar2_table(181) := 'F8B89C2FF0C7CD0CD39587208EF72E7E0198252C73C9D4AEE360D47331EAB9CD84B4BEEBC0E055D3CC8B7A9D62BFBA25A6A2AC5F362FCBA6A58655D6B2EB5AC0A8E2FDB46CE8D1DDF0595BA888004D1F6FDDD3AB28ACC5A7EE6A5078CB4FFBB38822C6E3';
wwv_flow_imp.g_varchar2_table(182) := '439208AF016046407D9CD612A94DD1D66373345ADEFE314C8DFB5470B7FAA9A2CCBAD02ECE589B5D9A17280EAAFA97E15826C67DA66732EA759B299075AA8890E79F136E3F4DE6752994522E436D61E07630E9F7D8A8F634459CA6CFA8E2DFA556F52BCA';
wwv_flow_imp.g_varchar2_table(183) := '0A599E234E33C469D64C657D78DBF806BEB056E298383A03A03EB8D8E27FFF732ACA265E1555852849B1F07CFC9C2DF0EFCB1BCC561E8228DEBBFD8500502409AAAA4053140C5AAD7EDF26239C0FFBE8390E542EE72B3DA54BFC02282817CB603DB4AC5A';
wwv_flow_imp.g_varchar2_table(184) := '96F5CF26291B8891A419D23C6F0C83BC281A63A8EEF9AD8B726A010F996B17E81A1B4F5C4B66B2D9EFACCDA7BEAEDB79C4C27FBC10425AF959DA6857D486E0A3DF6CBDD853BA154A1106C087A4ACD88297A4CC00C88A02D501F54E8A2CA3639998F4BBF8';
wwv_flow_imp.g_varchar2_table(185) := '6D32C2B8E7C2314DC8F276F13F044922506505D0082CC380EBD818743B980C7A58F9012898D21FF670DE2880A22AB9019022C952A64C589DB61EC0D119008CC7F35F94521455859C17802C37DC00B8BA411833B18972DF213FBCD75F5314189A8ABE6BE3';
wwv_flow_imp.g_varchar2_table(186) := 'EB7888FFFA76816F6763B8BCD5EFFF67EF3DBB1B39B625D128EF51B0641B4947F7CCCC5AF3FEFF9F79F3EEDC7B8ED486247C799B95EFC3CE2A806C769304405FA105B1D5DD02124055E636B1237455ED22F4531D955C1CE435A30B39CE320471826D9C74';
wwv_flow_imp.g_varchar2_table(187) := '6CD938CD90E645E790555415186BBA0A01802E5A2736B8D07E5748CCC3B10CD8A609D7B63070C89170E0D8681A1B8A2CC3EC7DB55F3D64A273EF05D33BD956FAEFFB92FEBA7FF57881600D95C0B3A2ECF4FE8FAA00A80A3C5BB8979E9F61224CA154453E';
wwv_flow_imp.g_varchar2_table(188) := '498E238BC0549625D8C2C4673CA0008083FAF9519A1DFCFC8C35243E9497C88B0AA65E839DD0FFE035E295050074E8DF55FAAA99187F290B12980842CCD75B5C2CD77B25F2C3BE781964ECE358263CDBC26CE8E3D3748C7F7C38C36F675368AA0A4D53A1';
wwv_flow_imp.g_varchar2_table(189) := 'A9877DB43747AADAECBD6938AABA465156C8CB8A2A1B6188751062154624A6211E71967565AEBC2C51D74CB409A8FFD78E2D2AF26E824153A9BCE75A34BBEBBB3686AE8BA1E722173D33CEB9F086573BB5C32E731401458F970F5996210377F63E6F1DF5';
wwv_flow_imp.g_varchar2_table(190) := 'EB15FE5E0DDA16405E56C80BAA0A1E63F8A3CA4AE764FA6132826B5BB04D03CA89DCF5A81205000A4C83C88643CFC1D4F790E705C23885721FEF899FA0691A9435A3C448EC693FAF04DFF63A6FEF7A7F6501C0FD901525D66184751092C67F1022C968DC';
wwv_flow_imp.g_varchar2_table(191) := 'EF50D38BF690D3551523CFC5F97888F3F1087F7E38C76C38846D99505415B2727C79BCD93BF8932C27D52E51B94884546694E688D2046192214C1224798124CB91E6393211ED9735E96DB71ADBEDB8E3EEC09650D50A5485415164D44D83A2AA911605E2';
wwv_flow_imp.g_varchar2_table(192) := '2CC3364EE006215CCB84EF3AF01D0703D7866B99542D304D58A60153B40C4CA3D737E8D1E3A560BF62D8253E47D89B53EB4886AE69300D1D9AA65EF3313925246122442A953A744D159586230200D11AAE182543AC69DE3D7FE5F504009DC8CFDD7F352B';
wwv_flow_imp.g_varchar2_table(193) := '0AAC82105FAF96F87AB5C46A1B22C97330C61E2C7E412F4D87A52CD3F8D4D073F1F96C8A7F7EFE888FD33166231F8E654213637EC75CA4AD52562B601409F5AED536C43A8AB08D126CA258F8781722D32F5056158AB24629FAFFADCA57CDD8AE8A202EF6';
wwv_flow_imp.g_varchar2_table(194) := '7D0EC07EFFB7282B24790E4D55BB1687A1D1E1DE297B5916460317137F8089EF61E4B91838366459EA03803708CE6F10FDFA39FF5703CE3958C350D715EABAA2FDEF880A407B281BBA06CB3060A85AD7FF3F3524893807BAAEC1320DE84257E0B8BD9577';
wwv_flow_imp.g_varchar2_table(195) := 'FB6AC58824FDCECFFF5714003C005951621D44F8BA58E2EB825CFE923C3FB8FF2561E798A6AB1A469E8BCFB329FED7EFBF61E27B1838361CD384AAAADDC17A3828FB27094F863049315F6F856CF1068B6D80F926C0364E3AD6FF7E65A311516D2B9CD196';
wwv_flow_imp.g_varchar2_table(196) := 'FC6E0B7B3AFB64B1DE361090853A1695F9E9A6B70D31E36B1AC2256E8AA2ACD0348024D17C309C23DE768F178CFD72FF3BDF315F1138E75D1250D5ECE88CB73B9435F200206F08E56424E76BAF05E25A19E2B55A53A1632B008D989EAA4FF079BC05BC8E';
wwv_flow_imp.g_varchar2_table(197) := '0060AFE7DFCE8FEE5F749DEB953804E334C3268C315F6FB0D8040885E0CFA15014059669C0310C0C85E9C5D97888F3898F81E3C0D435F2983EB007DEF6F8A94725D8FD458138CBF16DB1C2D7F9125FE74B5CAD49337BB90D1124C9DE417FE83BBBF13FFE';
wwv_flow_imp.g_varchar2_table(198) := '84212C018875BD9B12203EC0DE0653D7681A0649027120040FA2FD3C8E0F8A7A3C056E1BF5DB49FBBEEF8DF235E2364BA6537C8B1CD79FF355A13B3FB0F7F3FDE27504007780738E8AD5282B127D089314DB38C63A88B08D632479D131E00F81A151DF7F';
wwv_flow_imp.g_varchar2_table(199) := '36F2F1613CC2A7E99894AF0C1386A64295957B895FFC0C356B50897E7DEBD8B50A422CB701E69B2DE6EB2D65FD518C28CD5054156902E069F6650E612A224444A224C55CD9A0AE6B2469862049B08D636CE30443D7C1D07331745D18FA030C647ABC1C5C';
wwv_flow_imp.g_varchar2_table(200) := '2BF7BFCA6DBE07762D3E45263BDE63F54838E7A86B86B2AC90E505DDDF2045BF535701387847E64EF3024559A1162DDC43D18A5CE942F4AA1F677E0D01C00FA2243F7E610DE7C4762D4AA445B10B00A298E47EAB1A153B5C014BD7A8ECFFDB6C8A3F3E9C';
wwv_flow_imp.g_varchar2_table(201) := 'E1D37482B1E7123945399EF8C71A62EA6645814D14E3DB7C89BFAF16F8325F22DC63F7A77981A2AA689EF789333262145395228849673C4A336C223AF8B7518C6D14E3D36C02CE396CC380AE2A802C93B1E63BBFD15E135AE1949EE9FFBA216137EAABC8';
wwv_flow_imp.g_varchar2_table(202) := '4AD7E23B149CE3DAA10C90AF84CE4F7F8C702EC6F6AA1A594EE3CCC7070062EC5955A1096BEB633E8FB780971F00DC039CD3885C569488D38C028028C13A24D25CAB847728744DC568407DFF7F7EFE80A9EF6334F06099FAD1C414802EF4A2AC90A439D6';
wwv_flow_imp.g_varchar2_table(203) := '4188AFF325FEBFBFBFE13FBF7CEB4656F2A2EC7A564F7DF8035401600D508151A522CB204B44FCDBC6711700D0E16F62361CA2310199F347E911F6782C70BCF2226F0F01722A954405401119EFE1CFD7708E8A31E4424C471113018FB11D71E116585415';
wwv_flow_imp.g_varchar2_table(204) := 'D2B238490020093E93AAD2E3B1088CAF092F3E00E8247F7E2979C991E5053651846510601584C2F9EAF04C99E46F693E7E3CF0301E78980EC9FE72E058300DBD8BAA1F8A56A88889D19C7514773E05DF962B7C5FAEB00A424469DAA9F955475EFCA744C3';
wwv_flow_imp.g_varchar2_table(205) := '39C03818000924CEA1C8321A9084A765921B589217702C13AE65C23248EFBB1BE678E737DEB3627FBEFFDA6FD3A1CFAFB9FAF578AD506499087B26A97AEA9A46A4BD0351338624CBB10A427C5FAE311D0E20CB322C5387C277FBE0A1F7763BFDD4708EB4';
wwv_flow_imp.g_varchar2_table(206) := '2810A52936518CE5364418A75D1274281461DC661934B2ACA92AE49FEA0ADC6450BCCDFBE1C50700F7016B1AC4598E6510E2CBD50A8B6D8828A5B1BF43A16B647AE1582669FDFB038C061E86AE03DB3484D2DF61CF4DBDB41A4555A1282BACB601BECE17';
wwv_flow_imp.g_varchar2_table(207) := 'F8FB6A81EF8B15AED65B0471D2CDF037CDCBDD9019A7EA459464681A2AFDAB8A02D6508BE07C3C842C8D60EA3A2409E0FC78C9D01E27C4FE75D5F5FE9F67293D4E0B455160683A1CD3827B8745EF7D503386284D31DF6CE19806004E6AA89E032E944F8F';
wwv_flow_imp.g_varchar2_table(208) := '01899D51C293646463BC0A225CADB7D84631D2BC383800A00906923BB70D03B6DEDBB3032F3E00B8DBF212A00020C973ACB611BECD97586E49EFFFA1A611FB30340DAE6563347031F58718FB038C0703F89EDBA9E71D7AC1730ED42D6721179A05F325FE';
wwv_flow_imp.g_varchar2_table(209) := 'EF97EFF8BE5C91A46FE7DD4D19F74BDD939B86232F4BE23154251445066B9AAE752149806B5B187A0EF524F74D367ABC103CDC6BBDC7CB8722FC3D1CD380639A30759ADB3F14356388920CF3F556C882EBF05D0715633038878CE32A7B0D6F76657FA1FC';
wwv_flow_imp.g_varchar2_table(210) := 'B70E22CCD75B216F5E1C64E2D64A5DABAA024353699CD9D03A45D3F78C171A00EC1BFE48BBD18D3DEC6F56AC2D4D8521BE89F2799CE5A89B632A001A3CC7C27438C06CE463E20F301AB818BA870DBBEFAFB7E1BB71BF3049B1D886F8B658E1BFBF5DE262';
wwv_flow_imp.g_varchar2_table(211) := 'B5EE5A03CFD1EB7F2838E7A43A58D5000A800365550BC3250ED7B2703E1AA2AE198D052AE4A4D8E3F9D092FCE8C75ED9BFC7EB4057A8F9D1DD731FAA42DE1D8E45DE1EA6AE1F570110C45F4596C118C3D07570361EA2282B98BA4EDA21B74882FF2C28E8';
wwv_flow_imp.g_varchar2_table(212) := '44A6C47FB732BD4996EF88DC6184C536D8699D3CB002D0399E0AA32143989C9986215A00B707005CF85CBCF5FBE285060077A35575620D4756944872EA19057142BED76254EEA1682F55DBD0311E78F8349DE0E36484A1E7C0D08E33C26967E7AB9A2188';
wwv_flow_imp.g_varchar2_table(213) := '125CACD6B858AEF1F56A817510212FCB4ECBE0B55E761563441092256C22BA792F561B988601C732291BB1CC9E03F022F0767B9B3D0055A56C7738701167193CDB826568506469CF22FCFECF47890BA985CA8A8CCBF5068E654191158C7D4FDCDF268904';
wwv_flow_imp.g_varchar2_table(214) := 'A94A67327613ED3EC83927827345D542226FC7D8C431AED65B7C5B2C11C409899B0902F443AED6D6B7841E1A5CDB8265EC648515B9AD48BE5FBCCC00A01369F805F14FB0446B1135A659862849114431923C17B3F20F8D1677D1AA651A1400CC26C2E2F7';
wwv_flow_imp.g_varchar2_table(215) := '04010038386F50B31A4192E0FB7285FFFE76816F8B35566188ACDC31FD5F6ACFFF2ED4621AA3693845EF9B00BE104B9AF803489204CB34F0BE0B6FCF0D61E5DB97FD5F296EFBCE7EDC2B35E1F0D934409215F06C1B864EE63DFBAAA1F745D3F04E50AD69';
wwv_flow_imp.g_varchar2_table(216) := '1A5C2E379025196555E36CE4EF2AA59E0BD3D021FDA4E2C0C53FAC6144F64B528442F27CBED9E26AB3C5D57A8BCBD51ADB2441DD340785AAB24C530A8EE07279B6055B4818AB0A11007F9988BC83F8F8650600F740D370D48CCC6BB2A244921588920CDB';
wwv_flow_imp.g_varchar2_table(217) := '28210BDC034AE89D7DAF24C1B64C8C7D0F9FA7637C9C8CE1DA160CFDF08FAB8D781B31B218C4092E966BFCDFAF17580511C224399AE5FA12503186A6A0B11D23D430DF6EE1582674210A641906F8C07DEE65BE6F74E27E6F7C777BE7D054158E65425515';
wwv_flow_imp.g_varchar2_table(218) := 'A44501CFB13B095FD634740D80DDFB8C6B954A5943F3F98AB241D909AF4D90971538D01DFAAAA2C0C0F5D0A4AD3C34C2A02C2B726CE218CB6D80EF8B35C9B7CF9798AF03241971A11E1AA8B49025899C5B4D1343D7E902807D63A1F75E897C810180441A';
wwv_flow_imp.g_varchar2_table(219) := 'F5777C394DD3A0AC2AA4798E384D116759E7867788E6BF244950653123AA28F02C0B43D7C1D8F730F41CE89A76B0C52F40158B56A9304A7331DE12E072B94698A6C29EF270B12249BAA1DF2F4C7E1459EEC628DBCFB31B70D90B4ADAB95BC6C4288EF80C';
wwv_flow_imp.g_varchar2_table(220) := '1F7ADB91A43103C03A4966DBD874AE5EBEEBA0AE1959124BD2B5AA4B8FC7C10F12BF6D05A0C79B86A2C83040CC7FCF3605F94DEFE4BCC16B1108DCEF5AE020CD9256A04796245435F1AFE89E06D9F9728E24B331C8C9AC4C9676933F9CA3DB5FAAAAC67C';
wwv_flow_imp.g_varchar2_table(221) := '23D44E375B7C5FACF06DB11444EE1075C33A03B74320CB324C4387EF39988D86F03D17B665920AE05D5C88772284F5020380FBA162342AB20E232CB721A224455155077F5D8A2CC1327538A6293CAF5D78B605533776B697471C5455CD106719A224C362';
wwv_flow_imp.g_varchar2_table(222) := 'BB15597F86AC24EBDE9A35476DCA9A70EF33751DA6AE77C63D14F1CB2404222E7ADEECEC86CB7A27A19C64390552698EA2AEBBB9DC436FC08A5110B00C42A88A226EC4018AB2A26045917B39CE1E3D1E0964622601322537ADB18E6B99C88AB293DB6507';
wwv_flow_imp.g_varchar2_table(223) := 'DEDFB51030932409AB3082A2C828AA0AEB2022BB70C109681D526559EA128DBA66284525741B2708E218AB20C23A8CC4B8DFE1D6ED2D3455C1C0B171361AE21F1FCE7036F4E1D9D6DD87FF3BC2EB0D006A8638CBB10949FC274C532A411D112D5A8681A1';
wwv_flow_imp.g_varchar2_table(224) := 'E792F08F3F80E7D8300DED24BAD1555D7787E1E56A230280145951A1ACD9D1D6949AAAC031A9CFE5BB0E861E69F2FB82BB400FFABA5BF26455D7488B02594E12CAADFF40D3703439475D0BB2E5A11B84600DB7664DB3A18F709A212F2B28AA024D2279CE';
wwv_flow_imp.g_varchar2_table(225) := '1E3D7A3C0412EE35222D499024DE39EBB52E7E8E658243C8FA1EE561C250542D6F890882DB38C677D38469E85D32D256236545EE545BEB9A1445B3A2409AE7C88A0249562011BF6E55FF0ED9CFDB7744955C1367431F7F9CCF301BF9702D0BEA9DA390EF';
wwv_flow_imp.g_varchar2_table(226) := 'C7F9F2D50600B5283DADC318CB0D65D3457584E35F1700D068CB78E009D62C094600C795AADBC370B50D70B95A631D0488D2147951A0AAEBA32F354D55615B067CCFC5D9C8C7F97884F3C90867431F9669C036A82200A1E7DDCEDB46498A302502A5A969';
wwv_flow_imp.g_varchar2_table(227) := 'E04255B1AA6B800B75AE03D7D4063D7941558EDF665332332A4B18BA0A5992A0CA6FFF26EBD1E339405C6A6A0D2A8A025DD36019065CDB42DDECB2F743518B71650915F2A2401027C27B404C00086750AA3E920E7F37365CD7A884D0D9BEA5396BD5000F';
wwv_flow_imp.g_varchar2_table(228) := '98E0DABD71323A5715059E6363361AE28F0F67F06C1BAE6D1DA586F8D6F0F20280CEEDF7D71C809A3164395D749B2812A37F871FA4B22CD3C88CEBE27C3CC2C873E1582634F570B9DF7DB4257662C687D82629B2A204E3CD416B9625A9B3E73504C37E36';
wwv_flow_imp.g_varchar2_table(229) := '1A62362436EE6C488F893F20E94B9DE42F01D24D608240698BF13CCFB62049942968AA8A5510224C5284692A66FA1B30D136B82F5AED70D634C2DE38439424D8263164458203BA4955F437648F1E7763A78FD26AA4ECEF91DD5CBDF8D92A8DE66585F966';
wwv_flow_imp.g_varchar2_table(230) := '8B4D18234EF38E6F744C7B6FFF3539808631547BCAAB8AF01E5064B93BFC1559E92A00ADE2DF6E1CF1348940DB0A35740D67E32126C301C6BE8BA1E710FF41FF51FEF7471BEC1F3516DE2A5E5E00704FD48C212B4BC1404D90E4F951243A65AF05F04104';
wwv_flow_imp.g_varchar2_table(231) := '00B661749EF6A7586F9A17D844C98EB3505607579914458667DBC2A7C0C56C3414A338A27AE1D81838363CDB82AE8A595851C9608A8C8673618821C1D05438A6094D51E05A26C6FE008BCD1617AB352E971B70705442ECA7E40F6B5570CED1009D3A6098';
wwv_flow_imp.g_varchar2_table(232) := '64580511F928482454021C375ED9A3C7DBC7DE58B424FD7444BA9DEDE79C23C90AACC310EB30C2C5728D2FF305E61B9219CF8A52288D3ECE41C79B060D2DA863FD2B72233800CDB529AD53AE81A4895D0C3D179F66932E99B34D13BA7A1797EBFD94FE5B';
wwv_flow_imp.g_varchar2_table(233) := 'BCC000E06EE95F800828596BFD1B09F11F6A5A1FF4AA5401D031F41C9C4F86180E5C9A573F610090E439B651845548E5FFE2881B5091650C1C1B1F2623FC7E36C3D97888F3F11067E321068E0D43D7BB0A4117898BF7D2B2FE1BB581AE69B04D13356370';
wwv_flow_imp.g_varchar2_table(234) := '6C13137F804F798ECBD51A86AEA111A33AA95C76238C0F8D8EDB0D202F4B84698AE53684AEA930740D1EB30F7AFF3D7ABC1B0825D4F6E0FA5565940E7F2AA1A7598EC526C097AB05BE2E96F8365F61BED9621B27A8194355B347531B6DEFF90680DC3490';
wwv_flow_imp.g_varchar2_table(235) := '2409B55877B33779746A18BA86A1E7E2F36C82DFCF67381F0D317477C99CA2C83465F6E38AAFABFFBD9311D9171800DC0FAC61C80A3A508224419A1FD74B57649A511F890A806D9A8F5201D80A77ABAC20F5ABC3030062B87E988EF1CFDF3FE2C364447D';
wwv_flow_imp.g_varchar2_table(236) := 'FFF110AE65757FEF211DBE9AED1C0AC7030F8C35086312E8681AA0AA6A64E4E8F3E0F5360D475E94889214AB20806D1A1838F651864D3D7AF4B8098E46F887243905007F5D5CE1AFCB2B2CB62116DB0061923EC12A7699FD534A9A1B9A8ED1C0C5A7A908';
wwv_flow_imp.g_varchar2_table(237) := '00C6230C3D17B6693CD91A5E135E50002075FFBE353EEB4A49143D16658DBCA890E525B29C48660F358A68C9318A2CD3F89F69C236C8BAD6D0B4A347FFDA19FB46086794A21F5714E5AE07F780E75364EAA5A9AA02DF154645030F67431F23D7856318D0';
wwv_flow_imp.g_varchar2_table(238) := '1485467F0E00F5C6C833DC32C48D349B202F4A5C6D365456CC731CA255D44A2093CD678634CF519487DB35F7E8F1E6712DE3BFBD02D0702EC67A9B8E681CA529A224C597AB05FEBE9AE372BDC53A4A106739CDFFBF21C89204CBD0611934F2FCDBD914BF';
wwv_flow_imp.g_varchar2_table(239) := 'CDA6F8381D6336F2E1BB364C2142B68FFDC46BE787010885AC277D0FCF89171400DC8D8673D4CDCE312AAF4A646589AC2CBA03F5219065199AAAC0D0C822922E247AB4ECD5430FD376BD4C64D5D59EFD6F5E551D83F62120772F32B318BA34AE38190E30';
wwv_flow_imp.g_varchar2_table(240) := '1BFAA4F2651A47315C7773C3E4F435F23C7C9E4D6844112427BAD806C00173011C1C15ABA90A906648F3B25315EBD1A3C775487B7DFE5F97FCC913A56E18F2B2C22A0871B95AE372B5C1C57285EFAB35E69B0D8228462A268EDE0A24D09EE85A9618DDF6';
wwv_flow_imp.g_varchar2_table(241) := 'F0DBD9149FCFA6F8389D60361CC2B32D18BA7EF793BDC3C31F786D0140D380B11A356328AB124559222F8A4E42F7A1DAFF8A2C93429DA1C3B64C2AFB9B062C51FABF532BFA0ED0CD49ECD8B2AE515435F2AAEAF40A1E9AFD2A0A1DCC9E65915E81E762E2';
wwv_flow_imp.g_varchar2_table(242) := '0F301DFA2268518EB2FB6CDFAB224944A619B8E0E0501499CA89DBED0F0CDAFB8273D26EC8440090E4871B36F5E8F17621EDFD946EFCDE2D107B0C254505566188BFAEE6F8AFAF17586C02AC4312D769EDD1EB37D2726BD54D655986639B988E7CFC7636';
wwv_flow_imp.g_varchar2_table(243) := 'C16F6733FC7636C5A7D918537F004D8C22F6B81D2FE493B951DEFAC9A14BFAFF0C4559894749BEF307CEFFB766119661C2B52CD8A601D320F2DC29D4E99A862A00755D8BD1177A1C7A139207B706D736E1BB0E7C8FEC89879E0B4D3D7E946E7FF452D735';
wwv_flow_imp.g_varchar2_table(244) := '0C1C5BA808CAB85C6E601F418AE49CA3AEE9BB4BB21CB9688334BCAF00F4E841682573A55F5600DA7628E74059D134545E94D80A17BDAF574BFCF7B74B6CA2B853F724BBEED70D49CCF713994F21BB63C3C0C41F1019FAFCAC336F9BFA030CBDBB3D4776';
wwv_flow_imp.g_varchar2_table(245) := '2388FC3D91FF3BBC9000E06EB4CA55795921111AD365C5C08EC820554586A5EBF06C0B03878C2234E5741F49C31BD4AC415913E3F61083A27D282260B10D13AE65C2D45B9EC2C996DC419624E8AA8A46D7611BF45ABAAA419565C892F4606B4E803E8F8A';
wwv_flow_imp.g_varchar2_table(246) := '09E961469C8DDE90A6470FEC253DF79B806AC573A2342509DD20C47C13E0AFCB2B5CADB78884005755D76FA2CAA60A6B614D556019063CC7C2C0B6E1BB0E3ECF26F8349BE0D394B27ED7B2EE99F5F3BD07F01E238057130040684817C200282BA887FCD0';
wwv_flow_imp.g_varchar2_table(247) := 'B2FF3E14458161E8F01C0B9EE3C0328D9364D22D9AB60520842F8E15DE90151986AEC1B648CDCB340CA88F54DE9225221B1AD0619B0CA6AE0B496412466AB60AE04E00002000494441548489C87DDF0D07C084836379EDF37894E5F7E8F18A20ED46D3A4';
wwv_flow_imp.g_varchar2_table(248) := '1B3F6F016B18CAAA425155D84631BE2F96F8325FE0EB7C89C526C06243D2E84551A1626F83684BED4F0DA6A163E8B9381FD1C8F3D968784DF8CCB32DD89679AB0DF14D74D37EAFFFE33918AF2700C0CE7C22CD0A6482D0724C00A02A322C4317FAF9362C';
wwv_flow_imp.g_varchar2_table(249) := '533FE981CA45CB820280EA28672B4090003515AE69C2B34C58BA06ED918C2D64598226A9506519AC61300D9D6C34F794111FE22406D034442DC890A75222EBD1E37543FAA5B0CF6D68DDF8B2BCC0264CF06DBEC27FFEFD1DFFFA7EB933F4CAC815B535FE';
wwv_flow_imp.g_varchar2_table(250) := '7AED501505864ED6BE938187CF6713FCF9F1037E3F9FC2771CF8AE8381EBD01E253F840BF5BE2380971100747C975F285CA18D7C6BA44589BCACA80270D481AA08BF680BAE65C1D2F5931EA8FBC4527E922A13F5062559EA1CB6203D6CD6FF219025095C';
wwv_flow_imp.g_varchar2_table(251) := '96A14854F69780DD9B79E8E74E83C174E08B8DA93FFC7BBC7BFC44F6FCE6A8DFBE4D77EBA0B78D627C5D2CF06DB9C2C56A8DABCD96C68DAB0AD511B2E8ADB5B8244942415483AE91215AC39B6EB4B9D5ED67ACE9847D78D3FE7A2713FCB3FBBCEDE9B7AF';
wwv_flow_imp.g_varchar2_table(252) := '250BE2B52C91A5B9BC27273C10CAA603D7C687F108BF9DCDF07936C1C7C944B80E1AB02DF3866ECB8F12BFBB5F1FB88FBD31BC8C00E09E60A27C9C9705F2B2445DB3A3FA5BD453576199649FAB6BDA512CFA9B207F6C098A224155E8103DE6B4E66223A8';
wwv_flow_imp.g_varchar2_table(253) := '6A86B2626421DC3C9E6A756BC759370CB5F87577A3D382EEFF6444DB1501CCF113163D7ABC76B4F3FD778174442AE425253E97AB0DAE561B5CAED6B858AEF17DB142102728C5787173C49ED09AE8B4FD76DF75301E7818792E0C5D435D33548C5A787951';
wwv_flow_imp.g_varchar2_table(254) := '222B4AE465212CCD89EB5433D6098A11EF6927510C5C3FF015611EA40A0F125DD3844AA80ECBD060090F130A001C0C1C923F6F7D4E1C6B4FB3E5CE77B75B4347FC7BE7783D0100A792735991F84F6B68710C8B5C962568AA0ACB30609B74219D32000044';
wwv_flow_imp.g_varchar2_table(255) := '342B2990250592F43319CAFBA19BF9657413D6EC91A53C6F46FACD4EC3BB398004B88BF265FA2CFA00A0C73BC47D247DF7C13947515588B31C519AE162B5C65F1757F8F7F7AB4EDA378812944258EB98B628244A564C9D0EE1D97080DFCE66F8FD7C06C7';
wwv_flow_imp.g_varchar2_table(256) := '3269EAAAAC3A1F962849112629D2BCE826B38AB2EA469F795D03421298737E6D7CAF4DC0A8CAA0906BA91064732C4B1CFA5677F8FB8E8D81EBC0B32DF177686C5B551428EA7D45DB4410F0CE33FF16AF2600E0E0220010632F7BD1EEA1687BEAB6411500';
wwv_flow_imp.g_varchar2_table(257) := '43D7A09ED02A922E7472D853144964BD873F5F1B00543595F998B0D07C0CB4A53B2AF1B1EED18832E4212EDD6DBE23B725463C5EFBA2478F978DFB5FFD4DC3519415E234C3268A70B15CE15FDF2FF1FFFEF515EB201459778DFA814AA8B7AE4AA20A802E';
wwv_flow_imp.g_varchar2_table(258) := 'C4D1A6FE00FFF87086FFFD8FDFE07B2ED23C47921748B20CCB20C42A88A06B1AA234459A1548150AEC25E173D2EE4FBC692081933DB138FC354581AEAAE454AA6BF06C1BBE4BCCFEA1D03899F8034CFD01060EFDFEC0D929FBC9622289D6FD909DA4CFFE';
wwv_flow_imp.g_varchar2_table(259) := '5BBC8800E01E140000E8B2DFB2242FE9FAC831325996A1AA14E9EE58EE276C01C82435AC698A5016A40BBF7D8B0F5D79CD84FF8170408CD20C6941E537CEC5C17AA2D23A634CDCE8393661D439883D54BEB885049ABAD075DA580C5D83A62A904EF879F7';
wwv_flow_imp.g_varchar2_table(260) := 'E8F1E2D1DAF8E2C67D7AE39E6D9543CBAA429466986F02CCD75BCC3701BECE57586E43C46986BCACA82F7F4422244B5257F637740D63DFEB94F5FE2166EBC7FE009E4D87AF252CC4893F656260DBDD64565E90364B59D31EDDAA7D368D08062469CF2658';
wwv_flow_imp.g_varchar2_table(261) := '81212A0086A6C2B6488FC5B52C788E85A1EB5230E03A70C49F59A6D1B99ADE86EBE7C14D0EC0FB32FAB90F5E4400705F9010508D8AD1780B6B8E63D5CB92044D5168BC4427253DF9A41C00EA6F355C83A6A95015158A422CFA9BDEDDF741CD1AA4798120';
wwv_flow_imp.g_varchar2_table(262) := '4E60E83A8224254DFDAA8224D1012BF1D394D6AB9A214E33ACC30857EB0D36618CAC280EDE6828B39061681A2CD380A9EB5015F528A9E51E3D5E0DF632D5FBB401CBAA469464089314AB30C4F705F5FABF2F579DC25F5995E0BC39FA50531405A6414990';
wwv_flow_imp.g_varchar2_table(263) := 'E758F83C1573F5B349376EE70BA9714D5560EA3A9CBA8665E818B80EA6C3A26BC9969518F1153A0575C33A2E51D3500BA06D03EEFAFF0A8D1C6B5AB7179BA22ADB3E4C5D87AE3D4C9A7DF791ECEDB5FDE17F0DAF2B00E0A202D08E91B1E38475C80B40A5';
wwv_flow_imp.g_varchar2_table(264) := 'A856D7A1ABDAC92B002D3945575592EA15177FD3B2E11FF07C540128C0C1A1A92AC22441921728AB128A4CDB0A3FD1815A338628CBB0D806F8BE5A631D4548F2E208CE85746D94C73474689A7AB0B4708F1EAF061DCBFFFED5B9B2AE11A5299641808BE5';
wwv_flow_imp.g_varchar2_table(265) := '1A7F5FCEF1D7E51C7F5F2E90E639D2BC405E569D01DA31C71A798C68F01C0BE3C1009FCE26F8E7E78FF81F9F3FC0771CB8B6D589EB98FA8E0B34701C4AC8EA96F4C7BB4985F6C0DFA916F2CE46BC9D7A685B816D295F512820505A12A22022B64182726F';
wwv_flow_imp.g_varchar2_table(266) := '6F96BD91AB47B21D7E2B7841018084BBFA62ADB46E5531D4A710D69125A82AF5BB0C43EB0EE853419624480A31DE754DED74A9354541DD34600F8C48990800CABA8622CB08E214519221C90A4890014E55877D92D15D4622FBE818FE1CD46A88532CB701';
wwv_flow_imp.g_varchar2_table(267) := '2E97EB5D05E0C0CF5B9200B5CD1E6C0396A9435715C852DF02E8F176D14AFADE16005C73A4137B59CBBD21EBF004F375806F8B15FEBE5AE2DF1773FCEBFBE5C90EB44EF65B53E15826869E8BB3918FCFB309FEFC788EFFF5FB6F300D1DAAC8D68F9101BF';
wwv_flow_imp.g_varchar2_table(268) := 'B9E2960C78E8F3FDFACF1E5E5D7DAF784101C01DE03B663AE3CD49446424C1D2571585C423E41333D3DB831880AAD0B4C1C0B131F45C1AA11166460F51D3A3325A83B2ACB10E427CB99AC336758C079EE897B9B02D43541CEE36C2D845E7409617480B12';
wwv_flow_imp.g_varchar2_table(269) := '599A6F027CB99AE3EB7C89EF4BAA00A4F9312D0009A6A663E05898FA3E862E292F9E76EAA2C7FDD0575D9E0E7727360084D536716E922CC7D57A8B6F8B25BE2D56F8BE58611D84C8F2E264AB32742AB71B9A8EB1EFE27C3CC2F964848F93313E4E27F05D';
wwv_flow_imp.g_varchar2_table(270) := '079AA24069839717DBAABBB91FF587FE43F07A02000068C7D2584B2A39AEBC234980224B506431A77F244BFF87E7DF7B2155556099BA08001C44B204C61BE46579FF2A8038A8196F50D425D66184BF2F17600DC787C9081F2623F1D9B8B04C039224DD23';
wwv_flow_imp.g_varchar2_table(271) := '00A0A0A2E11C4996631DC55887112E571B7CB95AE2EB7C898BE51A719A212BCA832B00B2245199D1B6C9A8C375611BC6BD243B7B9C1E44BA7DA99BFADBC17D128A76DA264E332CB70116DB1017CB35BE2D96F8BE5C61BEDE22485224797EB2ACD6D0E85E';
wwv_flow_imp.g_varchar2_table(272) := '1C384258E77C8ADFCF67F8389D6032F030749C4EF5B315EC39068F75A5DDDAE7FFF10F7BFC04AF2600680B3B0DDFF599765DA5C3D0F5A21422FFC9F27173FA3F7D0D009AA2C016158091E7A26938F292C87BF73EFF212E70C6519435566104D634C405C8';
wwv_flow_imp.g_varchar2_table(273) := '3230C6A0897E59ABE275D7F35145456C4079815510E2FB62856F8B6517005CAE369D9F013F70EC50DA0B0026C3017CD7E96C977B3C03FAC3FF69F08059FF44706EFEBE9AE3DB7C45D9FF72855510754EA2A782A191DBE77438C0C7D918FFF870867F7EFE';
wwv_flow_imp.g_varchar2_table(274) := '884FB389A80C90CCF85D6DC497017E5D76B5C7BDF16A02004094ABC53849DBAF3E16B224419148EEF69417FBCDE7D154EAB38D061EA6439F58F65926028E87BF0FC618922CEF7E2A9D92968A8637C88A024545A21C6DBFEDE69A9AA64125D4BB2AC670B1';
wwv_flow_imp.g_varchar2_table(275) := '5AE3DB6225B2FE15AED61BAC021A013CF87310AFAD2A8A705E3431F25C0C1C0B96A1F72D8027C0CBDFC0DF2E6EB5F215BF66EDBD57D548736ABB5D2CD7F8724555B7ABF506CB6D8830494FB20E55A1D13B4D51301AB8988D7C7C9C8CF17936C5C729D9E8';
wwv_flow_imp.g_varchar2_table(276) := '9E8D865DD27273CFB8EF7EFB2B59E36BB8F17CF76E85EE7327DA9E7F1B00F478105E5100204A3CD86796E2A888AF9DC59564080DEAC713D6D754059E6D61361C08062FF977CBB24CA63A0F04076D206525011CD884313475899A31AC828894B35C1B9E6D';
wwv_flow_imp.g_varchar2_table(277) := '43DD63D74AD891FD186B908B20212F2B2CB70196DB108B2D8D1985498AB2AA0E7ECF922411814821F29F6D1A702C8B1CBB0C13BAAAF624C01EEF0AEDDED5708E2C2F3A4DFF7518E1CBD5025FE64B5CACD6588511E22C4755B393BCAEAAC8F06C1BAE6D61';
wwv_flow_imp.g_varchar2_table(278) := '605BDD98DF2771F08F7D0FA6AEEFCAFDCF1E34FE5CC71FB796F9FBC3FF10BCA200E0FA577C92AF5B6A8D2F76D2B4A76E01B4D05415AE6D613AF45154358238C6A561748A780F7D3F9C7372FB12421BEB2846C518822485675BF06C1B9E18DF31348D261D';
wwv_flow_imp.g_varchar2_table(279) := '34159020B81394FD2759D1A97B45294D1544698A24CB85C8D0E101802C4950541241320D9AFF772C930200D310C24BCFBDD1F4E8F17468DB6E4DD3202B4B2C8310DF05D1F662B5C6E56A838BD51A719A232B0AD4EC340180A6AAF01C0BB3A14F4CFFB329';
wwv_flow_imp.g_varchar2_table(280) := '3ECFA6F8ED6C8AF1C0836B59140088BFFFCBBBF2B6A4EBC401C38F2FB197F59FFE2478B7785501003A9729F1EB633900A0EB76A7A0F778812F55006C4090EEE6EB2D6CC3D8B9FA1DA0ADCF58838635A840CA61619C88995E5D286791AEB665D0D89D6518';
wwv_flow_imp.g_varchar2_table(281) := '90408A8A8C7352194B3284E2E02FAB8ADCC4EA0A35DBCDF31E8AB60260682A4C9D043D5CCB846B93A8887CC2964B8F1EAF01BB49268EAC28B1DC86F8EB7281FFFA7641D2BADB10CB2044595554A93B91D4B7A25005F26C34C43F3ECCF0DBF90CBF9FCDF0';
wwv_flow_imp.g_varchar2_table(282) := 'DBD914AE6D75EA7C2FEF7EECC97D8F89571500504FAA55D314729A473C5FDB4168D0BADC3DDEB545BE031A1ACBC4D07530F25C8C7D0FD3E100719AA1A82A1465F5E07640BBDC9A359D1678297AFA455521C98B4E59AB8DF0DB83BDAA6AC4792E3CC4F36B';
wwv_flow_imp.g_varchar2_table(283) := '0E5EA7611BF3CECAB46675A762B8DC861838368C966CA4EE26015EDE06F4F6D07FC64F879DA9161744BF1C89B8E72E571B7C137C9BF9668B204E1067198AB23CA82D78138650D5B30C1DA38187DF66537C3E9BE2D36C8AB3D11023CF856B5BB00CE397EB';
wwv_flow_imp.g_varchar2_table(284) := 'FFE1D7A7DA247FC101E0374BFBFDA1FF28784501C09E85A4D22AEA1D99B273518E139974233F9E6A942CC9D054059CEB7BA21B437C9E4DB10E42044942876F79FC8DDF708EBA6628A40A4DC351D50C455921557340923ACF6EC61A14552914C5D849C995';
wwv_flow_imp.g_varchar2_table(285) := 'ED3A186B504A35D2BCC4268C71B1DC60E85E623AF4311236A3ED28607F2EF5786BE04067A85533864D14E16AB3C57C1DE052906E2FD71B6CA3186951A010263A87629FC0E75A1626BE87893FC0D968884FB3093ECFC6F8349D60E83AB02DF37E53383F1C';
wwv_flow_imp.g_varchar2_table(286) := 'FCB7AC6F3F41BF6F2DF3977FAD3FF09F02AF260068CBF54AC766954509F9F0E76C09854C880B35BC39B2A9F07348C27A58962530666234A000204A53FA3DDE20C9721438BCE7DE8273DE59055735832C975D89AFFD7340782B34AD6E77B333CB381176EB';
wwv_flow_imp.g_varchar2_table(287) := '6890CA32D661848BD51AA6AEA1AC6B489204DB346019BAF81EFB08A0C71B8348305A9DFC7518E1EBD512FFFA7E898BE51AEB30C22A8CB08D93DDA8ED51C4664012D2BA8E65E26C34C41FE733D2F51F8F703E266D7F5318A0DD2700E0E27DFC90951F8B3E';
wwv_flow_imp.g_varchar2_table(288) := '007876BC9A0000D8F948B7AA7DB274DCDC3EE7ED6861B313157AC41600DD6C2A244818792ECEC643E46589AA6648F31CAB203AC96BB5072F4E44203A7C1D10AA8D0050601BC5B858AD01900F836399980DFD675D638F1E8F09CE212CBCA925B789627C9D';
wwv_flow_imp.g_varchar2_table(289) := '2FF07FFEFA8A8BE50A695E20115341A740ABB1AFC8325C1100FCF9E923FEFC7826EC75A922F0807770E3F1ABBFF7E32F7BBC6CBC8000E001AEF0BCBD0CAF9B4B1C0A62C2D7A2FF4E59B2A69E8674F32BC8B204C73430F13D310B4C221F45594155641465';
wwv_flow_imp.g_varchar2_table(290) := '25AC404F27FCF1DC683847569608045151576922A12C2B8C071E198228F29B16065A6E838EE5BD0C424469F62CDF7155D7A86BBAEEF2B2EA7AD269713AA9D91E04D6343B726D55E1AF8B39BE2F56C25EBB4259D764937B20DA72BF2C9CF5060EA9FB79B6';
wwv_flow_imp.g_varchar2_table(291) := '8DDF3FCCF0FBF90C67231FBEE37493373F60BFCFDF5BE8BE2B3C7300B0A7337D1FC94CA02B45F1BB02D27BA0E11C356B5054358AAA86AEB123DCEEEE0F5996615B2626CC236320C6505635F2B284040941928819FCB71300F086232F2A04710AC61A704E';
wwv_flow_imp.g_varchar2_table(292) := '8E67719261E03A9D48C95B96060EE2844ABE41887518214EB3A3C62C0F45CD18B2B24426489957EB2DE69B2D9641F8E46B79EB6844F6DFBAE62DB701E69B006192A0A84A72353D26009024BA6F6419A6A163E20FF0713AC6C769ABEB3FA600C0B36119C6';
wwv_flow_imp.g_varchar2_table(293) := '35C2EDAD68DBFDBD85EEBBC0330600F73FF8F7B17FEE1F1B03340D91E5CAAA425195306B0DEC40B39B874016BD6F5551E0DA166AC690971532C1FEE500F2B202903DFA5A9E0A9C73E465418E86798EBC2C11A71956DB108E65421576C9777917BC66A479';
wwv_flow_imp.g_varchar2_table(294) := '8E38CD10A719A22C439466289E21C8AB59436E8F6986F936C0BF2FAEF0AFEF97F8FB6AF1E46B79EB20222CEB266C5261B895E605AABA163E1C470600B24C4E9B868EE9D0C31F1F66F89FBF7DC26CE463E479180F5C3896D50982DD052E4AADBC97D67DF3';
wwv_flow_imp.g_varchar2_table(295) := '78BEDDB61DE5FB4500D00A66B4236BEDA85C5152E98C35C711661AD12B2FCA1A4559A332D851E5B8FB4296E58E840390F56E92179DF0076B889D9FE639991F0903A4D77C2B7280644F6B061440515548F31CDB2882A9EBE45CA8DDED5EF89A5156A4B858';
wwv_flow_imp.g_varchar2_table(296) := '5415F29214182BF6F401006354966E2B0097EB0DFE7D7985FFFCF2FDC9D7F2D6C1DB3D4CEC632DD7E8187D0D6037CAA9AA2A2CD3806D18187A2ECEC763FC7E3EC33F3F7FC0D073E198261CCB84A169D7D674639137FE4C54585FF58ED3E33E789EDD56BA';
wwv_flow_imp.g_varchar2_table(297) := '5FDF9F31D6D9E626698EB92855CE375B6CC2084996A33EC220A3E9C83925F2A244651D578E3B14A6A16334705156934E2FC0D27538A689682F63AC0543F8D8CDE32580351C65C520A1026B3854A58252BEED164055D7C27BA14629781F4F1170FE0891E1';
wwv_flow_imp.g_varchar2_table(298) := 'ED796B3046A36A3D4E8B4E0780EF784BC7729714D1EF5715199E6363EAFB98FA039C8D87F8E3C319CE46C34ED94F53559238FFD51A778B3D3DD3BFC78BC6B30400F72DFAB3A6415A5096B20963CC371BCCD71B5CAD37D8843195D18ED8B4A80240D97F5E';
wwv_flow_imp.g_varchar2_table(299) := '9644C8614FBF215BBA8EF1C083A650346F193A1CA19A37DF0498AFB7A8EA1A99B0EDE52713EA793E50F0558383A36235E93B0832D35B455BC9615D5587A1798296D36D68DB67AD08166B9A93C9CEF6D8A1E52BB5F7EBBE19D0A1501419BAA6C2D0340C5D';
wwv_flow_imp.g_varchar2_table(300) := '079F6663FC713EC36F6733CC463E66231F9E6DC1D04964EBAE0040AC14C737557BBC363C6D00D05E88F7ECFB33463DB36D1453E6DF5600D65B4469D66DA687A2AD00E46529C6F19EAF02A02A0A06C29FDB360C38A625FA762ACAAA46102728EB1A600D1A';
wwv_flow_imp.g_varchar2_table(301) := 'BCFEDBB4551BAC19EBCA992DA3F9ADA233B102AEFD7CA6D500629AA66D33D5CF10FCBE753CC6F7ABC8140058868EA1E7E2D36C82FFF9FB67FCF3D3073896D93D5459EE3401EE5EE8735E8B3D9E0B4F1A00B42E53BB4DFE470E40CD1849C7360D8224C52A';
wwv_flow_imp.g_varchar2_table(302) := '0871B1DAE0DB6289ABF516EB30469CE58224773C763D2FFE6C7C17758FFDAE2872978929AA0CD61027A0E11C4192080E04552BDACF8ADDE8319E02B2D02D50C468DEFE8389ECBDAA89DCD4EC1D6C0F41D3338C9F1F7C4F0FA3FF2E5E2424ECEE475996E0';
wwv_flow_imp.g_varchar2_table(303) := 'BB0E86AE83A1E7E2F7B3193E4F27F8301E6136F2A16B1A744D85AE69D70EFE5B257DAFFD77FFDDBF47BC38C65555336445218C32027C5FACF1D7C51C7F5FCDB1586F112594F99F0212A8E4DCCA0B9321D0F366A0B22CC3320C0C5D876E600E983A7104B6';
wwv_flow_imp.g_varchar2_table(304) := '51428E7D69DAB9856545D9318AAB9AA1E2F5C11C817D0F7072F0D361E93A4C4383A1E982B8A8212BCA6E1D695E081F02F62CD5931E3DDE3A245926DF0CE19DF16132120F1AF3FB349BC0F71CE89A46B6DFB27CBF36EBA9B5FD7BBC3A3C4D0070ADF4FF6B';
wwv_flow_imp.g_varchar2_table(305) := '026055D748F31C419C62B109F07DB9C2DF5773FCEBFB15E234439265273B6824095064E95A76FBDC1568459661193A645982AEEB30742AF37D9C4EB011B2A16B31471EC4098238812CCBC88A024009D63034ECC01B5AA888C942A8C7314D788E8581F011';
wwv_flow_imp.g_varchar2_table(306) := 'F7C4234C12CC37012489B2F8A2AAC0C1FB00A0478F47802C49D035BA1F5DCBC487C9187F7E3CC79F1FCF71361E62E83AF05D07BAA65242F3CB4D6C97EDB7E37E7DF6FF7EF1022B0035926CD7F7FFBE58E1EFCB39FEF5EDE21AA3F6146865335B46ED4BB0';
wwv_flow_imp.g_varchar2_table(307) := 'A7554405C0D4750C6C8E91E7926A1B63588B76C8E56A0DDB3261EA1428D48C8173229595D5E1EBEF74C4458FD1B54C8C5C17637F80F1C0C568E062EC792418234942BBA0EA04957AF4E8717AC8B20443D3E00A13B10F9311FEFC788EFFE7CFDF31F607D0';
wwv_flow_imp.g_varchar2_table(308) := '55059AA242BD4BE4E756F487FF7BC6E307007B87AA242A00D28DDED43E337A1B25B85A934DE697AB0596DB00719A1DC5F66F21CB126C8366662DD3C01FE7337C9C4E301DFA18BA2E1CCB7CF639F4D6F21890A83727D1BA954686EB5818D715386FA0A98A';
wwv_flow_imp.g_varchar2_table(309) := 'D8101C4C873ED22C279191BC101A094D47EEEA4867370227A97558DC2BFB6BAA025555E098267CD781EFDAF01D672731EAD8946948120C5585EFD858471136618C4D14EFF112585F59ECD1E340A88AD231FD5DCBC26CE4E36C34C46CE4E3F7B319A6431F';
wwv_flow_imp.g_varchar2_table(310) := '8E6DC2D035C10D907F485E6EEFFBEFED03FD0DFAEEF1B8A79D3858F6497F37D132C1CB9AF4B2B7518CCBD506FFBE9CE3EB7C8945101EAD51DEF6B65599B4B2A7431FB3E100BF9D4DF1DBF9141F26438C7D12CDD0B5975514912509906448B2044BD7E13B';
wwv_flow_imp.g_varchar2_table(311) := '0E644986651A18796EA7E34E930C24305356F535BDF7A6E15D8005ECBE055992202B4A47F433344D3C54988601C734605B066CD38465E8B00C1A51B44D03A6A163E0DA180F07F8BE58415735B0A6E9046EF292833F81AC728F1E6F11BAA6C2B36D788E85';
wwv_flow_imp.g_varchar2_table(312) := 'C960804FB3313E4F27F8341D63361A623AF0606A3A54491616C03FA9FCDD38EC7B75BF1EFB78A2D3EEE765690E746A7C6951601DC5B8586DF0D7C51CDF164B3229C98F74CA1241882C9370C687C918FFF87886CFD3093E4EC7381F0D31F23C9101BFAC00';
wwv_flow_imp.g_varchar2_table(313) := '80D60D485C82A9E9901DE2088C5CA71395A96AF2126883A84E714EA8CED5C28BBCAE6B70EC3CC3655926F95D85327F531CF2A6A1C3D03468AA0A5D7C26AAA2405565688A02CFB6E13B36CE46434C7D1FBAA282D50DE234832C49681A8EB2AAD11FFF3D7A';
wwv_flow_imp.g_varchar2_table(314) := '1C064D55E1D91666BE8F0FD331FEF1E14C3C66B04D9382704D1799FF7D27ABFBC3BFC7753CDA69D79AFCDC26F7BB5F9A6A9A0645458E64519A611584B85AADF175BEC0C56AD3C9681EB38E5603DB128A7B9FA663FCC7C70FF8381D61E20F301D9270C64B';
wwv_flow_imp.g_varchar2_table(315) := 'C3F5D6098D081A8606E0C7B5124F80B2FEA2AA901525B262A76FD0AAD071CEA9E40FE21B689A46A343AA0ADB34601986700D230191DBE6882998A0D71BBA0ECA9ABEBF4D1C43962534C201ADD96B3FF4E8D1E3D7A0761CFDB44D1D43CFC1D9D8C7E7D904';
wwv_flow_imp.g_varchar2_table(316) := 'BF9F4FF1E7C733FCC7A70FD7F6D49BEDD47DEC1BF9F4F7608FDBF06CE96E3B7B5C558CF4C805B9EDEBD502EB30425E969DE2DD21976E7B6358868E81432CD9F1C0C59F1FCFF16936C17438C0C021872C5579FDEA739204C8920C450134A16920CB123455';
wwv_flow_imp.g_varchar2_table(317) := '215D05510568FF2E80CE4254133A0486AE41571528F2CEA5F1B6C482C62725285C81A9EB98FA3EFE382F2041C2D57A83F9660B5DD384DD2D5521AABA5799EBD1E367902409EE9E88CFF97888CFB3293E4D27F8341B63E20F6099C6732FB3C71BC3E90380';
wwv_flow_imp.g_varchar2_table(318) := '7B8EFC11298D0465B65182EF8B15FEEBEB05BE2F57580511F2A2BA46607BD81276E436CB30301B0EC48D4425FFCFB309A6422ED3D27528F2EBD79F6F5DC1240092D0FF561505BACAF64C95AE575224485DFF5F168E629AA27484A29F5515DB604355D059';
wwv_flow_imp.g_varchar2_table(319) := '904A005CDB826B5BD0750D00BD7E9466600DEF03801E3D7E014596E15A16A6C30166435FCCF753007036F6E13B0E1CD3BCD3400DB82E3B8C3DF25F8F1E37F14815805FCFFAB7A6180DE7A85885208EF17DB1C27F7EF9867514218C53145575D4B89F0422';
wwv_flow_imp.g_varchar2_table(320) := 'B999BA86893FC01F1FCFF03F3E7F1425FF01A6FE4030688904F7DAD17105640532A7C39CEF2903DE56492172E4AE5AD21EFC778D4376AF056AAB4C8703B8B689F3C90886A60212505635186768381103B3E3789C3D7ABC69489204C732311DFAF8E3C319';
wwv_flow_imp.g_varchar2_table(321) := '3E9F4DBA0AC0D8F7EE6F95BD4FFAEB15FE7ADC81130700828D7AC701C29A066555A3282B6CA314AB20C27CBBC5E57A8D38CDBBBEF5A1D0542A4D1BBA86C97080F3C9089F6613FC7636C5C0B1E1BB0E5CDB7A53CE73F7C90C1EE3B5644982222BB00C039C';
wwv_flow_imp.g_varchar2_table(322) := 'F38EB49917252489C84CAD76F97B076B1A34AC016BA732847AE2530B28495D7588CCA77CD7C16CE8234CD2275D470F82041AC1FD2CF6A8DFCF67F8301DE17C3CC4743880EF3A3FFD7F7F18F56B03FDFEF0EF710F3CCBAEDC9ADB047182F97A8BC5668B20';
wwv_flow_imp.g_varchar2_table(323) := '4E901525CABA42DD344759663AA689F1C0C3D81FE0F36C82CFB30966BE8F81E308829BFAEC823F6F099204C8003824B89685B3B10F8E8658CC431FEB315575DE3BF2B2425E14C8CAB2D36C4872D26F784AD0C48701AFE13813A3A2A6AEE16C347CD275F4';
wwv_flow_imp.g_varchar2_table(324) := '109068EEBF9DF33F1B0D31F25C3203BBAFB8CF7EB9BF27FCDD03D2ADBFFC257EF8585FFFE7FC3C01405D234C84E0CF6289F9364010A7C8F21265CD8453DCE1CFEF5826CE4643FC7E3EA359FFD914B3E10003C722A30C55F9F9DC6C8F87A36324038E6DE2';
wwv_flow_imp.g_varchar2_table(325) := '8C8F60190646DE004142815E9C66CFBCC8E7479C66089214419C601BC7588711EA863D7900A02A2A6C83439565A88A0C53D730F507F88F4F1F9E741D3D769064199E6DC2B52CB89605DBA4915CED5E554ADEFDD3FE778F1BB891F0FDEABFAE63EFB3BCF1';
wwv_flow_imp.g_varchar2_table(326) := 'D738976EFF7BAF08CF570148525CAE37F8325F61BE0910C409F2B22459DB239FDF364DCCC63EFEFC748E3FCECFA8E73F24224DABB4D717004E877D1B5FCF32611B3AA6BE87AC2C11A719A2347BF243EE256213C5586C022CB65BE8BA4A76D7CF408E5015';
wwv_flow_imp.g_varchar2_table(327) := '198A4C2D32C73230F13DA11CF93A37B1B70272FCDB1994B5BE1C778298D27DE6FF20EC5700EE7918F415809F613793BA3FFFDFA2D3F0179B4C9AE5D846642873B9DE6013C5488BA263FD3F14B2245D73CB3A1F0F71361AE27C34C4C4F7C4B89F7EA05676';
wwv_flow_imp.g_varchar2_table(328) := '8F5FE1662B455114288A0268A45B406243A431F0DE21494059935A639466D075ED5908A8EDA1D2DF0DAF0437E7FBAFFD91E8FBF787FF8FD8DB9B6EEE53D22101C02FB0FBF85FD7F7F0641500C61A548C54EBA22CC3268AB0D86C315F6F118AECFFD08F4E';
wwv_flow_imp.g_varchar2_table(329) := '51688466E839F03D179F67E48F3D11041ADB34FAC3FF1940AE820AB8A15350F0CE9115252CC380A1ABD035950CA8E4BE14D5E381D89BE8E13DD9EF3A7E7AE83FC27DD9CD51420000200049444154B6FF5A377E758DC3F68283B31304003BF31AE917B575';
wwv_flow_imp.g_varchar2_table(330) := 'D634A8AA1AB9280B6FC218F34D88ABF51685D08F3F348A5564B91BA1F938198BD9D9212603CAFE355579538CFFD70259180CC9920C437BB937C15321CD735806593CEBAA0A5556204BAF7F04B5C733E01ADBFF3D43BAFEE3E401C0CFC9820FE60EBEC0EF';
wwv_flow_imp.g_varchar2_table(331) := 'EAE80060FFF0FFF5E81FE9D56705953FA91FBAC57CBD397609506405AE609CFFFE61864F67139C8F8798F803788E7DF4F3F7B83FF6AF81FD76400FC0CE4C58BA015327F9655551EEF06EEFF15E712D19BA45E2B7CFFC816BCEB2B748233FE9A4D7CDD7BA';
wwv_flow_imp.g_varchar2_table(332) := 'F69DEDBEAB97D6AA7992160007953FD761445AFFEB0D8238415957073FA7B2A75CE7BB0E26FE0067E3213E4D27980C06704CAB2F3BF7E8D1E30D619FE5FFB20E92A7C56B0C9A7FB6E6E7FD1E8F0C007EADF8D781736445814D14E162B5A2002049509447';
wwv_flow_imp.g_varchar2_table(333) := '0400627CC932C83463E27B381B0FF1713A86EF3A702CE34D28FCF5E8D1E37DA335F2ED8D7D9E39CB3F10DD0A6F592B7D95CFF77D3E710520C6B7C51A57EB2DC23845591DAEF647FEF53A1CCB82EFBA98F8039C8F86F8341DC334448FB5AF00F4E8D1E32D';
wwv_flow_imp.g_varchar2_table(334) := '803FFF61F1DCB8C635BBFE9B2F1B77ADF119BFD72302801B8E713708805C38D271CEC118439615D84631E6EB0D96DB00519A1E25F7AB2A0A1CCBC0C873311BF9980E0798F8038C071E144579962251DB9B6BC71EDBF7DF3DB0DFBFFBF557BE3F5BDF6A17';
wwv_flow_imp.g_varchar2_table(335) := 'B41AFDAD45EFCDBFD3A3C76D78BF19E3EBC50F12BFEFBCECBFE398DD3F00B8B9F7360D7FF07E7C8D4678633FEE7C538EDC8F9F9324F8681500CE39EAA601630D8AAA4294E508E204EB2042102748F3B2B3A73D04A6A16334F0F07936C51FE7334C7D1FB6';
wwv_flow_imp.g_varchar2_table(336) := '693E6B44C839EF6C776BC650D635AAAA4659D5A81803630D58433F770E7D3F5AF428B2D48980A8C2AA575514E81A1982E89A064D25829D22939B5F8F1EF7451F10BC02FC8204F8AEF083BBECFDC13947C518EA5AECC7558DAA168F6E9F264F8ED638ADBD';
wwv_flow_imp.g_varchar2_table(337) := '37762F2BED4CD2AEEDC7B2D88B55E8AA4A9E27C259F5A1FB715BD9788E40E0C00040BA9EF1DFD6DB00C0C421989725929C6450D7518C6D9CA2284BD4ECE12628ED2B999A86B198F9FFE3FC0CB3E1008E6940C6432F93D3A10D008AAA425156D7F4DE8BAA';
wwv_flow_imp.g_varchar2_table(338) := 'A20B505C84B53082B919044912C9B32AE24233B49DC0916D18B04D038E65904C28E79084D94E8F1E0F42CF227FD1F8B9F4CF3B419B49E3FACF8780738EBA6634665E89FDB8A03DB9282BB127D3BECC44B2DA1A73B5D5565996C4A14EAEB13BC1391D96A9';
wwv_flow_imp.g_varchar2_table(339) := 'C3314CD8A601CBE0D0B80A4995F070EAD9F311041FB702C0C8F52F2F4A24698E304EB1096384718286F3C35CD044A9A5AD007C9A4DF0C7873378B605DB329FB514DE705000200EFF204911C6098224419215C84B72C9CBCB6A1789766D105AB722CBD034';
wwv_flow_imp.g_varchar2_table(340) := 'B5B3FFB44D03B6B8C8068E0D9FD98024D4DC244096957ECAAEC7032174E3DF7366D9E315E0D749E65D684442968BC33F4C1284498A3049916439B2A2449617C27D5654046A26725B12E992F7A6CD54B11F3B26EDC79E6DA37629816BAB04948CDD9F7BF6';
wwv_flow_imp.g_varchar2_table(341) := 'C379758B6DFB63E2B00040BADB7EB6691A14658538CDB08D1384698A38CF901505CA037BFFEDA1A8292A7CC7C1D073301E78180D1CB2FFD5D447B7C56DB37CC69AAED4DF96948AB2449251C69F647977B185498AAC28BAC3BFA82AD4E2FFF9210090C405';
wwv_flow_imp.g_varchar2_table(342) := 'D706008601CB34601B3A5CDBC2C0B131706DB8B6457F6618B00D72386C1FAA4A6528B96F0FF4E8D1E335E15A0F5DBAB5A77E8D1F2132F7BAD9EDC9945831129DCB72C4598624CB112529A23D6F92BC2C90152442B7DF2A9080AEAFDF96FD290050BABDD8';
wwv_flow_imp.g_varchar2_table(343) := '320D78B6052FB231706C789605CB34601964E2446D0145ECC74AB7173F643F7E0AD2E7A35500186B901505B6514276BF5182BC286FE979DF0F120043D7E15A261CCB24995FC781639930341D9AF234A570CE398AAA4656D0C5D39ADDC469D65D68EDCFAC';
wwv_flow_imp.g_varchar2_table(344) := '28908A28B3A8F6B3FEEB7C806BEF73EF42A1BEBF065D5361681A4C43EFDA00D40A30BBC7C0A60B7160DBB04D03BAAEC1D0FAF6408F1E3D5E0BF6FBFCF74BE2683FAEBABDB6DD8FA334459CB6FB718E24CFBB3D3B2FCA6BE5FFAAAE3B33ACB62A2D491224';
wwv_flow_imp.g_varchar2_table(345) := '485D154091656A0168C4C132340D96AE8B437FB71FD3F9645170605BDD7E6C08F12F45BF633FFEA122D0FDEB51F0780140D320CD0B6CE318F36D806D92202BCAC3CAFE00204930350D9E6D63EC7B98F8030C5D17AE65C2D4F5CE78E6B1C139475955C2DA';
wwv_flow_imp.g_varchar2_table(346) := '35C16A1B61B10DB0DC06D844B1080472C469762D1A65A2E7DF34D4676AF6A6056EBC518A3CA5EB179E22A2504D552820D0E9B3F06C0B9E63E36CE8E36C3C443D1AA1E10D1CCEA1C832F4BE3FD0A3478F178DBD2CFF812C7ACE4124F3344310A7586E4352';
wwv_flow_imp.g_varchar2_table(347) := '98DD06D884115563F31C695E10F7AA66DD7E4C24F5D67E7E37B5B5B7A41DD37F6F3F56F7F6635564F986A6C1774412E6D8980E7DCC463EAA2103E30D1A70C88A0CE31E0DDB6BD58EEBFF3A391E3500E82A00EBBD0AC08196A3920418BA8681636336F431';
wwv_flow_imp.g_varchar2_table(348) := 'F107F03DAA0058867EE2D5FF1C0D87686DE4580731BE2FD7F83A5FE0CB7C89F97A8B3813D58034BBF6FF5D2B5BDDF3B56EDE02D2DEA889A6AAF05D473C6C44E733B0A6116D009A1030FAD3BF478F1E6F181C1C454901C02A8CF07DB9C2DF570B7CB99A63';
wwv_flow_imp.g_varchar2_table(349) := 'BEDE7624EC342F6E19AD6C9FE3E7F85518D2B5270068AA8AA1E762E8B918792E3E9F65286B06592632B7222B30F5A73BA7EE8B0302002A8DDCADFDDF202B4A047182C536A03E7859A2E1875500244830751D43D7C1F97888E97000CFB6A0ABDAA3F4FCDB';
wwv_flow_imp.g_varchar2_table(350) := '0C9D327E51F2CFA9A7B4DC0658B48FCD16579B2DD6618838A55E7F515587573AF6F0A3FDF4EE771ACE91E63964096878035D53214B12CAB2C2368A31F63C8C0674415A860E5337601A3A1459BE36E2D2A3478F1ECF89DBCCE46EEE4D8DC8D21B51816DD9';
wwv_flow_imp.g_varchar2_table(351) := 'FC49B71F87586E43CCD75B5CAD37D88431E22CDB71AE0E1C39FF65B2B61F44D435D2A280A2C8E09C4351146A4F9425B6518C89EF115FADDB8F75988671EFFDF8B1EC861F1E00DC731CB30D00C224C532881026298AA32A00124C4387EF39381F8F30F507';
wwv_flow_imp.g_varchar2_table(352) := '702D0BDA23D9FC7231A74FAD8C1CAB20C43288B0DC86588A92FF621B208877CCD2B42868A4E4087D8387ACAFAC6B244509C639244828AA1ADB38C1781B6036F4A90C351C6034A06040556548920AF9A698468F1E3D7A3C356ECEF8DF710032B11F275981';
wwv_flow_imp.g_varchar2_table(353) := '65D01EFA015641D83DB65182204E112454716EF9568F0DCE39AAAA469A17A42700A0A828015E6E43CC46836E4F1E0F5C8C5AC13AEDD7FB7127B247AF72F2C19D476B0134AC415E1408E204AB6D8038CB9197259A233263D3D8AF00F8706D0B9AFA386FA1';
wwv_flow_imp.g_varchar2_table(354) := '1586689A06595E62B90DF1F7E5025FE74B2C83807A4DDB005951A2AC7651266B1A344F70C1359CA3AA191A5ED0EB97158224C195A661E83A584F46089214499EA3620CAAAA9035B2A2804B874CD5F6E8D1A3C7F3A0E174F8578C2129722C365BFC7539C7';
wwv_flow_imp.g_varchar2_table(355) := '97AB05D6414446736144AC7E41F0AB6A46626B07269D0F5B1F25640D6F509425B2A24010C530740DBEEB601D0E11C409A23443594FA1280A06B60DA8B41F033FC9ABF7038347A802DCFFF4BC319E711BF665156BC63AEBDF7514A3148A780F55216B7BDE';
wwv_flow_imp.g_varchar2_table(356) := 'AAA2C0D60D0C1C07D3A18FD1C0856518504F5401B8B9AE5639AAAC2A047182F9668B2F570BFCEBE252449BE46C788A52FFA168C7100120CD8BEEF757B685548C1D16550945966119249BDC7E96AA5011DC475F15E8D1A3C79340BA39E2773D0BBE6D3FCE';
wwv_flow_imp.g_varchar2_table(357) := '4B4A74B66182ABD5167F5FCCF1DFDF2EB189636CA3049B287E31FB71B2B71F3B968934CFBB9143459161B7FBB12CF6635981A4DC6F3F3EA592E749D3E7A669500B75BBB42890957400957BD9F143962E0BB29BA62AB04D03AE6D76A43F43D3A09DD84F7D';
wwv_flow_imp.g_varchar2_table(358) := 'A7130D84718A75146113C6B858AEF1F7D51C975D6F294759552F5652953186242BB00E23220C2A2A00098C3518FB5E471CB44D13C0EB34D7ECD1A3C7DB462B97CE39471025588521D64184EF623FBEDA6CB14D12A43969CBBCDCFDB8419217D884112489';
wwv_flow_imp.g_varchar2_table(359) := '08831264B0A62132BBD07671DAFDF80913B19306008C73543565FA595992046349E598B69CFE902F499665E89A0ACB30E039161CCB12B28B06744D83AA2890A5D38DFEEDEBF30749828BC50A5FE64B5C2CD7B85C6D70B5DE621D46C8CB124555BF5881CE';
wwv_flow_imp.g_varchar2_table(360) := '9A31A4790E00286B0649A2C3BF284B7CCCC6F8349BC0109FEBF51E538FF781D6C0EBB9D7D1E3DDE21A89FC7629F9664F9E771B27F8B658E1CBD502DF172BCC3701E6EB00419C8A33E6E5EEC7ACA1FD580250D535644946CD1AE465894FD30C9FA613E842';
wwv_flow_imp.g_varchar2_table(361) := 'F4ED9787BFD40D4C02384D25E0E41580AA624262B1445654DD97033C7CC1B22C41D35458A60ECFB6A80220D4964C4DEDD49A4E81D619AA1583089314DF976BFCE7976FF8BE5C7525A628493BD188971A71D622E2CC851223633B55AC8A3118BA8691E762';
wwv_flow_imp.g_varchar2_table(362) := 'C8F99EE6768FF787FE5BEFF15CB8834D2EF6E2BA2185BE6D1CE3DB7C85FFF3F7577C5FAC3B59DF38CD68CFE60F4B2E9F12356B90664537AE58B306795122CE3254750D5D53311C3818721712407E36B79E6BFBBFC7C57F1FF79EEF1D00B499E22F47FF58';
wwv_flow_imp.g_varchar2_table(363) := '83B216AA4C798EA22C0531E2B045CA920C43D3E09816068E03D7B244F6AF423D31F9AF952E6E257B979B0057AB0DBE2FD6B85C6D3B79DFBCAC4EFABA8F012E2A31154824435515700E94550D432792E064E0C1B14CE8C2D1EAB1C8943D9E1F3DB7A3C78B';
wwv_flow_imp.g_varchar2_table(364) := 'C32D67C9FE01CE9A4698C8D10CFF7C13E072BDC6F7C50A57EBCD9EA2DFE196F24F85D695B0620C45554355C47E5CD73004697B22A6DAC85D90D45FF7D17D52529BFD039274FC54C04977FDBA69334D9263CCCAE32C7F155986A96BF06C1323CFA5034BE8';
wwv_flow_imp.g_varchar2_table(365) := 'FD9F1A356334B120C87D5FAE16986F02044982B4A09EFF73124C0E07CDCD26790649E25806012ED72E3CDB822CCB6430E43A7D00D0A3478F1783763F5E6C828E80BDD80488D34C98A931B02760F79F1CEDF8769E0312B00C425CAE36706D0BB224C377C5';
wwv_flow_imp.g_varchar2_table(366) := '7EACA94F529F3B2D078035C88B0A714252B8797198E56F0B599660683A5CDB26D95FD384AE6927EDFBB7608CCAFE97AB3529492D96586CB7C2C8A7442D464A5E1BDA4853CA0BD435836D86A44F6D18501422A2E89A0ACFB1FB82F07B425F15E8F18251B3';
wwv_flow_imp.g_varchar2_table(367) := '06419CE0FB728D7F5F5CE2DB6285C526409466288A12B590557F6DE0201E409AE7A859DDB5B72D9344DAEA6684FF9FBD37DB6E23D99205CDDD631E307190947932ABEAF67DEAFFFF947EE9D5ABEA9E49298903A698237CE887ED1104298A22409014A5B0';
wwv_flow_imp.g_varchar2_table(368) := '5C4C4A9912100003EEDB6DDB36735D0793387AF833CA00182B0A78020D705C0640DD300054A91D890108C38101F0DDE771FE934A615B94F874BDC47FFFFB2F5CACD6B858ADB1C90B540D8D74FCA02DA6EFA2EBC803BB6480E752A4A5E73A1082C37568F3';
wwv_flow_imp.g_varchar2_table(369) := 'C78E1E60C48811235E134A296C8A129FAE96F8FFFEF509D79B2D969B2D32CB0000CF9D93F77CA000229A94EB135F3DC781E0942B308DE317DB6B1E5900D8394DFBCFB7A0B5462B69026070C57B42954653002EA2D0479A50DCA2EB3847DBA79452903642';
wwv_flow_imp.g_varchar2_table(370) := '725B94586539AE365B1A2FC90A147503A9D4C13F8C9B501F06C711F01C17AEEDB773CE206CE6348061FC9044883432499A0ABA595A29878A775FB14B2F708401AAB6C33A2FE07B1E3CD7451A853899A4763E5540D8F4ABB16FFCF362FCD98EF811A1B41E';
wwv_flow_imp.g_varchar2_table(371) := '027BD65981D596DAB157D64ABE6C1A48B5DF28F92EFA601F6EBD503CF746FFC43987B0813F805D8F713319D64F23F4536EFD7A3CACAD7BA25FEFEBB6C3262FE1791BB8AE83240A71324D51350D3C7B5D5C7C2D76EFE57F830CF0C04DEAB82D004D7688B5';
wwv_flow_imp.g_varchar2_table(372) := '1568743B9BD621E09CC1F35CC46180691C230A82C1F3FE18905AA36A5BD46D83559E639565586D332C379422D5B4DD935CA438E794092D04A220401A8748A3084914587F03079EE3DC8C1F5AA7ABDE80A8EE3AE4C54DB4652B31F8611F7A555D27911515';
wwv_flow_imp.g_varchar2_table(373) := '38A3B8E1C524C5F684F41ABEEBC20801F73B62CF1123468C38367AF3B8B2AEB1CC32ACB31CEB3C271D56DDD871F2C3F713B1638216053E529BDC9784C17030F31C671841D4C6D021ACEBD0D83579376AB8EDA475283C7C24AF93127959D1C41BE73899A4';
wwv_flow_imp.g_varchar2_table(374) := 'D81473944D036D0C3CC781CB1FB6497E0A8E3F06A824EAB6456D27009EC400300EDF71100701D2384214789601385201A0146AEB5648637E0596DB1CCB6D66637C9F56C0F4147BE0B9982421CEE6339CCD66584C52F89E6B03213C186BA0A494B2823D9A';
wwv_flow_imp.g_varchar2_table(375) := 'A228AA1A57EE1600D07412AACFAB66ECE08AAF95125959922E8001EF16336C8B9B36477FDDCF1FAC3C62C48811379052A1ACC93E7EB9D962B9A522609317E83A894EA98327CA00800B0EC715F05D17491CE26C36C1D99CD6E3D0F786909EC183406BB41D';
wwv_flow_imp.g_varchar2_table(376) := '85FC544D83A26E70B5DE80333A4829AD010568A8C30F645222AB2AB492A619DE2DE6D8E605AABAB9C5567CBD20EF72003DF6BF8AC71500FDC8267BB812E97D000606A0934FF2C5E79C0D3DEB491C21F47DB88E385A01A0AC1943565001B0CE72ACB31CAB';
wwv_flow_imp.g_varchar2_table(377) := '2C7FF263F796BBBE472D8C6912E3DD7C86DFCF4FF1FE648E2808100701A2C0A7F74D2A4825C93EB9A8B02D4B6C8A128C71B45221AF88FE825230C6403DA1E2ECA4445656D046E36F9B2DB67989AABAB9E15C21A04706E0E8305A431B0D633D24E89F57B8';
wwv_flow_imp.g_varchar2_table(378) := '8E6FC4A28E18F19A68BB0E6555619DE5B8DE6CB1CA72AC6DD8DA53EF5306C0E174A00C7D0FD338C2D97C8ABFD9F5380E43C46180240C608C195AC3FDEC7E5E55D8162538E3E824F9AC48ADD182C6DCF5815AB74E2A74B2428E0A5A6B5C6FB6D8E425F2B2';
wwv_flow_imp.g_varchar2_table(379) := '81E01423ECB9F7BFF65BD6C9300789228EDF0290124DDBD9518DA732000C8E70E0BB2E228FEC7F1D218EA6566F2DFD72BDCD706515FF4D77F89CBFE0E45BD09FEEE713CA869E4F129C4E27369D6F8AF92445E0B9F03D0FBE470C80B20C40E477083D0F49';
wwv_flow_imp.g_varchar2_table(380) := '14601A47083D7BB3CE26586DE903B1CE7214553DD82B1FFA1E2BA59115153E5FAFF0DF7F7D46128688431F91D55A8C382EAE375B7C59AE70B5C9485C5A3790F2E5E7987B7D89540A9D9443646AFB0666AA47FCBCA031EC2DAED75B7C5EAEB0B4E13E87B2';
wwv_flow_imp.g_varchar2_table(381) := '9D9C31F8AE0BCF73E1BB647ED67F9DCC6C3ADF7C4A0C80656303CFBDC500749D44E0BB48A20093382236370A71369D104391D39A9C9515A454B7F200F685D606754B098297EB150C34180702DFC573E5F61DB70560A8875DDBFE3551364F2B005C87D386';
wwv_flow_imp.g_varchar2_table(382) := '1A78640024F8D1FA215D27915715AE3794ECB72DC856F25008CE110574DA9FC411DE9FCCF1EE648EF72773CCD3146914228D23244100C7661CB88EB8953CA894421C85683B89A6EB3049629CCE26F8909FE0CB7285BF2EAF2138654EF78BF6A105809412';
wwv_flow_imp.g_varchar2_table(383) := 'DBA2C0E7EB2502CF4512513F2C8E427863017074F4279BBECA2FEB069D7CFEE8E8BB206A935C3ACBBAC1A628B02DE8943362C46B615B94586E89FABF5A6F6D01D01CCC9209CE11F8DEA0BD7A7F32C78793053E9C2EB09824A401B06B5EAFC972AD06C0F4';
wwv_flow_imp.g_varchar2_table(384) := '1A00AD1177215A496BED248E70329D605B94B858ADF1D7E5353E5E5DC1C010F3DDE2E002802C831BACF31C17CB358410083C172A8E0F7C07BE8F236B000CA424DAA4398259434FA3079E4BA752212843F958058094C8AB7A509A66E51319004105C03C4D';
wwv_flow_imp.g_varchar2_table(385) := '70369FE23FDE9FE3CF0FE7F88FF7EF308923EBF26455A75671DA0B1AEFAA4EFB0AB49A4D6D0FAAC5BFBE5CC2111C55DBA2A86A18D0628E032F59F6DE07CB159431F4618842A45108CF750F7E1F46DC8FAC2CB1C90B6CF21C9B224759D7E85E8101D08A7A';
wwv_flow_imp.g_varchar2_table(386) := '9B55439BFFE56A83CBF506CB6DF6E2D73262448FACACB0DA92189B3E2725AA9D54BD7DC13927BA3F89713A9DE0CF7767F8CF0FEFF05FBFBDC72C8D891D70DD613D6677D6E3FE3BADC5F4BD9EB656E3D6E1E3C5155CC7A1C9B7BA05B3816B0D6307B52C94';
wwv_flow_imp.g_varchar2_table(387) := '36A82C0370B1DE20B487C9E734A0FB7E0130C4FF7E7FD3D546DB18DD0E4DD7421E28A26336AF5E08614FCAD406E09C43707E700BE0EE0FA593124555639DE5586E72E4657D100DDAD723AE239044214E6713FC7E7682BF9D9FE28FF333FCF9FE0C49180E';
wwv_flow_imp.g_varchar2_table(388) := '63288F2D60C8D257A153340AC8194361058B455941E40C4A2954AC3DF086A35ED6F526432715B65189240C074BCA11C745593728AA0A7955232F4B944D8BEE093E198742F5E3BA566F72BDC9F0F96A85CFCBD58B5FCB88113D8AAA26362A2F909735EAAE';
wwv_flow_imp.g_varchar2_table(389) := '7DD281CC7104E230C46232C187D313FC7E7E8A3FDE9DE1CFF7E798C4D1579BFEF7608CB1A3E3D47A750447D534C80A62F318E3C39E72C8B1D7188DA669B12D2A5CADB798A709AAA6F9AA00F8564EC021E380475DE58DA1132C29DA49A8B6EFC634CC6A72';
wwv_flow_imp.g_varchar2_table(390) := '064770389CC31176E33FF2785A1FCA909525B66581B269F63E9171C620ECF5C54180C524C5FB9305FEE3C33B9C2FE698C4111CE10C45CDBEE09C41180E088338F0713A9BE28F7767D0C6E0AFCB6B481B5C74D80D67AC2B1555D99DDD14F2AA22E5E988A3';
wwv_flow_imp.g_varchar2_table(391) := '82B4319435D17B99CB5768016863209544233B946D836D59E03ADBE2CB6A2C0046BC1EEAA6456927A09AAEB51AB243F70F8ED0F3304F13FC76BAC0FFFAED3DDE2FE698C4F1CD24D9016B32B38F6D0084818F93D9047FBE3F034007C04E76586739B4DA7F';
wwv_flow_imp.g_varchar2_table(392) := '45D6D626B8AC6B6CF3024555A36DE59346D1BF8723170096BE561A4A2B18ADF7D66F300608CE2038CDA90BC1892AB727FF636AD3A552A85A1A03DCE4A5F52ED86F41E6F63A5DC7B1D5668A0FA70BFCE78777984411D228842B0E672D186396F56088C310';
wwv_flow_imp.g_varchar2_table(393) := 'A7B329A4D2365252615B9674331FC00068632CE361EC044203D7A9E0380E041F07018F0D69273D48F94B8622AFC100D0D48946D34AAB012871BDC9F065B97EF16B1931A2472725BA4EA295B67DACF6B7FB65F640E6088130F0B198D802E0F7F798C611A6';
wwv_flow_imp.g_varchar2_table(394) := '4904CF11077BC9F40500630C7110E07436050CE0086A05ACB2028C7100FB33DFC6AEC745DDC0CD4BE4558DA6EB9EA4A3FB1E9EA500505A59E7A4FD079D18E80D26573A0EC78E423CC786A4B41E7C00B64569159CFBBDD9FD9CA6EF3A88ED0DD717008E10';
wwv_flow_imp.g_varchar2_table(395) := '701C329E3894B9E8692AC18138F071369BC073043C470C02BE431FDBD88A532A05C6DAA13D716CA66504613071B25FFA0086EC18E81980B6EB86D3C6F5668B8BB10530E215A1AD18BAFF6C000744C8330C87C7D0F7309BA4F8707A82FFFAFD035C47C073';
wwv_flow_imp.g_varchar2_table(396) := '2849F6D0F5AD671800CB004C2708EC34D72ACBF0F1F20A9CB383AC5AB4A602A0AC6B6AF7F605C06B3200ECCEF7876106F724A515CC0119CDF40673DAF485201B447EBC0DC9EC2CC0D2CEC4376D675DA6CCDE461342D09442140448A2F0D617B3AFE7D00D';
wwv_flow_imp.g_varchar2_table(397) := 'B5FF3BFD77B2450E00063452228D43041E854868AD0721E13E788AA7C088B789C176DA18286506F7C9B710753D62C443E8EDE343CF43120648C3006914621285B7DA034F5A8FEDEF5D413EFE0E17905261124588830081EBEE1C861FCF821B98C17B8033';
wwv_flow_imp.g_varchar2_table(398) := '667574EAD17BE8600BBC079E4503A08DB64AF64334003DCDC26EFAFE4724FEF5CE0F46AA9E66BAA93CF72DDB0417085C0F4948A326A1EFC3153B15E6114FD29C33B2AAF47CC4BE8FD0F71178341E6940232BFA80B6CB88112346FC0C70B840E0BAB4F947';
wwv_flow_imp.g_varchar2_table(399) := '21429F82CF8616F231D763061A4B3734A91678E42618053E0C8CB50ADE630F34360F4129701B18A4F4FE87E87D70F41680E9831314CD51EE5B92500B80DDF4FE193BAA0DB2B10C454FF72BADA0CC8D5FC1DE1594B0B3A6518834A61BCE75C557D5E231D0';
wwv_flow_imp.g_varchar2_table(400) := '670B300644A18FC0F7E0792E3CC721A5A8015ECF5F6EC48811235E17C4C87A88C31049D8BBC73ECF818CF4060260945913F81E42DF471C04C3C95F2A0D8DC7E97C7A03A24E2AC0E00D1600C0609E40276ABDBF0680F5297ADC26D31D3708C15886422945';
wwv_flow_imp.g_varchar2_table(401) := '5F5A432B73F0A9590841375C74870138DA15DF8033066EC722A3801C0303D785E73A64BAA40DA0F5DBCD2D1E3162C4882740080EDF3AF7A5718830F0E03E41F4F71018631056A4EDBB2E02CFA54C81C04763858CFB3CAFB17B27ECF87CEFA4FB9CABF92F';
wwv_flow_imp.g_varchar2_table(402) := '3AECCD863110803DF1986EDB0696FDE839849710D1F5519483B08CFECBB33FEF88112346FC90A04571D079D172F83CA2E6DDC7648CDD3172DB5D931FF978B8D18C0D82ECBDFEF62E1EF7BC4795D6D3767A6773DD7377DDDDC29E673B6383CEE0D0D9FC5D';
wwv_flow_imp.g_varchar2_table(403) := '90EEC17AF95B15EB736FC2D46A31835D657FC3E18096CB88112346FC2C201A9DBC68641FBEF5428CA831F4DCFDF8A239A8057E336AB88F69DCA138FE6CDDB0B9BECC29785F304645CA6002F14491E130D2A515B4CD3E78991BCE40E326B4421B2A06C6FD';
wwv_flow_imp.g_varchar2_table(404) := '7FC48811BF2A7A46B4F7A3D1078CA21FFABCC6D03A2CB56D2DEFBB1EDB8333B7AD6F66C7099F73173D6E0BC06EA6BB636F87D4007486DEA1708EBCA11E46B1DC8F3E3AB2936A98A9EF7FF8C0CE18E5118AA1DD9BBB930ACAF688B4EE23669FFC1423468C';
wwv_flow_imp.g_varchar2_table(405) := '18F166D1F7D1FBF5B853B70D85EE8E563FF5B9FA35B94F01EC1301D581C5477FFA1742D871C5C786DF191CC2991FB5006000981DDF1383C7F29E2D008361926018CF3BE635F62386208B614708B842C0E17CA797FE7848A550350DB64589755E202F2B94';
wwv_flow_imp.g_varchar2_table(406) := '7583B6EB8699D3639918F533A275DB629965C8CA0A75DBD23443CF3C8C55C08811237E51F4F6EEB92073B77E3DAEDB6E588BC5139C5977A114656AB49DC4262F9195358ABA41DD7468A5B45E38FB69001CC1E1390E990B392E1CC18F3A057717C72D007A';
wwv_flow_imp.g_varchar2_table(407) := 'A385BE87C1F71FE1EB2B2AA5894A3936A5CE19031807E3E4E037B8F53982FAF8F634FD585001D0823186C4E642574D8BB693F4D8F6398F51714AA551D6546C2C3719B64589AAB60580DEBF78193162C4889F094AD321893186AC28515435AABA45D37634';
wwv_flow_imp.g_varchar2_table(408) := '42ED3810479A2C535AA16E5BEBA69953C0972D36BA4E42EEE9C942B6EF02AEEBD088B7EB1C35FDF63E1C7D0A80DBB108C188BED8976437A053BFDAEDE11C7157230600006886D311DC86F9081271B0FD6814AA381B28A5B00903E4554D05800D15A259D1';
wwv_flow_imp.g_varchar2_table(409) := 'E35CBB540A65D36093E7586E771800AD0E4A5D1C3162C4889F094A69CB8A2A6C7D9F1880A646DDB630C6B511F3C7616495D6686C96CCBA28919515CABA46DD3668A5DCFB40D6E718788E03DFF3E0BA0E1CCE711CBEE27E7CB7003006038BFFBDCBD8ED5F';
wwv_flow_imp.g_varchar2_table(410) := '0887E6F8F7AE5EACAA5E2BD813B92281DD117A3877FFAE23043CCF45E4FB88029FA2275BBA891E0BAD355A497F272F6B6C32F255FF72BD421C0488C300711050F5C9C9DF80F36F5FFB2EDBB16B27A9B4465694586EB6F8BC5CE3D3F512AB2C47D9347B31';
wwv_flow_imp.g_varchar2_table(411) := '16B7DE0F00DC26198A1D7A8CF3C747648E783C7ABD86B2052E5966EF1F78F2547046AD2FCF7110FA1ED230C23C4D70369BBEE8758C18B18B1B833635AC797A474FF51868AD21B04FA2380000200049444154419FB5B2B14157EB2D3E5FAF904464D76E10';
wwv_flow_imp.g_varchar2_table(412) := 'C2739C619DE38F6CD17EB51E971596DB1C57EB0D3E5F2DB1DCE628AA9ACC7F0E38B53206788E40E8FB984421E2805C0CD903FB85BD323B8DBEFF731E9501E84FFFAE23E00907828B0737BBFBD0BFC912B81156D8AFDDF18863C0110291EF639AC498A531';
wwv_flow_imp.g_varchar2_table(413) := 'B2B282D666AF0CEA5E08A200345D8BEBED16FFFC7C01D711389D4D703A9DE27436411C04701C4A0DE4783C25D07492E263DB0617CB353E5E5EE35F5FAEF0F1F20A97AB0D654F1F48915064A68F28F0065B61DF73E17BEE1807FC0C68BA0E4DD3A2B63A8E';
wwv_flow_imp.g_varchar2_table(414) := 'AA6950D968E0978463F32B129B5EF9DBD90994D6087CEF45AF63C4885DD44D8BA2AE07DABEEE5A346DBB574645EF8D0243EBF86A9BE15F1797F03C1767B3294E675368659084015C974CD5F69168B552D96B6A71B5DEE2D3D5353E5E5EE3AFAB6B7C59AE';
wwv_flow_imp.g_varchar2_table(415) := '9057D5E1EB312343A1340A703249904637592FCF85A36B0084A002C075895EDF77B3A60200304643AADB5F148B6B0071A402C01108030F691C619AC4D05AD3E65FED71BD20F307660CEAB6C3F52683E75EA095127FBC3B83D2069EEB82338E00DE101FFC';
wwv_flow_imp.g_varchar2_table(416) := 'D8C76EBB0E794582968B151500FFF872818F1757D8D8CCE8433B249C3384BE470550925088514855B2E7FEA21E51CF88A2AE919715B2A2C2B62CB1C93994D62F5E00082110781E74A421550AA5353C476096C62F7A1D2346EC625B94586E332CB719D659';
wwv_flow_imp.g_varchar2_table(417) := '0E5E3268ADF70EA9EAA9F7B6EBB0DC6670BFB868A542FEAE86D40A9E2BC03910C2273DC01E07B24E4A14758DACAC70B95EE3DF97D7F8FBA72FF8787165DBB2871FC81863F03D0F6914613E9D208D2304FE1B2A007A0F7FC7462E72B17FEAD26E05779701';
wwv_flow_imp.g_varchar2_table(418) := '006C9B01C7998DA4C8481FD324C22C8DD1741DF2AADEFB71FA1BAE6E3B2CB75B74B2C326CB61B486EF3898C5317CD71DBCFCF77860B45222AF2A2CB794D7FEF1F21AFFB0375CA72857FE291567E07B98C4314EE7532CD204F334C17C9220F0C6D3E0B1B1';
wwv_flow_imp.g_varchar2_table(419) := 'C90BAC32D26FB88E80521A55FDB29B3F60F32B3C179CD167D67538D238C0BB6AF6E2D73262448FEBCD169FAE02B8F680A4B54173404265BF1A369DC432CBD04A897596412B054F084CA308BEEB4270BEF741A7931265D5609315B85C6DF1F1E21A7FFFF8';
wwv_flow_imp.g_varchar2_table(420) := '19FFFA7289A69314DF7B3023CBE07B2ED228C4C924C5248E1078DEA35B1487E011AF7EF7C53CBCED72C6E00A0781EB9247BD709E74F15ADB78C4AE43D534F05D178C018E79EC6CE4C3701D81240C703249919715AABAC5262B9E70BDDA2A50399436F8BC';
wwv_flow_imp.g_varchar2_table(421) := '5CC3F73C30CEB0CA72245188340A110581CD39E0B602BD7997B526B643D9CDFD7A93E17AB3C57293E1E3E5352E571B6C8B1275DB1DDC3F1EE22C1D81340C71369FE28FF353CCD204D338C22C89E17BEEC1EFC388FBE1B90E1898152A75088AEA555A2DDC';
wwv_flow_imp.g_varchar2_table(422) := '6A3D5C3808EC9DE738D40E1B31E2B520388731569BC4E8F45F35CD4131B70031B36D2751B01A4A6B7C59AD11F81EB8E0D81425267184491C210E83612DA6D4C09BBD65B7E72F951A188AD536C7C74BA2FDD77981B2692C53FDB8E09F5DF4C679AE231005';
wwv_flow_imp.g_varchar2_table(423) := '3E26498C93D904D33846780F0370F7C0676C08DC21383203C0E138029EE7C1F73C388EF324FAC218032969ACA3AA1B00B02AC9E36C4E9EE32089229C4CA728EB16EBAC78D2C6670C65ABB3B685311A97AB358C3128EA1AF334C1248E314D22245108D771';
wwv_flow_imp.g_varchar2_table(424) := 'E0D9AF9EF518F2A0FB3E71D36295E758673956593E140365DD0C2951FBFED807AB4946D1C29338C2F97C8A3FDF9F238D42246188380AE039630BE0D830A05349D93608AB7ECCE7F9AAFB6F8181C68D000618FABDC3F9C8FA8C787518438500E71C55DB62';
wwv_flow_imp.g_varchar2_table(425) := '9DE7601C3007E8648D65917947F7F9F5660BC618AAA6C597C90A53BB1EA75108D7A15035CF7587BF0B00CA1E409BAE43D3765865FD7A4C62EFEBCD16795541DA30B67DD958667573B41EBB888300F334C6F97C8A591A23F4FDB7D402E0C40078948CE43A';
wwv_flow_imp.g_varchar2_table(426) := 'FB8B0077A18D8654124DDBA26C1ADAFC5DE768D68EAEE3208D429CCEA6A8DB0E17AB3502CFA3608703689CBE60E96FBCCBF50645DDE072BDC5C49EACFB533645477A24BCDA71946A3BA2FCF3B2465ED5D8E605B645896D3FD3DA3428EDD821704065BC23';
wwv_flow_imp.g_varchar2_table(427) := 'A4745D17691CE17C3EC79FEFCF11053E250CFADE28027C0668AB1329AB1A1BDF876769C8970663B0133A1C9C39700487729D83A9CB11238E0121844D57A576E92ACBF1F97A45E3E46CBF997AE026FABD311DA452B85AD3E1E96ABDA53E7B4AEBF1248E28';
wwv_flow_imp.g_varchar2_table(428) := 'C5CFF711FA37EBBF81EDF957F5F0B5C90B6C8A12DBBC405ED5289B0655DDA093EAA67DBD07986DC3395CC0F71C2461805912E36C36B5E9B2DE03870473E7FBFE785C0160FA6FB79FE86E7F9F3306D7A102C0F73CB84760003AA950351D8AAAB18FED1FCD';
wwv_flow_imp.g_varchar2_table(429) := '18C8751CC461006380BA6D31896304B6E21A5C01F7782E030C741100544D8BEB4D060048C200F3498A799A60962688437F1813046E52A4EAB6A59B2CBFB9C9F2B2425ED5C3E33E05C30D270402CFC53489703E9FE08FB39361F6F4A93FB711F7A3930A45';
wwv_flow_imp.g_varchar2_table(430) := '59631B15087D1FDE2BBDCF7D5B6E2CF146FC48701D179EE322F203000C9FAE9688027B02B634F7BE452AADC7400785DA9EE00120F2FD612D9EA5B1653E4904CD181BD6FFA6EBB0CD4B6C0B3A88656585CC7E3F84EEBF8B7E24B7DFDB9228C42C4D71329D';
wwv_flow_imp.g_varchar2_table(431) := '22B407B1FBDBE8BD3F4E6F99FF03B400FA137A68E7EA7DEF69271C1AC923D5E5B628E0B90EA220385A014022101751A0318942CC2709CEE7537C385DA06A1A1ABF6BDAA36CBC5293456526684CA4AC6B645E358C5EED32004555A3B4E33075DBA253EA68';
wwv_flow_imp.g_varchar2_table(432) := 'AC87EFBA984411D238C4FB9305CE6653245104C7D2D1FC08F90823468C18B12F0467F01C01EDBB48C300F334C1F97C86DFCF4E51F6A76DDB6B7F2A94D6A8BB96C6F66050B72DF2BAC2E60E03DC4989B26E50540D99FC34F6B47FA43DC8771D2A429218EF';
wwv_flow_imp.g_varchar2_table(433) := '4FE6389F4F6D4B42D856C8F3AEC7C72D00ACAA320CA800E8AD0C0F85D21A6DD711F552948882005D278FE60CC839B92E3100494C6628A7332A00D6598E7556584FE723DC70926C230D0CBAAE83E338342E697BED3DE52495426BFB4D4DD7A1B3E112C77A';
wwv_flow_imp.g_varchar2_table(434) := 'CDBEEB629626385FCCF0B7F3539CCDA79844213CE1C0E1B6DA1C4D80468C18F1C2E08CDBF590218922CCD374280096DB2DD83647DBC9E3150076C28046FB9C419705DC1CA8955268ADBABFEDC8E3FF29935777E17BB41EFF76BAC0DFCE4F713E9F218D22';
wwv_flow_imp.g_varchar2_table(435) := 'B85640BF1BAC770BF6F48F27E6BF1CBF00705CDB4BF1E1394F64000C8D8114558D6D5E621AC768A53C5AAF527006E6500F340D435B714EB1C917E08CA1931259591EE5B9A49DF76EA544C91B3A69DF636AA48D81DE71C2225F84FDC525DF82EFB9984D62';
wwv_flow_imp.g_varchar2_table(436) := 'FC76B6C09FEFCEE8868B23ABD7E04749481C3162C4887D4123A9C4442632A083CA7C86AC2CC118D076125951A0D97F32F02B283BB1D5498592B714C17B8F4BEB102D3CC4AE9BBDDD091F82E7BA98A7097E3B3DC17FBC7F87F3F90C933884631980E7CC01';
wwv_flow_imp.g_varchar2_table(437) := '001E5D00985BDF00DC7B4A149CC3F71C44818738F0E17B4F5339F7C63C7955639D15584C52B45D77B4CD90028B00800C81A6567C51D60DB436A89B16DBBC246BC73EDFF9C0E7EE8581C7E81BED8BDEE257708E491CE1643AC18793053E9C2EB098A488C3';
wwv_flow_imp.g_varchar2_table(438) := '00C27146FBDF9F1577C7865EE932468C7808B7D76385691AE36C3E1D124FAB86F4519D544360DC53D763BCC27ADCA7D00A21304B129CCD26F8706AD7E329ADC78EB564DFBDDE5BBFB653634FA5868FAC012087B134A4D18AD0F39FA426EF699AACACB0CA';
wwv_flow_imp.g_varchar2_table(439) := '33E4F50C4D773CFA6517820B2411CDC4F762BE464A546D0B2E38EA966C5CFB909FB702C680D0F7864C82DF4E4FF0E16481778B394E6713A47108CF75C753FFAF8451ED3FE247C003070ECEC9A3E57446EBB1D414BD5BB72D8410A8AD8DF63EB6ED3F0218';
wwv_flow_imp.g_varchar2_table(440) := '8028089046212651843FDE9DE1FDE90267F329E693047118501BE4850E63472D007A65791AD10B0C7D7770753A04BD2A3E2F4BACB62E8AB242FB04A7A587E0088E340A011884BE874ED21C7E61F301B2B2A47ED05B2B00C0105AC5EBC96C82DFCE4EF0E1';
wwv_flow_imp.g_varchar2_table(441) := '748E7727339CCEA6087C0FBE3B9AFEFC6A1883A347BC2E1E6E350ACE918401600C02CF45D749DAF4AB1A3006EB9C432AFDF60A00C6100554D8BC5BCCF1C7BB53FC767A82F3F90CF3941C58C930EC1B187AFEE62854DE910B00B296658C0D3EC6CE3ED6B7';
wwv_flow_imp.g_varchar2_table(442) := '77A06C01B02D4B08C19157159AF6782D805DF4375CE07B584C52544D4BE97E7981A6EBA0B4B2B6ADCDD19FFB39C118F9FDCF27293E9C2CF0DBE909DE9F2CF06E3EC7C97432986E8CF8C560867F8D18F1C260DFF5721782230E03041EAD5D4DD7A16C6832';
wwv_flow_imp.g_varchar2_table(443) := 'AA5524042CEB66AFDC961F018C31C4818FD3D9047FBE3BC31FEFCEF0DBE909CEE633CC27E95EE984C7C0A30B00B3BB607C43284641370EE00281E7DD7CB9EED0B3D94751AFB541D74954750B5754C3785C59D7346160236C8FF18631EB61E018035861C6';
wwv_flow_imp.g_varchar2_table(444) := 'F96286A2AEC1381B9E8F0B86AE93A406EDE40FB9843A42C0731DF8AE8BD0F7F0E17481DFCF4EF0C7F9193E9CCE71329920B14953237E7EDCBD470D8ED33F1C31E218B84FE8C640EB58DF429E2531CEE733D43638CB11028C018CDBF5B8936865077D6034';
wwv_flow_imp.g_varchar2_table(445) := 'FA73A017543BD6DCC8F73C44818FDFCF4FF1FBD9297E3F3BC1BB059DFCE330F88A89FDAAEF4FBFD8F9EF4F7FADC74F03E40CB0698081E721F27DC4618056D20F691F219DDEB1D6158221AF2885292F2B780EC5D67AEED3F206BE853808703EA77094D0F7';
wwv_flow_imp.g_varchar2_table(446) := '11073E02D743E07AD896D69D4F29A81FE486EB2D7E1963083C17B3840C2EE6698ADFCF4FE8863B3FC1D96C8A491C8D56BF23468C7825DCB7663E4C0944818FD3D9140029E7C3C047E0FB8882009BA2C0262FB0CD0D24D493C4DAC7427F92179C230A7CCC';
wwv_flow_imp.g_varchar2_table(447) := '27091693148B498ABFD902E0B7D3132CA62959C33FAA556E76BE8E833D7681BB4F7A4FD5D6D317D6D7D8F73C84818F240C5135CDA0BC548FFCE10CD6BADA8031583BC60A5959D1E99551DBE198E8ABD1380C708E191530015567AEE3C071049C9580D21A';
wwv_flow_imp.g_varchar2_table(448) := '455D439BE3CDE83F0976F3E79CC3F73CCC26345AF29B5597FE764AF47F1A87087D1FEE18F73B62C488D7C2906342EBEDF7346F51E0E3743A19D6E3D0BF6198BF5C2F618C41553743389A3E2027E598608C0D6AFF38F071369B0E1BFFF96286778B19DE2D';
wwv_flow_imp.g_varchar2_table(449) := 'E648226A73B88F39903D0369775C060076E40C182C817B06401B83562A30F678D1C6EEE89C36B4E1F62C401C06701CF16C34761C0688021F67B309A6099D9885A0E246698DA2AAC11807F0F26324F7619701F05D17F324C1EFA70BFCD7EF1FF0FE646EBF';
wwv_flow_imp.g_varchar2_table(450) := '1643A2E288112346BC15F4DE3200304D22A2D45D179E2360EC61EC6ABD05E3124C1BAA285EF164C66DC88F2304A220C0D96C8AFF78FF0EFFFB8FDF0626603E491F16FCBD00F62E008C31A4DF6406775980DD5E8E2338C2C0C734A5AC79CE19A49228EBFA';
wwv_flow_imp.g_varchar2_table(451) := 'A00B3586BCF5D7798ECFCB2584E056E0E603787A8CE9B70C171863F05C179324C2793B83817D6DBE87348EC8AEB76951DB91944EF6FDA8E7991660EC865EF21C07AEEBC2737AFB650AB438994EF0B7F353EB2C35C52C891105BE9D2D1D77FF112346FC00';
wwv_flow_imp.g_varchar2_table(452) := 'E8D5EC60307484C10D23F0EDBDC5751DA47188936E026DE7593CCF451A45C8CA1255D392957BDBD15ADC917B9FEE8DD58E5418F42D6FF25911F05C17BE4D148C029BF51204389D4DF0C7BB337C385B609E2648A210BEE7C2B96B0477F7BAFA597FE0A87D';
wwv_flow_imp.g_varchar2_table(453) := 'FF5D3C1B0F2C38E58BCF9218E7B329945228EA069C17073D9E3164CCB3CA0A7CBE5AC377BC61BCEDB9D0DF749E4BB1B9C690956EE47B98C6314EA753B20CCE6D0FCA26F6E57505A9D570DDC72A44FB185F611DB39290C22BE228C42C89319FA498A5094E';
wwv_flow_imp.g_varchar2_table(454) := 'A6294EA7139CCEA63899A688C37048391C3162C4881F09A42FB70D01067C4F0F40B47A003D3124B0735C4C62320D5A670536764DDE16854D55A53035A91494D230FA386D5BCE181C41F6C1BE47C9AA6914228D424C6DF2EB2C89B1982438994E713A9B60';
wwv_flow_imp.g_varchar2_table(455) := '9AC4087D3BEAF798C3980D417A2E36E3F90A00C1C95D2F8D71BA98A2686A2CB3FCE013A8812106609BE3B3B74418F898A5C98BCCE5F7B1C19EEB6212479824114E67536C8B1297AB0D3E5FAFF065B98263E38FA592A8EA66F8991DAB1BC5407699C2AAFC';
wwv_flow_imp.g_varchar2_table(456) := '932818E8A4770BA2F9DF2DE6242C09432451688D25287380B371DC6FC488113F186E6D6EDF1F117484401C86701D174918621AD384405155B8DA6CF165B9C697D51A97EB0D5C37836118F609630C946638C6499AAC8B057CDF4512D25A7C3A9DE06436C1';
wwv_flow_imp.g_varchar2_table(457) := 'D96C82B3D91467B329A696818D8200A16562698AE17B7B613FEFFF7CAD8C830A00AA48BE7E13775F10E71CA16500CAD914EB6D8ED0730FB69BED237B37450121C8D276BBA0B110A9D4D0FFEE7BE14FC52DCAC9716C74309913A551886AD2A2AC1B4CC208';
wwv_flow_imp.g_varchar2_table(458) := 'BEEB92B5A3EDF93060187BD45A43A91BEFE8DD88E1FB7FAC6CF8777F09FDB5F4B1919EE320F27D9C4EA7389D4F713E9FE2B7B3133B5E7282799AD09FB3ED811123468CF8D1618696C0C3E8C70343DF8331069338422725BAAEC3348D87245ACFAE958251';
wwv_flow_imp.g_varchar2_table(459) := '9C70D3529BB6E93A281B28B40F43DBAFC3FD3EE37B2EE280B4629338C2BBC57C10F7DD08FD286BA59F08B89B8D736B5AE1AE65F70B4CEA3E630B8023F4882AEF3A898B648DC80FEC4994516DB3D7AB234F80A26AC019C72ACB07DA3D2B2BEA87EFA4EB3D';
wwv_flow_imp.g_varchar2_table(460) := '1F6E4EE0C6184CD318522BB842601287785FCCB0C94B6C8A62E83FB56D87CE06FC48FB5D1B03A3BFEE47F5A7FC5ED1EF0801D7DEF09E4B5453E051FB639AC4982531A609F9FB2FD294DEE33ED96FA4FC478C18F18660BEE170F7D0A18E58510E03077118';
wwv_flow_imp.g_varchar2_table(461) := '60314D019005FA6292E0DD62866D51A26E5B346D87BA25AD96520A52692875333AD8AFC7FDB3F5EB301FD663EAF7F7AEB7BD38310E29BC8846AF13CCD264608DB96DDD3EE6BC4FBFD8EDFB3F6F0570D86E79D745ECDE602086C0F730492218184CE30861';
wwv_flow_imp.g_varchar2_table(462) := 'E0C111943AD7BFD98F7D79C600ADEC50D40C522BACB21CEB9C8A80BC2C11FA3E18F39FBD006076F4D018078C314C4D6C2929B2772C9B1A55D3A0AC1BFBBD455537B6F294439CA4541A4AABA112EDC13983E06208F009AC8144E0B9083D0FA14F6612A1EF';
wwv_flow_imp.g_varchar2_table(463) := '23F2FD815A8A43FA0AADFBE24B24498D78AB60B7BE8DF801F143CC16BF021EB1B7DC05677428638C210E43000CBEE7619A26A86C6640DDB4F4BDB5826D1BB7DE5AE1361DCE6E8CEAFA53FE7072B7B4BDEFBAD6D4C745600F6381E721F0BD613D0E839BB5';
wwv_flow_imp.g_varchar2_table(464) := 'D9756F627DBFFD5AEE0AFC9E47F0771F9E9701F07D08C6E10A079338461410032038A7377ACF518D3E0BBA6E1AACB38C041F4581ACAC00EBE4173E7D20E0BB109C83B97CA0E39328C4A99A402A854E2AFB5D0EA64559515141D0DA9BB1EB20A58494F4E7';
wwv_flow_imp.g_varchar2_table(465) := '76C13927AF014BF7C7418038B48AD23020D15F1820F23D388E33D0617DBA549F2275AC56C888112346BC1CFAD32FBEE9387B178C7338C6C0700ECEE8D0344D62729EB59BBAD61A953D94F54541D534A8EA961801A520A54467D3017B1656D8F5D8B5EB71';
wwv_flow_imp.g_varchar2_table(466) := '7FE08A021F81E70D05413F26DEA7AE0ADB12DE75AA7DD46AFCC226460716003B7D13C6C08CF9AABA216B5D6173EFD98D3A328E6E7A31F68D7F2CB431D04A412A20AF1AACB31C97AB0DD22884D21AAE5587F63FBCFE3A8E895E6BD07772DC9DAC03B39315';
wwv_flow_imp.g_varchar2_table(467) := 'ADB5A6CDBFAA91C77D0140D5E75000D8826117DCBE6F8E10701C0771E00F9E047DBFA9F7C8EEA702FA6B1A31E23E8CF7C6DBC66BBBDABD0ECCA3F26EFA937ABFFF508FFDFE6DAD6A5A34ED0D1B30B0036D6B0B809BB8F67E5DE59C0FEBF14D01405FBE4B';
wwv_flow_imp.g_varchar2_table(468) := '4EB4BD46EC9BAFE43E4BDF5BBFBF3BEAF772783EBE7C7803999D08A091BD778B19B431D814C560F57B089AB6C5729BE3DF5FAEC01987D6868223D2146074027E951E782F44E41CAEEB223286CC793C17F1CE4C2A55A7EAAB6C0466E9ACBE7AEC7BFEBEE7';
wwv_flow_imp.g_varchar2_table(469) := '22B0D5A623C4B8F18F3802C67BE787C57D3F9A5FAE10B853017CF59EEC77FF0ACEE03802BE71ED3ACB69665FFA434ECD375B00BC6F0138F06C0BC0B5EBF45EFBCC3DB3FEC38B7C5B05C0833F996103669CC3E54465CFD204E78B395AA98892690E4FD7AB';
wwv_flow_imp.g_varchar2_table(470) := 'DB0ECB6D66C51F0681EF623149A194B685075E2C537917FD86CC41FE01DCB626FA19D4BEEF3F6820EEF9A1EF569FBB14BFE370385CC0E18F19211931E2DB18EF9FB787BB22B15F033B2D815B607B2FEFC29AA709660B01CF85BCB51EDF9CC26F44800067';
wwv_flow_imp.g_varchar2_table(471) := '7C673DB67A002E20041FD6EAFD5ECDCD0B7A09A1DF437856C55C7F42150E7939CF6CC25EDDB6A8DA16AB3C3FF8B19BB6C36A9BA1693BC84E629E26F8FDEC14522B70C3C00CC73D9D896747DF7B37004D260807216E6E2CFA717FFB07CEEEF9DDDD71C0B1';
wwv_flow_imp.g_varchar2_table(472) := 'BF3F62C4CF8EBB9FEF5F69D3BF0F5F3BCFEE8B5E8CE708016F7714FBA1B796DDF3CB3BEDE5B7BC123FA90078A86771CB1380D144C02C89F17E3147D53464A2E379078E04024A6B349D0450635394B8DE64F8B25CE1AFCB2BA4713488E6387FB939F8DDD7';
wwv_flow_imp.g_varchar2_table(473) := '3C6ED0237E548CF7E6DBC6AE73DE2F855BFE297D4170F75EFEB6A5FB73B64C1FDABFBE15EB6B7FF12CD7F358BCCCEEC86C446D1A9338AEAA70B5DE20F43DB88E80D237E2B9C7A20F0A6200CABAC62ACBF0E96A85248A703E9FE27436856713FC468C1831';
wwv_flow_imp.g_varchar2_table(474) := 'E26DE37B2364BF1EEEDB746FBD4BAF59E87ECBE0E7072BDC8EB43B7E5F0F400C0039D4655585BFAE96087D1F8E700028FA61EEF1E6685B00686350D42408FC7CBD84E70A18A32911EF197302468C1831E22571DFE9F566C9FCB1369667C5AD13F59DFFB7';
wwv_flow_imp.g_varchar2_table(475) := '430AB05BFFF1A5D0F31337FBD98F3CC5F1F402C018989D79FE6F8539F82EA51F45818775966396C4888300BEEB583B00F39522FEE1A73550F6EF546D83759EC35FBA3030F03C0A87386F5B44817F6B5C6EC4F3E23EBAEBC7BDFD5F165A6B28A3A1756F82';
wwv_flow_imp.g_varchar2_table(476) := 'F53A99E5777F4687B4E0461C17BBCE73BBDFEFFEFA7E1C2F70ECEDE16BFBDC57B98A3B94FEBE07DAD7C28BF1E3CC4E04700061E0633149F0FBD9025553DB34BD125D5E1CB410F513059BBC00638C027BC2086918424A45768D0139368D787EF49B8A540A';
wwv_flow_imp.g_varchar2_table(477) := '9D753F94078E7BFE4C586519B67981BCAC50D50DDAAE83D22FFFBE686D86912739C457775F79528C783970C6ACE327B97EF682B5F1CC720CDC6328F0E0FBBAFB3F1FD88FCC377FF366709C02E0C615E8D6B75D706B85C83847E47B984F52FC76768AB693';
wwv_flow_imp.g_varchar2_table(478) := '70C4129DD4D814C5414593D61415BC61053A299146019230441CFA30D098A72938676301F002E80B5F630C64A750D60DCABA46DDB6AF7D69AF8ED536C7B628915735CAA645DBC9AFACA05F02DA6874920AB3BA6951D4358A8A2CAC47BC3C18C8716E92C4';
wwv_flow_imp.g_varchar2_table(479) := '98C6111C87C32533117CD30BEFAEF11A46168770B3D91FE7DD785C01F01597F7467E162FCA00F416B581EF633149519D36504AA3950ADBA2B437FBE10C402715F2AAB6568D14BDC8AD156314BC8047F008101D49A2CE4E4A9475834D5E22AFAAD7BEB057';
wwv_flow_imp.g_varchar2_table(480) := 'C73ACBB1CD4BE46585BAAEA900D8A3ED752C90EFB944DBD1E6BFCE72AC322A4E46BC2C1898CD9517505AC3111C71E893C18C65D2BEDF02B813A1FB46369F67C76EABEB010AE0E177D7DCF3ABAF1FFFADE2A805C0B72AD0BB7DADC0F3308D23748B199456';
wwv_flow_imp.g_varchar2_table(481) := 'D81439AED61B049E87B6EB062BDD47070581E8E69E66EE2D8203CF83C3C9B33F0C7C446130383AFDCC6139FBF6E1EFF61FEFFEFA7BCFB5DB436E5A0AD868BA0E595161B9CDB0DC66D816C53E2FE1A7C4B628ED665B605B56A89A06F2156877AD0DDA4EA1';
wwv_flow_imp.g_varchar2_table(482) := '6A3AE4658DE536C7C56A8DEBCDF6C5AFE557C7500038025293189A332A02C86A96269988407D84BDF91D4DD6886FC03CB0B1DFFE83CF7D25AF8A579991738440140498298DAE9338996EB1986EB098A428EA9AFC9ADBEEE0D351DDB6586539841080651E';
wwv_flow_imp.g_varchar2_table(483) := '8410F4C1DA49CF133F69010060D894FBAFFBC62CFBC5E7A9D909DA866D6863B0CE73ACB619965BFABECE0AACB21C59399E2ECBBA4151D5C8AB0A7959232F2BB45DF7E2D7A1B4462B25AAA6455696B8DE6CF0E96A89CFD7CB17BF961118CC69F2AAC23A2B';
wwv_flow_imp.g_varchar2_table(484) := '70B5D9623149B1984EB0982448C3700899E983651E78300C0E68631130E23B387201704FF3E59E0DC5110261E083710E6D0C4EA61B2C2613CC27D4AB07804E7EED93FF58D44D8BD53643D74968A5E05A16C011028B4902C63842DFB3C1113F277637FEC1';
wwv_flow_imp.g_varchar2_table(485) := 'E77A10E259BB62C6C00587805D5CFAFFBB8FB5A57D0E69730DD6598E7F5F5CE3DF1757B85C6DB0290AACF31C45551FF705BE41B49D1CD8913E97BCB99306F912E8DB3375D3222B2A5C6F327CBA5AE29F5F2E5EFC5A46D0A751088E759EE37AB3C5975582';
wwv_flow_imp.g_varchar2_table(486) := 'DF4E4FD04A095770F8AE0B17E25608D9FD8F72FB57E30CCEA1F875DEB3D761001C8188FB087C0F82339C4C539C4C532C26A95D9C483C7628AAB6452B25B645451F22D781E7BAF0AD377FE8FBD0263EE22BFAB1D09FFEB5FD52F63D9552DEEA2972CEE1C0';
wwv_flow_imp.g_varchar2_table(487) := '0CB90DE6006B4B03DC7A8E7556E0E3E515FEDF7FFE1B9FAF97D81625B645F9A49FE7CF026D0C8C654AA870327B995F1D0B4A6BB4DD2E03B0C5A7EB25FEF9792C005E0B9C3124D176484D2DEB06AE23304B624C92D846D31A407CFFB16E1DBABEEB753BE2';
wwv_flow_imp.g_varchar2_table(488) := '57C6D10B0073E786BB6F33A19327DDC9A1EF0D1901DBA28423388CD1A89B16CA1AFD7C2B34E75BD0DA406B850E0A5949279CD0F7218480369672E3027118C0731D782EB103BBF811F401775FF3CD495E436A0D65E32B296848D17FDB49191CFEECCE9F21';
wwv_flow_imp.g_varchar2_table(489) := '03CDBE00603B6143561BD12711DAFF266CE885EB08B8C281E308AB38A66BEAA4445696C8CA0A7959E15F5F2EF0D7E5352E962B5CAFB783C2BC6E5F9EEA1E713F0676C8684845ED80A6ED6C38D788D7409F1F229546DD75888200932842E4FBD05AD36873';
wwv_flow_imp.g_varchar2_table(490) := '1C218D220AA1B10975DF5BA7CC63327547FCB2780606E06157C0BB109C238D42BC5F2C608C81E09C3695AA46233BDABCA4823AF0A4D449896D5EE28B58511A9F52D09AD2081793149324C2348EBF2A007E4428A5AD3E8232AD8BA641553728EA66D04DD4';
wwv_flow_imp.g_varchar2_table(491) := '96FD903BF9D65ADFB4027631B400EC62E2D97C6BCFA1B8CBC0F7107A1E02DF436275137118803336146555DDE0F3728D2FCB15BE2CD7F8787185BFAE96586539E939BAC3B51C2346FC2A30C6D04454D70106586E33FCFBE20A5A1B646585778B39DE9FCC';
wwv_flow_imp.g_varchar2_table(492) := 'C1D9CDE794B9ECBB3A26662704C611C111F7E1D95A00C6981D26EADB3729E7029338020C25062A65B302361B145585A6038CDECF2570179D94D814E40F9057359456D0D68DADB3FDD7C8F701FCF863824A2BD46D87ACAC919525D659814D9E639D177402';
wwv_flow_imp.g_varchar2_table(493) := 'B7E2B2AAA122A0B35FBB62C05B60B480709B691DF81E429F5A337110208D43A45184691C619E2658A814827170C12C7DADB12D4B7C5E2EF17F3E7EC1FFF9EBF3A0FADF64254ACBE2283D8C2FE4CA00002000494441542E3E23467C0F52291890C5F9F586';
wwv_flow_imp.g_varchar2_table(494) := '431B8DBC2CB12972346D0B47D06149C380716AA53E0476FB5F00C64260C46DBC7A528E107CA0BA4E671354758DCBD51A4918C27773686D20F9E1A3529D54E824F5A19DCD16CAF660B531609CF4008B697AC457F47C504AA36E5BE455856596E372B9C6C5';
wwv_flow_imp.g_varchar2_table(495) := '6A838BD51AAB2CC72ACBB0CE72E4558DB6EDD074722872BE8521250B184EF87118601AC758585DC6E93485540A4270DB4AE1D6D6964E279FAFD7F89FBF3EE1FFF9EF7FA06E2C43D1B6E3C97FC4883DA07658BA4E2A1455858BE506CB2CB74C6984F3F90C';
wwv_flow_imp.g_varchar2_table(496) := '9C31B842C0788FD9CC1FE96A37E297C4B316005F0555DC2332EBB3ED499006A47184F7270BFC5FBF97F01C07579B2DAED65B7432BB35DA76D8F518544D83D536A74C68C781EF12DDADB541E0B9083C0FBEE71EF6828F0052D453AB422A85C23AE9953545';
wwv_flow_imp.g_varchar2_table(497) := '28AF7352D56FF2821880EC360350372D3A2921B58631DFDF80777D023AA5D0B49D2D08180C0C89C5EA067945EFDBE7EB3584E083C8302B4AFCEBCB05AE37996D3F74C33CF38811230E439F8D22A5445935B85C6DF0F74F5F0000A7B3294E67139C4E2788';
wwv_flow_imp.g_varchar2_table(498) := 'C2009EE3C075049CEF269F92D1DA5DDFFA11BF2E9E9901B81D52416CD43D69819C81838131A2B8DE9DCC219582EB92E8ACED48683678983FA90068B1DAE6904AC11102BEEB22705D30304C931848F0BA0580A1D644D375A89B1657EB2DAED61B5C6D36B4';
wwv_flow_imp.g_varchar2_table(499) := 'E11725B67989AC2C51D4BD06A0BEA501E8A41C988EC7A05F10945468580B6DA800696587B2AAB1CD0B2CB30C5F9664B1BC3B3E59350D9D52365B346D67C5868F37711A3162C4D7E835013006A5654519038ABAC6EFE7A7A8DA1606C05C6B44818F880578';
wwv_flow_imp.g_varchar2_table(500) := '4CF2F9AE68F0AE607BC4AF87176801DCC909B8073D0300004914E1FDC99C665F5D076D27B1CE0B5CAC9CA147A6F561B7ADB60C805264192C38A7F00DDFA3EA9901C12B6EFE007DF03BA950372DF2AAC6C56A8D7F7CBEC03F3F5F60B9DD222B2B646585A2';
wwv_flow_imp.g_varchar2_table(501) := '6E0691DF3005A08842D45A1FC49450BC328DF3356D87B26EE0D88900CF75E03A0E5C3B4AD9A72B124B51A3A81A345D0BADBFA137183162C4A3A18D01B4863640D934B85C6F50360D2E561BCAD530C4580A4E81419EFB9D75EBAB83D7510DF347BC51BC88';
wwv_flow_imp.g_varchar2_table(502) := '06E0A1CDA0EF3FF737681CF8E0AC17E619B2F55D6F70B9DAA06A5AD44D03AD0E6701C88C4502A811FA1EA64982599A6012C748A210ED2B19B3F4F6C775DB21ABE894BFCE72FC75758D7F7EBEC0FFFCFB13AEB75B14D64DAE790607396D0CB432C037026A';
wwv_flow_imp.g_varchar2_table(503) := 'FA35A4170DF6455B3F61A047B1DF881147833634C2A75B4A6ACCCA1A9C3378AE83C0F31087A1FD0C32B8C281E738E09C81337ECBDD1378781E6B2CD67F5DBCA008F0BE9BECEBDB927306D771608CC1248EF07E314751D68001AE375B5C6FB6B8DA6CD074';
wwv_flow_imp.g_varchar2_table(504) := '12E689462A8CD1F3F56370FDA9F6A5D1A7B2554D8B6D51E272B51E8A1EB2685D615396A89A0E9D94D08FE8ED3F07FAB7DA6803CD0158C1129DFA5FE592468CF8E96140F3FCDA6818CDB02D2A7CBE5E417041F6D225697F9AAE43E4FB08031FA1EF7D672D';
wwv_flow_imp.g_varchar2_table(505) := 'BB27B975FC10FF7278D12980BB2DA7FBEE4FCE398DB73086348AF06E3187D606BEE7E21F9F2F60ACF25C290D050DA30FAF6099A5B285A0AFBB55F34B81340E15367981CBF5061F2FAEF0F1E21A1FAFAEB1C90B6CB202DBBC44DDB6C35CFF6BA23717E959';
wwv_flow_imp.g_varchar2_table(506) := '983EFE77C48811CF03630C34FD025959E2F392A36E3B1435996C49CB22CED204600CBEE73E601B4CB82BC936BB0E5F237E09BCC218E0C39A00CE395CC6E00803C411B4A1CD7F924430C6A0A82A7C59AED0B61D8C0134D493DA58540408084E6141AF6100';
wwv_flow_imp.g_varchar2_table(507) := 'D84A89ACAC71B5C9F0D7E5127FFF7481FFF9EB13FEF1E90BCDF3770AAD94436FFF35EC6377316EF82346BC2C763F73DBA242D574B8DE64D89615A452600C7038AD5FA1EFC298E8FB0F7A6BB11B1D037F45BC6C01F088685A4EB99700488D9F46210417F0';
wwv_flow_imp.g_varchar2_table(508) := '5C1797AB0DE6698A4914434A32C531C640ABC37C0218631082EFD8E0521BE0B9618C19C273A45256E7B0C65F9714A2F3D7D51217CB35AED6DBE1CFFF6C9F4D6ABD90DD30E77C1807FD112C989F0BBB5A8FE1FB2BE4010C63B742C0F75CC47E80491C629E';
wwv_flow_imp.g_varchar2_table(509) := '262F7A1DBF026E6C97CD105BDE0B760F2DA27B83AFB2A6F5320E283A58700E65CC902E18FA3E59783BB7ADCE1FFA8CDD4C6EFF6C2BCE88FBF08A4640776FB07BC6031983EB08049E0BAD7D4CE208B334C1C92C2517BAA284D40ADD810500670C8EE0647F';
wwv_flow_imp.g_varchar2_table(510) := 'EBD187E4BB719B4780368654F64D83AA69F0E57A858F1757F8C7A72FF8EBEA1AD79B0DCABAB935A3FFB3C1751CEA57FA3E8534713E449EFEACE8A41C44A8ADA464C0FED72F09C1397CD741E47B9844214E66137C281790DF107F8E381CDA98C1D343693D';
wwv_flow_imp.g_varchar2_table(511) := '444297750379E0BAB58B564A6CF2029F84A05C874EA2B30660732B6E9E26D123ACCEBF5514FC8CABCF881EAF53007CB5B1B1FBF5008CC1110E9847FF338D42CCD31827D30951E34AA16C0E4F99EB4FA19EE3C0775C2A005E8201D086D4FE45894D5EE0F3';
wwv_flow_imp.g_varchar2_table(512) := '72857F5F5CE1EF9F2EF0F97A85A2AA50D6F54FFDD17385438E83498C2808C8C844D069E56745DDB4281B5AFCABBA41C118D924BF4201E03A0E02DF431A853899A668DAEE458ADF5F0D5A6B5BEC51A1B7CA721863D074DD710A80AEC33ACBD149D2037492';
wwv_flow_imp.g_varchar2_table(513) := '84C29D929621A5C0B5C0F3003C7CFABFEFFF8D5E013F377EE8D5B667001C41A7C3D43200A7D309AAA6415937D8E48787F8F45499EBDC2402BE1803D0B5D89615AE36193E5FF705C0175CAED68355F1CF0CD711888300F334C134890757C6EFCE33BF6114';
wwv_flow_imp.g_varchar2_table(514) := '558D6D5922730B08CEADE74287EA85939229F8C941E87B48E310275D0A630C7CEF875E0EDE247AFBEEDA1A7501064D4BD33EC740DB4974B2C0B62871BDC92D03409A211820F43C9CBC11ABF3112F8FD7FDC4DBBED8B74283FA8A943106AECD8D3E8031FB';
wwv_flow_imp.g_varchar2_table(515) := '679F765AE78C46005D6B72E33CA30680B2E06994A76E5B6CB2025FECC6FFF96A897596A16A9A83DB19BB60B83DAB3F7CE7F4DAFAD602CDFDEBC183FC39B5068CB1215930F45C9CCEA778BF98E37C31C72C89C964C8F9B919804D5E20C85C380E8701D1B7';
wwv_flow_imp.g_varchar2_table(516) := '65FDF211BC9C73B8C281EF7A8843B29EE68C721E461C174AEB9B564FD721B2A7F1C0F3B0CE0B544D83AAA602E1501863A0AC83685E55B8DE6E699CBA3FD03020AF6A44BE4FAE814100A0D7DC7C3FFA7C64017E5EBCA9D5D6E02619B08FA37DEA040065DD';
wwv_flow_imp.g_varchar2_table(517) := '938986784606A0F7F6569A5CF6D679812FCB15FEFEE933CDF9E7E577837B1E8BE17509B252EE37565790DBA1B1EF5FBF38357681EA5DFC9E837D109C218D422C262916D37488377D7732C73489072F86B710CB7C2896DB0CAEE38081414A8DAA6E9139C7';
wwv_flow_imp.g_varchar2_table(518) := '3909EE03F2DA10005CF2C2600CBEEB522AE788A3426B33B8754AA59044219230C4248E70B9DA90D5F76683B6EBEC98F4E16B9A360675D36293171476C618B520BA0EDBA2C4D96C8AB3F90CBEE7D9E9271B177C1FEE31117A50B4F8A0E9D0630F55378FFF';
wwv_flow_imp.g_varchar2_table(519) := 'F5538D05C873E0F50B80E127CD1EBC4FFA20206D6813ED637D9FA2566596017004056908C19F4D854E0580422725EAB6C13ACBF1E96A89FFF3D767ACB21C45555B87C2A7A36F6D789E03CF75ED8983BE336028A04849DC5875B206A0C904F0190A00CE38';
wwv_flow_imp.g_varchar2_table(520) := '9228C4D962863FDE9DE1C3C902EF4FE7F870B2C0248E0613A69FB90F1DF8D48725ED4A8B6D51BC4AC1435E1B5603E3D0844D1C05E43D3FE2A8E80BEA7EDA238922245188348E11F93E1818AABAC18615F467193BF8F3678C46D5500A675137E83A89A625';
wwv_flow_imp.g_varchar2_table(521) := '4BF1BCACA09482EFB9984F1208CEC10C8761DF2C016E702752F8BBD7F7D51AFAC835D57CF337239E09AF5F00EC01633F484AE91BCFF9273CDE0D0340A764873F9F08D0680329159A46A22CA900B858AEF1EF2F57A408DE89023D04FD081D670C9EE320EC';
wwv_flow_imp.g_varchar2_table(522) := 'E93EEB0CD67F6700945524B75D473421638001A4A4890A321BD243D1750C70CE100701CE6653FC717E86DFCF4EF0E17481F79601F815C03943DB7536D9B140E079AF5200F46C0B008CA4FFCBA2A7E193308423C8CC679DE7586E336209EC68F021300668';
wwv_flow_imp.g_varchar2_table(523) := '2CA3075468BB0E75D722AB6AD45D07CFF73049129C2F5AB8BDF6C901CC4ED17DF00168970138B4007800631BE279F0860A807E72E0266CC6D00E75F0239206E0467D2E0407E3CF53007492DCFED6598E2FCB15AEB7198ABA86D40ACAD899E03D5F0BE737';
wwv_flow_imp.g_varchar2_table(524) := '3DFE3808108701E2204012516A5F128588C380120F3D17BE15D8E91D06A08F1B2EEA067955A1286BE45585B26E8674C16330130C443B879E8B340A10053E3CD7F9A9C7FE468CB80BCF71908401948DDEAE9B165A6BF89E876D6ED33E8B029D524FB63A97';
wwv_flow_imp.g_varchar2_table(525) := '8A18018797B8761D7CFC12C0E51C524ACC9218B334C12C89E17BDE6089FEB802E015BC3A7659889F5C20FD92784305803D8D9231B63D993EED4620CA99C171041CE7260FE039D02985AC2C71B9DEE0D3D50ACB4D86A2AA21A53A88CD60C04DFB42084C93';
wwv_flow_imp.g_varchar2_table(526) := '1867B3294EE7532C2629A676FE771247C39F711C01060CFA8941A1DC9042997216B6B85A6FB1CA32EA256A739CD604031C4720F07DA461440580E3FED494FF881177E1BA34FDC2191BDA038EE3208E427CBABA86B8BA46DDB6D43678A2D5B952942A6AB4';
wwv_flow_imp.g_varchar2_table(527) := '3507721C48A59157357E3B3BC1EF5291268573B842D07A78EF23DD310DBE6F8964DFFCCDE3F1C8F0A25D8C8EA44FC39B2A00000C23723D03F0A416001804E370B880CB9D3D2AE0FDD14A89ACA828E0E7FA1ACB6D86BCAAD1A903A9FF7E8241D008E32C89';
wwv_flow_imp.g_varchar2_table(528) := 'F1E174813FDF9FE3FDC91CF334C5624249877D6BE0E6B5D92980614699B4091F2FAFF1F1F20ABEE742080EAD0DAAA605AAA7BF7E1AE9A4D9F324BE6100F833312E2346FC88701D073CE4087C8FA68F5C62046669044770346D87E5C6B6030068A30E3EF0';
wwv_flow_imp.g_varchar2_table(529) := '4AA5A01B83B6EBD02909A9D43025D04A49EB461AC3F7480C2ACC778AF19774E9BCF35CBB4A859BA3D2CE1B33160207E1CD1500C71900BC79B09E05603608E811929847E16E65DA7537233A17AB358D00B544FF1D02C11842DF23AA3F8EF0FE6481DFCE4E';
wwv_flow_imp.g_varchar2_table(530) := 'F1C7F919DE9F2E304F132C26C983FD75AD0DB520AC35E99088080C0AE29EA6EC6D8B9FA253186C51358D449AA75670231E89DB6FF2B856BE1E7A360EC0103EE6B92E7CDF4351B7C86D2898E7E6D6308A52FE0ED1E3686B932E1586B8EEBAA5E7887C1F69';
wwv_flow_imp.g_varchar2_table(531) := '18228D22686D9084D43A0470EBC0F0D6ACB94746603FBCA9028031BB510B0666FBF54FBA3F0D763CD9ED68E133ED484A29127FE525969B0C795951A0D19ECFD7CFED7A9E8BF9242535FDC9021F4E16F870BAC0D97C8A591C210ABE2F30EB47C00CE77000';
wwv_flow_imp.g_varchar2_table(532) := '245180B3F974A00B39CD098171A0E82D4CABFAA0BEA431E47EB82D4A5C6D3694BFE00844E128437B798C85D78BE181058A5B43A6C8F7A1B5C6FBC51C5D272184C0C59222C1AFD65B6C8B92269F0E650B0168438C40D3766000AED61BFCC3F7A08DC63ACB';
wwv_flow_imp.g_varchar2_table(533) := '71369FE27C3EC33C356FD393E3BEF7792C06BE8BB7F413A60DCB8A5584AD529FC205F48242AD31F4E18FBD30F615696F5BBCCE735C5BFABFE9BABDEED17EF3E78C168EC524C51FEFCEF0BFFFF80D27D309CDD84F52246108DF73EDACF7C3E0F4A6823386';
wwv_flow_imp.g_varchar2_table(534) := '240CC9B0C7F7AC2B9C352FD206CB6D4616C64D03ADF67F9328FFA0455694B85A6F11B81EA220C06C1C3D7B158C4BE3CBE0A1D5493006DF71C10306C119DE9FCCE1081A979DC4315CD781546AC88D30461E5C00F4016400B10197EBAD4D57AD9115259AAE';
wwv_flow_imp.g_varchar2_table(535) := '83C3050986FD5E33F02A72BF3DF02DBEF6E7CD503936DE4C01405B3D6D7E82F709724F27EC7B6F016D95F8CF452149A568DE372FB1DA66686C28CC7ECFC7ECE40283E7B83899A4F8F3DD39FEEFFFFC1393384214ECF4D61F49DFB1A19002E22844E8FB58';
wwv_flow_imp.g_varchar2_table(536) := 'A42942DF87520652924EC01883AA6EC01807B0FF22D433009BB2C4E57A8B380C319B2447F1431F71084616E059F188CF1E3100244226DD8D401A85389BCF10F81E5A29B1B69301BD68B73BF0728C31E824B5FA1893D06683A2AA70B15AA3A86A70CE9146';
wwv_flow_imp.g_varchar2_table(537) := '2126493CF888C09897EDFB1F82C75CDFC8047C136FA60000003036D8F772C61FBDC97D0BBD0A57A91B7AED982D80DDF642D749345D3778821FD24FA714371AE99B2531A64982591A633E491007013C3BEAF7D8D9F2C16AD9FE9E0B01D8BF9B76E4DA57D4';
wwv_flow_imp.g_varchar2_table(538) := 'B5BDEE0EAB2C3F784AC2184301254D8BBC2A513635DAAE83D6E387F3B97177FD1B264EC785F15531787700D09CAC9839E3705D17676585DF4F1728AB1A9C316CB202EB3CC726C7B056F55E1DFBA03FE4B46D0763277C2E832DA6D72B446100800D4CA236';
wwv_flow_imp.g_varchar2_table(539) := '069EB54817D62F6457C723951E920EA5BD9EDE56BC5FFB8691EDDDD7BDF3DA875F03B7124105A7E7DCFD3DEFBFF659837EC228F563E2ED1400B65FCD39DFC9917F5A756A0C29E195D2348EE76898236E48A67F6C4BE3759D8294F4D57BEFEF0347084481';
wwv_flow_imp.g_varchar2_table(540) := '4F96BAD314D324461285083C52143B5C1C4DB4E308419A80D9145229ACB31C9F7DFFE0F7DC185AB89AAE236153DBA153D6CD71C4889F0D773FDBDFF95CD2586F6FD16C304F63FC767602C6489BF3E96A09EFCA81D27AB0EE6EDBEE60C6521B12001B05E4';
wwv_flow_imp.g_varchar2_table(541) := '6585CFD72B300055DDE0C3E9099AB6056010870142DF47E833302E860D5E294D39064D8BAA69D0B4DD6042D476347120A5351533B72DC6B93DC8F51B7ABFC1BB8E03DFBA97FA9E8BD07387DC04D7A1890977C8827924769C0E4781E0D7783B05007AC53E';
wwv_flow_imp.g_varchar2_table(542) := '5589DC8EEC3D9501505A93FB9635E439A60FBEB67DB76E3703DEBAED1DE262E8088130F0314D622C2629264984380C10781E3CC719DE9363C071888EEC45805F962BC4810FC10E9FDB974AA16DC909AF6E5AC84EFDF4A9873F26CCCED788E7447F7BDF1E';
wwv_flow_imp.g_varchar2_table(543) := '93BFFF332A38071C62386749020686240C30896378AE03A5698C4FD46417DC49091CA0C7014085B7A253FAB6A43C8AB2AEB1CE8B21B5D0F7DC2153804676B975625568A5425135D81625B645F9FFB3F79EFD6DE45AD6EF1F9523A364BBBBCF3933CF4DDF';
wwv_flow_imp.g_varchar2_table(544) := 'FF1BDD3BCF9969B7ADC0543900F70550252A5AA2E4B60257FFD85432AB8A44011B7BAFBD96110FAB3451B8AEB5C748A3B39E03C1BA9772945F1F16FE7D8D92D0F388037F14354BA390240E914A112885B0C423B39BF7EB161C8380EB781501C048D9B815';
wwv_flow_imp.g_varchar2_table(545) := '34DF76071C068D6DD966C17BC6714D9AAAEB3ADA4E97015E72800C4620B5F1036FBB8EAE3F9CC8E3381691EF334B62969394591293040181FFF292B2AEE3904421BEE7E1BB2EFFF5F53B511060D91682A72F1D03094967002AEAA6A1EDBB17CDB81C71C4';
wwv_flow_imp.g_varchar2_table(546) := 'EB8399DD7E289F2F4CCA5B7FEFD8364918F0693E6591A64829C98A8AB3D516A5A0ED249668389441A314F4464C2D2B2ACAAAE67CBDE1FB6A8D42E1B90E93589B74798E431CF838966DFC4C74209F975AD9F47CB36593655AC530CBD915A5B66BAF1BCAAA';
wwv_flow_imp.g_varchar2_table(547) := 'DECB1AF460F805C33CEE192B76CFCC3793588B974D9398BA4DE9956E4F16E8F7C773E435E9E2BBDEC7AB6F6E7C31D4BE7E22D7EBADE15504008F856D14AB7CD7C3731D1CDB36A4B4C3200D31A63235EEC0F39ED5E77ED7EB4B33F0B579D1F306DEE05DE0';
wwv_flow_imp.g_varchar2_table(548) := '38B64EF9FF44F7428136F0B16DA56F58538FD3F2C3C25CCBD35E53191F87B6DBF71B38DE88471C711363C793AD458396D309FFF1E5134A29CE561BD322E86831B15667160F26D42A85520229156DDBB3D9E5FC79768163D95C6E772CA729CB698AEBB894';
wwv_flow_imp.g_varchar2_table(549) := 'B5CEDE157573255D9CED6500AA4A9704DA96E6AE0C00D753FF8E6DE39A0C40D934E455C5362F58ED322E365B6D9C1485A38B621286C4A14FE0FB84C65A5967119EE224BABF6BFCD8F3CF9B0A002C4BE0BA3681AF6B458EFD3CE9DE5EEAC5A8AA5BCABA26';
wwv_flow_imp.g_varchar2_table(550) := 'F25F3600D025862BF6ADAEFB1FFE7A9610382622F71CD704003F89A56B04926C2C7D730D37AC2160C2A09BF03828A057BAD4D2F41D6DDFD3CBA70711471CF136717F26E0AEB2DD50EE741084BECFE96C0A0AE220E0BFE37302CFC3021C2B23AF2A64591D';
wwv_flow_imp.g_varchar2_table(551) := '6E22046329AEE93A56BB1CCBB2A8DA96C576CBD290021DDB262B4BB2C2A4FAAB9AA2D68FDA7886D44D4BD37563FDBF333C9F9B1C80B19CBBF7C81C07DFBDE200049E16480A3C6FCC0C4CE28859A245CEE669AA950C5DED76FA18255771CD75F638FFBC99';
wwv_flow_imp.g_varchar2_table(552) := '00408071EE73084C5ADA759EB7004A29697B6D9959350D4D77787AFE2E0C1C835EBECC8E774813BAEE10009932C88B9DF1DEB13037EA58A7D38180AEDF09943437D2A3EF203596449AAE1BBB208EA9B8233E166E8EF7BBEFDE6181144211FA1ECBD98430';
wwv_flow_imp.g_varchar2_table(553) := 'F0399D4FF13D178476FEEB9542A24CA7CE33CE4A295D12E83AD65946D5345C6C77CC9364EC0AB02CC1262FD86439DBBC301B9BA17CDA5F75008C5D007BC66D7BD7BDDF05305CEB9019D0AC7F71D5056082836912334B636649C2E97CCA1FA74BA402C771';
wwv_flow_imp.g_varchar2_table(554) := '50E84C8987FB83AB14776CFE3FF6FCF3CA0280E1C3B8E3A618B4EF1D07DFF7F03C0FDB769E457A934AD1B61D55D350D626007841619A41BE531AF3A2E7775E89510C483F5EE63C1F3ADE78DC4189616CDF792213C0FCA9521871A12321E7880F0AF563A1';
wwv_flow_imp.g_varchar2_table(555) := '1A2104B6B9C1F5BC6793869A1057B71D55D352D6CD780F75462C484AA5C9CC07726B7A29C94BBDC307C8F2925D51B2CD7384106CB25C6B1364F938BFFD1DF7F1248E98ED62A6494651D728A510A615BC696364DF2384E62E0D92E6FBE5D1FBE74BF1A1E7';
wwv_flow_imp.g_varchar2_table(556) := 'A15716003C0CDBB2F15C97D0F309860CC0333800BA2DAD1B656E6BD39FFF52B0869ABDA9DBDBD6F3BA16A494346D475937E4C6AEB7EF9FDE0BFC180CA4BDAE9754A6A6D7769D362FEA4DB7C493640CF7489C8E3D66138E38E263E306F9F9BEF941088405';
wwv_flow_imp.g_varchar2_table(557) := '9682340AF8B29821A524F43CA2C0C7F75C3CCFD56979F3788985ADED7BCABAD6BE0508F2AABE2E60F6372D9E5DDF53D40DC2F0228480AA6D596719CBE98493E984E57462ACC6B52DBAEFFDC8DC68FC9FC6070C04DE4C003094007CD721F23DEDA6E53CCF';
wwv_flow_imp.g_varchar2_table(558) := '4DAE973D4DDB509415795952378D66AABED439EF652D74BADEE63925FB3100A86A8AA2A279E180E5DAB19416FA68DA96B26E4D6D4FA7FA4647C627BC9E4EF189B18C33962F5EBBD2D81147FC2C280508D45DC4F51B18BAD985102451C4A785C2378BBFE7';
wwv_flow_imp.g_varchar2_table(559) := 'B938B6836D487B4AA10DBC5E2200E83A0AC3E407C676E6BFBB7D5773B5EA51B7A56A5AD6BB9CEF972BBE2C176C97738ABA368180EE62F01F5112B8EE3178487FD3DBC69B090000438073097D930130EA548762585087FED5AA69E85EB0043066001CDBB4';
wwv_flow_imp.g_varchar2_table(560) := 'BE3C2F03D01BFBDEA2AEC9AB8AAA3501C04F18B34A29BA4E937ACA3103709882E1004B0CAC5F6724301E0380233E36F6320042DC2BBF3B94FE40670002CF65314949A350DF4B432A5B69BF8EF50BDD570377A96E35C1404AF54BB43BC6F3685AAD57B0CB';
wwv_flow_imp.g_varchar2_table(561) := '701C9BC0F7D8E6054555D3B63DAAD7EA85932882F0112F3CBC4F0A101F4F1EFB75040037A5226FA666CC0F6DDBC6F31CC24067003CD7C17E46FF7B6722C9ACACD8152555ADD5E95E0AC21238968D674BDC310830929AF06499CA5E4AEAA6212F2B3679C1';
wwv_flow_imp.g_varchar2_table(562) := 'AE28C88A92ACACF03D778FA477586A7D3F65D8761DB91106395B6DB47D71DD1C7EF30BC69EE2C077F10612E3310038E2C3E36136FACD2059BBF5E9A95B4A495157B45D8B543D0845AF7ADA5EEFDC1B2342F61C13A15E297EB567D7781E60E6E81621A0A8';
wwv_flow_imp.g_varchar2_table(563) := '6A02D7C5B66CCD5412603BDA2C0D149EEB6A9D01F77A36E0E67BAAD7FF8FD794FC3A02804740008EADB5F0A52F097D1FCF75C754F2216494CED4B7B68566B6E655A5D5B55E084306C0E54AECC273F5CD2BA5A4570AF5841B53CB6F36585681E7B8ACB619';
wwv_flow_imp.g_varchar2_table(564) := 'ABDD8ED56E47126A41A0C0F39EA50DA04C7F7FDDB4ACB6195F2F56FCCFD939DF2FD76445893C702211680110DF75898380D0C87B1E3300471C6130ECFE47F9C01FDF1BAE6B338963BA456F58F436AE63E3392E97DBDD48DA2BAAFA279FFCDF0F2DE5AEC8';
wwv_flow_imp.g_varchar2_table(565) := 'CB9ACBCD7614F9110012EAA6D3DD03497C2B00B8136336E0E384016F260000B0CD02325AD6BA0EAEADAD8125DAA3EE294180AE2535ECF2926D5450D635DD8B060016B60520701D576B593B36AE6BD375A07AF9245FBD4EF6544D83944AD7FB761997DB8C';
wwv_flow_imp.g_varchar2_table(566) := 'D536D3D72DB44BE0A118787D03D37895E57C3DBFE0BFBE7EE3FB6A4D565607B38B85D04A86BEE712053E81E73F9BC371C411EF07B775027422F4E1FBC3731CA67184EBD8444180EBE88D86EFEA2CA910422BF2D58D79FDF7B5B8F5525254150A455937BA';
wwv_flow_imp.g_varchar2_table(567) := 'B5586895C3566A0136CF7598A6F183AFA3E32E9D4118B2B31F016F2A001852C68EE31006019EAB5B012DCB4249F9E4148ECE0034282548C282A26A68BA17EC02B00442E8DED66B1900DB01B3D03E45CBB3EF2565AFDD04158AD576C76A97B1DAEEC663F4';
wwv_flow_imp.g_varchar2_table(568) := '41F08C33D6FDBA4A29EAA665BDCBF8F3FC92FFEFEB3756BB8CAC2C0F4E25EA0C8083EF79C4617845E27C4617C71147BC3FDCF4CD7B18AEE330491CD238629EA69AFCE66A9E944093012FD6DB774B6F534A1941A2864B76234151F612940990928717FF8F';
wwv_flow_imp.g_varchar2_table(569) := '8CD713008C1197B8F6B48F4140C2B6C0756C42DF250E03E228A4191CB2DAC73B664BA5E8BA9E46E89EDAA2AA29CA8AAC2847938AC178E8601837AAC1C8671247CCD384BCAAA0AC68BBFEC951B93246209B2CE7EBF925BEE7B2290AC30B2849A308DF7547';
wwv_flow_imp.g_varchar2_table(570) := '552DCB12D7B80183268194F29AA5E7E0EE55D4357F9DAFF8F75FDFF97EB962BDCBC94BD3FE73E0342284C0771DD22864394998251191EFE1D8C700E088236E42A9FBCD9AF6A746B13F372988C380F9243159BCC1715391440179A9C9C3438FFF218664AF';
wwv_flow_imp.g_varchar2_table(571) := '11FB7CAAAA6ED864399E710F8CC3609C735DC71EF913B7E7748110BA2B63FF35DF3B5E4F00F0080CDED90A816BDB049E4F625CA38A4A6B593F3900903D745035354555919525DBBC18EBE9BEE5F29C256AB8595DDB1E8D7C1653ADAAD5F5BDEED73DE075';
wwv_flow_imp.g_varchar2_table(572) := 'FB5EB2C972FEE7EC82B6EB58EF7236BB8C5D966B76B091CD4CA3701CF48395E620CBD9F53D55DD501A21A49153B0CDF876B9E67FBE9FF3ED72C3362FA9DB86B6EB0EBE278410F89EA70380E994699210FA3EF6310038E2883BA118B4360677BB6173748F';
wwv_flow_imp.g_varchar2_table(573) := '7AA025083C8F69A24D7CA49408C1C88AFFBE5AF37DB5D11944E353F2DE4A024DD7B1CB4B406F7AD2286296EA3937324E83966573F79EEEE37904BCA9004043D7691CDB26F05C6D97198528D3D2F7142829E9D14492BA6929AB9ABCA8D8E5254AE91ABE66';
wwv_flow_imp.g_varchar2_table(574) := '933E1FB66D13053E933461314DE9FA9EBCAA3509EE809BB09352CB71F63D9B2C639DE5ECF2825D59B22B4B3ECD6628A58D7C94D2E508075B9749CCA33725905D51B0CD4BBE9E5FF2F5FC82AFE7979CADD75C6E332EB73B76456EBC0C9E9EAD18208420F0';
wwv_flow_imp.g_varchar2_table(575) := '5C2671C4C934D51980C0C3B65ED6C5F08823DE0DF61403AF6BD8DF0D7D8F79589620F43CDD75E33AC481DE24D99645D5345C6EB6A6562EDE1DF3BD693BB64541D5B648A59824318B49C2723AA1EF7CB5AE130000200049444154756014F81E709C77E015';
wwv_flow_imp.g_varchar2_table(576) := '0600C370BC39D6AF74A3F5F7AEE9014DA390348E747F7C553FA9D6A560AC69D76D4B51D7ECCA92759681D0C790D23FE83A6EB7EE6892CE3CD183B1AC1AD6BBFC6016BC94925DA1653A01F2B2A6AA1ADDB35F6B854061AC379BA0A3EB3DE3C685D1ECD641';
wwv_flow_imp.g_varchar2_table(577) := 'CF26CB59ED725DEF3FBBE0BFFEFAC67FFDF58D8BCD6EB4F4AC9BC767556EBD0FE6BD706C8BC06400E6D394348E098E1980238EF8311EB9485B42E07BDA4807343FC0F73C63EBAD55022FB73B3CD7D5FA2183A0CF0B65018429775E49955F7D7FF547FB97';
wwv_flow_imp.g_varchar2_table(578) := 'A5AE9E0D276ADF34E8100C06448312E2F934E56CA5DD0C05E0BB2E6914A29CABA5EFEE39585C3BC7F78A5717003C168E6313073EB3549B55D44DAB533F07EEA8359BB466B5CBF8EB6285C20C96387A91F3751D87340E399D4FA91BCD37586D773AC8D8DB';
wwv_flow_imp.g_varchar2_table(579) := '951F8AA66DD91505B66D21A5A26A1AD659CED78B4BCD07F05C7CD30A234DFB61D3F5E4A5D611C8CA4AA708D71B764565847FFA83DBFE80B1EDCFF75C6649CC7C92308923A2400B993C57C8E988233E0E1E6722B40FDBB675D01D864CE398599A309FA42C';
wwv_flow_imp.g_varchar2_table(580) := 'A6A9910BAEE82BF9228A81AE6DE37B9E76F1DB9B6F7CCF35063F16966523047B664192B6D33A055AE9AF19371D4DDB8E5E0387A2EF7B7679C1B7CB3581E7A1A422F03CE69394C0331BCD0F3EFFBCDD00C0D63BEA5992B04853767989E73A07B35D7B2929';
wwv_flow_imp.g_varchar2_table(581) := '6ABD28FF757189E73A4CE2905EBE4C5780EBD8A4514437EBE97BC96A97F32D5AE13A0EDDE0A0F50C7BDCBA6DD916259DD45A01EB2CE7DBE59A280834A1D1D10F01A34B576F94B5EAA6A53601C4CE080C554D43D7F507B7FD81D66D88029F340A39994D98';
wwv_flow_imp.g_varchar2_table(582) := 'A7096914111BED72C7390600471CF1585C5B0C8D58DA43778FCEBAB90801B3BA310180DE30D996452FB510DA4B38A0BA8E4D1CFAA451441A87FAD964673DD39AE89AF97950136D3B4D3C2E2A6D2DBCC90A56DB0CA9765792E337AFFB09E8FA9E6D51F2ED';
wwv_flow_imp.g_varchar2_table(583) := '728D540ADFD78B7FD775C64CE8A177EFE6EFDE6726E08D0700BE2678142997DBEDB8C33D04524ACAAA66956504971E691C713A9FBE983BA0EB384CA210C7E8DF7FBB5C1187BA6FB7E93A9D02E37EE6EF8FA0D5BE0ACAAA626D67578BBE6D6BF2A479C0F5';
wwv_flow_imp.g_varchar2_table(584) := 'D45B2F7520204D6741DBF574C616F9B9E938DB743ECC2609CBD994F92465920C19000F4B5888A30EC011473C094ADDF6B1B90B8E6D237C81E7BAB45DCF3C8D594C743A5C4AA381F24201B863DBC44160EAED5396D3747C84BE4FE06952B51082A6EBCCCE';
wwv_flow_imp.g_varchar2_table(585) := 'BF6593176CB39C4D9EF3FD72835292B2AEA9EA06CC1C74E80CD4F5925D5E1AB1A08A799AF0C7C992A6D3C18596687938887AEF787D01C09D5699B7AD1C87B6BA6912B3284B9228C4F35CDD1673809C6F2FF5C0DB6439B66571329B9295E5E88267098130';
wwv_flow_imp.g_varchar2_table(586) := '369387C0B1740D7C88BCE769C27292B29CA4389665525FEA60739FC18BFB1996E02F82AB1A20049ECB34D6BBFFDF96739646BBDCF7DC51CAF488238E782AD4B527E01EFF002D9F6EDBE0BACE9E23E9DE9F3F63F51B744D3CC7613E49F9BC98F1693EE374';
wwv_flow_imp.g_varchar2_table(587) := '3EE3649AB29C6997BE3100F03D043A00684C0030C9733671449A47B88E8BB084EEF2726C4AD3A15419DBE3A706034390D39BE77596B32B4ACABAA6695BBD4902B8434EFEBA08D3E199D9D78E373B0B3BA6ADAE4D22F22A21894242CFC5B52D4D9A79E2EE';
wwv_flow_imp.g_varchar2_table(588) := '55D7CDDBB10360B5CBD8665A6B3FF47DDD436A3B58CE81EC51E34FED38B6AE89A7095F960BFEF3F782EFAB35179B2D5DBFFD69EE7E7F172CCB329E07164918B19C4EF9E364C9BFBE7CE26436250E8363DAFF8823FE062874A793548AB6ED28CA9A759673';
wwv_flow_imp.g_varchar2_table(589) := 'BEDEB2CD0BA32A7AA0B19725747FFD2461914E38994D389D4F3999E9DD7F1A454CE29B2500777475F55C87D675B02D2DEF9E842191E7938601CB34E56CBDE16CBDE56CB5E16CBDD11B1C6308F45492B730736A590D24EF9C30F0083D9FD0F79EE527F3D6';
wwv_flow_imp.g_varchar2_table(590) := 'F17A03801F086239B64DE87B00D475431A697539C7D6A43AFDC13F3E62944A1BED80D612D8EC32B679415E56A45103CAD58BDB81ED2342683B5C8426C64D93982F270B9AAEC371745660579414F5DBD6ECD6F6C7369EEB3231BBFF3F4E4FF8D7E74FCCD3';
wwv_flow_imp.g_varchar2_table(591) := '8438088F01C02FC79ED8D67BDDDA1C0166132495D2E64075CD362FB8D8EC28EA9ABA690F97F64690C611BF9D2CF9D7E7533E2F662CA71316D309B324D66440CF23D82301DA96ADBBABA4AD5D05A52609266140D3754CE3C8641272CED61BFEDF3FBFA194';
wwv_flow_imp.g_varchar2_table(592) := '6457E6A6C5FB6964E97DBD13A51465D3901725DB2C270903B444BBC39D7D5E1F4412E0F506003F80E3D884C2C7731D9AAE258D42424F070063FDFA091D014306A0693B3251E90C405E9095156553635902F7199A0002BD385A3066009AB6C3B12CBABE67';
wwv_flow_imp.g_varchar2_table(593) := '9797FC75B13AF8F55F0B2CCB32ED472E4914B29C4EF8FD5467000656B0788EB2E211471CF1280C2CFA8170575435DBAC30D946DD2E7708C747089D0148E390DF4EE6FCDFFFFA9DDF960B169394B929F30DBCA3FD76C0BBCE0DAE1B900D6AA467EB35522A';
wwv_flow_imp.g_varchar2_table(594) := '7645C19FE79728A9E7E84EC82705AD526ABF955E6AC26156966CB2CC08A4E92CF247C6AB0C00F4E77BE588756797A630F2B646FC220E43A6A6C73E2B4B8A4A0FA4A7A4D4E55ED9202F2B2EB7BA25D0B56D16D389111FF26E9DC76330EA1800B66513F91E';
wwv_flow_imp.g_varchar2_table(595) := 'B32406A5D8E69A7D9F15A5E603340D95A97DBD0558E673B02D4B47F169C22C4DCCCE60CE2C4D8802DFC82B5B1F9A74F32BF0D0181DA7D26326E0DD419A85BFE93AAADACC296D436D44729EAA0468596264F387BEC7729A72329B723AD3BBFF491C938401';
wwv_flow_imp.g_varchar2_table(596) := 'E1818BAA6569F754CF73E865CFE97CC2E7C58CF3CD824D96B3CD0BFABEA039A06CA114BAEBA06AD81615BBA2220A833B49DE37EDE8DFF33DF22A0380C7605F604233507DE693842F270B2E375BCD366DBB836BEA455D73B1D9F2EFEF67084B202C411CFA';
wwv_flow_imp.g_varchar2_table(597) := '4C79BEB1842534333789028425F85CE9D47FDBF7F8BECBE566C7C566476304785EB366B71002C7A4FD5DC761394DF9FD74C9EFA74BFEF1E9842FCB3969148EBC808FDE77FBBAF0315A9D3E2A7A29CDE25F53563AE5DF196D8F43F47F6C4B13AF9328641A';
wwv_flow_imp.g_varchar2_table(598) := '479C4CA72C27A969EF0D75BAFF19CA9E62CF3E3DF07DA649C2A7C59C5D59F1ED6285548AA2AC75D7D401E8BA9EB269C88A92BC2CA99BF8C5DABCDF2A5E6900B02F8139E00E962B83CADC550BCA97C50CA5A4EE8BCF0B3850C4AEA86ACE371B1C47D7AFE2';
wwv_flow_imp.g_varchar2_table(599) := 'C0E764361DA7C8E72C63DA18C71D0381E1C6B4848EB06DCB322A7D194624EBD5469F42081CC7C63335BFC56CC23F3E9FF27FFDE3777E3B59304F3521E8AA1DF1579FF111707756E06A88BDCEB176C4D320A5A46D5B8ABAA1A82BEAB6A1312DBE70400060';
wwv_flow_imp.g_varchar2_table(600) := '5B44BECF3C8939994D39994D74DADFE87B388EFD2C654F4B081C4B6B8344BEC73C4DF8B298EBBE7DA9C8AB8ACBCD0E0EA4490DDE27BB428B9FD54D4BF7426DDE6F15AF340030B8B6F3BDD118686A4B603A02C280799AF2DB7231AA023ACF60779675C3C5';
wwv_flow_imp.g_varchar2_table(601) := '6647D7F7B88ECBC96C42513748A5C6169143D732CBBA2ED9398852B8AE8B6DDBD46DCB7A9763DB9A2C837C19B5AE9F014B6815B0C0F588838093E9847F7E3AE5FFF9E71F7C5ACCF05CAD08E61EDA3D71C483186AA96AD8D23D6267F7A32CCCB512DC11AF';
wwv_flow_imp.g_varchar2_table(602) := '10423FAEF5F3DDC6900128AB9AA2AAA9CC46E3D0A9C4B62CADEB9124A6D56FCA6292324D6392303CEC45F760599631E9D144EE599AD0763D4208F2AAE67CBD7D5680D1F53DD59801A8C616C1DBF83899B1D71D003C12B6A515E7169354BB41952597DB0C';
wwv_flow_imp.g_varchar2_table(603) := 'CF75B12DEBA01ED261B058856093655C6C769C5DAE98C61181E711FAEE286CF15CB88E431CFACCBB84A66DA99B06210451E093152559A15D0A9BA6A593525B7CBE807AD7A1F0DC2BB9CF3808984D12E6895619FBCFDF3FF37931230A75EBA4635BBAFBE1';
wwv_flow_imp.g_varchar2_table(604) := '883786F7EA20FF7120A566C00F7DF75D2F9F25EC356428A3C0671287848187EB383FA5AC6709CDD00F036F940FF75C074B1C1E000CEF476B8488FA277220DE23DE5000707FF2DD3201C07C9220045C6E77FC15AFF0CD8E5A1AA9DDA77CD85DD753D52D4A';
wwv_flow_imp.g_varchar2_table(605) := 'C27AA799B3DF2F37A451C4348981F859CA83FB701D5DC2107BFF85C63AF8FB6AC3D96ACDF7D59AACD051AB5492BF7BFDDFCF7A04AE76F59B2411F3540B80E8C79CD3D994D3F9943808706C5DCEF8D85A5B6F04E276B1ED980978DB504AD1F592B6EDA89B';
wwv_flow_imp.g_varchar2_table(606) := '6EACFF1F0ACBB2F05C97280C98441191EF9B45F9E5EF6F21847132F491521207E658CFD84C4825E97AED1ADB74FDB303A2F780371400DC0FDB1244BE8F05849EC7B7CB359328C4775DDD66A714EA8926419DEC91ADEE9F5DE73A03F06DBD228E02140ADF';
wwv_flow_imp.g_varchar2_table(607) := '58DBBE4462DB751CE2408C6D7281AFDB044F1733FEF7D76FB8B64DDBF628A96FEAB6EB69F99BC92B7B6D3DBEE73249223ECDA67C5ECEF9E7E753FEF1E9947F7E3E25F43DA2C027F2FD51EBFF28F7FBC6B03FA11F8380370B29155D67163C43887E8EB787';
wwv_flow_imp.g_varchar2_table(608) := '2504BEE310F95AF35F0BA4393F25C01FB20D61102084653200EEB3820D29B505BA96226EE9FB1EF50B33A9AF01AF3F00B891BABFD9A201202C4B9BCBD816A1EF334F13A671CC240ED9E60175AB2D6D9F627AA1852A7A3A7AF2A262B5DBF1DDB84A0D2637';
wwv_flow_imp.g_varchar2_table(609) := 'F334D1D538D30677682A4CB7C7E9506210D04823DD4E8789E2EBB6C5762CFC4C9BE8E4A53DB6F2E8E72BF5C36B369B4FC04D2BCF7DF963ED2D60E1DA36CBA96ECFF9B25CF0FBC9927F9AC5FF5F5F3E69CF014BAB1E1E19FFAF1F3FE403A08EEBFF1B8542';
wwv_flow_imp.g_varchar2_table(610) := 'E95DEFA8A2F73CC7D181A5EF390E81E7E2394367CF0B9EF4D5C1CCB16C502E9E6B8F3E2A8742A14645C1C1FFE4A30FEDD71F003C02C3C265591620888280C574C2EFA72748A558ED32D6BBFCE0F691B6EBD8E605DF2E5608437A0B7D5D9B8A4D64EAB9CE';
wwv_flow_imp.g_varchar2_table(611) := 'B34887E3B50881635BF8AE83521E27D3095DD7E3B90E9FB633B659C126D79AD675DD50352D55D398B49689F44D7D6B70197CCC314167225C632234EA7C1B125F14F8E3639E262CA61363F63161399B68895FCB0441C785FF1D411C1503DF28043A88B7CD';
wwv_flow_imp.g_varchar2_table(612) := 'DCF89C4DCA80AB3ABA49A1CB9FB488AA61C72EAF8EA59EA7C92F30EF836D8FEFC747C7DB0800D48DFAFF1D9F9BA5E5A9104211873ECB69CA1FA70BA4E9F3D4ED1F871DBEE93AB6598152D0F43DA11F30892396D3C9782A8E6DDD692AF1540CBB6D3C5D73';
wwv_flow_imp.g_varchar2_table(613) := '3B9D4DF15D97799AB0C9F33100D8645A3C689B176C8B82BCBCB2D5AC1A8BA6EB505DF7C300E04AB10B3CC726F03D4372F489439F380888236DBB3C4BB4A7F82436569FC6F2338942A22018093AC79AFFFBC1205F755F37CE11AF1846B1CFB22D6CDB386F';
wwv_flow_imp.g_varchar2_table(614) := '3EE3D6D419466D3AD6F59DD945CB9F3224C6EC452F3561CFECDA9F73B061AEB32D316A927CF42CE5DB08001E01210496D9ADC441C8623AE10FA30458D40DABEDEEE0D71E3200455D939715D33862394DF99CE5A6F7D51E5BFA5EE23A06D11CD7D13BF059';
wwv_flow_imp.g_varchar2_table(615) := '9AD0F53D59558D01C07A9771BEDE72B1D972BEDEB2C97236B90D42185361F528910B214058FAC6705D87C0F349C240931DD3985912314B133ECD67A3DB571C04049E4BE07B78AE836DE9FEDF23DBFF1DE2DA04792C07BC2508C498191D3300CF8800B4B9';
wwv_flow_imp.g_varchar2_table(616) := '8EA2ED7B4DA2FBC969749D6D9057843DF9CC0C80D09B2ADBB2B12CFB58A6E40D05000FD5AE46995DF35906BECB2C8968BB296553B3DA659CAFB552552FF5407A2A1FA091DA165829C5C566C75F172B264944D7F7F4BD1C6589F500B34C39E2E9D88F4A6D';
wwv_flow_imp.g_varchar2_table(617) := '60DF7EC0F75C7C47730442CFC7775D42B35B9F26B1CE0814C5D8F35B372D75DB5EB541DE780F0739657DBEBA7412873E51109046219338661247CC929893D98493A916FF087CDDFEA3DBFC8EFDFDBF0A233FEF4A02E059F8E16478ED18C748E0D7E1AEF7';
wwv_flow_imp.g_varchar2_table(618) := 'FE0EA134B3D3F51C1BEF055A72A5D45CA4BCAC58EF32A6494C5DB7F466711E86CF4B2CAA522AEAA6252B4BD6BB4C973C9FE15E086009ED543A58183BF63100783301C053A06576232D1D596B0189599292C65A5EB76E5BA459181F8B418DAFEF7BB659CE';
wwv_flow_imp.g_varchar2_table(619) := 'D7F30B2C4B50D70D7DDFEBDAB965E1BA0EAEE3E2FD04C31BDBD23AD9B1F21196EE7E087D8F691C51D40D655D53D45AEB5BF7BAEA9ED7A10D72087AF6897EFB0140E079632742E8EBC062A8FBA771441A87789E6B7CC58F37CF87C39EF8D5B145F0F5C336';
wwv_flow_imp.g_varchar2_table(620) := 'BDF4BEA7CB7AAE51193D147D2F292A4D88F63D97691A93D7533AD921958BC5CBA5D47B2929AA5AB7745FACB8DCEEC8AB9AEE996D8CAEE38C2E858EED607FF039EC8D0500EADAD37D6433CF7546B7A7AA69F93659334B63A651486E09A492345DFBE47492';
wwv_flow_imp.g_varchar2_table(621) := '42DF04DBBCC03A17947543DF4B5CC7D57DB1814F0866F7FFF26FAD65BCB36DA199B8A1E7E9287CD66AA28C59F43B532F1B1FBD1CDDBF84799DB11E665F652C866E04C7B6701C1BD7767419C2B147E542DF75B06DFB45084547BC1D8C9FF4DE677E0C025E';
wwv_flow_imp.g_varchar2_table(622) := '372C4BDFC73AA8F7701CE7E0CC246847BDA2AA596D332C2C3ECD6694654DDF49D3AD753D13FB1C4869828DED8EBFCE2FB8DC6CC9AB8AFE406F1700DB16B88E4D60E632D7B19FF57EBC07BCB100E071F05D17CF7148C280B6ED584E275AAF3A899140DD76';
wwv_flow_imp.g_varchar2_table(623) := 'A616F6F4C9AB933A00284D66412048A390D3D994691263091D65FE0C0CBB75CF75AFB217FB969A307E0D5732B16370D077C0958BA26D599A20645E777F41BFEB6B71C7EF8EF820B8F599DF08C68F7875B02C6176BCEED8B6F79C1240D7EB5D394A2BA5FE';
wwv_flow_imp.g_varchar2_table(624) := '63774251D7C656182C318600CF3EF72103B0DA667C351980A2AC9E54BABD09DBD2DD4D81EFED05001F7B2E7B7301C0FEAE6350A7BB0B438ADBF73483FEF7D313AABAE5EBC5252845593734C616F3A9BDB1BD94D06BFBE04D9EF3D7C58A240CE9FA7EAC95';
wwv_flow_imp.g_varchar2_table(625) := '8336CF702C4D127C8981766D217EC8E2F546006009B3C8F7F6ED0CC04010B28E3BFA8F82AEEB697BAD0C371AC398DF0DAE8EAEFDA3DDD17E26E01805FCDDB86E1026EE9C0E2CA1753B7CC3130A7C9FD0F7F13DD7E89CC8272DA84A29BAAEA7B65AECD2E2';
wwv_flow_imp.g_varchar2_table(626) := '62B3E57FBE9F6B67C0D994380C88029FC0F7F64A8BF7970A874DCBC04FAADB76B42DBEDC66FCF7D9395F2F2EF8BE5AB3CE728ABABED3BEF7B1701DED19334BB44E4CE8FB777298F6C7B31AC835EF7488BFB90060740A543CCA90C7332D74FFF8B4348B9F';
wwv_flow_imp.g_varchar2_table(627) := 'A06E1BD659A65B5A7AF9644D68A5D4F86FB2A2E4AF8B15028CEDE6094A297CCF3129738FC012F0229A814FC3F0DE5896C0E14AB06348DF5F3DFEF6533BE217A2ED3BCABAA1AC6A4D6CE56AD28B023D89DB81C5C3C951B11788EE0B4FBDD399F20D62C800';
wwv_flow_imp.g_varchar2_table(628) := '0044BEB7F7F0AFF8414FD80029A5E8640FADEEB63ADF6EF9DFDFCFB01D8B755E703A9FB29C4E9809816702C91F71A19421644B29294ABDE35FED769CAD36FCFBDB195FCF579CADD664654555DF67DEF338788E431C06CCD398591213057707001F096F30';
wwv_flow_imp.g_varchar2_table(629) := '00D8C775C3E0BBE03A0EF349826559049E47D5365C1A124BDDB6A014F289DED84A292DCB8B6257940856146545565648A5F04D6D5E9ADDB7E7BABF60F9BFC295A29FB919F7D8BA8388D2111F075DDF535635DBBCA06A9AAB0E1121904A19454DEFC72F74';
wwv_flow_imp.g_varchar2_table(630) := '4D32F8B8F0BF36D896058ECE448686CC3B3CEBCF5DD2F6E2D1018054CAC8094B7AD973B1D9E258166DDB9197155DD7E1581681EB82EF610BEB872B8C326AA65DDF93571517DB0D7F9E5FF2E7D905FFFE7EC69F17177C5F6D8C7CEFF3BC0C5CD731E66529';
wwv_flow_imp.g_varchar2_table(631) := '9334260CB45CF947C61B0E001428C15D5DA8FB0B9AE73A4CE298D0F788439FCBED96BF2E2E49E388B6D7863FBD52A360D0238F3C4A1417554DD376ACF39CB2694685C0F924194977DA0AD7BD26ADFB33715F2DFF8823401359EBA6252FB52D6A6748A23A';
wwv_flow_imp.g_varchar2_table(632) := 'B0957A1237BA16F78DD9FBD3BAE3573FF10A8E18B93FDC2D8F0E8CFDFF0081EF110501491892C62142087A29A9DB8EA72CA9522A245AA16FB3CB91529157356DDF63DB0E81EFE37B1E51D7D1CB1E85BA3156AE978E0667BEB6EF596D777CBB5CF3DFDFCE';
wwv_flow_imp.g_varchar2_table(633) := 'F8F7F773BE5DAC385B6D58EDB227BF3DE3D1065973D3E5944401D32466124504BE776F06E0BA9CFAFBCD6CBDE100006E7F2877F4C21AE52769DB789ECB2C4DF9FDE484ACA8F82BD0E4928BCD96AC2BEF7CC51F9EC1A08ED543D9349C6FB6FC7F7F7D472A';
wwv_flow_imp.g_varchar2_table(634) := 'C5A7F98CD3F9944F754B12854665CFC57B2117C1238E38048367442F1565D36A35C93CD7FDDDF99C5D5951D48DB161D56A902F257475C4AF8163DBC461C0723AE18FD313CED75B94529495164B7B2A14E80D54D3605982B3F506D77168BB8E8BCD96240C';
wwv_flow_imp.g_varchar2_table(635) := '49A280380C71063E806D21602C3BF4521A39F386AAD673E7B7CB35DF2E579CAF376C8B82BA690FBE66CB12630744E0B9CCD298340C097D0FDF7570EDA31CF09B0E001E438419486F2EDAC6769EC6FC7EBAA0975A5F5F0045595194D5B59DFDA3CF6134E2';
wwv_flow_imp.g_varchar2_table(636) := '915455CDF96A8B928A2C2FD97E2AA86A9D626DFB9E898C4616FF1147FC2A0C35FF416CE572B3E5CFF34BCE375B76454959D5344DCBE97CCA623AC1751EA174790F1FE74810FCC950A60C2A1E2E87DA964512069C4C537E3F5DA294A2A86A6CEBF0DD75D7';
wwv_flow_imp.g_varchar2_table(637) := 'F754F595384FD7F76CF39CAF1717A34C781A4578836898A3E7DB8177D5751D79A5D555F3AA669BE76CB29C7596B3338266757B7800600B8BD0F348637D1EF32421897400E0EDB533DF8FF7BBF31FF0A603806B754771EB0BFD9DB86A7B0398A7297DAFF0';
wwv_flow_imp.g_varchar2_table(638) := '5D0F81A0A81ACED61B2CCBBA92B57CA240D070039475C3F9664356967CBB5C53350D52296CC71EDDAD1E555B3DE2889F8821032095A46A1A2EB63BFEFDFD9C7F7F3BD3DD3183CC2B0AC7D19A1A8FC22D1BE13BBF39E217406700424EA653EAA6A5AA1ADD';
wwv_flow_imp.g_varchar2_table(639) := 'CF6F1FDE07DF9A2E92BA6DA94C26E9ABE310FA3E9338D28F2822F0DD51604C08A1BB50BA8EB6EDD816E5E86952D60D55AB0DCE9A41FFFF19AC7FCBB2084C4976399DE80C4014127A3E9EE38EA5818F8CB71D0018FC482678AC4109411C06F44AE2BA3679';
wwv_flow_imp.g_varchar2_table(640) := '55B2DA655CAC3754754B656C839F1A750E476FFB9EBE92547583655944A13FEAE52BA5EB6603E9C53151B1EB38576C7C8E35FB239E86C1F7411936CC53F2570AD3DB5DD76CB29CB3F5C6B85AEA0E004B081C4B0BC96815B5411CCA7E12CFE42818F473A1';
wwv_flow_imp.g_varchar2_table(641) := '0C1FEAE67BBCFFB95896B6301F7C452E7719E92A22F27D9AA63525A103BAA17A458F0E06CABA06C0716CB2B26057446C222DC11EB8DE18000CBA244DDBB13301C0AE28F4A22F25FD0BD816832680C7A1F685F9ED64C9723A2589426D1D7F8DFC77F358E6';
wwv_flow_imp.g_varchar2_table(642) := '4E524F6487BF41BC8B00E0B110E84838F43C848293C984DF4F1694758DEB385C6C775C6E7734DBEEE001A894D2A41A29C98A92EF976B008ABA6657E85AEB7A366592C44CE3884912E39854946559471FBD237E19744D58CBAF0E0E80522A3A23CA324D62';
wwv_flow_imp.g_varchar2_table(643) := 'A649C43489C760F5F1E3F530E1AD235E06B625083D8F4912018A93F584E524653149514AE93A7CA325C40FC530654AA9685AAD1AA894A2AA1D5CA7D29B1D7409A033CCFFAAAEA99AC674173C7FD11D33BE96200C3CE693842FCB05FFF9DB673E2D664CA2';
wwv_flow_imp.g_varchar2_table(644) := 'E85972C8EF0DEF2700B8C93EBE63572284308C7CDDFFB9984D284D1B94E738388E4DD37523EBF4902060282148202B2B60AD17FFDCD8F76605BBACE0CB72014A11FABE76EDB22C5DC73B66008EF855508AB2AE596DA16E1ABABEA3935A34A86A6A7E5B2E';
wwv_flow_imp.g_varchar2_table(645) := 'B06DAD7C394EA2F78DD7FD0CC1D5CB0F5FFDAC2BF898B89961B9E33319D2E142083CC76139DDB09C4E584C52DAAED3A97963BDFB5C48A9689A1625156DDBEDC98DDB08A14BA6D26442073D82762F0078CEE818E4CD1DDB26F43DE669C26F2773FEF3F7CF';
wwv_flow_imp.g_varchar2_table(646) := '5A0D360E1FD7FBFF0176FFF09E02804762D0BB0F3C97BEEF515269E533D7A56EF5E27FC300F5C91848565951525415E79B2D97DB1D9BBC6093E56445894411041E8BE9447B750BF103E195238EF8B9504051EB9DE07A9753D52D6DDB51372D4DD3E25836';
wwv_flow_imp.g_varchar2_table(647) := '691421176A1CABC770F56DC0360180EFB9C4A1CFC96CC2723A61394DA9EA86AE97630AFFB918DAFBBABEA7AC1F6A19BD2D63FE5C0C1900D77011E669C26F8B05FFEBB7CF579E08CFE03DBC37BCA300E0C75ED1D7F800806F18A252E974D426CBC9CA92A2';
wwv_flow_imp.g_varchar2_table(648) := 'AA29AADAB8EBD574DD610614522964AFC068686FB25C931195D08C5821E8FA9E348A88036DC31B78AEB1DA754615AF97B4D93CE28887A094A257BAAE5BD435EB3CC7369AE99EE7EA72952548C260540D1C782C8F3388BAEF3EBDFFDFDDF7920FDFEFEF7F';
wwv_flow_imp.g_varchar2_table(649) := 'F77685BDF7540884BA9D4914428CCE7796B048A3884FF32959718A1002C7B1743BB39474BD16FA790E016F5F5DF267EFA485D0BA9442401C6A6BF4691CF3DBE9822FCB39F3494A14047AF37783BF72FDF45E3E2079ED784701003C4617601F8E6313FA3E';
wwv_flow_imp.g_varchar2_table(650) := '4A6932D46F27258D49819DAF379CAFB7F47D8FECE5F5017D0034D9AA4188DC741BE874EBC566C772923237F5B86912E91EDA703F557594EB3DE2EF47DBF514658D253250600B9BBE979455CDA9D1B8389D4F8943BDEBC2B21E61AF7ADF587EE0DFDD5765';
wwv_flow_imp.g_varchar2_table(651) := '78E028B7EED4779FCEDDBFBE873F03BD50067C5ACC508AD1257048C70F7C00D9376F6221B484AEF9DB96C5248AF8B25CF0FBC9827F7C3AE18FD31366498C6BAED112D60311E5DEF35BB8F017C03B0B00349432AE54D73EE7DB1FFA50271A48786DDB2204';
wwv_flow_imp.g_varchar2_table(652) := 'F8AED6F11FAC7F6B631A843A7C5CF4467EB5EB7AEAA6A5AC1B2EB73BFE3CBBE0F362CE97938551159CD14BA5CF2DF04D747BF7F91F71C4CF44D777E45545DB758613A099DE9B5DC17F543542082D70E579E885FD9EBB43DC1CC1F708763CF4FB3B5FF781';
wwv_flow_imp.g_varchar2_table(653) := 'BB51DDD8E5EDCFEAEF341818E63DF50872661206A8C54CEF8C1D5B4BF196155955199540AD11F116DE2B2104B66DE3DA36691CF1DB72C1FFF9C7EFFCEBCB274E66BAFD6FE85CB997B8BAD702FE913C2DDE650000374582EEC6C007087D2D19AC50B8AEB6';
wwv_flow_imp.g_varchar2_table(654) := '11EE65AF59FCAB35655DEBF614F5B436997DF452D2375AF52A2B609D65E3F12F779976BA327A025AB6D22589C2B13BC0BEE1D677338D752C0F7C5C8C7CA5179EB3B444704D414D5656D44DCB2E2FB8D86C4128AD2C379B10053E9E5258C241DD60583F7A';
wwv_flow_imp.g_varchar2_table(655) := '5C1E347E9F9403B8FD9B37B0B83D150A1077A4B06F7E0E511810F81ECBC904CB126465C5E576C72ACBC61A7E2904FD2B4F875B80635978B683E7BA4C93982FCB05FFC71F5FF88FDF3E1B254BFF9645FB6DC7BF7D0D98D77CC52F8B771B003C1596B0F05D';
wwv_flow_imp.g_varchar2_table(656) := '97340A514AF1DB724159B548A9F8BEDAB0CD0B76794E5656D76C2C0FC1D05ED50BBDE0E765C9F97A8B6D59D4B5762A3C5B6FF8F3EC82D037261EBE87EF694D01DFD53C01CB08591C17FF237E369452345D67CA5882EFAB357118208460BDCB98A509F334';
wwv_flow_imp.g_varchar2_table(657) := '6112EB36AB81F9FDAA21C4BB0C021E530E10E8BAB92520F27D3ECD2614BF7FC6B16DCED71BCED61BCEC280A2AAB5456FDDD01E2019FC33306A52383A533B8DE3B145F53FBE7CE28FD305D32426F03C3C93FACB4516C400002000494441543FE26EBCDF00';
wwv_flow_imp.g_varchar2_table(658) := '60CF2CE3313574CB12F89E87520ADBB629EB06290733A188AF179780F6ACD6F6959A2C75F8E9ED590A971596B5A1E95A36B916641974026669C22C899999C955CB6B8620740603F598BAEB11473C0FC3AEB0AA6BA4ECF9BE5A63098BBA69D9E6397F9C2E';
wwv_flow_imp.g_varchar2_table(659) := '0185E73A788E0338AF4AD7E23EC39C9B78F3D2C54AA1F6029B7BAF5B08840528087D8F93F9D408A585FC751E1387BAB4B3DAEE58ED32DDBB6F02805FFD0ED9C6D9350A7CD228E4CB62C1E7E59C2FCB395F16FA79962604BE876BDB0F07A2FBE9B30F2858';
wwv_flow_imp.g_varchar2_table(660) := 'F57E0380014A710721E0162CE380E618EB4CA54C39200E08030F85222F4A36A64DB05587336441770808A9F502F2B2A2693BB659A19DB4028FD0F789C380CF8B199F17733E2F669CCEA65A45D0B68D8F81F8F0661647FC3D904A19E95745D5B480A06E5A';
wwv_flow_imp.g_varchar2_table(661) := 'D6BB8C5D51A094220C7CA6B1169AB12C81ABEC57A46B7177F94CDDCB0B78C30B81BA9101B89772A1B387A11F703AB348432D999B842181EF8F25CA4E4AF24A0BF63C552AFD67600800D228623149F9E374C97FFEFE99FFF5DB17E69364DC24059E6B887F';
wwv_flow_imp.g_varchar2_table(662) := 'AF650CBE3EBCFF00004C70F7F0A0B584C0DA6BBD9352E1583691EF83129455C3362FC9AB5A6B56378DC912C8D1DDEAC9A765FE49D36A59CC1C9D89F01C17D71011CBBAA66E743FF6F0775DDF53B72DBEEB8E258161A00F2581A1256B487FDD25357C2C1D';
wwv_flow_imp.g_varchar2_table(663) := '1CF1146899561DF86EF39CA6D59C805EF64446FF3D09F5E49B841281C0716C2C6121AC8783D55B3559AEEE0FA5D49DF7EF307E6F3DF3DCB1FDE396E2B780FBC86C57EF97FEDEF71C3C577B3EA4B12E810E0F2DDCA3E8BA1EC7B24605BFC13E5A9A6CA8BA';
wwv_flow_imp.g_varchar2_table(664) := '96717D3E86CF7098CF7459C9C632A6460BD33575329BF2C7A713FEF9F9947FFDF689240CB4F990EBDC12FCB96B8C716DEE7E071FFA13F13102809BF4FD474C0E8E6D13F81E12C5C96C42599DA2942209032E375A32F872BBA36A9AB17D66981C9F75A64A';
wwv_flow_imp.g_varchar2_table(665) := '4FB4A2EB1102B67989636DE83AC9AED05C813FCF2F49E390C8F003A2C0D7C180E7EA0E065707109EA30384E1E6718EB5B0235E08BDD4190184609B977CBD586931ADA61D5B04BB7EA60982AE5E60AC1F28B00DBC9A6161E9A5BAA61A37706F84600C72AF';
wwv_flow_imp.g_varchar2_table(666) := '48B2D6F8339E5D7A10861EF01E1684C7CD7DC38F1DDBB806CE2620C0F7342F6A394D59ED32F2AA222F6B8AAAA26A5AEA46FBA7747D7F909FC04D5866A3A25D5335B1CF739D5173220A7C2671CC3C4D984F121693942FCB058B494AE07938B6293D3D2A00';
wwv_flow_imp.g_varchar2_table(667) := '547B8F8F890F1200C07E0EE0067FFECEBF766C0BDF73B184404EF4A00E7C8F799AF2DFDFCFF03D875EF65885A0AC1B2D9CF1FCF57F9CFC3AB45BDB36CFE9BA9EACACB8D86E097D6F2406A671481A86A471441206C461303EC7C195508B67B21AF6A3845A';
wwv_flow_imp.g_varchar2_table(668) := '8E38E2C7904AD2F61D5229B645C15F1797B45DC736CBF9D79792AEEF701D1B8544E1635BD60F2558955228B3E0777D4FD7E9DD662F257DAF1D0A95527BD92E0BC7C8BE3AB68D6D6B2D02EB0E219C1FE2D6DFEF7917BCE11DE2F57DF98FDA030596B088C2';
wwv_flow_imp.g_varchar2_table(669) := '802582C0F749A388E524E5B7E582D56EC7E536E362B3E37297911505BBA20451201ADD3572683614AE84DA2C3356C220200A7DE220609EEAC57E3ED164D369928CFCA8C17930F01C1CC70483F7BE21D73FD37711E33D031F2800C0F001C4D5F303700C79';
wwv_flow_imp.g_varchar2_table(670) := '64D84D8781CF729AF27939C3F71CA4D23B7229D56889092FC392D524431042B233FDB9B6D9E50CBB79DF75F50D606E021D11C7E667314DDC2115DA630081655B6F70FA3AE2B542A77D752A58E692B6ED586739DF571B3A29711D87491C9BFBC826701F8E';
wwv_flow_imp.g_varchar2_table(671) := '8E87DDBF047AA5E87A49D3EBD257DBF7DA42D648775BE37D60E13936D2710085C046C0B36ABEB702E457DE06F743ECAF70E2D617D72004D8260310FA1E7319B39C2694D5CC9844657CBDB8E4EBF925BEE770E9DA80A0ED3A3D1ED059D0E7EC83862C8E16';
wwv_flow_imp.g_varchar2_table(672) := '69F398441133D3DAF7E564C16FCB05CBE98469128DF6BEC35CEDD857BDFE8F7C73788B41DD4BE2630500708B257B1F86DAB9CD958CA66F18CE595E52560D4DD393841B56DB8C9597919525ADB1B96C9E69AA314E88464A78C0501B731D87AEEF69DA96AA';
wwv_flow_imp.g_varchar2_table(673) := '6E28EB9ABCAAD81525DBAC208D732671360AB5049E6B52645ACA7550CFBAE20B30F206AE0433AEBED6329A5737D9FEDF1EF1ABB0CF601E1E7FE3D1CDB1BAAEA7500D4DAB3DDEBF5FAC484C9F79D5342C27355DD71137C1F57F676AC9435DB9EF7BA33D70';
wwv_flow_imp.g_varchar2_table(674) := 'E5173F18C5742608183200430030B48379A37CB6FE5E67052C6C4B67061C6365EC387AB1B8C99179FCF5BECD05E3FAAEFCFA35ECDFC1C2B2749B9DF9DEB56D7CD723F2035CC7058469C3739944DA197291C6E4554DDDEA9240D376573C02B8F6F5FE31F7';
wwv_flow_imp.g_varchar2_table(675) := '794957738C16F4F13D8F69123189F50EFFD37CC6A7C58CCF8B19F3342589029228240E82475EF355BFFF5DBFFBA8F8780100DC1115FF483A5360D9362E68F18CE984AEEFF13D97B3F564EC9B5D6D776CF3926D5ED0E7C5B5C1FF62A76ECEBF973D75D390';
wwv_flow_imp.g_varchar2_table(676) := '5902A9244DD7905715EB2C23F47D5D26F07D6D00626A69BEEB186EC0D564695B66A2DC9B2C874CC3204064DB3691EF1106FA755DDBC63651F731003862ACD90375DB7199E5786717F452B2C972BE2CE79475C3248EC614B102CA4A7B6D0C44D7A66DC7E0';
wwv_flow_imp.g_varchar2_table(677) := 'B9EBE51810E88C981CEBCB63E06AC6E95002F01CE76AAC7B2E81EFE9E0D7F78803531E8B021D080FA4B21F5DDCAD8CC0F8BFB70775EB0B8D07EE614BE8320BAE4314FA2CA609B62D888380AC9C9297157959E9CFB06DA99A86A66D4D4077F5D90DFC007D';
wwv_flow_imp.g_varchar2_table(678) := 'B8AB8DC7BE6684EB3886D8EC8E6D7E91AF9F759F7FCC344E888300DFF570AC47B8FA5DBB5E75E3EB233E660060304A06EFE38E9B41204C5D49107882E57482E7BACCD394C564C22C8949C2D044C96BBA5E8E824192978F360721A1BA6947C9CEACA8F09C';
wwv_flow_imp.g_varchar2_table(679) := 'FCFA2EC83CBBE3B3EE2CD019016F341EF25C7B0C0A9CBD1D946D76519EEB308D6366BDD45ADAAE7E578EED356F186220D33D5F645AA1DB049112D575ACB6BBD15C6B931594754DDBF52C26C9C81A974AE9DFE705DB4C0B6C95B5119D699A315090E6A1CC';
wwv_flow_imp.g_varchar2_table(680) := 'BF31A77E6D11B12C1D0C78AE332EFA438F781A454CA290F924653999986C9E058EA3C7F223D690EB6D83C3176F7101B9DEDDF098E05D5802072D952E8CDE7E1404CC27A9CEF8988C67DD34944D337E7E6DD7D374FAF74320D0CB1EA5B846DED473938D63';
wwv_flow_imp.g_varchar2_table(681) := '3B3A4BE9FB84DE95E899E7EAF96898AF869F3BB6A3391F8FBAE6BD5DFF9BFCDC7E1E3E7400F0580801B6B0B02D430E741DE69314A514CBE99A340A094DDF6CDFF7EC8A529307D1B29C3F035229EAAEA3BEA3D470B3D56F204AD9C6FB200E02E33EE88F3B';
wwv_flow_imp.g_varchar2_table(682) := 'A4C0734D96403FEF670A02E38B30588A0ED901473D36023FE2BD6374119492F52E639B1758429015257DDF2384D0225AE36220C7CCD9F97AC326CBC7DD645137375FFDC1630FD436DF7347A678128563ABD8224DA9DA16210481AFC7F89072FE78B82512';
wwv_flow_imp.g_varchar2_table(683) := 'FCE05F5B26FB89AD17E2C8F7F5ABDC98D7EA56FB9B94554D693A03EA569B0A757B1C0E0612A7C9DE0CF38D6F78567A6E0AF03D77AF1C79552E8063FBF24BE2C307008FA9EBDD1E70025B28941204BEC72C8D697BBD103BB64D10E8FAD5602B5C941575DB';
wwv_flow_imp.g_varchar2_table(684) := '8E1171F712ED020FE066BF6B67A2E05ECAF1269252D2761D855BE355EEB5B280E338B826ADAA031E97A2AA28CA8AA2AAF658B8318EF31127D1D783AB84E6D57F3F1ACF7A22F798C4118B49C27232E1643A61B5DDE9DD5CD78E75DC83CEC98C35091455C5';
wwv_flow_imp.g_varchar2_table(685) := 'C57687E7B9E465752D25BCCE723659C636CB4D5B5943D375C827B7D3EAF36CDA6EACE96BFD2F41DFF5547543DDB6E445C5E566C72C4D740D390C49A290D004C1A1E78DBBCA1FF15BDE7226E0361F605C5A6FFDED637543DC21530358266BE8B72EA1DF5D';
wwv_flow_imp.g_varchar2_table(686) := '2BE5DCECE218B393F6557672C8400E0BFF43C7BE3D46EFD293B84FECE9880F1F008C8D32778C8DFB069DE6100AE31CE83289238410F88EDE81CCD298CFF31997DB9D6E99D9EED8E6C5B8C3E9FA9B3B9C9F0B9D9D55282569840E54FA5E772EECA7FA0736';
wwv_flow_imp.g_varchar2_table(687) := 'ED750E80AECDE565455656646549B95C0098DDD6DF7A2947BC0086162B051455C37236E1743E659DE5636B57D7F5074B5D2BAE0C69AABA61B5DDA1A464BDDD5DA5F415570172AD8D860636F9A1504AD1751D35E8928194D44DC3AEAC8C89D186248A9826';
wwv_flow_imp.g_varchar2_table(688) := '912EDF19FF82B9B1E3762C0B21DC71D77917C40DCED0C0C9798B7828C07BEA2E7BC8A804AEE9E1771C7CB7BF0AF8E4431C0043D4343C0EDB3E845B749BDC775CF87F8C630030E2BE41F2B07086EF39081111FA1E6914324B633ECDA7EC8A92FF39BBE0CF';
wwv_flow_imp.g_varchar2_table(689) := 'F30B43B6B3504A7B09F0F7AEFF868BA019E2AAD31363D3B6A360C61523FABA8AE0D89263DBE455A90380A24429888280E56CFAF75EC8112F02D7B189F0706CADE5BF9C4E389DE900C0B2046DDF9357F5B384AD86BBA96AB4ED755E5563CA7D988F7536AC';
wwv_flow_imp.g_varchar2_table(690) := '1F09635269F19F432195A4ED741B6DD375546D4B569438B6CD85EBE01A51998155FED930CBDBBEC7B16DD228D44AA07B01FE6DECFFF07D2C2CE34239F241060D84C72FC2C33C6159168EB40D31F44A51F0DE2E00B117100C1B8F0702B0275DCF71E1FF21';
wwv_flow_imp.g_varchar2_table(691) := '8E01C04D3C51D2D233352C80B4EF99263175A3D9B0BE69BBD3B2033AB5782D22565784A897EE16B889E1A5FB5ED23FB104615B164DDB51352D45DD10F81E8B694A592D68BBEEA096AA237E1D064955CF7569DB8EE53465B398919795F6B9E83A8AB28681';
wwv_flow_imp.g_varchar2_table(692) := '8427E5C14B5DD3F53446C8EA674329E895345DB33D35EDB5DF0F8B4A12866479415955D44D832504BEABEDB7516822ACEBE0081DB0FCA8F6FC96CB01D7F00CCD03CBB27EDC51F1A453B9A385EFC1BF3B12FD0EC13100F8211E4F9A1934AB5DC746299759';
wwv_flow_imp.g_varchar2_table(693) := '12D32E17D8B6C53489389D4DB8DCEE5867F95EFA539B6CD44D3B4A6ABE360C56B079596109C1C566C7F966CBD96683EF5F690C049EF7AB4FF58847607F047B8EC32C89F9FD64A1BB5C7C0FDFD39C904D968FD2AF5AE8EA7DA0973AC371B1CD50A61DA2ED';
wwv_flow_imp.g_varchar2_table(694) := '7AB2B2E664AAD5E666A93695196AD51F8B78A640ED29210E7835EFC1FD9A06473C0DC700E03EDC190D3F9C9A12084322721042304B136CDB228E0296D3099B2C679B15AC771997BB8C95F113D815A55615543A0DAA83D8D733B095B14116A5A0EB7B2E37';
wwv_flow_imp.g_varchar2_table(695) := '5B2ED65B2E565B62DF278D232C218E01C01B831002D7759825899680F57DBDF8BBBA1DF4EC72CDF9664BD7F5EF2200B82A3D68754DA51475D3D0B61D595971B9DBF1FBC9827F7E3AD5EA8526838750F7586E5F9F0FDE321F60C498011DAE4370373990BD';
wwv_flow_imp.g_varchar2_table(696) := 'DFFF0DD8AFEDDF41F4BBEBEF8EF8318E01C043B8560EF8715D4A08C61A966DC4759228E4B4EF29AB9AAC2CC98A927596F3F5FC92AF17175ABBDA1648D5533535ADE890633AEBA75EDDA3A1946658F79DBE8E8B58931BCFD65BE2284408EBB8F8BF310C3B';
wwv_flow_imp.g_varchar2_table(697) := '5ACF7599A609B17158735DD7F465DBD8C2A2EB7B7679F18BCFF66531E874944DC3262FF4E2BFDDF1ED62455E54D896CD3489994F92B1567D7FCBF93029BC929BF585A1743B05F0380F95BF0543899F63BAFFB93806008FC1237901FBAD43368CD6C2C0D8';
wwv_flow_imp.g_varchar2_table(698) := '779F46114914EE2960D9A3725FE0F964A56660EF3B0C0E8F8154336409FE4EC841E3BBEFD9952597DB2D7F5D5E12F82E9625087D8F599AEC917B8E32C1AF15FB9FCBA0A287EF110592AA6DE8FA6E6CE5EBFA9EAA69514AABFC35A645F02D432935920F6B';
wwv_flow_imp.g_varchar2_table(699) := '5A23AAA54B5CAEE3304D6266494CE079DA582B0CB0EC10EDAAA1F1608BE07B5B949EC88B7A9943DEBFB3FFC8F6BD2F8D6300F068286ED158EFFEE64E08A1DBE934A94A97042CCB220A7C4EE653B646152D2BCAD16EB3A86ACA5AAB6B954D7D4D79AB573F';
wwv_flow_imp.g_varchar2_table(700) := '574BE021D44DC3E536C3F72E46F66F12849CCCDA6B81CD71FD7F5B100242DF679626E37C3B7EBE61C86A97B1DE65AC76D9B35CDF5E1B7AD9D3742D4228D659C69FE71778AE43D3757C5ECCF9BC9811F89E36D6BA37B0BDF9B3F7F1DEDC8B9BE4BBEB8E02';
wwv_flow_imp.g_varchar2_table(701) := 'D7FEF4BE69E0F63BA41EF8E5B1EEFF33700C009E0475E7CEFB666FF05DB02C81EBD82351D0B62DE2D067394D28CA9ABCD28BFEAE2859EF723DD16639BBBC606B1E795551D6625453FB55A89A96D536D31909A948C290E57442DDB4B88E0D38A623E01801';
wwv_flow_imp.g_varchar2_table(702) := 'BC2508C3E398A709BEE7E29852C0A0B0F73F6717F4B267531428D349F21E8280BE9734B4F452B2DA6578AE36DA2AAA9AAEEF093C9793D9441302F9418FFCF0BB47088CBD395CABC3BFC0CB3DF493070380235E0AC700E0C9D827C73C1E9610588E83632B';
wwv_flow_imp.g_varchar2_table(703) := '7CD7210E7CA421FB357BA9D55D51F0FD72CDF7D59AB3D59AF3CD0ED775CC91F7AC877F6116B66E1A56529A7245C77236E18FD32575DB00AE56F87A070BC3474468BA00A6494CE8F9049E4B140684BE4FD74BB679812D2E5102E373F1ABCFF8F9184A6CB4';
wwv_flow_imp.g_varchar2_table(704) := '1D281D106C734DCC0D3C8F93E994BE9738964259C2B4F5FEEAB37E657868203CDA9DF71D0CA63786630070286ED5C56E0A67DC48833D206969DB164EA7E5338525E8A4445802D77189C290491CB39CA46CF392BCD4823C455D1B89CDFE96735ADFF7D7B9';
wwv_flow_imp.g_varchar2_table(705) := '03A6977BE0103C17522ADAAE474AA509549B1D7F9E5F32FFF31BB324D65C8024C6F78E7C80BF0343EBF3733FD95190C57C1F1AB9E0810BB0CE32D659C6E57647611CFCAABAF929D928AD442946C7496B6F0C0DDA1983A4F0F0F54BA0EB7B4AE345E0B92E';
wwv_flow_imp.g_varchar2_table(706) := '179B2D67AB357F5DAC48A38830D0464396757BEABC6E1AF4021FC89BC5CD1EFE5F741A47FC10C700E005707B517D9A9295761BB40141E02AA651842D04A1A77D06F259657403AAEBFA01B536DBA8F6CC37F4737B2DAB30100ADBBE434A8CE8D033AE77F0';
wwv_flow_imp.g_varchar2_table(707) := '165092BA6DB8DC6EF9F7F7331CDBE6F7D325522902DFC371EC5120E41800BC3D38B626A82A097D2759CDA6AC77399B2C373AFEF948547D4908B4E9D6A0DCE7ECC952032381AFEDFAF1EB0EF52C19E10183478610901725ABDD8E6F976BA6C939A7F3098B';
wwv_flow_imp.g_varchar2_table(708) := '493AFA661C71C45BC771143F17D7D8A9FAF9DA5AF718CB4D01B62510C242789A551FF81E933836939C5EC4EB462FF865DD50D63559518EAD8559558D7AFD4390501AAFF5AA6911C258B62A89443E4BF54B2974AB62AFA89A968B4D866DD9348D5E0C42CF';
wwv_flow_imp.g_varchar2_table(709) := '63394D097DDD1A283EA4EBDADB87E3D844BE8F6B7AE1D7D9944D5EB02B0A8410B4461CEAA5BB028465E11817CAD0BF3287711D071426C0D5C2598D71C39452A2C4F3DB67A5523A505612DBB6B8DC657C5BAD88421F85C2751CD238227C890B3DE2885F8C';
wwv_flow_imp.g_varchar2_table(710) := '6300F0A2386C02B28C31FBD03A18F877F7D45F796FB794757D6D2776E5AD5EB02D7437C1AE2C711C07C7AEAFED9E3489D048BCDEA1D3FDA82B3517D9B41DEB2CA3ED3B3679A165822729BF950BA22018898F96B8BB2472C433608866A38CB4E245D3CEB6';
wwv_flow_imp.g_varchar2_table(711) := '6561FBDA29CFB22CE6938CE52E633D9D50D68DB6FC7D21F9E731CD6F59389645E879C461481206DA32D6C8F302579D318EF69E1FC652DBF7DA04C8486C1F02A5147DAFE87B891035EB5DCEF7D506D771F05C97340E39EDA6D7B27E0F7505BC0792E411EF';
wwv_flow_imp.g_varchar2_table(712) := '17C700E067E3FEB68127635F6A582A9738D4567CAE49D5A6714431A9C7F6C1725F66B86DA91ABD73D281842E1D68B253C1362F0FF223D00E6C3D75DD6221B8D86CF9EFEF6784BE4B5694CCD298799A9046D10FAD3D8F787D1882C38115BFCE72BEAFD6AC';
wwv_flow_imp.g_varchar2_table(713) := '7739A5E1A11C8AC181D2B56D025F2FF871189098DEFBC47CAF1DE26C6D3DADA0194A5C6D4BD93454B51EEF836C716E38326D7755FE3A04522ACABA66B5CB8C9CB736FA6A5A2DD96D1DF92D47BC711C03809F82C7D5D8AFD4341F378108715D6A5820701D';
wwv_flow_imp.g_varchar2_table(714) := '472FFE6652BCAAFF776602ECAEEAA55D674A087AC2DC66397F9E5FF2E7F9054559D14BBD81944F0802869429AD76633B5F6F087D4F5BCDD60D7F9C9E6832631062091096383607BE2128184581CA5A070067AB0DEB2CA3AC9E4700746C2DB71BF81EB324';
wwv_flow_imp.g_varchar2_table(715) := 'E6743EE3743665399D8C023C71188C36D54316E98AF4DA5336CD58EA5AED32CED71BCED65B2EB73B4A530AD3C2464F3F3FA92465DDB0DE65F4BDE464AA5D3EEB56B70CB2774EB721AEF3808F9980235E218E01C04FC33D6E56627F017C7A2BA130AC68DB';
wwv_flow_imp.g_varchar2_table(716) := 'B6701C9B407AC83DA540FDF5C09096574C69C39CDEE70E9CAD36589620AF2ABE5FAE51AAA7D727FBF8AB34AA6A0379EA62B3050145AD858B1CDB6696262CA766C2541C7BA8DE08C6F29094749DCE006C7619DF2FD7E45545D5B44F7696DC876376FE49A4';
wwv_flow_imp.g_varchar2_table(717) := '7524FEF9E994FFF8F2893F4E97C4614014FAC4613076020C77CE204224A51C335D65DDF06DB5E67FFFF51D4BD83A858FA0EB7AAABAE110C6CB9001E8FB9EA2AAF86D39679717D4754BD7F5601FB35947BC6D1C0380BF1BCF20DF0D32BB0367C07DD4E1AE';
wwv_flow_imp.g_varchar2_table(718) := '1FADD8F324887C9FAC28B9DCEA49BD6C1A4DAE6ABB27B55549A90C2950B22B4A1450372D8E6D338D2396D3099338C2775D7C4F3FC6F429C749F4B542C1D8565A772D85091E3759AE77C1BD7C52B608F6DA42812808982509CB69CA1FA74BFEF9F9847FFD';
wwv_flow_imp.g_varchar2_table(719) := '76CA3F3E9D12053E91EF9B96BBBB79064A29AAA619390181EFFDFFED9D57772249B3B5776696375821A9C79D73F3FEFF7FF4AD7331F3CE4CB71CA6BCC9EF22B20A242109810C6AE2598B06F9A2A02B222323F6367BF894FC5A4A5192605C3675FBBAE3ED';
wwv_flow_imp.g_varchar2_table(720) := '343AEABA415614D45B9365488ADCD87DDB109294121F3F4FA04FF00FF83FCF30EF0927009F487F59D8B83ADC57187EFBC0A894846BDB683D6DF63447989FA7C88A92AC8A8DD46BB16769B76E5A14650521046EE64BFC75750DC7715056352683189301D9';
wwv_flow_imp.g_varchar2_table(721) := 'AD3A966546BB780FF558699AD6F48A5458A539B2BC4451D5466F429BA992DD439B1002B6D9CBB794C27434C06FB3297E3D3FC3B7E90497D331C6718CC075E09A7DFF971536251CCB02B4C6300CF06D32868440E0BA08DD2B282951D535B2A2ECA5B45FB7';
wwv_flow_imp.g_varchar2_table(722) := '6DA1CD3608F51E24A60F62182688021F52D0FF2786F98A7002F0193CBC683EB414ED3EFD485EE0F040A9A4111C12027513E26C3C449A1768DA16AE63A1D52D9659B6B7FD6B671ED3B42D6E164BB88E0DDD6A64798EDFCFCFA0B546E03910006C4B410A7E';
wwv_flow_imp.g_varchar2_table(723) := '0B1E2BA43A59F755A3B428509806B8A69B2079C5EF1342D0B695E3C0736CCC4CD9FF3FBFFF8A8BC9088330C0200CE0BBAE3129922FBEE59594D016F94E0CA210420804BE874114402A89AAA9CDD8A20490A3691BBC66D74277D11F34F192A439E68B0477';
wwv_flow_imp.g_varchar2_table(724) := '41C2C19FF9F2F0D5F708B83752B4F9E81D16C64A4A08DB866D5112705E8CD0362D4D16B42D5629F503EC4B63FA01CA0ABD73619AE758240900C0F75CCC4643588A448294E2E2E8B142AF638534CF916419F2A2405955FD6BFC5AA4A0A4CF736882E56C34';
wwv_flow_imp.g_varchar2_table(725) := 'C4EF1733FCE78F5F311B0F615B565F211062B766D1AE39502B0BB6B211BA1ECE860DCE0603545583554ABD2E8D691C2CCA0AC0EB2617BA776859D548F21CB7AB04832481EBDA881A560460BE2E9C001C196F3D37FCF0222A8C321F40CD5451E06352C700';
wwv_flow_imp.g_varchar2_table(726) := '80F92AC5ED7285EBF982E47E9B6E8A60F78B7DD735DE09B6ACD29C84835A4D52AAAE03D7B6FBD1C028F4E1BB0ECD9C4B65A61C985DD15B6E6F45AB5B54355574D29C4AE875636CA1F7404A09CF71308C6834743A8C318E238CA210B1EF431A312C29779F';
wwv_flow_imp.g_varchar2_table(727) := '8AD9BC97922A0C5A6B0801D37C1A63361EA135CDAA695EEC5DDDEA7C38D222479AE77D32F4E8B836FE051ECA8533CCF1C009C0D1B2C52BEB39BF8D57DA13033455E039A4382885241742232A2484C0D24C0BD44DF1BA4337B42D35514951400A817FAE6F';
wwv_flow_imp.g_varchar2_table(728) := '21A4445E56B8988C713E19E1A21E621847D4206883138023A26D2968526328E9471CA2B9AFA444E079180F227C9B4E3019C608038F56FC5218ABDDC38EB9FB7929C96D733C88F1ED6C82A6A56980BB55B2F7EF6E5A93101515F2A24255356F223FCC309F';
wwv_flow_imp.g_varchar2_table(729) := '05270047CCBED5805D1B09A59446E58D12817992929A609AA1D51A42089435ED01EF43DBB6284DD0A89B164248646589DBF912F35582B2AA604909A514B4AFA1A484BBD36C03F311B446E4A92C2B146589AA6E4C03DD7EEF4B292502CFC56430C0B7B329';
wwv_flow_imp.g_varchar2_table(730) := '26830122DFA7EDA0376C04EDC66403CFC5248E909F8D911705EE962B58072498DDA86B5196E67CBCBD0F02C37C249C007C299EBBF0BEFE024A15001B9E4341779992CE7B9265BDECF02249F73C560A206D5DA302905725F2AAC4ED7281BF6C1B5959C0B2';
wwv_flow_imp.g_varchar2_table(731) := '14E230A055A0F19D678E874EE3A1A86B1465DD3B40EE5BC9565222F43C4C0611BE9D4D301DC6BDD0CF5B4F8248214CB21143436391A4F8E7FA76EBC8DEAE34AD4665C4B4F2B25A9F0F86F9A27002F05579501D78FA32D47DE5F105F6E145D7775D4C0731';
wwv_flow_imp.g_varchar2_table(732) := '8A596564E6D736AB9D9C7051557B5526B406DAA645255A40D798AF12FCFDE31AB6A5906419467144FBC17104DF75E1BB4EDF0D4E02488FFD0498F7A513DB698C2155D33668F5FE2B5E2104EDD32B05C7A6863FA5A4D9FB3FFCB5DDFC1D42907BA0652938';
wwv_flow_imp.g_varchar2_table(733) := '960D4BD1D8E9217F471B41ADBA6950B70D1ADD6E1718DAFA374ED91E9839563801F859D02FB41A196192E72E7FBEEB603C1850239692688D046CA33516AB048B24A5B2E79E5B135D2396D61AF3558AFF5EDDA0A86BDC2E96980C07980E06980C634C8764';
wwv_flow_imp.g_varchar2_table(734) := 'BBDA5FB0A580D29215043F189AE2A0F740DDB4BD79D4BE08601D946D0B964512BFEF210E2D046D39F4C98645C9C641090074AFBAD934A4BCC9663FCC578613809F928716C5A28BFFCFE2B90E264220F45CD896425D37A88C788A34F6AFCB34DBFBA85ADD';
wwv_flow_imp.g_varchar2_table(735) := '42371A6DDB60912428EB0AB7CB25BEDF04381B0D3133B7A2AC208540E47BB0958280C28E8DE1CC1B42D31B2DEAB6B937FBBF37425050960A76B72A17F25DC65D01F4D506BB4F36C441C986D61A8DA671C26E14921300E62BC309C049A03BE758004F5F6F';
wwv_flow_imp.g_varchar2_table(736) := 'A913DF0642BA78E64589B22A51D515DAB635EE8129F2D204F3F6754230341D48A5D0242F9098E6C2C05D6295E648B21C499E434832390A7C0FADD6702C1BAE6DC1B62C4853467EE8C2F625D404CD9CDEBE16CC9F41A783D31DEF9B1CB330C59CEEF66E08';
wwv_flow_imp.g_varchar2_table(737) := 'F3B7BAF7CA1B686BE8EE7DFCF663970CF3D17002702ADCCB005EBE0A3A96856114E0723A8106955321045A4D0D5599B11CDED76A7593C698BACC570934C824A6AE1B245986711C230E7DD20CF03D78AED33BC8A92F66C7AAB12EA937C6B7FEA03440506D';
wwv_flow_imp.g_varchar2_table(738) := '471A7F0821DE769744082AD9DB4AC1B62C58CFBADFBD8CD6BA97E55DA6197CC741E47BEFB28AD61AE47E5994582519D28CCCA90E196394A2EB5F50702C0B963AEC7C30CC67C309C0C9A037FE7DA91B00B02D0B833004848063E44EDB968C561CCBC29D5C';
wwv_flow_imp.g_varchar2_table(739) := '199BE1C31380BA21AB5980D4D69AA6C12ACD71355F60321CE06C38C0D988FA038661886114C2B614A014248C4BE2C147F101683319615C1A75BB9B6DF47374415F4AD11B2CBDD5B25A08410980659980A79E34E6D985D2833DEE00001AF049444154B6D5';
wwv_flow_imp.g_varchar2_table(740) := 'A8EA06594E4139F67D0ACAEF5246377FAB288D8C718EB2AE0EEADA1742422909DBB24D42A4680B8361BE289C009C1A5A639752A86D530520F05C0CC3C08C84D15CBF06CD871FD20FB04967EB5AD63539156639AEEE16F05D920DFE6536459617A8EB1ABA';
wwv_flow_imp.g_varchar2_table(741) := '69612B85D07569F52F253DA72FB012D3D0D0BA45DBB4684D33E461198078500178DB44489A04C032150075E0BCBED61AE54605609417A8EA06FA1D46E936AB0D8B24EB950C0F9962E82B0016DDBA090686F9AA700270923C58799A6BD866295D4909E538';
wwv_flow_imp.g_varchar2_table(742) := '701DC0716C4C476406D3ADF875AB51350D84690EA4DBEB34D6D747636C674D79B632F6ABB64A513735202878D62DC9D2E615CD627BAE0DC7B24D97B7658215090B75B6C9527C5EAFC0C3D236B9EB51504A8B928C750E28490B010849A2377D47BD7CACA6';
wwv_flow_imp.g_varchar2_table(743) := 'B76B89FDE1B99166F5EF99914CC7B6A1A4A2F7CB1E31BBD52DF2A2C42249707537471C7818C52159EBDA16C9549B46C17DE8A616B491EC4DB21C77CB15AEEEE6B85BAE28897C8D13D0039422E741CF75E199F3B1ED5837CF779FE471B300738470027082';
wwv_flow_imp.g_varchar2_table(744) := 'DCDF0C78793B400A81D023F31640407596AE9685C073B14868447091A4A6C1EDC0E3339EEE80409A95B8992F8DA360819BF912FFDCDC62188588031F91EF230A7C849ED76B07F8AE03DB52BDB9CC67F60868D37BA135505535B2BCE8CF5557D5D81781AE';
wwv_flow_imp.g_varchar2_table(745) := '446FC3B51D4A82C4CB16BABB22A584EBD8083D0F51E0C1736C92EDDD3303681A3286BA592C21A540E87B184621665906C7B6E9355316F6DD65E867F49B0699B1EDFD713BC75F3FAEF0E3768E659A1D74BE2D25E19ABE8528F0E97CB07435F385E104E014';
wwv_flow_imp.g_varchar2_table(746) := 'D1EB146097E028055DAC21405EEDB665CAA0163CC7C63F37169AA6C52ACD8C51CC6149404BF36768B54692E768413D02B7AB2502CF43E0B9085CD2949F0C228C07642A338C420CC3106D1BC0731D08888394DFDE068DD674D1974D83B4A00460BE4A4C45';
wwv_flow_imp.g_varchar2_table(747) := '65BFAA09609AF494826D918AA2D5CFBA3F7528DB446B1E3DE85192EC6E43DF431C9069937D90925E8B242F20170B945585511462361A6095E5083C0F00ADA82DECF7373A9D0932EC2970B75AE1FBED1DFEFCF70AD78B2596698A6A8B79CFAE28494E8651';
wwv_flow_imp.g_varchar2_table(748) := 'E021F25D93007CF6FB8B61F6871300E64584D106F03D177A3880E7BAB4BAB6E80258370D9649467BD026C61CD2DD4EF3D6F4F37543DB01B7720525042CCBEA57F6B3F1101793312EA6639C8F47C84B6AF2526609692905F793E7B43B45C56E4F3ACD4B2C';
wwv_flow_imp.g_varchar2_table(749) := 'D214F324419A17073551AE9BF46CB80E5500E41B0AEB2825E1381602ED5205C0756059872500699EA3AA6B2C920C67E321BE2D13ACD21C83A0345B0EFB97E8B56EC9BCA8A60460BE4AF0E36E8E3F7F5C6195917B5F7D40C265294916C0BE8FD0F7E13A4E';
wwv_flow_imp.g_varchar2_table(750) := 'FF5E6398AF082700A7CC33B3E89B4144988B5C77E90F3D17A338A4A63CD3D12E8580632B9AE5CF722479410D83DDB8DBA1158146A301E9B1D77583524A5293530A8046595548B28CF67C6FE7087C0FA1E721F45DB836AD8E2D4537A54826564A696C8849';
wwv_flow_imp.g_varchar2_table(751) := 'F95099FDE7EEF3249E446762D76D846E0FBAD51A4DD320CD4BA445812C2FF0D7772A45CF5729D2BC4451D5AFEE01A0A02F8CB52EF938B80EE937747D10DBE3BFDE9E947542515B7E460A015B2968DB86EFB8085C179147D580A2AA4CB97D77319C7E6B47';
wwv_flow_imp.g_varchar2_table(752) := 'D3A4C7DD6285FF5E5D21F25D2459D65770A2C0A7C9035BF5DA0F5D4F0780BEA2D2ADF8BBFE9334CFB148322CD314D7770B5AF9CF17C88A8282FF2B8EB5436CF491788E83D0A5E71F775B224F5400BABF43F7AC18C01C279C009C3A0F92803EF03F13EF6C';
wwv_flow_imp.g_varchar2_table(753) := 'CB421CF880D67D00F55DF279FF7E7B87EFB773FCB89D23C973D47583BA019A03BAAFEF1FEEBAD12B2D4AA8158D2326798EDBC512A1EFF5DB04BEEB22E8FA023CEA0DF01C07AE4D8D838EBD6E20742C1BB699EFB62D05615974F1075E3561D04D4B34A614';
wwv_flow_imp.g_varchar2_table(754) := '7DB358E27ABEC0CD6281FFFBFB3BFEBDBDC5629520376E72AF9D4B574624C956163CC7254D04DB826B92A1B794D69582FA3D6C009E6B23F05C848187411820C9735371295F250D4D5A082D742B304F12FCF5FD1A6DAB71335F613A1C603A8C3119904950';
wwv_flow_imp.g_varchar2_table(755) := '14F8088D1A6497B44188BE61B4EB29E804A4E6CB04D7F305AE174BFCB89BE3EF1F37B89E2F5194B591EE7D5D02D04B179BBFEF79AED90E0910F9013CC7E12D00E64BC30900B3EE09E826045F08788E6D210E0238B60DDFF5E0792E35738D47F8BFFFFE0B';
wwv_flow_imp.g_varchar2_table(756) := '2104B2A2A472AB9193DDBFF0FAF050D70645595ED02A3B2B70BBB0601BCD77DBB228301AC1A0C8F7318C020CC20051E023704D72D025057DF3A08DD67100387D8560D73E89CDE36B8C0D729697B8592CF1D78F6BFCF9FD0AFFFD718D7FAF6F314F52E445';
wwv_flow_imp.g_varchar2_table(757) := '89A66D5F9D00F49DF98EDD1FBFEB3A701DBBEFA07FF1701FC6C027BE5F98B13729045CD7456082DF300AFBE75A56AFB3C46D5B0D2DE820EE96099A867C217E0CE7B89C4E70918C91E4052683B89F32E92A38B6B22004FA46BFAA6EB058A5B85DAE70B7A4';
wwv_flow_imp.g_varchar2_table(758) := 'FDFE7FAE6FF1CFF52DBEDFDE6199A65824190AA364F96AF545B19EB0706C0B81EB5002145105C03262404FC32B7FE6B8E10480D96023117806DBECC377CD61A1EF611C4748B21CD0405E94982F13D4550529451F14FBFDF0038FB05BC575EE84DBE856F9';
wwv_flow_imp.g_varchar2_table(759) := 'AE6D631006980C628C071146119598FBE9817EABC043E9BBA8BCB5EBDDE636C1BD51C26756D89D5D6C5196582619ED417FBFC2FFFBEB6F7CBFBDC3ED7285659A3E79DC2FD135E605E69803D7856FAA1ACFB1961C783C92B6EE037C3C062801402978364D';
wwv_flow_imp.g_varchar2_table(760) := '030C021FA33842D3B6547697055EFB4CBAD76F996648B21CDF6F04AEE7F4FEC98DBA64595768B586529246104DD36937765AD60DCABAC6F57289ABDB79BFE2FFF3FB15FEFC7E85EFB77794786E248CAF4508EA23F11C1BBEEB22F4E97D13FB0142DF37DF';
wwv_flow_imp.g_varchar2_table(761) := 'F364C7E51BE83C30CCFBC20900B3852D22014F2084806D29788E0300988D87C8CB025209FCB81D62BE4A70B74AB04C52646589BC284DE9B87DD7B51139D8350004D2A2804A24CDA19725FC556A56FDEB2A81E7D02A7A734F5D4A092564EF4A286527B7FB';
wwv_flow_imp.g_varchar2_table(762) := 'B82FA0BBCE57754DD6C9658524CFF1F7F50DFEBEBAC1F562816596212F4B33E2B81F8E4968A6C3012E26230CA310AEF37CF07F0B9492887D1FB3C908FF9B9CC356CA2836A6C85F9D02184C32D8821420174906C7A2C0BD4C53DCCC97F8FB3AA40A80E9DF';
wwv_flow_imp.g_varchar2_table(763) := '1020E5C8AE0A305F25982709E6AB1437F305EE562BE46581D6F4611C12809594887C9F1C2A07312E27230CC3E0A04648863926380160EE717F8F54BC281AD895893DC7869212B3F1085248447E80ABD11CDFEFA81FE06ABEC07CB9C25C24D4F9AEC957E0';
wwv_flow_imp.g_varchar2_table(764) := 'BD9280D6ECC56B5D23CDA9F45C94159669D64BDBDAFD8D340D6C335267997BB9214C4395000129E43D332221C4DA2C475383625799C88B02772B1AF9EBC6FE8AB27C55C9FC21AE6D611006381F0F713E3609C00BABFF354F05C497B738945488021FE7E3';
wwv_flow_imp.g_varchar2_table(765) := '11F575B42D9669861FB7F3FEA75FFB5A76DF4F0A81159629E948A44589EBC51281E720F05C28D3DBD035E3D1D689EE3D2432D364996439965986CC6CAF7415A77D5152220A3C9C8F87F86D76868BE90483308463D95FC67F82619E831300662B5AEBDE6C';
wwv_flow_imp.g_varchar2_table(766) := 'E639A4A9002829E1D81A5208C4BE8F8BC90857F305863FAE11782E1CDB82940255D3609165683420DED14EB5DBF3EDAC5BCBAAC22A937D2059AFEABB8FD79DE6EBA0BF0EF84A92C2603F41B0F1B35D63622744535415CAAA4251D5A8AA1A654DF7B5D9F3';
wwv_flow_imp.g_varchar2_table(767) := '3F2401E82A00B3F108179331865100D7545FDE13252562130C1D4B21C973FCB8BD836D53597EDF60DBBDFE655561D16AA445016BB99ED6B036541D37138D2EE1A24A0F355DD64D83AA6950D7CD9BF80B4849558FF3F108FFFBED02DFA6230CA3807C2818';
wwv_flow_imp.g_varchar2_table(768) := 'E627801300E6693AFBDE6710A653BC6B86B69444E0BB689B90C478FA112E324E9110A4EA57D0986059D7A88DB77AD3EA374D08BAA6AFD60486D7B2397EA6D4EE09403796561F203AF3F038BABF157A1E467184D96888B3D1007110C0B51FFF377E8D1C6D';
wwv_flow_imp.g_varchar2_table(769) := 'FF1A3F38F79BAB5C29057CD785062521DF6FE7980C0718C511D946D7F4BCF77DCE4DABD1B44FF7747C149DFF81520AB1EFF7E7FADBD904D3E11091EF931AE2BDED9FFBE7AD4B4E78FF9F39763801609EE141D0D8A5EC690C7A0400D7B5318A43346D0BDB';
wwv_flow_imp.g_varchar2_table(770) := '52087D17E34184D97888F9867CF02ACB519425F2E2F303C026DDAAB60568F81C645CD3CAF6DE7C78B705D05BFD36ED9B39DC09E3C6E8DAD49B3019C4980E639C8DC91D310AFCDEADF170D65E91DB8EC352AADF6E18C5112E2663FC71710E2555BF17BF7A';
wwv_flow_imp.g_varchar2_table(771) := '2383A8CFA26B6E0D3D0FD311F5599C8D86180F62448107D76C7531CCCF002700CC0BAC6B00628764A09B9D1752C2B31D8CA2088ED10D98C411E69321E6AB097EDCCDF1EFCD1DFEBD99C39E2FB04C33B48D3EAE046043CC856E0242B410EDD34D80ADE93A';
wwv_flow_imp.g_varchar2_table(772) := '7FAB4A8610347619FA1E62DFA3046030C0D97088C920866F14009F79160F6EDBBFE5A59756180F0817B41D308A425C4C4648F3C25481246DB3FC0409401CF8980E07B89C92CAE46C3CC47410D35696B3DD0008C0FA4DC0E63FCC17811300E6657A810073';
wwv_flow_imp.g_varchar2_table(773) := 'FF0C7D6014029E43A37871E8E3CCE8E0677981B428F1D7F72BF8AE072124756CB71A79590247163F361BD5DA863E7AAE01ECAD7B1A04045CDB42E4BB18C51126C308D3D100B3F100D341DC37281EC6CB8D813412478D908E6D611C47B89C8ECD881D2931';
wwv_flow_imp.g_varchar2_table(774) := 'DE2D57071EC7E7E39826CBD978845FCECE70399960361A623C8C7B55C2432C9119E698E00480D9115A013FB7B411B81F36945250006C50539E9264A7EABB8E99E5AEA1A1E1DA36C9C0C601C67188CACC78977583BADB4FDFD85FFEECC5D57B352E76887E';
wwv_flow_imp.g_varchar2_table(775) := '1F9AE47EC783181793312EA7637C3B9B92529EE7ED50FAD7EBFDE897786122A3EBE5E8F03D17A32832DAFB35D2BC4066ECA2BB31C8BCAAF69EC1FF481C9BA6421CDBC26C3CC4E574825F6753FC7A3E357D163E5CCB82BAA7FAA71F3DD6A694B296FF6598';
wwv_flow_imp.g_varchar2_table(776) := 'E3861300E615E8AD0F7B9E591951C7BD826D5115611086B89CB6706C1BA328A29E00332EB7CA72ACD20CAB2CC3AAF316C8726445B99602FE891BACD486CE7F14F8B89C8CF1C7C50C7F5C9EE3DBD9049338DA6DDF9FDAE5DFA5198DD420490EBAA91B9425';
wwv_flow_imp.g_varchar2_table(777) := 'C91A2BA570BB58E176B942BB5CA2AA71D4AF971040E0B91884A414F96D3AC11F9733FC7E31C3AF334AB602CF7DC5D81F077FE6EBC00900F36AB65DCC77B9402A2900418E75C32880635B184601CEC7232426D8AFD28CF4DCE74B5C2F16B8592C612985A6';
wwv_flow_imp.g_varchar2_table(778) := 'D5A8EA86E6BBDF717CF0185052C2756C84BEDF97DAFFB83CC77F7EFF05E338461CFA70B674FE3F44BFD696596F6CF1BCF0723AB68D28A044404881466B08497BE87FD9D76835D943D74D4BBFEA1D351FF645081AF50B5C1793418CF3C908BFCDCEF0BB49';
wwv_flow_imp.g_varchar2_table(779) := 'B62EA7632311EDBCFCFE3689D6CFFCBE647E3E380160F66477B54060635CD07CEC390E46113D26CB5F1274498B127FFFB8C67FAF6EE05FB9B0A442DB68644589342FE82F779DF93F2954FA7710073EC6831897D38949007E83E7AE7D0A3E538CC6359309';
wwv_flow_imp.g_varchar2_table(780) := '008C0F017914B8B683566B92F8B5E628EB1A685B34421CD5585CA7E8288540E079980C06F86D76863F2ECFF13F97E7F8E3E21CE793D1671F26C3BC2B9C003007B1DEEFDCEC00D83E46F6149DEB9A6359D05A631805A89B064A0A842E35BF9D4F46981B17';
wwv_flow_imp.g_varchar2_table(781) := 'BDA2A87A37BDCACC9F93000CDD57750DAD8FBBF40CAC1B2685699824396207A328C47434C0D968888BC908BFCC2618462194EAD4F01EEFB6AC9FE7860DED5E7BD17A43D4473C2D04B571004A2AF81E1D77D33428CA1200E03A16E6ABB477EB23BD80BA7F';
wwv_flow_imp.g_varchar2_table(782) := 'DD3E1225656F09EDDA367CCF41600C8E7E3D9BE297D914BF9C4D713E1A220E02D82F5458D66FABF57BEC78DF690CB31D4E009837E1B940FBD24A9566CC253448556E1845505221F45C8CE31817698A659699BE80754F409AE748F3826E0535A1A539059F';
wwv_flow_imp.g_varchar2_table(783) := 'A66D69E5D91CEF6559C8B5EA60E87B184511864678E662424A7FE7931166A3014651D4ABE23D3F85006C06A5BDD80C683BA8415A8ACAE83A26F31E2100CF75308A025CDD99ED9CF90277CB04494EAF5B5D371F1A3049AE9AFC1FE220C064186132883119';
wwv_flow_imp.g_varchar2_table(784) := '0E703E1A62361EE27C34C2280E31080338CF8E56763C68B23CE2649361B6C10900F366F417C27BDBC83B6E0F9892B665DCF702CF415547BDA46E5956C88A12F3D50A77A65990C46752CC57A911154AA02150370D44D3501540B447795DEE56FFD2A8CE85';
wwv_flow_imp.g_varchar2_table(785) := 'BE8FE96888CBC918BFCC26F87636C5AFB3096693117C13B82CA57AC9E2ED9815FF5B35FEF5E39FCF7F9B520ABEE7C1B62DF89E07CF71308C225C8C47F8E7FA167FFEB882D575D00B324C028AC38FEF15584AC1771D44818FE930C62FB3297E9D9DE197B3';
wwv_flow_imp.g_varchar2_table(786) := '09C67184511C611C47F03D078E65EFD663D117598EF00DC6303BC00900F3F6BCB224FAB03FC0DD90B6EFB4F39BB6ED67CD3BFFF75B738BFC04A1E792EE8031F5292BB2942DABBA771E5C0BFA6C11F901EE95721FADA037A5755FF1BC043D80809116DE58';
wwv_flow_imp.g_varchar2_table(787) := 'F5F78644B685B3D11097D3317E3B3FC3AF3353929E4D311B0DE9776DFCCEF5213D90FB7D170BDA971B099594508E04602370357CDBC62008901BA1222924A0E93974B3F40055693685931E4E78AC17D6DB0FE06122B4969D161B8FE9F38330C0288E308A';
wwv_flow_imp.g_varchar2_table(788) := '439C8FE93CFFCFE5397E3B9F210EC81A3A3632BF9BCFFDDE99D81C82D16F986831CC27C10900F3CE6C0F203B37B075C22B529A559C8BA66D2980DAD4293F8AE28D9141F298CF4BB21D2E8A927404DAC658C892956CB3F1B8FB7C63CC7ABAA4633359D80C';
wwv_flow_imp.g_varchar2_table(789) := '4EF76E8F0F175218E74073CCDD8D9AE42C38C67238F43C049E8BC0F3301B0D8DBE3F69FC0F825DCBD0B81F88DE381E755B0AF79E209E2E0A0801482561DB0A1A0E067188CBBA82540271E8E36E95E06E49D59BA2AC7AE7C4B2AA8C3604F57074DE109DAD';
wwv_flow_imp.g_varchar2_table(790) := 'AF6ED7F2CA9B815E9AF3ACCCB9B62DD5BB3CD26C3F352BC6A18F6118621005980C62CCC674AEA3C087E73AB01FE8FB3F71363695A1C0237FCC57871300E6FDB8D798B6A541708724607305DDEDE30A21E05814404755B50E241BF7345150202B4A146589';
wwv_flow_imp.g_varchar2_table(791) := 'A2ACFBAF9755451FF7AE7D95A918D4A8EB065553F78E72EDC62AB56D355ABDB6A2DD26F92B85EC9DEC6CA528D89B2014F81E22CF43E87B88021FA32834024821E280E6D007418028202D7AD7B677D84079EF30F4BA690FA06BE8A4C980511491ADAEEF63';
wwv_flow_imp.g_varchar2_table(792) := '361A62996658A6D95AE721250BDF4E4828CD0BD3E0D9A06EA859B04BC85A6316D53935AA3EC1A27BD76C95F88E0BDF73E83C9BF31D8701E220401CFA741F78887C1F91EFC1B62CD35FB1CBD9D0F7EE19E62BC30900F321E8AEAB7C0739E1876C96753D97';
wwv_flow_imp.g_varchar2_table(793) := '56FE917F3F3837DDBDB9759DE769562031C125C9736479812C2F7B59E22EE8A44589BC2C5176C9405519639FA6FF9D4DD3A269046A98EAC096D1B6AE9FA15B7D069E8BC075E17B2E865188711CD27EF320C2D9708033D3EDDF1BFED8366CCBEA95007738';
wwv_flow_imp.g_varchar2_table(794) := 'B10F4AD1EF1398D6F6D0C04BAF5F37A66859CA984079A8476BC5C034A7737FDB6FE32CB158A558A46B73A8B2AA5096A632D034684CB5466BDD3B322AA5681BC5A6731D7A2EE2A00BF0E4E4378AE87C7765FEC8A715BF65DC1DEFD90DEF5A95E2D23FF393';
wwv_flow_imp.g_varchar2_table(795) := 'C00900F381BC2C27FC140230A55E0078ECC7FE70FF3EF53BDF818D405F50F0EFF406325321C8362A055D25A0AAEAED0940AB51779F375F03D65B1A5DA9DFB1141CDBA615A9E722701D0CC200C32832894084E93036B7411FD0BAE0F9F0796DFBB8DB87FE';
wwv_flow_imp.g_varchar2_table(796) := '30E9D9BE02FEFCC4C76620B58C811000344D8BC075510454A5F15D0781E722F45D2C82745D1D3009406512B1BA69FA73AEB5867C98001819DFC073CDAADEA704A0ABB04461BFDDE27BEEB30D7EF7CFF7E373CF36BFCCCF042700CC0773AF93CA7C661D30';
wwv_flow_imp.g_varchar2_table(797) := '1E8D9CED2976632952D383583FF65D17A56FA60AEAF54ABFAC6A14663EBD691AD435AD3677D9027868FBDB95A5FB2D009B3ACAFB6A80E7F6A5E928F4E17B2E9452F71AD79E3F7D8FCFDFC7A1EFC7C457BE369DA190D60A02401CF89052C0756CC44180AC';
wwv_flow_imp.g_varchar2_table(798) := '28919B4A4C6DF41CEAA659F703689AE890A691B24B022CD96D01909682E73AF01D0781EF2134E7DC756C58164D51ECFC6C3766FDE9630EFECCCF052700CCA7F0E29CFA0BCD664FFE98B9A7B133538EB7ED7B2BF6BAE956F3A621B06D6985B9D10448FBFB';
wwv_flow_imp.g_varchar2_table(799) := '40D7C4B86B1360DF9826CC3EB509506AA332D0AD58BB92BF654620772941AF457A1E8BFF7C0CEB0EFD4747BB83DE83920AB0E85E0A0AFE91EF93A093D9F3EF82FEE684C0E6748080D8DE08A814ECBEE1526D34025A7D52B6BB93DFBAAAC273FECCCF0A27';
wwv_flow_imp.g_varchar2_table(800) := '00CCE7D35F585F9E39DF15653AC3615B8FC7B7B0D9CCBD39DEB7F98DCF1CEE8E01F76135431815BFFE311E97CC77E7B33BD0375EB357A0948434BD0D8E63DF1BC7A4FBCDDF8D8DCF6DE161B1A8EB5010EB2D99F5E7C47EC5245EF5333F319C003047C42B';
wwv_flow_imp.g_varchar2_table(801) := 'CD6B9E60730FFD4BF0D23EFFC3AF7DD49EFF0B6C0BD6CF211E56753EC9CBE0B9EAD36655E59865A419E62DE004803932EE975B37FB03A09FEE0F583FFC3C839C3763AB20D13196A1EF0BF6DC1FF72404B618171C0D8F83BCBE5F2EFAE0E361988F851300';
wwv_flow_imp.g_varchar2_table(802) := 'E6B8D9A6C0B7D5B1F65883CC216CACF48F3A18AD4588D61B03BBD90A1F0DBCCFCF9C209C00305F08BDEDEEC379DCFCB67EB857FC786215AA3B5DFFAFC4831E8B63646B99FFAB9D678679033801607E32F4E3E8239EFCE013797ADEFCB8C3E71E3C155C3F';
wwv_flow_imp.g_varchar2_table(803) := '726BE099F97E863955380160BE2EDBB6070E40BC77A2F0E4C4C133FBD05F9687FD01CF73FFD4EF79EE9F7B3FEC78EE19E694E00480F93978EA020F6033BC3C57BEFFD0EAC046E3DCCF11F09F62DB44C3168D87B7AE066C4DAA7EE6F3CC30AF871300E6E7';
wwv_flow_imp.g_varchar2_table(804) := 'E78D2B053BFEA9E78FE353447C8E85D7550776FFB54F8F4F9EE6796698E7E10480613A768C48CF7ED7CE5FE480749FDD449876FE1D0CC3BC082700CC89A19FFC50DF2B433F1D4C1E15AB778D5D1C9F1EB0B962DFB489DEF344E9273F6018660B9C00304C';
wwv_flow_imp.g_varchar2_table(805) := 'C75B5400983D798B0A00C330AFE18B69A6320CC3300CF3167002C0300CC330270827000CC3300C73827002C0300CC330270827000CC3300C73827002C0300CC330270827000CC3300C73827002C0300CC330270827000CC3300C73827002C0300CC33027';
wwv_flow_imp.g_varchar2_table(806) := '0827000CC3300C73827002C0300CC330270827000CC3300C73827002C0300CC330270827000CC3300C73827002C0300CC330270827000CC3300C73827002C0300CC330270827000CC3300C73827002C0300CC330270827000CC3300C73827002C0300CC3';
wwv_flow_imp.g_varchar2_table(807) := '30278875EF230DE8177E4088F73B188661188661F6433F13C0B77D8D2B000CC3300C73827002C0300CC330270827000CC3300C738258028F37F537B70A78CB9F61188661BE1EF7B7FDC5C6BF04570018866118E604E10480611886614E106B6B8D5F6F3E';
wwv_flow_imp.g_varchar2_table(808) := '7C6930906118866198CFE6F1A89FD8FAB0832B000CC3300C7382585D52B0EB3AFF39A10186611886618E9B2EEE5BCF7E17764F0C1886611886391E5E9AE2B3C4460980833DC3300CC3FCBC08AC25FDB90780611886614E90FF0F4A13CE20DEEC2D470000';
wwv_flow_imp.g_varchar2_table(809) := '000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(684427204009773658)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C07000000017352474200AECE1CE90000200049444154785EED7D07983445B5F6E94D333BBBB3E14BE48C8A121551AE6200034110458228BF64C9390705258B80225110C9';
wwv_flow_imp.g_varchar2_table(2) := '20A2A0025EB92802020282E4A882E4F0A58DB379FEFB9EEAEAAEAAAEEAAE9E9DDD6FF1D23E3EC04E874A279FF39EE0A21DF6A8D2BBF8AA56AB343E364644621A0D8D8DD4D0D040E363E354AD4E88990501353636511004D33E538C6F625C198B3282A0A1';
wwv_flow_imp.g_varchar2_table(3) := '8182A081C79B7661661363A38477F1741A1AA9B1B191E78779CAB9E35D8D4D4DD33EC75A3F88F9C839F1DE65AC43ADDF497B2EB866CFC3ABF26088F57D77D1C3C8C8300D0DF4F121C73C5ADB3AA8A9A99986870669786800C785E7DF522852B1B56D2AD6';
wwv_flow_imp.g_varchar2_table(4) := '30F59D95C1011A1D1972DE8343DBDAD6CE634EBB2A83FD343A321CD27340A5F60E1A1EAAD0D8E848F458A158A242B175DAE798FF83018D8D8FD2486590C6C646C3393550B1B544CD2D85FCAF9BC413C1E5BB1C541D191A241C7E1C92E64281F83FDE0D57';
wwv_flow_imp.g_varchar2_table(5) := '10D0607F2F8D2B8BD856EE6442989898A081DEC5F2FC13B86D5BBBF86DBA2E70E8FEDE9E88A9441C3C31868030EE340E38323C1C12B4183DE61173CF2A3536B550A9AD3C5D539BD47730EEC1FE1EDE23F36A2DB5535373CBA4DE9FE7E1E0C26D77A9827B';
wwv_flow_imp.g_varchar2_table(6) := 'CAABB1B1998AA5B625228EF20C5C1E82DEC50B63F5A7A191DA3BBAF860E07F4383031187C4DFDADA3BA83183D3E61D43DAFD20CC81FE5E3EAC38A0E0700D41038D0C576878B8A23D0A026D2F77395F270E4D2F4D4C40E551AF809A5A5AA8546AD7D4897A';
wwv_flow_imp.g_varchar2_table(7) := 'CEA3DEEF1A1E1AA291E141E76BDB3BBAA78D5105176EB7ABCEEEAB550A1A1B0994C88765064B031C8ABE9E85D162B5145AA9D05A8AC63C323CC4AA5044DC4D2DD4D65E9EA683125065B08FD59662A99DA5ABBA96E6D8F05B4BB18D8AADADCEF1816342E5';
wwv_flow_imp.g_varchar2_table(8) := 'A98273B2CAD7C0B6C0BB4DEF1F1CE865BB0857434323353436D1D828D444C18871EEDADA3A98894DF52508A05AA5C6E6161A1F833E2906018E542A95D9A89CA9D7C4F804F5F72D120450AD526B5B59139F58642CB65415F0CF8ECED9915A3495F3C29820';
wwv_flow_imp.g_varchar2_table(9) := '9D7040312E9BEA35D8DF47E3E3420716120D6A5A07AFFD4CB822DB1083A91323146AE1E2687ACDCD2DCC20C0C89485107BD938F5063D13407373810D316CC8181381B89A9A5AF8EF33F20A021A1DAAD05068E8E27043746A7A7410B01D10AB0D552AB696';
wwv_flow_imp.g_varchar2_table(10) := 'A9B9657A74CCDEC50B528D6F70723E0C8A595228B6510BECB0257C8D8D8ED2C8C8107B9A1A1B1AA9A558AA8B5A3C3A3A429581BE8821E0EC41E58691AF1AF43086A7C369115CB4FD1ED5F68E4E5E6E6C087456E93E04D197E0A1F0344A700885A7A2CAAE';
wwv_flow_imp.g_varchar2_table(11) := '3AE8BB60CE1071F5BF021A1D1EA2A1A17E965AF87667F71C4D7D00071BC4C286DE1349D4A5695083C6C6C6D8D083DE0FD5CC76F1F8124C073658FBB4E9C0E6B8B08EB09D4647879531C04C6C64237BB21A0154D291A10AAB70B82401C01B041B474A1D96';
wwv_flow_imp.g_varchar2_table(12) := '86E50E968A5379053FFFD6FED5E696626448C2B506234D5E18000CCBAC0B13C0C245BEF7D053219E83ABAF8D7DF1F5BB7402C038CB9DDDBAFE6C48097C9BBD41F014A96CB77E830ADF14B0EB135C2DCB35393E3E46037D3DC6C64FAFB72ADEEB8019A0F4';
wwv_flow_imp.g_varchar2_table(13) := 'AA99CB024608DBB0D60B871B73C59CE5250900E706BFA9EA2A2400DB4E53780557EF71986669C0D00225AA07B9A9A590EE650802AA0C4084C5868C6DCCF05DD78F0874028094692F771A06A43888431521259800C2580174F3A9BAF08DCA00B8688509C0';
wwv_flow_imp.g_varchar2_table(14) := '2501F07DD3BBB324BC55621D62A2955CB8A111B18989C860854D5A2AD7BE87786F5FCF22ED6CC504506586A1125F434313B5413BA993FD61DBEF04016090438383343202EF497C684AED6E3FB534F8B2826842ACD58BBBF91000F1E6F5F72DD6548A626B';
wwv_flow_imp.g_varchar2_table(15) := '7BA61D1019AD55CC2A9F3782395D7F0F47A8C1C5B2823B4308724501AD2A4122638C59EB595702AE56A99F39B0F0CD8351C9609BAA11348687528DE07A8F038E8145F3B5BD9004807798DA87D5AEF3FE98DF8D0902905CA9BF7791F60676313AA28C901A';
wwv_flow_imp.g_varchar2_table(16) := 'B8DF27C8543FE3462500E89245D69DCD43632380B4B9C849730C617C940F63818D52FF001AD601EB8175C198E0E948BB92412E8B3AE7B79F35DF05A3171C98D74FE1F4B0658606FB62C95AAD1298612DAE57CD6B178E542580C4B7A84AADADEDD4A4A8E8';
wwv_flow_imp.g_varchar2_table(17) := '354FD0F1A09500B0D94823508D1578025AE1A2B344526D874CA81B3060F47C0F5EDCB6323536A787FEB327EA4700F85E6FCF0283EB08D79BEB1AAA0CB21D24E65A85E140C54289034E3E440ECE25F4593F02804E0CCF88AAFF963B6651D0E04F74D9EB95';
wwv_flow_imp.g_varchar2_table(18) := '7E071BA7C32265036919ACEB23DA3C516569A6AAC40896C240CD2B056CE744250075DDE4686177E0BCB8BE05C70DE433F6C5676FCC55701000B1A132D007AB5C3C82014024DA7256AC136B2950A150A289EA38E1404D28860F5EDA8EB48449F9BB4D15A8';
wwv_flow_imp.g_varchar2_table(19) := '9123A9E64261517A0CB18B400B3638B16041C01EA341C54D27170CEFC5735069B2EC87BC0490DCF82A156000B6C07B944FFDAA851084E7A73FCACBC1BEB51485F1096701544835028D754B53895D63809B13C141559AAA042024A7FE2D04CAA036DB2E11';
wwv_flow_imp.g_varchar2_table(20) := '4CAC3071E23EA86D18779E00AE93006CA1771C7E108179C84CD1C6C64BB9231AB31990C20F480D985454D6F0F0D88D60C119CC4575E50541D767CE6DC9519193C142630DD2B88D3CD038BCADA572A6BA20C688DC98D83B8218CC74B86B2573632E3F3191';
wwv_flow_imp.g_varchar2_table(21) := '7012B0415F196097B37AF9D851DA03BC5FB1DB5AFEA6AAC4C279007B4824FD310132B175F001572F33CF4ABD1F2AAEAFF7C8490078A1F407AB5CB0DC394BDF7C4B40CACCB9B12DA2F0C69427E51552090FFE6997048071A749200AD863644A2018ADE050';
wwv_flow_imp.g_varchar2_table(22) := '69A21DBFC11642C0CAC59DE57BB06EBE04A0667BF2C667E406D5C2E95DCFA801399BA342CD6992EF688184CF955DAB4B6CF91EACA5EA25833BBDD2DF1BC509F89C589808D618446B654455E2E05A96F381D7D97483AA8B94C85721126E3D18C3D2351504';
wwv_flow_imp.g_varchar2_table(23) := '341CEACC929B7476CD4E0AEE2A515FDF22CDA525BC1DA59AF75255BD6C81B09087B01B54A4240B7D0EF796917065A860887C622EF15525B802115D56A39450E1CAE56EA75D2C757A5F026017A412D48B395F7A8668CD0B673CA8C622AC9207EECB450BB4';
wwv_flow_imp.g_varchar2_table(24) := 'F942E24237F7D7BB5D040037B1E2EBAF56A957C9EFC25091DFD5C286707CC13EE53C2FD326C5B9E44C59616BC26E4B73A3A61240D22A877B4C3780B0007A3433A08EAE59162E9A34AC279BA2AC120044A4CC04350FC6E888D03DE566B9EC19CED2449432';
wwv_flow_imp.g_varchar2_table(25) := 'BC1A9A9A38290B17EC215545692E14A9B5B5CD2A2DE0D284F4C4DEF84800BC9FF5E3B0AE41122E7331CF28FC648801DF16760F5953456C2A9A8B89B8C76127005395B2C60A126911010D412D1BC15EA98E822AB5144A4C18780F18176C9534224D25009B';
wwv_flow_imp.g_varchar2_table(26) := '558E97715E7DC83D79C0BD8B22BDD9A58B63616048411F570F228C511F51655D58C5C3E35281F870196176CC0B07D3CC09D2553E3D473F299AC3F4658BA3461040BFD0A73D6C005E1B4BBC4204D1A636128A6FB3FF1D352144CE644168033874B5EF9D43';
wwv_flow_imp.g_varchar2_table(27) := 'CA717A85922100863AD047E34AA18FE9B4608284611E6694CAB3C1C98E5DB3399A2D55DE2C97772A01580DC8206017A2F406897B84CF1B571A01B0613DD0A7E9E3C8192A8739FC79B998E6E1A9127574CFB67264E8B820D2881370EA31F4F858FD323D21';
wwv_flow_imp.g_varchar2_table(28) := '324B518E09E7BCB707B191D82BE3F2F14BD571B20490A622423A6393316EB80A9B9A9A72BB25796E303CFBFBD8F0C4414B46D3C50A98CC0B7FCBE70EB513808D4140BD190AB9B818A21E40154C7731558DDA08A9060F57506F2154D9ACE06B2601E0C06A';
wwv_flow_imp.g_varchar2_table(29) := 'FA2F9717C641B13C048001097D3CCE38E5685F673727CEE5BD540270DB0022C90F86B07A78E132837B4DF5BDAB554A660417DF32F36454179E3A76E9534F2380F191518D83819B69448A03D6DCCC29E990B6CDC5384394C53F38A4AC110E501453A02207';
wwv_flow_imp.g_varchar2_table(30) := '2AF3C50E30C6DEC5B0CDC6A9B9580ADF91DC0933570777488EEBB76FFE04605359559B4D637CCAC7A51A0CE65089D2E0ABEC8E67BBD57265120028910362CAC569D2A5B6A80ED75702E015A69E8D4359843A5283AEAB2F84CBF6C04621D14ACF6F326D06';
wwv_flow_imp.g_varchar2_table(31) := '9548D8F5D6D691C87C1C1E1EA291CA40ECA1709459CAD40691DF0F75513F9450D736FAF64EB4C247D6F63A3BA343C3F4CB838EE7A0D408BB126355247E8130D8A152E62B2E0701CCE7D760CE4D8E00A590DE71218B2400CCCF2F2AEC32F4932E4EBBAAAC';
wwv_flow_imp.g_varchar2_table(32) := 'AAAC62CCBA6E0F49586095133C60B0AF57ABB5705599A5120026393E3ACA1357AD6DA82D5CB81146DFF21000D2A5C1C174822A50A93D7F499F4A0099AA97514E684A0C550777B920CDCC4DBCC33C00F81B0C6EB8E95CE21704B0E12E3BD02A1B7EC48B00';
wwv_flow_imp.g_varchar2_table(33) := '0617F7D0CD479D4C70FB2299CC5ED60C22831FBF815DB4BEB5DD1827241F14BB443D853A3A9E571C2C933F995578EE095908C0E1EA4DFAF8AB9C0E81B408304C57E601A76884498E6C87454E852AB5B494A8582A2503A5696E5039191476A8D4C66A4B47';
wwv_flow_imp.g_varchar2_table(34) := '170727922A90DD1F2FDF65F3B5A77970D24E884E00EEEF9AFABDE45EEA86C79E9080550E885C331E608BD836B7B46AAE5C9553BA08A95602E0140D431A632E583F707EF8C5C505E31B751CE9E92658BF58C2DB6323EAFA9B7121F96D97F74DDB3B4B6A3A';
wwv_flow_imp.g_varchar2_table(35) := '2415F6C0B6CEF088A969D3B1AD483486547325C397676C265AC24E50EAC539AD1F1165837B644A009B212CBC28C27BA3130032197120DC41228837916E1D1B9359868A8B086202A0CCEF0AB7591C6194515A59EC3336324283A1ABD4158515DC5D4FD9C5';
wwv_flow_imp.g_varchar2_table(36) := '6153DDBEAABAE522ECDA08E014EAEF81B32159142F1125D4A43A9F8835DB35A1AAE0B307C93594659C4935CFB667C98C01B7EBDAFC96B037E6F0F9B545A60553D62B02CDE21B5BF43A93003011B8C9A46F554E4CF500C02525D207206A8A544849E575B9';
wwv_flow_imp.g_varchar2_table(37) := '566BC92D814EDCD78BA278CAFCAE744D6AAA5773812BDE3026A87A0303A22229ADFEC196B2AB1A68C2961035AFAE58415E02A82CEEA15F1DF17D2EEF34B9A5EA2214157DA2A804FF87970B8146F319750DE09606D1FA5460D902A36CE87B46F44DD5055E';
wwv_flow_imp.g_varchar2_table(38) := '2ED892B6F189BC21A8CA21A30CB35021D592917DE10F105A49EC4C31F3D94CCF1E4B0E1F15C8C4D8912A040ACCA3FC19CE23CF26003C1B134C28B0732CA2BA79F182661300D691BF2BD1E24224B2B6108A445581D208C096B22B388BA8AA8B0D3884E3ED';
wwv_flow_imp.g_varchar2_table(39) := 'C67D2D0470E36127262427D6027102E9CE5539BA5C27D828AE32463547CB87006C4C04DFF1CD0BD208C00262A0490DDE2F14CFC49A023C39D02EFA7B162630856C128C996D98E36455937C09C0E601C066175ACBD4D4D4186D0CEECB2A63336D063130FF';
wwv_flow_imp.g_varchar2_table(40) := '8051AD04806F98A2537C57C0BF407D808B364B02D812E65469285D7818A7CBBD6B23809181411A1D8EDDC3729EF0200DF5F6D1ADDF3BCB4A007A117DB2022E2D9B527548F81380C295C34166059BE45CCCD415E46EB98893ED93E18AF0BA85AE5D9E4B7B';
wwv_flow_imp.g_varchar2_table(41) := '27F5F74B8D233E0D706B27D037A0B256D2B1A1BC2400AB4130C00C883F647DC20E101084C22F9CE516B3110073118FC211A751555572945C06030F30998F24F3CD55B19A26019890B8DC31CE8E1487A78B553119C4490B2AD908E0DE4BAEA627EFF83351';
wwv_flow_imp.g_varchar2_table(42) := 'A0DB4622F3B481469940F5C387B1A84149B9072A5612FEE6429A506B007CD252C6C7C715FF7ABCD0BE454E260124122B8DBD835F8BF745B17B107B017289A93609D53B995706B7B10C8AE100C055AAD617781380CC6F313320B139B15A91ED491004A0A7';
wwv_flow_imp.g_varchar2_table(43) := 'FED64200AA07838DF236BF58020E123C08AA570BFEF309059F07D56528E277E9CE666459E8C1A89568A201040E4786194E069B65BB6C0470DFCFAEA527FEE74EAAA26E22F454E0BDA284B481035F882FA897FCAE5A9F605FDF24F4A2F08C010647A4605B';
wwv_flow_imp.g_varchar2_table(44) := '39A839788B1AE9FDAC25DD03690B69F609DE8DC30F433DAB2EC2557ACAEB06C611A952552A77CE8901857D6C0056532CD468AE8FB3D044B99139A802F42A7FF215A3916AC0392328C41F766677DA8501023AA62747BD33BB0C0F7310702B7186A9447F00';
wwv_flow_imp.g_varchar2_table(45) := '1816CEAF9008F6A8AC8B009EF9E3DD343A064F957C2E6628A6F1CD7BE2A8B136F37670AFA90AF1C1026E69F829B50ACC25445DD25B8D0BA50960B574362D6E63BE03309236F7AF7A165C86B8CD75ADDA66DE12001F3393CACC81FA1480E319E8C94315BD';
wwv_flow_imp.g_varchar2_table(46) := '324835E6D216519D7454E8820AB39053FA3C2B8C3FE4FD27C159B95AADA32B133645F5F630176C6AA242A195D325F04F9B3896637311C0B377DECBE25A120EAB946504779AD80B274B16A3357005920C7C2771BF8C14B731E198EE5C9FF5771100A808D8';
wwv_flow_imp.g_varchar2_table(47) := '5259183E6ADC4640AC00CCD7AFE28D896078282ADA89F6B98A7989027E1BC3616665622F296596B908001F45306614B8410677831A810A2F9F0BBAE48081D4E0CAAB497B9FF426F9F8B0CDF7B0CB300CEDC7072ECC21F7AC57360FA57C8F9A2D6B1BBF95';
wwv_flow_imp.g_varchar2_table(48) := '002EBD96FEF1970722572C1F59B8FE42B8477B10CA1E48C2B3368921A406583EF2E575E2F7615E2EF5D5E683B7CD5B12007EB365E3669D1DC6461D19A1D108BD5094A942FF4F4BFF60868B524CA95A2AD850B90940048344A85F5CA2F90428D0979AB110';
wwv_flow_imp.g_varchar2_table(49) := '22FF2456116C3EDAB4055151ECBCF457C7CBA02342B2612450C3F2E5D124D529690BA48D9D0960E7ED6995FF5A3FBAED3E10C0BD0F8AB49398BD8568176D89EA3C963AA9C5E94093EED7F2619C630ABD61593D0AD8EE1A1C4838437C9C1F92F8509F8DCB';
wwv_flow_imp.g_varchar2_table(50) := '555F9E450431118B3BB36C08F93EA4EBC87BA5D711FB909B00C2AFD2E8283A968C133C4159553789498529B82A0E290683642C97DE6CBE03657A10E398D4642BCB5495C36703D47BE01685FB121C15411A1CCA3446C0AEE2721B7DEE90BDA87BC5E5A257';
wwv_flow_imp.g_varchar2_table(51) := 'BDF2F06374E77997B17DA23EDFC048C965D1074105160809362DD0C5866E18014F5BD73457A9B91EB63C1C9E1310B0339A5BC41220E014F8C98122E4DB29D32E02B3C3B86B23807CDFB6DE8DFC731440471B93538F57BD523EE2BB0E439EF42BB0E020F4';
wwv_flow_imp.g_varchar2_table(52) := '2DBF7738752C3D2FF1BE571E799C7E7FC6B934A1A92701433E26080087CEC7F355AD12BAE8405DE30D974257C0FFF07850F5E67B188112D1C7917F3D2503AA086B0129286E920004C14D3DEEA7C6A890118C141C097810228A2F31023061B25583CFE7A4';
wwv_flow_imp.g_varchar2_table(53) := '491D178B2A405BEB893BEA3382FCF7B4B4B5D2A6471F603DFCF26D4FDD7E27DD77F975918A897581BFDC4C0EF3D5BBE57BB14EB288860F696323C38F43E5F35523E4BB04EE6932251BE34CBB64941C6EDBAC52C5FCAB9BFD043302231379091280511D06';
wwv_flow_imp.g_varchar2_table(54) := '5506A16EA54A2B6D4AAA68AF258F287BB9EA7707E7E5B497E8B3FBEF4673575F25F3C52082BB7E7A854837E72061993BCA685CB74A54EE9E5D036E66204CAF49E06D623E9CEFA4BDA34AC5623B35034FC8F16E996F05551146B0AFBA9BB960396EC03AA2';
wwv_flow_imp.g_varchar2_table(55) := '624C4AC225460018330252B0EA632EE50709C88678982E5B8B0728C77A4DFAD634B5A7D2D74FBF38E347F4ADEF1D4B0D8D7A45DC8B0F3E42BFFFC1B9D410046CE38CA1FC51513B601BB45B309A263D609F17B0236440EB2581C738FB1555769677C40674';
wwv_flow_imp.g_varchar2_table(56) := '85B30704F6E992B9604B21B3819D1FBE81B0A918AA8989C9E2DE0312500D6E70CE7D47F7A438DA54CC4DBED3A5F6F4CE5F48171C7814E19FEB6EF229DAE6907D44118B7245EAD0E8A8E676F6C9B99ACA39E1DD367502A2250DC942669E9A5840533D56DB';
wwv_flow_imp.g_varchar2_table(57) := 'FB419070C72F5102B015C72470872CA3578350B516D34CF5A2A7A93D38F4571C7F0ABDF9E24B6C7CC28BF4912F6E4CDB1F7960C218D5D4A1506EB3FE9F924836D573C3FB5D79412EBCA038F1CEAF58673AE6806F2C5102C00024579013F6411A5023D259';
wwv_flow_imp.g_varchar2_table(58) := 'E0A9D3B590EA7752D59EFE01FAF1B70FA6BE050BB5C30EA25E75DDB569B7D3BF9B2082481D0A73DDA1624FB71BD15C4757500CF799C9849C4E1F8212481FBC5F1DF1D4EFDE1225002CC6401F4ADF543B40C71DB22D81C4B18131A7E6E24F66B970682191';
wwv_flow_imp.g_varchar2_table(59) := 'A08BC3AE988C8196A5F6F42DB443C98308D6D938451DBAE23A9A181DA7C616D172756ABBDC64AF26D7136B813BF94C951A1AD0EAA9C4F5BB6A0DF84CB3D9962801B0284D603CA6EB913898121326AFEBD4B5A538780CC614069AE0D30668560BB2397334';
wwv_flow_imp.g_varchar2_table(60) := 'D6CEA3F6B8C692A60E3D77D77DF4D055370ACCE61CE3CA3ECAB5DD8131C86A41DB1BD4C86B24E1C33C9CC978A16A1BADFDA9254E004294EA90D869794112C5401CCC80CA5D30806B5F124E960AB34A6D623EEA979CF1895AD49E348274A9436F3DF74FFA';
wwv_flow_imp.g_varchar2_table(61) := 'E35917E5F6DDD7BE42D94FC2AD38C23085E9977072243159B39E4BFE0E0610FF55785D6B3B044B9C003074D19D043930D92D99A04B8A028974C023DF45B5013EA9CFCA16B259C1A25AD59E342270A9432F3DF8777AE08A1B686C24EE31EC3BDF29B92F04';
wwv_flow_imp.g_varchar2_table(62) := '4846802C6D9D90258B76ABB51E563EE648EF184242A62848824AD5D48284B8D6CCBE0DB6B94F190120F702FA1F8C1D18AA5922DBEC130B6F02C067F13C681BB93F10B7B2895ABD7449AD35905852FEA6FA9DB42E99509F0AED6DF4D90376A7B9ABAFACAD';
wwv_flow_imp.g_varchar2_table(63) := 'B1E9EDC97BF8D2D421100112E8606066AD6DDEEFD672BF8C3403D31363E2748E6A95FF095B05C12F158AB2966FE019CE46362A130541215E829A613B029CEB7B534000A2419C8AC7CF101D80D24EE908636BA2C19150405D0BD2D70BA40B252A845D4C6A';
wwv_flow_imp.g_varchar2_table(64) := '5D4C3CA722D581BB007C0990844060608114D62BA3DACBBCE4E1476E4F6B97DEC5A4E2F0F6E41D6B9A776826AA43727EA624A80791AAF11F751D458E53C074508C2AF1FC54A2BA1280D0A79358A272B0696D52D9A0E230B58ACF6F3F2E5C79D6D65E172F';
wwv_flow_imp.g_varchar2_table(65) := '88DEA15114C330A75150D0ACD9A6C09F9FD5499B1F7730153BF53A0819E472797BF8032068657A690724CD3B544F750807092A2138387AC281F8EB7170F312BDEB7E13990F6B08950AC53C4816846A8CF12246E2EBBCA82B01588323DCB040A816F83F70';
wwv_flow_imp.g_varchar2_table(66) := '78B88793E5C2E0658451A24D8B2703CE5A44E216D429E0EDD4C38B800D970B87EFA8C6B71AE9B495FC95BA3B699383F6A0CEE596C9A5F688A28E519AB5CC523467B965A9A558A0C1DE5E7AE3C597A9D2D7472D88065B3C3C99EAD0CFAE4B6DEDE47308D5';
wwv_flow_imp.g_varchar2_table(67) := '5255D6AD9B9A581A9ACD297CDE3515F7C4EEEFB8D189442854318B18F9BBE0A70AD59500CCD406C6092A009869224265C3C28A9E4F6E3468F6C9C3253951A5A0B1412047878961BE94EDB3016671BB8A9EA01AC7188F0A1C3B36344C5F3FFF342A74E8F9';
wwv_flow_imp.g_varchar2_table(68) := '2C596A0FEC8D39CB2F4B5BEDB33BADF8A10FB0AD01D89389B17176043C7ED7BD74DB4FAF60DBC9C679D3D4A1379E7E8EFEFBD473A925A70E2CD7891195513565496443CD07B05BB34A1E7DD6BCD67B44CC48EF328FBF49D0005585CE535B52570230A1CF';
wwv_flow_imp.g_varchar2_table(69) := 'B170A81595DDE725BC459E028C5A17CCE73984E7C1F5A4ADA122429BEE51EE16D32EBA968F56866897ABCF4B707EE4F638D59E6A95D6FECC276987630E491DDA82D7DEA0CB8F3F8516BEFE86D56692EAD0570FDE3BEAE48817F6CF5F4057ED791875CC01';
wwv_flow_imp.g_varchar2_table(70) := 'E241FECB86FAA6BEC58771E5FFAAFF13D80FB3DBA7E6080181847D2AF2C487EA4600A63A0105978BCBA3F0BD0887B37184D4E7422BB502B6CF7F0DEA7BA75195C6E0A9A1FE2F3FA4A218A8F9F726012036F1AB1F9E478FFEE99E445627DE353E364E6B6E';
wwv_flow_imp.g_varchar2_table(71) := 'F471DAF1B8C3BCA0C4FB17F7D0C5071F430B5E7FD30A1C353C58A1ED8F3E9836D8FCF3D19AF4CD5F403FDF793FEA5E6A1927D854DA02AADE151C36786C307FAD4B3C8A5EDA20F5F2F520A8C7C6259A9C84D9A7B2183ECE36857BB4EA6C9C6E8EA56E0460';
wwv_flow_imp.g_varchar2_table(72) := '96CAD9EA7455FC4D0C18154D28CA581217BEAFD6252374DFDEA1B780358374F03523BC3F3258D12400B086AE3BF92C7AEEA14712AA0B08077AF4F77F775DAE69BEF2ECF374D1C1C75A55217C6F8BBD76A5CFECF0558D002EDB793F2AB697A9DC99EC979C';
wwv_flow_imp.g_varchar2_table(73) := 'F67135BD1CF7891EC5223355250C5315CC3521ED6611C8CA8AADA88FD84A31CD3366822DF8E00E0557EE764855AA00B54F88447002D0DDA10167C3086229A13459F045149BCCB85CCF9A0BEA4283138878A2199B9412A60480817ADD293FA4E71E4C1200';
wwv_flow_imp.g_varchar2_table(74) := '90C9B639747FDA70AB4DB5A13C7DDF8374E3993FA1BE458B68B5F5D6A66D8F3890E6280635EA24AE05513DF8708208D208A0500291C658A53E6BA762BF9AF115763D2AF89A93CDBEC5FBB0A6880FC0E960F669F3DD2FDC671280AA26B11AD4DE458D4D7A';
wwv_flow_imp.g_varchar2_table(75) := '7FE18404B860DB5DAAF0AC140A456A4497961A2A85989BF62CD45BA036173837DCBC7451ABF77EF2D9AC7ADD6336FE7011809AAB8479C24E407B23D50648230020581FF2B373D9F895D73F1E799C7E76E40922F18E5BB08E52A1B548475D7309953A6297';
wwv_flow_imp.g_varchar2_table(76) := 'EA5D37DC44B75F764D3E02682BF1C180BDA23B5ADD2BA7168C9B805522DF071DD951AC0F3895C9A562CB3653D2C877411A9AA3F5910078675F0F009045BDB24FF38EE0C2ED7665351C0F03DBA714B63ECA73D040CDC0AE573D17AE7C1E159095456A3B20';
wwv_flow_imp.g_varchar2_table(77) := '05D31B39E4198BDFBDC96E252E0250ED0059F04163137E0480584167990EBAF81C6A530265D79C74263D79D7BDAC1AC90B44B0E96E3BD1C6DFD836FADBA37FBC8B6EFAD1856C43A857AA04682B09B0E1B60EAFD40053CD13D899C96E3DE84C235318A42A';
wwv_flow_imp.g_varchar2_table(78) := '984785C1F8D51E0CEA7CE02C41766B5A8AB48D0092503A806D41A77981D8E723AD22029003F281C8330F99AD6BB70B26518FF8FA1B2B7E07DBEF2ED3C383A75C046022C031765035C84500075E7C0EB52B0470F58967D0537FF92B3536C7F60FD6F053DB';
wwv_flow_imp.g_varchar2_table(79) := '7D85B6F8F6CE3101FCE96EBAE91C1080C460123FD908A07FFE42BA7CB703A9A9D8C2F7F8B758D5FB6DB9D6016D548786504B1BAB827EAB2DEE128496C48495EF6097A6D27ED77C77B28FB21EB709BF42C395FE10B7488C53B849DD467B48005C25CDEF80';
wwv_flow_imp.g_varchar2_table(80) := '06046A44D99A17855B5ADFE03D6960555A114C105047A7ADB1769EE5CD772F1300637BC61D639C04001D98BD5702490D764B2335FA114098AC75D8E5E753D7BCD83DF9C8FFDC49D79F768E087A61CD272698CB1F7AD979346FA5E5A3C9DC77F3AD74DBC5';
wwv_flow_imp.g_varchar2_table(81) := '97272667238081058BE88A3D0EA68666A1F38291C116C88AE49A9C9513D680B26CA8C2A2A84534FE1012A6CC7BEC7BD93A03A9CFF23B5D3D951D67CCA665A8EA9C54595D10EC3C17A840B0FAB1A86A27F4B4C60AE6C06D9D245D70DBACA7298DB555F7A2';
wwv_flow_imp.g_varchar2_table(82) := 'EF624EF6BE5C12C0E830097BA93168A45DAF3E3F1A46AA115C19E22AAF3536DC20BA1F1CFDD68B2EA77B7FFD5BFE5BB1BD9D763CF6305A63C318290EF7FCFA9C0BE8D13BEE4AC4035C0470F55E8753B54130321FEE87FB740208911DB839B7EEA0664F91';
wwv_flow_imp.g_varchar2_table(83) := '8208A87A8A7CF623D1F1C578481C5617BC4DB2EF0133238B9DA9AA593E841A5CB4FD6E55E88BA078740B945E1CDF22BF64C000002000494441546015FB5F2DAD545D0D1770BF890E0D281440A2D46280FB2C7EF21EA45C0CB1B8943E6D97EE2BE21B10DD';
wwv_flow_imp.g_varchar2_table(84) := '420280EB353534D3AED7F811009E43DAC3E1975F901806FCFCF8FF6AEBAEA5A943B871D19B6FD379FB1ECE101EE6E522806BF7398AC649A48A0B2F488733ED44BED34A000E681335D22FC06DFD911D5C58A5EADC5C9D666C0CCB4900A3239C8F26255F56';
wwv_flow_imp.g_varchar2_table(85) := 'DF092600D95ED2ECBD243A0D0A9DD27D250D4ADC6BEBD914B2261AA90C72E29BBC5C872FEBBB7A51449E905A72CC2E83C9F491E72500CC0112E20BBB7C833EFFAD1DBCE9F5F2E34FA667EFFF1BE7BAFB12C02FF63F96462764F3080919295A8BBAAE0401';
wwv_flow_imp.g_varchar2_table(86) := '28ED9ECC6754384A9F267CD1F346A716F177D15051C2DBF38166B894A4E7D0A6B2BA0820A1D2B596527399828BB6DFBD2A0D0513AED00BB1D9A19FA5A936A6D1EC63AD270EC1C8B080CB2681108CDA01FFCB4600292D3B95CE90B51000C6C590887BEF4A';
wwv_flow_imp.g_varchar2_table(87) := '1FDB528F07D8C67CED4967D253F73EE0D4DF5D12E08603BF4323E302421C57DC5AD48F00B25C9C2A2031EEF5ADEE3299889C3390E4B814754C14F6B8882A1701A049616FEC91CCEA3BA111800957E8D3360703870137D0BF58DB3021821D5DC4AB44BD3D';
wwv_flow_imp.g_varchar2_table(88) := '71EF615F7D552E1C166CA01F624E3D3E08DFB772C779B5EE007EF8A642B3402C8BEE0F680C2D8786D5FE53A2AB7BC2775E05D4F8207768E14305A0AAC616DAF1C233A28FA7D900EA089105FAF1AD36A34D77FB267376890384838577BCFDF22BF49B9F5C';
wwv_flow_imp.g_varchar2_table(89) := '426FFCE35FA9B5133602185CD443BF3DEE7406D01A9F10078A0F29C315A611C044ACFA869D1805485740C3FD037A621E7B72163181A5EEAF41D5B6AA3BC49C00FA3B3C0C55346EB125B33BB59DB5382D9C12203F01EC5695EE2761E8C4DD537C2769CBD3';
wwv_flow_imp.g_varchar2_table(90) := '1061F3B255853203163ED6BA5C10614427C159E586438C4275832844C6E9F21F5E8B56FBC4063467F55574826170581523DF9DFB2EBC61F210092A2A9663FDD79700F01C8CB4425B8956FAD01A346FC5E5391B74646898DE7AE9657AF1F1A7397299E6B5';
wwv_flow_imp.g_varchar2_table(91) := 'C03B6C04C011D67E7190F4030F840BB76CD4E7268C67213D1AE8DF0F3D4AFFFCCB83F4F6F3FFA286705C524DC6733E88D078971E4B1184299FD552E81DF0982E0960F37499DFCAD2624223387669E94D1F64E3EB64F3319342CD4C3DD132D5DD29053EE5';
wwv_flow_imp.g_varchar2_table(92) := 'D1A1C1D0E8F6074B322798DC5AE14D58E683EFA7F577D89A3A975BCA2B01CD7D44B27FC94300F26D7CF05457638EE2131B01648FB2B63B40B06F3DFB4FFADBB53751DF3B0BD8E101BD3DDE5F7753F468AE1313ECF993862933D6721707EACCF800FE1B52';
wwv_flow_imp.g_varchar2_table(93) := '4B75C1BB08C0E66AAF8D0014FF6BD25DA57742B72D2306D8BB788129F8A809CDE6D8539014C166BB25DFC08D2DE816665609DE3731419DF396A26F5C10AB28B56DBDFF53B51080FFDB93774E2701C8AF8F542A74E3C1278876431101A4374597CFCAD6B1';
wwv_flow_imp.g_varchar2_table(94) := '6A4C02555B5255C559A8F4F7323314D9019D5C8C23AF3C0420D4F89EE8CC65355E092EDC6EB7AA8AE72872F7C3B4E5508FCC82E1632A065A83D1C001A21CCFDA026AA6BDE1D7E4C2EE7182A103C2181F1F6502287575D1CE97FE88A0FF0B792E5B03C587';
wwv_flow_imp.g_varchar2_table(95) := 'C9362674283549954384860A210ADCE23FCE1402C07CC57845917874805C60D0D12DE27E2D68C6E591F17A557A7AE9E6634EA1E18181C883D7D4D442AD688B95913F66A640982E720CA35749B5303BC8E7250074959481CBACEE411C08537DA5A648C212';
wwv_flow_imp.g_varchar2_table(96) := '64E57E080258CC7AB77AA575024CB817E1C9C9885C72CCC1D2A207E3C7C57DA0C469A739CB2DCF3E7BEC6173B1853EB9C74E346BA5B823CB2D279E490BDF782386C90E7BFD9A8481CD199F188FAAA5B0D74D41137DE3A21F44539D09040023F877DFF901';
wwv_flow_imp.g_varchar2_table(97) := 'B5B416F980C243061AE54296B0F38E5683CCF89EA80213AD5737D8FE2BB4C6269F8AE6F4AFFBFE468FFCF277844220BE262668A8AF3FEC832C9C07BE9D1E4D02481C4AEEBD8C8E9FF61C1E571CC076B8B17FA21186388B5E04A0BB8A6CDDC64565973B35';
wwv_flow_imp.g_varchar2_table(98) := '22085BF188B46179A54900DCA342A1F8B4DAC44280BAC1E955F1089D9F1A1AB4843C15CF071EA04D0ED993E6ACBA52F4DC2F0FF90E2D78EDD53810D6D442A5F6B2435AC5E9105883A6A099F6BCE1A7338A00900A71C381C7534B09BEF5514E3BC77A7134';
wwv_flow_imp.g_varchar2_table(99) := 'D4916220131371CF2776D991D6560A6C9EFFF37DF4D72B6E48D84F13E313D4DF27F4F9BA1100A3730CF119126386472EEE5AE30AB6BA08406D26826765D9A4C69DC3FF6009904849AD5689B3FFC2B3CC5E9AF6CE943ADE404B428A3E5425EAE8763743D6';
wwv_flow_imp.g_varchar2_table(100) := '0C6EA382CC365888DA856FBF49D5F1F1D827C3631319A5F00E410DE36137001DA05BB82D5B8BB4E9D1FB6BCD29AEDCF3505AF4FAEBD167E03D523B889BDF87FB4F4483AB144C0474E0EFAF9F51048064B86BF63C9C09401A821820E6EF8A864A5843DCF3';
wwv_flow_imp.g_varchar2_table(101) := '996FEF4CEB7E79B3684ECFDE710FA17B7D2401944D15F61EA00A82C4FE82E93515F4E069A60430203205D1AAE00976D5D7CEDDC3DE05A1DB3A2B5EC1046086B559A501CC4418A0C0DC5D616AB12E7602C0C73BBBE73825875A872A8C9F94D468780EE6CC';
wwv_flow_imp.g_varchar2_table(102) := 'A24FEFBB333597E28A7F01DD235C7778074BA9B0094AE4D2C321E868D7367360A10EC7C8DB99E22F844E2911F8F0CDF6B9B367140170906A611C8B61625518980D4897D70B048DECD1B6366614F21A1D1AA691013B444DF4EE2A046F0C6E80F57BF3D917';
wwv_flow_imp.g_varchar2_table(103) := 'E8C1AB7F4DA8B790970F0170D6ADC4624A9CB73C0420E236B2A7B270C7773030975302D828C9B4DCD31B29BB0920CD80168DEE840E8A81A6F68E4521C6527368B3630F623FFA4CBA66820D3053D6E3F5279EA1BB2FBA928B8672118051799650CBA12285';
wwv_flow_imp.g_varchar2_table(104) := '4539F2BD2EFDDE64AC69E72A4A87363B7D9B5E1A142BB8FB3AB909C0190D0E3BCF83006430464CDA71B84100F366D366C78100F2A43D4CFDD1788F00E235B6128091A066AB393183B07A5E503E09A0325611AF70BB6B9900F071B41952C599E9A5813C35';
wwv_flow_imp.g_varchar2_table(105) := '89249EB6C306A06A2A7EBFDE214606DD1C8115A840736731121BB03867D2F51E01A413805A578D3B5DD15915A54FE7EE76026037ACA582D1EC3CC425A2E85D6671D7460460E3D4B213A35451DCE9B52E02C0648BD4DAD666FD380C562443C981A57A8D1C';
wwv_flow_imp.g_varchar2_table(106) := '0470FF6F6EA391CAF0B422758C8F8ED1263B6D37A36C80A1C141BAF7D7B73875DD29611855A259CBCC63BC2379252580487F972E4EDCE74A505375773D3FCC4E002E42320920CD5B151100AC6E881DF51239F3D2104A4BAF751380ABD24A12955A6D95EA';
wwv_flow_imp.g_varchar2_table(107) := '560301CC9B4D9BC3065024C077B7DA91FDD3C8A999AE6B6860907EFCC01D338A0016BDF50E9DB0D5D7A9751AA52318D72AEBAC49FBFCF874270170EE9652A88E1B5D517F5D7717B852AC95003273A8C2C6AD7AB9EC529300107146E6AA5302B8F276922F';
wwv_flow_imp.g_varchar2_table(108) := '6AE4DE54C917B90920ADE717072D9472434CCE89E5E230824FDA76171AEA17E86E88848A08A04A0CA23BBBBCD883C1A2B0F67B40003FBCFBD61945008BDF7E874EDE76672A86F69198A7C11202DD6B93BC47A02CABD9B422B8A9AF95BC07FBB7F2DA1FA4';
wwv_flow_imp.g_varchar2_table(109) := '3DCF3C299500CC3C31975B564DC3519D22F89E59442508A995A589799948E369DEC8A828DEA627E14031264C580F8B17E180262F10C040849FA3FE0E0A867D61A5BE30BD56565BA5BA4D330800877AC5353F48B3975D5A0389C5E17FEA2F0FB02483ABED';
wwv_flow_imp.g_varchar2_table(110) := '83FFB501B5B6EBA807C8C07CE8F77770D0078B071437B32E169BF0F0ED7772B6E6640880D701D1E44273A4AEE06F6036B02564F02A4D9AD97281540240AAF5073EB67E421D829AF4F4BD0F889E0D2D2D5C82A9D5F506012D7AF32D7AE989A7996900B877';
wwv_flow_imp.g_varchar2_table(111) := 'AD4F7D422FCA57EE01A1D49300122A7153B30888112502A069AA94C958BD08C02626E03BE61407D9A019AE4A2351496E14CAE5800D6AFAD2B309207E3F072D3A67D9FDF1F86DE9B9B4E931076A6E502901E06BFEF6D9A7D26AEBAD95383BF21E1C9CA3AF';
wwv_flow_imp.g_varchar2_table(112) := 'B984662DBB74E29EC33FFD252AB69508B0833FF8D36F2850A4066E06611CB5C9D604E0A95A0880D3B31B1B699575D6A295D75A83965A7905EA983D9B5537D409000EF195679EA77F3DF624BDF2EC0B5C2FE08A4B6411407B77171DF6F3F3A9D90848BDFE';
wwv_flow_imp.g_varchar2_table(113) := 'C2BFE8EC3D0E6074BB8E39B3E9C8AB2E4AAC03D02AD0C2152915DD4BCD2314F49B97BCA7B958C82400EC695FCF426D2E69658A71072091CFD6D621B246D53A72391E27B01A77B2D719B72B1E1549001B95B0E81900CE8A444FA852A1B53D2C31D3E52B88';
wwv_flow_imp.g_varchar2_table(114) := '04810C73D3B89135F0DA6D72C3E8CFC5DE2857FF5B268079B4D93107508B120788096094763BFD04FAC0C73E9242002374D865E7D152ABACE826804A854EBEF5170957EBF0C0201DFFA5EDA9D09A9F0070C057F8E0FB689B43F6A5D92124BA8BC38FFC2F';
wwv_flow_imp.g_varchar2_table(115) := 'F0EE4B4F3E4D577DEF0734363C624536CB2480AE4E3AF0E2B3A9D4D1A17DE6DF4F3E4BE7ED77381371C7EC5974C49517260A6F1EBBF31EBAE67B22A7A86BDE5C3AFC8A642DB3BCC78700D4D4093918170124CF1B71B51F22F4663B5DBCCB6504B3DD6100';
wwv_flow_imp.g_varchar2_table(116) := '2F7474CEB63A4A5209001F515355F1DFAEBEBC661AAA9C6C5AB5172739A9F0242894682B735557E2F22180334EA40F6CF0E1540238FCF2F369DE4A2BA412C029B7DD402D253D1E013CD0E3B6D82E370180A837DA662BDA5CC1FB49536FD4DFAE3AE1347A';
wwv_flow_imp.g_varchar2_table(117) := 'F6013F684455050206D1413FFD11B52A453B78EFCB4F3D473FD9F7B088008EBCFAE2C4501EFFF35F08B845690420EFC9240047B96C9A04104D10911A1D0F0DC0592A62494448AD6D09C70D7E13396331947A1A63CD240084CAFB17C779415CBF8B14670B';
wwv_flow_imp.g_varchar2_table(118) := '6C86DA6CC287006CD6BDB3537C06010063FF8BBB7D935658E37D5A562ACA0EAF3AF10C1A1E1C645D76EB03BE4D7357584EBBA7A558A40B0F3C9AB0A18880EF74C251AC2648DB07440CFDF9EAEF9DC158967954A04DBEB91D6DB2D3F6BE675EBB0F63BEE1';
wwv_flow_imp.g_varchar2_table(119) := '8C73E9C97BEED7D4992C0900556EABFDF6100410FABE394DE1C57FD32D175EC6A598A5723B7DEDB0FDB9FF42744F4303EBFF775CF50B9E27D0EC763CF65002BE69B49FCA3D482F48B701ECEECB340260A6286B0E525253D28AF285D13CA0F4124396813D';
wwv_flow_imp.g_varchar2_table(120) := '1D229300CCBC2057625C327026962CABDE97A376037D517EBD2C694C18CD1904807161438407434FFC857D20DFE7BA07874A5E3010852A179741E279BC07970F0180D836DC6A33DAFAC0BD12871FAACD737FBC87F366FA162FE2C3FD81CF6E442BAFBF1E';
wwv_flow_imp.g_varchar2_table(121) := '35157557341C04577DF7549604123A308B00C03D456342F5D3F0924D70A668B831D49C409CD0EFE1356D8134D6D753BE27DB0B949F003036AE4919404AB35AB2AA2FA35A5063E32E221A1CA6C723F6506C25C0EF98E72A9300F0722D2F08896580CE3092';
wwv_flow_imp.g_varchar2_table(122) := '8B6A2500B3844D36D5A885006C9E262912E522D5E39E2C021058404BD32197FC48C3FFC4397AE68EBBE8A16B6FE2E1E040F72E9ACFFF8EE05AF772CBD026FBED41CBACF9016D4F17BDF5369DB5CBFED141CC248030B7CA7630541BCDEA99130B163D9A76';
wwv_flow_imp.g_varchar2_table(123) := 'CF5411003E9EECDE193354F487CB44A53380175CAABB46002E980BB33999E8F76AF85FC3827AD80C1ADFC9C26784C1B2688192B9986C54C1EFCB9000B865EE0ACB53A9AC479D21115E7DF605E62AE028CBACB64A88C610733578AA5E7CF2190EBAE09EE5';
wwv_flow_imp.g_varchar2_table(124) := 'D7785F22F51BCFE33D785F16018C8D8ED19E3FFC3EC39EABD7C3BFF82D3DFD873BA3B8044B57B5497895A86BEE3CFAC46E3BD28A1F5D377A141EA45F9D7D3E3DFAC7BB59326511005CB54BAFB252A2B81E205B6FBEF832CF0DC4B7ECEAAB18341270BFB2';
wwv_flow_imp.g_varchar2_table(125) := 'F9AFBECEF30476E9F2EF5B2D02050B8F60740F08255505AAC106880614CE139E45101AC60C9FBF89FA612372C9F4801C323E26D13C1AA8DC9974C76B04E0F2C0987E555013008C4C8F0FAAB5628F514CB16900A5E621102A167A8819B8EE190480F4DB9D';
wwv_flow_imp.g_varchar2_table(126) := '4E3C9AD6F8F8FA1A9A328CB993112C1B1860AFCAFE17FC90965E75258277425EF08A1CF1992DD9388417E6F81B2FE78092E47E18139EC77BF0BE3402C03BBB979A4BFB9EF7032A9563A8F37FDCF300DDFFF3EBB543691A6BF86F2E5E696CA4ADCF389EDA';
wwv_flow_imp.g_varchar2_table(127) := '677747637CFEA147E8BA53CEE258411601B47576D0DE3F3A4D835AC7BB5F7EFA59BAF8B0E3D9902FCFEAA6837E7A8ED6F70B870C06EE2FCEF811B75FEA9C3B9B8EB8F222760DCB4BBD07B644561CC0547145DBD9766F4470A892401F07C74FEB2B672304';
wwv_flow_imp.g_varchar2_table(128) := '019F131706D96A5ABC0800DCB752192044EA0475D951776B2100BC4F6F42E1A860F2F102CD003728D6EAA39B7D8E757F35027DED3E475275743CD101D2367710FFF2EBAD499F3D60B7685F61109FB3C741D4BF68712601C00B3473DCA0E31C4B92CC9219';
wwv_flow_imp.g_varchar2_table(129) := '9C1303D4C5CF6BFB3B33EEA8B9075477788D740FA34600F628AFF8B88AED881783AB9B7A980EA9229E4B0B84C969A9257CF85BC10667F76E210022FAFCFFFB3A6DFCCD18E7FFED175EA4DF9F7436358568D0EA76A21D2BB2206504181E12A40BA3B2EB4B';
wwv_flow_imp.g_varchar2_table(130) := '271C46A559710CE527FB1C466FBDF86FB6C9CC1649A61B74A61080486F888D515B2FB6DA8EB7DF536A43165B0E9297118C4FA18D26AC6AA116D8317F6C12C0D67BCB1C7A02CBC5861199490023B4D739A7D2AAEB2623C1276FB70B557AFBB955EBD1D75E';
wwv_flow_imp.g_varchar2_table(131) := 'CA60B5E6A54582EFFC0DC30AAA176C832337FE727624B8A181BEB4D72EF45F5B6F113DFEF41FFE4C0F5F7FB3A5BC10A87A63CCA52487942E4210CBC607EE4EF3DEBF6AF49E4B8EF82EBB29E18D4A2580EE2E06E3357145A73D12CC36805EC892961BE677';
wwv_flow_imp.g_varchar2_table(132) := 'A4F3DD0566013B02972D70E64D00A61D00ABB5DC354B83C4B01180D3ADA9CC43175522FA97408800012C3597363DD69E0A8103848E2B10717A0776A24A6F5F14F184F1077FBF8149C519A5125FA8B5A3C330FC20C9027E0FEE49B30120F1B63008E0D15F';
wwv_flow_imp.g_varchar2_table(133) := 'DF4A4FDC728715F1CDD68003495E8D2DCDF4A9BD77A6E5D65E233701F066170A5682938983582F141625DC82F0A1F7097465710F5C87FAA1633F7B1FB83A651AC17A16677A7D48BEA3ED77B70AF363EB1F1CB7486A70657A8A0F09834D4164B0446D6D04';
wwv_flow_imp.g_varchar2_table(134) := 'C0197BA8F24AC18E6117AA823D8F1C24E4806846B6231D5ACB06B57D0325C24AAAB4D50D6ADE033C2133BB5AB9273F01DC464FDCF23F760230BBD587D20F04F0E9BD77A6656B24002F77AF6D9EE15ECBE3C5D84A964C73EC4D961BD48CF473AE5747772A';
wwv_flow_imp.g_varchar2_table(135) := 'EEA9DFB1F6BF4BE4B3859D6938B708E00EB1740F09C0AF55118B13E873A19F987B08A0B76E588CAEC2516088A9B93DC61C4436A90846E1B9441D6795A87576177DE93B8768F5002A01C0972E334BE3D7A327711C5C425E4EF270E8F7609EB654626940D5';
wwv_flow_imp.g_varchar2_table(136) := '9300304E5B251490156A260034F346C0CBE4DC0D225828D7186B615E00C69501B738F8A75380C42FF52100352501FABFCD15E97F9C6BB913BD208669B802F51DE00E6D843A0279450531E60FB64F81A2019712A708C4F015580C5477A9E8704C0046A9A5';
wwv_flow_imp.g_varchar2_table(137) := '6B0AAAAE867B1A9A9AA9BD3DEEDB8B7715BBCAB4D58947580900A9109FFBD60EB4D29A1F3452215AE88AEF9CCA7A335CA5DB1E711075CCE98E51E34275E1E2438E6142819BF15B271D2B22A052A204C8D81CA12BBF732A476DEB4D006A2108D6180E06D8';
wwv_flow_imp.g_varchar2_table(138) := '00B512008A62E08552091F4C6BFE2BAFD26FCFBB44A4427494E96B87EFAF11097CFF2F3CF430DD73E3EFD87E402AC4D78F3984C17BE50535E2B13FDE457FBBFD4F4C28696E503E2F51529A1FCE6C2D473CEB19B589A319688D4B222D5E1DDB8B6148A238';
wwv_flow_imp.g_varchar2_table(139) := '41AA27A8E262602AA4A02AB016426DF2A778813D1F4332E279D9B8033218DE8496CE36DAE694E3AC04006EB6C799DFA7F7AD1F0790E4F8E1BFAFF4F7B3FB107E6DE40299576404572A74EA1F7EA51F9EB0C9C5B19B6E93990C67B701DC2A10C6A1161EB1';
wwv_flow_imp.g_varchar2_table(140) := '87ADBD938D6DD800B5A84070831E7CE9B99CDEAD5EAF3CF3029DBBF7C154403AF4EC59644B867BE2EEFBE8AAEF9E2692E1969A6BED6C73CF8DBFA55B2EB89499441A01A8FA37E695064F92758827F3BB60DC0B23D81C35DEC50420B98EC4D149FB1863BD';
wwv_flow_imp.g_varchar2_table(141) := '33F45C1C4802554174CA388114B13E522512459C1A0DE055116B6029D0D0C044C0D084FDBDD4B9CCD2A9043013D2A16B2100CC354EF7AD32A870B9AB9B3EB5F7B76A2680A97483DEF58B9BE8B68B7F9E49000CBD286BBEC3DCFEBCC1ACC91C7CF55930BF';
wwv_flow_imp.g_varchar2_table(142) := '4A58AF024F54A92CDA82310164E1279A83507B45B9060844B152A99C0A36653E2B5C8288DCC5BF8073C8FFEC5C76192F0250757C10772C0146E8D09F9D4B4BAFBA72027E5B950027DD723D37AED322C1FD03F49D2D77981209C091E641D9915ED840DD73';
wwv_flow_imp.g_varchar2_table(143) := '97A64FEF539B0480EA72E08567B10AA3CEE1A5279EA1F3F73F224A8746AE3FA77F84CB8D71E8F50073E8F02B2E4CAC952F01A83DA173B554AAD7A957DE637A1A052074411040561381C478A0EF2B5E1BF5777C08EEC81203DDC6A8613E7362AF01549551';
wwv_flow_imp.g_varchar2_table(144) := '00BBEA86171F8AE596A5AF9E7CAC550582445A73A30DB98A49DA28F82688FBAFB7FC81D51FDCB3CEC69FA28E597A5D3374D9BBAEBF89735F40841FDF72336A29C09D1A765CA480468647E8815BFE9BF5DE7ADB0018A7190B41C2D7170EDB8F965D2B4E8C';
wwv_flow_imp.g_varchar2_table(145) := 'F38D03C0585F67E38DB8A431BE02EA79673E41C5C11CF0DB47BEB0B1E62183C764C11B6FD2D3F73DC8F72065E2635B7C816B426249DD40AFBDF04F7AF1F1A7D89B93A6028D0CA3905DA451F8A17FFB9C12DC13B0ADC9CCB1A121F4EA64F788D31AF50501';
wwv_flow_imp.g_varchar2_table(146) := '833E8B06191A0EA3EF2088ABFD89BB1206429C343651A1500C53716B4369C0A44C772AEC0CC413662FBF1C6D7EDC41D68A30E996B3B95BB5964966630AC9FD14883F571AAE7CCF541000C4DE80D2481A46F0A687EF472B28813D5F02C094AC73309A704C';
wwv_flow_imp.g_varchar2_table(147) := 'F69E542FD03022C0FD4C3C9CE3E4D9B93EEBF461CC48CB519D2D381FE811A7EEB3ED3D363B33F8E98E7B55818A9C85F16E7D61B5CA7015C0CF6F692E30D770F99FB326A6FD0EEE3F31C15C11051B0D4103BF1781305749A4370170CF8024B7D0FB8AD9F3';
wwv_flow_imp.g_varchar2_table(148) := 'D0A7940038ED7C880B39301718985F3C6C3F5AF1C37146E9BB8500EEB9E84A4E1E94ED4A91C589E6EB933D1B1C2F42533DA30F05DB8B2082527B6AC21CAB9A70B70F2B053E57ED7E281BC1B55EF2D9C94E2EF3FB19A9103E2A1032403FBAE9E7A8B5AC6F';
wwv_flow_imp.g_varchar2_table(149) := 'C64C5081986B73500CAEE4517683D64A0070737EF8739F367A0F7BA840A81A7BE915FAC7C38F72D0AE2615E8C967E9CE732FA5BEC50B99A936B500182DAE4CCBDC67E70DC0061AE4164DC9F31AAAAA41A306AB6E7D95AC731F1144105CBDC761D9CA53ED';
wwv_flow_imp.g_varchar2_table(150) := 'A3AEDF9399B94071517C9A112C8BE2CD7B96A4116CDA5090AA88046F72E09EB4828272E12B01E0063DE0A2B30969D1798DE047FF7437A14D2BD2A1BBE6E537825F7DEC29FAC30FCF639BCB95365FD3A1A812F5F52E4C3E8AC67A2DC5280D9F8BE8DB8587';
wwv_flow_imp.g_varchar2_table(151) := 'C775614D206D61A3FE47128039F1181665EA51216A75839A63860AF46E7483BEFCF7C7E9F6B32EE04063099CDF964751030598258EF21590DE70954335922EF402A2BD06CAA1EB93FF5104F06E0D84D9366732B940900087FCEC5C0E78A9975720ECAE7B';
wwv_flow_imp.g_varchar2_table(152) := 'E9AA134EAF3910F6CAA34FD29FCFBB4C24D3D5E9F0B377905B28C51169A932CA56BC6ABB55DFFED6FF512A90572AC4D8186DB5EF1E3477C5E5352F0974E625990A516F02400478CB7D76D761517C52215035F6CC73F43F575C17A142D4920A0123D89667';
wwv_flow_imp.g_varchar2_table(153) := '5403E3177ABA593A1ABE486DB62788249402D52A154A900271CECF8C9000D0BDD8F5161ADDB2DBA29711EE810AE1950C378A4E92A67EB86493E1EA4D00D07F5164944863F649860B6B812587154818B525C3D57AE0CDE74C88CE58FDD1D3E6D512485BBA';
wwv_flow_imp.g_varchar2_table(154) := 'BE6D3CD3A602C11F0CE30E81A628C004771FAA9F8AADFCCF544F920701589FCF99EACC1B3F8DE9D0AE43321915C839078F5467C994E4B86C6B21EFC9CA06AD17019820CDF2BD89DE760AC082C8A9EAE0DA92B46B5A0880CBD2A0BF392C7388B24CA80B0F';
wwv_flow_imp.g_varchar2_table(155) := '02C82A88E145E9EC24E88BEA058134B50531E9C970F59600D08151D49F4C0DA70849DB561083830DE4081920B315C4E01E006501A962BA08C0957A6396380A5529CCFD0FA3CF68A091C658A79C00B058434322B8232FFC3B724390A62A17DB5A05A69E8C';
wwv_flow_imp.g_varchar2_table(156) := '4C37A86F49E4258CD9635EF52A89ACD50B844D4280A611A1FDA666CE46AD351708E0B8808014A056F1E5531209F4E89F1F77321552C071D188E3B7E7FD343319AE5E12400007C4C12BF95E1BC29C063290D217203A8B531507C0219788D13AB76D08DB76';
wwv_flow_imp.g_varchar2_table(157) := '36739D7105086061414D5693BC7703386E2D0420D2867B63146E0A98837FE1907D68F9753F142D5F9E38C04CC806AD070188D4189152618A6D1BBC0A6A3E06A21EC976F412ED3C4E1501C84D5513D3F0E19642890A45619D6B967B583F80AE20D62B5302';
wwv_flow_imp.g_varchar2_table(158) := 'CC0C74681B01FCFD57B7D213BFBD9D1A9A0CAC2381F715F6568811B8317F910BB43FADF49175FECF13802DFD81F38B2C0DC071EE06C2BA14DC9305C132652A909A0A1BAB3E7A0770FC5DEF0F5BA542A194684EC1CFBF4B80B16C04F0E2FD7FA3D71E7FD6';
wwv_flow_imp.g_varchar2_table(159) := '9AA732511DA7A1A14A94028EBC19B874ABC104ADBBE5A6D4AD14EFF84A80A904C64239E45D37DC4CB75F760D578D6501634D560A701AB3D14548324FDBE14EA43D03C6D35005350970C52E07B14F101B27819CEA91D7A3D6B9CA0F22ED1AC6AE9986C068';
wwv_flow_imp.g_varchar2_table(160) := 'C063E080A23D4F7BB93319417C974023DA0860B287403EEF4B0053098D08AEDA337F212D7EEB1DF68E4E0701D825805DBDE184B9C17E824B1497AB1F59C494910E2DFE03301880242950B135D97729CF267252D740AF569B0B0ECE258E4D4D8957A1B906';
wwv_flow_imp.g_varchar2_table(161) := '5281A5BB592078E928C9591220CA06B50C5435C05DC49DE79EBCE9D079D62EED5E5F021002D39E0B9335CF841BD4D65A54B0E069F102991C3D3AB82906AECA7C9D5D64C21745B028D1C2038814A9A580AF5372E4F36C22974DB2D88A3701FFEE429E435C';
wwv_flow_imp.g_varchar2_table(162) := '00350032970349543070B4CBC30DEA038FCEE250833E17C45F2F78F4992001443AB5E9FFF68347877B137E77A966D8E0D1E53DD3E1061567098E123D451D3D8291C66F2374B510C7D54B3822245484498E213C95C25D09DFBC00A9CD57D5C5EF9A986034';
wwv_flow_imp.g_varchar2_table(163) := '00CDF599E1926200A5E1108415C808EDC06F51BE5D8F0619A3638C84802C47B518A49E0D326C04D0F7F67CEA7DF39D783D8280BA5758965A3B63F0DC052FBD22DABDCAF56F08A87BC5E5A8A87479F19500C5F636FACA817B713E4F9E061918FBF30F3F46';
wwv_flow_imp.g_varchar2_table(164) := '77FFE2D7ECE2B435C8809AFCF85DF7D183B7FE211315220FD374DDEBB2019C8D5442387F890697558A19D504C3A73A3A3CC487501E5CD19F297F469F89F589C9A5F600465DD9FF36A1535DA289827A1F2F90478B24348F43833AF352D3A127D322C94600';
wwv_flow_imp.g_varchar2_table(165) := '8FFFE60FF4D4EFFF1835DEC321FAF84EDBD24A1F5B2F1A0690A35F7AF0EF515513A4D927F7F8062DB3567E64B8A96E9174F797AFDC7F00002000494441540D37D3AD175D961207B88A8607FA390A2BCA626BCFB8374B4525B376F692335036B21AB40417';
wwv_flow_imp.g_varchar2_table(166) := '6EB75B1586A94C4550B17D407D79901DE46E6A0D35C23FAA95F8366A37291D481340F18AA2C73E043003D0A17DE20020800D77D98156D9306EE877DFA5D7D2BFEEFF5B0CE1380964B8A946874E2B8A17F500E773DA0BB489969616427AB257BE97E560B8';
wwv_flow_imp.g_varchar2_table(167) := '08C0D5F44E6A208C5C82406B06365570F10E7B56DB3B62F4006E5286964521D5428D87BB893137538A0CD4B10B9468B100E29260BA6D4E6E8005022E90D43F1303F720806F9F7D72A22905BE7EF276BB32AEA700C7CD8E049FF1A79B5962A957757C828E';
wwv_flow_imp.g_varchar2_table(168) := 'DC241B1C77461080579BD45974E455C926793E6D52D322C1B21E40B69312E748A4BA80C9E6BDD4C056FC6C401D5DB352CF2320D9A1E6E21CA5E1110597EDB46F556B0ACD25633A3E0F5C9378899F3D60EB1A0F0228728B5597380401A0D8196A98249AD6';
wwv_flow_imp.g_varchar2_table(169) := 'D6762EA9E367324B22ABDC2255AD8262D5ABA9911EB9FD4EE64030DE3EB8E1069C26AC12B3DA287B7C6C9CD6FFE2C6FAE222AA5D19E486DBE0DE79BD408FFE5ACF059A6A09606D940DF7E53BF3E95F8F3EC17340AAC55A9FDA506B1402E74056A36C9C85';
wwv_flow_imp.g_varchar2_table(170) := 'D79EFF07BDF5EF57784D4D3768920022739311EFFCCE507CD44D2036A14E878D1A533C5D12914E104099ABD36C57803840D23589A4A21802110F224003A0DBECAB360260F43714853394B5901C5A5F270F2F10277FF1A2A8E9BBF06AC51158AF7B38594E';
wwv_flow_imp.g_varchar2_table(171) := '7F070E87DCBC994E00583B314F4D86892215C5B1008660CED3EB9E86067E97CD0BE42600C49A1A9908FC2FDB59226A6C6E89D008AD875A6DBF5BAD3238B3EBEC0657ED7E48D586DF03705518A55277CB322654F1345CE90F9397FC5520A9BBA9DE23AD99';
wwv_flow_imp.g_varchar2_table(172) := '0274B9797369B3E37478F4EF6EB5A3F09E2808D0FE0B5CDB9D20801F3F7047F4305CA868C5FAEC5F1FE203F6E5FDF6A04F6EB355F4FB23BFFC1D3D76F37F4770E56881F4893DBE41AB7EE2A3D13D2822F9E7BD0F467D09C0C53FBBFF6EB49C920B74E141';
wwv_flow_imp.g_varchar2_table(173) := 'C7D08B8F3FC9AD9EB6DA7F4FDAF81B71138E456FBD43276CF575022EE8745D208055D65993F6F9F1E9D127FFFDF06374FBD9E773D33FF54C801A854DD9CEA9305EEA74D83255F6F9929A01F07C6057388DEB008423D5702276853A904F9CA9101CCC5212';
wwv_flow_imp.g_varchar2_table(174) := 'B4F0DF482D450172FA65A7DA2C2F10DE0962EB5DBC207ABDC8E5E8600E0E5D70B9753E449FD96F570272B2BCEEFFCD6D345219AE57E9A9D7D9C1E66EB2D376D1BDE0A4CFDCFF10CD7FED0D9EC3EAEBAF4BCBAE1637A07BF399E7E99D175FD6DA042DBBE6';
wwv_flow_imp.g_varchar2_table(175) := '1AEC0A95D71B4F3D4BF3FFFD6A8CB9DAD0C805F1E5A5E644F73C71D75F68E11BEF70D2DCFB3FFA615AEEFDAB45BF01590EBAB9447FF69AC8646FAA12752F338FD6F9CC27A337F5BCFE26DD7ADA39B4F0E5D7789F64AA3B37BFCEE95EE7F466409B6B3028';
wwv_flow_imp.g_varchar2_table(176) := 'D9EA34C7754686C2C61841AA0732351708182AD0C1E4E56C61AA2DE4E4084085D3C66B113DEE5C7A2EADF7D52FD14A1B24816F27BB87EF3D3F352BF0FC5DF7D243BFFC0D8DF60F716747B62BC3F4045F759AD32E16CD373C48D90420922CE31AE234E69B';
wwv_flow_imp.g_varchar2_table(177) := '4A0066421BA440B97356864BCB4E00500DD01C214BF421271E848749A04FD667F7DE9556FDF847A795C34FCD91F8BFF75648ED97FFF618DD73F1D5345E1DE7AC572905D23A87CA959A140120853A64DE3513801A9C92FA1737C9969E19EB9EDA090007BF';
wwv_flow_imp.g_varchar2_table(178) := 'B37B4E2601E09B036157C1F2DCD9F4CDF3CFFCBF7772FEC3667CF94EFB5363A1850643F87B5F757A8913802D0CEDD3E44CADCA917BE94B00085EA0AC0D064EDBAC6EDAFEAC93684C69D0609E0DBC97A54A686FE31F794079395812BE943D2019501EEC5D';
wwv_flow_imp.g_varchar2_table(179) := '09C4E7D2BE13BDB72AFA8B99228CEBA231769186982A55F577E54B4D91E365CE2BD86FE61C936B2CD6286DCEEA3A461C1C81B0D6225DBBF751FC4FB5C5169A1096CB5D517DB88DE66D04E0139C6515A81E1240F4575AAC542A894D7716AD84B3B04582E1';
wwv_flow_imp.g_varchar2_table(180) := '02C373592A101BDF61A719FCFBC84085B1F26D870D1385BA84C09B3C6030989147E415790CBF2575D3ACA837E738F52CE4430497685BD9E86316CE5F300EAC1B12B8A4E7A3559B3B4AFC860707F86001C409A928AE4380DE01020FB34AA55207FBF0B3D6';
wwv_flow_imp.g_varchar2_table(181) := '51AA1A3D0BDF8E5138C22292BC86325CE2984B1340A8DA3A12BD8EB1D65817B30619AE47CED941A30E46638B5B6C71A0B3DC65ED9B96A602B15FBF544E947BAA6B67DA0069EA77AA0DC0C1A901C095C786B0F0CC9413915275008802023E5D3D843E5E20';
wwv_flow_imp.g_varchar2_table(182) := 'F90EB5DF706A240F94AE36EE031CBAADC3648A4AA122517343BF823BD6A186E5D3D6810F84D21AC8E6B653A1BAD38C421121EF8DF2DB81A0512CFA01CD9A69043C6633C93043DD52E7E2EA23E14A5813EAB21E806206125E589762C93D17970400E3812B';
wwv_flow_imp.g_varchar2_table(183) := 'D9759941D534ED23B3224CC75A118214EE5057640D774C9600F47E6161033F0BC0AA709B6241E3880F1AA081EBF85E2A01643D2B5A9A0AF50CDFB695E409CEAB77D4B4493F9500D2094FB7A9B4E060C624194E10692D5153C3066AEBE8CE8504CEDC940B';
wwv_flow_imp.g_varchar2_table(184) := '9646580AB7953B12D2586D85A472EF04B1F1BB6262F6D126E0165719293B62323B4DEA6ED049110026046EA6429A6455D920AF5F4263CB0541C798F6F638E7286DEFE05747414D2CE6933D89F13C7E07475117C85A4C93F23155DA64350AD172D399001C';
wwv_flow_imp.g_varchar2_table(185) := 'F92D61EA4494DE5D252A77CFD67B2A472EE68044B7127BA81E438F7AED86681A3EAAA4A871D09B54231D05DFF2519FA22533824A505B4C1C7E1B6E0FBBCCCB9D091D1F1D1B51B0C2F616F70D28731313DB857300155CDD5F5FD84355FAA5792F33250006';
wwv_flow_imp.g_varchar2_table(186) := 'C68704D97D2127C9AAB2191E1EA211B8BC24140A107C8B252A7AA55288A5887B6689836E033942DECE407FBC40695CD945032A27CE26806AD81F4DE00AD96039E477D40EF0E6F8F1DFB26C4FA85222D8E7BA549BCA3722CF6AC0607F14C7E13164A80EAE';
wwv_flow_imp.g_varchar2_table(187) := 'EF83A171AF2F222BF7850D856F259824F6DBC8D7518BD6F13D37906D323506F7FBAAB8423B104155616F74731F3BF3F22200441E71202525A60F22E9064DD5E32DAB2E360F41B8180B26514F1C04343A5461CC21B588870DE01C69116AAC03D98A38D42E';
wwv_flow_imp.g_varchar2_table(188) := '039A0FAED2A0218D0058722AFAAEA87243018CF05A7147CC8989C8984E93886A81912F919B8620BEDBD195ED86B67262A87ED0028892FD9B518002550B04105E7CE01CED71D9C9A16418B82AB64C3D5EBE3B8BF9CAFB841ADA13390F8AC5366AB610A417';
wwv_flow_imp.g_varchar2_table(189) := '01981B8F8F400CDBDD8082F38C8DE2F0C60965EEFBED5B6F8A3F4C481C6E41C5F86F20CE89B46B71F97247F58B62F34044554ED642155C7D08008C60402B3082B807910986D2C302D2A77B8A201874E60C258FAD66DA5846CC014C0BDFC295960F93467C';
wwv_flow_imp.g_varchar2_table(190) := '72AD616B410584010E433CB986310160621D9DEE74650D30C156FD17EEAF8AF226BF97A57EABE382D6221B6AB0A3A15578A3D4CB8B00F080D9C9DD9563CD0B6FE46FF88A2D6D6014501FE774C73086EAE4CD0D960490E5A235375B0FF605ACB7BA7A4DE5';
wwv_flow_imp.g_varchar2_table(191) := '95003830DCF1259C83CC8B418474787890F7223BB22E206120116188E2CA52D5708FEA99C1BFC35E49000D649DFC88B1084F1454A1A696422213539700A1D382DDBAF64A3015EA508C2D996366F52CA5D95D96B9A8AAA32B7EE54D003A3E237AD902E224';
wwv_flow_imp.g_varchar2_table(192) := 'D95BCC7630B3BC2BAE7D507B66F101E7BA0414EB37B2CF594616E5F3BEB106F57B084571017F583C91A627EB04906DBCE23B26AE25DEA1AA92B06D7C8C52188F512A01621019B10EB3F9361803D6A7D60BC14D18F560666CDC2A9C5425001F7537B97701';
wwv_flow_imp.g_varchar2_table(193) := '953BBBB5A1D90CEBBC6E5C4D7574A4E2781300DCA1506DE4C431FF8E2E0CDAE82F56AD52AFEA99C949B5DAE1B480228108C0CDB0402200262EC14944E55A9E4BE8CAA20008EF480B86A904E0AB8B632CB2319BE213E083046276A95BA9920A736DEB48CD';
wwv_flow_imp.g_varchar2_table(194) := 'FC444E55BC3E01A1EA2F4F84DCFCBEF4ECC1583773BA4C1B204BDD458095ABFFA22C4FB4396A654920CF17070A2BF1FE46121EF5049E3DEDF4B88D1D47C89B00925027382C3870C0EF89920912452D3EBEDEB403ABF576953772385FC5BEA952539300DD';
wwv_flow_imp.g_varchar2_table(195) := 'AAE582170386190E235C7248D4B27165D578CDCB8D104C9C0873E41B5B5AF83BBE875F6CBE8E7C1C048D54EEB447D6314E154F136907903479BE97208030B889BF9B395D2A01F87E4BF592896F05CC7C2403335BE5E20EBF6CE478E489C025A39CE852D0';
wwv_flow_imp.g_varchar2_table(196) := '9B008455DD4BE3E331482957F800CB3314872A3795C340E25C164475DAA135BD06B67B6B317ED5F760DCF0D8E05BF87FB973B695C9E8B893082A75E6CCAB890B846A215451AF2DF2EAB1E6EC85B224269AAEC65A6CB0340230F19D5426E58A169BEFE3F3';
wwv_flow_imp.g_varchar2_table(197) := 'A404C5E4EF906C4833E13810A792C80B69D0A5D4C8B1F90D93006C814B6F02C089100199D8ED28A2C2ED9A2836FDF72E77589E03008F10FBCDC7C7D4D002BF020B0ECE61439CCBF30D780BE056856811922DA94AA905DAF81EF4701FFD3DCF38D2EE65D7';
wwv_flow_imp.g_varchar2_table(198) := '205253E01EE6409245ACC33BC62EE41894A0561B4C1D8B8CEEE36F98B7BADE2A10952F01E03DD857A842E685B419B308865142D0FDD153FD113C228CDC73B2A43D70E94F00E12855DF368B25A80C1818522000773ED8A7488406366EEA7148F00EE477C3';
wwv_flow_imp.g_varchar2_table(199) := 'A3C238034123A39F71ABCB1C8BE23A602AD774790CD42C57B8036D7EE57A1DF6D471E2D08452D7E61737F7C8969393779C6A7A8B998FA4164E6521B199DFB5AAB8C64DD0346A412A3451E50AC5366A29E8909BB90980BD11087AA80D2FE03F2FB5731D70';
wwv_flow_imp.g_varchar2_table(200) := '544186E86FD8213CEF62A7DF3F3935C2F56E55D5B2E9F7AA0ECE819E8C4CC6FACE597F9B86A2C7D9A445F6CD638CE66F9CB5DAEE6F383A096F7C8CDDDBF88659DCAEEAEBBE812AF91DECE600828B26FE7F68F7343436F3D9AAA5E1A4E9B646D6ADA8258E';
wwv_flow_imp.g_varchar2_table(201) := 'AFDC0400CE8301EB224A18A41A270E88537727AB9A4CE54132DFAD723233CA8BF9C96828E609FFBD4BB23176261BBC861F1CB501CD4D35AD09F47F36A203D1C30C9E2BB6C7AA44CDC5024B62E8FA282057C705BD97F13D3D319D7C1804EE510FBA4A0079';
wwv_flow_imp.g_varchar2_table(202) := '73B15855A12A63B38208F80C85E9E650A780003199B1AB7B6A33D0F3134008B961FAE0CD85F3ADFB9CCE039EF52DD567AF02F472D479106D7A2ABC19E0B6AE8C531CBEA53EB03AADB3E517120D319010F8C25DF7D10B77035FC8BFB005EF5C7DA38FD3EA';
wwv_flow_imp.g_varchar2_table(203) := '1B7D4C714357697C629C0FFF6DA79E4D838B43E3589924BB4A2D68DC59EBE0FADD2C9185AA586C2DB1BB159E34335A9FFB3BA1AE9EFBB99407D4483FF6AE506A0FDBA70AE6541301E0410E545406B448AD8458874B122D7E2643B9F55C04DF7769011A20';
wwv_flow_imp.g_varchar2_table(204) := 'E27197C1269E07238D855EA2B4A0120EC1063B7D8DDEF7E90DAD9FED9FBF907E75E8891AB245D6F8E00D59F72B9BD1DA5B7DD17AEBB5FB1F457DEFCC0F7F13599690606939F359DFB4FE6E812951253F8C6D48807AD87C358DCFF210542CCE4C50320A78';
wwv_flow_imp.g_varchar2_table(205) := '5F1B9BD8CB543301E05B383008B870A95C0340971AA92168085B53D60E885AAFC9E77D0F076806F47C75707A185332A864856E573ED4DC5AA44D8F39803A9759CAF9F9DBBE7F362D7CE9550A3CA500366A9DAD37A375BE6C27809B8E3A99FADE5910EE43';
wwv_flow_imp.g_varchar2_table(206) := '7D9C02EEB5435AC620DB7A4100B7B1C8C112EB327D984479F656D4998BDC2B71056C0CE3EF9322803C8378B7DC9B8476178D4324A74BABA8C23D4BAFB13A7DFEF07D52A7FBFA93CFD2EDA79F4720169F2B8B006E3EFA141A5820B235A7E7AA1280D326C6';
wwv_flow_imp.g_varchar2_table(207) := '465947CF1BD49B9E31EA5F61F50D498F46E2C27B0460D98D647F3351038C98475ADE3E10DB363FFE609AF7FE5553F778B87F906EFBDE5934B828EE8A93F6C0CC238098934E06FA7CBA09011E32782A55B5ED3D0270EC026C1C19F58687A509554B29F106';
wwv_flow_imp.g_varchar2_table(208) := 'CE232AB7D1B6E77C3F735FE1257AE0CA1B0514A2470C63E61240E65467DC0D50DB11506D606F53C37B2A50BD760881A275BFB239ADF7D5CDBD5EF9F2238F137A02E8189AF647DF2300AF25ADE9A6F724404DCB967C0830ECDB9CF95D2A18E0B450775A4A';
wwv_flow_imp.g_varchar2_table(209) := 'C5448DC1E8D030FDEEF833A8D293745F9A6F7F8F00EAB44996D74C0B0140CC43F440F4732A03C0A82644E219D29BE145680ED31AA66EAA53F76669FC7EF680DD13EECD67EFB89BE6AEBE0ACDB6B465FACB2557D3F377DF4F701FA6A942EF260280579061';
wwv_flow_imp.g_varchar2_table(210) := 'D7D171B4A189F3C402D43B4F3210A7EE1ED60A6B8EEFE09F603EF03ED6E27E9D160218191A0AE1D24314371B25060D513A6C2D13F13FDE53934AB1DE365BD09A9B6FA20D0307F7FECBAEA7E6B656DA60C7AF2686B8E8B537E8AABD0EA5425B1B1BD888E4';
wwv_flow_imp.g_varchar2_table(211) := 'DA8CCA770501984818E16C715865E17B7DF65524FB89EA38D9E137A042A1B5A68AB72927004457D1B14F7238707B6CF4C438E0F604054BEE807F6F2E14A9D5C8D7F03FDCEE3B61D48A36AC6104B0A19117CCC708CDFA3E90CFE0FBEF586AAE76EBC86085';
wwv_flow_imp.g_varchar2_table(212) := '7E77E2995CC9F58D9F9C617DCD4DC79F426F3CF33C4B4257D9E2BB810092F9FDFA74EB95196016DFC8AFB024686CE2BCA1344F9DB909534A00221F1B6812E2B3B2F5AA8C507286E7D82857FE706E51786356B029EB40AABFCB1EC4227013FF2203380888';
wwv_flow_imp.g_varchar2_table(213) := 'E401D24AE8E7D52ACD596545DAECB88312C3EA79E32DBAFEA0636978608076B9EC270902C103FFFAEBC374DBE93F0A335B4504D7ECA5554F0240C6AEECB98BA436EC855429F2ACAB792F72FBD5FC30BCB3A550625441C40BB0F8A85D104DD80D677C8E0F';
wwv_flow_imp.g_varchar2_table(214) := '9BC97EC947453F3A991C98F56A8500EAAB1A88E29818A31D038198D2FA9185A3C306CB7C7F39602EBE2EE9BDBCB22693A06ECB18F81E23E784330EDBD0C9D03F3F477E0B35029FDE77175AF9631F4E0CEFC93FDC49775E702973A40DBFB93DADFFB52D13';
wwv_flow_imp.g_varchar2_table(215) := 'F70CF5F6D1AF8EFA3EF5CD5F2040772DFD99274F0001279A71AA7A544927027CF86873B14885161CCCDAA2F7688BCBB840516345BD311DA2EB4C041484A5A0F95BEFCA7D43FA8D6CA8AE2F26D708467FF23D3FC1D5BB1F5AE5A85E589F0983A511290D21';
wwv_flow_imp.g_varchar2_table(216) := '67C87BE8D4FBD5E218FC1D9556AE451679387147704807A112844DF26A18086FFA40BF864E8680564BB18D4686217562C4093E788C799AAF701CAADCFFBBEC6CEBE87E79E489F4CE3F5FE420DAAC1557A4EDCFFA5EE23E1CEE07AEBA911EBBEDF69833A3';
wwv_flow_imp.g_varchar2_table(217) := 'D80620B40A83484B85C88A04C3EF2D3BB4A8035039FF645414018323102B7041C5558BFDD55473FC5E6B814EB22C379E0D982BBE2B2BE6F04D48F6ACBE76C1A5DFDCBBCAF93CA10090C63AC2DB78415E24613924932B6481E36233862B61C5593898C974';
wwv_flow_imp.g_varchar2_table(218) := 'ABC738B48DA9562354311C7291DF131AE74A49A70BEFD376C285EF7F335AEFAB5B247E86DA73C1D776E1F543BA40D7DC791C2556DB22C987FEFDB7C7E8DE4BAEA1FE1EA0308FB384822D84C432E6D819B94069048067196D5B4906E3438A4ABA1218C130';
wwv_flow_imp.g_varchar2_table(219) := '578F55AB40A843755F3E50011C3446D5A88AF245FCB7593186BFEB45FAC42875793B46DA2037F9A3214E6B737333C97327C7C3E9E0CDEEF6ACDC29DECD5C8126ECC66E4C63CA7A7BA56CAC18F92E64EEA958407C107280DDCAF798C05A6C20B501F54D57';
wwv_flow_imp.g_varchar2_table(220) := '73B43ADBF0611BFEA56DAED8ECAF9C762CB5CF8564D32FA8346F3CFD2C2708823341AACE597D656A9BD595B8B7B2B8976E39F18754E9ED65B4EB10C83FEAAD5B2B01B01AAAE0E4CB0FF3212D7746989C6A0519EA1CF25C26143EDE6D2B8355336D396ADE';
wwv_flow_imp.g_varchar2_table(221) := '8AEA2CBF5C28311E0134C629E9860D61022FE4013BD30880AB7DD0906E2CEEF0175058FCED11B25717584525108DB2D3FB04AB0717789F71C70B810897875B705F83811E9A08E78179B939BBD08FA36273461FC86EE7894D9CB5E2729CF886564E93BD1E';
wwv_flow_imp.g_varchar2_table(222) := 'BCEA467AEE4FF732D4A3840B91CE805A09006334C18305C3540B7A80E407581840E0C39D58A21618AA3E7EFBB0B9B95C6729016C04202AEA62A43A9C2BF47DF0778DC2FD09A87E1D7110DF044615989B7C979A02CDAA10A3C2D9BB4A6A042017DCD4DD21';
wwv_flow_imp.g_varchar2_table(223) := '2E9143ED7B993A5F1E02C03774488C2A3536B6302CB7EF626143FAFB45F91EAE04AEA8311156BF80A313F6B0C2CF7C108AE91CEAC35FFB127D68B38D7D9725F5BE9ED7DFA2DF1E771AA1E454F6639045EF388C796D002EE241F297829D2406000C1EA857';
wwv_flow_imp.g_varchar2_table(224) := '31729BEAC2F421FE88591998B15904A0E2BDB2A4C851568AF9F4F5A02623B6DBA2EF25DE13F01A0EB1D18FA019EC4F3459497A9F140200CC4699BB9598989BF8509EC26AB318595451651B247261C101198D58E142F01E150B7A9715DB89C22407FA502E';
wwv_flow_imp.g_varchar2_table(225) := '288C32BCC30B7ED0B4192848ED6C0EAEFF8523F6A5AEE597A90B01E025BF39E6545AF0CAAB61D0301C3BF0FC89721300F4E20185E3AAD259557FE41A493D9EA5651B0A46B29C013A067FBC086E7849064D40417F7810B31A64980B6BF60A10D2CC05BC00';
wwv_flow_imp.g_varchar2_table(226) := '7468D9615274E9B1395422023029D2FC182AA3A046F8048E4C02C0BBD3DAD59B13350D2B3151A09BE9F079AE93C7D55B21A60C7CEA905E3ED243EF4B00BB05AD8B04A2B379A17FEF974F3EBA6E871F2F7AEDF1A7E9BF4FFF098D8278C3EA3336E29A9A69';
wwv_flow_imp.g_varchar2_table(227) := '9DAD377516C4D88C601B74A43C30668746AC8D846B67E90700DC0CFD5CB8B905A29E7AA56134E1191CCAA89D157A0874F841CBD8036D02510E6599E62518618C3EE7C4069546B0CA29F9E17E54EAEB93F3B5DCAD04D08EFA54B735AE2D2203E32ED28191';
wwv_flow_imp.g_varchar2_table(228) := '3C211655E2C94B78E04C436A4BA82ABC159D09D7E8F8C8286DF4ED9D68D54F6E9058F889B1717AF589A768747088CB2975555AE43ED96206781112E7A0062D7CF3F5906085BA8203B9CE97F31100028CD0994DC277816409C81701479F05132F1992AAD3';
wwv_flow_imp.g_varchar2_table(229) := 'CB8570759191CFA88712E7CCAB6593D1A44395666ED05F1DA65F8C0B88E6FA9669124085BC83250D354472FC3C967B5205224690F3356485C1D44B1313310A1D86ED83386012405E602EB322CCE41C783FF088BE7EC1E956EE8FC0D6F5871C474D814069';
wwv_flow_imp.g_varchar2_table(230) := '302FB84EB7FBF149542C27611CC1E59022FDD49FFE1C3D062F527B7B07AD9D93004C505EF942970F5EBDDF07694FEC91689E979400C9364AE29E80217546A421EBC9D44C035A25009BCB55FEAEA6E108D52EE9D174128068570A6F4C7CF962339A04E0B3';
wwv_flow_imp.g_varchar2_table(231) := 'A0FA22EADD4DE2CD031A43BAC70559A6DC7C0219A7298D1AACA73754B5FA162FA22A898D652EA57470C1215DED931BD027F7F8A6F515AF3EF614FDFAB89369D6D2CB5823CBC8FFFFC46E5FA7D51D45F3AFFCFD09BAE3C73FE50E92B8A4645E77EB4D9D45';
wwv_flow_imp.g_varchar2_table(232) := 'F10915C880535707EAB2E554D7A170936637A2AB8500CCDE11594D46E41AA8B1069500D2189C1937B00263A92A902A01929E1CB1199D5DB33303E6828BC63940598D271227C99159E813AD4CC282777B4B9EF0C453256C0A27C7A54A1EA83F5F3EED18EA';
wwv_flow_imp.g_varchar2_table(233) := '5A76692B01DC79E165841468F404B3D94B58C3B9ABADCCC973B66BB4324CD71D74340D2E1690817C18DB3BE8C3DB6C496B6FF505EB332601D8F6CE46CCEACB54C78390F6ED091435934959092005BA9D39B9D13BC28700923DE3C448B2189CD9D94878BF';
wwv_flow_imp.g_varchar2_table(234) := '747B21920026B6BE6918A99B6113EDEAE2245A2A3536B1F8F131A0E57B645F2A5569F3690C6112407647C1E4993233582508141FDE5557A24FEFB3333519107B9018C8A9F9D9B7F62178EAE097769550227BF48B47EC4BA559C98E8D4DC0F939ED1C7AF9';
wwv_flow_imp.g_varchar2_table(235) := 'EF8FB3BDC004D0D6C906F05A5B7CDE008C252EAC072AC4E0A2585AABDD2CF5431BF615B0B490D2F1F84542197754715C2E15280D1B5418C1A26F57C45C90EE92117DB6F50AF021003375C236B698001AC3AE7E8AD56683A896E9CA695E15B34D6A1EC054';
wwv_flow_imp.g_varchar2_table(236) := 'B930668F5BFCBD1602A8A5338A0A978EEFAA86230E1712E0CC38110C4E1891082265C20332CE29DE91F42E8113E33DB2CF99E4723451D50294F111AA3231AACCC5959A0C1B0C2A83EDBB605A22174B8C290D265E4A13132DDC5C2B937630C69E45D23529';
wwv_flow_imp.g_varchar2_table(237) := '7EF59100B51300FA91011348AAB34930E15402503D03723259393DB84F6D85291733AF0400F7EC5B243224E5E5E38A353B16D6D21B8B3928EC9FF0DB3E2A9CBA56590DB79D6C150DE7D04DBDA2379CEBE89EE317990D5F8CD46FE8DAA6C4C55A20B5C5C5';
wwv_flow_imp.g_varchar2_table(238) := 'BCD400288CEF7287BDFF8024005B9A451AF1D79B00B26C4BA1C5C09B19673698692EA9046026308989DB3B6DC49B9ACCD9A8450208110BEA8D078F340D18A469AA945930913FE41EF6D7529AD28112D27A8731D10F23914F34ECF3B1555C44A0BE07F7E4';
wwv_flow_imp.g_varchar2_table(239) := '6FFBE4CE994943B436D79BEDBD6E7757498E0358F28CD26208496F4E76D375AC814B02A4B95CE5FAAA0DF96C36434400C85844B04A95EDB6EA9B6CDF6D72036A2D7051E1C863E273B9D8C4946D2D3BCD860E691C18BF99F68F58B8F41E5B2ACC773D09C0';
wwv_flow_imp.g_varchar2_table(240) := 'B62FE9E34FB6A995734AF398605FCDBEC269EB6627808C030DA2519AAC080F1B52D0ED8DB2E53C5D04E0C310D57D110E05BDB7414800F664355B0364F6A746F5ABF6AD3055201FDDDDF626B52105FF8E6830BA38A614AE24C68CBA82F6CEDC20B16A0779';
wwv_flow_imp.g_varchar2_table(241) := '9F18889AFD3A39150825A4C2059A37874A3CE34A1A0BA8A3CB8D68CDCC83D52F993F634F6B96FB2422C17AC193CF81565B978AB354CE44CB36FBD3C931C4708CEE0A33352DDF16186502C00FB606732ECACB325C4C23B85602300D61F68977743BDB98DA';
wwv_flow_imp.g_varchar2_table(242) := 'C565950A70E9E52CAC492221A7F70E4336A92CB0C934825358B826C172E650091E11B00B5A4D296755CAE2E43087A17BEFDCF93392198946E571233B9F036DA64F679D259B5497E3F649D9D0534292DEAD8800902F63A62AD48B00442AB4DBA5E63A0F22';
wwv_flow_imp.g_varchar2_table(243) := '18077FB8F04C30A1B69553DD666A2458E51410B5699E2B730CA624C1B3E8B46ECB0BE28AAB288FDF2F95C03567B3E568EECE9770351A9E165F02308D547058E7BA05018D0E0DD1D0100C76C1817D08C08CB4FB1C629B2DEA6A7964AEAB7E1E927529910D';
wwv_flow_imp.g_varchar2_table(244) := '606B6DE90A40640DBA5E2A9019D0B18930DB415293E178F3914E90E2D1B0BDC3740BC2368201DE68A92E82BA045D531AE73E5E231F026015A8B9C898F6BEF5BA20468184ACAB053E1280A58792729CBE6EC96C505F02C0FEC8CB8739223B99FBA2291717';
wwv_flow_imp.g_varchar2_table(245) := 'C178B44C35E315A6778B09C0D5DAD2C64D318674232F6904D7AA0225827150095ADBA89092A9680BD0647BAEECC7D1AC8BB075BCB445377DBC134E02008A716803F84464F5F7B85294FD5420D37EE079A474C234ABEEBC08A03AC1DD4665C96256074B5B';
wwv_flow_imp.g_varchar2_table(246) := '40563035BF4C52F33C98DE2D26003626503163708D5A09C0ACDCC9DB384DDD54B3B4328B23D68B00F01EB5AE8045BCADDB7898163CAEA405D74A70F886E9B528C916472E8AD1B8A23D4559DC926D04E32E554717466D871328C04600595E1D3ED0DCDE49';
wwv_flow_imp.g_varchar2_table(247) := 'B8B7B1A6695DEFA132017245124CA4D6E6400D313B97AAEEDDE0C2ED76AB62D0AE5E5EA63A8101A47174C111176B880BB5C401E444B9DC84CA1A000005C349444154707D5835B4DC0DA2A51E6AE6A8D47620436EAA3404B4BFC7EE75F1AD2B36CFB52AEE';
wwv_flow_imp.g_varchar2_table(248) := '59E5CB9346CE06B091461E7E20CBAF2FC7C1DD32151525AD104AF51A89B5875AD29509FBA37BD844CAB9AB00C7CC4A96E3CCAAF293F7994C3C2101AEDCEDE0AAD93D5B3E2C3C0AC905CD26801E0D2469320400C8168E8C86217A364601AFE2F07CD54B02';
wwv_flow_imp.g_varchar2_table(249) := 'C835E8EB41E389104DCE92526B57814435592D38436AFA892D70932608C4DC9369E478266BDDD4F7AA681AAEF469336E80E75D4527E6984DB7A609A3A29E3F33182A7E8387CADECBD9FC5626015CBDC7614E5408DB24FD2440FD082059D9245CB62EF88E';
wwv_flow_imp.g_varchar2_table(250) := '7A1300732B6EA02D28CE4CA91586E3224D444FC608560920AFE472ED972400DF1A5CF6800D08A02BA059B4B627A3EF26B10969E5196FE15E63712B2A5B800A6316AD8D90559CE476E58E59999246CEDB846DD154A03402C017909835CCB929F120520310';
wwv_flow_imp.g_varchar2_table(251) := '88281AE9C49391004217EF8D9A55605230C291D66A736B5A09C0A6BBA7B152E537E155E98DCCA34454BB5AA5DE9E85DA26D51AF9C6679304901EF936A781184C250C66A9BFB134C951842EA4C0300B5E972B56CB1D429012902A3E6812A14462BC22B47A';
wwv_flow_imp.g_varchar2_table(252) := '25D1F59EED87B02961A23A4F51E578FFD18FCCE35BE23CC468140915289D00885B71A2B85AA5C2F4039D0CC54FC608C6BC856F5C442871317241479775016C04E02B9A6D34C1461BB855042CA517CB33B7EC07964F0480CA9172DFF24FF39BAA7E5C8B37';
wwv_flow_imp.g_varchar2_table(253) := 'C9344C555D380F01E03969FF99B83BCC5995C2A3ACD6B12E5E63A201C21B095006A84458075BF3ECBCCC94A5A252E62AE239318E5326382E5EA016320B5D2F2DBF3F490093898CE27B130888F52C5210A6DDDE091B01C0D70C8E912710A66E9A0EC82A8B';
wwv_flow_imp.g_varchar2_table(254) := 'E5454923A4839AB0D718665CFA7027DBC15093E1EA4F00DDB9FA130B83580422C14490492A2FADFF2E92053B506F9B1FF436E9E6949D27CDE2DD408C2177D7F880C64686A8126A31A624F42200B590190B90AA9BA2B0BCBF8F469582FAACC05996366233';
wwv_flow_imp.g_varchar2_table(255) := '345DEF4C10404A002BEBBB2AF734F54844B6D19441F5D90BCF040098F21F84E86029E9D0796D006616E3E3CCB9CDC3C89C2F675A354B5F252E014686FF23430081296E331A0858F75A213479DE882A8F0C739DC5F8C41817FD80F850BF80F723E90DDF65';
wwv_flow_imp.g_varchar2_table(256) := 'BBCF43ED31F715735701C25490E64C02B02557E185AE9C1C360A8D9A5A9F84A7ACC308A0238832B9B1580C7075A0C0A99769349B222FEB3BAEDF6D4526188B942A4027835D520B1754BF69A69FE475A7BA08C08D9F93BD228C9CD70F90E189084A1DF384';
wwv_flow_imp.g_varchar2_table(257) := '64F58521CFFE8AB843ACA794024C1D935E53D351A146B83D08400F8EC841BA8AA631FEBE9E05BABA9213DAD0B658581851A41F3AAD005962419A300B4A7C23863E1B84CC42C1F175C7196A864100BEE90A69DF024A378C43CC37AF1B344D0208C3DC8E71';
wwv_flow_imp.g_varchar2_table(258) := 'E433771C22D9920887126D896AE1C63EDF9A8A7B447C45E08AAA013E2F0230B98A08D1DBC14DCDE0081FC072A706515ED30443F026189D21AB08D1E69064171F4835728C716625CFD532161C52D1624060A90A95A7366C7D9BB896EA16BB16DB3A72A917';
wwv_flow_imp.g_varchar2_table(259) := '3609C0EFC91151AE654D66FA33A604972AB41701D870D9D9202977685C40B82C6358422C0A7F08502635E86EE6A2261B5803F331463336831E5C3FD0DE999A3E3DD3364E9D83200077CCC336F684578A45763E5CA699B62675194FB5CA156CD2B304FB82';
wwv_flow_imp.g_varchar2_table(260) := '8395596E50A9F280B39A30787027A99E15B17900308DB9615EB8EDB4C9260E38230343B40B8F0C2687BC11A987D7DA88A12E0B5EE34BB439E6AD07009CCC104A33E3D4110CC3A772AAC6E1BEAB1E337B25C02EF22200CC1229CE2A7AB22DB062426B402F';
wwv_flow_imp.g_varchar2_table(261) := '860A520FEE8F31E060A3890620C45563B3586CE3000A92F0642388C9446397E4AEEA442E0B38ECD0DEE63885074CAFA3C63D9375432FC9F5A8F7B7B1BE80BD191B1B666F963701D8B2F2B0B0E0BE92E327BB8000D73F0B6538FF1445B0486D9420FA5DC5';
wwv_flow_imp.g_varchar2_table(262) := '9227BB883DFF57A7E709D38D9B054FA28ECA05886B43449B9ED9CCDCAFB093E17F839BFF1F4FA3BE2BCC4FA2BB0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(684427476404773659)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(646696535612151357)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>44562010726669
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(684131154630772312)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>41590306066718
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(684131347810772320)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>41590306067261
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(684131586478772320)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>41590306067318
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(684131912600772321)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>41590306067393
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(684132225753772322)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>41590306067495
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(684132521446772323)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>41590306067573
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(684132811215772324)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>41590306067663
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(684133121215772325)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>41590306067733
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(684133391549772326)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>41590306067791
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(684133765805772327)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>41590306067861
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(684133982868772328)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER',
  'show_coordinates', 'N')).to_clob
,p_version_scn=>41590306067920
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(684134329283772329)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>41590306068002
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(684134620634772330)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>41590306068078
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(684428784940773662)
,p_name=>'Administration Rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>'return true;'
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>41590306138996
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_processes/getpdf
begin
wwv_flow_imp_shared.create_flow_process(
 p_id=>wwv_flow_imp.id(577046380809339561)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GETPDF'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    for c1 in (select file_name, file_type, file_content',
'                 from documents',
'                where id = :ID) loop',
'        --',
'        sys.htp.init;',
'        sys.owa_util.mime_header( c1.file_type, FALSE );',
'        sys.htp.p(''Content-length: '' || sys.dbms_lob.getlength( c1.file_content));',
'        sys.htp.p(''Content-Disposition: inline; filename="'' || c1.file_name || ''"'' );',
'        sys.htp.p(''Cache-Control: max-age=3600'');  -- tell the browser to cache for one hour, adjust as necessary',
'        sys.owa_util.http_header_close;',
'        sys.wpg_docload.download_file( c1.file_content );',
'     ',
'        apex_application.stop_apex_engine;',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
,p_version_scn=>44719900754095
);
end;
/
prompt --application/shared_components/logic/application_items/id
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(577045971531325297)
,p_name=>'ID'
,p_protection_level=>'N'
,p_version_scn=>44719767219702
);
end;
/
prompt --application/shared_components/logic/application_settings
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs/application_type
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(283827278979808333)
,p_lov_name=>'APPLICATION TYPE'
,p_lov_query=>'.'||wwv_flow_imp.id(283827278979808333)||'.'
,p_location=>'STATIC'
,p_version_scn=>44857309189858
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(283827563020808358)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'PDF'
,p_lov_return_value=>'application/pdf'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(283827935659808362)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Photograph'
,p_lov_return_value=>'application/png'
);
end;
/
prompt --application/shared_components/user_interface/lovs/conversations_username
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(671329355992918935)
,p_lov_name=>'CONVERSATIONS.USERNAME'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'CONVERSATIONS'
,p_return_column_name=>'ID'
,p_display_column_name=>'USERNAME'
,p_default_sort_column_name=>'USERNAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>41127756589499
);
end;
/
prompt --application/shared_components/user_interface/lovs/domains
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(282627232172743398)
,p_lov_name=>'DOMAINS'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'DOMAINS'
,p_return_column_name=>'DOMAIN_NAME'
,p_display_column_name=>'DOMAIN_NAME'
,p_default_sort_column_name=>'DOMAIN_NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>44857308851570
);
end;
/
prompt --application/shared_components/user_interface/lovs/highschools_borough
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(684474081465705423)
,p_lov_name=>'HIGHSCHOOLS.BOROUGH'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'HIGHSCHOOLS'
,p_return_column_name=>'ID_1'
,p_display_column_name=>'BOROUGH'
,p_default_sort_column_name=>'BOROUGH'
,p_default_sort_direction=>'ASC'
,p_version_scn=>41590536378789
);
end;
/
prompt --application/shared_components/user_interface/lovs/list_buckets_in_compartment
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(214500694278800556)
,p_lov_name=>'LIST BUCKETS IN COMPARTMENT'
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(214302032054894629)
,p_return_column_name=>'NAME'
,p_display_column_name=>'NAME'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>45772723365665
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(214500951947800554)
,p_web_src_param_id=>wwv_flow_imp.id(214303914063887388)
,p_shared_lov_id=>wwv_flow_imp.id(214500694278800556)
,p_value_type=>'ITEM'
,p_value=>'P9_COMPARTMENT_SEARCH'
);
end;
/
prompt --application/shared_components/user_interface/lovs/list_compartments_in_tenancy
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(214499766294811829)
,p_lov_name=>'LIST COMPARTMENTS IN TENANCY'
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(213905638422969653)
,p_return_column_name=>'ID'
,p_display_column_name=>'NAME'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>45772724003449
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(214500095790811796)
,p_web_src_param_id=>wwv_flow_imp.id(213906294029969643)
,p_shared_lov_id=>wwv_flow_imp.id(214499766294811829)
,p_value_type=>'DEFAULT'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(684429120544773665)
,p_group_name=>'Administration'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(684448713662773859)
,p_group_name=>'User Settings'
);
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(684135560487772350)
,p_name=>'Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(214314619817843208)
,p_short_name=>'List Objects'
,p_link=>'f?p=&APP_ID.:9:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>9
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(251108803263878829)
,p_short_name=>'Run Agent Team'
,p_link=>'f?p=&APP_ID.:11:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>11
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(282013383465294466)
,p_short_name=>'Home Page'
,p_link=>'f?p=&APP_ID.:25:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>25
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(292065111214252963)
,p_short_name=>'Update AI Agents'
,p_link=>'f?p=&APP_ID.:29:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>29
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(500243977473800708)
,p_short_name=>'View Image Documents'
,p_link=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>5
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(514254756087785154)
,p_short_name=>'Search Document Modal'
,p_link=>'f?p=&APP_ID.:20:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>20
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(649638984435118018)
,p_short_name=>'Global Search'
,p_link=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>10
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(666621141732833141)
,p_short_name=>'Search Document'
,p_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
,p_page_id=>3
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670156964478670902)
,p_short_name=>'Search Conversations'
,p_link=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>4
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(670181276450035801)
,p_short_name=>'Domains'
,p_link=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>7
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(671287045589034345)
,p_short_name=>'Add Document'
,p_link=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:::'
,p_page_id=>13
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(673416960491446810)
,p_short_name=>'View PDF Documents'
,p_link=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:::'
,p_page_id=>16
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(673511358170531768)
,p_short_name=>'Search Documents'
,p_link=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:::'
,p_page_id=>12
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(673642171318238317)
,p_short_name=>'Prompt Instructions'
,p_link=>'f?p=&APP_ID.:17:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>17
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(675004127870881154)
,p_short_name=>'AI Configuration'
,p_link=>'f?p=&APP_ID.:19:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>19
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(684057948202763210)
,p_short_name=>'Vector Keyword Search'
,p_link=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>6
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(684446758988773825)
,p_short_name=>'Dashboard'
,p_link=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>2
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(692839174925723174)
,p_short_name=>'Hybrid Search'
,p_link=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>8
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
null;
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(684402391266773543)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'24.2'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4072363937200175119
,p_is_locked=>false
,p_current_theme_style_id=>3293430150770310735
,p_default_page_template=>4072355960268175073
,p_default_dialog_template=>2100407606326202693
,p_error_template=>2101157952850466385
,p_printer_friendly_template=>4072355960268175073
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>2101157952850466385
,p_default_button_template=>4072362960822175091
,p_default_region_template=>4072358936313175081
,p_default_chart_template=>4072358936313175081
,p_default_form_template=>4072358936313175081
,p_default_reportr_template=>4072358936313175081
,p_default_tabform_template=>4072358936313175081
,p_default_wizard_template=>4072358936313175081
,p_default_menur_template=>2531463326621247859
,p_default_listr_template=>4072358936313175081
,p_default_irr_template=>2100526641005906379
,p_default_report_template=>2538654340625403440
,p_default_label_template=>1609121967514267634
,p_default_menu_template=>4072363345357175094
,p_default_calendar_template=>4072363550766175095
,p_default_list_template=>4072361143931175087
,p_default_nav_list_template=>2526754704087354841
,p_default_top_nav_list_temp=>2526754704087354841
,p_default_side_nav_list_temp=>2467739217141810545
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>2126429139436695430
,p_default_dialogr_template=>4501440665235496320
,p_default_option_label=>1609121967514267634
,p_default_required_label=>1609122147107268652
,p_default_navbar_list_template=>2847543055748234966
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/24.2/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(684134921705772332)
,p_build_option_name=>'Commented Out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>41590306068267
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(684448930849773860)
,p_build_option_name=>'Feature: Push Notifications'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>41590306146503
,p_feature_identifier=>'APPLICATION_PUSH_NOTIFICATIONS'
,p_build_option_comment=>'Allow users to subscribe to push notifications on their devices.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(684449211438773863)
,p_build_option_name=>'Feature: User Settings'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>41590306146508
,p_feature_identifier=>'APPLICATION_USER_SETTINGS'
,p_build_option_comment=>'The user settings page is a drawer that links to all user settings pages.'
);
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/security/authentications/oracle_apex_accounts
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(684135204756772342)
,p_name=>'Oracle APEX Accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>23296412
);
end;
/
prompt --application/shared_components/plugins/template_component/llm_conversation
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(163817031141377510621)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '')
,p_name=>'LLM_CONVERSATION'
,p_display_name=>'House Bill Detail'
,p_supported_component_types=>'PARTIAL:REPORT'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('TEMPLATE COMPONENT','LLM_CONVERSATION'),'')
,p_javascript_file_urls=>'#PLUGIN_FILES#llm-conversations#MIN#.js'
,p_css_file_urls=>'#PLUGIN_FILES#llm-conversations#MIN#.css'
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <div class="chat-container">',
'        <div class="message-container">',
'            <div class="message recipient">',
'                <Span><p style="color: LightSkyBlue;">Domain: #DOMAIN# &nbsp; &nbsp; &nbsp; &nbsp; Service: #AI_SERVICE#</p> #PROMPT#</Span>',
'            </div>',
'            <div class="message user">',
'                <pre id = "response-#ID#" class = "response response-box">#RESPONSE#</pre>',
'                <div>#ADDITIONAL_ACTIONS#',
'',
'                </div>',
'            </div>',
'        </div>',
'    </div>',
' ',
''))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>1
,p_report_body_template=>'<div>#APEX$ROWS#</div>'
,p_report_row_template=>'<div class="prompt-container" #APEX$ROW_IDENTIFICATION#>#APEX$PARTIAL#</div>'
,p_report_placeholder_count=>3
,p_standard_attributes=>'REGION_TEMPLATE'
,p_substitute_attributes=>true
,p_version_scn=>44558167619263
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
,p_files_version=>177
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(163817032126143510634)
,p_plugin_id=>wwv_flow_imp.id(163817031141377510621)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'PROMPT'
,p_prompt=>'Prompt'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(113130694081340371711)
,p_plugin_id=>wwv_flow_imp.id(163817031141377510621)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>40
,p_static_id=>'RESPONSE'
,p_prompt=>'Response'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(163842600187689781700)
,p_plugin_id=>wwv_flow_imp.id(163817031141377510621)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'ID'
,p_prompt=>'ID'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(670400942748535128)
,p_plugin_id=>wwv_flow_imp.id(163817031141377510621)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>50
,p_static_id=>'DOMAIN'
,p_prompt=>'Domain'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(670428635398960525)
,p_plugin_id=>wwv_flow_imp.id(163817031141377510621)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>60
,p_static_id=>'AI_SERVICE'
,p_prompt=>'Ai Service'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_act_template(
 p_id=>wwv_flow_imp.id(113170188074828928062)
,p_plugin_id=>wwv_flow_imp.id(163817031141377510621)
,p_name=>'Additional Action template'
,p_type=>'BUTTON'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a class="llm-actions rw-Button{if IS_HOT/} is-hot{endif/} {if ICON_CLASSES/}rw-Button--iconText{else/}rw-Button--text{endif/} #CSS_CLASSES#" href="#LINK_URL#" title="#LABEL!ATTR#" #LINK_ATTR# {if IS_DISABLED/}disabled{endif/}>',
'  <span class="rw-Button-label">',
'    <span class="rw-Button-icon #ICON_CLASSES#" aria-hidden="true"></span>',
'    <span class="rw-Button-text">#LABEL#</span>',
'  </span>',
'</a>'))
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(113170187261108919545)
,p_plugin_id=>wwv_flow_imp.id(163817031141377510621)
,p_name=>'Additional Actions'
,p_static_id=>'ADDITIONAL_ACTIONS'
,p_display_sequence=>10
,p_type=>'TEMPLATE'
,p_template_id=>wwv_flow_imp.id(113170188074828928062)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2E636861742D636F6E7461696E65727B666F6E742D66616D696C793A417269616C2C73616E732D736572696621696D706F7274616E747D2E6D6573736167657B6D617267696E2D626F74746F6D3A313070783B70616464696E673A313070783B626F7264';
wwv_flow_imp.g_varchar2_table(2) := '65722D7261646975733A313570783B6C696E652D6865696768743A312E347D2E6D6573736167652E726563697069656E747B6261636B67726F756E642D636F6C6F723A233539363737303B636F6C6F723A236666663B616C69676E2D73656C663A666C65';
wwv_flow_imp.g_varchar2_table(3) := '782D656E643B6D617267696E2D6C6566743A6175746F3B666F6E742D73697A653A63616C63282E357677202B202E37656D293B6D696E2D77696474683A3735257D2E6D6573736167652E757365727B6261636B67726F756E642D636F6C6F723A23663066';
wwv_flow_imp.g_varchar2_table(4) := '3066303B636F6C6F723A233030303B616C69676E2D73656C663A666C65782D73746172743B666F6E742D66616D696C793A417269616C2C73616E732D73657269663B6D61782D77696474683A313030257D2E6D6573736167652D636F6E7461696E65727B';
wwv_flow_imp.g_varchar2_table(5) := '646973706C61793A666C65783B666C65782D646972656374696F6E3A636F6C756D6E7D2E726573706F6E73652D626F787B666F6E742D66616D696C793A417269616C2C73616E732D73657269663B746578742D777261703A777261707D2E726573706F6E';
wwv_flow_imp.g_varchar2_table(6) := '73657B6D61782D77696474683A313030253B666F6E742D73697A653A63616C63282E357677202B202E37656D293B6D617267696E3A313070787D';
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(670427293205894613)
,p_plugin_id=>wwv_flow_imp.id(163817031141377510621)
,p_file_name=>'llm-conversations.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(113130695622240376877)
,p_plugin_id=>wwv_flow_imp.id(163817031141377510621)
,p_file_name=>'llm-conversations.min.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2E636861742D636F6E7461696E65727B0A20202020666F6E742D66616D696C793A20417269616C2C2073616E732D73657269662021696D706F7274616E743B0A7D0A2E6D657373616765207B0A202020206D617267696E2D626F74746F6D3A2031307078';
wwv_flow_imp.g_varchar2_table(2) := '3B0A2020202070616464696E673A20313070783B0A20202020626F726465722D7261646975733A20313570783B0A202020200A202020206C696E652D6865696768743A20312E343B0A202020200A7D0A2E6D6573736167652E726563697069656E74207B';
wwv_flow_imp.g_varchar2_table(3) := '0A202020206261636B67726F756E642D636F6C6F723A20233539363737303B0A20202020636F6C6F723A2077686974653B0A20202020616C69676E2D73656C663A20666C65782D656E643B0A202020206D617267696E2D6C6566743A206175746F3B0A20';
wwv_flow_imp.g_varchar2_table(4) := '202020666F6E742D73697A653A2063616C63282E357677202B202E37656D293B0A202020206D696E2D77696474683A203735253B202020200A7D0A2E6D6573736167652E75736572207B0A202020206261636B67726F756E642D636F6C6F723A20236630';
wwv_flow_imp.g_varchar2_table(5) := '663066303B0A20202020636F6C6F723A20233030303B0A20202020616C69676E2D73656C663A20666C65782D73746172743B20200A20202020666F6E742D66616D696C793A20417269616C2C2073616E732D73657269663B0A202020206D61782D776964';
wwv_flow_imp.g_varchar2_table(6) := '74683A20313030253B0A7D0A2E6D6573736167652D636F6E7461696E6572207B0A20202020646973706C61793A20666C65783B0A20202020666C65782D646972656374696F6E3A20636F6C756D6E3B0A7D0A2E726573706F6E73652D626F787B0A202020';
wwv_flow_imp.g_varchar2_table(7) := '20200A20202020666F6E742D66616D696C793A20417269616C2C2073616E732D73657269663B200A20202020746578742D777261703A20777261703B0A7D0A2E726573706F6E73657B0A202020206D61782D77696474683A20313030253B0A2020202066';
wwv_flow_imp.g_varchar2_table(8) := '6F6E742D73697A653A2063616C63282E357677202B202E37656D293B0A202020206D617267696E3A20313070783B0A7D';
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(163817364793604514436)
,p_plugin_id=>wwv_flow_imp.id(163817031141377510621)
,p_file_name=>'llm-conversations.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2F2F2024282066756E6374696F6E202829207B0A0A202020200A2F2F2020202428222E726573706F6E736522292E656163682866756E6374696F6E2865297B0A2F2F2020202020207661722075726C203D20242874686973292E64617461282275726C22';
wwv_flow_imp.g_varchar2_table(2) := '293B0A2F2F202020202020766172206964203D20242874686973292E646174612822696422293B0A2F2F202020202020636F6E7374206F7074696F6E73203D207B0A2F2F2020202020202020206D6574686F643A2027474554272C0A2F2F202020202020';
wwv_flow_imp.g_varchar2_table(3) := '202020686561646572733A206E65772048656164657273287B27636F6E74656E742D74797065273A20276170706C69636174696F6E2F6A736F6E277D290A2F2F20202020207D3B0A2F2F202020202066657463682875726C290A2F2F2020202E7468656E';
wwv_flow_imp.g_varchar2_table(4) := '28726573706F6E7365203D3E20726573706F6E73652E6A736F6E2829290A2F2F2020202E7468656E2864617461203D3E207B0A2F2F2020202020636F6E736F6C652E6C6F6728646174612E726573706F6E7365293B0A2F2F20202020646F63756D656E74';
wwv_flow_imp.g_varchar2_table(5) := '2E676574456C656D656E74427949642827726573706F6E73652D272B646174612E6964292E696E6E657248544D4C203D20646174612E726573706F6E73653B0A2F2F2020207D290A20202020200A2F2F2020207D290A0A2F2F2020207661722063617264';
wwv_flow_imp.g_varchar2_table(6) := '416374696F6E73203D207B0A2F2F202020202020202020202020206E616D653A20226C6C6D2D616374696F6E73222C0A2F2F20202020202020202020202020616374696F6E3A2066756E6374696F6E286576656E742C20656C656D656E742C2061726773';
wwv_flow_imp.g_varchar2_table(7) := '29207B0A2F2F2020202020202020202020202020202020617065782E6974656D732E50315F43555252454E545F49442E76616C7565203D20617267732E69643B0A2F2F2020202020202020202020202020202020617065782E6576656E742E7472696767';
wwv_flow_imp.g_varchar2_table(8) := '657228646F63756D656E742C20617267732E6576656E74293B0A2F2F202020202020202020202020207D0A2F2F2020202020202020207D0A0A2F2F2020202020617065782E616374696F6E732E616464285B63617264416374696F6E735D293B0A0A2F2F';
wwv_flow_imp.g_varchar2_table(9) := '207D293B0A';
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(163842624617232787901)
,p_plugin_id=>wwv_flow_imp.id(163817031141377510621)
,p_file_name=>'llm-conversations.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_imp_page.create_page(
 p_id=>0
,p_name=>'Global Page'
,p_step_title=>'Global Page'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_page_component_map=>'14'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'Dashboard'
,p_alias=>'DASHBOARD'
,p_step_title=>'Dashboard'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(684446262115773821)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(684135560487772350)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>'Document Search'
,p_alias=>'DOCUMENT-DETAIL2'
,p_step_title=>'Search Across Document'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'27'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(666312563239977381)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(684135560487772350)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(694873832275099473)
,p_plug_name=>'LLM Conversation'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'PROMPTS'
,p_query_where=>'conv_id=:P3_CONV_ID'
,p_query_order_by_type=>'STATIC'
,p_query_order_by=>'asked_on desc'
,p_include_rowid_column=>false
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_LLM_CONVERSATION'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_plug_query_no_data_found=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p style="font-size: 24px;">Welcome to the conversation!  Select a document and ask a question.</p>',
''))
,p_show_total_row_count=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'AI_SERVICE', 'AI_SERVICE',
  'DOMAIN', 'DOMAIN',
  'ID', 'ID',
  'PROMPT', 'PROMPT',
  'RESPONSE', 'RESPONSE')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(673688779069747969)
,p_name=>'CHATHISTORY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CHATHISTORY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>70
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_required_patch=>wwv_flow_imp.id(684134921705772332)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(673688910866747970)
,p_name=>'REFERENCES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REFERENCES'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>80
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_required_patch=>wwv_flow_imp.id(684134921705772332)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(673689009777747971)
,p_name=>'REQUEST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REQUEST'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>90
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_required_patch=>wwv_flow_imp.id(684134921705772332)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(673689105314747972)
,p_name=>'OUTPUT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OUTPUT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>100
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_required_patch=>wwv_flow_imp.id(684134921705772332)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(673689173128747973)
,p_name=>'CITATIONS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CITATIONS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>110
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_required_patch=>wwv_flow_imp.id(684134921705772332)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(673689289162747974)
,p_name=>'DOCUMENTS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCUMENTS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>120
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_required_patch=>wwv_flow_imp.id(684134921705772332)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(673689395579747975)
,p_name=>'DOCUMENTS4RERANK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCUMENTS4RERANK'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>130
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_required_patch=>wwv_flow_imp.id(684134921705772332)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(673689567621747976)
,p_name=>'DOCUMENTSRERANKED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCUMENTSRERANKED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>140
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_required_patch=>wwv_flow_imp.id(684134921705772332)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(673689601017747977)
,p_name=>'SHOWSQL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHOWSQL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>150
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_required_patch=>wwv_flow_imp.id(684134921705772332)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(673689709127747978)
,p_name=>'AI_SERVICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AI_SERVICE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>160
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(673689775111747979)
,p_name=>'DOMAIN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOMAIN'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>170
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(694874043864099475)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(694876858482099503)
,p_name=>'CONV_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CONV_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(694876962992099504)
,p_name=>'PROMPT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROMPT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>40
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(694876997138099505)
,p_name=>'RESPONSE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RESPONSE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>50
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(694877125658099506)
,p_name=>'ASKED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ASKED_ON'
,p_data_type=>'TIMESTAMP'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>60
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(694877424163099509)
,p_plug_name=>'Footer'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>1569994581593435632
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_05'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(666600930686810511)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(666312563239977381)
,p_button_name=>'Submit'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'SMART_FILTERS'
,p_button_css_classes=>'u-color-1'
,p_icon_css_classes=>'fa-send-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(666601340200810516)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(666312563239977381)
,p_button_name=>'create_new_conversation'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create New Conversation'
,p_button_position=>'SMART_FILTERS'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-1'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(220584805002292426)
,p_name=>'P3_SQL_PROMPT_CONV_IDS'
,p_item_sequence=>20
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Conversation ID: ''||c.id||''       Prompt ID: ''||p.id from ',
'(select max(id) id from conversations where app_session=:APP_SESSION) c,',
'(select conv_id, max(id) id from prompts group by conv_id) p',
'where c.id = p.conv_id;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(482442841855495468)
,p_name=>'P3_RESULT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(666312563239977381)
,p_item_display_point=>'SMART_FILTERS'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(687674992728544518)
,p_name=>'P3_SELECT_DOCUMENT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(666312563239977381)
,p_item_display_point=>'SMART_FILTERS'
,p_item_default=>'P3_SELECT_DOCUMENT'
,p_item_default_type=>'ITEM'
,p_prompt=>'Select Document'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'select file_name||'' - ''||file_type s, file_name r from documents '
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(694729518652731943)
,p_name=>'P3_CONV_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(666312563239977381)
,p_item_display_point=>'SMART_FILTERS'
,p_use_cache_before_default=>'NO'
,p_source=>'select max(id) from conversations where app_session=:APP_SESSION'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(694878945638099551)
,p_name=>'P3_PROMPT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(666312563239977381)
,p_item_display_point=>'SMART_FILTERS'
,p_prompt=>'Prompt'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(697675434683790065)
,p_name=>'P3_PROMPT_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(666312563239977381)
,p_item_display_point=>'SMART_FILTERS'
,p_use_cache_before_default=>'NO'
,p_item_default=>'select max(id) from prompts where conv_id=(select max(id) from conversations where app_session=:APP_SESSION)'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(666618355794810652)
,p_name=>'create_conversation'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(666601340200810516)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(666618801228810659)
,p_event_id=>wwv_flow_imp.id(666618355794810652)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'chathistory_pkg.prc_add_conversation(:APP_USER, SYSTIMESTAMP, :APP_SESSION);'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(666619319545810664)
,p_event_id=>wwv_flow_imp.id(666618355794810652)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Clear state'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_PROMPT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(666619838654810666)
,p_event_id=>wwv_flow_imp.id(666618355794810652)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(666615995381810633)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Invoke API'
,p_attribute_01=>'PLSQL_PROCEDURE_FUNCTION'
,p_attribute_05=>'DOCUMENT_SEARCH'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(666600930686810511)
,p_internal_uid=>21377926356567265
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(482439688758495437)
,p_page_process_id=>wwv_flow_imp.id(666615995381810633)
,p_page_id=>3
,p_name=>'p_ai_prompt'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>60
,p_value_type=>'ITEM'
,p_value=>'P3_PROMPT'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(666312620047977382)
,p_page_process_id=>wwv_flow_imp.id(666615995381810633)
,p_page_id=>3
,p_name=>'p_file_name'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>20
,p_value_type=>'SQL_QUERY'
,p_value=>'select file_name from documents where file_name = :P3_SELECT_DOCUMENT'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(666616500323810643)
,p_page_process_id=>wwv_flow_imp.id(666615995381810633)
,p_page_id=>3
,p_name=>'p_session_id'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>true
,p_display_sequence=>40
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>':APP_SESSION'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(666617536349810648)
,p_page_process_id=>wwv_flow_imp.id(666615995381810633)
,p_page_id=>3
,p_direction=>'OUT'
,p_data_type=>'CLOB'
,p_ignore_output=>false
,p_display_sequence=>50
,p_value_type=>'ITEM'
,p_value=>'P3_RESULT'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'Search Conversations'
,p_alias=>'SEARCH-CONVERSATIONS'
,p_step_title=>'Search Conversations'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2526643373347724467
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'22'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(670156415573670895)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(684135560487772350)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(670157085890670906)
,p_name=>'Search Results'
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'CONVERSATION_V'
,p_include_rowid_column=>false
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>100000
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(670160597961671135)
,p_query_column_id=>1
,p_column_alias=>'CONVERSATION_ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(670160976756671136)
,p_query_column_id=>2
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>2
,p_column_heading=>'Username'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(670161422679671138)
,p_query_column_id=>3
,p_column_alias=>'STARTED_ON'
,p_column_display_sequence=>3
,p_column_heading=>'Started On'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(670161803583671139)
,p_query_column_id=>4
,p_column_alias=>'APP_SESSION'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(670162240861671140)
,p_query_column_id=>5
,p_column_alias=>'PROMPT_ID'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(670162615694671141)
,p_query_column_id=>6
,p_column_alias=>'PROMPT'
,p_column_display_sequence=>6
,p_column_heading=>'Prompt'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(670163053472671143)
,p_query_column_id=>7
,p_column_alias=>'RESPONSE'
,p_column_display_sequence=>7
,p_column_heading=>'Response'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(670163435588671144)
,p_query_column_id=>8
,p_column_alias=>'ASKED_ON'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(670163836742671145)
,p_query_column_id=>9
,p_column_alias=>'CHATHISTORY'
,p_column_display_sequence=>9
,p_default_sort_column_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(670164263236671146)
,p_query_column_id=>10
,p_column_alias=>'REFERENCES'
,p_column_display_sequence=>10
,p_column_heading=>'References'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(670164648590671148)
,p_query_column_id=>11
,p_column_alias=>'REQUEST'
,p_column_display_sequence=>11
,p_column_heading=>'Request'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(670165017418671150)
,p_query_column_id=>12
,p_column_alias=>'OUTPUT'
,p_column_display_sequence=>12
,p_column_heading=>'Output'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(670165383830671151)
,p_query_column_id=>13
,p_column_alias=>'CITATIONS'
,p_column_display_sequence=>13
,p_column_heading=>'Citations'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(670165789045671153)
,p_query_column_id=>14
,p_column_alias=>'DOCUMENTS'
,p_column_display_sequence=>14
,p_column_heading=>'Documents'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(670166180753671154)
,p_query_column_id=>15
,p_column_alias=>'DOCUMENTS4RERANK'
,p_column_display_sequence=>15
,p_column_heading=>'Documents4rerank'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(670166571944671155)
,p_query_column_id=>16
,p_column_alias=>'DOCUMENTSRERANKED'
,p_column_display_sequence=>16
,p_column_heading=>'Documentsreranked'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(670167059487671156)
,p_query_column_id=>17
,p_column_alias=>'SHOWSQL'
,p_column_display_sequence=>17
,p_column_heading=>'Showsql'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(670167439304671158)
,p_query_column_id=>18
,p_column_alias=>'AI_SERVICE'
,p_column_display_sequence=>18
,p_column_heading=>'Ai Service'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(670167795127671159)
,p_query_column_id=>19
,p_column_alias=>'DOMAIN'
,p_column_display_sequence=>19
,p_column_heading=>'Domain'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(670157249322670906)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>4
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_imp.id(670157085890670906)
,p_landmark_label=>'Filters'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'batch_facet_search', 'N',
  'compact_numbers_threshold', '10000',
  'current_facets_selector', '#active_facets',
  'display_chart_for_top_n_values', '10',
  'show_charts', 'Y',
  'show_current_facets', 'E',
  'show_total_row_count', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(670159653890670926)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>'<div id="active_facets"></div>'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(670160141200670930)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(670159653890670926)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:RR,4::'
,p_icon_css_classes=>'fa-undo'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(670157670211670913)
,p_name=>'P4_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(670157249322670906)
,p_prompt=>'Search'
,p_source=>'USERNAME,PROMPT,RESPONSE,CHATHISTORY,REFERENCES,REQUEST,OUTPUT,CITATIONS,DOCUMENTS,DOCUMENTS4RERANK,DOCUMENTSRERANKED,SHOWSQL,AI_SERVICE,DOMAIN'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'collapsed_search_field', 'N',
  'input_field', 'FACET',
  'search_type', 'ROW')).to_clob
,p_fc_collapsible=>false
,p_fc_initial_collapsed=>false
,p_fc_show_chart=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(670158077854670921)
,p_name=>'P4_USERNAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(670157249322670906)
,p_prompt=>'Username'
,p_source=>'USERNAME'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_fc_show_label=>true
,p_fc_collapsible=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(670158469999670922)
,p_name=>'P4_PROMPT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(670157249322670906)
,p_prompt=>'Prompt'
,p_source=>'PROMPT'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_fc_show_label=>true
,p_fc_collapsible=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(670158890649670924)
,p_name=>'P4_AI_SERVICE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(670157249322670906)
,p_prompt=>'Ai Service'
,p_source=>'AI_SERVICE'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_fc_show_label=>true
,p_fc_collapsible=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(670159348954670925)
,p_name=>'P4_DOMAIN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(670157249322670906)
,p_prompt=>'Domain'
,p_source=>'DOMAIN'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_fc_show_label=>true
,p_fc_collapsible=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_imp_page.create_page(
 p_id=>5
,p_name=>'View Image Documents'
,p_alias=>'VIEW-IMAGE-DOCUMENTS'
,p_step_title=>'View Image Documents'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2526643373347724467
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'22'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(500243452926800698)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(684135560487772350)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(500244188212800712)
,p_name=>'Search Results'
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "ID","FILE_NAME","FILE_SIZE","FILE_TYPE",sys.dbms_lob.getlength("FILE_CONTENT")"FILE_CONTENT",sys.dbms_lob.getlength("FIRST_PAGE_IMAGE")"FIRST_PAGE_IMAGE","DOMAIN","FILE_CONTENT_CLOB" from "DOCUMENTS"',
'where file_type = ''application/png'''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>100000
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(500246867012800793)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>0
,p_column_heading=>'AI Search'
,p_column_link=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::P20_SELECT_DOCUMENT:#ID#'
,p_column_linktext=>'#ID#'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_imp.id(684134921705772332)
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(500247248958800796)
,p_query_column_id=>2
,p_column_alias=>'FILE_NAME'
,p_column_display_sequence=>20
,p_column_heading=>'AI Search'
,p_column_link=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::P20_SELECT_DOCUMENT:#FILE_NAME#'
,p_column_linktext=>'#FILE_NAME#'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(500247675461800797)
,p_query_column_id=>3
,p_column_alias=>'FILE_SIZE'
,p_column_display_sequence=>30
,p_column_heading=>'File Size'
,p_column_format=>'999G999G999G999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(500248068220800798)
,p_query_column_id=>4
,p_column_alias=>'FILE_TYPE'
,p_column_display_sequence=>40
,p_column_heading=>'File Type'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(500248497948800798)
,p_query_column_id=>5
,p_column_alias=>'FILE_CONTENT'
,p_column_display_sequence=>50
,p_column_heading=>'File Content'
,p_column_format=>'IMAGE:DOCUMENTS:FILE_CONTENT:ID::::::::'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(361434300921400271)
,p_query_column_id=>6
,p_column_alias=>'FIRST_PAGE_IMAGE'
,p_column_display_sequence=>80
,p_column_heading=>'First Page Image'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(500249293203800800)
,p_query_column_id=>7
,p_column_alias=>'DOMAIN'
,p_column_display_sequence=>10
,p_column_heading=>'Domain'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(500249695977800801)
,p_query_column_id=>8
,p_column_alias=>'FILE_CONTENT_CLOB'
,p_column_display_sequence=>70
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(500244249905800712)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>4
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_imp.id(500244188212800712)
,p_landmark_label=>'Filters'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'batch_facet_search', 'N',
  'compact_numbers_threshold', '10000',
  'current_facets_selector', '#active_facets',
  'display_chart_for_top_n_values', '10',
  'show_charts', 'Y',
  'show_current_facets', 'E',
  'show_total_row_count', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(500245930040800734)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>'<div id="active_facets"></div>'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(500246410845800739)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(500245930040800734)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:RR,5::'
,p_icon_css_classes=>'fa-undo'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(500244831932800723)
,p_name=>'P5_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(500244249905800712)
,p_prompt=>'Search'
,p_source=>'FILE_TYPE,FILE_NAME,DOMAIN'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'collapsed_search_field', 'N',
  'input_field', 'FACET',
  'search_type', 'ROW')).to_clob
,p_fc_collapsible=>false
,p_fc_initial_collapsed=>false
,p_fc_show_chart=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(500245161105800729)
,p_name=>'P5_FILE_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(500244249905800712)
,p_prompt=>'File Name'
,p_source=>'FILE_NAME'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_fc_show_label=>true
,p_fc_collapsible=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(500245601460800733)
,p_name=>'P5_FILE_SIZE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(500244249905800712)
,p_prompt=>'File Size'
,p_source=>'FILE_SIZE'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_RANGE'
,p_lov=>'STATIC2:<100#G#000;|100000,100#G#000 - 200#G#000;100000|200000,200#G#000 - 400#G#000;200000|400000,400#G#000 - 600#G#000;400000|600000,>=600#G#000;600000|'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'manual_entry', 'N',
  'select_multiple', 'Y')).to_clob
,p_fc_collapsible=>false
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_imp_page.create_page(
 p_id=>6
,p_name=>'Vector Keyword Search'
,p_alias=>'VECTOR-KEYWORD-SEARCH'
,p_step_title=>'Vector Keyword Search'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'27'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(712572143588744417)
,p_name=>'Document References'
,p_title=>'Documents and Document Chunks'
,p_template=>4072358936313175081
,p_display_sequence=>90
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select references',
'  from prompts',
' where id=:P6_PROMPT_ID'))
,p_display_when_condition=>'P6_AI_SERVICE'
,p_display_when_cond2=>'Vector Search'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(684038728141763139)
,p_query_column_id=>1
,p_column_alias=>'REFERENCES'
,p_column_display_sequence=>10
,p_column_heading=>'References'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(714509331314833820)
,p_name=>'DOCUMENTS'
,p_title=>'Documents Listed in Order of Relevance'
,p_template=>4072358936313175081
,p_display_sequence=>100
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'DOCUMENT_RANKING_V'
,p_query_where=>'prompt_id=:P6_PROMPT_ID'
,p_query_order_by_type=>'STATIC'
,p_query_order_by=>'score desc'
,p_include_rowid_column=>false
,p_display_when_condition=>'P6_AI_SERVICE'
,p_display_when_cond2=>'Vector Search'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(684039538429763146)
,p_query_column_id=>1
,p_column_alias=>'FILE_NAME'
,p_column_display_sequence=>40
,p_column_heading=>'File Name'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(684039861271763147)
,p_query_column_id=>2
,p_column_alias=>'PROMPT_ID'
,p_column_display_sequence=>90
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(684040246718763148)
,p_query_column_id=>3
,p_column_alias=>'CONV_ID'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(684040722098763149)
,p_query_column_id=>4
,p_column_alias=>'PROMPT'
,p_column_display_sequence=>20
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(684041130733763150)
,p_query_column_id=>5
,p_column_alias=>'RESPONSE'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(684041412302763151)
,p_query_column_id=>6
,p_column_alias=>'DOCUMENTID'
,p_column_display_sequence=>60
,p_column_heading=>'Document Id'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(684041761724763151)
,p_query_column_id=>7
,p_column_alias=>'INDEX_ID'
,p_column_display_sequence=>50
,p_column_heading=>'Index Id'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(684042151401763152)
,p_query_column_id=>8
,p_column_alias=>'SCORE'
,p_column_display_sequence=>70
,p_column_heading=>'Score'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(684042582625763153)
,p_query_column_id=>9
,p_column_alias=>'CONTENT'
,p_column_display_sequence=>80
,p_column_heading=>'Content'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(714510437544833831)
,p_name=>'Show SQL'
,p_title=>'SQL Used in Search'
,p_template=>4072358936313175081
,p_display_sequence=>80
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select showsql',
'  from prompts',
' where id=:P6_PROMPT_ID'))
,p_display_when_condition=>'P6_AI_SERVICE'
,p_display_when_cond2=>'Select AI'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(684043392395763155)
,p_query_column_id=>1
,p_column_alias=>'SHOWSQL'
,p_column_display_sequence=>10
,p_column_heading=>'Showsql'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(721707216073388202)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(684135560487772350)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(721707902911388799)
,p_plug_name=>'LLM Conversation'
,p_title=>'Conversation'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>40
,p_query_type=>'TABLE'
,p_query_table=>'PROMPTS'
,p_query_where=>'conv_id=:P6_CONV_ID'
,p_query_order_by_type=>'STATIC'
,p_query_order_by=>'asked_on desc'
,p_include_rowid_column=>false
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_LLM_CONVERSATION'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_plug_query_no_data_found=>'<p style="font-size: 24px;">Welcome to the conversation!  Select a domain, a key word, and then ask a question.</p>'
,p_show_total_row_count=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'AI_SERVICE', 'AI_SERVICE',
  'DOMAIN', 'DOMAIN',
  'ID', 'ID',
  'PROMPT', 'PROMPT',
  'RESPONSE', 'RESPONSE')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(718349654900511028)
,p_name=>'CHATHISTORY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CHATHISTORY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>100
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_required_patch=>wwv_flow_imp.id(684134921705772332)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(718349776648511029)
,p_name=>'REFERENCES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REFERENCES'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>110
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_required_patch=>wwv_flow_imp.id(684134921705772332)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(718349832093511030)
,p_name=>'REQUEST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REQUEST'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>120
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_required_patch=>wwv_flow_imp.id(684134921705772332)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(718349956908511031)
,p_name=>'OUTPUT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OUTPUT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>130
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_required_patch=>wwv_flow_imp.id(684134921705772332)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(718350034042511032)
,p_name=>'CITATIONS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CITATIONS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>140
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_required_patch=>wwv_flow_imp.id(684134921705772332)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(718350119351511033)
,p_name=>'DOCUMENTS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCUMENTS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>150
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_required_patch=>wwv_flow_imp.id(684134921705772332)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(718350216111511034)
,p_name=>'DOCUMENTS4RERANK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCUMENTS4RERANK'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>160
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_required_patch=>wwv_flow_imp.id(684134921705772332)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(718350319947511035)
,p_name=>'DOCUMENTSRERANKED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCUMENTSRERANKED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>170
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_required_patch=>wwv_flow_imp.id(684134921705772332)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(718350418523511036)
,p_name=>'SHOWSQL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHOWSQL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>180
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_required_patch=>wwv_flow_imp.id(684134921705772332)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(718350580030511037)
,p_name=>'AI_SERVICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AI_SERVICE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>190
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(718350627318511038)
,p_name=>'DOMAIN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOMAIN'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>200
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(721708114500388801)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(721710929118388829)
,p_name=>'CONV_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CONV_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>40
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(721711033628388830)
,p_name=>'PROMPT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROMPT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>50
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(721711067774388831)
,p_name=>'RESPONSE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RESPONSE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>70
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(721711196294388832)
,p_name=>'ASKED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ASKED_ON'
,p_data_type=>'TIMESTAMP'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>90
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(721711494799388835)
,p_plug_name=>'Footer'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>1569994581593435632
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_05'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(724493680539079233)
,p_name=>'CITATIONS'
,p_title=>'Citations'
,p_template=>4072358936313175081
,p_display_sequence=>110
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'DOC_CITATIONS_V'
,p_query_where=>'prompt_id=:P6_PROMPT_ID'
,p_query_order_by_type=>'STATIC'
,p_query_order_by=>'documentids desc'
,p_include_rowid_column=>false
,p_display_when_condition=>'P6_AI_SERVICE'
,p_display_when_cond2=>'Vector Search'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(684053771834763193)
,p_query_column_id=>1
,p_column_alias=>'FILE_NAME'
,p_column_display_sequence=>70
,p_column_heading=>'File Name'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(684054167622763194)
,p_query_column_id=>2
,p_column_alias=>'PROMPT_ID'
,p_column_display_sequence=>120
,p_column_heading=>'Prompt Id'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_imp.id(684134921705772332)
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(684054622813763194)
,p_query_column_id=>3
,p_column_alias=>'CONV_ID'
,p_column_display_sequence=>30
,p_column_heading=>'Conv Id'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_imp.id(684134921705772332)
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(684055029591763195)
,p_query_column_id=>4
,p_column_alias=>'ASKED_ON'
,p_column_display_sequence=>40
,p_column_heading=>'Asked On'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_imp.id(684134921705772332)
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(684055392152763196)
,p_query_column_id=>5
,p_column_alias=>'PROMPT'
,p_column_display_sequence=>50
,p_column_heading=>'Prompt'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_imp.id(684134921705772332)
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(684055799823763197)
,p_query_column_id=>6
,p_column_alias=>'RESPONSE'
,p_column_display_sequence=>60
,p_column_heading=>'Response'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_imp.id(684134921705772332)
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(684056223868763198)
,p_query_column_id=>7
,p_column_alias=>'CITATION_STARTPOINT'
,p_column_display_sequence=>90
,p_column_heading=>'Citation Startpoint'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(684056617753763199)
,p_query_column_id=>8
,p_column_alias=>'CITATION_ENDPOINT'
,p_column_display_sequence=>100
,p_column_heading=>'Citation Endpoint'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(684057003545763199)
,p_query_column_id=>9
,p_column_alias=>'CITATION_TEXT'
,p_column_display_sequence=>110
,p_column_heading=>'Citation Text'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(684057342914763200)
,p_query_column_id=>10
,p_column_alias=>'DOCUMENTIDS'
,p_column_display_sequence=>80
,p_column_heading=>'Document Ids'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(684044164733763159)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(721707216073388202)
,p_button_name=>'Submit'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'SMART_FILTERS'
,p_button_css_classes=>'u-color-1'
,p_icon_css_classes=>'fa-send-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(684044560045763161)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(721707216073388202)
,p_button_name=>'create_new_conversation'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create New Conversation'
,p_button_position=>'SMART_FILTERS'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-1'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(672839312364685765)
,p_name=>'P6_CONTAINS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(721707216073388202)
,p_item_display_point=>'SMART_FILTERS'
,p_prompt=>'Enter Keyword Filter'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:t-Form-fieldContainer--boldDisplay'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(714514556247833882)
,p_name=>'P6_SELECT_DOMAIN'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(721707216073388202)
,p_item_display_point=>'SMART_FILTERS'
,p_prompt=>'Select Domain'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select domain_name||'' - ''||domain_description s, domain_name r ',
'from domains ',
'where ai_service = ''Vector Search'''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:t-Form-fieldContainer--boldDisplay'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(714529272863833948)
,p_name=>'P6_SHOWSQL'
,p_item_sequence=>50
,p_use_cache_before_default=>'NO'
,p_source=>'select showsql from prompts where id = :P6_PROMPT_ID;'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(714529302281833949)
,p_name=>'P6_AI_SERVICE'
,p_item_sequence=>60
,p_use_cache_before_default=>'NO'
,p_source=>'select ai_service from prompts where id = :P6_PROMPT_ID;'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(714530817109833964)
,p_name=>'P6_CONV_PROMPT_IDS'
,p_item_sequence=>120
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Conversation ID: ''||c.id||''       Prompt ID: ''||p.id from ',
'(select max(id) id from conversations where app_session=:APP_SESSION) c,',
'(select conv_id, max(id) id from prompts group by conv_id) p',
'where c.id = p.conv_id;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(721555811562021201)
,p_name=>'P6_CONV_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(721707216073388202)
,p_item_display_point=>'SMART_FILTERS'
,p_use_cache_before_default=>'NO'
,p_source=>'select max(id) from conversations where app_session=:APP_SESSION'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(721718509157388915)
,p_name=>'P6_PROMPT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(721707216073388202)
,p_item_display_point=>'SMART_FILTERS'
,p_prompt=>'Enter Prompt'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:t-Form-fieldContainer--boldDisplay'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(721732110181388970)
,p_name=>'P6_REFERENCES'
,p_item_sequence=>70
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select references from prompts ',
'where id = (select max(id) from doc_citations_v where conv_id=(select max(id) from conversations where app_session=:APP_SESSION))'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(724501727593079323)
,p_name=>'P6_PROMPT_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(721707216073388202)
,p_item_display_point=>'SMART_FILTERS'
,p_use_cache_before_default=>'NO'
,p_item_default=>'select max(id) from prompts where conv_id=(select max(id) from conversations where app_session=:APP_SESSION)'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(684061913035763227)
,p_name=>'create_conversation'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(684044560045763161)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(684062437935763230)
,p_event_id=>wwv_flow_imp.id(684061913035763227)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'chathistory_pkg.prc_add_conversation(:APP_USER, SYSTIMESTAMP, :APP_SESSION);'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(684062885726763231)
,p_event_id=>wwv_flow_imp.id(684061913035763227)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Clear state'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P6_PROMPT,P6_REFERENCES'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(684063359514763232)
,p_event_id=>wwv_flow_imp.id(684061913035763227)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(684059488627763219)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Invoke API'
,p_attribute_01=>'PLSQL_PROCEDURE_FUNCTION'
,p_attribute_05=>'GEN_AI_CHAT_DOCUMENTS_SEARCH'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(684044164733763159)
,p_internal_uid=>48217745747856570
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(672839361374685766)
,p_page_process_id=>wwv_flow_imp.id(684059488627763219)
,p_page_id=>6
,p_name=>'p_contains'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>40
,p_value_type=>'ITEM'
,p_value=>'P6_CONTAINS'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(684059952000763222)
,p_page_process_id=>wwv_flow_imp.id(684059488627763219)
,p_page_id=>6
,p_name=>'p_session_id'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>true
,p_display_sequence=>50
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>':APP_SESSION'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(684060484553763224)
,p_page_process_id=>wwv_flow_imp.id(684059488627763219)
,p_page_id=>6
,p_name=>'p_domain'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>30
,p_value_type=>'ITEM'
,p_value=>'P6_SELECT_DOMAIN'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(684060949934763224)
,p_page_process_id=>wwv_flow_imp.id(684059488627763219)
,p_page_id=>6
,p_direction=>'OUT'
,p_data_type=>'CLOB'
,p_ignore_output=>false
,p_display_sequence=>10
,p_value_type=>'ITEM'
,p_value=>'P6_REFERENCES'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(684061462512763226)
,p_page_process_id=>wwv_flow_imp.id(684059488627763219)
,p_page_id=>6
,p_name=>'p_ai_message'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>20
,p_value_type=>'ITEM'
,p_value=>'P6_PROMPT'
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_imp_page.create_page(
 p_id=>7
,p_name=>'Domains'
,p_alias=>'DOMAINS'
,p_step_title=>'Domains'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(670180785764035798)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(684135560487772350)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(670181530116035802)
,p_plug_name=>'Domains'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_query_type=>'TABLE'
,p_query_table=>'DOMAINS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_prn_page_header=>'Domains'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(574845330118436984)
,p_name=>'AI_PROFILE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AI_PROFILE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Ai Profile'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(670182846751035815)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(670183327686035817)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(670184277608035824)
,p_name=>'DOMAIN_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOMAIN_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Domain Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(670185322249035828)
,p_name=>'AI_SERVICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AI_SERVICE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Ai Service'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(670186323029035832)
,p_name=>'DOMAIN_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOMAIN_DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Domain Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(670182063911035804)
,p_internal_uid=>24943994885792436
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(670182372690035807)
,p_interactive_grid_id=>wwv_flow_imp.id(670182063911035804)
,p_static_id=>'249444'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(670182640488035808)
,p_report_id=>wwv_flow_imp.id(670182372690035807)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(574851351623438338)
,p_view_id=>wwv_flow_imp.id(670182640488035808)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(574845330118436984)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>806.0137080078125
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(670183673249035820)
,p_view_id=>wwv_flow_imp.id(670182640488035808)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(670183327686035817)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(670184707312035826)
,p_view_id=>wwv_flow_imp.id(670182640488035808)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(670184277608035824)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>161.19400000000002
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(670185740921035830)
,p_view_id=>wwv_flow_imp.id(670182640488035808)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(670185322249035828)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>140.177
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(670186692225035833)
,p_view_id=>wwv_flow_imp.id(670182640488035808)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(670186323029035832)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>710.615
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(670187333727035837)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(670181530116035802)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Domains - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>24949264701792469
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_imp_page.create_page(
 p_id=>8
,p_name=>'Hybrid Search'
,p_alias=>'HYBRID-SEARCH'
,p_step_title=>'Hybrid Search'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(692838733435723163)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(684135560487772350)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(692839379790723176)
,p_name=>'Hybrid Search'
,p_template=>4072358936313175081
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_grid_column_span=>3
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select h.id',
'    , h.file_name',
'    , v.vector_score',
'    , v.text_score',
'from documents_hybrid_search h',
'    , (select d.id',
'        , d.vector_score',
'        , d.text_score',
'        from',
'        (select dbms_hybrid_vector.search(',
'    json(',
'      ''{',
'         "hybrid_index_name" : "documents_hybrid_search_idx",',
'         "search_scorer"     : "rsf",',
'         "search_fusion"     : "UNION",',
'         "vector":',
'          {',
'             "search_text"   : "''||:P8_VECTOR_SEARCH||''",',
'             "search_mode"   : "DOCUMENT",',
'             "aggregator"    : "MAX",',
'             "score_weight"  : 1,',
'             "rank_penalty"  : 5',
'          },',
'         "text":',
'          {',
'             "contains"      : "''||:P8_TEXT_CONTAINS||''",',
'             "score_weight"  : 10,',
'             "rank_penalty"  : 1',
'          },',
'         "return":',
'          {',
'             "values"        : [ "rowid", "score", "vector_score", "text_score" ],',
'             "topN"          : 3',
'',
'                }',
'            }''',
'            )) data) j,',
'        json_table ( j.data, ''$[*]''',
'            columns (',
'                id varchar2(100) path ''$."rowid"'',',
'                vector_score number path ''$."vector_score"'',',
'                text_score number path ''$."text_score"''',
'                        )',
'                    )',
'                d) v',
'where h.rowid = v.id',
'order by v.text_score desc, v.vector_score desc'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(692839757323723180)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'Id'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(692840214436723182)
,p_query_column_id=>2
,p_column_alias=>'FILE_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'File Name'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(692840606903723183)
,p_query_column_id=>3
,p_column_alias=>'VECTOR_SCORE'
,p_column_display_sequence=>3
,p_column_heading=>'Vector Score'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(692841025289723184)
,p_query_column_id=>4
,p_column_alias=>'TEXT_SCORE'
,p_column_display_sequence=>4
,p_column_heading=>'Text Score'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(672839712976685769)
,p_button_sequence=>30
,p_button_name=>'SEARCH_DOCUMENTS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Search Documents'
,p_button_css_classes=>'u-color-1'
,p_icon_css_classes=>'fa-send-o'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(672839456583685767)
,p_name=>'P8_TEXT_CONTAINS'
,p_item_sequence=>20
,p_item_default=>'Enter keyword(s) here separated by commas'
,p_prompt=>'Text Contains'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(672839549341685768)
,p_name=>'P8_VECTOR_SEARCH'
,p_item_sequence=>10
,p_item_default=>'Enter vector search term here'
,p_prompt=>'Vector Search'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_imp_page.create_page(
 p_id=>9
,p_name=>'List Objects'
,p_alias=>'LIST-OBJECTS'
,p_step_title=>'List Objects'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2526643373347724467
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(214314137950843216)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(684135560487772350)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(214314878579843206)
,p_name=>'List Objects'
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(214312603154848942)
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P9_BUCKET_SEARCH'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(214315241120843199)
,p_query_column_id=>1
,p_column_alias=>'NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Name'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(214317146822831808)
,p_query_column_id=>2
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>11
,p_column_heading=>'Download File'
,p_column_link=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.::P18_OBJECT_NAME:#NAME#'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-download fa-lg"></span>'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(214317227838831809)
,p_query_column_id=>3
,p_column_alias=>'DERIVED$02'
,p_column_display_sequence=>21
,p_column_heading=>'Delete File'
,p_column_link=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.::P21_OBJECT_NAME:#NAME#'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-trash-o fa-lg"></span>'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(214315700079843195)
,p_page_id=>9
,p_web_src_param_id=>wwv_flow_imp.id(214313111454848939)
,p_page_plug_id=>wwv_flow_imp.id(214314878579843206)
,p_value_type=>'ITEM'
,p_value=>'P9_BUCKET_SEARCH'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(214316469518831801)
,p_plug_name=>'Bucket Search'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_02'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(214317540062831812)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(214314878579843206)
,p_button_name=>'Upload_File'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Upload File'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(214316540345831802)
,p_name=>'P9_COMPARTMENT_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(214316469518831801)
,p_item_default=>'ocid1.compartment.oc1..aaaaaaaak6srivkkpg3uhv7fst2nfkoqsqpyrtzvuscy7b7lgrt3imrpp4fq'
,p_prompt=>'Compartment Search'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LIST COMPARTMENTS IN TENANCY'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(214316601742831803)
,p_name=>'P9_BUCKET_SEARCH'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(214316469518831801)
,p_item_default=>'vector'
,p_prompt=>'- Select Bucket -'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LIST BUCKETS IN COMPARTMENT'
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P9_COMPARTMENT_SEARCH'
,p_ajax_items_to_submit=>'P9_COMPARTMENT_SEARCH'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(214316782027831804)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9_BUCKET_SEARCH'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(214316872049831805)
,p_event_id=>wwv_flow_imp.id(214316782027831804)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(214314878579843206)
,p_attribute_01=>'N'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P9_BUCKET_SEARCH'
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_imp_page.create_page(
 p_id=>10
,p_name=>'Global Search'
,p_alias=>'GLOBAL-SEARCH'
,p_step_title=>'Global Search'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(649638521083118010)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(684135560487772350)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(655637936514234551)
,p_name=>'Document Search'
,p_title=>'Document Search'
,p_template=>4072358936313175081
,p_display_sequence=>70
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.score, d.file_name, v.chunk_txt',
'from documents d, document_vector v,',
'(SELECT SCORE(1) score, json_value(a.key,''$.ID'' returning number) key',
'from global_idx a WHERE CONTAINS(a.data, :P10_SEARCH, 1) > 0 and a.source=''DOCUMENTS'') s',
'where d.id = s.key',
'and d.id = v.id',
'and instr(lower(v.chunk_txt),lower(:P10_SEARCH))>0',
'order by s.score desc;'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(672838772913685760)
,p_query_column_id=>1
,p_column_alias=>'SCORE'
,p_column_display_sequence=>10
,p_column_heading=>'Score'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(655641507921234587)
,p_query_column_id=>2
,p_column_alias=>'FILE_NAME'
,p_column_display_sequence=>20
,p_column_heading=>'File Name'
,p_column_hit_highlight=>'&P10_SEARCH.'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(672838931564685761)
,p_query_column_id=>3
,p_column_alias=>'CHUNK_TXT'
,p_column_display_sequence=>30
,p_column_heading=>'Chunk Txt'
,p_column_hit_highlight=>'&P10_SEARCH.'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(655642164336234594)
,p_name=>'School Search'
,p_title=>'School Search'
,p_template=>4072358936313175081
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.score ',
'    , p.school_name',
'    , p.neighborhood',
'    , p.interest',
'    , p.method',
'    , p.total_students',
'    , p.graduation_rate',
'    , p.attendance_rate',
'    , p.college_career_rate',
'    , p.safe',
'    , p.seats',
'    , p.applicants',
'    , p.latitude',
'    , p.longitude',
'    , p.language_classes',
'    , p.advanced_placement_courses',
'    , p.school_sports',
'    , p.overview_paragraph',
'    , p.academic_opportunities',
'    , p.advancedplacement_courses',
'    , p.extracurricular_activities',
'    , p.psal_sports_boys',
'    , p.psal_sports_girls',
'    , p.addtl_info1',
'from highschools p,',
'(SELECT SCORE(1) score, json_value(a.key,''$.ID_1'' returning number) key',
'from global_idx a WHERE CONTAINS(a.data, :P10_SEARCH, 1) > 0 and a.source = ''HIGHSCHOOLS'') s',
'where p.id_1 = s.key',
'order by s.score desc;',
'      '))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(670840084779332269)
,p_query_column_id=>1
,p_column_alias=>'SCORE'
,p_column_display_sequence=>10
,p_column_heading=>'Score'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(608843729166802048)
,p_query_column_id=>2
,p_column_alias=>'SCHOOL_NAME'
,p_column_display_sequence=>50
,p_column_heading=>'School Name'
,p_column_css_style=>'white-space:nowrap;'
,p_column_hit_highlight=>'&P10_SEARCH.'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(608843846286802049)
,p_query_column_id=>3
,p_column_alias=>'NEIGHBORHOOD'
,p_column_display_sequence=>60
,p_column_heading=>'Neighborhood'
,p_column_css_style=>'white-space:nowrap;'
,p_column_hit_highlight=>'&P10_SEARCH.'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(608843963394802050)
,p_query_column_id=>4
,p_column_alias=>'INTEREST'
,p_column_display_sequence=>70
,p_column_heading=>'Interest'
,p_column_css_style=>'white-space:nowrap;'
,p_column_hit_highlight=>'&P10_SEARCH.'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(608843968397802051)
,p_query_column_id=>5
,p_column_alias=>'METHOD'
,p_column_display_sequence=>80
,p_column_heading=>'Method'
,p_column_css_style=>'white-space:nowrap;'
,p_column_hit_highlight=>'&P10_SEARCH.'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(608844071147802052)
,p_query_column_id=>6
,p_column_alias=>'TOTAL_STUDENTS'
,p_column_display_sequence=>90
,p_column_heading=>'Total Students'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(608844239024802053)
,p_query_column_id=>7
,p_column_alias=>'GRADUATION_RATE'
,p_column_display_sequence=>100
,p_column_heading=>'Graduation Rate'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(608844343524802054)
,p_query_column_id=>8
,p_column_alias=>'ATTENDANCE_RATE'
,p_column_display_sequence=>110
,p_column_heading=>'Attendance Rate'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(608844403271802055)
,p_query_column_id=>9
,p_column_alias=>'COLLEGE_CAREER_RATE'
,p_column_display_sequence=>120
,p_column_heading=>'College Career Rate'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(608844518116802056)
,p_query_column_id=>10
,p_column_alias=>'SAFE'
,p_column_display_sequence=>130
,p_column_heading=>'Safe'
,p_column_css_style=>'white-space:nowrap;'
,p_column_hit_highlight=>'&P10_SEARCH.'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(608844607038802057)
,p_query_column_id=>11
,p_column_alias=>'SEATS'
,p_column_display_sequence=>140
,p_column_heading=>'Seats'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(608844734367802058)
,p_query_column_id=>12
,p_column_alias=>'APPLICANTS'
,p_column_display_sequence=>150
,p_column_heading=>'Applicants'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(608844905724802060)
,p_query_column_id=>13
,p_column_alias=>'LATITUDE'
,p_column_display_sequence=>170
,p_column_heading=>'Latitude'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(608844975021802061)
,p_query_column_id=>14
,p_column_alias=>'LONGITUDE'
,p_column_display_sequence=>180
,p_column_heading=>'Longitude'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(608845104560802062)
,p_query_column_id=>15
,p_column_alias=>'LANGUAGE_CLASSES'
,p_column_display_sequence=>190
,p_column_heading=>'Language Classes'
,p_column_css_style=>'white-space:nowrap;'
,p_column_hit_highlight=>'&P10_SEARCH.'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(608845184468802063)
,p_query_column_id=>16
,p_column_alias=>'ADVANCED_PLACEMENT_COURSES'
,p_column_display_sequence=>200
,p_column_heading=>'Advanced Placement Courses'
,p_column_css_style=>'white-space:nowrap;'
,p_column_hit_highlight=>'&P10_SEARCH.'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(608845342773802064)
,p_query_column_id=>17
,p_column_alias=>'SCHOOL_SPORTS'
,p_column_display_sequence=>210
,p_column_heading=>'School Sports'
,p_column_css_style=>'white-space:nowrap;'
,p_column_hit_highlight=>'&P10_SEARCH.'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(608845497435802066)
,p_query_column_id=>18
,p_column_alias=>'OVERVIEW_PARAGRAPH'
,p_column_display_sequence=>230
,p_column_heading=>'Overview Paragraph'
,p_column_css_style=>'white-space:nowrap;'
,p_column_hit_highlight=>'&P10_SEARCH.'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(608845641067802067)
,p_query_column_id=>19
,p_column_alias=>'ACADEMIC_OPPORTUNITIES'
,p_column_display_sequence=>240
,p_column_heading=>'Academic Opportunities'
,p_column_css_style=>'white-space:nowrap;'
,p_column_hit_highlight=>'&P10_SEARCH.'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(608845756139802068)
,p_query_column_id=>20
,p_column_alias=>'ADVANCEDPLACEMENT_COURSES'
,p_column_display_sequence=>250
,p_column_heading=>'Advancedplacement Courses'
,p_column_css_style=>'white-space:nowrap;'
,p_column_hit_highlight=>'&P10_SEARCH.'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(608845917853802070)
,p_query_column_id=>21
,p_column_alias=>'EXTRACURRICULAR_ACTIVITIES'
,p_column_display_sequence=>270
,p_column_heading=>'Extracurricular Activities'
,p_column_css_style=>'white-space:nowrap;'
,p_column_hit_highlight=>'&P10_SEARCH.'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(608845974310802071)
,p_query_column_id=>22
,p_column_alias=>'PSAL_SPORTS_BOYS'
,p_column_display_sequence=>280
,p_column_heading=>'Psal Sports Boys'
,p_column_css_style=>'white-space:nowrap;'
,p_column_hit_highlight=>'&P10_SEARCH.'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(608846158524802072)
,p_query_column_id=>23
,p_column_alias=>'PSAL_SPORTS_GIRLS'
,p_column_display_sequence=>290
,p_column_heading=>'Psal Sports Girls'
,p_column_css_style=>'white-space:nowrap;'
,p_column_hit_highlight=>'&P10_SEARCH.'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(608846238870802073)
,p_query_column_id=>24
,p_column_alias=>'ADDTL_INFO1'
,p_column_display_sequence=>300
,p_column_heading=>'Addtl Info1'
,p_column_css_style=>'white-space:nowrap;'
,p_column_hit_highlight=>'&P10_SEARCH.'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(670838600186332254)
,p_name=>'Movie Search'
,p_title=>'Movie Search'
,p_template=>4072358936313175081
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.score, m.*',
'from movies m,',
'(SELECT SCORE(1) score, json_value(a.key,''$.MOVIE_ID'' returning number) key',
'from global_idx a WHERE CONTAINS(a.data, :P10_SEARCH, 1) > 0 and a.source=''MOVIES'') s',
'where m.movie_id = s.key',
'order by s.score desc;'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(672838269667685755)
,p_query_column_id=>1
,p_column_alias=>'SCORE'
,p_column_display_sequence=>20
,p_column_heading=>'Score'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(670838674220332255)
,p_query_column_id=>2
,p_column_alias=>'MOVIE_ID'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(670838789275332256)
,p_query_column_id=>3
,p_column_alias=>'TITLE'
,p_column_display_sequence=>30
,p_column_heading=>'Title'
,p_column_css_style=>'white-space:nowrap;'
,p_column_hit_highlight=>'&P10_SEARCH.'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(670838861273332257)
,p_query_column_id=>4
,p_column_alias=>'BUDGET'
,p_column_display_sequence=>40
,p_column_heading=>'Budget'
,p_column_hit_highlight=>'&P10_SEARCH.'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(670838950131332258)
,p_query_column_id=>5
,p_column_alias=>'GROSS'
,p_column_display_sequence=>50
,p_column_heading=>'Gross'
,p_column_hit_highlight=>'&P10_SEARCH.'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(670839130768332259)
,p_query_column_id=>6
,p_column_alias=>'LIST_PRICE'
,p_column_display_sequence=>60
,p_column_heading=>'List Price'
,p_column_hit_highlight=>'&P10_SEARCH.'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(670839237340332260)
,p_query_column_id=>7
,p_column_alias=>'YEAR'
,p_column_display_sequence=>70
,p_column_heading=>'Year'
,p_column_hit_highlight=>'&P10_SEARCH.'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(670839309838332261)
,p_query_column_id=>8
,p_column_alias=>'OPENING_DATE'
,p_column_display_sequence=>80
,p_column_heading=>'Opening Date'
,p_column_hit_highlight=>'&P10_SEARCH.'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(670839442583332262)
,p_query_column_id=>9
,p_column_alias=>'CREW'
,p_column_display_sequence=>90
,p_column_heading=>'Crew'
,p_column_css_style=>'white-space:nowrap;'
,p_column_hit_highlight=>'&P10_SEARCH.'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(670839446702332263)
,p_query_column_id=>10
,p_column_alias=>'STUDIO'
,p_column_display_sequence=>100
,p_column_heading=>'Studio'
,p_column_css_style=>'white-space:nowrap;'
,p_column_hit_highlight=>'&P10_SEARCH.'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(670839557414332264)
,p_query_column_id=>11
,p_column_alias=>'MAIN_SUBJECT'
,p_column_display_sequence=>110
,p_column_heading=>'Main Subject'
,p_column_css_style=>'white-space:nowrap;'
,p_column_hit_highlight=>'&P10_SEARCH.'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(670839687593332265)
,p_query_column_id=>12
,p_column_alias=>'AWARDS'
,p_column_display_sequence=>120
,p_column_heading=>'Awards'
,p_column_css_style=>'white-space:nowrap;'
,p_column_hit_highlight=>'&P10_SEARCH.'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(670839807817332266)
,p_query_column_id=>13
,p_column_alias=>'NOMINATIONS'
,p_column_display_sequence=>130
,p_column_heading=>'Nominations'
,p_column_css_style=>'white-space:nowrap;'
,p_column_hit_highlight=>'&P10_SEARCH.'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(670839929405332267)
,p_query_column_id=>14
,p_column_alias=>'RUNTIME'
,p_column_display_sequence=>140
,p_column_heading=>'Runtime'
,p_column_css_style=>'white-space:nowrap;'
,p_column_hit_highlight=>'&P10_SEARCH.'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(670840016087332268)
,p_query_column_id=>15
,p_column_alias=>'SUMMARY'
,p_column_display_sequence=>150
,p_column_heading=>'Summary'
,p_column_css_style=>'white-space:nowrap;'
,p_column_hit_highlight=>'&P10_SEARCH.'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(664637860807543028)
,p_button_sequence=>20
,p_button_name=>'Submit'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_css_classes=>'u-color-1'
,p_icon_css_classes=>'fa-send-o'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(655637790506234550)
,p_name=>'P10_SEARCH'
,p_is_required=>true
,p_item_sequence=>10
,p_item_default=>'''Enter Word Search String'''
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Search'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Enter a search string.  The search will be case insensitive.  Results will be scored with the ratio of frequency of the string within a document high relative to the frequency across all documents.  (ie: high frequency within a document without the s'
||'tring appearing in any other document produces high score).  <a href="https://docs.oracle.com/en/database/oracle/oracle-database/23/ccref/oracle-text-scoring-algorithm.html#GUID-933F9B45-40EE-4ABF-992A-EF7E4E6C78E6">See this for more information</a>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_imp_page.create_page(
 p_id=>11
,p_name=>'Run Agent Team'
,p_alias=>'RUN_AGENT_TEAM'
,p_step_title=>'Run Agent Team'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'27'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(917410775004856311)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(684135560487772350)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(945972044039978403)
,p_plug_name=>'LLM Conversation'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'PROMPTS'
,p_query_where=>'conv_id=:P11_CONV_ID'
,p_query_order_by_type=>'STATIC'
,p_query_order_by=>'asked_on desc'
,p_include_rowid_column=>false
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_LLM_CONVERSATION'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_plug_query_no_data_found=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p style="font-size: 24px;">Welcome to AI Agents!  Select an agent team and make a request.</p>',
''))
,p_show_total_row_count=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'AI_SERVICE', 'AI_SERVICE',
  'DOMAIN', 'DOMAIN',
  'ID', 'ID',
  'PROMPT', 'PROMPT',
  'RESPONSE', 'RESPONSE')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(924786990834626899)
,p_name=>'CHATHISTORY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CHATHISTORY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>70
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_required_patch=>wwv_flow_imp.id(684134921705772332)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(924787122631626900)
,p_name=>'REFERENCES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REFERENCES'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>80
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_required_patch=>wwv_flow_imp.id(684134921705772332)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(924787221542626901)
,p_name=>'REQUEST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REQUEST'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>90
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_required_patch=>wwv_flow_imp.id(684134921705772332)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(924787317079626902)
,p_name=>'OUTPUT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OUTPUT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>100
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_required_patch=>wwv_flow_imp.id(684134921705772332)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(924787384893626903)
,p_name=>'CITATIONS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CITATIONS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>110
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_required_patch=>wwv_flow_imp.id(684134921705772332)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(924787500927626904)
,p_name=>'DOCUMENTS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCUMENTS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>120
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_required_patch=>wwv_flow_imp.id(684134921705772332)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(924787607344626905)
,p_name=>'DOCUMENTS4RERANK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCUMENTS4RERANK'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>130
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_required_patch=>wwv_flow_imp.id(684134921705772332)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(924787779386626906)
,p_name=>'DOCUMENTSRERANKED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCUMENTSRERANKED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>140
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_required_patch=>wwv_flow_imp.id(684134921705772332)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(924787812782626907)
,p_name=>'SHOWSQL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHOWSQL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>150
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_required_patch=>wwv_flow_imp.id(684134921705772332)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(924787920892626908)
,p_name=>'AI_SERVICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AI_SERVICE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>160
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(924787986876626909)
,p_name=>'DOMAIN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOMAIN'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>170
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(945972255628978405)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(945975070246978433)
,p_name=>'CONV_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CONV_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(945975174756978434)
,p_name=>'PROMPT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROMPT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>40
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(945975208902978435)
,p_name=>'RESPONSE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RESPONSE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>50
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(945975337422978436)
,p_name=>'ASKED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ASKED_ON'
,p_data_type=>'TIMESTAMP'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>60
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(945975635927978439)
,p_plug_name=>'Footer'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>1569994581593435632
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_05'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(251099266483878876)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(917410775004856311)
,p_button_name=>'Submit'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'SMART_FILTERS'
,p_button_css_classes=>'u-color-1'
,p_icon_css_classes=>'fa-send-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(251099636652878874)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(917410775004856311)
,p_button_name=>'create_new_conversation'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create New Conversation'
,p_button_position=>'SMART_FILTERS'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-1'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(220585852293292436)
,p_branch_name=>'Go To Page 11'
,p_branch_action=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(220584703967292425)
,p_name=>'P11_SQL_PROMPT_CONV_IDS'
,p_item_sequence=>50
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Conversation ID: ''||c.conversation_id||''       Prompt ID: ''||p.id from ',
'(select id, conversation_id from conversations where id = (select max(id) id from conversations where app_session=:APP_SESSION)) c,',
'(select conv_id, max(id) id from prompts group by conv_id) p',
'where c.id = p.conv_id(+);'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(220585554237292433)
,p_name=>'P11_CONVERSATION_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(917410775004856311)
,p_item_display_point=>'SMART_FILTERS'
,p_use_cache_before_default=>'NO'
,p_item_default=>'select conversation_id from conversations where id = (select max(id) from conversations where app_session=:APP_SESSION)'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(733542928586374341)
,p_name=>'P11_RESULT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(917410775004856311)
,p_item_display_point=>'SMART_FILTERS'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(938775079459423391)
,p_name=>'P11_SELECT_AGENT_TEAM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(917410775004856311)
,p_item_display_point=>'SMART_FILTERS'
,p_item_default=>'P11_SELECT_AGENT_TEAM'
,p_item_default_type=>'ITEM'
,p_prompt=>'Select Agent Team'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'select agent_name from agents'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(945829605383610816)
,p_name=>'P11_CONV_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(917410775004856311)
,p_item_display_point=>'SMART_FILTERS'
,p_use_cache_before_default=>'NO'
,p_source=>'select max(id) from conversations where app_session=:APP_SESSION'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(945979032368978424)
,p_name=>'P11_PROMPT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(917410775004856311)
,p_item_display_point=>'SMART_FILTERS'
,p_prompt=>'Prompt'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'Y',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(948775521414668938)
,p_name=>'P11_PROMPT_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(917410775004856311)
,p_item_display_point=>'SMART_FILTERS'
,p_use_cache_before_default=>'NO'
,p_item_default=>'select max(id) from prompts where conv_id=(select max(id) from conversations where app_session=:APP_SESSION)'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(251111836169878815)
,p_name=>'create_conversation'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(251099636652878874)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(251112323590878812)
,p_event_id=>wwv_flow_imp.id(251111836169878815)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'chathistory_pkg.prc_add_conversation(:APP_USER, SYSTIMESTAMP, :APP_SESSION);'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(251112839456878811)
,p_event_id=>wwv_flow_imp.id(251111836169878815)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Clear state'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P11_PROMPT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(251113326174878810)
,p_event_id=>wwv_flow_imp.id(251111836169878815)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(251109494242878824)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Invoke API'
,p_attribute_01=>'PLSQL_PROCEDURE_FUNCTION'
,p_attribute_05=>'RUN_TEAM'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(251099266483878876)
,p_internal_uid=>251109494242878824
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(220585056888292428)
,p_page_process_id=>wwv_flow_imp.id(251109494242878824)
,p_page_id=>11
,p_name=>'p_team_name'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>20
,p_value_type=>'ITEM'
,p_value=>'P11_SELECT_AGENT_TEAM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(220585183163292429)
,p_page_process_id=>wwv_flow_imp.id(251109494242878824)
,p_page_id=>11
,p_name=>'p_user_prompt'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>30
,p_value_type=>'ITEM'
,p_value=>'P11_PROMPT'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(220585373491292431)
,p_page_process_id=>wwv_flow_imp.id(251109494242878824)
,p_page_id=>11
,p_name=>'p_session_id'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>true
,p_display_sequence=>50
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>':APP_SESSION'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(220585925575292437)
,p_page_process_id=>wwv_flow_imp.id(251109494242878824)
,p_page_id=>11
,p_direction=>'OUT'
,p_data_type=>'CLOB'
,p_ignore_output=>false
,p_display_sequence=>60
,p_value_type=>'ITEM'
,p_value=>'P11_RESULT'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(220585693782292434)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Items'
,p_attribute_01=>'CLEAR_CACHE_FOR_ITEMS'
,p_attribute_03=>'P11_PROMPT'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>220585693782292434
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_imp_page.create_page(
 p_id=>12
,p_name=>'Search Across Documents'
,p_alias=>'LLM-CONVERSATION'
,p_step_title=>'Search Across Documents'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'27'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(664375796620887983)
,p_name=>'Document References'
,p_title=>'Documents and Document Chunks'
,p_template=>4072358936313175081
,p_display_sequence=>90
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select references',
'  from prompts',
' where id=:P12_PROMPT_ID'))
,p_display_when_condition=>'P12_AI_SERVICE'
,p_display_when_cond2=>'Vector Search'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(666314283479977399)
,p_query_column_id=>1
,p_column_alias=>'REFERENCES'
,p_column_display_sequence=>10
,p_column_heading=>'References'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(666312984346977386)
,p_name=>'DOCUMENTS'
,p_title=>'Documents Listed in Order of Relevance'
,p_template=>4072358936313175081
,p_display_sequence=>100
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'DOCUMENT_RANKING_V'
,p_query_where=>'prompt_id=:P12_PROMPT_ID'
,p_query_order_by_type=>'STATIC'
,p_query_order_by=>'score desc'
,p_include_rowid_column=>false
,p_display_when_condition=>'P12_AI_SERVICE'
,p_display_when_cond2=>'Vector Search'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(666313463827977390)
,p_query_column_id=>1
,p_column_alias=>'FILE_NAME'
,p_column_display_sequence=>40
,p_column_heading=>'File Name'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(666313917131977395)
,p_query_column_id=>2
,p_column_alias=>'PROMPT_ID'
,p_column_display_sequence=>90
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(666313168747977387)
,p_query_column_id=>3
,p_column_alias=>'CONV_ID'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(666313189479977388)
,p_query_column_id=>4
,p_column_alias=>'PROMPT'
,p_column_display_sequence=>20
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(666313365252977389)
,p_query_column_id=>5
,p_column_alias=>'RESPONSE'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(666313635010977392)
,p_query_column_id=>6
,p_column_alias=>'DOCUMENTID'
,p_column_display_sequence=>60
,p_column_heading=>'Document Id'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(666313470376977391)
,p_query_column_id=>7
,p_column_alias=>'INDEX_ID'
,p_column_display_sequence=>50
,p_column_heading=>'Index Id'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(666313768713977393)
,p_query_column_id=>8
,p_column_alias=>'SCORE'
,p_column_display_sequence=>70
,p_column_heading=>'Score'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(666313772112977394)
,p_query_column_id=>9
,p_column_alias=>'CONTENT'
,p_column_display_sequence=>80
,p_column_heading=>'Content'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(666314090576977397)
,p_name=>'Show SQL'
,p_title=>'SQL Used in Search'
,p_template=>4072358936313175081
,p_display_sequence=>80
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select showsql',
'  from prompts',
' where id=:P12_PROMPT_ID'))
,p_display_when_condition=>'P12_AI_SERVICE'
,p_display_when_cond2=>'Select AI'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(666314697880977403)
,p_query_column_id=>1
,p_column_alias=>'SHOWSQL'
,p_column_display_sequence=>10
,p_column_heading=>'Showsql'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(673510869105531768)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(684135560487772350)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(673511555943532365)
,p_plug_name=>'LLM Conversation'
,p_title=>'Conversation'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>40
,p_query_type=>'TABLE'
,p_query_table=>'PROMPTS'
,p_query_where=>'conv_id=:P12_CONV_ID'
,p_query_order_by_type=>'STATIC'
,p_query_order_by=>'asked_on desc'
,p_include_rowid_column=>false
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_LLM_CONVERSATION'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_plug_query_no_data_found=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p style="font-size: 24px;">Welcome to the conversation!  Select a domain and ask a question.</p>',
''))
,p_no_data_found_icon_classes=>'fa-database-search'
,p_show_total_row_count=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'AI_SERVICE', 'AI_SERVICE',
  'DOMAIN', 'DOMAIN',
  'ID', 'ID',
  'PROMPT', 'PROMPT',
  'RESPONSE', 'RESPONSE')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(670153307932654594)
,p_name=>'CHATHISTORY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CHATHISTORY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>100
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_required_patch=>wwv_flow_imp.id(684134921705772332)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(670153429680654595)
,p_name=>'REFERENCES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REFERENCES'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>110
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_required_patch=>wwv_flow_imp.id(684134921705772332)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(670153485125654596)
,p_name=>'REQUEST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REQUEST'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>120
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_required_patch=>wwv_flow_imp.id(684134921705772332)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(670153609940654597)
,p_name=>'OUTPUT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OUTPUT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>130
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_required_patch=>wwv_flow_imp.id(684134921705772332)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(670153687074654598)
,p_name=>'CITATIONS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CITATIONS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>140
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_required_patch=>wwv_flow_imp.id(684134921705772332)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(670153772383654599)
,p_name=>'DOCUMENTS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCUMENTS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>150
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_required_patch=>wwv_flow_imp.id(684134921705772332)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(670153869143654600)
,p_name=>'DOCUMENTS4RERANK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCUMENTS4RERANK'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>160
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_required_patch=>wwv_flow_imp.id(684134921705772332)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(670153972979654601)
,p_name=>'DOCUMENTSRERANKED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCUMENTSRERANKED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>170
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_required_patch=>wwv_flow_imp.id(684134921705772332)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(670154071555654602)
,p_name=>'SHOWSQL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHOWSQL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>180
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_required_patch=>wwv_flow_imp.id(684134921705772332)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(670154233062654603)
,p_name=>'AI_SERVICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AI_SERVICE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>190
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(670154280350654604)
,p_name=>'DOMAIN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOMAIN'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>200
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(673511767532532367)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(673514582150532395)
,p_name=>'CONV_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CONV_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>40
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(673514686660532396)
,p_name=>'PROMPT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROMPT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>50
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(673514720806532397)
,p_name=>'RESPONSE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RESPONSE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>70
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(673514849326532398)
,p_name=>'ASKED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ASKED_ON'
,p_data_type=>'TIMESTAMP'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>90
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(673515147831532401)
,p_plug_name=>'Footer'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>1569994581593435632
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_05'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(676297333571222799)
,p_name=>'CITATIONS'
,p_title=>'Citations'
,p_template=>4072358936313175081
,p_display_sequence=>110
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'DOC_CITATIONS_V'
,p_query_where=>'prompt_id=:P12_PROMPT_ID'
,p_query_order_by_type=>'STATIC'
,p_query_order_by=>'documentids desc'
,p_include_rowid_column=>false
,p_display_when_condition=>'P12_AI_SERVICE'
,p_display_when_cond2=>'Vector Search'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(664724793545667573)
,p_query_column_id=>1
,p_column_alias=>'FILE_NAME'
,p_column_display_sequence=>70
,p_column_heading=>'File Name'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(664724673760667572)
,p_query_column_id=>2
,p_column_alias=>'PROMPT_ID'
,p_column_display_sequence=>120
,p_column_heading=>'Prompt Id'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_imp.id(684134921705772332)
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(676297534963222801)
,p_query_column_id=>3
,p_column_alias=>'CONV_ID'
,p_column_display_sequence=>30
,p_column_heading=>'Conv Id'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_imp.id(684134921705772332)
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(676297654543222802)
,p_query_column_id=>4
,p_column_alias=>'ASKED_ON'
,p_column_display_sequence=>40
,p_column_heading=>'Asked On'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_imp.id(684134921705772332)
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(676297798299222803)
,p_query_column_id=>5
,p_column_alias=>'PROMPT'
,p_column_display_sequence=>50
,p_column_heading=>'Prompt'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_imp.id(684134921705772332)
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(676297847235222804)
,p_query_column_id=>6
,p_column_alias=>'RESPONSE'
,p_column_display_sequence=>60
,p_column_heading=>'Response'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_imp.id(684134921705772332)
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(676298006120222805)
,p_query_column_id=>7
,p_column_alias=>'CITATION_STARTPOINT'
,p_column_display_sequence=>90
,p_column_heading=>'Citation Startpoint'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(676298006830222806)
,p_query_column_id=>8
,p_column_alias=>'CITATION_ENDPOINT'
,p_column_display_sequence=>100
,p_column_heading=>'Citation Endpoint'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(676298199467222807)
,p_query_column_id=>9
,p_column_alias=>'CITATION_TEXT'
,p_column_display_sequence=>110
,p_column_heading=>'Citation Text'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(664378045359888005)
,p_query_column_id=>10
,p_column_alias=>'DOCUMENTIDS'
,p_column_display_sequence=>80
,p_column_heading=>'Document Ids'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(673515386029532403)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(673510869105531768)
,p_button_name=>'Submit'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'SMART_FILTERS'
,p_button_css_classes=>'u-color-1'
,p_icon_css_classes=>'fa-send-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(673351582758164678)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(673510869105531768)
,p_button_name=>'create_new_conversation'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create New Conversation'
,p_button_position=>'SMART_FILTERS'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-1'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(666311310043977369)
,p_name=>'P12_SELECT_DOMAIN'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(673510869105531768)
,p_item_display_point=>'SMART_FILTERS'
,p_prompt=>'Select Domain'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select domain_name||'' - ''||domain_description s, domain_name r from domains'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:t-Form-fieldContainer--boldDisplay'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(666312847099977384)
,p_name=>'P12_SHOWSQL'
,p_item_sequence=>50
,p_use_cache_before_default=>'NO'
,p_source=>'select showsql from prompts where id = :P12_PROMPT_ID;'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(666312876517977385)
,p_name=>'P12_AI_SERVICE'
,p_item_sequence=>60
,p_use_cache_before_default=>'NO'
,p_source=>'select ai_service from prompts where id = :P12_PROMPT_ID;'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(666314391345977400)
,p_name=>'P12_CONV_PROMPT_IDS'
,p_item_sequence=>120
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Conversation ID: ''||c.id||''       Prompt ID: ''||p.id from ',
'(select max(id) id from conversations where app_session=:APP_SESSION) c,',
'(select conv_id, max(id) id from prompts group by conv_id) p',
'where c.id = p.conv_id;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(673352565358164688)
,p_name=>'P12_CONV_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(673510869105531768)
,p_item_display_point=>'SMART_FILTERS'
,p_use_cache_before_default=>'NO'
,p_source=>'select max(id) from conversations where app_session=:APP_SESSION'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(673515262953532402)
,p_name=>'P12_PROMPT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(673510869105531768)
,p_item_display_point=>'SMART_FILTERS'
,p_prompt=>'Enter Prompt'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:t-Form-fieldContainer--boldDisplay'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(673515684417532406)
,p_name=>'P12_REFERENCES'
,p_item_sequence=>70
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select references from prompts ',
'where id = (select max(id) from doc_citations_v where conv_id=(select max(id) from conversations where app_session=:APP_SESSION))'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(676298481389222810)
,p_name=>'P12_PROMPT_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(673510869105531768)
,p_item_display_point=>'SMART_FILTERS'
,p_use_cache_before_default=>'NO'
,p_item_default=>'select max(id) from prompts where conv_id=(select max(id) from conversations where app_session=:APP_SESSION)'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(673351664338164679)
,p_name=>'create_conversation'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(673351582758164678)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(673351734422164680)
,p_event_id=>wwv_flow_imp.id(673351664338164679)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'chathistory_pkg.prc_add_conversation(:APP_USER, SYSTIMESTAMP, :APP_SESSION);'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(673352194469164684)
,p_event_id=>wwv_flow_imp.id(673351664338164679)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Clear state'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_PROMPT,P12_REFERENCES'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(673352414367164686)
,p_event_id=>wwv_flow_imp.id(673351664338164679)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(673515055248532400)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Invoke API'
,p_attribute_01=>'PLSQL_PROCEDURE_FUNCTION'
,p_attribute_05=>'AI_SEARCH'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(673515386029532403)
,p_internal_uid=>2341040833560636
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(664374457347887969)
,p_page_process_id=>wwv_flow_imp.id(673515055248532400)
,p_page_id=>12
,p_name=>'p_session_id'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>true
,p_display_sequence=>40
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>':APP_SESSION'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(666311374668977370)
,p_page_process_id=>wwv_flow_imp.id(673515055248532400)
,p_page_id=>12
,p_name=>'p_domain'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>30
,p_value_type=>'ITEM'
,p_value=>'P12_SELECT_DOMAIN'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(673515422230532404)
,p_page_process_id=>wwv_flow_imp.id(673515055248532400)
,p_page_id=>12
,p_direction=>'OUT'
,p_data_type=>'CLOB'
,p_ignore_output=>false
,p_display_sequence=>10
,p_value_type=>'ITEM'
,p_value=>'P12_REFERENCES'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(673515575687532405)
,p_page_process_id=>wwv_flow_imp.id(673515055248532400)
,p_page_id=>12
,p_name=>'p_ai_message'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>20
,p_value_type=>'ITEM'
,p_value=>'P12_PROMPT'
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_imp_page.create_page(
 p_id=>13
,p_name=>'Add Documents'
,p_alias=>'UPDATE-DOCUMENT'
,p_step_title=>'Add Documents'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(671281820841034323)
,p_plug_name=>'Update Document'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>5
,p_query_type=>'SQL'
,p_plug_source=>'select "ID","FILE_NAME","FILE_SIZE","FILE_TYPE",sys.dbms_lob.getlength("FILE_CONTENT")"FILE_CONTENT",domain, sys.dbms_lob.getlength("FIRST_PAGE_IMAGE")"FIRST_PAGE_IMAGE" from "DOCUMENTS" order by 1'
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Update Legislation'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(671281933948034323)
,p_name=>'Update Legislation'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:RP:P14_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'VECTOR'
,p_internal_uid=>8676427733882425
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671282678181034329)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671283106069034331)
,p_db_column_name=>'FILE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'File Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671283439867034333)
,p_db_column_name=>'FILE_SIZE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'File Size'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671283882578034334)
,p_db_column_name=>'FILE_TYPE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'File Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671284224416034335)
,p_db_column_name=>'FILE_CONTENT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'File Content'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DOWNLOAD:LEGISLATION:FILE_CONTENT:ID::::::attachment::'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671284670120034336)
,p_db_column_name=>'FIRST_PAGE_IMAGE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'First Page Image'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DOWNLOAD:LEGISLATION:FIRST_PAGE_IMAGE:ID::::::attachment::'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
,p_required_patch=>wwv_flow_imp.id(684134921705772332)
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(664378669774888012)
,p_db_column_name=>'DOMAIN'
,p_display_order=>17
,p_column_identifier=>'H'
,p_column_label=>'Domain'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(282627232172743398)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(671287802989034809)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'86823'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FILE_NAME:FILE_SIZE:FILE_CONTENT:DOMAIN:FILE_TYPE:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(671287141112034345)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(684135560487772350)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(671285568218034339)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(671281820841034323)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:14::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(671285806988034339)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(671281820841034323)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(671286361558034342)
,p_event_id=>wwv_flow_imp.id(671285806988034339)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(671281820841034323)
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_imp_page.create_page(
 p_id=>14
,p_name=>'Update Image'
,p_alias=>'UPDATE-IMAGE'
,p_page_mode=>'MODAL'
,p_step_title=>'Update Image'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(671271873062034294)
,p_plug_name=>'Update Image'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'DOCUMENTS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(671277058428034310)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(671277447145034311)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(671277058428034310)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(671278834141034316)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(671277058428034310)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P14_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(671279251191034317)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(671277058428034310)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P14_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(671279657105034318)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(671277058428034310)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P14_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(664378609659888011)
,p_name=>'P14_DOMAIN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(671271873062034294)
,p_item_source_plug_id=>wwv_flow_imp.id(671271873062034294)
,p_prompt=>'Domain'
,p_source=>'DOMAIN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'DOMAINS'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(671272180601034296)
,p_name=>'P14_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(671271873062034294)
,p_item_source_plug_id=>wwv_flow_imp.id(671271873062034294)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(671272520162034297)
,p_name=>'P14_FILE_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(671271873062034294)
,p_item_source_plug_id=>wwv_flow_imp.id(671271873062034294)
,p_use_cache_before_default=>'NO'
,p_prompt=>'File Name'
,p_source=>'FILE_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>900
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(671272926721034298)
,p_name=>'P14_FILE_SIZE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(671271873062034294)
,p_item_source_plug_id=>wwv_flow_imp.id(671271873062034294)
,p_item_default=>'dbms_lob.getlength(:P14_FILE_CONTENT)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'FILE_SIZE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(671273318873034300)
,p_name=>'P14_FILE_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(671271873062034294)
,p_item_source_plug_id=>wwv_flow_imp.id(671271873062034294)
,p_prompt=>'File Type'
,p_source=>'FILE_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'APPLICATION TYPE'
,p_lov=>'.'||wwv_flow_imp.id(283827278979808333)||'.'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>100
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(671273709317034301)
,p_name=>'P14_FILE_CONTENT'
,p_source_data_type=>'BLOB'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(671271873062034294)
,p_item_source_plug_id=>wwv_flow_imp.id(671271873062034294)
,p_use_cache_before_default=>'NO'
,p_prompt=>'File Content'
,p_source=>'FILE_CONTENT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_multiple_files', 'N',
  'content_disposition', 'attachment',
  'display_as', 'INLINE',
  'display_download_link', 'Y',
  'purge_file_at', 'SESSION',
  'storage_type', 'DB_COLUMN')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(671274136142034302)
,p_name=>'P14_FIRST_PAGE_IMAGE'
,p_source_data_type=>'BLOB'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(671271873062034294)
,p_item_source_plug_id=>wwv_flow_imp.id(671271873062034294)
,p_prompt=>'First Page Image'
,p_source=>'FIRST_PAGE_IMAGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_required_patch=>wwv_flow_imp.id(684134921705772332)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'content_disposition', 'attachment',
  'display_as', 'INLINE',
  'display_download_link', 'Y',
  'storage_type', 'DB_COLUMN')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(671277566686034311)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(671277447145034311)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(671278348092034314)
,p_event_id=>wwv_flow_imp.id(671277566686034311)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(671280417501034319)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(671271873062034294)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Update Image'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8674911286882421
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(671280905812034320)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>8675399597882422
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(671280081883034318)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(671271873062034294)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Update Image'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8674575668882420
);
end;
/
prompt --application/pages/page_00016
begin
wwv_flow_imp_page.create_page(
 p_id=>16
,p_name=>'View  PDF Documents'
,p_alias=>'SEARCH-DOCUMENTS'
,p_step_title=>'View PDF Documents'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2526643373347724467
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'22'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(673416432108446799)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(684135560487772350)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(673417170755446822)
,p_name=>'Search Results'
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_grid_column_span=>5
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.*',
'from (',
'select ',
'    l.id',
'    , l.file_name',
'    , ''File Size: ''||l.file_size file_size',
'    , ''Num Text Items: ''||count(v.chunk_id) num_chunks',
'from documents l, document_vector v',
'where l.id = v.id(+)',
'group by     l.id',
'    , l.file_name',
'    , ''File Size: ''||l.file_size) a,',
'documents b',
'where a.id = b.id',
'and b.file_type = ''application/pdf'''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>100000
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(673420210208446866)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'AI Search'
,p_column_link=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::P20_SELECT_DOCUMENT:#FILE_NAME#'
,p_column_linktext=>'#ID#'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(673420656228446876)
,p_query_column_id=>2
,p_column_alias=>'FILE_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'View File'
,p_column_link=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:Y,:P16_SELECTED_ID:#ID#'
,p_column_linktext=>'#FILE_NAME#'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(673421058522446877)
,p_query_column_id=>3
,p_column_alias=>'FILE_SIZE'
,p_column_display_sequence=>3
,p_column_heading=>'File Size'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(673421433065446878)
,p_query_column_id=>4
,p_column_alias=>'NUM_CHUNKS'
,p_column_display_sequence=>4
,p_column_heading=>'Num Chunks'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(673417270447446822)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>4
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_imp.id(673417170755446822)
,p_landmark_label=>'Filters'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'batch_facet_search', 'N',
  'compact_numbers_threshold', '10000',
  'current_facets_selector', '#active_facets',
  'display_chart_for_top_n_values', '10',
  'show_charts', 'Y',
  'show_current_facets', 'E',
  'show_total_row_count', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(673419239535446842)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>'<div id="active_facets"></div>'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(684226532371679257)
,p_plug_name=>'PDF Viewer'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source=>'<iframe src="f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.:APPLICATION_PROCESS=GETPDF:::ID:&P16_SELECTED_ID." width="100%" height="900"></iframe>'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(673419709586446848)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(673419239535446842)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:16:&APP_SESSION.::&DEBUG.:RR,16::'
,p_icon_css_classes=>'fa-undo'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(577245673875382185)
,p_name=>'P16_SELECTED_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(673417170755446822)
,p_item_display_point=>'SUB_REGIONS'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(673417802030446830)
,p_name=>'P16_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(673417270447446822)
,p_prompt=>'Search'
,p_source=>'FILE_NAME,FILE_SIZE,NUM_CHUNKS'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'collapsed_search_field', 'N',
  'input_field', 'FACET',
  'search_type', 'ROW')).to_clob
,p_fc_collapsible=>false
,p_fc_initial_collapsed=>false
,p_fc_show_chart=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(673418117746446837)
,p_name=>'P16_FILE_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(673417270447446822)
,p_prompt=>'File Name'
,p_source=>'FILE_NAME'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_fc_collapsible=>false
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(673410054692376803)
,p_name=>'PDFViewer'
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'PDFViewer'
,p_required_patch=>wwv_flow_imp.id(684134921705772332)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(673410155782376804)
,p_event_id=>wwv_flow_imp.id(673410054692376803)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let id = this.data.id;async function getData(){',
'let afetch = await fetch(''https://ijegqeyui1cwvrq-dgcadw1.adb.us-ashburn-1.oraclecloudapps.com/ords/search/demopdfviewer/examplepdf/'' +id );',
'let blob = await afetch.blob();',
'let blobUrl = URL.createObjectURL(blob);',
'let pdfContainer = document.getElementById(''pdfViewer'');',
'',
'pdfContainer.getElementsByTagName(''iframe'')[0].src = blobUrl;}',
'',
'getData();'))
);
end;
/
prompt --application/pages/page_00017
begin
wwv_flow_imp_page.create_page(
 p_id=>17
,p_name=>'Prompt Instructions'
,p_alias=>'PROMPT-INSTRUCTIONS'
,p_step_title=>'Prompt Instructions'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(673641614942238314)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(684135560487772350)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(673642338360238318)
,p_plug_name=>'Prompt Instructions'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_query_type=>'TABLE'
,p_query_table=>'PROMPT_INSTRUCTIONS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_prn_page_header=>'Prompt Instructions'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(673643691533238332)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(673644043887238336)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(673645044213238345)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_enable_filter=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(673646016167238349)
,p_name=>'INSTRUCTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INSTRUCTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Instruction'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>32767
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(673647022647238352)
,p_name=>'ACTIVE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTIVE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Active'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>1
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(673642847301238321)
,p_internal_uid=>11037341087086423
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(673643215642238326)
,p_interactive_grid_id=>wwv_flow_imp.id(673642847301238321)
,p_static_id=>'110378'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(673643455027238327)
,p_report_id=>wwv_flow_imp.id(673643215642238326)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(673644413314238341)
,p_view_id=>wwv_flow_imp.id(673643455027238327)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(673644043887238336)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>49.5
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(673645420763238346)
,p_view_id=>wwv_flow_imp.id(673643455027238327)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(673645044213238345)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(673646408754238350)
,p_view_id=>wwv_flow_imp.id(673643455027238327)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(673646016167238349)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>1048
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(673647441964238353)
,p_view_id=>wwv_flow_imp.id(673643455027238327)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(673647022647238352)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>56.5
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(673648076397238355)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(673642338360238318)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Prompt Instructions - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11042570183086457
);
end;
/
prompt --application/pages/page_00018
begin
wwv_flow_imp_page.create_page(
 p_id=>18
,p_name=>'(dummy) Download File'
,p_alias=>'DUMMY-DOWNLOAD-FILE'
,p_step_title=>'(dummy) Download File'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(214316936300831806)
,p_name=>'P18_OBJECT_NAME'
,p_item_sequence=>10
,p_prompt=>'Object Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(214317052239831807)
,p_process_sequence=>10
,p_process_point=>'BEFORE_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Download File'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'  l_request_url varchar2(32767);',
'',
'  l_content_type varchar2(32767);',
'',
'  l_content_length varchar2(32767);',
'',
'  l_response blob;',
'',
'  download_failed_exception exception;',
'',
'begin',
'',
'',
'  l_request_url := :G_URL||''/n/''||:TENANCY_NAME||''/b/''||:P9_BUCKET_SEARCH||''/o/'' || utl_url.escape(:P18_OBJECT_NAME);',
'',
'  l_response := apex_web_service.make_rest_request_b(',
'',
'    p_url => l_request_url',
'',
'    , p_http_method => ''GET''',
'',
'    , p_credential_static_id => ''credentials_for_list_compartments_in_tenancy''',
'',
'  );',
'',
'  if apex_web_service.g_status_code != 200 then',
'',
'    raise download_failed_exception;',
'',
'  end if;',
'',
'  for i in 1..apex_web_service.g_headers.count  loop',
'',
'    if apex_web_service.g_headers(i).name = ',
'',
'      ''Content-Length'' ',
'',
'    then',
'',
'      l_content_length := ',
'',
'        apex_web_service.g_headers(i).value;',
'',
'    end if;',
'',
'    if apex_web_service.g_headers(i).name = ',
'',
'      ''Content-Type''',
'',
'    then',
'',
'      l_content_type :=',
'',
'        apex_web_service.g_headers(i).value;',
'',
'    end if;',
'',
'  end loop;',
'',
'  sys.htp.init;',
'',
'  if l_content_type is not null then',
'',
'    sys.owa_util.mime_header(trim(l_content_type), false);',
'',
'  end if;',
'',
'  sys.htp.p(''Content-length: '' || l_content_length);',
'',
'  sys.htp.p(''Content-Disposition: attachment; filename="''',
'',
'    || :P18_OBJECT_NAME || ''"'' );',
'',
'  sys.htp.p(''Cache-Control: max-age=3600'');',
'',
'  sys.owa_util.http_header_close;',
'',
'  sys.wpg_docload.download_file(l_response);',
'',
' apex_application.stop_apex_engine;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>214317052239831807
);
end;
/
prompt --application/pages/page_00019
begin
wwv_flow_imp_page.create_page(
 p_id=>19
,p_name=>'AI Configuration'
,p_alias=>'AI-CONFIGURATION'
,p_step_title=>'AI Configuration'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(673411318816376816)
,p_plug_name=>'Vector Embed Configuration'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>70
,p_plug_grid_column_span=>4
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(675003645204881152)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(684135560487772350)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(675004334001881537)
,p_plug_name=>'AI Configuration'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>90
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_query_type=>'TABLE'
,p_query_table=>'AI_CONFIGURATION'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(675013720118881574)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(675004334001881537)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(675015159629881579)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(675004334001881537)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P19_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_required_patch=>wwv_flow_imp.id(684134921705772332)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(675014306508881576)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(675004334001881537)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P19_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_required_patch=>wwv_flow_imp.id(684134921705772332)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(675014737514881577)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(675003645204881152)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'SMART_FILTERS'
,p_button_condition=>'P19_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(675015411198881579)
,p_branch_name=>'Go To Page 19'
,p_branch_action=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(666311506321977371)
,p_name=>'P19_TOP_DOC_CHUNKS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(673411318816376816)
,p_item_source_plug_id=>wwv_flow_imp.id(675004334001881537)
,p_prompt=>'Top Document Chunks'
,p_source=>'TOP_DOC_CHUNKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(675004625836881538)
,p_name=>'P19_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(675004334001881537)
,p_item_source_plug_id=>wwv_flow_imp.id(675004334001881537)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(675005086263881541)
,p_name=>'P19_LLM_MAX_TOKENS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(675004334001881537)
,p_item_source_plug_id=>wwv_flow_imp.id(675004334001881537)
,p_prompt=>'LLM Max Tokens'
,p_source=>'LLM_MAX_TOKENS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(675005449320881543)
,p_name=>'P19_LLM_TEMPERATURE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(675004334001881537)
,p_item_source_plug_id=>wwv_flow_imp.id(675004334001881537)
,p_prompt=>'LLM Temperature'
,p_source=>'LLM_TEMPERATURE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(675005875768881544)
,p_name=>'P19_LLM_FREQUENCYPENALTY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(675004334001881537)
,p_item_source_plug_id=>wwv_flow_imp.id(675004334001881537)
,p_prompt=>'LLM Frequency Penalty'
,p_source=>'LLM_FREQUENCYPENALTY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(675006237019881546)
,p_name=>'P19_LLM_PRESENCEPENALTY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(675004334001881537)
,p_item_source_plug_id=>wwv_flow_imp.id(675004334001881537)
,p_prompt=>'LLM Presence Penalty'
,p_source=>'LLM_PRESENCEPENALTY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(675006635620881548)
,p_name=>'P19_LLM_TOPP'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(675004334001881537)
,p_item_source_plug_id=>wwv_flow_imp.id(675004334001881537)
,p_prompt=>'LLM Top P'
,p_source=>'LLM_TOPP'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(675007017330881549)
,p_name=>'P19_LLM_TOPK'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(675004334001881537)
,p_item_source_plug_id=>wwv_flow_imp.id(675004334001881537)
,p_prompt=>'LLM Top K'
,p_source=>'LLM_TOPK'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(675007447037881551)
,p_name=>'P19_VECTOR_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(673411318816376816)
,p_item_source_plug_id=>wwv_flow_imp.id(675004334001881537)
,p_prompt=>'Vector By'
,p_source=>'VECTOR_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(675007888580881553)
,p_name=>'P19_VECTOR_MAX'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(673411318816376816)
,p_item_source_plug_id=>wwv_flow_imp.id(675004334001881537)
,p_prompt=>'Vector Max'
,p_source=>'VECTOR_MAX'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(675008302067881554)
,p_name=>'P19_VECTOR_OVERLAP'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(673411318816376816)
,p_item_source_plug_id=>wwv_flow_imp.id(675004334001881537)
,p_prompt=>'Vector Overlap'
,p_source=>'VECTOR_OVERLAP'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(675008611192881556)
,p_name=>'P19_VECTOR_SPLIT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(673411318816376816)
,p_item_source_plug_id=>wwv_flow_imp.id(675004334001881537)
,p_prompt=>'Vector Split'
,p_source=>'VECTOR_SPLIT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(675009074446881558)
,p_name=>'P19_VECTOR_LANGUAGE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(673411318816376816)
,p_item_source_plug_id=>wwv_flow_imp.id(675004334001881537)
,p_prompt=>'Vector Language'
,p_source=>'VECTOR_LANGUAGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(675009432909881559)
,p_name=>'P19_VECTOR_NORMALIZE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(673411318816376816)
,p_item_source_plug_id=>wwv_flow_imp.id(675004334001881537)
,p_prompt=>'Vector Normalize'
,p_source=>'VECTOR_NORMALIZE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(675016353869881584)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(675004334001881537)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form AI Configuration'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>12410847655729686
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(673411215421376815)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set ID to 1'
,p_process_sql_clob=>':P19_ID:=1'
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>10805709207224917
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(675015914676881582)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(675004334001881537)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form AI Configuration'
,p_internal_uid=>12410408462729684
);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_imp_page.create_page(
 p_id=>20
,p_name=>'Search Document Modal'
,p_alias=>'SEARCH-DOCUMENT-MODAL'
,p_page_mode=>'MODAL'
,p_step_title=>'Search Document'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'27'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(778320772782062906)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(684135560487772350)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(806882041817184998)
,p_plug_name=>'LLM Conversation'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'PROMPTS'
,p_query_where=>'conv_id=:P20_CONV_ID'
,p_query_order_by_type=>'STATIC'
,p_query_order_by=>'asked_on desc'
,p_include_rowid_column=>false
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_LLM_CONVERSATION'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'AI_SERVICE', 'AI_SERVICE',
  'DOMAIN', 'DOMAIN',
  'ID', 'ID',
  'PROMPT', 'PROMPT',
  'RESPONSE', 'RESPONSE')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(785696988611833494)
,p_name=>'CHATHISTORY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CHATHISTORY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>70
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_required_patch=>wwv_flow_imp.id(684134921705772332)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(785697120408833495)
,p_name=>'REFERENCES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REFERENCES'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>80
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_required_patch=>wwv_flow_imp.id(684134921705772332)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(785697219319833496)
,p_name=>'REQUEST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REQUEST'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>90
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_required_patch=>wwv_flow_imp.id(684134921705772332)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(785697314856833497)
,p_name=>'OUTPUT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OUTPUT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>100
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_required_patch=>wwv_flow_imp.id(684134921705772332)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(785697382670833498)
,p_name=>'CITATIONS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CITATIONS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>110
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_required_patch=>wwv_flow_imp.id(684134921705772332)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(785697498704833499)
,p_name=>'DOCUMENTS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCUMENTS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>120
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_required_patch=>wwv_flow_imp.id(684134921705772332)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(785697605121833500)
,p_name=>'DOCUMENTS4RERANK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCUMENTS4RERANK'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>130
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_required_patch=>wwv_flow_imp.id(684134921705772332)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(785697777163833501)
,p_name=>'DOCUMENTSRERANKED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCUMENTSRERANKED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>140
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_required_patch=>wwv_flow_imp.id(684134921705772332)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(785697810559833502)
,p_name=>'SHOWSQL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHOWSQL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>150
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_required_patch=>wwv_flow_imp.id(684134921705772332)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(785697918669833503)
,p_name=>'AI_SERVICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AI_SERVICE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>160
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(785697984653833504)
,p_name=>'DOMAIN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOMAIN'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>170
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(806882253406185000)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(806885068024185028)
,p_name=>'CONV_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CONV_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(806885172534185029)
,p_name=>'PROMPT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROMPT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>40
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(806885206680185030)
,p_name=>'RESPONSE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RESPONSE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>50
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(806885335200185031)
,p_name=>'ASKED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ASKED_ON'
,p_data_type=>'TIMESTAMP'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>60
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(806885633705185034)
,p_plug_name=>'Footer'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>1569994581593435632
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_05'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(514245417153785109)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(778320772782062906)
,p_button_name=>'Submit'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'SMART_FILTERS'
,p_button_css_classes=>'u-color-1'
,p_icon_css_classes=>'fa-send-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(514245785647785111)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(778320772782062906)
,p_button_name=>'create_new_conversation'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create New Conversation'
,p_button_position=>'SMART_FILTERS'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-1'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(482442897090495469)
,p_name=>'P20_RESULT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(778320772782062906)
,p_item_display_point=>'SMART_FILTERS'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(778333212173063033)
,p_name=>'P20_CONV_PROMPT_ID'
,p_item_sequence=>40
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Conversation ID: ''||c.id||''       Prompt ID: ''||p.id from ',
'(select max(id) id from conversations where app_session=:APP_SESSION) c,',
'(select conv_id, max(id) id from prompts group by conv_id) p',
'where c.id = p.conv_id;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(799684692316630101)
,p_name=>'P20_SELECT_DOCUMENT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(778320772782062906)
,p_item_display_point=>'SMART_FILTERS'
,p_item_default=>'P20_SELECT_DOCUMENT'
,p_item_default_type=>'ITEM'
,p_prompt=>'New'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(806739218240817526)
,p_name=>'P20_CONV_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(778320772782062906)
,p_item_display_point=>'SMART_FILTERS'
,p_use_cache_before_default=>'NO'
,p_source=>'select max(id) from conversations where app_session=:APP_SESSION'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(806888645226185134)
,p_name=>'P20_PROMPT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(778320772782062906)
,p_item_display_point=>'SMART_FILTERS'
,p_prompt=>'Prompt'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(809685134271875648)
,p_name=>'P20_PROMPT_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(778320772782062906)
,p_item_display_point=>'SMART_FILTERS'
,p_use_cache_before_default=>'NO'
,p_item_default=>'select max(id) from prompts where conv_id=(select max(id) from conversations where app_session=:APP_SESSION)'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(514257756696785169)
,p_name=>'create_conversation'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(514245785647785111)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(514258284303785172)
,p_event_id=>wwv_flow_imp.id(514257756696785169)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'chathistory_pkg.prc_add_conversation(:APP_USER, SYSTIMESTAMP, :APP_SESSION);'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(514258780724785173)
,p_event_id=>wwv_flow_imp.id(514257756696785169)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Clear state'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P20_PROMPT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(514259317950785174)
,p_event_id=>wwv_flow_imp.id(514257756696785169)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(514255354203785161)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Invoke API'
,p_attribute_01=>'PLSQL_PROCEDURE_FUNCTION'
,p_attribute_05=>'DOCUMENT_SEARCH'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(514245417153785109)
,p_internal_uid=>112018807021085632
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(514255919344785164)
,p_page_process_id=>wwv_flow_imp.id(514255354203785161)
,p_page_id=>20
,p_name=>'p_ai_prompt'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>60
,p_value_type=>'ITEM'
,p_value=>'P20_PROMPT'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(514256354422785165)
,p_page_process_id=>wwv_flow_imp.id(514255354203785161)
,p_page_id=>20
,p_name=>'p_file_name'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>20
,p_value_type=>'ITEM'
,p_value=>'P20_SELECT_DOCUMENT'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(514256900215785167)
,p_page_process_id=>wwv_flow_imp.id(514255354203785161)
,p_page_id=>20
,p_name=>'p_session_id'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>true
,p_display_sequence=>40
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>':APP_SESSION'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(514257390956785167)
,p_page_process_id=>wwv_flow_imp.id(514255354203785161)
,p_page_id=>20
,p_direction=>'OUT'
,p_data_type=>'CLOB'
,p_ignore_output=>false
,p_display_sequence=>50
,p_value_type=>'ITEM'
,p_value=>'P20_RESULT'
);
end;
/
prompt --application/pages/page_00021
begin
wwv_flow_imp_page.create_page(
 p_id=>21
,p_name=>'Delete File'
,p_alias=>'DELETE-FILE'
,p_step_title=>'Delete File'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(214317344227831810)
,p_name=>'P21_OBJECT_NAME'
,p_item_sequence=>10
,p_prompt=>'Object Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(214317494195831811)
,p_process_sequence=>10
,p_process_point=>'BEFORE_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete File'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'  l_request_url varchar2(32767);',
'',
'  l_content_type varchar2(32767);',
'',
'  l_content_length varchar2(32767);',
'',
'  l_response clob;',
'',
'',
'',
'begin',
'',
'',
'  l_request_url := :G_URL||''/n/''||:TENANCY_NAME||''/b/''||:P9_BUCKET_SEARCH||''/o/'' || utl_url.escape(:P21_OBJECT_NAME);',
'',
'  l_response := apex_web_service.make_rest_request(',
'',
'    p_url => l_request_url',
'',
'    , p_http_method => ''DELETE''',
'',
'    , p_credential_static_id => ''credentials_for_list_compartments_in_tenancy''',
'',
'  );',
'',
'',
'',
'  for i in 1..apex_web_service.g_headers.count  loop',
'',
'    if apex_web_service.g_headers(i).name = ',
'',
'      ''Content-Length'' ',
'',
'    then',
'',
'      l_content_length := ',
'',
'        apex_web_service.g_headers(i).value;',
'',
'    end if;',
'',
'    if apex_web_service.g_headers(i).name = ',
'',
'      ''Content-Type''',
'',
'    then',
'',
'      l_content_type :=',
'',
'        apex_web_service.g_headers(i).value;',
'',
'    end if;',
'',
'  end loop;',
'  ',
'        apex_util.redirect_url(',
'            p_url => apex_page.get_url(',
'                p_page => 9',
'            )',
'        );',
'  ',
'',
' apex_application.stop_apex_engine;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>214317494195831811
);
end;
/
prompt --application/pages/page_00022
begin
wwv_flow_imp_page.create_page(
 p_id=>22
,p_name=>'Conversations'
,p_alias=>'CONVERSATIONS1'
,p_page_mode=>'MODAL'
,p_step_title=>'Conversations'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(671333308894937460)
,p_plug_name=>'Conversations'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'CONVERSATIONS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(671336865000937475)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(671337152052937476)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(671336865000937475)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(671338591515937481)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(671336865000937475)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P22_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(671338986104937481)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(671336865000937475)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P22_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(671339352373937482)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(671336865000937475)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P22_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(671340966005937487)
,p_branch_name=>'Redirect to new'
,p_branch_action=>'f?p=&APP_ID.:21:&APP_SESSION.::&DEBUG.:RP:P21_ID:&P22_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(671339352373937482)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(671341368191937488)
,p_branch_name=>'Redirect to all'
,p_branch_action=>'f?p=&APP_ID.:21:&APP_SESSION.::&DEBUG.:RP,21::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(671338591515937481)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(671333672442937461)
,p_name=>'P22_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(671333308894937460)
,p_item_source_plug_id=>wwv_flow_imp.id(671333308894937460)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(671334084472937465)
,p_name=>'P22_USERNAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(671333308894937460)
,p_item_source_plug_id=>wwv_flow_imp.id(671333308894937460)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Username'
,p_source=>'USERNAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(671334431511937466)
,p_name=>'P22_STARTED_ON'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(671333308894937460)
,p_item_source_plug_id=>wwv_flow_imp.id(671333308894937460)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Started On'
,p_source=>'STARTED_ON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(671335225349937469)
,p_name=>'P22_APP_SESSION'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(671333308894937460)
,p_item_source_plug_id=>wwv_flow_imp.id(671333308894937460)
,p_use_cache_before_default=>'NO'
,p_prompt=>'App Session'
,p_source=>'APP_SESSION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(671334977759937469)
,p_validation_name=>'P22_STARTED_ON must be timestamp'
,p_validation_sequence=>20
,p_validation=>'P22_STARTED_ON'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(671334431511937466)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(671337282902937476)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(671337152052937476)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(671338023388937479)
,p_event_id=>wwv_flow_imp.id(671337282902937476)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(671340149237937485)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(671333308894937460)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Conversations'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8734643023785587
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(671340532414937486)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(671338986104937481)
,p_internal_uid=>8735026200785588
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(671339714977937484)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(671333308894937460)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Conversations'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8734208763785586
);
end;
/
prompt --application/pages/page_00023
begin
wwv_flow_imp_page.create_page(
 p_id=>23
,p_name=>'Prompts'
,p_alias=>'PROMPTS'
,p_page_mode=>'MODAL'
,p_step_title=>'Prompts'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(671363194319937843)
,p_plug_name=>'Prompts'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'PROMPTS'
,p_include_rowid_column=>true
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(671368174537937855)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(671368572338937856)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(671368174537937855)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(671369908567937859)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(671368174537937855)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P23_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(671370404999937860)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(671368174537937855)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P23_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(671370770211937861)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(671368174537937855)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P23_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(671363570854937844)
,p_name=>'P23_ROWID'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(671363194319937843)
,p_item_source_plug_id=>wwv_flow_imp.id(671363194319937843)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rowid'
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(671363990517937845)
,p_name=>'P23_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(671363194319937843)
,p_item_source_plug_id=>wwv_flow_imp.id(671363194319937843)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(671364313901937846)
,p_name=>'P23_CONV_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(671363194319937843)
,p_item_source_plug_id=>wwv_flow_imp.id(671363194319937843)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Conv Id'
,p_source=>'CONV_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(671364791994937847)
,p_name=>'P23_PROMPT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(671363194319937843)
,p_item_source_plug_id=>wwv_flow_imp.id(671363194319937843)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Prompt'
,p_source=>'PROMPT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(671365180224937848)
,p_name=>'P23_RESPONSE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(671363194319937843)
,p_item_source_plug_id=>wwv_flow_imp.id(671363194319937843)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Response'
,p_source=>'RESPONSE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(671365585451937849)
,p_name=>'P23_ASKED_ON'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(671363194319937843)
,p_item_source_plug_id=>wwv_flow_imp.id(671363194319937843)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Asked On'
,p_source=>'ASKED_ON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(671366096920937850)
,p_validation_name=>'P23_ASKED_ON must be timestamp'
,p_validation_sequence=>50
,p_validation=>'P23_ASKED_ON'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(671365585451937849)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(671368659027937856)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(671368572338937856)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(671369435504937858)
,p_event_id=>wwv_flow_imp.id(671368659027937856)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(671371565135937862)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(671363194319937843)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Prompts'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8766058921785964
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(671371907989937863)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_01=>'P23_ROWID,REQUEST'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>8766401775785965
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(671371183486937861)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(671363194319937843)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Prompts'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8765677272785963
);
end;
/
prompt --application/pages/page_00024
begin
wwv_flow_imp_page.create_page(
 p_id=>24
,p_name=>'Upload File'
,p_alias=>'UPLOAD-FILE'
,p_page_mode=>'MODAL'
,p_step_title=>'Upload File'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(214317834677831815)
,p_plug_name=>'BTN Container'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(214317923164831816)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(214317834677831815)
,p_button_name=>'Submit'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Submit Upload'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(214318188353831818)
,p_branch_action=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(214317787314831814)
,p_name=>'P24_FILE_UPLOAD'
,p_item_sequence=>10
,p_prompt=>'File Upload'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_multiple_files', 'N',
  'display_as', 'DROPZONE_INLINE',
  'purge_file_at', 'SESSION',
  'storage_type', 'APEX_APPLICATION_TEMP_FILES')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(214318098159831817)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Upload File'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_request_url varchar(32000);',
'    l_content_length number;',
'    l_response clob;',
'    upload_failed_exception exception;',
'    l_request_object blob;',
'    l_request_filename varchar2(500);',
'    begin',
'',
'',
'    ',
'        select blob_content, filename into l_request_object, l_request_filename from apex_application_temp_files where name = :P24_FILE_UPLOAD;',
'',
'        l_request_url := :G_URL||''/n/''||:TENANCY_NAME||''/b/''||:P9_BUCKET_SEARCH||''/o/'' || l_request_filename;   --utl_url.escape(l_request_filename);        ',
'',
'        apex_web_service.set_request_headers(',
'        p_name_01        => ''Content-Type'',',
'        p_value_01       => ''application/json'',',
'        p_name_02        => ''User-Agent'',',
'        p_value_02       => ''APEX'' );',
'',
'        ',
'l_response := apex_web_service.make_rest_request(',
'            p_url => l_request_url,',
'            p_http_method => ''PUT'',',
'            p_body_blob => l_request_object,',
'            p_credential_static_id => ''credentials_for_list_compartments_in_tenancy''',
'        );end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'File Uploaded!'
,p_internal_uid=>214318098159831817
);
end;
/
prompt --application/pages/page_00025
begin
wwv_flow_imp_page.create_page(
 p_id=>25
,p_name=>'Home Page'
,p_alias=>'HOME-PAGE'
,p_step_title=>'Home Page'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(214318212496831819)
,p_plug_name=>'Welcome Content'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="en">',
'<head>',
'    <meta charset="UTF-8">',
'    <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'    <title>Home Page with Floating Icons - APEX Application</title>',
'    <style>',
'        body {',
'            font-family: ''Arial'', sans-serif;',
'            background-color: #f5f7fa;',
'            color: #333;',
'            margin: 0;',
'            padding: 0;',
'            position: relative;',
'            min-height: 100vh;',
'        }',
'        .container {',
'            width: 100%;',
'            margin: 0 auto;',
'            padding: 20px;',
'            position: relative;',
'            z-index: 1;',
'        }',
'        .header {',
'            background-color: #2c3e50;',
'            color: white;',
'            padding: 20px;',
'            text-align: center;',
'            border-radius: 5px 5px 0 0;',
'        }',
'        .dashboard-cards {',
'            display: flex;',
'            flex-wrap: wrap;',
'            gap: 20px;',
'            margin-top: 20px;',
'        }',
'        .card {',
'            background-color: white;',
'            border-radius: 5px;',
'            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);',
'            padding: 20px;',
'            flex: 1;',
'            min-width: 250px;',
'            text-align: center;',
'        }',
'        .card h3 {',
'            margin-top: 0;',
'            color: #2c3e50;',
'        }',
'        .card-value {',
'            font-size: 2em;',
'            color: #3498db;',
'            margin: 10px 0;',
'        }',
'        .quick-links {',
'            margin-top: 30px;',
'            padding: 20px;',
'            background-color: white;',
'            border-radius: 5px;',
'            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);',
'        }',
'        .quick-links h2 {',
'            color: #2c3e50;',
'            margin-top: 0;',
'        }',
'        .link-grid {',
'            display: grid;',
'            grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));',
'            gap: 15px;',
'        }',
'        .link-item {',
'            background-color: #3498db;',
'            color: white;',
'            padding: 15px;',
'            border-radius: 5px;',
'            text-decoration: none;',
'            display: block;',
'            transition: background-color 0.3s;',
'        }',
'        .link-item:hover {',
'            background-color: #2980b9;',
'        }',
'        .footer {',
'            margin-top: 40px;',
'            text-align: center;',
'            color: #777;',
'            font-size: 0.9em;',
'            padding: 10px;',
'        }',
'        .icon-container {',
'            position: absolute;',
'            top: 0;',
'            left: 0;',
'            width: 100%;',
'            height: 100%;',
'            pointer-events: none;',
'            z-index: 0;',
'            overflow: hidden;',
'        }',
'        .floating-icon {',
'            position: absolute;',
'            font-size: 3em;',
'            color: #3498db;',
'            opacity: 0;',
'            animation: floatUp linear infinite;',
'        }',
'        @keyframes floatUp {',
'            0% {',
'                transform: translateY(100vh);',
'                opacity: 0.5;',
'            }',
'            50% {',
'                opacity: 0.8;',
'            }',
'            100% {',
'                transform: translateY(-100vh);',
'                opacity: 0.5;',
'            }',
'        }',
'    </style>',
'</head>',
'<body>',
'    <div class="container">',
'        <div class="header">',
'            <h1>Welcome to Search23ai</h1>',
'            <p>Your central hub for all things search in Oracle DB 26ai.</p>',
'        </div>',
'',
'        <div class="dashboard-cards">',
'            <div class="card">',
'                <h3>Key Metric 1</h3>',
'                <div class="card-value">1,234</div>',
'                <p>Track important business data here.</p>',
'            </div>',
'            <div class="card">',
'                <h3>Key Metric 2</h3>',
'                <div class="card-value">56%</div>',
'                <p>Monitor progress and performance.</p>',
'            </div>',
'            <div class="card">',
'                <h3>Key Metric 3</h3>',
'                <div class="card-value">789</div>',
'                <p>Quick overview of critical stats.</p>',
'            </div>',
'        </div>',
'        </br>',
'        <div class="quick-links">',
'            <h2>Quick Links</h2>',
'            <div class="link-grid"><b>View Documents:  </b>',
'                <a href="https://ijegqeyui1cwvrq-dgcadw3.adb.us-ashburn-1.oraclecloudapps.com/ords/r/search23ai/aisearch102105100/search-documents/?session=&SESSION." class="link-item"><span class="fa fa-binoculars"></span>View Documents</a>',
'                <a href="https://ijegqeyui1cwvrq-dgcadw3.adb.us-ashburn-1.oraclecloudapps.com/ords/r/search23ai/aisearch102105100/view-image-documents/?session=&SESSION." class="link-item"><span class="fa fa-file-image-o"></span>View Images</a>',
'                <a href="https://ijegqeyui1cwvrq-dgcadw3.adb.us-ashburn-1.oraclecloudapps.com/ords/r/search23ai/aisearch102105100/update-document?session=&SESSION." class="link-item"><span class="fa fa-ai-sparkle-generate-document"></span> Add Docume'
||'nts</a>',
'            </div>',
'        </br>',
'            <div class="link-grid"><b>Search Documents:  </b>',
'                <a href="https://ijegqeyui1cwvrq-dgcadw3.adb.us-ashburn-1.oraclecloudapps.com/ords/r/search23ai/aisearch102105100/document-detail1/?session=&SESSION." class="link-item"><span class="fa fa-clipboard-search"></span>Search a Document</a>',
'                <a href="https://ijegqeyui1cwvrq-dgcadw3.adb.us-ashburn-1.oraclecloudapps.com/ords/r/search23ai/aisearch102105100/llm-conversation/?session=&SESSION." class="link-item"><span class="fa fa-cloud-search"></span>Search Across Documents</'
||'a>',
'                <a href="https://ijegqeyui1cwvrq-dgcadw3.adb.us-ashburn-1.oraclecloudapps.com/ords/r/search23ai/aisearch102105100/vector-keyword-search?session=&SESSION." class="link-item"><span class="fa fa-ai-sparkle-generate-document"></span>Vecto'
||'r Search With Keyword</a>',
'                <a href="https://ijegqeyui1cwvrq-dgcadw3.adb.us-ashburn-1.oraclecloudapps.com/ords/r/search23ai/aisearch102105100/global-search?session=&SESSION." class="link-item"><span class="fa fa-cloud-search"></span>Global Search</a>',
'                <a href="https://ijegqeyui1cwvrq-dgcadw3.adb.us-ashburn-1.oraclecloudapps.com/ords/r/search23ai/aisearch102105100/hybrid-search?session=&SESSION." class="link-item"><span class="fa fa-table"></span>Hybrid Search</a>',
'            </div>',
'        </br>',
'           <div class="link-grid"><b>Run Agents:  </b>',
'                <a href="https://ijegqeyui1cwvrq-dgcadw3.adb.us-ashburn-1.oraclecloudapps.com/ords/r/search23ai/aisearch102105100/run_agent_team?session=&SESSION." class="link-item"><span class="fa fa-workflow"></span>Run Agent Team</a>',
'            </div>',
'        </br>',
'           <div class="link-grid"><b>Maintain Object Storage:  </b>',
'                <a href="https://ijegqeyui1cwvrq-dgcadw3.adb.us-ashburn-1.oraclecloudapps.com/ords/r/search23ai/aisearch102105100/list-objects?session=&SESSION." class="link-item"><span class="fa fa-files-o"></span>Maintain Object Storage</a>',
'            </div>',
'        </br>',
'           <div class="link-grid"><b>Configure:  </b>',
'                <a href="https://ijegqeyui1cwvrq-dgcadw3.adb.us-ashburn-1.oraclecloudapps.com/ords/r/search23ai/aisearch102105100/prompt-instructions?session=&SESSION." class="link-item"><span class="fa fa-ai-prompt"></span>Prompt Instructions</a>',
'                 <a href="https://ijegqeyui1cwvrq-dgcadw3.adb.us-ashburn-1.oraclecloudapps.com/ords/r/search23ai/aisearch102105100/ai-configuration?session=&SESSION." class="link-item"><span class="fa fa-ai"></span>AI Configuration</a>',
'                 <a href="https://ijegqeyui1cwvrq-dgcadw3.adb.us-ashburn-1.oraclecloudapps.com/ords/r/search23ai/aisearch102105100/domains?session=&SESSION." class="link-item"><span class="fa fa-table"></span>Domains</a>',
'                 <a href="https://ijegqeyui1cwvrq-dgcadw3.adb.us-ashburn-1.oraclecloudapps.com/ords/r/search23ai/aisearch102105100/update-ai_agents?session=&SESSION." class="link-item"><span class="fa fa-table"></span>AI Agents</a>',
'        </div>',
'        </div>',
'',
'        <div class="footer">',
'            <p>Oracle APEX</p>',
'        </div>',
'    </div>',
'',
'    <div class="icon-container" id="iconContainer"></div>',
'',
'    <script>',
'        const icons = [',
'            ''<span class="fa fa-database-search fa-lg" aria-hidden="true"></span>'',',
'            ''<span aria-hidden="true" class="fa fa-ai fa-lg"></span>'',',
'            ''<span aria-hidden="true" class="fa fa-ai-innovation-lightbulb fa-lg"></span>'',',
'            ''<span aria-hidden="true" class="fa fa-ai-sparkle-zoom-out fa-lg"></span>'',',
'            ''<span aria-hidden="true" class="fa fa-head-ai-sparkle fa-lg"></span>'',',
'            ''<span aria-hidden="true" class="fa fa-ai-sparkle-scan fa-lg"></span>'',',
'            ''<span aria-hidden="true" class="fa fa-robot fa-lg"></span>''',
'        ];',
'        const container = document.getElementById(''iconContainer'');',
'        const iconCount = 15;',
'',
'        function createFloatingIcons() {',
'            for (let i = 0; i < iconCount; i++) {',
'                const iconDiv = document.createElement(''div'');',
'                iconDiv.classList.add(''floating-icon'');',
'                iconDiv.innerHTML = icons[Math.floor(Math.random() * icons.length)];',
'                ',
'                const startX = Math.random() * 90 + 5;',
'                const duration = Math.random() * 15 + 10;',
'                const delay = Math.random() * 5;',
'                const deviation = (Math.random() - 0.5) * 30;',
'                const initialY = Math.random() * 100;',
'                const sizeVariation = Math.random() * 0.5 + 0.75; ',
'',
'                iconDiv.style.left = `${startX}%`;',
'                iconDiv.style.fontSize = `${3 * sizeVariation}em`; ',
'                iconDiv.style.animationDuration = `${duration}s`;',
'                iconDiv.style.animationDelay = `${delay}s`;',
'                iconDiv.style.transform = `translateY(100vh) translateX(${deviation}vw)`;',
'                iconDiv.style.animationTimingFunction = `cubic-bezier(${Math.random()*0.5 + 0.25}, ${Math.random()*0.5}, ${Math.random()*0.5}, ${Math.random()*0.5 + 0.5})`;',
'',
'                container.appendChild(iconDiv);',
'            }',
'        }',
'',
'        createFloatingIcons();',
'    </script>',
'</body>',
'</html>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(282012831046294476)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(684135560487772350)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
end;
/
prompt --application/pages/page_00029
begin
wwv_flow_imp_page.create_page(
 p_id=>29
,p_name=>'Update AI Agents'
,p_alias=>'UPDATE-AI-AGENTS'
,p_step_title=>'Update AI Agents'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(292064656179252973)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(684135560487772350)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(292065311313252961)
,p_plug_name=>'Update AI Agents'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_query_type=>'TABLE'
,p_query_table=>'AGENTS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_prn_page_header=>'Update AI Agents'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(292066695014252951)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(292067116067252949)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(292068172159252943)
,p_name=>'AGENT_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AGENT_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(292065835292252959)
,p_internal_uid=>292065835292252959
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(292066201455252956)
,p_interactive_grid_id=>wwv_flow_imp.id(292065835292252959)
,p_static_id=>'2920663'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(292066425669252954)
,p_report_id=>wwv_flow_imp.id(292066201455252956)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(292067526085252947)
,p_view_id=>wwv_flow_imp.id(292066425669252954)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(292067116067252949)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(292068530737252941)
,p_view_id=>wwv_flow_imp.id(292066425669252954)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(292068172159252943)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(292069066510252935)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(292065311313252961)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Update AI Agents - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>292069066510252935
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'AI Demos - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2101157952850466385
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(684432726759773708)
,p_plug_name=>'AI Demos'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2674157997338192145
,p_plug_display_sequence=>10
,p_location=>null
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(684434846957773725)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(684432726759773708)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(684433261980773717)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(684432726759773708)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(684433618389773720)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(684432726759773708)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(684434033088773722)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(684432726759773708)
,p_prompt=>'Remember username'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled and not apex_authentication.persistent_auth_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(684434414571773724)
,p_name=>'P9999_PERSISTENT_AUTH'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(684432726759773708)
,p_prompt=>'Remember me'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_auth_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(684437025812773735)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'SEND_LOGIN_USERNAME_COOKIE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11099950038186011
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(684437492409773736)
,p_page_process_id=>wwv_flow_imp.id(684437025812773735)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(684438012966773736)
,p_page_process_id=>wwv_flow_imp.id(684437025812773735)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(684435076421773727)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'LOGIN'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11098000647186003
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(684435614595773730)
,p_page_process_id=>wwv_flow_imp.id(684435076421773727)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(684436108040773734)
,p_page_process_id=>wwv_flow_imp.id(684435076421773727)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(684436591764773735)
,p_page_process_id=>wwv_flow_imp.id(684435076421773727)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'ITEM'
,p_value=>'P9999_PERSISTENT_AUTH'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(684438888824773737)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11101813050186013
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(673352046290164683)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create New Conversation'
,p_process_sql_clob=>'chathistory_pkg.prc_add_conversation(:APP_USER, SYSTIMESTAMP,:APP_SESSION)'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2178031875192919
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(684438491665773737)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>11101415891186013
);
end;
/
prompt --application/pages/page_20000
begin
wwv_flow_imp_page.create_page(
 p_id=>20000
,p_name=>'Settings'
,p_alias=>'SETTINGS'
,p_page_mode=>'MODAL'
,p_step_title=>'Settings'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(684448713662773859)
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:t-Dialog--noPadding:js-dialog-class-t-Drawer--pullOutEnd:js-dialog-class-t-Drawer--md'
,p_required_patch=>wwv_flow_imp.id(684449211438773863)
,p_protection_level=>'C'
,p_help_text=>'This page contains a list of settings applicable to the current application user.'
,p_page_component_map=>'23'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(684453840117773881)
,p_plug_name=>'&APP_USER.'
,p_region_template_options=>'#DEFAULT#:t-HeroRegion--hideIcon'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_application_auth ',
' where application_id            = :APP_ID ',
'   and is_current_authentication = ''Y'' ',
'   and scheme_type_code          = ''NATIVE_APEX_ACCOUNTS'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(684454238924773884)
,p_plug_name=>'&APP_USER.'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleB'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>20
,p_query_type=>'TABLE'
,p_query_table=>'APEX_WORKSPACE_APEX_USERS'
,p_query_where=>'user_name = :APP_USER'
,p_include_rowid_column=>false
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 ',
'  from apex_application_auth ',
' where application_id            = :APP_ID ',
'   and is_current_authentication = ''Y'' ',
'   and scheme_type_code          = ''NATIVE_APEX_ACCOUNTS'''))
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(684454740823773886)
,p_region_id=>wwv_flow_imp.id(684454238924773884)
,p_layout_type=>'ROW'
,p_card_css_classes=>'a-CardView--noUI'
,p_title_adv_formatting=>false
,p_title_column_name=>'USER_NAME'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'EMAIL'
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'INITIALS'
,p_icon_class_column_name=>'EMAIL'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(684455223900773890)
,p_plug_name=>'Settings'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-MediaList--showBadges:u-colors'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_list_id=>wwv_flow_imp.id(684452846670773877)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
);
end;
/
prompt --application/pages/page_20010
begin
wwv_flow_imp_page.create_page(
 p_id=>20010
,p_name=>'Push Notifications'
,p_alias=>'PUSH-NOTIFICATIONS'
,p_page_mode=>'MODAL'
,p_step_title=>'Settings - Push Notifications'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(684448713662773859)
,p_javascript_code_onload=>'apex.pwa.initPushSubscriptionPage();'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_patch=>wwv_flow_imp.id(684448930849773860)
,p_protection_level=>'C'
,p_help_text=>'This page contains the settings for controlling push notification subscription for the current user.'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(684450271432773866)
,p_plug_name=>'Push Notifications Not Supported'
,p_region_css_classes=>'a-pwaPush--subscriptionRegion--not-supported'
,p_icon_css_classes=>'fa-bell-slash-o'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--wizard:t-Alert--customIcons:t-Alert--warning:t-Alert--removeHeading js-removeLandmark:t-Form--xlarge'
,p_region_attributes=>'style="display:none;"'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'Push notifications are not currently supported in your browser.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(684450587841773868)
,p_plug_name=>'Push Notifications'
,p_region_css_classes=>'a-pwaPush--subscriptionRegion'
,p_icon_css_classes=>'fa-bell-o'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--wizard:t-Alert--customIcons:t-Alert--info:t-Alert--removeHeading js-removeLandmark:t-Form--xlarge'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'Push notifications have to be enabled for each device you want to receive the notifications on. The first time you enable push notifications, you will have to grant permission to your browser. This setting can be changed at any time.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(684449893460773866)
,p_button_sequence=>10
,p_button_name=>'BACK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--link:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Settings'
,p_button_redirect_url=>'f?p=&APP_ID.:20000:&APP_SESSION.::&DEBUG.:::'
,p_button_css_classes=>'t-Button--inlineLink'
,p_icon_css_classes=>'fa-chevron-left'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(684451079081773869)
,p_name=>'P20010_ENABLE_PUSH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(684450587841773868)
,p_prompt=>'Enable push notifications on this device'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#:margin-top-sm'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(684451409793773870)
,p_name=>'Change P20010_ENABLE_PUSH'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P20010_ENABLE_PUSH'
,p_condition_element=>'P20010_ENABLE_PUSH'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(684451936299773873)
,p_event_id=>wwv_flow_imp.id(684451409793773870)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Subscribe to push notifications'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.pwa.subscribePushNotifications();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(684452424553773876)
,p_event_id=>wwv_flow_imp.id(684451409793773870)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Unsubscribe from push notifications'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.pwa.unsubscribePushNotifications();'
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_imp_shared.create_install(
 p_id=>wwv_flow_imp.id(673340411963592254)
);
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
