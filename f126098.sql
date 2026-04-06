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
,p_release=>'24.2.14'
,p_default_workspace_id=>152275151234522313135
,p_default_application_id=>126098
,p_default_id_offset=>0
,p_default_owner=>'WKSP_SASINI'
);
end;
/
 
prompt APPLICATION 126098 - CycleHub
--
-- Application Export:
--   Application:     126098
--   Name:            CycleHub
--   Date and Time:   14:57 Monday April 6, 2026
--   Exported By:     SASINIAMARATHUNGA2005@GMAIL.COM
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     34
--       Items:                   72
--       Validations:              2
--       Processes:               30
--       Regions:                 88
--       Buttons:                 53
--       Dynamic Actions:         22
--     Shared Components:
--       Logic:
--         App Settings:           2
--         Build Options:          9
--       Navigation:
--         Lists:                  9
--         Breadcrumbs:            1
--           Entries:              7
--       Security:
--         Authentication:         1
--         Authorization:          3
--         ACL Roles:              3
--       User Interface:
--         Themes:                 1
--         Templates:
--         LOVs:                  10
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--   Version:         24.2.14
--   Instance ID:     63113759365424
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
,p_owner=>nvl(wwv_flow_application_install.get_schema,'WKSP_SASINI')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'CycleHub')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'CYCLEHUB')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'E149A7B46B030D22F2638CBD41F1074A6442753D4FAFAE39478610B2814B4C41'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'24.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(154889405766567433533)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'CycleHub'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_runtime_api_usage=>'T'
,p_security_scheme=>wwv_flow_imp.id(154889413153894433549)
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'CycleHub'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>6
,p_version_scn=>15753216700020
,p_print_server_type=>'INSTANCE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'Y'
,p_pwa_manifest_display=>'standalone'
,p_pwa_manifest_orientation=>'any'
,p_pwa_apple_status_bar_style=>'default'
,p_pwa_is_push_enabled=>'Y'
,p_pwa_push_credential_id=>wwv_flow_imp.id(154889698291852434332)
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_imp_shared.create_user_interface(
 p_id=>wwv_flow_imp.id(126098)
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(154889406646805433534)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2467739217141810545
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(154889407819809433537)
,p_nav_bar_list_template_id=>2847543055748234966
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --workspace/credentials/app_126098_push_notifications_credentials
begin
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(154889698291852434332)
,p_name=>'App 126098 Push Notifications Credentials'
,p_static_id=>'App_126098_Push_Notifications_Credentials'
,p_authentication_type=>'KEY_PAIR'
,p_prompt_on_install=>false
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(154889406646805433534)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>15753042826223
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(154889423383154433566)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(154889424926984433569)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-dashboard'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(154889435070482433579)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Bicycles Search'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table-search'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(154889445559319433598)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Bicycles Report'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(155052458564022214043)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Customers'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-users'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'7,8'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(155059581411635354215)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Payments'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-money-bag'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'9,10'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(154889672115020434302)
,p_list_item_display_sequence=>10000
,p_list_item_link_text=>'Administration'
,p_list_item_link_target=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-user-wrench'
,p_security_scheme=>wwv_flow_imp.id(154889413070980433549)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(154889407819809433537)
,p_name=>'Navigation Bar'
,p_list_status=>'PUBLIC'
,p_version_scn=>15752729745591
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(154889668350938434298)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Install App'
,p_list_item_link_target=>'#action$a-pwa-install'
,p_list_item_icon=>'fa-cloud-download'
,p_list_text_02=>'a-pwaInstall'
,p_list_item_current_type=>'NEVER'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(154889668714107434299)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Feedback'
,p_list_item_link_target=>'f?p=&APP_ID.:10050:&APP_SESSION.::&DEBUG.:RP,10050:P10050_PAGE_ID:&APP_PAGE_ID.'
,p_list_item_icon=>'fa-comment-o'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>'apex_util.feedback_enabled'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(154889410589071433546)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(154889669022204434299)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'About'
,p_list_item_icon=>'fa-question-circle-o'
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(154889411019301433546)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(154889669547834434299)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Page Help'
,p_list_item_link_target=>'f?p=&APP_ID.:10061:&APP_SESSION.::&DEBUG.::P10061_PAGE_ID:&APP_PAGE_ID.'
,p_list_item_icon=>'fa-question-circle-o'
,p_parent_list_item_id=>wwv_flow_imp.id(154889669022204434299)
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(154889411019301433546)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(154889669994981434300)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_imp.id(154889669022204434299)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(154889670368710434300)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'About Page'
,p_list_item_link_target=>'f?p=&APP_ID.:10060:&APP_SESSION.::&DEBUG.:10060::'
,p_list_item_icon=>'fa-info-circle-o'
,p_parent_list_item_id=>wwv_flow_imp.id(154889669022204434299)
,p_required_patch=>wwv_flow_imp.id(154889411019301433546)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(154889670630526434300)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(154889697981711434332)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'Settings'
,p_list_item_link_target=>'f?p=&APP_ID.:20000:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-gear'
,p_parent_list_item_id=>wwv_flow_imp.id(154889670630526434300)
,p_required_patch=>wwv_flow_imp.id(154889691553538434324)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(154889671102418434301)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(154889670630526434300)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(154889671518911434301)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(154889670630526434300)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/page_navigation
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(154889493271940434065)
,p_name=>'Page Navigation'
,p_list_status=>'PUBLIC'
,p_version_scn=>15752729713641
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(154889493642270434066)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-dashboard'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(154889494065479434067)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Bicycles Search'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table-search'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(154889494435648434067)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Bicycles Report'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/application_configuration
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(154889673256008434303)
,p_name=>'Application Configuration'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(154889410735965433546)
,p_version_scn=>15752729739720
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(154889673614545434303)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Configuration Options'
,p_list_item_link_target=>'f?p=&APP_ID.:10010:&APP_SESSION.::&DEBUG.:10010::'
,p_list_item_icon=>'fa-sliders'
,p_list_text_01=>'Enable or disable application features'
,p_required_patch=>wwv_flow_imp.id(154889410735965433546)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/user_interface
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(154889673933435434304)
,p_name=>'User Interface'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(154889411150683433546)
,p_version_scn=>15752729739766
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(154889674319376434304)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Theme Style Selection'
,p_list_item_link_target=>'f?p=&APP_ID.:10020:&APP_SESSION.::&DEBUG.:10020::'
,p_list_item_icon=>'fa-paint-brush'
,p_list_text_01=>'Set the default application look and feel'
,p_required_patch=>wwv_flow_imp.id(154889411150683433546)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/activity_reports
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(154889674644101434304)
,p_name=>'Activity Reports'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(154889410402932433546)
,p_version_scn=>15752729740219
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(154889675034231434304)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:10030:&APP_SESSION.::&DEBUG.:10030::'
,p_list_item_icon=>'fa-area-chart'
,p_list_text_01=>'View application activity metrics'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(154889675465773434305)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Top Users'
,p_list_item_link_target=>'f?p=&APP_ID.:10031:&APP_SESSION.::&DEBUG.:10031::'
,p_list_item_icon=>'fa-user-chart'
,p_list_text_01=>'Report of page views aggregated by user'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(154889675880507434305)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Application Error Log'
,p_list_item_link_target=>'f?p=&APP_ID.:10032:&APP_SESSION.::&DEBUG.:10032::'
,p_list_item_icon=>'fa-exclamation'
,p_list_text_01=>'Report of errors logged by this application'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(154889676225562434305)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Page Performance'
,p_list_item_link_target=>'f?p=&APP_ID.:10033:&APP_SESSION.::&DEBUG.:10033::'
,p_list_item_icon=>'fa-file-chart'
,p_list_text_01=>'Report of activity and performance by application page'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(154889676674536434306)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Page Views'
,p_list_item_link_target=>'f?p=&APP_ID.:10034:&APP_SESSION.::&DEBUG.:RR,10034::'
,p_list_item_icon=>'fa-file-search'
,p_list_text_01=>'Report of each page view by user including date of access and elapsed time'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(154889677041381434306)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Automations Log'
,p_list_item_link_target=>'f?p=&APP_ID.:10035:&APP_SESSION.::&DEBUG.:RR,10035::'
,p_list_item_icon=>'fa-gears'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from apex_appl_automations a, apex_automation_log l',
'where a.automation_id = l.automation_id',
'and l.application_id = :APP_ID'))
,p_list_text_01=>'Report of automation executions and messages logged by this application'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/access_control
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(154889677370490434306)
,p_name=>'Access Control'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(154889410322679433546)
,p_version_scn=>15752729740433
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(154889677720017434307)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Users'
,p_list_item_link_target=>'f?p=&APP_ID.:10041:&APP_SESSION.::&DEBUG.:RP::'
,p_list_item_icon=>'fa-users'
,p_list_text_01=>'Set level of access for authenticated users of this application'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(154889678102044434307)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Access Control'
,p_list_item_link_target=>'f?p=&APP_ID.:10040:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-key'
,p_list_text_01=>'Change access control settings and disable access control'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/feedback
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(154889678415738434307)
,p_name=>'Feedback'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(154889410589071433546)
,p_version_scn=>15752729740546
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(154889678859044434307)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'User Feedback'
,p_list_item_link_target=>'f?p=&APP_ID.:10053:&APP_SESSION.::&DEBUG.:10053::'
,p_list_item_icon=>'fa-comment-o'
,p_list_text_01=>'Report of all feedback submitted by application users'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/user_settings
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(154889695150672434328)
,p_name=>'User Settings'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(154889691553538434324)
,p_version_scn=>15752729745310
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(154889695504904434328)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Push Notifications'
,p_list_item_link_target=>'f?p=&APP_ID.:20010:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-bell-o'
,p_list_text_01=>'Configure whether you want to receive push notifications on this device.'
,p_list_text_02=>'<span class="a-pwaPush--state"></span>'
,p_required_patch=>wwv_flow_imp.id(154889691238167434324)
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
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000002D3494441547801EC555D485361187E7656DB8EDB1A360D65199A14452121F443D10F5E18641051460495D65544D9AD755317D54D7411111106E6452515148B02';
wwv_flow_imp.g_varchar2_table(2) := '3308C2EA4ABC080AC4A869C34DE7B6D4B3B33FD7F77C4B6F02CF710442EC709EF77BDEF73BDF7B9EF3BEDFB729E7AFDECD2D26142CF2551450AC40B1020557201609A3D6E795202FF4342B852E5C6AB3A37EE33A09F242F31424209B4E6265451906BFFD';
wwv_flow_imp.g_varchar2_table(3) := '90F0ADF022934ACE69D0B56924A627E7FCF9C88204A4923A7C5E372EB7B5A0FDCC711C3BD02871F1EC095C11B1AA720F32E91432993414C53ADF7BE7E64C0B60E2C61DF5686B6D86BB449509429128083A6EA78A73270FA1616B1DD812BB5AC2B0214C09';
wwv_flow_imp.g_varchar2_table(4) := '9899C9A2BAD28B7D7BB641D393189B88C9C409C1093AE1480CE4FB1BB6A3C6570EE4720C1BC294002B66D072B84926FB35A5E1EB5040F26A5F05083A5F86BE634AD349D12A9ECD65D3921B19530236ACA9C13257BEA41565A5D8B9B9EEAFBCBBB76C42F9';
wwv_flow_imp.g_varchar2_table(5) := '728F8C7BDC4EACAF5D25B99131149013A574AA369987FD26A4234CC7633FEE77BF142C7F738EA0E771BB3818C2500033E87A8A83EC31FB2C1D612C8A8289785CC6852BC7D9F9642ABF86F1F96028C062B16024149639D86F423AC29C3ED2840BA78EE279';
wwv_flow_imp.g_varchar2_table(6) := 'CF7BB9393947405C81E0A8B0C6B7A100A608044318191D2345683C8A0FFD9F25A759BAC48A837B77A1DBDF2B36618221048261044311C98D8C2901AAD383AE67AF652E6EB0B5355592B3DF84C36E43735303781439D1F9C40FBBEA24358429018AE87538';
wwv_flow_imp.g_varchar2_table(7) := '3A8957EF3E812F2B2BCDEF76F69BE05B5CE2C769755525FC6FFB301ED7C0FDC1B8114C0960129B43454F5F3F6E753EC5F49FF3CE7E139C9FD412B8D9F108BD1F07E02831F7F55C675A001FB6D91D181E8BA3FDC63D5CBBFD000F5FF408BCC1F53B5DB824';
wwv_flow_imp.g_varchar2_table(8) := '623F2353B00BA17CD62C162480492D168BF84217627A1603832302C3886A191173C36A35F707C43CB358B080D985FF6A2C0A2856E0FFAF80D169F90D0000FFFF5B09E3B200000006494441540300166E4A907BC0B1CC0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(154889408999670433540)
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
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B800001000494441547801EC5D09781455B6FE6F2FD9F7851D7101757081A7820A681C047474061DDEE813C7519081246802280292A8C847E2082E90082488888EEF39A3';
wwv_flow_imp.g_varchar2_table(2) := 'CC73DC0515C105C515C401177440D902D9F7B56BCEA9EEE0F225E9EEAAEAA5BA6F7F75AB6E6E9D7BCFB9FFF9FBAE551D0BE44722A0030149201DE0C9AC80249064812E04248174C127334B02490EE842401248177C32B32490E4802E0434134897569939';
wwv_flow_imp.g_varchar2_table(3) := '641090040A195706A622924081C13D64B44A02858C2B03531149A0C0E01E325A258142C69581A988245060700F19ADFE279007D0DD7CFF63F13397AEEC93B3B4F4949CC525C37297AC1935ABA0647CCE9292DF8543E0BA729DB9EE8C0163C19878009DDF';
wwv_flow_imp.g_varchar2_table(4) := '45024B204511B716969E9E5B587AD3AC82D5AB720B4A3FCE2D28698D6B6FABB5B5590F8B3665AFB0620784E33D05D824045E0887C075E53A73DD1903C68231616C729D18AD64CC183B108608E0C7AF04CA295C973EAB70D5C49C25AB0B720B57BF9E5B58';
wwv_flow_imp.g_varchar2_table(5) := '5A6551943D04C27A05221B50CE252CEC14E4D13502848D8AD14CC68CB1630C552C0B4A9770EB3C67D1DA94AEB3FA26D57F04A26F8A70B48EA2CB7C21C44228621C552991823CF42190E8C452C9B308CC7744B48D2272097D457A9EDBE7049A515A6A9F55';
wwv_flow_imp.g_varchar2_table(6) := 'B87A3A7D53BE84C03F01310AF2E313041460347D415F24ACF7CC2A2C99C6D8FB44D14F0AF52981E62C59DD3FAA1CEF53A5D690CE5329C8C33F089CA628581B5DAE6CCBA161832F55FA8C40398525433B84D8EE1AD7F8B20EB2EC6E10A016E93CA1B4BE3F';
wwv_flow_imp.g_varchar2_table(7) := '67F19A33BA11D19DEC1302E52E291D23146C23EBFA5330E890C56844E0940EABE3BD9CC235191AF3F798CD700271CB03A16C24AD72804C2004C9912814C72BBE68890C25D08C45A531D4F23C4BA0C5509047702110D36E73FC9D7D64A459861228CAE658';
wwv_flow_imp.g_varchar2_table(8) := '45C60DA5208F204480BEDC67B87C649875861128A760F5140871936196C9827C8300F948F59541A51B42A0390F3D142D201E32C826598C8F11205F3D3883861B46A83184401D8D31DCF2241B61902CC32F08A444D9941B8DD0A49F408A4284C66C04EF47';
wwv_flow_imp.g_varchar2_table(9) := '5AD6150242E41AB1E5A19B40B97F29BD8CEC3B8D823C4C8580F22B97EF7459AD9B408A03B2F581393F46F84E1781A62C7A3C4A00E3CD099FB49A7DC713203D48E8225092B5F90252AEAB0CCA2F8FC02160511AA2CFD7A35E97F31D560B13488F7E9937C0';
wwv_flow_imp.g_varchar2_table(10) := '08E8F5A12E02D1285E1228C004D0AD5E5174F9503381149EBE0363745720880B0813D30243A05B96ADEA4D00A7529087B911E87D4BE1239AFDA8B9058A74D8352B3537DEA1677D8425A28FD65A69269043817C64432BEA41964F8F2F7510A85D1228C888';
wwv_flow_imp.g_varchar2_table(11) := 'A0D51C87A2DD979A092484255AABC1325F702120148B4DAB459A09A4C82E4C2BE6C197CF023B347E341308B205EA1E7293DDD1D318682690D5D1A199B5C184AF42E8D55496A3AABCCCAB504B79386F30D545B32D3A1A03CD045220DA351B1C4C1989406D';
wwv_flow_imp.g_varchar2_table(12) := 'ADCD686B69F12AB4521E4009A69A04C416CD040A88B53E502A2C16A4F51980F824E76F128CCB18855B6E9EDC65B894EEB1092CCB796822C17F8675087B0285B5F70DA8BC249001208673119240E1EC7D03EA2E09640088C61561BE9224813A7D269C91AA';
wwv_flow_imp.g_varchar2_table(13) := '9A5AEC3F70185F7DBB1F3B777F83CF29709CD3AAAA6B9C422E59E71FDE9DEB6BABD1D1DEE65DA620960E7B02B53437A1B6BA02F53555AA9B3ED9F1055EDAB4056F6CDD86773FF818EF50E038A77DBAF35FAA0CCBF2DA5173630314C5A1A67972EAE86847';
wwv_flow_imp.g_varchar2_table(14) := '635D2DAA8E95A1BD2D34481496046A6D69466D55398E1DFE013515C7D0DC4044A02DE9A1A70FC625A34762D295E3F0E73F4EC2DC99533037FB264CBB7E127E4F697C6FE86983A1906C4B532395518163870E80C9D4D6DAE2964356AB0D09C9A970381CEA';
wwv_flow_imp.g_varchar2_table(15) := 'A2657B5BABDB3CC12E1056046AA7AEA39A569CABCB8FA2B9B111E9A9C9B8FCD2312A51D62CCDC7BCCC1B30E50F5760E2B8311873DED93873C88938F3D49370D188B37115A5F1BD79593760CDD23CDC4EC49AF0EBD1484F4B0693895B95CAA387E18E4816';
wwv_flow_imp.g_varchar2_table(16) := 'AB55E584E222515BABB9491416046267D55557A2B2EC305A69C57960FF3E9877CB542C5D988BEB7E3B4E254A84DDA63AD6935384DD8EB38858D74F1C8F6579B37007B5548306F653BB2526526D5585DACAE0171F2617B7789C1C9B90A8B664D515655DCA';
wwv_flow_imp.g_varchar2_table(17) := 'B28C1942C813A899BA9AF2B243686AA847EF5E69C89936198B6FCFC4D0C1830CF3CF19D4522D9A331D33A75E87DEE9A9D4BA35A0F2E82122D48FAD0B93875B3E85B64E1253D3111B9F88C4943444444441081DA372C36AA1ADA090265053431D8D53CAE9';
wwv_flow_imp.g_varchar2_table(18) := '9BEEC0B88C0B51302F1BE79E799A4F1C2684C0C8B34F47C1FC99C81835028E0E1AE7D060B995C65B3CD6A9AE384A3B670A1288349151D1AAB722A363C06412423781D4F202710A590235D6D7A2AEBA0A368B15B7D2DED60D575F069B6BFCE14BA059C7D4';
wwv_flow_imp.g_varchar2_table(19) := '6BAEC4CD937F0FABC5026E7578A75FA1817742522AA28834BED4EFEFB24392400DB4D6525F538DD494242C9A9B8DF3CE3ACDDFB8E2E291C370CFED59644332B5800AA26263111513EB773B7CAD30E408C4639D065A6B898B8D415EEE340CE893A619C34F';
wwv_flow_imp.g_varchar2_table(20) := 'FFF53538682D6060DF742CCCB919F171B168A13523EECAB49615ACF9428A40BC50575F5B05ABCD82DB32FF8494C478CDB8FFE3B52D285AFB7F6AF8E7A6AD9ACB494D8AC79C1937405804AD171D83E2C5C2A366A57ECC185204AAADAC008F35A6FFF10F38';
wwv_flow_imp.g_varchar2_table(21) := '79605F5D301E3A7CEC78FE833F891F4FF422C2B64C9B3C89B6303A68505FE145CEE0170D1902F18C8BA7CA578ECFC005C387EA46FE376347E1045A2F3AE9847EE0B8DE02479F7B162E1B3B1A2D4D4DEA9282DEF282257F481048EDBA5C83E66BAEF8B55B';
wwv_flow_imp.g_varchar2_table(22) := '6C3FFCFC4B1C2C2BEF516EF0A0FE583C370BF7CC9941AD59BF1E65B9AC8F767DD5A30CDF9CFCBBF148A26E95BB5985D683382DD041AFFE902050436D0DD821578ECB708BC7332F6FC6AAC7FF86BCFB1FC1F7878EBA957727B0FF60995AD6CA754F83C74D';
wwv_flow_imp.g_varchar2_table(23) := 'EEE4D946EE6679B0EF4ED60CF74D4F20264E4B53833AD3E13D2B77A06F7E6FBB534401DEFD68A733AEE3FCCE873B402B846A09AFBFFDBE7AEDE9C4D37B9E217297DB939C59EE999E40CE472A80CB6863D36E736E54F604FEA5632E70DEA6C5DF31238639';
wwv_flow_imp.g_varchar2_table(24) := 'E33ACE178D1C0E5059A0CFF88B2FA473CF4764841D132E194D03EA76F0A3243D4B07FF5DD313A8A9B15E45F9C273CE54AFEE4E3C46BA8BC635CBF267E3847EBDDC89BBBD3FA87F6F2CCD9B8DBB6FCBC47F5F7E895B791618E91AE437D16A39FF6DE6606A';
wwv_flow_imp.g_varchar2_table(25) := '02F1E319EDADADE8DFAF375293123CF6C32934B34AA7556A8F33B811EC959A44036DCF970DFAA425AB1BBBAD2D2D501C9E3F90E6C68C80DC3635815A694ACCA88D18E659EBC3B2C112460C77FE0F385E7A08169BB4D8616A02710BC4951E3674085F4C15';
wwv_flow_imp.g_varchar2_table(26) := '860F3D55B5B7CDAC4F25AAD603A62790A01A18319671E1E1B74BA7CD66DF1F23F8FD8699E18A3AE8DB9B1017A73E366164E1C72AAB51F4F833C8BDFB013514AD7F06E555B546AA003FD5181313EDF611584395FAA030D31288579F7931373525D92D2C47';
wwv_flow_imp.g_varchar2_table(27) := 'CA2BDDCA740AD4D435E09E074BF0E9E7BB69794751C3A73B77AB69750D4D9D626EAF9EE84C4D4E521F3C735B58100B989740EDED2AAC29C989EAB5BB53E1CAF558505084DB163F8CA6961F1F31ED4E7EFB8EDD686C6CC6D0D38760EC45A3D430F4F4C168';
wwv_flow_imp.g_varchar2_table(28) := '6868C4C7BBBEEC2EDBF1F4C6A6665517EBBC7FF55F8FA7771571677B5779822DCDB4041242A858C6C775FF9056554D1DBEDEBB4F95ABACAAC137FB0EA8F19E4E55B575EAED5E69A9EA954FBD529DF18AAA6AFEB3C7F035E9605D2CB4E7EB6F515D57CFD1';
wwv_flow_imp.g_varchar2_table(29) := '2E4362427C97E9664A342D812C16A7E9F5F58DDDE29D4C1B97835C8F75C4D27863086D90762BECBA9192E85C4FAAAEA971A500D5B5CEF14F9A07DDE5A9270E444C74949AF7E4130720293E4E8D77756AF4A24BEC2A7F30A439BD100C96786983E0E917E5';
wwv_flow_imp.g_varchar2_table(30) := 'A9AA713A97A25D1EF7D20A31BF2DF1C05DB3111D15D9A5CC4F13CF3993A6D7D4B8EDD8B507FC96EA273B7681E32CD3AF571A5F7A0C31D1915846BA664EF91FDC3DEBCF3DCA56BA88D9A35090DFF49E404152218BD5B9EF55ED86406C2EBF2DE109795836';
wwv_flow_imp.g_varchar2_table(31) := '9556B4736EBE1E3131513870E8308523E04730F8DECAF57F43597915477B0CB1D4028D1CF6AB1E65F8661575AB7C3573302D8154D0A9A528AF74EF5055D68BD3B9D40AAD2A5880C23B73903F7B3A96E5CFC2D4C957A3A6B61E85C58FE1880724F2445D15';
wwv_flow_imp.g_varchar2_table(32) := '759336BBB97F6AD2D404B2DB2340F36C1C3A5AE189BFBC96E9D72B15FC6099DD664306EDBAF33BF24CA2FB88446515FA887BE0C831D5767B44A4D776055306531328C2F582DEE77BF6FA05D38B469C8D1BAFBDCAD912153D063D24DAE9B2D91EE91C70FB';
wwv_flow_imp.g_varchar2_table(33) := 'A5023E50626A0275BEE1F9D9177B7C004DD7458EBDF0BF0C21D1675F38D79422640BD435D0FE48B5D92360B15AF0D5B7FBD0D8DCE2B1CA4A5A1F6A6BEFF058FE97824E124DFCB125F2724C5453DF80BDDFED8795BA468BD53919F8A50EB3FC6DEA168841';
wwv_flow_imp.g_varchar2_table(34) := '8E8C8A51C7129F78F0503BCBF303F5B7DDFB2016DC570CDEB6E0342D61EC85E7504BE422118F89BC20D1CEDDCE2E37145E73F62381B4B8C97D9ECED7859FDFF8967B6192786AC34B2AE12A2AABB1E99D0F2945FBC124FAD3354E12DDF7C83A8FC744CFBD';
wwv_flow_imp.g_varchar2_table(35) := 'B659551A1D2757A255200279E2590C8F85CA6956F4E6B64FDC9A72CA49038FCB9C3268C0F1B8D6C8A5A3CE0193A89ABAC5FB8AD7D1AEFD8F2BD85D95F9FABB1F83D77FA263E360B198BBFBE2FA99BE05E24AC42526010278FED5CD686E6D434F9FE9D75D';
wwv_flow_imp.g_varchar2_table(36) := '4D1BA4E7632A5DCF39C39807D17E4AA26D9F7CD1AD7ADECC7DFEB537C1B6C6C43BB74C60F24F4810C86AB3233A260EB53438DDB8D5F5DA4E378EE1AD861B27FD0619E70FEF46C2995C452DCAD32F6C02872A5A4074A6767F66122D997F2B2ECF38BF5BA1';
wwv_flow_imp.g_varchar2_table(37) := '57B7BC8F7ADAFF8AA2719BD56AEB56CE4C374282400C786C7C225FF0C2C6CDD87FA84C8DEB393DB7712B36BEB54D0D2F6C7ADBA3A2F8974022BAF9A9BCEF0F1DC5CBAF6F851002B109D4627A5462F00B850C812C562B125252D1D1E1C043A57F456D0FBB';
wwv_flow_imp.g_varchar2_table(38) := 'F49EB885FCEC89984732DC823D50F2A46A1BFF4AAB95A6EF1E65348150C81088B18E8A8EA56F772278BB61F9BAA7A167ADE7AA0919EACB8A578CBB08574DB8988BD7145ADBDA51F4D8D3A8ADAB078F7BF867ED341514A499CC4020AFA0E3AE2C2A3616DF';
wwv_flow_imp.g_varchar2_table(39) := 'FDFB07AC7A72035A35FEA037FFB6D0E489E371ED95972229A1FB677A7A328EC9B3926CF8F7F70711111585B884D0E9BA3AEB1D7204E28A2524A5C21E1989CF76EDC1BDCBD782579E39DD9F8175DEFBF0A3D8495B16569B1589C969FE54EF375D21492046';
wwv_flow_imp.g_varchar2_table(40) := '2F29351D91D1D1384803EABB97ADC6DEFD0739D92FE1EB7D0770D7B2553878B80CF6880824A7F581703D41E91703FCA82464092484058929E9884F4A464363130A8AD662FD86577CDA1A71ABB37EC3CBB8AF782D1A68BA1E13178FE4F43EB058CDBF60D8';
wwv_flow_imp.g_varchar2_table(41) := '1D274396409D158E8E2527F62227D2AAEF96F73EC4FC25CBF1EC2B6FA19E48D529A3F75A4765F1EF0EDDB1E4616C79EF232A4E20915AC0B8C4648A87F611F20462F7D96C76A4F4EAABFECC2ECFCC783DE60E22D213FFFF2A76D0C626AF10B39C3781F37C';
wwv_flow_imp.g_varchar2_table(42) := 'B6FB1B3CF18F573177F1C378E58DB7E1E850C0AD4E6AEF7EE0ED156FCA33AB6C5810889D235E1FB737000004C4494441548450FF530E13299AF6A19A5B5AF1D63BDBB1FCD1A790BDA0104B4B9EC24B9BB761FB8EDDF8EABB1FD48DD116DA16E1AD117E0E';
wwv_flow_imp.g_varchar2_table(43) := 'FACBEFBEC70774EFA537B781DFF7E23C2B1EFD5FBCF5EE76B4929C4A9C3EFDC1AD4E28EC7131669E849026505700D8EC761A17A520ADCF0022540A78B62684C0EEAFF662C38B9BB0FA8967680CF31875752B9039BF005914E617ACC05F68A3B484EE6D78';
wwv_flow_imp.g_varchar2_table(44) := '6913F87D2F5E0C6422F2603DADEF001771C20E4E845F8D5DAC124250971687E4B4DE48EF3750EDE27895985B129EBD31D18445B8A4019E8A47444513F99291DAA71FB89B8A4F4AA1F59D6808218ECB855B4433811C028DA1041613869F2DE22E88676FDC';
wwv_flow_imp.g_varchar2_table(45) := 'D5A5F71D885EFD4F50436AEFFEE0D6269A06E5A1B2117ADC7F8AC3F397FE8F677246341388BE74214520271CE179D6E34BCD045274B0363CDD14BCB5D6E34BCD04B2089B6C818297135E59A6C7973A08145A6320AF100F31619A2B686E0C3413084ABBE6';
wwv_flow_imp.g_varchar2_table(46) := '8157D0E31F6E06EAF0A56602B55815CDAC0D37FF047B7DF5F8523381DA136DFC427A73B08323ED738B40B3CB976E05BB12D04CA03599996D80D2F313EC5D699469418680B2DDE94B6D666926904BDD16D7555ECC8B802E1FEA2290C5015DCA213F014740';
wwv_flow_imp.g_varchar2_table(47) := 'AF0F7511A8BA23EA0342408E830804931ECD2E1F6A365F1781D62F9ADAAC083CAF597BC865345785D877EC433D56EB2290AAD8E158AE5EE5C97C0818E03BDD042ACE9FC9DD989C8D998F3EDB5DBED365B96E0239B52BB215720261A2B3313E338440296D';
wwv_flow_imp.g_varchar2_table(48) := '651B08B90314E4610E040EBA7CA6DB5A4308B468D1A27628B855B735B200BF20A028C8567D6680364308C47614E567F16C6C05C765086A045614E767BD6894858611880D6A4E1377D0F6C6471C97C12B04FC224CD3F62D4E1F19A7CE5002F19E8AC5826B';
wwv_flow_imp.g_varchar2_table(49) := 'C93CF7FFD68684E4E15704CA2C8AF53AF691915A0D25101BB6FCCEEC7D8A45194BF17D14E411140888FD8A1597ADC89B5E66B4398613880D2CBE33FBB30ED17E1E84F206FF2D43E01010029B3B44DBB9C50BB276FAC20A9F10880D5DB9F0D68AC383532F';
wwv_flow_imp.g_varchar2_table(50) := 'A77809057904000105CA838706A74C605FF84ABDCF08C4063F7BEDB51D457959D934C5CFA6BF5B29C8C33F08340905D715E765CF651FF852A54F09D469384DF14BAC8A7232CD02EE51801F3AD3E5D570046831572C22AC87ACC8CFFA3BFCF0F10B81B81E';
wwv_flow_imp.g_varchar2_table(51) := '0FE7671F2C5E98B5F8C8909493A0289388481B299D2E74968766042823FFD38F171588DF1E1E927262515EE6BD8C35A5FBE5F01B813A6BC34D6A517EF673C5795997375B453235B519746F3691EA0908ECA2783B0579748D403B63A4004F2A8A98A308CB';
wwv_flow_imp.g_varchar2_table(52) := '2551367B320D132616E765BECCD8769DCD77A97E27D04FABB26641660D35B56F13002B8854538A16669D4D717BBDCD9ED06EEFE8ABD8C560A503C3A158460B6082A260623804AE2BD799EBCE1830168C0963C318D197EFA6E2FCCCE5C50B676C5D3A7F5A';
wwv_flow_imp.g_varchar2_table(53) := '1D02F8092881BAABF73A0265D5BC5B8E14CFCBFCB6F8EEAC9D45F933B6ADC8CB7A9D97E0C321705DB9CE5C77C680B1604CBAC32B90E94149A0400222757B87802490777849E95F202009F40B40E49FDE212009E41D5EA1236D504D24810C02325C8B9104';
wwv_flow_imp.g_varchar2_table(54) := '0A57CF1B546F492083800CD7622481C2D5F306D55B12C82020C3B51849A070F5BC41F596043208C8F029E6E7359504FA391EF22F2F119004F2123029FE7304FE030000FFFF7C4A2FC1000000064944415403006D209D990A5FDDE70000000049454E44AE';
wwv_flow_imp.g_varchar2_table(55) := '426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(154889409286840433541)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C0700001000494441547801EC5D099C14C5D5FFF7CCCEDEC7CCECC129FA19458508A888A0044151141405146FC1C444D418251E89573497C61363E2276A6288FA79A01205';
wwv_flow_imp.g_varchar2_table(2) := '14F10005110544401015453E90CBBDEF5DF698D4EBA18F996577AE9ED93E1E3F7AFBD5F5EAD5FFF5BFBBBAAABAC6F5AB3FCF0EF0C11838F51A7081FF31020E468009E060E773D30126005F058E468009E068F773E31D4C00763E23C05D20BE061C8E003F';
wwv_flow_imp.g_varchar2_table(3) := '011C7E0138BDF94C00A75F010E6F3F13C0E11780D39BCF0470E215C06D56116002A850B0E0440498004EF43AB759458009A042C1821311600238D1EBDC66150126800A050B4E4020BC8D4C80704438EC280498008E723737361C01264038221C7614024C';
wwv_flow_imp.g_varchar2_table(4) := '0047B99B1B1B8E0013201C110E3B0A010711C0517EE5C646890013204AA0389B3D116002D8D3AFDCAA2811600244091467B327024C007BFA955B1525024C802881B2743636BE530498009D42C3094E408009E0042F731B3B458009D029349CE004049800';
wwv_flow_imp.g_varchar2_table(5) := '4EF032B7B1530498009D42C309764020521B98009110E2745B23C004B0B57BB97191106002444288D36D8D0013C0D6EEE5C6454280091009214EB73502362680ADFDC68D33080126804140B21A6B22C004B0A6DFD86A83106002180424ABB126024C006B';
wwv_flow_imp.g_varchar2_table(6) := 'FA8DAD360801268041409A4A0D1B1335024C80A8A1E28C764480096047AF729BA24680091035549CD18E083001ECE8556E53D4083001A2868A335A0181586D6402C48A5884FC0D75B528DDBD033FECDC6EE8413A497784EA393946049800310216297B43';
wwv_flow_imp.g_varchar2_table(7) := '5D3502ED8148D9624E279DA43BE6825CA04B0498005DC2137B62466676EC85A22C914CDD519A60BB6C4C00835D9AE7F5A3A44F3FF9D0ABBEF6A7172196435F56D147BAF5F12C278E001320710C59838511B011012CEC0536BDDB106002741BF45CB11910';
wwv_flow_imp.g_varchar2_table(8) := '600298C10B6C43B721C004E836E8B9623320C004308317D8866E438009D06DD01B5831AB8A1B012640DCD071413B20C00448911757ADDB880F567E8A37DE5B8E57DF7C17CFBDBA004FFC7B2E9E7CF665212FC43C11B768C987729E55EB36A5C8AA60358D';
wwv_flow_imp.g_varchar2_table(9) := 'F5B528DBB313F5B5D5C10807FD650218E8EC402080E6A646D45657A27CEFCE10CDABD77E8E8D9BBFC6B6FFFF1E7BF694A2BABA0EAD6D6D68696915722D768BB8ADDB76C87956AFDD10529674914ED24D7584241A10A8ABA942BBB0A5BEA61A75C2760354';
wwv_flow_imp.g_varchar2_table(10) := '5A460513C00057353736A0AAFC0794EEDA81EAF25234D6D5A2ADB5CD00CD4115A48B74926EAAA3B26C2F68656820D01ECC90E0DFECDC7C5503E97512099800AAEB6313E43BA6E83250D7A1BAA20CFB9A9A0EA860E09187E3E4138FC739679E82CBA74EC4';
wwv_flow_imp.g_varchar2_table(11) := 'AFAEBC1877CEFC051EFCDD4C3C79FFEDF24132C5511AE59978C6188C3A7128061C79D80175B63437CB776AAA9B2E56B2E58019A38CCCC92B40564EAE9ADB4A24508D8E536002C4085C7B7B1B6AAB2A827D66D16508BFF87273B2E50BFE865F5C8A27EEBB';
wwv_flow_imp.g_varchar2_table(12) := '1D375F7509AE387F02269D3E0AA78C3816C70EEC8F1FF5EB8D225F01D23D1EF92099E2288DF24C1E77327E7AFE59B8E5AA4B315BE8B8FECA4BF0931143919D9D19626DA03D203F0988083595E5686D6D09498F25400BEDDC69696A11A7908009A0BABC6B';
wwv_flow_imp.g_varchar2_table(13) := '21D0DE0EEA2B97EFD985C6FABA90CC25C58538EBF49371C70D3FC7A37FB859BEE0871C751832D23D21F9E209640A1DC70C3C1C3F9B7A16FEF6C75B70DBF55762FCD851282CF485A86B6AA847C5DEDDA8A92A07D91A921845A0A6B24C74DB5A437212096A';
wwv_flow_imp.g_varchar2_table(14) := 'AB2B42E2EC16600244E1D1A6C67A94EDDD8586DA1A04C48BAE52A44FAF1EB8E9EA69B8FFB6EB70DE996370D8C17DE072494AB2E167B7CB85FE87F4C5D409A7E0A13BAEC7AF675C8EBE7D7A86D4D3545F2F5EC07781081192D045A0463C3D9A1A1AD41C9E';
wwv_flow_imp.g_varchar2_table(15) := '8C0C556EACABB3F5E8101340757547A15DDCF5A97F5F53510EFD5DB5D0EFC5D5D32FC09F6E9E811FF7FF9F8E05531433E88843F1C71BAFC28C695351A47B2290DD7451D38B795B5BE85D3DDCB41A71E7D793253B2F1FBEA21EA0B3929788AFC8763B3301';
wwv_flow_imp.g_varchar2_table(16) := '3AF1280D395688BB7EB318E151B2E4E5E660FA05E7E03E71C73F61F05190A4E4DDED953A239D2549C2F02103F0975B7F89CBCE3F1BF9C246A50CBD9857FCB05B1E9A55E2F4E7E0C5AFDDF9B373F3909BEF95B3D099C214D09381C2763A2C4C80E4B98126';
wwv_flow_imp.g_varchar2_table(17) := '84AA2B4A417752AA25332B03E74F1C8707EEBC01A3871F8334B79BA24D75904DA79E781CEE175DA3C9679D86CCCC74D9BE807851A6B634D4D5C861E50FC5E9BB3D993939C82DF029C9F299C2F4355A8E182592236CF8C765C336C5DD24EADF5397872684';
wwv_flow_imp.g_varchar2_table(18) := '1008AAE95952847B7F7B1D268C19017A210DC69AF76F66463A269E7A12FE74CB2F412FE7B2A5A22D75D555A03B7EB08DA5686E6C9493E80F5DFCF9DE42121D773001F6BB9CEEF6D4676ED67579FAFFE810FC6EE6CFE1CBCFDD9FCB3AA7225F3E7E77C395';
wwv_flow_imp.g_varchar2_table(19) := '38ECD08355A3E98E5FBE6767E8C59F9D03A75EFC040C1340A040177F65E91ED0049308CAFF870EF9316EB9FA32646766C8612BFEC9CDCEC26FAEBE1CC70E1EA89A4F6D55021959D9C8F739F3CEAF60E078020402EDA03B7F5BAB365A72F6B8D1B8F6F229';
wwv_flow_imp.g_varchar2_table(20) := 'A6ECEB2B8E8BF6EC4973E3BA69E761DC2923438AB8DC2E14F88B42E29C1870340102624CBFAABC14ADFBF6A9BEBF64CA599872C668538CF0A846850B31862549C245678FC5D473CE504BB6B7B5CB137B6A8443054713A0B6AA22A4DB33F6E411386DE4D0';
wwv_flow_imp.g_varchar2_table(21) := 'A45F0AB5F58D98F3CA9BB8E1EE87E483648A4B76C5E3470FC7989127A8D5D0F8BEFE9D474D7090E058023435D485CC96D2A2B54BCF1D9712D7BFB4E05DBCBF6215AAAA6BE583648A4B45E5D3A69C8923FB1FAA564523432DBA27A09AE010C19104A04563';
wwv_flow_imp.g_varchar2_table(22) := '74F7577C4CB3A8D78A7EB2124EF679CD868D1DAA58BF697387B86445FC72DAF9EACCB1E80582E60402E25D2859F59959AFE30810101EA775F5E224FB8526B96E9A71794A477B3CEEEE9D48A3D1A11BAFBA4C5DACD7DED686DAAA4A190FA7FD711C01EA6A';
wwv_flow_imp.g_varchar2_table(23) := '2AB5558F1270DD1517A16751E80C68B22F8241038FEC50C5E0814775884B6644AF62BFBC9E090203AAA7A9A11ECD4DDAB2088A33E361B44D8E22406BCB3ED0EA4605C4537F3202030F3F4409A6EC7CE1D9A7C9DF0C14880936AF370FA34F1A860BC4284D';
wwv_flow_imp.g_varchar2_table(24) := 'CA0CD85F112DD91E35427BE9AFADAC50977FECCF62FB93A3085023467D148FD2928149E34629C198CF15E205B6B4A23AE67254202F274BFE66E0AFBFBF098FDC7523A69F371E144769B11E6443654DE8F709B1E89872E618F9A31C2A439364F5B555243A';
wwv_flow_imp.g_varchar2_table(25) := 'E6700C01E811AF1FEF3FF7CC53417DE1583D4DEF102FCC7F07BFBEFB21DCFCC7597866DE22505CAC7A12CD4F7552DD64C3CCBB1EC4CB6F2E8D4B65416E0E68E24F294C4FC8484BA895BC76383B8600F5B5DADDDAEFF3626C9CE3FD8B3EF8048B97AE507D';
wwv_flow_imp.g_varchar2_table(26) := 'BF64F92778ED9DE56A3855C2BCC51F80EA56EA7BE39D0FF0D6B24F94604CE771A386C15B90A796D163A546DA54700401F635356A2FBEC291179E7B465CCB1CF6B5B4E095856F0B0DA1FFE72F5E82C6A6E6D0C82486A8AE058BDFEF50C3ABC236DA6AA543';
wwv_flow_imp.g_varchar2_table(27) := '428408FA3679EA446D0E849E96FAA521118A5B3AD94204881FE77ADD5AF8430FE98B61833A8EC244A3BDAD3D005A42109E9786D0DB455A787CB2C2FB5AB4754BFA3A5ADBDAE3EE8E8D3866200E3EA877505D0068A8AF0DCA36FF6B7B02D0C88F7E95E7A5';
wwv_flow_imp.g_varchar2_table(28) := '9327C4EDD2AC8C740C1F3AA443F9638E3E0A39D9A13B3674C8646044415E0E060D38A283C613856D9EB4B40EF1D1444892844B268F57B3D253400DD858B03D01F43B381CD2AF0F0E3DA85742EEBCE2FC09820483551DC70E1E805F5C7CAE1A4E9530E3B2';
wwv_flow_imp.g_varchar2_table(29) := 'C9386690367730E2F8219826469312A9BFBF783A1ED4A797AC22D0DE2EE605B48F66E4481BFEB13D019A45FF5FF1DBD0C1DABA78252ED6336D7532E3924978F8EE1BF1C09D33F1ABE95391D50DDF0CD0770AD75F7101EEBFE306CC12C3A9570912525F3E';
wwv_flow_imp.g_varchar2_table(30) := 'D6F684E71F2A08ADC43535C43FBCAAE830FBD9D604A0EE4FBB98E6579C30F8A8C31531E1B35F8C9A14FB0B12D693A88292422F8CFC626DF080FEAA49CD8D8D71BF53A84A4C2ED89A00FABBBFCF5780837A159BDC1D9D9897C2E8837B97203F2F57ADB1A5';
wwv_flow_imp.g_varchar2_table(31) := 'F9C05B3EAA192C2ED89A00B42D88E29F61437EAC887CEE0201499270BC0EAB7DFB98005DC065E2A440002D2DDAD8FC9081DAA3DDC4569BC2343D56FA9B88298C33D808DB3E0168CDBFB2B509BDB81E2E46380CC6CEB6EA8E38B41F3C69C125DBAD62F2AF';
wwv_flow_imp.g_varchar2_table(32) := '5D8C08D9B5B1B62540CB3EEDEE7F48BFBE71CDFCDAD5E991DA95EE4943BF83FAA8D95A5BB46FA6D5489B08362680E634BF7801B689BF52D60CBF571BE16A4B60DBF5440D4E7679DB1240EE02ED47CF5790BF5F32C769F5862FF1C4F3AF61E6EF67C907C9';
wwv_flow_imp.g_varchar2_table(33) := '14670EEB8256F8BCDAE2383BAF0BB22D01F4E3FFDE7CCD9941F776CFDF9ABA063CFCD4F378EC5F2F62E5EA75A8ACAA960F92296ED63F5F442A768788A6F5BE7CFD13E0C06B8FA2D163F63C8E20804F4C5A99C1118F3FFB2A367CF175A7A6ACDFF8259E12';
wwv_flow_imp.g_varchar2_table(34) := '4F864E33A43021E40910618BF5149A657855B62440F8A885375F9BD8890641BA0BCF3178DF9E159F7E8ECD5F7F2B579F9B938513871D8789679C8AB3C54132C551E2862FBEC2C7EBBE2031EEC308FB0B749361F4F14DDCC698BCA02D0910A0F5C93AE0F3';
wwv_flow_imp.g_varchar2_table(35) := 'F37274A1C822EDD1437BF518B96FCFEAF5DA453D68E0001417F921B95C708983648A532C5B9320018CB05F7FD308883915C536BB9D4D4C00E3A0F6C5F80E908C7D7BB66CDDA636A8A8D0AFCA8A50E8F72922B66EFF5E95E3118CB0DFABBB6904C26E28F1';
wwv_flow_imp.g_varchar2_table(36) := 'D864D6328E204020C63B982709FBF684AED30F74B81E24498B6A11934F5A2876C908FBE9C9A4D61C237E6A390B08362580EE6A124EA0D117718AFA7F32F6EDA1C938C580B2F28E9B5095966BBFC67870DFDE4AD6B8CE46D85F5D5BAFD5AD67A7166B0BC9';
wwv_flow_imp.g_varchar2_table(37) := '960408BDFC819A3A9D33A3705B32F6ED193DFC38B5E60D9BBE4069590502A26B411F9EFC50568E0DBAAD114F3E71A89A371EC108FBAB7598853C0DE231C8C465EC4900F162A9C7BC467F37D3277422D31E3DF4E59711FBF628550C1970188EDEFF3D425D';
wwv_flow_imp.g_varchar2_table(38) := '7D233E5AF529E62F7A0FF3DF7A0F2B57AD45BD8853F27EBE798B2047C76E92921EE96C84FD7ACC24973B5295964DB72701C4235B7FD74A64E328233DFBF38B2761F001B6450CAF63D9CA35F89718860D8F4F65B8AA46FB285E8F652A6D48455DB6240001';
wwv_flow_imp.g_varchar2_table(39) := 'E74AD33E0EAFAED59C4969DD75E4E76663E69517E2DA9F5E8461C71E0DEFFE09BACCAC0C4C1A3F16C71F73B46ADAB28F5683E622D488140B210448C2A0408A9BD36975B625805BE7B4EA04B60EEC14B904128E3FFA085C73D9143C72F78D9833EB6ECCBE';
wwv_flow_imp.g_varchar2_table(40) := 'E7569C73DA48CCB874128E1BAC7DB84373114FCF5D985077285E33F598A5A579E25563FA72F62580CE69FABB99993DE276B970CDE5934348B04C74879EFDCF5B29274165B5F6BBC2699EE06F0E9B19BB786DB32D013CE9192A265BB7ED48F905A4561EA3';
wwv_flow_imp.g_varchar2_table(41) := 'E076054970C27183D492B405622A49D0DE1EC0B7DBB6ABF57B98002A169611F404A8A9ADC3D61DBB2D63BBDBE5C255E285B9BB48F0CDF69D6868087E0BEC72BB21097B52055EAAEBB1ED1380462EDCBA17E1CF367D956A6C13AACFE592BA8D049F6DD4B0';
wwv_flow_imp.g_varchar2_table(42) := '4ACFD09EA40935C8A4856D4B00C2DBA373DEEA759B28CA5287428291C38F55ED56BA436A442867AB8D000009D14944415412848FD76E50B5A66766A9B21D055B1320234373DEDE1FCAB0EB8772CBF99048F0B3A967239C04F41B05C968CC8E3DA5A8ACDC';
wwv_flow_imp.g_varchar2_table(43) := 'BF95BC9852CF60022403E6D4E824E749A22BA1D4B6EE8B2D8A98F039915F8889B572499270E5051331FAA4E3D5A2F41B052FCC7F570D1B25E8BB3FF41E2549B6BE47C2DEAD13174E6656B67A6DACD9A0ADC9572363149AF7B5E0F1E7E6A9BF10F3E89CB9';
wwv_flow_imp.g_varchar2_table(44) := '29FB6D80E9E74D102418A65ABC78E987309A046BD66B5D453D766AA536134C4480E4209B91A57D0CB3F5BBEDF8EEFB3D0955F4F4DC05F8E453AD8FBC76FD177832859F314E3F6F3CC68C3C416D0391E0A505EFA9E144846FB7EFC2F6EF83A36592242133';
wwv_flow_imp.g_varchar2_table(45) := '5BC32E11BD662E6B7B02A46764423F1A3477FE3B71FBA35E0C0DEA2F7E45D1679F6F46558C0BEE94B2F19CA74D3913A78E1AAE165DB464395E5A983809E62ED07EFD862E7EBB777F0840DB13801A9993A7ED70B079CBB7D8B845FB3A8BD2A33DE89725DD';
wwv_flow_imp.g_varchar2_table(46) := '691D2193C47B464E566A870B2F3D771CC69E3C42357DD17BCB4577287E727FFED5567CF58D864B56AE3976D2501B9824A1A33793545177AAA5BB99CBED564D78E9F5C5AA1C8BE076BB3065C2E91D8A4C1C3706A15F7C75C8627884244920128C1B7392AA';
wwv_flow_imp.g_varchar2_table(47) := '7BF1D2157863E94A351C8BF0E27C0D131A3CB0F3FA1F3D2E8E20003538274FDB1C6BC7CEDD58B57E3345C77C8C1F3D1CD32F3C1759E28E4F4F848B274FC0A4D347C5ACC7A802174D3C0DE3C68C54D52D78E703558E5658F9D926ECDCB537985D0C7DE616';
wwv_flow_imp.g_varchar2_table(48) := '7883B203FE3A860059D9B9D0BF0BBCBC30FEEEC2E8138660D65D37E261719CFE136D6832EEEB25C182174D1C8BF1A7054938F1F4D1316B7B65A1D6F70FE2E4895987550B388600105D863CAF5FF553695905DEFFF833351CAB4077FF6CF11488B51CE537';
wwv_flow_imp.g_varchar2_table(49) := '62DF1ED2A33FA68E3F455E5A4D4F287D7C24F9DD159FA2BC2238F125491272743BC2452A6B8774E71040788B468432B3B57981175F7F0B7BCA3A7EA02EB226F5FF4B0BDE05ADF53772DFA1780CDEB9B70CAF2CD0FAFED9A29BE87269EF4AF1E8B45A1947';
wwv_flow_imp.g_varchar2_table(50) := '11809C935BE0078DDA90DCD4D48C071E7F06B1EE1A416513398CD8B72791FAA92CB5F9C1D9CFA0A939B88B765ABA0739BAD13238E49FE308E072B990E72D54DD5B5E5189879FFA3FB4B4A66E035823F6ED511B1087B0AFA5456E736555F0A317499250E0';
wwv_flow_imp.g_varchar2_table(51) := '2B8E4393F58B388E00E4329AE2CFCAD5F60BDDB67D279E78EE354A4AC961C4BE3D8918FAF8B3F3406D5674E47A7DD00F1028F1A93877771D8E2400819E27BA429EF47412E563CDFA8D78F9CDA5B29CEC3F46ECDB13AF8DCF8B99709AB956CA6766E78046';
wwv_flow_imp.g_varchar2_table(52) := '7E94B0D3CE8E250039BAC05F0C975B83E00D3186FEF6F2D59494D4232F270B46EF3B148DC16FBEFF31DE1693654ADEF4CC4CE4FBB4EEA012EFA4B3E67D27B57A7F5B5D6E37BC853D20B9C4ECCFFEB8E7E7BD817FCF5B84361BFD305C6B5B1B9E7A613EE6';
wwv_flow_imp.g_varchar2_table(53) := '8A51AFFDCD84DB9386027F911274ECD9D10420AFA7793C820425212458BAFC133C30FB59D43706BF8BA57C563DEA1A1AF197C7FE8D15ABD6AA4D70B9DDF011F125C7BBDFE6DF03A82EEF5AF0A4670449A03D08F0E596EF70D7434F6077A9B6696DD75ACC';
wwv_flow_imp.g_varchar2_table(54) := '974AE3FC773E381BDF7CA7EDF0402FBBBEE21E70B9DDE633B81B2CEAC65B4037B4B68B2A8904058525E249A04142BB38DFFDD06CD04AC92E8A9A3269FDE66F70D7838F6B9F370A2B3DE9E9F015F784DB9D2642FC9F10D0BC4D21871F3453EC2F111788E8';
wwv_flow_imp.g_varchar2_table(55) := '1F2B50348B89A287C484D193CFBF8EF22A736CB1A8D876A07359650DE85727673DF91C5A5BDBD42CD4366F510FB8C43C881AC9027781C2AF01BA3BFA8B7B814648F4691FADFE0CBFFDF32378F5ADF753F609A4BEFE48728398D57E65D152FCE69E4740BF';
wwv_flow_imp.g_varchar2_table(56) := '3AA9E617DD3A5ADFE32D2A812489809AC00221C04F004221EC9024095ED11DCAF3F943EE982DE28EBA60F1FBB8F94F7F9517D29961A488467896AC5C8B5B844D0BDFFE006DADED6A6BDC69E265B7A8A7239738A820441098005D00441344FE1EBD919993';
wwv_flow_imp.g_varchar2_table(57) := '1392ABAEBE01735E7A1DB7DFFF38D67F19FCE5C7900C290AAC13FDFCDBEF7B0CCFCC9D0FB2495F6D564E2EFC25BDE149D726FBF4E92C071160020471E8F42FF599F3BD85F0892E445AD8C5B4676F29663DF12C6E1277DFB96F2CC1D7DF7D1FDDFC41A7B5';
wwv_flow_imp.g_varchar2_table(58) := '759D404F9CAFBEDB01AA8BEA7C44F4F3F7868D52515FDFDFA317F2BC7EEEF2740DA79CCA04906188FCC7939109BF184129282C46381168B4E8CD7797E19E47FF81EBEEBC1F4FBD381F6B3EFF0AD42F8FACB9EB1C0D8DCD582D74D144D6B577DC877B1FFD';
wwv_flow_imp.g_varchar2_table(59) := '27A82EAA535F529ED812B6515FDF299F33EADB1FAFCC04881139FA5E562382A74369DA5476C5276BF1F7A75FC035B7DE8B5FFFE111DCFBD81CFC4390E23F6F2FC3B2D5EBB169CB36797E819622D3413BD6D187FA94366FF13279D6F69EBFCF91CB5E73DB';
wwv_flow_imp.g_varchar2_table(60) := 'BD784CE8A289AC264186F00AD3D23DC81733BA85A2BB43B685A773B86B045C5D27736A6708D0C5E617A34534A944FD6DA993E1C58ACA2A79B7850F05295E5FB4044F3FFF1F3CF0BF7370EB3D8F62C66FEF918FDBEEFD1B1E14719436FFAD25F2ACEDD7DF';
wwv_flow_imp.g_varchar2_table(61) := '6E0395EDAC7E1AA5A2BB3DD940AB5B3BCBC7F15D23C004E81A9F88A91E318B4CFDEDE25E7DC5C85131689935CDB6462C1863061AD121DDD4052BEE7D90A8AB04D4DF8F510D670F43800910064822C1F4CC2CD032EB42317254D8B3B77811F5C984C8C8CA';
wwv_flow_imp.g_varchar2_table(62) := '9247635CEEAEE1A6A7089187B624A7A74A9ED707BACB17F5EC83C21E7D64DDF4E49124291133BBB5ACD92AEFDA2366B3D642F6D0845A564E9E7CD116F88B414B108A7AF645499F7E28EA4517742F11D7430C55F6045DE025229E9E2285823C5E31634B4F';
wwv_flow_imp.g_varchar2_table(63) := '152A4F7779979BD7ED24CBF54C806421DB855E97CB0D779A473C153240BFBFE572F305DE055C494D7225553B2B67044C8E0013C0E40E62F3928B001320B9F8B2769323904202981C0936CF910830011CE9766EB4820013404182CF8E448009E048B773A3';
wwv_flow_imp.g_varchar2_table(64) := '150498000A127C7624024C8054B89DEB302D024C00D3BA860D4B05024C8054A0CC759816012680695DC386A5020126402A50E63A4C8B0013C0B4AEB18761666F0513C0EC1E62FB928A001320A9F0B272B323C00430BB87D8BEA422C004482ABCACDCEC08';
wwv_flow_imp.g_varchar2_table(65) := '3001CCEE21B62FA90824910049B59B9533028620C00430044656625504980056F51CDB6D08024C0043606425564580096055CFB1DD8620C0043004C630251CB40C024C00CBB88A0D4D06024C8064A0CA3A2D830013C032AE6243938100132019A8B24ECB';
wwv_flow_imp.g_varchar2_table(66) := '20C004B08CABAC61A8D5AC640258CD636CAFA10830010C859395590D012680D53CC6F61A8A0013C050385999D510600258CD636CAFA10818480043ED62658C404A106002A40466AEC4AC083001CCEA19B62B2508300152023357625604980066F50CDB95';
wwv_flow_imp.g_varchar2_table(67) := '1204980046C0CC3A2C8B0013C0B2AE63C38D40800960048AACC3B20830012CEB3A36DC0804980046A0C83A2C8B0013C0B2AE3387E156B7E2BF000000FFFFFB759729000000064944415403009EE0A888C7A210AA0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(154889409522233433541)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_256_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A86600001000494441547801EC5D079C1445D67FD5B3396716962022204A523CF5D4337E87E8CFFC798A9E7AE65DC22EA09EC22EE02A2C280660C99841BD131445C50FCC62';
wwv_flow_imp.g_varchar2_table(2) := 'C08022208262404058C2E665F34C7FF57A777A7A6667C3CC749AE937BFAEE9AAEAAAF7EAFDABFADF55D5DDD502D08F1020042C8B00118065AB9E0C2704008800A815100216468008C0C2954FA65B1B01B49E08005120470858140122008B563C994D0820';
wwv_flow_imp.g_varchar2_table(3) := '02440088023942C0A208100158B4E2C96C6B23E0B49E08C08904ED09010B22400460C14A27930901270244004E24684F0858100122000B563A996C6D0494D6130128D1203F2160310488002C56E1642E21A0448008408906F909018B21400460B10A2773';
wwv_flow_imp.g_varchar2_table(4) := 'AD8D80A7F544009E88509810B01002440016AA6C329510F0448008C013110A130216428008C042954DA65A1B016FD61301784385E208018B20400460918A263309016F081001784385E208018B20400460918A2633AD8D407BD61301B4870CC513021640';
wwv_flow_imp.g_varchar2_table(5) := '8008C0A392738B8B232716CE4D1A5BB828F39E99CFF61A3FE3A9BE797396F6CF9DB5F4A409458B878E2B5A766ADEECC523C8990F03AC1BAC23AC2BAC33AC3BAC43AC4BAC53AC5B8FEAB67CD09204903B63593FDE48AE993073E94379454BDFE06E4B5ED1';
wwv_flow_imp.g_varchar2_table(6) := '923FF95E64D511F58EF0E8F2B070DBC166D6B85710ECBF4113FCCC44D82182B0D506E2B7E0103693331F06583758475857586758775887589758A758B758C7AD75CDEB7CE91BD806B02D4C9ABDF8782BB28125086062D1F2E17945CBA6E5152DFD84BB1A';
wwv_flow_imp.g_varchar2_table(7) := '2688BFF046F29AC8603AAFF42BB91B0EC07A00FD2C828054D7BCCEE14A6C03D816EC0EE1576C1B9C1C3EE6843035F791A5C342058C8EEC084902282C5C1591376BE9A5138A962CCE2D5ABAD7018E2D00E2C31C8873B98BE58E3642C01B02BC6DB0F39808';
wwv_flow_imp.g_varchar2_table(8) := '33981DBEE784F01B77F3B8BB08DB94B70CC11E1752043069F6A2137865CD2A0B2FFB0D445827021BC3007A057B2551F90D43A02FD73C81BBF7B14DE5CE5C52846D8C8743660B7A02E0133C71B9454B6EE727FEA776876D37AF9929DC6571471B21A02602';
wwv_flow_imp.g_varchar2_table(9) := '598CB17C6C63BCAD6DE46DEE566C7B6A2A304256501340DECC2557DB226C5F3260CF70F0CEE18E3642400F04FEC6DBDC7361E1611FF361E6C57A28F4574767F982920026CE58723E67E14DC0D81A3E5E3BB93323E93821A00D02E2083ECC5C8F6D11DBA4';
wwv_flow_imp.g_varchar2_table(10) := '363AB4951A5404805DAEBCA265FF7108EC230ECB99DCD1460898018133B14DE6152D5D896DD40C05EA6A19828600F2662E3F8BDFCFDDCA67F34777D5384A4708E88CC04DBC8D7E8F0F89E9ACD76F75414100138A96DE02CC81577D4B3EACE177ED524623';
wwv_flow_imp.g_varchar2_table(11) := '10E8070EE10BA9CD1AA15DA1B32B5E7313802832BCF52202BCC08D89E08E364220181088C0363B61E6D219662FAC6909001FBC98306BD9AB78EBC5EC2052F908016F08880CA6E6162D7D01DBB2B7E3668833250114161686958595BDC659F41A33804465';
wwv_flow_imp.g_varchar2_table(12) := '2004FC458001DC521A5EBE1ADBB4BF32B4CC674A02288FC85C010C2ED3D270924D08E8850003F18AB2F0CCE7F4D2877ABAEA4C47007CF2E41151841BBA6A00A523048204819BB06D9BADACA62280DC99CB26F26EFF03660389CA4308A88100B66D6CE36A';
wwv_flow_imp.g_varchar2_table(13) := 'C8524B86690860FCAC256733263EA19661248710302302BC8D3F9E377399691E5B370501E02CA92032BCD5678AF298B1E150994206011BBF3BF01CB679AD2CF245AE294EB8F2F0B28779A1FB71471B2110F208F049C1135ADBBCE1B61A4E0079454B06F3';
wwv_flow_imp.g_varchar2_table(14) := 'B1D17D862341052004744400DBFCF887970DD151A55755861300009B090036EE682304AC84804DB089863F29682801E4CD5C7E16AF715C938FEF6823042C87C0956A4F08FA8AA0A10400CCFE98AF05A6F484404821C01CD80336CC24C30860E2AC655701';
wwv_flow_imp.g_varchar2_table(15) := '30EC0100FD0801EB22C0CECB9BBD749451F61B46000ED131D128A3492F21602A041CE264A3CA6308018C9BB9B00F00C325BA817E840021C0CE1D3FE3295C81382028FCC96C0801D898ED365E58C61D6D84002100C004A1F95F60C04F7F0210457EE20BB7';
wwv_flow_imp.g_varchar2_table(16) := '1A602BA924044C8C00BB05A47343DF220AFAAA03C82D5A720680C887007A6B267D8480A911E8DB726EE85B46DD094060029FFDD7D748D246080403028C31BFEF06F86B9FE06F467FF38922E86EA4BF65A57C8480BE088438018C7F74410F6030545F5049';
wwv_flow_imp.g_varchar2_table(17) := '1B211034089C7EF723CB12F52CADAE3D00D61C36921BC72701F93F6D840021E089008BB23B2EF18CD432AC2B010820D0D77CB4AC4D921DF4083010CE071F7F81241702C9EC6B5E11C4E1BEE6A1F484809510D0FB1CD18D000A0B0B51178DFFADD49AC956';
wwv_flow_imp.g_varchar2_table(18) := '7F1018D27AAEF893D7E73C7852FA9CC99F0C15E13DF0E48FF6272FE521042C8440CCD188EE03F4B257370270880E1AFFEB55ABA427A8111044479787CA811AAA1B0130C674332A5050283F216024020C986EE78A6E04E000F138234125DD8440B0202002';
wwv_flow_imp.g_varchar2_table(19) := '9CA857597523002642A65E46911E4220A8111041B78BA56E04008C0800E847087405812E9E2B5D11D5591A5D08A0F5B6466A6785A1E3840021202190D27ACE48012DFF742180BDD1BD62B91161DCD1460810029D23107E00BA47759E2CF014BA1040425D';
wwv_flow_imp.g_varchar2_table(20) := '952DF0A2920442C03A08C4406D841ED6EA420061B151BA18A30760A48310D00381CECE19B5CAA00B0134370AD40350ABC6488E2510D0EB9CD185001AC5661AFF5BA2D992916A21A0D739A30B0144D8A807A056C32039D64040AF73461702B037130158A3';
wwv_flow_imp.g_varchar2_table(21) := 'D992956A21D0D139A3960E94A30B01D822049A0444B47570767B333436D46BE250B60E26900A8E80C3C6749937D38500A0B1919B449BD608D41DAB86D292035071F4B0260E65D71DABD1DA0C92CF1108B737851001708368D31E8186FA3ACD9534D4D76A';
wwv_flow_imp.g_varchar2_table(22) := 'AE8314E887803E3D00FDECB1B4A6C8A8186002D30C03941D191DA3997C12DC39026AA72002501B5103E545C7C6417AF75E9091D51BD0EF2CCAD0C127C2B8DB6FF0C90D3DD9F5462ACA4299283B3A26CE2996F62180001140085422994008F88B001180BF';
wwv_flow_imp.g_varchar2_table(23) := 'C8513E42200410200208814A2413AC81801656120168812AC92404820401228020A9282A2621A0050244005AA04A3209812041800820482A8A8A696D04B4B29E08402B64492E211004081001044125055C4411A0A1A909AA6A8EC1E1A365B0F7C021F8F9';
wwv_flow_imp.g_varchar2_table(24) := 'F7BDB075E76ED8BEEB17D8CDFDFB78DCE1D272A8E6691A79DA8075FA29A0BEF6183437D1BB237EC2E7733622009F21337F065114C1E1B0CB05DDB663173CBDF25558B9EA4D58FDE606786BFD87F0DE479FC3679B36C3C62FBE8177B9FF4D1EB77AED7A58';
wwv_flow_imp.g_varchar2_table(25) := 'C1D33CC5D3621EA700A52C679C16FBEA8A32A82A2F85B2C325802F3669A18364BA234004E08E47D0869A1A1BE0587525541C3D04470FEE83863AF55E0C425947B8CCCAB22380576887C3A1094E4AB9D515E55C17BD7988406BE98800B4445763D9CDCD4D';
wwv_flow_imp.g_varchar2_table(26) := '5053590E474BF643F9914370ACAA121A1B1A8077003AD59C969A0CFD8FEF2339F4779641748812A9E015FAE8C1FD50CE89A6B6A69AEB528F0CE212128109AE2659555E4624D059C50478DC8576808228BB7E08E03BF9E5474AA0ECD041C093D0616F7B12';
wwv_flow_imp.g_varchar2_table(27) := 'C6C5C6C0857F3B036EB9EE0AC8BDE346289878173C5A300116CF9E02CFCF2D84C7A74E8082DCDB24877E8CC36398A660C29D3CCF0D525E9481B23CAD6BE2442391CFC13FA1BAB20C908C3CD3F81AB6858543526A3A30E67AA3B185048EF92A8AD2771101';
wwv_flow_imp.g_varchar2_table(28) := '22802E02658664382EC6AB7D351F2B3735B69D284B4E4A8051179D03F9FC049EFFF07D70CB3597C0857F3D15460C1E00FDFB6441B7B46488898A6CD7143C8669FA1FD793E71928E54519286B4ADE1D70F1856703EA500AC0F986BA9A1A898C70F8D15017';
wwv_flow_imp.g_varchar2_table(29) := 'D87A01E11191101397A05421CD0BD4D71109B881A2524050490E89D110016CFCA5870E40351F177B5EEDBBA5A7C215A32E84C2FB72E0C9E99360F465FF0303F8096C1304D54A64130418D8B717DC70F9DF251D0FDE9B03975F7C3EA4A7A5B8E9C0E14765';
wwv_flow_imp.g_varchar2_table(30) := 'D9513E8977D0EF99FCC6867A385653E926170338F46808905C504EB039ADCB2B68AD80E4FB8F80BDB9998FED4BA0AAAC14D0AF94D4B34726DC9B730B3C9A9F0BD75C7C2E1C9795E9D67556A655D3CF1883BE3D33E17F479D0F8F15E4C13DBC0CBDB86EA5';
wwv_flow_imp.g_varchar2_table(31) := '8E667E1B1167F26BAA2AF81C01BF07A93CD881BFB1BE0E70393368CDC21873D9C4E3905C90203A1041877C448008C047C0F44A5E5B530578D5F7ECEAA7A626C1D85BAF8719F765C39081C7EB559C76F50CE56578E89E6CC8F9D775BC4790EC96AEB6BA8A';
wwv_flow_imp.g_varchar2_table(32) := 'F7060EF089C97AB7786F01E9E42F3D221F628C41229F0F40C71893E3F14E871C204FC0081001040CA1BA02F04A8F137C3595156E821312E2E0D6D157C1A35372E1F461835C5746B754C6040481C199C34F82D993C74B13870971F82DD896B2D89BED8057';
wwv_flow_imp.g_varchar2_table(33) := '75EC0DB4C4B4FD6FC02BBF97933F22320AD025A565002E47863923A3A271474E250488005402520D31782FBF8CCFEE2BAFFA51D19170DD95A378777B029C7FC67008B3D9D450A5890C2C1B4E3ACEE17718AEBD7C24444546C87AB03750517AB8CD90004F';
wwv_flow_imp.g_varchar2_table(34) := 'FE4AC5C98F1912F9951F4F7CF4A3C389C1948CEE909CDEADCD04211E0F55A7875D44007AA0DC051DF57C961BEFAD8B8A876CB27A74E357D55CB8F4FC33213222BC0B52CC91044FFCCB2E3C0B66F1DE4AF76EE972A11AEBEBA1ECC841707E5F00C7F39565';
wwv_flow_imp.g_varchar2_table(35) := 'CA6E3F005EED9527BF33B3CD16064804CE30EDD5418008401D1C039282DDE32A3ED1E79CFC4261C3069F08D3F9EDBC64DEF5C77030BA94C4787870D25D3078507FB9F8F6263EB179B804A41EC1D1C3E0B49931C6C7FC1952975F4E4C1ECD112002D01CE2';
wwv_flow_imp.g_varchar2_table(36) := '8E15E0ED2D3C1994A9F016DBC4DBAF0FAAABBEB2FC4A3FF606EEB9F3461875E13972343EF28BA4E78CE0E73E3FF9D3E9E47702A2E39E084047B03D55E19374F86CBD335EB009D2D2DD788B8D31D7CCB7F378B0EE719270F4E5FF23DD29106CEE76A19989';
wwv_flow_imp.g_varchar2_table(37) := 'A974E5F7AC5BBDC244007A21EDA1076FF3D5D654CBB1F8B8EDB48977C35F860C94E342CD83770AF273EF849818E54C3E0341A0660806FD08790380C7ABBEF2365F7858183C30EE36E9011BBD8A73F048196CFC669BE40E1D2DD74B2D9CD0270B26735B9D';
wwv_flow_imp.g_varchar2_table(38) := '0AF151E20A7E17C061B73BA368AF230244003A828DAAF029B9EA8A52F4CA6ECCADD743AFEEE972586BCFBA8FBF82FC4716C0B32FAF91DCE4D9C5B07EE3375AAB95E5F7EE9101E36FBF410EE3C95FE1E516A19C803C9A214004A019B46D05E3D5AEB20CEF';
wwv_flow_imp.g_varchar2_table(39) := '85BB8E5D7DE94570EAC9AE5972D7116D7C8D7C167ECDBA77417488B202F4AF7E6BBD1CD6C3731A1FEA5C31EA02591512234E88CA1116F6E8693A11808E6857951D057C32CEA9F22FA70C862BFFFE376750977D5965955B199C4AB15C87CBDC9F3E741ED3';
wwv_flow_imp.g_varchar2_table(40) := '6A7FCDC5E7C1A9434F92C537D4D5D24A40321AFA788800F4C119EAEB8E013EF5E654D72BAB3BDC39FA4A6750B73DDE966B4F595444447B87348BCFFEE7D590D5BD9B2C1F6F0F3A1F149223C9A3190244009A41EB128C5D7FE5A41FCEF84FE4F7C68D78BA';
wwv_flow_imp.g_varchar2_table(41) := '2F293E0E7AF7CA7215AED5D7F7B85E901017D31AD26F87184CBAEB467E67204A528AC3111A0A4850E8F24704A003CCF8061B4E743955DDFC8FCB213529DE19D47D3FFE5FFF80BFFE6538C4F1133E29311ECE3AFD14187BF3B5BA97C3A9302D39116EBEF6';
wwv_flow_imp.g_varchar2_table(42) := '72671070B5215CFC448EB090476F5389003446DCDEDC0CB53555B2963EBD7AC0E9434F94C31E9C7B190000100049444154467832529320FBC6AB60E18CFB615EE1BD70F70D57427A4AA211459175E233029E4301EC39C909C8A3090244009AC0EA128AEB';
wwv_flow_imp.g_varchar2_table(43) := 'E5399F77C7D8D1578EF2FB55DEA6663BAC5AF7214C98FE384C7E64117CB8690B8A34D4BDFFF9B73079F602A94CABDFF908B08CFE14883106A3AF1A2567C5A1809238E503E4511501220055E17417D6DCD408F8069C3376C8A0FE30A85F6F67D0E7FDE215';
wwv_flow_imp.g_varchar2_table(44) := 'AFC23BEF6F84CAEA1A2839740456AC5A0BEF7CFCA5CF72D4CAB0EEC34DF0E2AB6F41C9E152A94CEBDEFB0496AC7CCD6FF14306F4854103FBC9F99100F0BD0139823CAA234004A03AA42E81C7AA5D5D7F8CBDFE8A91B8F3CBEDFCF50FD8B27D679BBCABD6';
wwv_flow_imp.g_varchar2_table(45) := 'AE87DABA8636F15A4754D5D4C2EAB736B451F3DDB61FE1A7DFF7B589EF6AC4F597FF5D4EDAD20BA894C3A1EE31C23E22008D50C75B590DF5AE1572FF76E608E89999EEB7B6922365EDE63D52AEFF4972B4039D873A286BBB46B41EC0B50DCF1831AC3504';
wwv_flow_imp.g_varchar2_table(46) := '804BA0D35C800C87EA1E2200D5216D1128BDE2EB7CD88E015C3DEAFC96037EFE0FEAD7C76BCED49424E8D323C3EB312D23F1D1E5E444F7E5BB9DFA069DD0C7E9F56B7FEDA5170270CC80FFB017D050E722521E459B8A081001A808A653145EB1EAEB5CEB';
wwv_flow_imp.g_varchar2_table(47) := 'D88F3CEF2CC0C5319CC7FDD967A6A7C0C4BB6F725B662B352519EEE171FEC80B340FBEC0746FCECD90929C248BC2878C26DD7D33BFA3E08A930FFAE0C13B12179E73A69CA3AEB646F693475D048800D4C55392862BDCE2954B0AF0BF114307F1FFC0B7E1';
wwv_flow_imp.g_varchar2_table(48) := '834E80D9F979D2E21AA3AFBE048A1E180B59DDD20217ECA7041CD2CCE265C0350B2FB9E86FF048C1041836C83589E7A75829DB690ACCF0B9001C52490742F4CF28B388003440BE5ED1658D898982FE7D7AAAA6059708C3C535469D7B064499609D40BCEA';
wwv_flow_imp.g_varchar2_table(49) := 'E39A85D75F761124C5C7AA66E780BE3D2152B1A868FD31EA05A806AE42101180020C35BCD8FDC71E8053D68861278320B40E689D91B4EF1481309B0D460C3D494ED7505F27FBC9A31E024400EA612949C2868A242005F8DF29279FC8FF69F30781E1835D';
wwv_flow_imp.g_varchar2_table(50) := 'D835373581C3418B86F88363477988003A42C78F634D0DAEAFE0E0FA774306F6F5430A654104860C3C1E98A2853636E8FFBC0396436B67A47C05BC4616237474E3C73D9CD60C19341070B6DC19A6BD6F0844F3398093069C20676A6AA061800C864A1E22';
wwv_flow_imp.g_varchar2_table(51) := '0095804431D8F56F6E6E42AFE4460C5167F65F1266D1BF5315182ABF9864513854379B084045489B9B1AE50F5DA0D83E1E5FCDC53872BE21705CCFEE7206BB825CE548F2048400114040F0B9675676FFF14862107FD507CB6F0697181F2717431401F0F5';
wwv_flow_imp.g_varchar2_table(52) := '6A3922043C469B4004A0620DB85DA1F89D3F35EF8BAB584CF8E8CB2DB068C56B30E9A127B99B0B8BB91FE3D4D4A196AC448F670B94432CB57458590E11808AB5EFB03B64694909C6ADF82317C2C3F3DBBE83903F6731BCF0CA5AF866CB7628AFA8E2AE12';
wwv_flow_imp.g_varchar2_table(53) := 'BEE67E8C2B98B304F6EC2FF1C8656C303CCC06B18A0F89B891ACB1450B09ED44002A56A3F23E754A4AB28A92031785AFEF3EBEF4053870F070BBC2FE3C7808E62C791E2A6B5CEF31B49B58C70369A92E2C6908A02EF044002AE2E9507CDA3B25C1FB9B72';
wwv_flow_imp.g_varchar2_table(54) := '9DA9FB79CF7E7879EDBB30EFD95760CD864FE048993A4B753FF3CA9B505BDBF28C427878180C3E69009CFBD7D3E1DCB34E97FC188765C334CFAF7A1BBD013B2C3BDA80B6FCF7ADF7017B20FE084D52BC75288A0E7F4498328F190A4504A0622DB81140B2';
wwv_flow_imp.g_varchar2_table(55) := 'EF04F0C3EE3D306BFED3F0EEC75FC0F7DB77C29BEB3F82A98F2D818AAAC09E832FE55DFDAD3FEC922D3D63C429D0EFB83E909C9C08C9498992FFF411C3E5E3B8F04859A5EBBB85F2011F3C58662C3BDA80B6ACFFF03378F8C9658004E7831829692A2FA7';
wwv_flow_imp.g_varchar2_table(56) := 'E4E17F22CE04F23D6DEA204004A00E8E6DA428AF5A6D0EB613F1F937DFB739D250DF00DF6EFFA94DBC2F11CAC53B703C9D9AD2F675DD343E6489896E599A1B659776B0E0071EEFCC7DBD752760D93DD36DE413909E719D8595EB0E10017486966FC78900';
wwv_flow_imp.g_varchar2_table(57) := '7CC3ABC3D47CE25F3E1E1BE33A99E4C84E3C6515DE57F629ABF41EDF8938F97065B56B4C1FD1C1C73F946FDFE1155C16E087A79CF73ABC652B2DF77D48131FE77ACB9008C01BAAFEC71101F88F5DDB9C0A0638D63ADE6E9BA8FD9894A424AF07955740AF';
wwv_flow_imp.g_varchar2_table(58) := '093A89EC969622A7A8AF6F99079023149E3AC531E5FD7745922E7B93DAF9EE416AB2771B3B127CAC36F41E01EEC85E3D8F1101688476456595CF92CF3A6D18D8C2C2DCF2454445C18821AEB7E2DC0E7631D02323159C4B6CD5F121C5819223E0F9FB93C7';
wwv_flow_imp.g_varchar2_table(59) := 'D5D737B6447322C3C53E5A02FEFD9F36641060D995B9D1B6B34F77ADF7A73CD691BF42311F2108D4643BC2CAD76384A6AF8875909E295E5DABA8F27D126DC880E360F2F8DBE0BA2B46C1B5978F84D1575D0245F78F015C04A403B59D1E0AE7F7D22FBEE0';
wwv_flow_imp.g_varchar2_table(60) := '1C39DDE62D5B61EB8FBB60CFDEFD92DBBA63177CCBE39C09CE39E35488898E7406FDDAA7F21E00961D6D405BD0A6A913EE8241C7F7F6595EB9824C191180CFF875948108A023747C3C66B3B9AEDECAAB962F62FAF7C9824B2F38132EBBF02C1875DE1990';
wwv_flow_imp.g_varchar2_table(61) := 'AE9801F7458E67DA6B2FB90032BBA54BD1388EDEB3671F6CFD61A7E4F6FCB10F304E3AC8FFBEFA762BFCF49BFF4B7B7311D28665471BD016B4A96FCF6E52BCAF7F4A32151424EBAB1C4ADF16012280B698F81D23D86C725EE5554B8E34D083BD8082DCDB';
wwv_flow_imp.g_varchar2_table(62) := '013F4ED259319A9AEC3067C973AA904067BABA72BCBCA2424E160A3D00D9181378880054AC049B82008E9496A928591D51F1B1D170EFDDFF843BFF790D8C3CFF2C18316C300C1ED41F869D7C228CBD6D34DC37F656003EFE07FEB3373B60F6C267E0C75F';
wwv_flow_imp.g_varchar2_table(63) := 'F6F090B15BA9E296A4B297656CA942433B11808AF528288600F83DC05A03BED8D31573CE396D28DC78E548C8BDF55AB88F13C2A43B474B1F2C1DDCFF389832FE0E080FB7B58811019E58B60276EC368E04AA8FF13B00BC1C2D0502080B0F777A69AF0202';
wwv_flow_imp.g_varchar2_table(64) := '820A3248442B0238CBDDEA957655267BA65E2A54277F038FEF05F78FBB5D2601EC091849029E188685477462011DF6050122005FD0EA246D78049F396FED4263D23FFE34D79B7558A6AE389C88549200BEE58824B06DD76F5DC9AE6A9A3DFB0FCAF242E1';
wwv_flow_imp.g_varchar2_table(65) := 'EA2F1B63120F11808A15C118E3574ED715EA9BAD3FAA285D5F514E12888C68E9722309CC7B7A256CDDF5ABAE05D9ACC0308CBAFFAA634F04A032A4522FA05526DE666B6A6E6E0D05DF0E496072EE1DE0220111E63FFDA26E2450DFD8243DAFE0442E3CC2';
wwv_flow_imp.g_varchar2_table(66) := 'F7C7AB9D7969EF1D012200EFB8F81DAB2480A6663B6CD3F98AE977C1DBC9D8B767267823816F77FCDC4E0EF5A2B7EDFC051C76D70C606454B47AC249928400118004837A7FF8F82B1F09C802376FDB29FB83D5E32481A8D6A703F1A45CF8ECCBF0ED0FDA';
wwv_flow_imp.g_varchar2_table(67) := '9280720885DD7FC1660B5608A5729BF18F0840E55A614C8008C595EABBAD3BA0298887014E789004F2F92D422709E0BA1C0B9FD38E0410B3EFB7BBE65094983ACB44FBC0112002081CC3361222A363E4B8063E8EFDF1973FE470A09EB73FFC02264C7F1C';
wwv_flow_imp.g_varchar2_table(68) := '263FB208B6FCB83B50713EE5EFDD230326F35B84F8C153CC8824B080F704367DEF3A51315E0DB7FDA7DF3971BA3E0546DD7F35506D2B8308A02D2601C74446C500634C96B3F1CBEF647F209EB5EF7D06AFBEF52E5456D740C9A12330FFA99760DB4FFADE';
wwv_flow_imp.g_varchar2_table(69) := '9A3B2EAB1B4C1E7F3B3849001F785AB662157CF1DD8E404C6B93F7D3AF5D98E1F315CAB995368929C26F048800FC86AEFD8C8C31505EB1BEE5C3804057DB3D70B8145E7FE7FD364A9F79794D9B38AD237A77CF807C7E77404902CB5F5CAD1A09FCBEBF04';
wwv_flow_imp.g_varchar2_table(70) := 'B628E64EA263CDB7C2B2AF189B35BD60D682057BB962E2DDD704FC2FBF720762D3AE5FBD0F232AAB6AE08F3F0F0522DAAFBCB85E407EEE9D1017DB3A33CF27EB91043EDDBCDD2F79CA4CFF5DBB410E32C6203A36560E93475D048800D4C55396868FAC46';
wwv_flow_imp.g_varchar2_table(71) := '4446CAE15D3FFF063FFCFCBB1CF6D59395D9F22AAFB77C99E9AE157FBC1DD72AAE67661AE4E72109C4B4A8E024F0CCCBAFC1275FB55DDBB02541E7FFDBF990E6A75F5C3845C5C4F2E11435D3CE91F32F0521EB1F6E5DCA15139FE8966E5500BD80817D7B';
wwv_flow_imp.g_varchar2_table(72) := 'C16523CF7393878171B7DF203FA88361BD1DAE3654308193405C6C8B6A4E02CFBDF2061C2A75BDC2DB72A06BFF6E18F16994188F9E54D7A450AAAE224004D055A4FC48171119056111AE4783F7EE3F085F6F732DCFEDAB485CD46352F6CDD0BB6777E915';
wwv_flow_imp.g_varchar2_table(73) := 'DE19F78F83BF0C19E8AB18D5D377E73D9082BC3B20C1F91D3F4E02878EF8FE3AF4A62D3B609FE2FD89183EF60F85D77F55075C458144002A82E94D547C62B25BF4EA007A012868D889FDE0E17BB3015FE1EDD5BDFD6101A6EDCC95F093145D67E9BA721C';
wwv_flow_imp.g_varchar2_table(74) := '49209F9340AFAC1E30F282B361E889C777259B5B9A57DF7E570E3381416C827B0F4A3E481ED5102002500D4AEF82C22322F924569C7CF0C8D13258FDCE4772D808CF363E1771CF8C79307956B1E4D0BF63B7F749465FCA9799960C33EEBB1B6EBCE2EFBE';
wwv_flow_imp.g_varchar2_table(75) := '6493D2FEF7ADF7A1B4AC52F2E35F6C7C128DFD11088D1D1180C600A3F8B88424106C2EA8D7BDF7096C0EF0631F28D75FF7CCCBAF4359996B8C8EFE67FEF3BABFE202CEF7D5D69DB0FEC3CF643978DF3F262E5E0E93473B045CAD523B1D96978CEBD8C527';
wwv_flow_imp.g_varchar2_table(76) := 'BACFD42F5BB90AF697B45D9E5B6BB0F02B41958A55769DFACACA2BA0DC8F958C9DF9FDDDEF2F390A78FB50CECF27FE1253D2E460B07BCC5E7E22009D6A081F0F46E754870B6FCE7DEA25D07BD9303E3FE72C429BBDC3D1D1D136C9038EA8A9AD832796AF';
wwv_flow_imp.g_varchar2_table(77) := '045C75C8292C2E3E09F016AA334C7B6D112002D0165F37E909C9A9600B0F93E34A79377CE18AD572580F0F2ED59D9898D046157E283435A96D7C9B842A462C7C7E15942B16FC0C8F8800BAEDA722C05D104504D00590D44AC21883A4940C607C86DB29F3';
wwv_flow_imp.g_varchar2_table(78) := 'C75DBFC0AA751F3A83BAECEFB8F16AC013DEA92C252509EEBCE11A675097FD7FDE7C0F76ED763DF0839824A404765743978287981222009D2B1427B81292D3DCB4BEF3FE46F8528337EADC9428024307F485B9D327C1AC29B93067EA447872DA4438B97F';
wwv_flow_imp.g_varchar2_table(79) := '1F450A6DBD5F7CF7036CF8E873372589FCE4B7D96C6E71C11E0886F2130118504BF8A2509CC7F3014B57AC82751F6D72FB428FD645C3A7F8325293B45623CBC7AF0FBDC36D5CBEF255390E3D897CD20F1F9A423F397D112002D0176F591BDEE68A553EE6';
wwv_flow_imp.g_varchar2_table(80) := 'CAE7DF56BFB90196BCB8061A9B82771D41D9400F0F2EF0B168C56BB08ADBA83C14979804CAC951E531F26B8F001180F618B7AB21362109A2E35C0F0961C2AFBFDB0E450B9EE5B7E46A301812AEA2BA0666CC7F06367FFF839B3DB1F189101397E0164701';
wwv_flow_imp.g_varchar2_table(81) := '7D112002D017EF36DAE2135320CAE375D73FF61D80071F5F02F85E7C9B0C4116B1E7CF12983E6709E07B10CAA2C7272587F4A3BE4A5BCDEC27023041ED2424A5B69C0CCC5598AAEA633063DE725D27075DDAD5F17DBD75273C3C7739B87DDD87DB98989A';
wwv_flow_imp.g_varchar2_table(82) := '0EB4C8873A18072A850820500455CA8FDDE1243E13CE183F435A653AEC0E58FAC22A98FFEC2B863C35D85A0C9F77FB0E1E86B94FFF07163FFF0AA00D4E0178AB2F3935037012D419477B6311200230167F37ED1151D1909C9E0982CDFD76D896ED3B61DA';
wwv_flow_imp.g_varchar2_table(83) := '638B60F9CB6BE14859855B1E33050E9596C3B297DF80697316C3D61D3FB9152D3C32125232BA4378247DDCC30D5EB2C95100000A89494441541883034400065780A77A5CFF3E959F28D1B17C7290B98EE20ABC5F7CB3051E98351F5E7C7D0354F02182EB';
wwv_flow_imp.g_varchar2_table(84) := 'A8B1BEF2AA1A58B9663D4C995D0C9BBE715F0D88090CE293522039AD1BD86C61C6165427EDC1A48608C084B525BD3CE43C69148F0E63511D7611DEDFB809264E7F0C5EFDBF8FA0ACB21AA30D71A8FB95B73F80490F3E0E1F7CFA25EFEE8B6EE5888A8981';
wwv_flow_imp.g_varchar2_table(85) := 'D48C1E7CBCCFC9CCED0805CC82001180596AC24B39C22322A51328362111F04AEA99E4ED773F817B0A9F80C2B94FC15B1F7C0E7B0F1CD6F441227C900775A02ED489BAFFEF834F3D8B0558EE948C4CC0271E059BADCD718A300F024400E6A98B764B8213';
wwv_flow_imp.g_varchar2_table(86) := '84699959D29D026F44B067EF9FF0DADBEFC1F4C716C3A4879E8497DE781776ECDE034DCDAE0F6BB42BBC93034DCDCDF00397F5E21B1B6022271BD481BA50A767565B980D1252D22039BD1BD01B7D9EE898334C0460CE7A69532AC6049088A01B278278EF';
wwv_flow_imp.g_varchar2_table(87) := '3D02CC54C18704EF7DF2053CB6F879B8EBDF33E0FEA2627874E94A7876F5DB801F16F96CF376F8F1973D804B81E1D777EB1B1AE1E0913229EEB3CDDBE08DF73E856757BD2DE5F937CF7BD7BF67C2E35CD6FB9F6C025C821C75783A9CB7C0371D5379D9A2';
wwv_flow_imp.g_varchar2_table(88) := '145F45F24C678570B0D9480410643586F303382448CBECC9BBD82910CE67D73B32E1F0D132D8F9D3AFB0F18BCDD287459E7EE93598B3E8796929B09C078A2067F22C9832AB588A7BFAA535F0C63B1FC0C64D9BA53CB87C5947B223A2A220292D439ADD8F';
wwv_flow_imp.g_varchar2_table(89) := '8A695D1518E8174C08100104536D29CACA1883A89838C0D9F5D46E3DA4E1416764A0C8EE9797310691D1D19C785221BD7B4F48E2F7F4E9251EBFA0344D26C13425A182F88D00BE628CC3032483F41EBDF889990E3171F180937182CDBF4938C12600120A';
wwv_flow_imp.g_varchar2_table(90) := 'DE8E8C4B4C96AEF469FCA44F4C49E7C4130BD81301FA053D024400415F85EE0630C6A4CF93E3498B937138799891D51BD2BA67F1AE7AA67422E3445D7CEBB3F8718949D215BDA52B9F09A9993D2003D3F32106124A3CBF1D896482577AC6140F26B8ABA5';
wwv_flow_imp.g_varchar2_table(91) := '1000042308821E856EB285073E1DAD474143588720D8A499793C9171A22E3A365E9A54C4B7F170FC8EF138734F0FEB98A311D821AC518F92E84200825D2402D0A3364947C820600B73E872CEE842007A191332B54F86581E81467B0811805EC658BED510';
wwv_flow_imp.g_varchar2_table(92) := '008621A0B6E20816A6CBB250BAF400F43246ED4A207984805108844584500F009A6AEB8C0292F41202C18840F3B1FAD099044C82ACDA60AC042A33216014027A9D33BA0C010A0BAF43366B300A4CD24B0868898006B21B5ACF190D44BB8BD485005A54B2';
wwv_flow_imp.g_varchar2_table(93) := '92963DFD13028440C708E877AEE84800221140C7B54E47098156041C7B5A3D9AEF7424002002D0BC3A4941282020B210EC0130805DA15039640321A044400BBF2042E8F5004410BF07FA11028440A708E879AEE8360470308108A0D3AAA7048400809EE7';
wwv_flow_imp.g_varchar2_table(94) := '8AA017E0698D077FE6BA1CDCD146081002ED2350DB7AAEB49F42C523BA11406161219EFCBB552C3B8922040C454023E5DB5BCF158DC4BB8BD58D0050ADC8808601403F42A07D0418305DCF115D098039E063A01F214008B48B80288AA14B0062B8ED6D6E';
wwv_flow_imp.g_varchar2_table(95) := 'B9C81D6D840021D01601D111DEF466DB68ED6274ED012C78E0AEFD20C236EDCC21C984803E0868A2859F1B0B1FC83DA089EC7684EA4A005806C6603DEEC9110284803B02469C1BFA138043240270AF770A110212020ED1F186E4D1F14F7702A8CD103E07';
wwv_flow_imp.g_varchar2_table(96) := '607F00FD0801424089C0DED4E6C39B95117AF8752780E5D9D94D008EE7F5308E7410025A20A08D4CF1B9C2C2425DD60154965F770240E576D1FE1CDFD3DD000E026D840047A0196CC2B37CAFFB6608012C9A3AFE0F7EF6BFABBBB5A49010302702EB8A27';
wwv_flow_imp.g_varchar2_table(97) := '67EF35A2688610001A6A73888FE09E1C21607504048738CF280C0C238079D3C67C2C026C30CA70D24B08F88380DA79F01CC073416DB95D956718014805B4C103D29EFE08018B2220DAD9BF8D34DD5002583039672B377E2D77B41102564460EDC2E9D9DB';
wwv_flow_imp.g_varchar2_table(98) := '8D34DC500240C36D82FD3EBEAFE18E3642C04A081C131DEC5EA30D369C00E64E19F78B28B269460341FA0981CE1050F5B808F72D9896FDABAA32FD1066380160994B06242FE0FBCFB8A38D1008790418C0E7C55373969AC1505310C0EAEBAEB3F3A1C06D';
wwv_flow_imp.g_varchar2_table(99) := '1C101A0A7010680B69048E391CEC5F66B1D014048060E0508089E2ADDCEFE08E3642201411708028DE6C86AEBF135CD310001668FED431AF016305E827470898090135CAC2E7BAEE2D9E3AE6753564A925C35404804615E7673F0222E0BB021824470884';
wwv_flow_imp.g_varchar2_table(100) := '0A02F3174CCD36EC89BFF640341D016041EBD35936DFBFC71D6D84402820F07A4A53C93D6634C4940480AF0CD737B1AB18C01A3382466522047C40602D6FCB3715164ACBE2FB904D9FA4A62400347D796176EDFCFCEC6B990833314C8E10300A8100F4CE';
wwv_flow_imp.g_varchar2_table(101) := 'E643DAABB12D072043D3ACA62500C96AC6C4F95373A6F19E00DE36B14B71F44708981F814651146F2A2EC8C9E793DAA2998B6B6E0268456E7E41CE0AC6D8D93CF81377B41102E64580C1768708672F983AE625F316D255B2A020002C2E1F0E7C55D51439';
wwv_flow_imp.g_varchar2_table(102) := '1C407C88879BB8A38D10301302BC4D8A33EA53D988855373745FDBCF5F20828600D0C0E70B6FAB2F2E18536867C2601E7E8B3BDA08014D11E88270ECE2BF6A13EC27F1B6391D27B0BB90C73449828A009CA82DCABFFBE7E2829C2B1C4C3C87CF0F7CEE8C';
wwv_flow_imp.g_varchar2_table(103) := 'A73D21A0270222838F45411CC1DBE23FF049563D75ABA52B2809C069FCC2FC319FF3F9817344D1F15710D94A1EDFC01D6D8480960834008397F0E2B3203FE7820553C66CD15299D6B2839A009CE02C983AF6CBE2A9D9B78437B19EBC72708515C35FB374';
wwv_flow_imp.g_varchar2_table(104) := '968DF62183C06FC0C407B08D15E7E7DC84179F50B02C2408C059114F14661FE595F338EF929DC0401CC5E317F301DA3EBEA78D10F019016C3BBC1D2DE1C3CC91BC4DF52BCE1F3307DB98CF824C9C21A4084089F3FC82311B78A58D5B5090D35BB4C1703E';
wwv_flow_imp.g_varchar2_table(105) := '5EC3454736F234C7B8A38D10F08600B60DDE46D874018453B0EDF07634767E414EC83E961EB204A0AC5D5C7B908FD7667242388FBB389BE0E8C709E17F99080FF374B826E1F700A2AE5F65E57A69330C01A9AE799DC35A6C03D81644073B01DB0677BC8D';
wwv_flow_imp.g_varchar2_table(106) := '64CF985770371E37AC847A29B6040178823977CAD8DF3821AC993F35E7415EE15771774A71C198ACE2821C26C63746094D75C9CD4DF6EE6162446F87C3763C84C300DE484E66E0186607360204C769E4CC8701D60DD611D615D619D61DD621D625D629D6';
wwv_flow_imp.g_varchar2_table(107) := '2DD671714B5DF33ACFB90ADB00B60533BDA3EFD95EB50C5B92003A0274415E5EC3BCC249158B0BC7953C39F5F67D0BA7DDF57BF1FD39BB7923F9717EC1D86D8B0AB2BF2B9E32F65B72E6C300EB06EB08EB0AEB0CEB0EEB10EB12EB14EBB6A3BA571EB38A';
wwv_flow_imp.g_varchar2_table(108) := '9F08C02A354D7612025E102002F0020A45110256418008C02A354D7612025E102002F0020A45591B012B594F0460A5DA265B09010F0488003C00A120216025048800AC54DB642B21E081001180072014B4360256B39E08C06A354EF612020A0488001460';
wwv_flow_imp.g_varchar2_table(109) := '909710B01A02440056AB71B2971050204004A00083BCD646C08AD6130158B1D6C96642A015012280562068470858110122002BD63AD94C08B4224004D00A04EDAC8D8055AD2702B06ACD93DD84004780088083401B216055048800AC5AF3643721C01120';
wwv_flow_imp.g_varchar2_table(110) := '02E020D0666D04AC6C3D1180956B9F6CB73C024400966F02048095112002B072ED93ED96478008C0F24DC0DA0058DDFAFF070000FFFF70E3D9FF00000006494441540300F7ADF6D3214F4E160000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(154889409894916433542)
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
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA00001000494441547801EC9D079C1445FAFE9F99D999CD3990A3481044C49C31E7AC60163D4CA76738F5A2977E97FE67383D130630A0206042544C18308082880A0A88';
wwv_flow_imp.g_varchar2_table(2) := '221297CD39877FBDCD712CB0D3DD933B3C7C767667AADEAA7ADF6F35D34F5755577B6FFCFB239D7C91018F011E033C06780CF01870D731E005FF910009900009900009B88C004001E0BA2E67C0244002244002244001C06380044880044880045C474002';
wwv_flow_imp.g_varchar2_table(3) := 'E6088050E08B044880044880045C468002C0651DCE70498004488004DC4E605BFC1400DB38F03709900009900009B88A000580ABBA9BC1920009900009B89DC0F6F82900B693E05F122001122001127011010A0017753643250112200112703B811DF153';
wwv_flow_imp.g_varchar2_table(4) := '00EC60C17724400224400224E01A021400AEE96A064A0224400224E076025DE3A700E84A83EF49800448800448C0250428005CD2D10C930448800448C0ED04768E9F0260671EFC4402244002244002AE204001E08A6E66902440022440026E27B06BFC14';
wwv_flow_imp.g_varchar2_table(5) := '00BB12E167122001122001127001010A0017743243240112200112703B81DDE3A700D89D095348800448800448C0F10428001CDFC50C900448800448C0ED04BA8B9F02A03B2A4C23011220011220018713A000707807333C122001122001B713E83E7E0A';
wwv_flow_imp.g_varchar2_table(6) := '80EEB93095044880044880041C4D8002C0D1DDCBE0488004488004DC4E2058FC1400C1C8309D044880044880041C4C8002C0C19DCBD0488004488004DC4E2078FC1400C1D93087044880044880041C4B8002C0B15DCBC0488004488004DC4E402F7E0A00';
wwv_flow_imp.g_varchar2_table(7) := '3D3ACC23011220011220018712A0007068C7322C122001122001B713D08F9F02409F0F7349800448800448C0910428001CD9AD0C8A0448800448C0ED048CE2A7003022C47C122001122001127020010A0007762A43220112200112703B01E3F829008C19';
wwv_flow_imp.g_varchar2_table(8) := 'D182044880044880041C478002C0715DCA80488004488004DC4EC04CFC14006628D186044880044880041C468002C0611DCA70488004488004DC4EC05CFC1400E638D18A044880044880041C458002C051DDC960488004488004DC4EC06CFC14006649D1';
wwv_flow_imp.g_varchar2_table(9) := '8E044880044880041C448002C0419DC950488004488004DC4EC07CFC1400E659D192044880044880041C438002C0315DC940488004488004DC4E2094F8290042A1455B122001122001127008010A00877424C3200112200112703B81D0E2A700088D17AD';
wwv_flow_imp.g_varchar2_table(10) := '49800448800448C0110428001CD18D0C820448800448C0ED04428D9F02205462B427011220011220010710A0007040273204122001122001B713083D7E0A80D099B10409900009900009D89E000580EDBB9001900009900009B89D4038F1530084438D65';
wwv_flow_imp.g_varchar2_table(11) := '48800448800448C0E60428006CDE81749F0448800448C0ED04C28B9F02203C6E2C4502244002244002B626400160EBEEA3F32440022440026E27106EFC1400E192633912200112200112B031010A001B771E5D270112200112703B81F0E3A700089F1D4B';
wwv_flow_imp.g_varchar2_table(12) := '92000990000990806D095000D8B6EBE838099000099080DB0944123F054024F45896044880044880046C4A8002C0A61D47B7498004488004DC4E20B2F8290022E3C7D224400224400224604B021400B6EC363A4D0224400224E0760291C64F0110294196';
wwv_flow_imp.g_varchar2_table(13) := '27011220011220011B12A000B061A7D165122001122001B713883C7E0A80C819B20612200112200112B01D010A00DB75191D260112200112703B8168C44F01100D8AAC83044880044880046C468002C0661D4677498004488004DC4E203AF15300448723';
wwv_flow_imp.g_varchar2_table(14) := '6B21011220011220015B11A000B05577D159122001122001B7138856FC1400D122C97A48800448800448C0460428006CD45974950448800448C0ED04A2173F0540F458B22612200112200112B00D010A00DB74151D250112200112703B8168C64F01104D';
wwv_flow_imp.g_varchar2_table(15) := '9AAC8B044880044880046C428002C0261D4537498004488004DC4E20BAF153004497276B23011220011220015B10A000B04537D149122001122001B7138876FC1400D126CAFA48800448800448C0060428006CD04974910448800448C0ED04A21F3F0540';
wwv_flow_imp.g_varchar2_table(16) := 'F499B24612200112200112B03C010A00CB77111D240112200112703B8158C44F01100BAAAC93044880044880042C4E8002C0E21D44F7488004488004DC4E2036F15300C4862B6B25011220011220014B13A000B074F7D039122001122001B7138855FC14';
wwv_flow_imp.g_varchar2_table(17) := '00B122CB7A49800448800448C0C20428002CDC39748D0448800448C0ED0462173F0540ECD8B26612200112200112B02C010A00CB760D1D230112200112703B8158C64F01104BBAAC9B044880044880042C4A8002C0A21D43B7488004488004DC4E20B6F1';
wwv_flow_imp.g_varchar2_table(18) := '5300C4962F6B27011220011220014B12A000B064B7D029122001122001B7138875FC1400B126CCFA49800448800448C0820428002CD82974890448800448C0ED04621F3F0540EC19B30512200112200112B01C010A00CB75091D220112200112703B8178';
wwv_flow_imp.g_varchar2_table(19) := 'C44F01100FCA6C83044880044880042C468002C0621D4277488004488004DC4E203EF15300C487335B21011220011220014B11A000B05477D019122001122001B7138857FC1400F122CD7648800448800448C0420428002CD41974850448800448C0ED04';
wwv_flow_imp.g_varchar2_table(20) := 'E2173F0540FC58B32512200112200112B00C010A00CB74051D210112200112703B8178C64F01104FDA6C8B044880044880042C428002C0221D4137488004488004DC4E20BEF15300C497375B23011220011220014B10A000B04437D009122001122001B7';
wwv_flow_imp.g_varchar2_table(21) := '138877FC1400F126CEF648800448800448C0020428002CD00974810448800448C0ED04E21F3F0540FC99B345122001122001124838010A808477011D200112200112703B8144C44F019008EA6C9304488004488004124C800220C11DC0E6498004488004';
wwv_flow_imp.g_varchar2_table(22) := 'DC4E2031F1530024863B5B25011220011220818412A00048287E364E0224400224E07602898A9F022051E4D92E09900009900009249000054002E1B369122001122001B713485CFC14008963CF9649800448800448206104280012869E0D930009900009';
wwv_flow_imp.g_varchar2_table(23) := 'B89D4022E3A70048247DB64D02244002244002092240019020F06C960448800448C0ED04121B3F054062F9B375122001122001124808010A80846067A32440022440026E2790E8F8290012DD036C9F041481EA8A3294156F44C9A6F58E7E95156F427545';
wwv_flow_imp.g_varchar2_table(24) := 'A98A983F2440028926400190E81E60FBAE272027FDE6C60674B477389E45477B3B9A1B1B3591E3F860192009E812487C260540E2FB801EB898809BAF8665D4C3C55DCFD04920E104280012DE0574C0CD045A5B5A5C1B7E6B4B936B6367E0246005021400';
wwv_flow_imp.g_varchar2_table(25) := '56E805FA4002244002244002712640011067E06C8E04BA12F007025D3FBAEABD3F90E2AA78192C09EC20608D771400D6E8077AE15202D979852E8D1CC8CE2B706DEC0C9C04AC408002C00ABD401F5C4DA0A84F7F24A7A6C1EB73FE7F47AFCFA7624D85C4';
wwv_flow_imp.g_varchar2_table(26) := '0CFE23019712B04AD85EAB38423F48C0CD04E46AB8A0675FEDC42827C7ED2F2326D75F792112F932F26F7B1CDBFF16F4ECA3AEFCDD3BEA61C48BF924104F021400F1A4CDB64880044880045C4EC03AE1530058A72FE80909900009900009C48D000540DC';
wwv_flow_imp.g_varchar2_table(27) := '50B321122001122001B713B052FC140056EA0DFA4202244002244002712240011027D06C860448800448C0ED04AC153F0580B5FA83DE90000990000990405C085000C405331B210112200112703B01ABC54F0160B51EA13F244002244002241007021400';
wwv_flow_imp.g_varchar2_table(28) := '7180CC26488004488004DC4EC07AF1530058AF4FE81109900009900009C49C000540CC11B301122001122001B713B062FC140056EC15FA4402244002244002312640011063C0AC9E0448800448C0ED04AC193F058035FB855E91000990000990404C0950';
wwv_flow_imp.g_varchar2_table(29) := '00C4142F2B270112200112703B01ABC64F0160D59EA15F2440022440022410430214003184CBAA498004488004DC4EC0BAF1530058B76FE81909900009900009C48C000540CCD0B262122001122001B713B072FC140056EE1DFA46022440022440023122';
wwv_flow_imp.g_varchar2_table(30) := '40011023B0AC960448800448C0ED04AC1D3F0580B5FB87DE91000990000990404C085000C4042B2B250112200112703B01ABC74F0160F51EA27F246082406B5B1B2A6BEAB0B1B8142B7FF8094BBE5E89F7162EC5EBEF7D82396F7D80E75F7B07335F7913';
wwv_flow_imp.g_varchar2_table(31) := 'D35F9A87692FBC862767BD8229335EC6D4E75EC653B3E6E219953643E5CD7AE52DBCF0FA7C5566015E7FF76355C7E758F2D54AAD4EA9BBAAB61EAD6DED263CA2495702D51565282BDEA85E9B505D51DA358BEF49206104280012869E0D9340E4049E7FF5';
wwv_flow_imp.g_varchar2_table(32) := '6D4C9DFE221E9BF63C66BCF02A5E99371FEF2D5888C59F7F8995ABBEC3BA75EBB169D316949494A1BCBC125555D5A8ADA945437D039A9B9AD0D4D884FAFA7AD4A8B44A9557565E81AD5B4B5599CD58F7D30655C71A2C5EFAA556A7D43DFDF9B9AAADD998';
wwv_flow_imp.g_varchar2_table(33) := '3AE32548DB9147E0FC1A4A36AD477363033ADA3BD4AB5DBD6F84A4393F72B74768FDF82900ACDF47F4D0A504DA5A5B0C232F292D4753B3B19D6145211A34353543DA362A662606A33AEC9CAF77B54F1160E79E7586EF1400CEE84746E100021DEDEAEAB0';
wwv_flow_imp.g_varchar2_table(34) := 'A901753555A82CDB8A8AD262DB47253154AA386AAB2AD0D45087F6B656DBC7144A00AD2DFAE28C2220149AF6B2B583B7140076E825FAE85802728268ACAF55F3C265EA84BF05D5E56568A8AD416B7333D0E980B0550CDB62AC434D65052A4AB668E2A6AE';
wwv_flow_imp.g_varchar2_table(35) := 'BA524D41A861F18E0E0704195908140191F163E9F009500084CF8E2549206402EDED6D686AAC875C116B2743EDEA589D0CFF3B471C7285362BD0298240899B863A257A94D829DFBA0955E52568ACAF434787F31617FA0301533D4411600A938D8CECE12A';
wwv_flow_imp.g_varchar2_table(36) := '05803DFA895EDA99803AEB35A913BCCC0797176F464D45B976C26B6B75D77078775DD8D9D18996A6264D10956FDD829ACA723532D0D89DA92DD332B3F390E4F79BF29D22C014261A45910005401461B22A12E84AA0ADB5459BCF2F57C3DE351565DAEAEF';
wwv_flow_imp.g_varchar2_table(37) := 'AEF98978EFF1003E9F17C9C9016466A423272B03A929C9484AF2C1E3F12091FF3AD574405343BD9A06294579C9668D5D6B8B9A0A49A45311B6EDF5F990959B0F5F5292A99A28024C61B2BC915D1CA400B04B4FD14F5B10E8ECEC4053439D36AC5D5152AC';
wwv_flow_imp.g_varchar2_table(38) := 'CDE7B7B7B5C5DCF7E4643F46EC3908471DBA3FC69F7912265D7C0E6EB8F202DC7AED65F8DD4D93F0B75F5F8F3BEFB81977FFF197DAEBCEDFDFA4D27E8EBFDC761DFE9F7A7FD71F6E51E9B7E0AE3FDC8C7FFCF617F8C32D57E3F69F4FC48D932ED2EA3AFF';
wwv_flow_imp.g_varchar2_table(39) := '8C1331EEB003B0D7D0C1484F4F8D793CEDAD6D1ABBCAD2ADDA9A019932904592316F38060D24F9039A08F0FA7CA66AA7083085894651204001100588AC8204E44A5516B66D1BC6AED086B5A34D252D3505FDFBF6C2BE7B8F5027E30371D629C7E1BA8913';
wwv_flow_imp.g_varchar2_table(40) := 'F09B5FFC0C7FB8F91A4CBAE81C4C38FD789C32EE601CBEFF68ECBFF770EC3D6C30860EEC8BBE3D0B51949F83FC9C2CE4AAABFEECCC7464AB11806D7FD3B434C92BCCCB41EFA27CECD1BF3746EE391063470ED5EA3AF5E84370F1594A585C74367E7BC3CF';
wwv_flow_imp.g_varchar2_table(41) := 'F05BD5E60D575E88734F3F01471F7610C68C1AA1F996919E16EDB0B50591C2B6A2748B362A60C73B09FC81E46D22C0EB85997F1401662859D5C63E7E993B1AED130F3D2581B81290C56B5565EA2A555DA946F32AD5E3F12010F02337370723470CC584B3';
wwv_flow_imp.g_varchar2_table(42) := '4E5157F417E10675C2FFC5C4F19878DE2938EBF8C371D03E23307C703F75822F5027F74CA4BDCF63970000100049444154A9E1FC5801F0AB6982BCEC4CADAD61AACDFDF71E86D38F3914979F77326EFAD904FC428D385C77F9048C57BEEE3B7A24F29498';
wwv_flow_imp.g_varchar2_table(43) := '485631A850A2E2926CA4237748C8C84A6D7505648A252A15C7A99240728A26023C5E8FA91629024C61A2510404BC1194655112702D0159D427F7EACB6AFE96E6E8CD5367A8ABF2512387E1BC334EC2AFAFBF0277FEEE06DC7EF54538F9A803B1D790FEDA';
wwv_flow_imp.g_varchar2_table(44) := '55BCD7E409249E9D23A7B4C2DC6C356A3000A7285F6FBAE27CFC4B4D25DC7EFD955A2CA3F61A8ECCACCCA8B8D4D9D989C6BA3A881090458332FA12958AE350492025551301106026DAA3083001C9622676728702C04EBD455F134EA0A5A951CDEF974216';
wwv_flow_imp.g_varchar2_table(45) := 'F569F7EA47E85192DF8FFDF7DD1B979C7F06FEACE6E3EFBAE326DCFAB30B70EAB883B461787F92B9C56311BA1193E27E356230A47F2F15CBC1B875D204DCFDFB1BF1A75BAFC5C5E79E867DD43486D985717ACE3535D443D609C85EFBD2377AB696C9EB0C';
wwv_flow_imp.g_varchar2_table(46) := 'CD138A80D078D1DA3C010A00F3AC68E962027295595359A69DFC233DD16467A563FF317BE38A0BCFC25F6EBB16575D70068E3D645F0CECD303A9C901783C1EC791F6783C90E980417D7BE2F8C3F7C7CF2F39077FFAE535B8E0EC5330769F9110269104DD';
wwv_flow_imp.g_varchar2_table(47) := 'DCD8A0F58D08332B4F0D343735A05A1D47A16EF2441110C9D111CFB2F66ACB6B2F77E92D09C497405B6BAB768FBA5C6536353484DD78465A2AF61A36445BA17FD3A44B31E9C2D371D48163D0A7285F3B317A3C9EB0EBB663411103FD7B15E2A4230FC455';
wwv_flow_imp.g_varchar2_table(48) := '179E895BAEBE0C72A7C1F0A17B401612864B439B9A292D467D4D15E4B6422BB16956A3472250423DF96F8F8122603B09FE8D16010A806891643D8E22203BF6697BF2AB93892CF40B27389FD78B81FDFBE09C538FC3ADD75D8EDBAFB9585BA13FB85F4FA4';
wwv_flow_imp.g_varchar2_table(49) := '0402E154E9C83232EA21A31F72A7C16FAEBB14B75D7719CE38F918F4552322DE308451A71A62AFAFAD416559311A1BEA2CC16CFBC95F7C8BC4218A8048E8C5BEACDD5AA000B05B8FD1DF981390D5FC95EAC42F2BCE65C159A80D7A3C1E1CB8EF28FCF197';
wwv_flow_imp.g_varchar2_table(50) := '57E34FB75C85338E3B1C32F4EDF1847B5D1BAA07F6B61FD8A727CE3EE148FCF5D66B7187E2B7DFE8BDC20AA8ADB50DB59515DAD4404B7353587544A3904C19C9957F38C75277ED530474478569E110A00008871ACB3892405B6B8BB60B9DDC732EB79C85';
wwv_flow_imp.g_varchar2_table(51) := '1AA40C5D1F7BC441F8FB6F6EC0B5979E8B01EA44C6537EA81477D87B3C1E0CEED71BD75F7E3EFEEFF69FE3B8230FD6A6077658987B2727E0AAB212D45657A2BD3DBECF1B90B665CEDFD4C95F0E167999088B22C004A4B89BD8AF410A00FBF5193D8E0181';
wwv_flow_imp.g_varchar2_table(52) := '86BA1A3564BC35AC7DE8F372B370F2B147E037375C818BCE3C11B2914E3843D73108CB11557ABD1EF4EF5D844BCE3E09BFFAF9448D7556567AC8B135D6D542F66C686AAC0FB96C380564D4413BF977A83909A30A3C40766E01B2F30A60769F00B9F3C1A8';
wwv_flow_imp.g_varchar2_table(53) := '5AE693801E010A003D3ACC733C0159DD2F4FA3ABAB96456326BEA8BB10919DF9CE5473D5B75F7B39269C762C64B73D9F8FFFA5BA208AFA5B1102C2FAF6EB26E2A4630ED79E67104A23B22D734D45B91A0DA888E92241EDE45F51A6DA303EA63C72F25727';
wwv_flow_imp.g_varchar2_table(54) := 'FEE4D43424A7A46942C0EB353E8E5A5B1237AD110A73B7D8DA314EE3A3CC8E51D167123041A0BEB65ABB2294A7D19930FF9F897C391F71E80190FDF565AEBA5751FEFFF2F8263E04FAF52CC405A71F873FDE72350EDC7F4CC88DCA464295E5259021FA90';
wwv_flow_imp.g_varchar2_table(55) := '0B1B1490937F8D76F2EF30B08476CB67565EA176E2C77FFF0564B3202508BC3EDF7F53F887046243800220365C59AB8509B4B634AB137F09EA6BAA11EAAAEC11C386E0F7374DC295E79F0AD916D7C261BAC2B5C2BC6C5C7BD199F8CD2FAEC4F0A183438A';
wwv_flow_imp.g_varchar2_table(56) := 'B9ADA50555E5A5DA711052411D6339B66A2ACBD0D161F6E45FA04EFEA9BBD528DB06CB7480DE6649FE40CA6EE598902802F66C9702C09EFD46AFC3242057FD95655B215769A154D1BB57117E76F139B8F18AF1DA0E7D6AD43694E2B48D2101AF1A431F3E';
wwv_flow_imp.g_varchar2_table(57) := 'B83F6EBDEA625C7CDE69282A0C6D44468E0959242827EF48DC94F2D515A530B38054E6F9E5049FACAEF683B5E90F246B6B0264B74874F34FCA7793CC2412304D8002C0342A1ADA99805C91C997B35CF587B2114B722080638F3C04B7A893CB11FB8FD676';
wwv_flow_imp.g_varchar2_table(58) := 'EAB3330727FB2E5B0F1F7FD8FEB879D24538EEA84311F0FB4D872B82504440435DADE9325D0DB79DFCD5957FBB892B7FAF479BE797A1FEAE7574F75E1E259C935F84E4D454787D5EF5F269EF8BFAF407FF5987805D3DA100B06BCFD16FD304DADB5A2127';
wwv_flow_imp.g_varchar2_table(59) := 'FFE6C646D365C4709F51C3F1ABEB27E2D2B34F843CE846D2F8B23E81DE45F9B8E4AC1370EB759761D89E83B57976335ECBAD7A720BA8DC2E68C67EBBCD8E93BFF12D861EAF575DD517C2CCC97F7BFD5E9F4F2B53D0B32F0A7AF6D1DE6FCFE35F12888400';
wwv_flow_imp.g_varchar2_table(60) := '054024F458D6F204E4CBB9B2AC04A13CB847E65D7FF1B38B70CBCF2ED086FB2D1F241DEC96C0B041FD203B0B5E7DE979485557D0DD1A759328B70BD6985CC4277B476873FE26F617F06A27FF02C8FC7E37CD32C9B604ECEB3805807DFB8E9E1B1090ED57';
wwv_flow_imp.g_varchar2_table(61) := '2B4BB7AA3959E32BB3ED55C955FF9F6FBD06FB8D1ABA3D897F6D4CC0E3F1E0907D47E2CFB75E8D7D460E371D893C53A05ACDE7CBE851B04272F2977BF1DBDB8C8F2FAFCF8BAC3C9EFC83B1647A6208500024863B5B8D3101794C6C7579A9E956E4E134E7';
wwv_flow_imp.g_varchar2_table(62) := '9D7E02AEBEE82CC82D66A60BD2D016047AE4E7E29A4BCEC629C71F657A6D404B73B39A3A2A53A347BBDF6FBFE3E4DF6618BF9CFCB3F30A79E56F48CA9E0676F69A02C0CEBD47DFBB25505F53859ACAF26EF3BA4BCCCFCBC58D932E863C8C263D35A53B13';
wwv_flow_imp.g_varchar2_table(63) := 'A63980405A4A32CE3F799C7637478FA2025311B5B5CAFA91323437EE7812E4F6B4F6363327FF6DF3F7FE40B2A9F6684402F1244001104FDA6C2BE60464D8569E0467B6A1317B8FC01F6E9E84917B0E34BD58CC6CDDB4B31E018FC78383F619815BAFB904';
wwv_flow_imp.g_varchar2_table(64) := 'B2A783190FB7DD415286C6FA5AB4C982D2CA52983FF91780277F3394ED6A636FBF2900ECDD7FF4BE0B81F2AD9BD5959AB995FE49493EED9EF1EB2F3B0F3999A1EF2BDFA559BEB52181A2BC1CDC7AD545B8E0EC93919494642A82DAAA4AD45494A1BDD5F8';
wwv_flow_imp.g_varchar2_table(65) := 'CADFA78EAF6C35E7CF93BF29B4344A10010A80048167B3D12550B279BDA9AB3269352F3707B75D3711C71DBA1FFCEA8B5AD2F8721F81249F17271E71206EB8F2421414E4C1CC3F19FE37B293BB48B2D59C3F4FFE46A4EC9F6FF7082800ECDE83F41F655B';
wwv_flow_imp.g_varchar2_table(66) := '36C2ECE63EFDFAF4C24D932EC2F0C1FD38E4CF63473B06C68CD803575D7436FAF7EB1331916D27FF02C8063E1157C60A4820C6042800620C98D5C796800CFBCB1CAD995686EC3110BFB8620206F42E32634E1B1711903D03AEBDE41CEC397840D851F3E4';
wwv_flow_imp.g_varchar2_table(67) := '1F363A9B16B4BFDB1400F6EF43D7465051B2C5F4B0FF98BDF7C2AFAEB90445F939AEE5C5C0F509C80E82BFBCEA620C1D3248DFB09B5C9F3F49DBA18F57FEDDC061926509500058B66BE8981E0179A08F99F958A9E3E8C30FC20D979D8B80FA9296CF7C91';
wwv_flow_imp.g_varchar2_table(68) := '403002A92901FCFABA4B71F841638399EC962E0FEB91397FF9BB5B26131C4BC00981510038A1175D16836CF063666B5F9FCF87938F3B52DBCB3F898BFD5C7694841FAECFEBC5C4F34FC329C71E61AA1211A2ADCDBB6F1664AA308D48208104280012089F';
wwv_flow_imp.g_varchar2_table(69) := '4D874EA0A6B20CB2C5AF51C980DF8F734F3B1EE34F3D065EF5856E64CF7C12E84A40EE1038EF946370CEA9C7754D0EFA5E1E20D475B3A0A086CC70080167844101E08C7E744514B55515686AD8B1235BB0A0E5847FD9F8D371CAB883E10966C474123020';
wwv_flow_imp.g_varchar2_table(70) := 'E0F57A70C67187E38A0BCE32B054D99D80880079F894FAC41F12B005010A005B74139DACABA942637D9D291013C79F81C3F61F6DCAD6CD46EA9C65F6EE493763C251078DC1F9679C68C8A0A3BD1DF23861F96B684C035B13708AF314004EE94907C7215B';
wwv_flow_imp.g_varchar2_table(71) := 'B036D4D6988AF0F4138EC21107EEC32BFF20B4D66F2EC1DCF91FE3EE479FC51FEF9E8C3FDFF328EE52EF256DD3D6B220A5982CCF8938FDC4A30D41B4B6B4A891800A433B1A90801508500058A117E84350022DCD4DDA555550832E19078C1985734E1A07';
wwv_flow_imp.g_varchar2_table(72) := '8F8703FF5DB0686F5B5ADBF0FEA22F70CF23D3F0D2EBF3B162D5F7D8B0692B7EDAB805DFA8F79276F7E46998F7C122B49A78BCAD56A9CB7E9D75C21138E998C30DA36E6E6CA40830A4646703E7F84E01E09CBE745C241D1D6A48B5A60A9D32566D10DDD8';
wwv_flow_imp.g_varchar2_table(73) := 'D17BE1DA4BCFE1C9BF1B4E8DCD2D78FCB957F0F4ECB9A8AE0D3E8D52595D83D9AFBC85A9B3E676530B937C5E2FCE3DF9681CBCFF1843188D757568A8AB31B4A30109249200054022E9B36D5D0275D555685343AABA462A73F4C8A1905DDC7C5E1ECE0AC7';
wwv_flow_imp.g_varchar2_table(74) := '6E3F6FBCBF084B962DDF2D3D58C2A79F7FA54D1304CB7773BA3C3BE267134EC7F0A17B186290E3B7A9B1DED08E06F622E0246FF98DE9A4DE74502C32E7DFD460FCE539A07F1FFCFCB2F3B8C94F90BEFF7163315E7F674190DCE0C9AFBCF93EBE5FBF39B8';
wwv_flow_imp.g_varchar2_table(75) := '818B734404DC70F97918D8BFAF2185DAAA4AF0CE00434C344810010A80048167B3C109C87DFEB2EA3FB8C5B69CC2827CED91AE2981C0B604FEDE8940474727DEFEF033B47774EC946EE6437B7B3B3E5BB602AD6DC68FBE35539FD36C32D25271C58433D0';
wwv_flow_imp.g_varchar2_table(76) := 'A3A84037B44EC5BEB6AA02F257D790993621E02C3729009CD59FB68FA65D9D70E4562AA340D2525370E979A7222B23DDC8D4B5F94D6AFA64CDDA9FC28E7FD59AB5A8AE33DE7721EC066C5E501E2A75EEA9C721D94080CA4E81F5B5D5368F96EE3B910005';
wwv_flow_imp.g_varchar2_table(77) := '80137BD5C631D5D5549A7AC0CFA9C71F85D1C306DB38D2D8BBDED2D28A86C6F04FE01555D5686A6A89BDA3366EE1C0D1C3B5EDA68D4268A8AB35B583A5513DCC4F2C01A7B54E01E0B41EB5713C32ECDFDCD8681881ACC23EFEF0030CEDDC6E20DB211B5D';
wwv_flow_imp.g_varchar2_table(78) := '9DEA31EADBAB08A929C97A26CC530464C7C9B1A347AA77FA3F0D6A14A0D3CC2D2DFAD5309704A2468002206A285951240464C19F2CFC33AAA34FAF1E38FF9463B8E8CF0894CA0F0492D0AF774FF52EBC9FDE3D8A90919E125E6117950AF89370F9F9A720';
wwv_flow_imp.g_varchar2_table(79) := '3F2F57376AD924885301BA882C9EE93CF728009CD7A7B68BA8A3A303F575C673A449493E5C7DC939C8CFCDB25D8C897038C9E7C341FB8E0ABBE9117B0E46B2DF1F76793715CCCE48C765E79F86E4803E2F11B9B2B9959BD83056EB12A000B06EDFB8C6B3';
wwv_flow_imp.g_varchar2_table(80) := '86BA1AB4B7EAAF36F7783C38EFB41330A0770FD7708946A063F71E16D642C9FCDC6C8C1832201A2EB8A68E7D86EF81138F3902EA5085DEBFFA9A2A702A408F9035F39CE8150580137BD54631B5B6349BDA31EDC07DF7C689471D64A3C8ACE16A6A7232CE';
wwv_flow_imp.g_varchar2_table(81) := '3EE55875520A6D7B6459DD9E999E668D206CE4853C3360E4F0A1BA1ECB5480AC07D035622609C4810005401C20B389E004E4EADFE891743D0AF371FE69EA2416BC1AE6E8103874BFBD71E881FBEA58EC9C75E881632065764EE5273304640AE092734E82';
wwv_flow_imp.g_varchar2_table(82) := '1CB37AF6F5B535E054801E21ABE539D31F0A0067F6AB2DA292857F6656FD9F7BDA71285043D2B608CA824ECA4969E279A760E28433919D9911D4C3DCEC2C8C3FF3445CA1E6B2831A31C39040CF823C5C79E15986765C1068888806312640011063C0ACBE';
wwv_flow_imp.g_varchar2_table(83) := '7B029D9D1DA686FE8F39FC208C1DA93FA4DA7D0B4CED4AC09F94847107EF8B5BAFBB0CE79E763CF61EB12706F4BC890AED0000100049444154ED8541FD7B63D4F0215ADA6D2AEF947187406CBB96E5FBD0090C1DD40F63F719A95BB0B5B9191401BA882C';
wwv_flow_imp.g_varchar2_table(84) := '93E9544728009CDAB3168F4B5643CB0E697A6ECA3DE8271E75306435BB9E1DF3CC13E8DFAB08A71F7B186EBDFA62FCE5D66BF0A75BAEC66DD75CA2A5F5E9A1BFADADF95668292B2EC69F7AACE1DA8BC6BA5A531B5F912809C48280371695B24E12D023D0';
wwv_flow_imp.g_varchar2_table(85) := 'D6DA62EAEAFF8C938E468F02FD7BABF5DA611E09249240CFC23C9C7EE2D1BA2EC82DB08DF5B5BA36CC4C3401E7B64F01E0DCBEB56C6472F56FB421DA80BEBD71D291D65FF55F5BDF88D53F6EC4A22F5762F1F2D5D854526E59EE7676ACB1B9059B4B2AF0';
wwv_flow_imp.g_varchar2_table(86) := 'F98A35F878E90AACF96933AA6A8D9F1699E8984F38E2000C1AD057D70D1100228A758D984902312040011003A8AC323881A6C67A3419EC4F2F73D0679D7CB4E1F069F056629F535D578F17DE781FF74E998EC94FCFC233B35FC1B4997370FF9419F8CFD4';
wwv_flow_imp.g_varchar2_table(87) := '9958F9C34FBCD73B0ADDD0A994E2DA0D5BF0E053B3F1E013CFE1C1A9D331E5D91730F9A999B87FEA737873C1A790BE88425331A9429E1A78C25187E84E63A910212220260EB0D2880938B9020A0027F7AE05636B50739E466E8D1E390C63460C31324B58';
wwv_flow_imp.g_varchar2_table(88) := 'FEA6AD65DAC9E7B5B71760EDBA8DA8AAAE45436313EA1A1AB1B5B41CCB56ACC29D0F3DA54E4E9FA143BEDD13E6A9BD1B6E6D6BC71BEA04FFF7FF3C8E6F567D8FCD5B4BFF175045550DD6FEB41133E7BC89C9D35EC0C6E21D79FF33B2C89B83C7EC8583F6';
wwv_flow_imp.g_varchar2_table(89) := 'DF47D79BC6FA7AC89E18BA46CC24812813A00088325056179C805CF9B7B5E83F5D2E2F270BE799583C15BC95D8E6FCB8B1187FBDF731FCA04EFC7A2DC995EBAC57DEC48C396FE999314F87C0AC57DFC6EC57DE427B7B878E15B06ACD8FF8DB7D8F638B45';
wwv_flow_imp.g_varchar2_table(90) := 'A75F3C1E0F2E38FD38C3072B9911C7BA2098190302CEAE9202C0D9FD6BA9E8E4BE7F23874E3F611C7A15E619992524BFB5AD0D4FCD9E8BA6E616D3EDCFFFF0532C5FBDD6B43D0DB711F8ECCB6FB160E1D26D1F4CFC963E796CFA4B686A6935611D7F938C';
wwv_flow_imp.g_varchar2_table(91) := 'F434C8A256BD969BD5D4587393F1D330F5EA601E098442800220145AB40D9B80EC7AD662F0E526F7A5EF3F7A78D86DC4BAE092AF5662FDC62D2137F3D2BC77D162F0AC83902B75700159193F7BEEDB10C1154A983FAEDF846FBFB3A6D892DB02C71DB42F';
wwv_flow_imp.g_varchar2_table(92) := 'D2D3F4B757E65A80507A3CF6B64E6F8102C0E93D6C91F89A1B8D576C9F74F461B0EAFEF33297BFE0D3CFC35AD82727A6D2F24A8BF484F5DD90A1FCF2CAAAB01C5DFAF5B796155BDABE16E30ED58DABA5A9094D26FEAFE856C24C1230498002C024289A85';
wwv_flow_imp.g_varchar2_table(93) := '4FA0ADAD1546C3FF991969183B6A58F88DC4B864B31AF6FF696371D8ADAC0B63E420ECC66C5CB053F9BE76C326F53BBC9F1F7EDA889ABA86F00AC7A1D4B843C6222D2D45B725D91C48D780997122E0FC6628009CDFC7098FB0B9A15E5D39EBBB215BFECA';
wwv_flow_imp.g_varchar2_table(94) := '9EF5FA5689CB9515FE4D4DCD613BB0B5AC22ECB26E2AD8A2E6F0D76FDA0AAF4706CD438FBCB8A41C65618E1E84DE5AE825B294D01D77E881BA05E56981468259B702669280490214002641D12C3C029D1D1D68540240AFB4DC2B7DF421FBE999243C2F25';
wwv_flow_imp.g_varchar2_table(95) := '3910D1BE04E969A9098FC10E0EF87C5E6467651A3D2032682869A929484FB536EB83C78E523166048D41329A9BAC3B8A21FEB9E1E586182900DCD0CB098C51E6333BDADB753DD87FDF51C8C9D2FF42D4AD200E9922003232D2C36EA947617ED865DD5450';
wwv_flow_imp.g_varchar2_table(96) := '9EFBD0BB47811A3192C980D023EFD3AB10D999E1F753E82D865E429EC770C09851BA059B9B1AD1DED6A66BC34C128894000540A404595E9780D1D57F96FAB21E77B0B5AFFE25C0A4A424EC3D7C88BC0DF9E5F178D0A74761C8E5DC5A6060DF5EF0FB93C2';
wwv_flow_imp.g_varchar2_table(97) := '0A7FCFC10321C3EC61158E63A143F7DF07325A11B449A57F9A390A10144FEC33DCD10205803BFA392151363536C068E39F7DF61A86FE7D7A24C4BF501A9519E9538F3D5C4D0384526A9BED916A7AA320376BDB07FE362490979D897D470D37B4DBD5C0E3';
wwv_flow_imp.g_varchar2_table(98) := 'F1E090B17BEF9A6CC9CFFD7BF7C07EFBECA5EB5B7323F704D005C4CC88095000448C9015042360B49049F6FC3F4A9D1CC35DF015ACDD58A5F75143D3A79F302EA4EA8B0AF370F979A72AE1201222A4A2AE36BEF0CC13519097131283334F3A1A7D7B1585';
wwv_flow_imp.g_varchar2_table(99) := '542651C6493E2F4E3FEE08DDE65B5B9AB93DB02EA1D865BAA5660A00B7F4749CE394F9CB9666FD2B98D12387A29F4DBEB0B7E33B4D8D029CA25E6686A8070FE883AB2F3E37EC15EDDBDB74E3DF5C350A30E9E2732057CA46F18B901C77E80138F3F82360';
wwv_flow_imp.g_varchar2_table(100) := '2799959F9B6DF8A4C066358A66143FF349205C021400E19263395D02DAC95FCD63EA191DA6E641AD7CEB5F77BE07D4DCF4F8D38EC335979E873DD4095EEE60901390CFEBD59EF8268B056533A3138F3E14375C710186281BF05F5804860FEE8F1B275D8C';
wwv_flow_imp.g_varchar2_table(101) := '334E1C87ECCC0CA42427FFAF1E116032873E7CC8404CBAE41C35CA720A3C1E3B9DFE019FD78BA39570F95F50DDBC696E52229A0F94EA864C2C93DC533705807BFA3AAE91CA8E667A0D2625F93062CF817A2696CEDB7FEFE1B8E3A649B8E59A4B305E0D57';
wwv_flow_imp.g_varchar2_table(102) := '1F7BE4C138E1E8C370B5120677DE71132E3CE304C85CB6A583B08173B276E29C93C6E1CFB75E83EB2E1FAF8981638F3808179D730A7EF5F389F8F5CF2FC7416A2EDDE3F1C08EFFC6ECB5A7261C83F92E23699A080866C07412888000054004F058B47B02';
wwv_flow_imp.g_varchar2_table(103) := 'EDED6DD04600BACFD652C78EDE0BC98180F6DEAEBF3C1E0FF6E8DF07C71F7E002E3AF3048C3FF5188C55D31AA9293BAE54ED1A9BD5FC9629817D46EC81B39518B8E4EC9370F4C16331B06F4FDB5DF5EFCA55EE5818316C8F5D9377FADCCCBB0176E211EB';
wwv_flow_imp.g_varchar2_table(104) := '0F6EAA9F02C04DBD1DA758E5EADF68D4F2F003C6706E3C4EFDE1A466E43ADFE391DFCE89EA807D466AD301C1226A56D300467B69042BCB7412D0234001A0478779611130BAFA977DFF47EC3120ACBA5988049C4660BFBD8721273B3368589D1D9D68E628';
wwv_flow_imp.g_varchar2_table(105) := '40503ED1CD70576D1400EEEAEF98472B572A2DCD4DBAED8C193522EC8D5E742B662609D890407A6A0A860E19ACEBB9D1FF29DDC2CC248120042800828061727804E4EA5FAE5882959655FF87EC373A5836D349C09504F61F3D02B2303658F0ADCDCD616F';
wwv_flow_imp.g_varchar2_table(106) := '8F1CAC4EA6EF4EC06D2914006EEBF118C72BF3FF7A4DE4E5E660C41EFDF54C984702AE2330B06F2FF4EDD53368DC1D1D1D683518590B5A981924108400054010304C0E9D807C49351B6CFE3372F810DBAFDC0E9D0C4B90803E81FC9C4CEC657037404B4B';
wwv_flow_imp.g_varchar2_table(107) := 'F88FA3D66F9DB9DB08B8EF370580FBFA3C6611B73435426FF85F1A1E316490FCE18B04486017024307E98F8C7104601760FC1831010A808811B282ED0464EFF2EDEFBBFBDBB3301FBD8AF858DCEED8308D047AF528D01D1D6B6D69414787FEA3B549317C';
wwv_flow_imp.g_varchar2_table(108) := '026E2C4901E0C65E8F51CCADAD2DBA35F753F39CDC1D4F1711335D4C40EE06D8D3E0F658DE0DE0E2032406A15300C400AA1BAB94DBFF8C1EFD3BA06F6FA424DB7BF73F37F62D638E0F81D49400861B4C91192DB28D8FA74E6CC59D315100B8B3DFA31EB5';
wwv_flow_imp.g_varchar2_table(109) := 'D1D5BF3438B05F6FF9C31709904037047C5E2F86EFA1FF7C0CA369B66EAA6512090425400110140D3342216074F52F4F6FEB5998174A95B42501D71190C7637B3CC1B73A968703B5B7B5BA8E4BAC03766BFD14006EEDF928C7DDDAAA7F8BD2A8E17B2223';
wwv_flow_imp.g_varchar2_table(110) := '3525CAADB23A12701681F4B414F4EDDD533728AE03D0C5C3CC1008500084008BA6C109B436EB0B80E143062210F007AF8039244002DA5D002386725BE0F81E0AEE6D8D02C0BD7D1FB5C8655EB2D3E0F17FC3F618C0A7FF458D382B722A0119FC1FB9E760';
wwv_flow_imp.g_varchar2_table(111) := 'DD6D81DB5A3905E0D4FE8F775C1400F126EEC0F6DA0C6EFFF3F9BC28CACB7160E40C8904A24F6060DF9E480E0482562CEB008266322364026E2E4001E0E6DE8F52EC2D06C3FFD959591CFE8F126B56E37C02591969C8484FD30D940B0175F130D324010A';
wwv_flow_imp.g_varchar2_table(112) := '0093A068169C804C0104CF057A16E9EF70A657967924E036021E8F0705F979BA61B7B5B5E9E633D32C0177DB5100B8BBFF238E5E8623651320BD8A7AF72CD41637E9D9308F044860078182BCDC1D1FBA7927FFEFBA496612098444800220245C34DE9580';
wwv_flow_imp.g_varchar2_table(113) := 'D1506492CF873E3D8B28007605C7CF24A043A030DF48007021A00E3ED3596E37A40070FB111061FC1D1D1DBA35F8927CE82D5300BA56CC8C3581F6F60E94555663D1172BF0F29B1F60DA8BF3F0D8F497F0E8B32FE1D997DFC09CB717E0B32FBF41716905';
wwv_flow_imp.g_varchar2_table(114) := 'C436D6FEB07E7D02F9B9D9BA061C01D0C5C34C930428004C82A259F7048C9E4E96E4F5A2204FFFCBACFB9A991A0D02AD6DEDF878C9D7F8D7E4A7F1ABBFFD078F3EF3025E79EB03BCF7F1622CFCFC6B2C5AFA35E67FF819E6BCF13E263FFD3C7EF38FFB71';
wwv_flow_imp.g_varchar2_table(115) := 'A7B2153160746B6734FC631DDD13C8C9CA404E7666F7992AB5BDBD55FDE64F6404589A0280C74044048C460092FC49C8CA488FA80D160E9D40A72A32FF93A5F8CD3F1FC094192FE1BB1F7E82515FA922DACF6A652B62E0B7FF7C10EF2DFA026DEDED5A3A';
wwv_flow_imp.g_varchar2_table(116) := '7FC58F40AE3AF967A607BF13A05D093B0AB4F8F587535BA200706ACFC6292EA31180DCEC2CF8D534409CDC61338A40A91AEA9FFCCC8B98FEE26B28AFA85229E1FD149796E399E75FC5BFA73C87F2AA9AF02A61A9B00814E5E7205B8900BDC2EDBC13400F';
wwv_flow_imp.g_varchar2_table(117) := '8F611E0D000A001E051111E85473CB7A15E41B2C66D22BCBBCD0096CD8528AFBA7CEC4E22F96231A578852C7B7ABBEC73D8F3E8B2DA515A13BC4126111F07A3CC8CDD69F3A6BE73440586C596807010A801D2CF82E0C0246230079393961D4CA22E110A8';
wwv_flow_imp.g_varchar2_table(118) := 'AEABC77FA6CEC0864D5BC229AE5B66737109EE7B7C066AEB1B74ED98193D02B93959BA95710440178F4126B38500058050E02B6C0246F3CA7AF3986137CA82BB1190C57EB2A2BFACBC72B7BC68256C2D2DC3E4675F42530B17A0458BA95E3D5919197AD9';
wwv_flow_imp.g_varchar2_table(119) := 'A6D774E856C24C5713A0007075F7471EBCD10880DFEF8BBC9118D5D0AC4E642DAD6D31AA3DBED5BEB9E0337CBBFA8798372AD301335F9D1FF376E2D18088A6A6E696783415561B5EAF47B79C4CCFE81A30332801666C234001B08D037F874140BE803A3B';
wwv_flow_imp.g_varchar2_table(120) := '3A754B06741E6AA25B300699E2E9BA4DC578EA8579B8E7B1E9F8E7834F682F79FFF8CCB958BFB904621383A6635AE5DA0DC57867C142536D1416E461EC98BD71DC5187E18C938FD35EF27EEC9851903C33957CB6F42B6CDA5A6EC6D45236D2B7D2FFCFCD';
wwv_flow_imp.g_varchar2_table(121) := '9D8FBB1E79067FBF7F0AFEFEC054DCFDE8B398FDFA7B903C2B39ECF31988E74EFD3D38AC140B7DB126010A006BF68B2DBCEA34D8044882480EF8E54FC25F1D9D9DF860D117F8DB7D8FE3834F1663F9CA3558B7610B7E5CBF597BFFC967DBF23E5EF295ED';
wwv_flow_imp.g_varchar2_table(122) := '86563F54BED7D4D6E932F6A88BC97D478FC4A107EE877EBD7B223D3D4DDB9DD1E3F168EFFBF5EEA5E5898D4AD2ADABB1B109AFBFFF89AE8DD532DBDADAF1DE279FE31FF74FC55BEF7F8C6FD46889F4FF864D5BB162D5F79837FF43DC3D791ADE5BB4D432';
wwv_flow_imp.g_varchar2_table(123) := 'AE07FC49BABE8800D735606610024CDE4E8002603B09FE0D99404747BB6199A424FD2F31C30AA26420BBDF3D3D7B2EE44410ACCA96D6564C9DF13266BD363F2A2BE883B513CDF4E2B24A2C5BFEAD6195871D7C20FAF7ED6D682736871D74A0A1DDA78B97';
wwv_flow_imp.g_varchar2_table(124) := 'A1A1A9D9D0CE0A0632CDF3DCABEFE099175E438B9AF609E6535D7D03A6CD7E15D3E7BC15CC24AEE97EBFBE78A600886B7738B2310A5A8DA19100001000494441540047766B7C82325A00288F344DB1C014C0C79F7F8DD7DEF9D0349477167C8A8FD44880';
wwv_flow_imp.g_varchar2_table(125) := 'E90209345CBD763D1A1A9A743D18B3F75E30DA5AB66B05F979D990325DD3767D2FC3E93FA8D1935DD3ADF8F9C3C55F6AA33E667D7B67C1227CBA6C8559F398D90592F4C573A7C1F45BCC1CB379C5747F07010A801D2CF82ECA04D2535390E82980ADE595';
wwv_flow_imp.g_varchar2_table(126) := 'EAAA6E6E4857F4226CA6BF380FE595D6DFFCE6C7F59BD0AAB3214C41411E06F4EB1372CF4A99029D3D1CE4EAF387751B42E21AB2135128B0A5A45C89BF05213FDFE0793562B0696B59143C08BF0ABFE11400D700844F97258500058050E02B2604641193';
wwv_flow_imp.g_varchar2_table(127) := 'EC691E93CA4D54DADEDE810F3F5B0619023661BE9349734B0BDEFD64093A2C7E95B5796BC94E7EEFFA6140DFBEBB2699FEDCBF9F7ED9F59BB6A04D31365D61020CDFFAF0335455D786DC727965353E5BF64DC8E5A25940FEFFE8D527224C2F9F79DD1160';
wwv_flow_imp.g_varchar2_table(128) := '5A570214005D69F07D5409F87C5E6467A647B5CE502A938D71BEFA6675284576B25DA6CAD63736EE9466A50F320C5F69304A919B13FC813246B1E4196C44B3B5AC026D3AA30F46F5C73A5F167E7EF56DF8FDFFDDDA75091DE1F079BDDA42CD609C280082';
wwv_flow_imp.g_varchar2_table(129) := '9161BA59025EB386B423815009240702097D0E802C522B555300A1FABDDDBEB2AA1A0D4DD6BD4FBCBDBD1DCD2DCDDBDDEDF66F5A6A5AB7E96612D3D4148E9E5D55758DA53705123EF5F5E1EF5CD8D9D191D01120AF12D049BEE0B7025200E81D9DDDE731';
wwv_flow_imp.g_varchar2_table(130) := '75670214003BF3E0A72812685327A8440EA1A7A524A347615ED81115E6E52035391076F95817F4AA2B4479E9B613C9BDE232C4A05379C0EF4792CFBA5F213E75F28CE44994C9C97EF812185F870890CEE09D4001A0737032CB1401EBFEEF35E53E8DAC4C';
wwv_flow_imp.g_varchar2_table(131) := '4086876B22B8028B34B6F4D414F4EFDD2BEC6AFAF5E985D414EB0A008FC783801A65D10BB0BE21FC290CA3B2B27190DF60A5BA9E6FB1CEF32A3EBD7B1685DD4C76A6FE5EFC61576CB2604747A71A8108BED0AF33127167D2076799319A5D0978774DE067';
wwv_flow_imp.g_varchar2_table(132) := '128816011901A80C630156B4DA4F0EF8317CC8A0B0AB1B356C0F3585911476F95817F4A806B23333D4EFE03F9555E1DFC950A1A64082D70CF4EDD9034949C187A8F5CAC62B6FD4F021BAF3E87A7EEC31507F11A45ED968E4B577B4EBAE41F0C0138D6658';
wwv_flow_imp.g_varchar2_table(133) := '878B095000B8B8F3631D7A6B6B1BDADA8C370B8AA51FA3470C818C0484DA46765606F61D3934D46271B71F60B0B9CF4F1BE556BDD0DD9291E7F51B37EA16EC5954A0A600AC2D000E1A331219E9A9BA71749759A0A67FC624B8FF3B0CEEB0F0782900BAEB';
wwv_flow_imp.g_varchar2_table(134) := 'BB60694CDF9D0005C0EE4C98122502722B55534B6217D16565A461FC9927851CD1F8334E54C3FFC921978B7781BD860E862CB60CD66E7945357EDAB8295876D0F49F366C84940D66E0F178306AD8E060D9964997BB50A42F4375E8C2B34E428EC1E84AA8';
wwv_flow_imp.g_varchar2_table(135) := '75866A6F74FBAAC7C3AFEF5099D27E67023C8276E6C14F5126D0DCDC1AE51A43AFEEA883C6E0B8230F365DF0F4138EC261FBED6DDA3E91867B0D19804C2572F47CF86AF9B7BA27F35DCB965754E1AB152B774DDEE973DF3E3DD12B8205963B5516E30F07';
wwv_flow_imp.g_varchar2_table(136) := 'A95180D3549F9A694616FD1D75E8FED877D43033E631B569EF083EFF2F0D7BBDFCFA160EE65EB4EA8E008FA0EEA8302D6A04647FFDA855164145179F7522E44A30373B0B1ECFEE43A73E9F0F793959B8E4DC5371D6894745D0527C8BA62407307AA4F1C9';
wwv_flow_imp.g_varchar2_table(137) := 'EA93CF1663FDC6CD86CEADDFB0199F7CB644D74E4E3C871F38B65B8EBA05139419F027E1CCE38FC4B5979D0F99DA49EA66DD4292EAFFFE4AD45C7EFE19B8585DFD7BBB3946E2ED7E6BABBE78F65000C4BB4B1CD71E0580E3BAD45A01C93A002B78E4F178';
wwv_flow_imp.g_varchar2_table(138) := '70CAD187E04FB75E8DCBC79F81C30E18837E7D7A6040BF5E38F2E0B19838E10C95770D8E3BFC00F8BC5E2BB86CDA8763D4156B6686FE864B32A7BFECEB6FB070F1526CD85C8CFA86066D8199AC24977BE5376CDEA2E52D5BFE8D4AD76F5A4EA27BED3948';
wwv_flow_imp.g_varchar2_table(139) := 'DFC862B97E75D23F78DF91F8E32D5763E2F83371F881FB62F0803EE8DBBB078E50FD7FD9F8D3F1FB1BAFC4916AB448048315DC6F6AD69F3EF3700AC07437D1B07B02F6FAA6EB3E06A62688802FC978857C63B3FE4635F1765DE675C71DBC2FAEBAE82CFC';
wwv_flow_imp.g_varchar2_table(140) := 'F5B6EBF0975F5E832BD5C9FF8803F641B6C14934DEBE9A6DAF4F8F021C7ED07EA6CC4BCB2AF0C597CB31FF834F30F78DF9EAF52EE62FF844A5AD80E499A944449D07C1EF4F375347A26CF2D528CFE1078CC6A40BCFC41F6FBE0A7FBBFD3AFC4CF5FF9107';
wwv_flow_imp.g_varchar2_table(141) := '8ED15D4B91087F8D46CF642426117EB14DE710A000704E5FC63D129FCF5800B45978ABD8B8038B51831E8F07A71E7328F618D82F462DEC5CAD3C36F7DEC79E853C6867E71C7E8A268176C3BB00F8F56D8E37AD8211E011148C0CD34D11F0A9A1553DC386';
wwv_flow_imp.g_varchar2_table(142) := 'C626BD6CE6458940465A0A6E9838015959E1EFFD1F8A2B7287C73F1E78021BB6E83F8C28943A69BB3381C626FDD1338F67F7B52C3BD7C04F24A04F8002409F0F730D08780D46012A23D888C6A06966EF4220373B0337FDEC42E4E566EF92139B8FB575F5';
wwv_flow_imp.g_varchar2_table(143) := '78E8A9D9D894E0C7E6C626BAC4D75A5DA3FF14434E0198EB235A05274001109C0D734C10309A06282BAF30510B4DA245608FFEBDF19BEBAFC0807E7DA255A56E3DC525657860EA73D85C52AE6BC7CCD009545655E916E25D00BA78986982000580094834';
wwv_flow_imp.g_varchar2_table(144) := '094E406E9F0B9E0B54D7D6C2682E53AF3CF3422750949FA344C0E538FBD4E3909212FE6646E9E9A9F0788D87998B4BCBF1B7FB1EC7D6B2CAD09D65896E095454D7C27004C0C3AFEF6EE1ED94C80F7A047804E9D1619E2101AFC19D002D2D6DA84DE00381';
wwv_flow_imp.g_varchar2_table(145) := '0C0370A8813CC5F08C630FC3BF7E7F238E3CF4006466EADF26B81D833C5BE080312371DB7597E3FF6EBB0E575F3A1E5959FACF1B90B2B2D6E32FFF7E94D30102230AAFD28A6AD4D6E93FC8C9EBF345A12556E1660214006EEEFD28C46E3405D0DEDE8EB2';
wwv_flow_imp.g_varchar2_table(146) := 'CAEA28B4C42A4225E0F178B45B1B279E770A7E79CD6538FFCC933072F89ED873F0000CDD43BD06F7C7F021033176F4089C7CEC119838E14CDC7CD5C5B8EED273316AE820C82D73878C1981EB274E407272C0B0791101F73C320DEBB930D0909591416575';
wwv_flow_imp.g_varchar2_table(147) := '0D2A0C1EC694E437EE13A3769C9ECFF8F4095000E8F361AE0101A32980B6F60ECE0F1B308C75B6570981417D7AE0D47107E3F66B2EC6EF6E98A8A60826E2B7375CA1FDBDF18A099870DAB190FD1106F5EB855D17970D1BD40FBFB9E14A24F98DAF382BAA';
wwv_flow_imp.g_varchar2_table(148) := '6AB826200A1D5A51A5BF0030C9EF8F422BACC2ED04BC6E07C0F8232360741740BB1A01D8A4AE083B652BBAC89A62E92811F0783C1051E0F118CFEFE3BFFF06F5ED893B6EBA1A5926A6124ACB2B71EFA3CF724DC07FD985F3A7AC427FF12CAFFECD50A58D';
wwv_flow_imp.g_varchar2_table(149) := '11010A002342CCD725E0F178E0F505BF329413FFE6E212C85FF09FAD090C54A308375D75090A0B720DE328ADA8C45D939F467199FE89CCB022971A6C2DD1E7C61100971E18510E9B0220CA40DD589DD134407169193A3802E08843630F354570EDA5E34D';
wwv_flow_imp.g_varchar2_table(150) := 'ED3550565185BFDF37051BB6943A22F67805219B2C575455E936C711005D3C5A267F1913A0003066440B03024901FD5BCD2A2BAB21FBC71B54C36C9B10D8A37F2FFCFCF209A6D604C81D200F3F3D8BEB4042E8DBFA8626D4D5D5EB96A000D0C5C34C9304';
wwv_flow_imp.g_varchar2_table(151) := '28004C82A25970027E0301D0D6CE3B0182D3B367CE9001BDF1879BAF4166469A61005BB696E181279EC396D20A435B1A003F6EDC02BD27017A7D3EECBA5093DC7625C0CF660878CD18D18604F408F803C6B723AD5EBB5EAF0AE6D990C080DE45DAED8566';
wwv_flow_imp.g_varchar2_table(152) := 'B61E161170CFA3D3B830D0443F7FBB662D5A751EA2E5E7ED7F2628D2C40C010A00339468A34B40F602307A34F04AF5A5A67755A3DB00332D4B40EE0E907D028A4C2C0C2C2BAFC25D8F3CAD4602CA2D1B4FA21D93B5322BBF5BABEB46126F01D4E523997C';
wwv_flow_imp.g_varchar2_table(153) := '99234001608E13AD0C08F80DA601BE5DBD16757C32A001457B66CBF307AEBD6C3C72B2330D031011F0C01333B963601052CD2DADD8B8B93848EEB664CEFF6FE3C0DF9113A000889C216B5004FC01FD6980C6A6265454D5284BFE3891C0E07EBD70F35597';
wwv_flow_imp.g_varchar2_table(154) := '20C3C49A80CDC5A5983CED792E0CECE640282E2D475B5B7B37393B92280076B0E8FE1D53CD12A000304B8A76BA0492FCC9BAF992F9DD8F5C07201C9CFA927D026EBFF6729879EEC0C6CD5B71EF63DC2CA8EBB1207B65ACFAE1A7AE49BBBD97C57F46D36D';
wwv_flow_imp.g_varchar2_table(155) := 'BB156202090421400110040C934323E00F04E0F1EA1F4E1B3615A3A3A323B48A696D2B0203FAF4C02D6A24C0D46641E595B853DB2C884F11944E6E52C3FFABD6FC286F83BE0229A941F398B18D007F9B27A0FF8D6DBE1E5A9200FC06EB00D66FD88CADE5';
wwv_flow_imp.g_varchar2_table(156) := 'FA1B9C10A3FD09C874C0B5979E8F82FC1CC360CA2BAAF0EFC79EE174802225F7FFCB6259F536E80F05405034CC088300054018D058A47B02FE40A0FB8CFFA66E2929C3C62D25FFFDC43F4E26200B03AF9F7801CCEC1350525A81879F9EED7A11B0B5AC02';
wwv_flow_imp.g_varchar2_table(157) := '2D6A1440EFB8484E49D1CB661E882014021400A1D0A2AD2E812413F727731D802E424765CA2D82B75F37D1D4C2405913F0C093EEDD2C48E6FF577CF7836EFF079293E1F1F02B5B1712334322C0A329245C34D623E037210056AC5C8386A666BD6A98E720';
wwv_flow_imp.g_varchar2_table(158) := '02FD7B17E1D66B2E435E6E9661545B8ACBA06D1654EEBE350115D5B590FF1B7A9002C99CFFD7E323797C8546800220345EB4D621E0F5F9906CB048A9440D732E5FADBFD109F8CF51046424E0862B2E84E9CD8226CB6641158E626014CC9A751B218B64F5';
wwv_flow_imp.g_varchar2_table(159) := 'EC38FFAF478779E110A00008871ACB042560F425D5DEDE8E454BBF0E5A9E19CE24200B03AFB9F47CE4E498DC2C484D076C2E2977268C6EA25AB6627537A93B9292FC7EC86B470ADFED4E8029A112A000089518ED7509C80880C7E3D1B559BDE607347057';
wwv_flow_imp.g_varchar2_table(160) := '405D464ECC948581374F32B959D09652D72C0C948724ADFC6E8D6E9707925374F3994902E110A00008871ACB0425E0F5F960340AD0D8D482AF57711A002EFCA76D1674DD44537707C8C2C0FB1E9B8EAD65CE5E13F0D5CAEF515BD7A87B345000E8E2D132';
wwv_flow_imp.g_varchar2_table(161) := 'F92B74021400A13363090302320A6060824F3EFF12EDDC14C8089323F3E52982B75C7D29B2B3320CE32B29AFC05FFEFD188A1D2A023A1581C5CB9643EE02506FBBFDF1FA7C86A21AFC47026110A00008031A8BE813901100D9B254CF6AF9B7DFD9FECA4E';
wwv_flow_imp.g_varchar2_table(162) := '4E4A1F2F5D8EE973DEC6034FBF804767BC8237167C8A6FBFFF09ADAD6D7AE1BB3E4FD604FC7CE20453B708363436E26FF73D8E0DC5A58EE3565E598D0D1BB7E8C6C5AB7F5D3CFFCDE49F7008500084438D657409C8C95F4480AE91CAFC7AD5F7EAB7FD7E';
wwv_flow_imp.g_varchar2_table(163) := 'E46AEDDBEFD7E19FF74FC194675FC43B0B1662E9972BB068C932CC9AF326EE7AF8293CFBF21B28535FEEF68B2E7E1E0F1BD40F374FBAD8D4E2B6BAFA06DC3F6506366C71960858F2F52AB4B6E98B4533236AF1EB35B6E4240214004EEA4D0BC562E64B6B';
wwv_flow_imp.g_varchar2_table(164) := 'D98A95A8ADD79FFBB450489A2BAD6DED98F5EA7CDCF9D053A8AEADD7D276FD250261C1A2A5B85309811FD66FDE359B9FBB101832A00FFE70F3554A04247549EDFE6D697925EE7DFC596C29ADE8DEC066A92DADADF864C917BA5ECBCAFFE4D4345D1B6602';
wwv_flow_imp.g_varchar2_table(165) := '64101E010A80F0B8B19401011901F0FA7CBA56DFFFB01E6BD66DD4B5B15AE6DB1F7E86B73E5868CAAD12356FFDD053B350D7602F91632AB8281AC99A80B383176D0000100049444154DFFDE267C8C931DE2CA8428DAADCF3C833D8AAC440145D48485522';
wwv_flow_imp.g_varchar2_table(166) := '0E376EDAAADB764A6ABA6E3E3349201202140091D063D9A0043C1E8FE1A640B208F0E3C55FE82E800ADA400232366D2DC3AB6F7F1092BF72C27AFEF577432A9380D012DEA4AC09F8C595B259509EA12F651595B87BF2345B8F04B4B4B6E1FD859FEBC6EA';
wwv_flow_imp.g_varchar2_table(167) := 'F1A8FF4369BCFAD785A465F257B804BCE116643912302220A3004636DFACFA015FDB60674019D67F71DE7B686A6E310A69B7FC0FD574805386AD770B2E8A097BF4EB856B2F3B1FB939D986B5CA74C08336DE2C68F58F1BB0F88BE5BA7126AB93BFCF673C';
wwv_flow_imp.g_varchar2_table(168) := '35A25B09334940870005800E1C66454640D6012405FCBA9534B7B4E0037582D435B24066534B2B96AFFA2E2C4F443C7CBB665D5865DD564846026E9A741132328C87BE376D29C5E469CFDBEE2982B28EE48345FA57FFD2EF1CFE170AC62F5A844F800220';
wwv_flow_imp.g_varchar2_table(169) := '7C762C6982406A9AF1BDDE5F7FB30A6B37E8DF0A65A2A9989AD4D635A0B5457FB5B69E03B575757AD9CCEB4260DB66419723D3840890FDF3EF9B321D76DA2C48E6FEBF59B9A64BC4BBBFF5272783B7FFEDCE8529D1254001105D9EAC6D1702294A00F8FC';
wwv_flow_imp.g_varchar2_table(170) := '49BBA4EEFCB1BDBD036F2E58B473A2D53EE9EF6E6CE8ADD71B6105862D38CB401606DE72CDA528CCCF350CACA4B402773D32CD362260FEC78B0DA79252B8F2DFB0DFB719F0772404280022A1C7B286043C1E0FCC8C027CFEE50A9456541BD69728838CD4';
wwv_flow_imp.g_varchar2_table(171) := '14040CA633F47CCBC9365EE1AE57DE8D7983FBF6D4D6041498100165E595B8E7B1672C3F1D200B4957ACD47FF08FD7E7453257FFBBF1908F7BCC14007147EEBE06B5518024FD5B023BD428C0FB8B96A2A3533647B51EA39494640C19D83F6CC706F4EE19';
wwv_flow_imp.g_varchar2_table(172) := '76593717940708C98E819999E98618642460F2B4D99616016F7FA4AEFE9BF41792A6A893BFD7CBAF66C30E07409BC808F0288B8C1F4B9B20205F6622028C4C172C5C828AAA5A23B384E47BD548C6C9C71C068FC71372FBC3F71C84BEBD0A432EC702DB08';
wwv_flow_imp.g_varchar2_table(173) := 'C848C0EDD75E6E6A61E0864D5BF1E093332D2902CAD5B12DBB456E8B2AF8EF640EFF0787C39CA812A000882A4E56168C804C03C8D066B07C49AF6F68C41B0B1659F69EF9BD870DC67EFBEC25AE86F41A7FFA0948F2E98F808454A10B8DFBF72EC2ADD75C';
wwv_flow_imp.g_varchar2_table(174) := '8A5435156314FEE6E252FCE38127505E5563641AB7FC8E8E4ECC7B7F215A5A5A75DB4C4E4D853F90AC6BC3CCED04F83752021400911264795304BC3E1FCC8C022CFCEC0BC82A69539526C0E8D4638F40CFC27CD32D1F75E8FE905BDB4C17A061500283FA';
wwv_flow_imp.g_varchar2_table(175) := 'F6C42D575D82EC4CE33B4BEAEAEA31E395B782D615EF8CAF56FD80773F345EE89A9A9E196FD7D89E8B095000B8B8F3E31DBA8C0278BCFA43E88D4DCD78435D29C5DB37B3EDC949E8EA4BCFC39851C3748B64A6A7E1B413C6E1B2734FD1B563666804860E';
wwv_flow_imp.g_varchar2_table(176) := 'EA8BEBAFBCC0D448C037ABD640EEB90FAD85E85BD73736E12D35B26554736A7A0678EB9F11A51DF97C1739010A80C819B20693047C4949A64601BEF8FA5BBCBB50FF212948E03FB9A2FFF965E761E284333066E43014E5E76AF7ACE764656260BFDE90B5';
wwv_flow_imp.g_varchar2_table(177) := '02BFF9C59538EFE471F079F95F2CDA5D3574605FDC7EDDE5860F10920D985A5BC3DFBB215A7E2FFE6A25567DF7836E75228C533378F5AF0B89995127C06FA7A82365857A0452D3D201FD41006D0DC09C37DF435D4313ACFA2FE0F763DCC16371F3A40BF1';
wwv_flow_imp.g_varchar2_table(178) := 'AFDFDF88BBEEB80977AAD79F7F7935269C7E3CFAF428B0AAEB8EF04B44D81F6FBE5A89007FD078060DE887B4D4E4A0F9F1C8D85A5E8597E7BD6BD8549A1AFA4F4A0A1E8B6105AE3360C0D1204001100D8AACC33481247F00A9EACBCEA8406D6D1D5E79E7';
wwv_flow_imp.g_varchar2_table(179) := '4323334BE47B3C1EA424071030D8F0C812CE3AC8095918F83B35D2D2B7778FDDA21A34A00F2E3FEFB4DDD2E39DF0DABB1FA3461DCB7AEDCAC8586A46969E09F348202604BC31A9959592800E8174F565275F7A3A265AD63B1F2CB4F48240CD49FE4A2801';
wwv_flow_imp.g_varchar2_table(180) := '1909B879D2C538F1E8C32053303D0AF371C64947E3C62B2F44AF42E3270BC6D27959CCBA68F132C326D2D4D0BFDC2A6B684883FF11E09BE810A000880E47D6120201AFCF87B44C73573C73D528802CA20AA17A9AEA10A8AEADC7079F2EC373AFBC85879E';
wwv_flow_imp.g_varchar2_table(181) := '9E8DFB9F98891973DEC482CFBE44558D3D9F5750909B85F34F3D06D75E3E1EF220A1734E3C0AB959C6770AE8608A38ABB1B9055366BE82B6F676DDBAFCC9C9A646C4742B61260984498002204C702C161901B92340EE7936AAE5AB15ABB0E4EB554666CC';
wwv_flow_imp.g_varchar2_table(182) := '3720D0DEDE818F167F853BEE7C184FCD7A056F7DB0084BBEFC165F2C5F85B7177C8A2767CEC16FFFF9203E5DF68DB606C3A03ACB65CB3E0BC307F743EF22F3B768C62A08D9CBF2E3CFBFC6962D5B0D9B90B97F43231AEC42801FA3458002205A24594FC8';
wwv_flow_imp.g_varchar2_table(183) := '04D232B2A1A6CF0DCBBDF4FA7C7CBF7EB3A11D0DBA27D0DCDA8AC9CFBE84A9CFBD8CDABAFAEE8D546A6353131E99F63C1E9AF6A265B764566E5AFEA7A4BC1273DF7ADFD04F11C0DCF5CF10130D6248800220867059B53E017F20A0A602B2F58D54AE2CA2';
wwv_flow_imp.g_varchar2_table(184) := '7AFAF9D7D064B08B9A32E54F37045E7BF7132CFDEA9B6E72BA4F5AFAE50ACCFF6849F7994CD52520D355CFBC300FB56AAA45D75065A665989B0653A6FCE942806FA3478002207A2C59531804E44BD01F081896DCB0713366BDF62EDA3B3A0C6D69B08380';
wwv_flow_imp.g_varchar2_table(185) := '36E7FFF1E29086F56508FBF957DF8694DD5113DF99213073EE7CAC58B5C6D05416FEF903C986763420815812A00088255DD66D48C0E3F1A85100735742EF7FF4293E5FBEDAB04E1AEC20B07CD5F7A8AD6FD89160F25D6B5B1BBE5DF3A3496B9A098145CB';
wwv_flow_imp.g_varchar2_table(186) := 'BEC1479F7E2E6F755FFE4000E95939BA36CC0C4680E9D1244001104D9AAC2B2C02C92969484D37B76AFBD9175FC796D28AB0DA715B2159F8B7EAFB756187BD617331A48EB02B70514139269F9839C754C472F2F7780C76C33255138D48203202140091F1';
wwv_flow_imp.g_varchar2_table(187) := '63E9281190A900AFCF67585B6D6D1D9E7DF94D7555DB6868EB7683A69616ACFE21FCABF84DC525A80963F4C06DDC5BDBDAF1E4EC57D16A628D4A7A5636F7FB8FE00061D1E812A000882E4FD6162601D91828DDE4DE00DFACFC0E73DEF928CC96DC53CC03';
wwv_flow_imp.g_varchar2_table(188) := '4F44ABF93B3BB9DEC2E868E9ECECC41B1F2CC277DF1B0BADE49454A4671A2F7A356A93F924102D021400D122C97A2226909A9EA9A602D24DD5F3C1C79F61E117E657B69BAAD461467E7F120AF2C2DF0D2F3B33133999E6FAC361E84C87F3E1E2AF21B7A9';
wwv_flow_imp.g_varchar2_table(189) := '1A15909DFEE4EADFC88EF97A0498176D021400D126CAFA222290919D077FB2F1EAE8F6F6764C7F691E56FFB831A2F69C5CD89FE4C3DEC387841DE2807E7DE0F178C22EEFF482DF7EFF139E7971AEA93065DE3FC91F30654B23128817010A807891663BA6';
wwv_flow_imp.g_varchar2_table(190) := '08783C1E6466E7C2EB335E0F505F5F8F079F9C850DC5A5A6EA76A3D111078E416A4A72C8A167A4A7E180D123422EE796021BB694E0FEA933D0D6AABFD5AFF048494B57235B19F296AF0808B068F4095000449F296B8C90805C29890830534D6D6D2D1E7B';
wwv_flow_imp.g_varchar2_table(191) := 'F6256C2C2E3363EE3A9B6C35847FEE69C7877C257FE9B9A742CABA0E988980E558BBE7F1E9686A6A36B496B52D19593986763420814410A000480475B6694840B648353B67BA61D3163CF3D2EB2829AF32ACD78D06C71DB63F4E39F67024A92901A3F865';
wwv_flow_imp.g_varchar2_table(192) := 'B4409EAC77E098BD8C4C5D995F5C56892766BD82AACA6A53F1CBC9DFEB331ECD325599AB8D187C2C085000C4822AEB8C0A0159312DC3A7662A5BBDE6474C7B711E9A9A5BCC98BBCEE6FC538FC535979E8741FD7A773B1AE0F1783064603FCDE682D38FEB';
wwv_flow_imp.g_varchar2_table(193) := 'D6C675D07609B8AAB61ED35F7E136BD76DD825A7FB8F72FC8A90ED3E97A924907802140089EF037AA04340A602FC01738BA756ACFC0E5367BDAA539BBBB3644EFF8E9B27E1FA891370D0D8BD91979B852C354570E4C16371DBB597E1F7375E89317BEDC9';
wwv_flow_imp.g_varchar2_table(194) := '937F3787495B7BBB1A657A03CBBF5DDD4DEEEE49B2D5AFD911ACDD4B33655702FC1C1B021400B1E1CA5AA344C0E3F522233B0F721B95992A972C5B8EE7E6BE838E0ED9D1DE4C0977D9F8BC5EEC3F7A38AEBDE41CFCBFDFDE88BBEEB819574C380323870E';
wwv_flow_imp.g_varchar2_table(195) := 'E2893FC8A120CF9F78F2F97958FAE58A20163B27A7A667A8633677E7447E22010B12A000B060A7D0A59D09F8030164E498FF427DEBFD4FF0C29B1FA0A5B50DFCD73D018FC783803F09C9013F78A35FF78C24B5514D29BDF8C6027CF2D952F968F89229AB';
wwv_flow_imp.g_varchar2_table(196) := 'CC9CF0F75E306CC095060C3A5604BCB1AA98F592403409A4A4A6239421D579EF2CC0ECD7DF43B389ED59A3E927EB720E81BA8646BC30EF3DCC9BBFC0545081E41464E5E69BB2A511095881000580157A813E9822208BAAD24C6E172C15CE5FB0105367BF';
wwv_flow_imp.g_varchar2_table(197) := '46112030F80A89406D7D239E7E611EDEFDF05353E5E476BF9CFC4253B6340A8D00AD6347800220766C59730C08C86D55A919E6375559BCF42BDCF9E87454D6D4C5C01B56E94402D575F5B86FEA0CC87A1233F1793C1EE415F504D45FF01F09D888000580';
wwv_flow_imp.g_varchar2_table(198) := '8D3A8BAE6E2390999D879474F37BD4FFB0761D1E7CFA05ACDF52B2AD02FE268120046457C97F3CF0247EF8D1DCAD7E524D7E0FB9B5925FA5C222FA2FD6184B023C6A63499775C78C40564E3E52D2D24CD72F22E08999AFF2D901A689B9CF70D5DA0D78E8';
wwv_flow_imp.g_varchar2_table(199) := 'A959D85A627E574939F97B7DDCE8C77D478B3322A60070463FBA328AACDC0224A7A69A8E7DDDFA0D9832E3257CB57AADE93234740781A52BBEC3C34FCD44F156F327FFDCC21E90B97F77104A4C946C35B604280062CB97B5C79840765E2164F5B5D9664A';
wwv_flow_imp.g_varchar2_table(200) := 'CB2AF0E01333F1C1E2AFD0D9C9BD02CC7273B2DDBB0BBFC0034FCC404D6DBDE93065CEDF1F48366D4F4312B022010A002BF60A7D0A89404E41911201E6BF8C5B5B5AF0F4CC399832FB75C86AEF901AA3B16308C8D6BE8F4C9F83679E9F0B98D4821E8F07';
wwv_flow_imp.g_varchar2_table(201) := 'F93D7B431E58E51810960D848EC59A000540AC09B3FEB810C829E811920890ABFF4F3EFD1C0F3FF322D66DDA1A171FD9887508AC59B7090F3DFD3C3EFDFC4BD34E797D3E75F2EF039F2FC974191A92809509500058B977E85B4804440484FAF09595ABBF';
wwv_flow_imp.g_varchar2_table(202) := 'C7834FCEC2E2AF57A1A3A323A4F6686C3F029AF05BBA0293A7CDC69A1FD6990E2029E04741CF3EA6B7A4365D310D83126046EC095000C49E315B882381ECBC026486B06DB0B856565E81C94FCDC2ABEF2EE4F6C102C4A12FD9D3FFA5B71660CAF4175151';
wwv_flow_imp.g_varchar2_table(203) := '596D3ACA404A0AF20A7B99B6A72109D8850005805D7A8A7E9A26909A9E0959A16DBA8032942BC397E7CDC77D5367A23A84C560AA287F6C40A04C9DF0EF9CFC2C5E7DEB8390167FCAADA639F9453688D0692E329E7810A000880765B6117702FE40B23664';
wwv_flow_imp.g_varchar2_table(204) := '9BE40F6DBEF65B3525F07FF74DC1972BBF875C31C6DD713618550232ADB3F08B15F8D7C34F61F5F7A1DDFE293B4ECAADA65175889591808508500058A833E84A7409787D3EE415F5466ABAF9AD83C583F28A4A3CACA604A6CC9C8B9FB8405090D8EE2523';
wwv_flow_imp.g_varchar2_table(205) := '3AC565157864FACB7872E61C9496558614833C784A769C0CA9108DA3468015C5870005407C38B3950412C8CCC90BE94982E26A4B4B2B162DF912F73C320D6F7DB4180D4DCD92CC970D08C8AD9DEF7CF239FEF19FA958FCC572B4B6B699F63AC9EF47767E';
wwv_flow_imp.g_varchar2_table(206) := '21E4C153A60BD190046C4AC06B53BFE93609844440BED0C379546B4D5D3D9E7B691EFE7EFF1358FE5D6843C8213948E3A81058F1DD8FF8E7434F62C68BAF43FA2E944A53D2EE3A62CA0000100049444154D221F3FDC929A9A114A36DD409B0C27811A000';
wwv_flow_imp.g_varchar2_table(207) := '881769B6937002DA177C415158DBB76EDAB215F74C9E86FF3C399BD30209EFC9DD1DD8585C8AFB9E98A5466C9EC6E6101FFAE4F17AB43B4744207A7DBEDD2B670A093894000580433B9661754F40B60DCE51222094A70976AD69D9D7DFE2EE479EC673AF';
wwv_flow_imp.g_varchar2_table(208) := 'BE8BE2D28A90569477AD87EF2327209BF76D517D3063EE7CFCEDBEC7F1E5F295AA3F42ABD79F9C0CB9EA4F4DCF0CAD20AD63468015C78F000540FC58B3258B10909DDCB272F221577CE13CCCA5B6AE016FBDF711EE79F419BCFCF687D8A24E421D1D723A';
wwv_flow_imp.g_varchar2_table(209) := 'B248800E7743589755D660F66BEFE2DFAA0FDE7EFF633435B7841C755A46A676F2973B46422ECC0224E0000214000EE84486101E019912C82DE811F25D02DB5B2B2DAFC4DC37DFC79FEE998C17D5DFD28AAAED59FC1B2302723FFFF3F3DEC31FEF7E186F';
wwv_flow_imp.g_varchar2_table(210) := 'BCFB11A40F426DCAEBF3212B2F1F19D9B9F0783CA116A77D4C09B0F27812A00088276DB66539025E9F4FCDFFE6A91342019242DC33607B302DCDAD78FD9D0FF1EBBFFF074FBDF0BA1A1128DF9EC5BF5122B0614B291E9F3957632C27FE8686A6B06A4E4E';
wwv_flow_imp.g_varchar2_table(211) := '4D45AE4C01A5A687559E8548C0490428009CD49B8C256C0229A969C8896034401A96A1E90F3E59823BFEF510EE7F7216567EFF133713123011BCD6ACDB88C766CCC19FEF79049F7CF605DADB3BC2AACD1F082891978FECBC42F892FC61D5C142B127C016';
wwv_flow_imp.g_varchar2_table(212) := 'E24BC01BDFE6D81A09589780D7EBD34603B2F36434C01FB6A37292FAE2EB95B87FEA0CDC3B650696A8F79C1E308753D895A8A994A52B56E3A169CFE3BEC7A763E1922FD589BFDD5C05BB58F9927CDA507F6E614FA4F0AA7F173AFCE8760214006E3F0218';
wwv_flow_imp.g_varchar2_table(213) := 'FF6E04E48982321A208BC476CB0C21A1B1A9192B567E8F87D468C05D939FC6B417E761F9EAB5686A6981EC541742558E361516CD2DADF8EEC70D98F9EA3BB8EBE1A7F1C0D4E7B064D937A86F680C2B768FC783B4CC2C35DCDF1391F663580EB050180458';
wwv_flow_imp.g_varchar2_table(214) := '24DE042800E24D9CEDD98280D7EBD5AE1CF38A7A86BD48B06BA025659578EFE3C5B8E79169F8DD3F1FC0ACD7DEC5BA4DC5686B0FEFCAB66BDD767D2FCF5AD8B0A5042FBCF18136B7FF8FFBA7E29D058BC25AD8D79581B6B8B3B00732B272E0F5F1BEFEAE';
wwv_flow_imp.g_varchar2_table(215) := '6CF89E04BA12A000E84A83EF4960170249FE80362D102D2100F5AFA2AA166FBEF731FE72CFA3F8F53F1ED016B77DB8E46B6C2C2E83AC2350268EFC912B7D8971C1675FE1B1E75EC16D7FFD0FFE70E7C378FD9D05A8AAA98B3866796C6F4E4191767BA7F4';
wwv_flow_imp.g_varchar2_table(216) := '5BC415B282B8126063F1274001107FE66CD18604E48492999387680A01392196ABF96E59DCF6D4732FE3CE879EC4DF1E78024F3CFF1A4410ACDD588CBA3087C0AD80B8A6BE01DFAFDFACC53275F6EBF8F3BD5370E7C34F62DAF3AF60E1E265A8ACAA8E8A';
wwv_flow_imp.g_varchar2_table(217) := '9B49B2C02F375FBBA75F367A8A4AA5AC84045C408002C0059DCC10A34720164240BCEBE8ECD4F6AE5FBB6E033E5CF8399E98F112EE7EF8294C7EE6456DBA60E117DF604371292AAA6BD1D0D82C452CF59287255556D761D3D6727CF6D54ACDE7C79E7D19';
wwv_flow_imp.g_varchar2_table(218) := '0F3D31538BE5A3454BF0D3864DA8A9AD477B982BF9770D3890928AACBC02E4C902BF34DED6B72B1F7B7DA6B7892040019008EA6CD3F604622504BA8269686CC237ABBED736BC79EC99E7F1877F3DA4AEA0B72D269CF3F68758B4EC1BFCA0AEB0ABEBEAD1';
wwv_flow_imp.g_varchar2_table(219) := 'D2DAA6AD2790797519591041D1B5AE48DE4B5D5A9D1D1D5A1BD2968C4CACDDB0199F7EF92DE6BCFD11A6BD300FF74E998E3BFEF520263F354BF379C5AA35A8ACAE89A4E9DDCA7A3C406A7A3A64A83F27BF1029A969BBD930810448C01C010A00739C6845';
wwv_flow_imp.g_varchar2_table(220) := '02DD12E82A04D233B390E4F7776B17ADC4E292327CBAF42BCC79E33D3C3AED79FCF5DEC770F31FEFC68D7FBC137FFEF76378445D75BF32FF637CF0E9327CBC743996AEF84EBBF360D5DAF59A58F8697309369794A3A4BC0AE56A3441AEDA4B2BAA21DB19';
wwv_flow_imp.g_varchar2_table(221) := 'AFDF5282B51BB660F58F1B204FD55BF6CD1A4D64BCBFE80BCC7DF7133C32FD65FCE5DEC771C31DFFC20DBFFF17FE4FDA7B7AB6F2E55DCDA7F51BB7C4ECEE06AFCF07E19B5BD40B9939F9E0507FB48E286BD4432F124380022031DCD9AAC308881048CFCA';
wwv_flow_imp.g_varchar2_table(222) := '419E3A4165CB95A9BA4A953B09E211A65C9D3735B560E3E6AD58B26C39E6CC7B17CFBD340FCFCC9E8BC79E7D0193D5495A6EABBBF7B16771F7E4A7F0FF1E7C027FFFCF14FC559DC0FFF2EF47F1B7FF3C8E7F3E3055BBFDEEDE479FC103536668651E55A3';
wwv_flow_imp.g_varchar2_table(223) := '0E4FCD9C839973DED0EA5CFCC5726CD8548C9696D67884A5B521F3FB9939B9C8575C856F1237F1D1B8F0170944830005403428B20E12E8422059E6A6D5556A5E0FB95ACD83CC5577C98ECBDBD6B636C8BDF5CDCD2D90A904B99FBEAEBE01F220239987AF';
wwv_flow_imp.g_varchar2_table(224) := 'AEAD43554DADF6AAAEA9D3E6E66BD55442ADB291E17DB19707EC481DAD6A7A4144465C1C578DC830BF30DB3EBF2F4FEAF378F955A5D038F48761258A00FF57258A3CDB753C01AFD7A7E6AB332073D53232909E950DB9A2757CE06104E8F56D63250FE9C9';
wwv_flow_imp.g_varchar2_table(225) := 'EFD14763C6F9FD3040B20809844080022004583425817009C8DA80F4CC6C6DC5BA2C6093DDE9FC8140B8D539A29C88211145F2709E829E7DD4DC7E1E5252D3B9798F237AD77C10B44C1C010A80C4B167CB2E25200BD832B27321FBD3E7AB139F5CF5A666';
wwv_flow_imp.g_varchar2_table(226) := '64B86274209092A24EF46A4EBF476F4D0C8928F227A7B8F44860D824905802140089E5CFD65D4EC0A786BEE5AA37333B4F3B2116F4EA037918912608627C4741ACD1FB929220CF5590AB7C591859D8BB9F1ADA2F52D3229990BC58B7CFFAED40803E2692';
wwv_flow_imp.g_varchar2_table(227) := '00054022E9B36D12D88580AC1B9093A626088A7AA1A0575F64E717401E6C939C9AAADD66288BE4762996D88F1E68A317A9E919DAD57D6E610FC8C93E5F5DE58B9891AB7C5918E9F128C3C47ACAD6498004BA10F07679CFB72440021623E0F57A919C92A6';
wwv_flow_imp.g_varchar2_table(228) := '3DD8263BAF50BBCDB0B0777FE4F7EC0D594B20B7C8A565642A9BD46D57D59EE807203EC815BB3F39192242E4449F9E99A5EDB92F8B1B8B943FB21B5F664E9E7675EF0F24C3E3898123D10F8D352698009B4F2C010A80C4F267EB241016019F2F49DB0C27';
wwv_flow_imp.g_varchar2_table(229) := '353D1319D9B96A94A01072C52D2763F92BE2407BE517AABC0264E71540D61A64E5E6ABABF43CF5CAD5CA6564E74086E8E5256242ECA49C9CD8653AA2A84F7F6D1442EACC2DE8A1EA295465F354991CC853F76471635801B010099040C209500024BC0BE8';
wwv_flow_imp.g_varchar2_table(230) := '00094497805CADCB4243ED95920A1941906905596B2027ED5435549FAA84838C1CA46564213D335B7B499AD8493939B17BBDBEE83AC6DA48602702FC906802140089EE01B64F02244002244002092040019000E86C9204488004DC4E80F1279E000540E2';
wwv_flow_imp.g_varchar2_table(231) := 'FB801E9000099000099040DC095000C41D391B2401122001B71360FC5620400160855EA00F2440022440022410670214007106CEE648800448C0ED0418BF3508500058A31FE80509900009900009C4950005405C71B33112200112703B01C66F15021400';
wwv_flow_imp.g_varchar2_table(232) := '56E909FA4102244002244002712440011047D86C8A04488004DC4E80F15B8700058075FA829E9000099000099040DC085000C40D351B2201122001B71360FC5622400160A5DEA02F2440022440022410270214007102CD6648800448C0ED0418BFB50850';
wwv_flow_imp.g_varchar2_table(233) := '0058AB3FE80D09900009900009C4850005405C30B31112200112703B01C66F3502140056EB11FA4302244002244002712040011007C86C8204488004DC4E80F15B8F000580F5FA841E9100099000099040CC095000C41C311B2001122001B71360FC5624';
wwv_flow_imp.g_varchar2_table(234) := '400160C55EA14F2440022440022410630214003106CCEA49800448C0ED0418BF3509500058B35FE81509900009900009C4940005404CF1B27212200112703B01C66F5502140056ED19FA4502244002244002312440011043B8AC9A04488004DC4E80F15B';
wwv_flow_imp.g_varchar2_table(235) := '9700058075FB869E9100099000099040CC085000C40C2D2B2601122001B71360FC5626400160E5DEA16F2440022440022410230214003102CB6A49800448C0ED0418BFB509500058BB7FE81D09900009900009C4840005404CB0B25212200112703B01C6';
wwv_flow_imp.g_varchar2_table(236) := '6F7502140056EF21FA4702244002244002312040011003A8AC9204488004DC4E80F15B9F000580F5FB881E9200099000099040D4095000441D292B2401122001B71360FC7620400160875EA28F2440022440022410650214005106CAEA48800448C0ED04';
wwv_flow_imp.g_varchar2_table(237) := '18BF3D085000D8A39FE8250990000990000944950005405471B23212200112703B01C66F1702140076E929FA490224400224400251244001104598AC8A04488004DC4E80F1DB870005807DFA8A9E9200099000099040D4085000440D252B2201122001B7';
wwv_flow_imp.g_varchar2_table(238) := '1360FC7622400160A7DEA2AF2440022440022410250214005102C96A48800448C0ED0418BFBD085000D8ABBFE82D0990000990000944850005405430B21212200112703B01C66F3702140076EB31FA4B0224400224400251204001100588AC8204488004';
wwv_flow_imp.g_varchar2_table(239) := 'DC4E80F1DB8F000580FDFA8C1E9300099000099040C40428002246C80A48800448C0ED0418BF1D095000D8B1D7E83309900009900009444880022042802C4E022440026E27C0F8ED498002C09EFD46AF49800448800448202202140011E1636112200112';
wwv_flow_imp.g_varchar2_table(240) := '703B01C66F5702140076ED39FA4D022440022440021110A00088001E8B9200099080DB09307EFB12A000B06FDFD17312200112200112089B000540D8E8589004488004DC4E80F1DB990005809D7B8FBE930009900009904098042800C204C76224400224';
wwv_flow_imp.g_varchar2_table(241) := 'E076028CDFDE042800ECDD7FF49E04488004488004C2224001101636162201122001B71360FC7627400160F71EA4FF244002244002241006010A8030A0B10809900009B89D00E3B73F010A00FBF72123200112200112208190095000848C8C0548800448';
wwv_flow_imp.g_varchar2_table(242) := 'C0ED0418BF1308500038A11719030990000990000984488002204460342701122001B71360FCCE204001E08C7E6414244002244002241012010A809070D19804488004DC4E80F13B85000580537A92719000099000099040080428004280455312200112';
wwv_flow_imp.g_varchar2_table(243) := '703B01C6EF1C021400CEE94B464202244002244002A60950009846454312200112703B01C6EF240214004EEA4DC64202244002244002260950009804453312200112703B01C6EF2C021400CEEA4F464302244002244002A608500098C244231220011270';
wwv_flow_imp.g_varchar2_table(244) := '3B01C6EF340214004EEB51C64302244002244002260850009880441312200112703B01C6EF3C021400CEEB53464402244002244002860428000C11D18004488004DC4E80F13B91000580137B9531910009900009908001010A000340CC2601122001B713';
wwv_flow_imp.g_varchar2_table(245) := '60FCCE244001E0CC7E655424400224400224A04B800240170F3349800448C0ED0418BF5309500038B567191709900009900009E810A000D081C32C12200112703B01C6EF5C021400CEED5B464602244002244002410950000445C30C12200112703B01C6';
wwv_flow_imp.g_varchar2_table(246) := 'EF640214004EEE5DC64602244002244002410850000401C36412200112703B01C6EF6C021400CEEE5F464702244002244002DD12A000E8160B1349800448C0ED0418BFD309500038BD87191F0990000990000974438002A01B284C2201122001B71360FC';
wwv_flow_imp.g_varchar2_table(247) := 'CE274001E0FC3E668424400224400224B01B010A80DD90308104488004DC4E80F1BB810005801B7A993192000990000990C02E0428007601C28F24400224E076028CDF1D042800DCD1CF8C9204B2D70F460000017E4944415448800448800476224001B0';
wwv_flow_imp.g_varchar2_table(248) := '130E7E2001122001B71360FC6E214001E0969E669C24400224400224D08500054017187C4B022440026E27C0F8DD438002C03D7DCD4849800448800448E07F042800FE87826F48800448C0ED0418BF9B085000B8A9B7192B09900009900009FC970005C0';
wwv_flow_imp.g_varchar2_table(249) := '7F41F00F09900009B89D00E37717010A0077F537A325011220011220018D0005808681BF48800448C0ED0418BFDB085000B8ADC7192F09900009900009280214000A027F48800448C0ED0418BFFB085000B8AFCF19310990000990000980028007010990';
wwv_flow_imp.g_varchar2_table(250) := '0009B89E0001B8910005801B7B9D31930009900009B89E000580EB0F0102200112703B01C6EF4E021400EEEC77464D0224400224E0720214002E3F00183E099080DB09307EB712A000706BCF336E1220011220015713A0007075F73378122001B71360FC';
wwv_flow_imp.g_varchar2_table(251) := 'EE254001E0DEBE67E42440022440022E264001E0E2CE67E82440026E27C0F8DD4C8002C0CDBDCFD84980044880045C4B8002C0B55DCFC0498004DC4E80F1BB9BC0FF070000FFFFB8EDE5D7000000064944415403005656C7A512327FFC0000000049454E';
wwv_flow_imp.g_varchar2_table(252) := '44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(154889410161173433543)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(154889401181080433528)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>15752729651699
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(154889401412108433528)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>15752729651787
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(154889401711488433528)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>15752729651814
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(154889402108111433529)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER',
  'show_coordinates', 'N')).to_clob
,p_version_scn=>15752729651877
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(154889402440230433530)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>15752729652039
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(154889402729480433530)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>15752729652081
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(154889403046698433530)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>15752729652111
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(154889403331574433530)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>15752729652140
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(154889403647891433530)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>15752729652189
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(154889403970293433531)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>15752729652223
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(154889404297120433531)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>15752729652262
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(154889404557928433531)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>15752729652291
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(154889404869740433531)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>15752729652329
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(154889405167568433532)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>15752729652369
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(154889413070980433549)
,p_name=>'Administration Rights'
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attribute_01=>'Administrator'
,p_attribute_02=>'A'
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>15752729654962
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/security/authorizations/reader_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(154889413153894433549)
,p_name=>'Reader Rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(apex_app_setting.get_value(',
'   p_name => ''ACCESS_CONTROL_SCOPE''),''x'') = ''ALL_USERS'' then',
'    -- allow user not in the ACL to access the application',
'    return true;',
'else',
'    -- require user to have at least one role',
'    return apex_acl.has_user_any_roles (',
'        p_application_id => :APP_ID, ',
'        p_user_name      => :APP_USER);',
'end if;'))
,p_error_message=>'You are not authorized to view this application, either because you have not been granted access, or your account has been locked. Please contact the application administrator.'
,p_version_scn=>15752729655131
,p_caching=>'BY_USER_BY_SESSION'
);
end;
/
prompt --application/shared_components/security/authorizations/contribution_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(154889413211927433549)
,p_name=>'Contribution Rights'
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attribute_01=>'Administrator,Contributor'
,p_attribute_02=>'A'
,p_error_message=>'Insufficient privileges, user is not a Contributor'
,p_version_scn=>15752729655158
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/security/app_access_control/administrator
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(154889412632483433548)
,p_static_id=>'ADMINISTRATOR'
,p_name=>'Administrator'
,p_description=>'Role assigned to application administrators.'
,p_version_scn=>15752729654832
);
end;
/
prompt --application/shared_components/security/app_access_control/contributor
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(154889412885795433549)
,p_static_id=>'CONTRIBUTOR'
,p_name=>'Contributor'
,p_description=>'Role assigned to application contributors.'
,p_version_scn=>15752729654900
);
end;
/
prompt --application/shared_components/security/app_access_control/reader
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(154889412940902433549)
,p_static_id=>'READER'
,p_name=>'Reader'
,p_description=>'Role assigned to application readers.'
,p_version_scn=>15752729654907
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_settings
begin
wwv_flow_imp_shared.create_app_setting(
 p_id=>wwv_flow_imp.id(154889414070844433551)
,p_name=>'FEEDBACK_ATTACHMENTS_YN'
,p_value=>'Y'
,p_is_required=>'N'
,p_valid_values=>'Y, N'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_imp.id(154889410589071433546)
,p_version_scn=>15752729655215
);
wwv_flow_imp_shared.create_app_setting(
 p_id=>wwv_flow_imp.id(154889414348405433552)
,p_name=>'ACCESS_CONTROL_SCOPE'
,p_value=>'ACL_ONLY'
,p_is_required=>'N'
,p_valid_values=>'ACL_ONLY, ALL_USERS'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_imp.id(154889410322679433546)
,p_comments=>'The default access level given to authenticated users who are not in the access control list'
,p_version_scn=>15752729655285
);
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
prompt --application/shared_components/user_interface/lovs/access_roles
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(154889609381959434232)
,p_lov_name=>'ACCESS_ROLES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_version_scn=>15752729732289
);
end;
/
prompt --application/shared_components/user_interface/lovs/bicycles_bicycle_id
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(155059572074192354202)
,p_lov_name=>'BICYCLES.BICYCLE_ID'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'BICYCLES'
,p_return_column_name=>'BICYCLE_ID'
,p_default_sort_column_name=>'BICYCLE_ID'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15753042825544
);
end;
/
prompt --application/shared_components/user_interface/lovs/customers_full_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(155059572733683354204)
,p_lov_name=>'CUSTOMERS.FULL_NAME'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'CUSTOMERS'
,p_return_column_name=>'CUSTOMER_ID'
,p_display_column_name=>'FULL_NAME'
,p_default_sort_column_name=>'FULL_NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15753042825584
);
end;
/
prompt --application/shared_components/user_interface/lovs/desktop_theme_styles
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(154889507918012434084)
,p_lov_name=>'DESKTOP THEME STYLES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.name d,',
'       s.theme_style_id r',
'  from apex_application_theme_styles s,',
'       apex_application_themes t',
' where s.application_id = :app_id',
'   and t.application_id = s.application_id',
'   and t.theme_number   = s.theme_number',
'   and t.is_current     = ''Yes''',
' order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_version_scn=>15752729716113
);
end;
/
prompt --application/shared_components/user_interface/lovs/email_username_format
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(154889616873284434240)
,p_lov_name=>'EMAIL_USERNAME_FORMAT'
,p_lov_query=>'.'||wwv_flow_imp.id(154889616873284434240)||'.'
,p_location=>'STATIC'
,p_version_scn=>15752729732551
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(154889617148661434241)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Email Addresses'
,p_lov_return_value=>'EMAIL'
);
end;
/
prompt --application/shared_components/user_interface/lovs/feedback_rating
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(154889634377165434259)
,p_lov_name=>'FEEDBACK_RATING'
,p_lov_query=>'.'||wwv_flow_imp.id(154889634377165434259)||'.'
,p_location=>'STATIC'
,p_version_scn=>15752729733956
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(154889634606421434260)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Positive'
,p_lov_return_value=>'3'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-smile-o fa-2x feedback-positive" aria-hidden="true" ></span></span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(154889635060283434260)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Neutral'
,p_lov_return_value=>'2'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-emoji-neutral fa-2x feedback-neutral" aria-hidden="true" ></span></span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(154889635455694434260)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Negative'
,p_lov_return_value=>'1'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-frown-o fa-2x feedback-negative" aria-hidden="true" ></span></span>'
);
end;
/
prompt --application/shared_components/user_interface/lovs/feedback_status
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(154889646896712434273)
,p_lov_name=>'FEEDBACK_STATUS'
,p_lov_query=>'.'||wwv_flow_imp.id(154889646896712434273)||'.'
,p_location=>'STATIC'
,p_version_scn=>15752729736015
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(154889647213524434273)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'No Action'
,p_lov_return_value=>'0'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(154889647600237434274)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Acknowledged'
,p_lov_return_value=>'1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(154889648013031434274)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Open'
,p_lov_return_value=>'3'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(154889648408221434274)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Closed'
,p_lov_return_value=>'4'
);
end;
/
prompt --application/shared_components/user_interface/lovs/timeframe_4_weeks
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(154889527688635434106)
,p_lov_name=>'TIMEFRAME (4 WEEKS)'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'SECONDS'
,p_display_column_name=>'DISP'
,p_version_scn=>15752729717528
);
end;
/
prompt --application/shared_components/user_interface/lovs/user_theme_preference
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(154889508680756434086)
,p_lov_name=>'USER_THEME_PREFERENCE'
,p_lov_query=>'.'||wwv_flow_imp.id(154889508680756434086)||'.'
,p_location=>'STATIC'
,p_version_scn=>15752729716258
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(154889508950862434086)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Allow End Users to choose Theme Style'
,p_lov_return_value=>'Yes'
);
end;
/
prompt --application/shared_components/user_interface/lovs/view_as_report_chart
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(154889576037120434193)
,p_lov_name=>'VIEW_AS_REPORT_CHART'
,p_lov_query=>'.'||wwv_flow_imp.id(154889576037120434193)||'.'
,p_location=>'STATIC'
,p_version_scn=>15752729728546
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(154889576323298434193)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Add Report Page'
,p_lov_return_value=>'REPORT'
,p_lov_template=>'<span class="fa fa-table" aria-hidden="true"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(154889576747777434194)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Add Chart Page'
,p_lov_return_value=>'CHART'
,p_lov_template=>'<span class="fa fa-pie-chart" aria-hidden="true"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(154889414672979433552)
,p_group_name=>'Administration'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(154889691021412434323)
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
 p_id=>wwv_flow_imp.id(154889406055017433533)
,p_name=>'Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(154889406214972433533)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(154889434642871433579)
,p_short_name=>'Dashboard'
,p_link=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>2
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(154889445136485433597)
,p_short_name=>'Bicycles Search'
,p_link=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>3
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(154889469785757434026)
,p_short_name=>'Bicycles Report'
,p_link=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>4
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(154889673098775434303)
,p_short_name=>'Administration'
,p_link=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>10000
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(155052463713638214053)
,p_parent_id=>wwv_flow_imp.id(154889406214972433533)
,p_short_name=>'Customers'
,p_link=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>7
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(155059586941151354223)
,p_parent_id=>wwv_flow_imp.id(154889406214972433533)
,p_short_name=>'Payments'
,p_link=>'f?p=&APP_ID.:9:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>9
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
 p_id=>wwv_flow_imp.id(154889407034917433534)
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
 p_id=>wwv_flow_imp.id(154889405409950433532)
,p_build_option_name=>'Commented Out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>15752729652411
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(154889410322679433546)
,p_build_option_name=>'Feature: Access Control'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15752729654622
,p_feature_identifier=>'APPLICATION_ACCESS_CONTROL'
,p_build_option_comment=>'Incorporate role based user authentication within your application and manage username mappings to application roles.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(154889410402932433546)
,p_build_option_name=>'Feature: Activity Reporting'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15752729654667
,p_feature_identifier=>'APPLICATION_ACTIVITY_REPORTING'
,p_build_option_comment=>'Include numerous reports and charts on end user activity.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(154889410589071433546)
,p_build_option_name=>'Feature: Feedback'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15752729654692
,p_feature_identifier=>'APPLICATION_FEEDBACK'
,p_build_option_comment=>'Provide a mechanism for end users to post general comments back to the application administrators and developers.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(154889410735965433546)
,p_build_option_name=>'Feature: Configuration Options'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15752729654561
,p_feature_identifier=>'APPLICATION_CONFIGURATION'
,p_build_option_comment=>'Allow application administrators to enable or disable specific functionality, associated with an Oracle APEX build option, from within the application.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(154889411019301433546)
,p_build_option_name=>'Feature: About Page'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15752729654737
,p_feature_identifier=>'APPLICATION_ABOUT_PAGE'
,p_build_option_comment=>'About this application page.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(154889411150683433546)
,p_build_option_name=>'Feature: Theme Style Selection'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15752729654770
,p_feature_identifier=>'APPLICATION_THEME_STYLE_SELECTION'
,p_build_option_comment=>'Allow administrators to select a default color scheme (theme style) for the application. Administrators can also choose to allow end users to choose their own theme style. '
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(154889691238167434324)
,p_build_option_name=>'Feature: Push Notifications'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15752729744370
,p_feature_identifier=>'APPLICATION_PUSH_NOTIFICATIONS'
,p_build_option_comment=>'Allow users to subscribe to push notifications on their devices.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(154889691553538434324)
,p_build_option_name=>'Feature: User Settings'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15752729744434
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
 p_id=>wwv_flow_imp.id(154889405766567433533)
,p_name=>'Oracle APEX Accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>15752729652554
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
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'CycleHub'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889424351486433568)
,p_plug_name=>'CycleHub'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889494742407434068)
,p_plug_name=>'Page Navigation'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured t-Cards--block force-fa-lg:t-Cards--displayIcons:t-Cards--3cols:t-Cards--hideBody:t-Cards--animColorFill'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_list_id=>wwv_flow_imp.id(154889493271940434065)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2886769488667748277
,p_plug_query_num_rows=>15
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
,p_page_component_map=>'23'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(152278456828690409615)
,p_name=>'Customer Balances'
,p_title=>'Customer Outstanding Balances'
,p_template=>4072358936313175081
,p_display_sequence=>60
,p_region_css_classes=>'u-width-100p'
,p_region_template_options=>'t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_grid_column_span=>12
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    c.FULL_NAME as "Customer Name",',
'    b.BRAND as "Bicycle",',
'    b.BICYCLE_ID as "Bicycle No",',
'    b.SELLING_PRICE as "Total Price",',
'    NVL(SUM(p.AMOUNT_PAID), 0) as "Paid Amount",',
'    (b.SELLING_PRICE - NVL(SUM(p.AMOUNT_PAID), 0)) as "Remaining Balance",',
'    ',
'    CASE ',
'        WHEN (b.SELLING_PRICE - NVL(SUM(p.AMOUNT_PAID), 0)) > 0 THEN ''Pending''',
'        ELSE ''Fully Paid''',
'    END as "Status",',
'    CASE ',
'        WHEN (b.SELLING_PRICE - NVL(SUM(p.AMOUNT_PAID), 0)) > 0 THEN ''red''',
'        ELSE ''green''',
'    END as "Status_Color"',
'FROM CUSTOMERS c',
'JOIN BICYCLES b ON c.CUSTOMER_ID = b.CUSTOMER_ID',
'LEFT JOIN PAYMENTS p ON b.BICYCLE_ID = p.BICYCLE_ID',
'GROUP BY c.FULL_NAME, b.BRAND, b.BICYCLE_ID, b.SELLING_PRICE',
'ORDER BY "Remaining Balance" DESC;'))
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
 p_id=>wwv_flow_imp.id(152278456970993409616)
,p_query_column_id=>1
,p_column_alias=>'Customer Name'
,p_column_display_sequence=>10
,p_column_heading=>'Customer Name'
,p_column_css_style=>'width: 300px; display: inline-block;'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(152278457031451409617)
,p_query_column_id=>2
,p_column_alias=>'Bicycle'
,p_column_display_sequence=>20
,p_column_heading=>'Bicycle'
,p_column_css_style=>'width: 200px; display: inline-block;'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(152278457195831409618)
,p_query_column_id=>3
,p_column_alias=>'Bicycle No'
,p_column_display_sequence=>30
,p_column_heading=>'Bicycle No'
,p_column_css_style=>'width: 100px; display: inline-block;'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(152278457269500409619)
,p_query_column_id=>4
,p_column_alias=>'Total Price'
,p_column_display_sequence=>40
,p_column_heading=>'Total Price'
,p_column_css_style=>'width: 100px; display: inline-block;'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(152278457354192409620)
,p_query_column_id=>5
,p_column_alias=>'Paid Amount'
,p_column_display_sequence=>50
,p_column_heading=>'Paid Amount'
,p_column_css_style=>'width: 100px; display: inline-block;'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(152278457483847409621)
,p_query_column_id=>6
,p_column_alias=>'Remaining Balance'
,p_column_display_sequence=>60
,p_column_heading=>'Remaining Balance'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(152278457579569409622)
,p_query_column_id=>7
,p_column_alias=>'Status'
,p_column_display_sequence=>70
,p_column_heading=>'Status'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span style="color: white; ',
'             background-color: &Status_Color.; ',
'             padding: 5px 10px; ',
'             border-radius: 20px; ',
'             font-weight: bold; ',
'             font-size: 12px;',
'             display: inline-block;',
'             text-align: center;',
'             min-width: 80px;">',
'    &Status.',
'</span>'))
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(152278458489044409631)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc:t-CardsRegion--styleB'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- 1. Total Bicycles',
'SELECT 1 AS SL,',
'       ''https://cdn-icons-png.flaticon.com/512/8161/8161879.png'' AS ICON,',
'       ''Total Bicycles'' AS TITLE,',
'       TO_CHAR(COUNT(*)) AS TOTAL,',
'       NULL AS URL',
'FROM BICYCLES',
'',
'UNION ALL',
'',
'-- 2. New Bicycles',
'SELECT 2 AS SL,',
'       ''https://cdn-icons-png.flaticon.com/512/5212/5212318.png'' AS ICON,',
'       ''New Bicycles'' AS TITLE,',
'       TO_CHAR(COUNT(*)) AS TOTAL,',
'       NULL AS URL',
'FROM BICYCLES',
'WHERE CONDITION = ''New''',
'',
'UNION ALL',
'',
'-- 3. Available Bicycles ',
'SELECT 3 AS SL,',
'       ''https://cdn-icons-png.flaticon.com/512/5610/5610944.png'' AS ICON,',
'       ''Available Bicycles'' AS TITLE,',
'       TO_CHAR(COUNT(*)) AS TOTAL,',
'       NULL AS URL',
'FROM BICYCLES',
'WHERE STATUS = ''Available''',
'',
'UNION ALL',
'',
'-- 4. Reserved Bicycles ',
'SELECT 4 AS SL,',
'       ''https://cdn-icons-png.flaticon.com/512/6632/6632830.png'' AS ICON,',
'       ''Reserved Bicycles'' AS TITLE,',
'       TO_CHAR(COUNT(*)) AS TOTAL,',
'       NULL AS URL',
'FROM BICYCLES',
'WHERE STATUS = ''Reserved''',
'',
'UNION ALL',
'',
'-- 5. Total Inventory Value',
'SELECT 5 AS SL,',
'       ''https://cdn-icons-png.flaticon.com/512/7656/7656399.png'' AS ICON,',
'       ''Total Inventory Value'' AS TITLE,',
'       TO_CHAR(SUM(SELLING_PRICE), ''999,999,999'') AS TOTAL,',
'       NULL AS URL',
'FROM BICYCLES',
'',
'UNION ALL',
'',
'-- 6. Bicycles Sold',
'SELECT 6 AS SL,',
'       ''https://tse4.mm.bing.net/th/id/OIP.q8Etn5UqXTmCjIf7kyTOZwHaHa?pid=Api&P=0&h=220'' AS ICON,',
'       ''Bicycles Sold'' AS TITLE,',
'       TO_CHAR(COUNT(*)) AS TOTAL,',
'       NULL AS URL',
'FROM BICYCLES',
'WHERE STATUS = ''Sold''',
'',
'ORDER BY SL;'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(152278458588021409632)
,p_region_id=>wwv_flow_imp.id(152278458489044409631)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'TOTAL'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'TITLE'
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'URL'
,p_icon_image_url=>'&ICON.'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
,p_pk1_column_name=>'SL'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(152278458690808409633)
,p_name=>'Low Stock Alerts'
,p_template=>2040683448887306517
,p_display_sequence=>70
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT BRAND, MODEL, COUNT(*) AS QUANTITY',
'FROM BICYCLES',
'WHERE STATUS = ''Available''',
'GROUP BY BRAND, MODEL',
'HAVING COUNT(*) < 2'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT BRAND, MODEL, COUNT(*) AS QUANTITY',
'FROM BICYCLES',
'WHERE STATUS = ''Available''',
'GROUP BY BRAND, MODEL',
'HAVING COUNT(*) < 2'))
,p_display_condition_type=>'EXISTS'
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
 p_id=>wwv_flow_imp.id(152278458729112409634)
,p_query_column_id=>1
,p_column_alias=>'BRAND'
,p_column_display_sequence=>10
,p_column_heading=>'Brand'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(152278458898511409635)
,p_query_column_id=>2
,p_column_alias=>'MODEL'
,p_column_display_sequence=>20
,p_column_heading=>'Model'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(152278458948459409636)
,p_query_column_id=>3
,p_column_alias=>'QUANTITY'
,p_column_display_sequence=>30
,p_column_heading=>'Quantity'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889425685246433570)
,p_plug_name=>'Category'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(154889426064352433570)
,p_region_id=>wwv_flow_imp.id(154889425685246433570)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(154889427803321433572)
,p_chart_id=>wwv_flow_imp.id(154889426064352433570)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'TABLE'
,p_max_row_count=>20
,p_query_table=>'BICYCLES'
,p_series_type=>'bar'
,p_items_label_column_name=>'CATEGORY'
,p_aggregate_function=>'COUNT'
,p_items_label_rendered=>false
,p_items_label_position=>'auto'
,p_threshold_display=>'onIndicator'
,p_link_target=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:RR:IR_CATEGORY:\&CATEGORY.\'
,p_link_target_type=>'REDIRECT_PAGE'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(154889426572073433571)
,p_chart_id=>wwv_flow_imp.id(154889426064352433570)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(154889427236244433571)
,p_chart_id=>wwv_flow_imp.id(154889426064352433570)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889428456324433573)
,p_plug_name=>'Condition'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(154889428888850433573)
,p_region_id=>wwv_flow_imp.id(154889428456324433573)
,p_chart_type=>'pie'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(154889429359299433574)
,p_chart_id=>wwv_flow_imp.id(154889428888850433573)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'TABLE'
,p_max_row_count=>20
,p_query_table=>'BICYCLES'
,p_series_type=>'pie'
,p_items_label_column_name=>'CONDITION'
,p_aggregate_function=>'COUNT'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'LABEL'
,p_threshold_display=>'onIndicator'
,p_link_target=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:RR:IR_CONDITION:\&CONDITION.\'
,p_link_target_type=>'REDIRECT_PAGE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889429905931433574)
,p_plug_name=>'Frame Size'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(154889430334432433575)
,p_region_id=>wwv_flow_imp.id(154889429905931433574)
,p_chart_type=>'pie'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(154889430876597433575)
,p_chart_id=>wwv_flow_imp.id(154889430334432433575)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'TABLE'
,p_max_row_count=>20
,p_query_table=>'BICYCLES'
,p_series_type=>'pie'
,p_items_label_column_name=>'FRAME_SIZE'
,p_aggregate_function=>'COUNT'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'LABEL'
,p_threshold_display=>'onIndicator'
,p_link_target=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:RR:IR_FRAME_SIZE:\&FRAME_SIZE.\'
,p_link_target_type=>'REDIRECT_PAGE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889431404701433576)
,p_plug_name=>'Selling Price'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(154889431850217433576)
,p_region_id=>wwv_flow_imp.id(154889431404701433576)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(154889433568791433578)
,p_chart_id=>wwv_flow_imp.id(154889431850217433576)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'TABLE'
,p_max_row_count=>20
,p_query_table=>'BICYCLES'
,p_series_type=>'bar'
,p_items_label_column_name=>'SELLING_PRICE'
,p_aggregate_function=>'COUNT'
,p_items_label_rendered=>false
,p_items_label_position=>'auto'
,p_threshold_display=>'onIndicator'
,p_link_target=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:RR:IR_SELLING_PRICE:\&SELLING_PRICE.\'
,p_link_target_type=>'REDIRECT_PAGE'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(154889432975523433577)
,p_chart_id=>wwv_flow_imp.id(154889431850217433576)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(154889432395357433577)
,p_chart_id=>wwv_flow_imp.id(154889431850217433576)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889434117949433578)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(154889406055017433533)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>'Bicycles Search'
,p_alias=>'BICYCLES-SEARCH'
,p_step_title=>'Bicycles Search'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2526643373347724467
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'22'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(154889435713643433582)
,p_name=>'Bicycles'
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'BICYCLES'
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
 p_id=>wwv_flow_imp.id(154889439763750433592)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>0
,p_column_heading=>'ID'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(154889440194188433593)
,p_query_column_id=>2
,p_column_alias=>'BICYCLE_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Bicycle ID'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(154889440524197433593)
,p_query_column_id=>3
,p_column_alias=>'BRAND'
,p_column_display_sequence=>3
,p_column_heading=>'Brand'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(154889440946908433594)
,p_query_column_id=>4
,p_column_alias=>'MODEL'
,p_column_display_sequence=>4
,p_column_heading=>'Model'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(154889441301719433594)
,p_query_column_id=>5
,p_column_alias=>'CATEGORY'
,p_column_display_sequence=>5
,p_column_heading=>'Category'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(154889441798845433594)
,p_query_column_id=>6
,p_column_alias=>'CONDITION'
,p_column_display_sequence=>6
,p_column_heading=>'Condition'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(154889442188294433595)
,p_query_column_id=>7
,p_column_alias=>'FRAME_SIZE'
,p_column_display_sequence=>7
,p_column_heading=>'Frame Size'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(154889442525173433595)
,p_query_column_id=>8
,p_column_alias=>'SELLING_PRICE'
,p_column_display_sequence=>8
,p_column_heading=>'Selling Price'
,p_column_format=>'999G999G999G999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(154889442909065433595)
,p_query_column_id=>9
,p_column_alias=>'MIN_DOWN_PAYMENT'
,p_column_display_sequence=>9
,p_column_heading=>'Min Down Payment'
,p_column_format=>'999G999G999G999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(154889443380538433596)
,p_query_column_id=>10
,p_column_alias=>'INSTALLMENT_PLAN'
,p_column_display_sequence=>10
,p_column_heading=>'Installment Plan'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(154889443790424433596)
,p_query_column_id=>11
,p_column_alias=>'STATUS'
,p_column_display_sequence=>11
,p_column_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(154889444230013433596)
,p_query_column_id=>12
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>12
,p_column_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889435863144433582)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>4
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_imp.id(154889435713643433582)
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
 p_id=>wwv_flow_imp.id(154889438681958433590)
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
 p_id=>wwv_flow_imp.id(154889444688959433597)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(154889406055017433533)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(154889439193232433591)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(154889438681958433590)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:RR,3::'
,p_icon_css_classes=>'fa-undo'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154889436377793433584)
,p_name=>'P3_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(154889435863144433582)
,p_prompt=>'Search'
,p_source=>'INSTALLMENT_PLAN,BICYCLE_ID,BRAND,MODEL,CATEGORY,FRAME_SIZE,CONDITION'
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
 p_id=>wwv_flow_imp.id(154889436725408433585)
,p_name=>'P3_CATEGORY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(154889435863144433582)
,p_prompt=>'Category'
,p_source=>'CATEGORY'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154889437140694433586)
,p_name=>'P3_CONDITION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(154889435863144433582)
,p_prompt=>'Condition'
,p_source=>'CONDITION'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154889437537413433586)
,p_name=>'P3_FRAME_SIZE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(154889435863144433582)
,p_prompt=>'Frame Size'
,p_source=>'FRAME_SIZE'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154889437917027433588)
,p_name=>'P3_SELLING_PRICE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(154889435863144433582)
,p_prompt=>'Selling Price'
,p_source=>'SELLING_PRICE'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_RANGE'
,p_lov=>'STATIC2:<30#G#000;|30000,30#G#000 - 40#G#000;30000|40000,40#G#000 - 60#G#000;40000|60000,60#G#000 - 90#G#000;60000|90000,>=90#G#000;90000|'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154889438333143433590)
,p_name=>'P3_MIN_DOWN_PAYMENT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(154889435863144433582)
,p_prompt=>'Min Down Payment'
,p_source=>'MIN_DOWN_PAYMENT'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_RANGE'
,p_lov=>'STATIC2:<10#G#000;|10000,10#G#000 - 15#G#000;10000|15000,15#G#000 - 20#G#000;15000|20000,>=20#G#000;20000|'
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
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'Bicycles Report'
,p_alias=>'BICYCLES-REPORT'
,p_step_title=>'Bicycles Report'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889462344824434017)
,p_plug_name=>'Bicycles'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'BICYCLES'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Bicycles Report'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(154889462408843434017)
,p_name=>'Bicycles Report'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:RP:P5_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(154889413211927433549)
,p_owner=>'SASINIAMARATHUNGA2005@GMAIL.COM'
,p_internal_uid=>154889462408843434017
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889463110601434019)
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
 p_id=>wwv_flow_imp.id(154889463573270434020)
,p_db_column_name=>'BICYCLE_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Bicycle ID'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889463849350434020)
,p_db_column_name=>'BRAND'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Brand'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889464289530434021)
,p_db_column_name=>'MODEL'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Model'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889464673684434021)
,p_db_column_name=>'CATEGORY'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Category'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889465083287434022)
,p_db_column_name=>'CONDITION'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Condition'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889465406393434022)
,p_db_column_name=>'FRAME_SIZE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Frame Size'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889465885251434023)
,p_db_column_name=>'SELLING_PRICE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Selling Price'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889466265229434023)
,p_db_column_name=>'MIN_DOWN_PAYMENT'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Min Down Payment'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889466680533434024)
,p_db_column_name=>'INSTALLMENT_PLAN'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Installment Plan'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889467038071434024)
,p_db_column_name=>'STATUS'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889467464396434024)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(154889476352966434037)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1548894764'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'BICYCLE_ID:BRAND:MODEL:CATEGORY:CONDITION:FRAME_SIZE:SELLING_PRICE:MIN_DOWN_PAYMENT:INSTALLMENT_PLAN:STATUS:DESCRIPTION'
,p_sort_column_1=>'BICYCLE_ID'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889469230105434026)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(154889406055017433533)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(154889468011180434025)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(154889462344824434017)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:5::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(154889468367818434025)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(154889462344824434017)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154889468830024434025)
,p_event_id=>wwv_flow_imp.id(154889468367818434025)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(154889462344824434017)
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_imp_page.create_page(
 p_id=>5
,p_name=>'Bicycle'
,p_alias=>'BICYCLE'
,p_page_mode=>'MODAL'
,p_step_title=>'Bicycle'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_role=>wwv_flow_imp.id(154889413211927433549)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889448687131433903)
,p_plug_name=>'Bicycle'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'BICYCLES'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889457928296434013)
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
 p_id=>wwv_flow_imp.id(154889458363618434013)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(154889457928296434013)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(154889459722235434015)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(154889457928296434013)
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
,p_button_condition=>'P5_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(154889460111508434015)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(154889457928296434013)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P5_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(154889460539934434015)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(154889457928296434013)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P5_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154889449038732433904)
,p_name=>'P5_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(154889448687131433903)
,p_item_source_plug_id=>wwv_flow_imp.id(154889448687131433903)
,p_use_cache_before_default=>'NO'
,p_prompt=>'ID'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154889449944835434004)
,p_name=>'P5_BICYCLE_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(154889448687131433903)
,p_item_source_plug_id=>wwv_flow_imp.id(154889448687131433903)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Bicycle ID'
,p_source=>'BICYCLE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154889450354364434005)
,p_name=>'P5_BRAND'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(154889448687131433903)
,p_item_source_plug_id=>wwv_flow_imp.id(154889448687131433903)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Brand'
,p_source=>'BRAND'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154889450700250434005)
,p_name=>'P5_MODEL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(154889448687131433903)
,p_item_source_plug_id=>wwv_flow_imp.id(154889448687131433903)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Model'
,p_source=>'MODEL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154889451140836434006)
,p_name=>'P5_CATEGORY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(154889448687131433903)
,p_item_source_plug_id=>wwv_flow_imp.id(154889448687131433903)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Category'
,p_source=>'CATEGORY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154889451589990434006)
,p_name=>'P5_CONDITION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(154889448687131433903)
,p_item_source_plug_id=>wwv_flow_imp.id(154889448687131433903)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Condition'
,p_source=>'CONDITION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154889451994600434006)
,p_name=>'P5_FRAME_SIZE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(154889448687131433903)
,p_item_source_plug_id=>wwv_flow_imp.id(154889448687131433903)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Frame Size'
,p_source=>'FRAME_SIZE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154889452395452434007)
,p_name=>'P5_SELLING_PRICE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(154889448687131433903)
,p_item_source_plug_id=>wwv_flow_imp.id(154889448687131433903)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Selling Price'
,p_source=>'SELLING_PRICE'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154889452710255434007)
,p_name=>'P5_MIN_DOWN_PAYMENT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(154889448687131433903)
,p_item_source_plug_id=>wwv_flow_imp.id(154889448687131433903)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Min Down Payment'
,p_source=>'MIN_DOWN_PAYMENT'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154889453153521434008)
,p_name=>'P5_INSTALLMENT_PLAN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(154889448687131433903)
,p_item_source_plug_id=>wwv_flow_imp.id(154889448687131433903)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Installment Plan'
,p_source=>'INSTALLMENT_PLAN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154889453545640434008)
,p_name=>'P5_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(154889448687131433903)
,p_item_source_plug_id=>wwv_flow_imp.id(154889448687131433903)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154889453958189434009)
,p_name=>'P5_DESCRIPTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(154889448687131433903)
,p_item_source_plug_id=>wwv_flow_imp.id(154889448687131433903)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Description'
,p_source=>'DESCRIPTION'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(154889458404177434013)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(154889458363618434013)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154889459246639434014)
,p_event_id=>wwv_flow_imp.id(154889458404177434013)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(154889461326276434016)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(154889448687131433903)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Bicycle'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>154889461326276434016
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(154889461769489434017)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>154889461769489434017
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(154889460962003434016)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(154889448687131433903)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Bicycle'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>154889460962003434016
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_imp_page.create_page(
 p_id=>7
,p_name=>'Customers'
,p_alias=>'CUSTOMERS'
,p_step_title=>'Customers'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(155052458950286214044)
,p_plug_name=>'Customers'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'CUSTOMERS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Customers'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(155052459084338214044)
,p_name=>'Customers'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'CUSTOMER_ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:RP:P8_CUSTOMER_ID:\#CUSTOMER_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'SASINIAMARATHUNGA2005@GMAIL.COM'
,p_internal_uid=>155052459084338214044
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(155052459725535214048)
,p_db_column_name=>'CUSTOMER_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Customer ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(155052460148470214049)
,p_db_column_name=>'FULL_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Full Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(155052460573945214049)
,p_db_column_name=>'PHONE_NUMBER'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Phone Number'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(155052460915066214050)
,p_db_column_name=>'ADDRESS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Address'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(155052461356777214050)
,p_db_column_name=>'EMAIL'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(155052461795030214051)
,p_db_column_name=>'CREATED_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Created Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(155052531413387218406)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1550525315'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CUSTOMER_ID:FULL_NAME:PHONE_NUMBER:ADDRESS:EMAIL:CREATED_DATE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(155052463841140214053)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(154889406055017433533)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(155052462240010214051)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(155052458950286214044)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:8::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(155052462589587214052)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(155052458950286214044)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155052463097305214052)
,p_event_id=>wwv_flow_imp.id(155052462589587214052)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(155052458950286214044)
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_imp_page.create_page(
 p_id=>8
,p_name=>'Customer Details'
,p_alias=>'CUSTOMER-DETAILS'
,p_page_mode=>'MODAL'
,p_step_title=>'Customer Details'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(155052449600958214032)
,p_plug_name=>'Customer Details'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'CUSTOMERS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(155052454139967214038)
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
 p_id=>wwv_flow_imp.id(155052454571991214039)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(155052454139967214038)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(155052455936630214041)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(155052454139967214038)
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
,p_button_condition=>'P8_CUSTOMER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(155052456354334214041)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(155052454139967214038)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P8_CUSTOMER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(155052456780084214041)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(155052454139967214038)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P8_CUSTOMER_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155052449953594214033)
,p_name=>'P8_CUSTOMER_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(155052449600958214032)
,p_item_source_plug_id=>wwv_flow_imp.id(155052449600958214032)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer Id'
,p_source=>'CUSTOMER_ID'
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
 p_id=>wwv_flow_imp.id(155052450347454214034)
,p_name=>'P8_FULL_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(155052449600958214032)
,p_item_source_plug_id=>wwv_flow_imp.id(155052449600958214032)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Full Name'
,p_source=>'FULL_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155052450743058214034)
,p_name=>'P8_PHONE_NUMBER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(155052449600958214032)
,p_item_source_plug_id=>wwv_flow_imp.id(155052449600958214032)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Phone Number'
,p_source=>'PHONE_NUMBER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155052451165162214035)
,p_name=>'P8_ADDRESS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(155052449600958214032)
,p_item_source_plug_id=>wwv_flow_imp.id(155052449600958214032)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address'
,p_source=>'ADDRESS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155052451568810214035)
,p_name=>'P8_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(155052449600958214032)
,p_item_source_plug_id=>wwv_flow_imp.id(155052449600958214032)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email'
,p_source=>'EMAIL'
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
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155052451931567214036)
,p_name=>'P8_CREATED_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(155052449600958214032)
,p_item_source_plug_id=>wwv_flow_imp.id(155052449600958214032)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created Date'
,p_source=>'CREATED_DATE'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(155052454664406214039)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(155052454571991214039)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155052455408171214040)
,p_event_id=>wwv_flow_imp.id(155052454664406214039)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(155052457586366214042)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(155052449600958214032)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Customer Details'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>155052457586366214042
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(155052457991688214043)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>155052457991688214043
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(155052457101826214042)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(155052449600958214032)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Customer Details'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>155052457101826214042
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_imp_page.create_page(
 p_id=>9
,p_name=>'Payments'
,p_alias=>'PAYMENTS'
,p_step_title=>'Payments'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(155059581847110354215)
,p_plug_name=>'Payments'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'PAYMENTS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Payments'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(155059581916755354215)
,p_name=>'Payments'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'PAYMENT_ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:RP:P10_PAYMENT_ID:\#PAYMENT_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'SASINIAMARATHUNGA2005@GMAIL.COM'
,p_internal_uid=>155059581916755354215
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(155059582662351354218)
,p_db_column_name=>'PAYMENT_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Payment ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(155059583088713354219)
,p_db_column_name=>'BICYCLE_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Bicycle'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(155059572074192354202)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(155059583404780354220)
,p_db_column_name=>'CUSTOMER_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Customer'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(155059572733683354204)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(155059583873930354220)
,p_db_column_name=>'AMOUNT_PAID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Amount Paid'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(155059584178413354220)
,p_db_column_name=>'PAYMENT_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Payment Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(155059584553977354221)
,p_db_column_name=>'PAYMENT_METHOD'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Payment Method'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(155059584941942354221)
,p_db_column_name=>'REMARKS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(155064564908866141967)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1550645650'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAYMENT_ID:BICYCLE_ID:CUSTOMER_ID:AMOUNT_PAID:PAYMENT_DATE:PAYMENT_METHOD:REMARKS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(155059587033320354223)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(154889406055017433533)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(155059585407804354222)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(155059581847110354215)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:10::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(155059585775142354222)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(155059581847110354215)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155059586268840354223)
,p_event_id=>wwv_flow_imp.id(155059585775142354222)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(155059581847110354215)
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_imp_page.create_page(
 p_id=>10
,p_name=>'Payment Details'
,p_alias=>'PAYMENT-DETAILS'
,p_page_mode=>'MODAL'
,p_step_title=>'Payment Details'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(155059571291815354200)
,p_plug_name=>'Payment Details'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'PAYMENTS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(155059577022173354209)
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
 p_id=>wwv_flow_imp.id(155059577464107354210)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(155059577022173354209)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(155059578843284354212)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(155059577022173354209)
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
,p_button_condition=>'P10_PAYMENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(155059579210140354212)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(155059577022173354209)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P10_PAYMENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(155059579689198354213)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(155059577022173354209)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P10_PAYMENT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155059571508948354201)
,p_name=>'P10_PAYMENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(155059571291815354200)
,p_item_source_plug_id=>wwv_flow_imp.id(155059571291815354200)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Payment Id'
,p_source=>'PAYMENT_ID'
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
 p_id=>wwv_flow_imp.id(155059571977172354202)
,p_name=>'P10_BICYCLE_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(155059571291815354200)
,p_item_source_plug_id=>wwv_flow_imp.id(155059571291815354200)
,p_prompt=>'Select Bicycle'
,p_source=>'BICYCLE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT BRAND || '' ('' || BICYCLE_ID || '')'' as display_value, ',
'       BICYCLE_ID as return_value ',
'FROM BICYCLES ',
'ORDER BY BRAND'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Customer -'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155059572695999354203)
,p_name=>'P10_CUSTOMER_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(155059571291815354200)
,p_item_source_plug_id=>wwv_flow_imp.id(155059571291815354200)
,p_prompt=>'Select Customer'
,p_source=>'CUSTOMER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT FULL_NAME as display_value, CUSTOMER_ID as return_value ',
'FROM CUSTOMERS ',
'ORDER BY FULL_NAME'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155059573391226354204)
,p_name=>'P10_AMOUNT_PAID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(155059571291815354200)
,p_item_source_plug_id=>wwv_flow_imp.id(155059571291815354200)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Amount Paid'
,p_source=>'AMOUNT_PAID'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155059573762121354205)
,p_name=>'P10_PAYMENT_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(155059571291815354200)
,p_item_source_plug_id=>wwv_flow_imp.id(155059571291815354200)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Payment Date'
,p_source=>'PAYMENT_DATE'
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
 p_id=>wwv_flow_imp.id(155059574108950354206)
,p_name=>'P10_PAYMENT_METHOD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(155059571291815354200)
,p_item_source_plug_id=>wwv_flow_imp.id(155059571291815354200)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Payment Method'
,p_source=>'PAYMENT_METHOD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155059574514624354206)
,p_name=>'P10_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(155059571291815354200)
,p_item_source_plug_id=>wwv_flow_imp.id(155059571291815354200)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Remarks'
,p_source=>'REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(155059577559293354210)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(155059577464107354210)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155059578353638354212)
,p_event_id=>wwv_flow_imp.id(155059577559293354210)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(155059580413369354214)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(155059571291815354200)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Payment Details'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>155059580413369354214
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(155059580879439354214)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>155059580879439354214
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(155059580048032354213)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(155059571291815354200)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Payment Details'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>155059580048032354213
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'CycleHub - Log In'
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
 p_id=>wwv_flow_imp.id(154889416581472433556)
,p_plug_name=>'CycleHub'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2674157997338192145
,p_plug_display_sequence=>10
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(154889418986251433562)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(154889416581472433556)
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
 p_id=>wwv_flow_imp.id(154889417155650433558)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(154889416581472433556)
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
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154889417735519433560)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(154889416581472433556)
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
 p_id=>wwv_flow_imp.id(154889418136970433561)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(154889416581472433556)
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
  'checked_value', '',
  'unchecked_value', '',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154889418589673433561)
,p_name=>'P9999_PERSISTENT_AUTH'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(154889416581472433556)
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
  'checked_value', '',
  'unchecked_value', '',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(154889421111338433564)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'SEND_LOGIN_USERNAME_COOKIE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>154889421111338433564
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(154889421680183433565)
,p_page_process_id=>wwv_flow_imp.id(154889421111338433564)
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
 p_id=>wwv_flow_imp.id(154889422145538433565)
,p_page_process_id=>wwv_flow_imp.id(154889421111338433564)
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
 p_id=>wwv_flow_imp.id(154889419217969433562)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'LOGIN'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>154889419217969433562
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(154889419737879433563)
,p_page_process_id=>wwv_flow_imp.id(154889419217969433562)
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
 p_id=>wwv_flow_imp.id(154889420270595433564)
,p_page_process_id=>wwv_flow_imp.id(154889419217969433562)
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
 p_id=>wwv_flow_imp.id(154889420749383433564)
,p_page_process_id=>wwv_flow_imp.id(154889419217969433562)
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
 p_id=>wwv_flow_imp.id(154889423016064433566)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>154889423016064433566
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(154889422671508433566)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>154889422671508433566
);
end;
/
prompt --application/pages/page_10000
begin
wwv_flow_imp_page.create_page(
 p_id=>10000
,p_name=>'Administration'
,p_alias=>'ADMINISTRATION'
,p_step_title=>'Administration'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(154889414672979433552)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(154889413070980433549)
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The administration page allows application owners (Administrators) to configure the application and maintain common data used across the application.',
'By selecting one of the available settings, administrators can potentially change how the application is displayed and/or features available to the end users.</p>',
'<p>Access to this page should be limited to Administrators only.</p>'))
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889672567111434302)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(154889406055017433533)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889679186102434308)
,p_plug_name=>'Column 1'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889679523666434308)
,p_plug_name=>'Configuration'
,p_parent_plug_id=>wwv_flow_imp.id(154889679186102434308)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_list_id=>wwv_flow_imp.id(154889673256008434303)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(154889410735965433546)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889679934081434309)
,p_plug_name=>'User Interface'
,p_parent_plug_id=>wwv_flow_imp.id(154889679186102434308)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_list_id=>wwv_flow_imp.id(154889673933435434304)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(154889411150683433546)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889680372103434309)
,p_plug_name=>'Activity Reports'
,p_parent_plug_id=>wwv_flow_imp.id(154889679186102434308)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_list_id=>wwv_flow_imp.id(154889674644101434304)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(154889410402932433546)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889680739237434310)
,p_plug_name=>'Column 2'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889681168440434310)
,p_plug_name=>'Access Control'
,p_parent_plug_id=>wwv_flow_imp.id(154889680739237434310)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>70
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(154889410322679433546)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889681929356434311)
,p_plug_name=>'ACL Information'
,p_parent_plug_id=>wwv_flow_imp.id(154889681168440434310)
,p_region_css_classes=>'margin-sm'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--noIcon:t-Alert--warning:t-Alert--accessibleHeading'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_acl_scope varchar2(45);',
'begin',
'    l_acl_scope := apex_app_setting.get_value( p_name => ''ACCESS_CONTROL_SCOPE'' );',
'',
'    if l_acl_scope = ''ALL_USERS'' then',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ALL_USERS'');',
'    elsif l_acl_scope = ''ACL_ONLY'' then',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ACL_ONLY'');',
'    else',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ACL_VALUE_INVALID'', l_acl_scope);',
'    end if;',
'end;'))
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(154889682383505434311)
,p_name=>'User Counts Report'
,p_parent_plug_id=>wwv_flow_imp.id(154889681168440434310)
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--stacked:t-Region--scrollBody:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select r.role_name, (select count(*) from apex_appl_acl_user_roles ur where r.role_id = ur.role_id) user_count, r.role_id',
'from apex_appl_acl_roles r',
'where r.application_id = :APP_ID',
'group by r.role_name, r.role_id',
'order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2100515124465797522
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(154889683085845434313)
,p_query_column_id=>1
,p_column_alias=>'ROLE_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Role Name'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(154889683432251434314)
,p_query_column_id=>2
,p_column_alias=>'USER_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'User Count'
,p_column_format=>'999G999G999G999G999G999G990'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(154889683821260434314)
,p_query_column_id=>3
,p_column_alias=>'ROLE_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Role Id'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889686912573434317)
,p_plug_name=>'Access Control Actions'
,p_parent_plug_id=>wwv_flow_imp.id(154889681168440434310)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_list_id=>wwv_flow_imp.id(154889677370490434306)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889687369156434318)
,p_plug_name=>'Feedback'
,p_parent_plug_id=>wwv_flow_imp.id(154889680739237434310)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>80
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(154889410589071433546)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(154889687726766434318)
,p_name=>'Report'
,p_parent_plug_id=>wwv_flow_imp.id(154889687369156434318)
,p_template=>4072358936313175081
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--stacked:t-Region--scrollBody:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select l.display_value feedback_status, ',
'(select count(*) from apex_team_feedback f where f.application_id = :APP_ID and f.feedback_status = l.return_value) feedback_count ',
'from apex_application_lov_entries l',
'where l.application_id = :APP_ID',
'and l.list_of_values_name = ''FEEDBACK_STATUS''',
'order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2100515124465797522
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(154889688483495434320)
,p_query_column_id=>1
,p_column_alias=>'FEEDBACK_STATUS'
,p_column_display_sequence=>1
,p_column_heading=>'Feedback Status'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(154889688735163434320)
,p_query_column_id=>2
,p_column_alias=>'FEEDBACK_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'Feedback Count'
,p_column_format=>'999G999G999G999G999G999G990'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889690694392434323)
,p_plug_name=>'Feedback'
,p_parent_plug_id=>wwv_flow_imp.id(154889687369156434318)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_list_id=>wwv_flow_imp.id(154889678415738434307)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(154889681580321434310)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(154889681168440434310)
,p_button_name=>'ADD_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Add User'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10042:&APP_SESSION.::&DEBUG.:RP,10042::'
,p_icon_css_classes=>'fa-user-plus'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(154889686092586434316)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(154889681580321434310)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154889686505281434317)
,p_event_id=>wwv_flow_imp.id(154889686092586434316)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(154889682383505434311)
);
end;
/
prompt --application/pages/page_10010
begin
wwv_flow_imp_page.create_page(
 p_id=>10010
,p_name=>'Configuration Options'
,p_alias=>'CONFIGURATION-OPTIONS'
,p_page_mode=>'MODAL'
,p_step_title=>'Configuration Options'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(154889414672979433552)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(154889413070980433549)
,p_required_patch=>wwv_flow_imp.id(154889410735965433546)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Configuration settings allow you to make specific functionality either available (enabled) or unavailable (disabled) to end users.</p>',
'<p>If a specific function is not 100% ready, or needs to be temporarily removed, click <strong>Disabled</strong>. ',
'Once it should be made available, simply click <strong>Enabled</strong>.</p>',
'<p><em><strong>Note:</strong> Changes made here will not be reflected for individual end users currently running the application. Once the end user signs out and then signs back in the revised feature settings will be invoked.</em></p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889495155711434068)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889495320263434068)
,p_plug_name=>'Configuration Options'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    build_option_id     ID, ',
'    build_option_name   application_option,',
'    apex_item.hidden(1, build_option_id) ||',
'    apex_item.hidden(2, build_option_status) ||',
'    apex_item.switch ( ',
'         p_idx        => 3,',
'         p_value      => build_option_status,',
'         p_on_value   => ''Include'',',
'         p_on_label   => m.enabled,',
'         p_off_value  => ''Exclude'',',
'         p_off_label  => m.disabled,',
'         p_item_id    => ''BO_OPT_'' || rownum,',
'         p_item_label => ( case when build_option_status = ''Include'' then',
'                               apex_lang.message( ''APEX.FEATURE.CONFIG.IS_ENABLED'', apex_escape.html(build_option_name) )',
'                           when build_option_status = ''Exclude'' then',
'                               apex_lang.message( ''APEX.FEATURE.CONFIG.IS_DISABLED'', apex_escape.html(build_option_name) )',
'                           end )) "STATUS",',
'    component_comment   description,',
'    last_updated_on        updated,',
'    lower(last_updated_by) updated_by,',
'    build_option_status current_status',
'  from apex_application_build_options,',
'  (select apex_lang.message(''APEX.FEATURE.CONFIG.ENABLED'') enabled, apex_lang.message(''APEX.FEATURE.CONFIG.DISABLED'') disabled from dual) m',
' where application_id = :APP_ID ',
' and (feature_identifier not in ( ''APPLICATION_ACCESS_CONTROL'',''APPLICATION_CONFIGURATION'') or feature_identifier is null)'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Configuration Options'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(154889495912296434069)
,p_name=>'Configuration Options'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'SASINIAMARATHUNGA2005@GMAIL.COM'
,p_internal_uid=>154889495912296434069
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889496602841434071)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889497059368434072)
,p_db_column_name=>'APPLICATION_OPTION'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Feature'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889497465828434073)
,p_db_column_name=>'STATUS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Status'
,p_allow_filtering=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889497816447434073)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889498299151434074)
,p_db_column_name=>'UPDATED'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889498627742434074)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889499048016434075)
,p_db_column_name=>'CURRENT_STATUS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Current Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(154889501806059434078)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1548895019'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'APPLICATION_OPTION:STATUS:DESCRIPTION:UPDATED:UPDATED_BY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(154889503432110434080)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(154889495155711434068)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(154889502766234434079)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(154889495320263434068)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(154889504263420434080)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(154889503850845434080)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for i in 1..apex_application.g_f01.count loop',
'    for c1 in ( select application_id, build_option_name, build_option_status',
'                from apex_application_build_options',
'                where apex_application.g_f01(i) = build_option_id',
'                   and application_Id = :APP_ID) loop',
'        if c1.build_option_status != apex_application.g_f03(i) then',
'            apex_util.set_build_option_status(  p_application_id => :APP_ID,',
'                                                p_id => apex_application.g_f01(i),',
'                                                p_build_status => upper(apex_application.g_f03(i)) );',
'        end if;',
'    end loop;',
'end loop;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Configuration Options updated. '
,p_internal_uid=>154889503850845434080
);
end;
/
prompt --application/pages/page_10020
begin
wwv_flow_imp_page.create_page(
 p_id=>10020
,p_name=>'Application Appearance'
,p_alias=>'APPLICATION-APPEARANCE'
,p_page_mode=>'MODAL'
,p_step_title=>'Application Appearance'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(154889414672979433552)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(154889413070980433549)
,p_required_patch=>wwv_flow_imp.id(154889411150683433546)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Select the default color scheme used to display the application.</p>',
'<p>If <strong>Allow End Users to choose Theme Style</strong> is checked, then each end user can select from the available theme styles by clicking the <em>Customize</em> link in the bottom left corner of the Home page.</p>'))
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889504567200434081)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889504653182434081)
,p_plug_name=>'Configure Appearance'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'BELOW'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(154889507169136434083)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(154889504567200434081)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(154889505770495434082)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(154889504567200434081)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(154889507591804434084)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154889507827919434084)
,p_name=>'P10020_DESKTOP_THEME_STYLE_ID'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(154889504653182434081)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Desktop Theme Style'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.theme_style_id',
'from apex_application_theme_styles s,',
'    apex_application_themes t',
'where s.application_id = t.application_id',
'    and s.theme_number = t.theme_number',
'    and s.application_id = :app_id',
'    and s.is_current = ''Yes'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DESKTOP THEME STYLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.name d,',
'       s.theme_style_id r',
'  from apex_application_theme_styles s,',
'       apex_application_themes t',
' where s.application_id = :app_id',
'   and t.application_id = s.application_id',
'   and t.theme_number   = s.theme_number',
'   and t.is_current     = ''Yes''',
' order by 1'))
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from apex_application_theme_styles s,',
'       apex_application_themes t',
' where s.application_id = t.application_id',
'   and s.theme_number   = t.theme_number',
'   and s.application_id = :app_id'))
,p_display_when_type=>'EXISTS'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_restricted_characters=>'WEB_SAFE'
,p_inline_help_text=>'The default Theme Style applies to all users.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154889508559076434086)
,p_name=>'P10020_END_USER_STYLE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(154889504653182434081)
,p_use_cache_before_default=>'NO'
,p_prompt=>'End User Theme Preference'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.theme_style_by_user_pref',
'  from apex_applications a',
' where a.application_id  = :app_id'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'USER_THEME_PREFERENCE'
,p_lov=>'.'||wwv_flow_imp.id(154889508680756434086)||'.'
,p_grid_label_column_span=>0
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>'If checked, end users may choose their own Theme Style using the Customize link.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(154889505835513434082)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(154889505770495434082)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154889506594056434083)
,p_event_id=>wwv_flow_imp.id(154889505835513434082)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(154889509713885434087)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Theme Style'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10020_DESKTOP_THEME_STYLE_ID is not null then',
'    for l_theme in (select theme_number',
'                      from apex_application_themes',
'                     where application_id = :app_id',
'                       and is_current     = ''Yes'')',
'    loop',
'        apex_util.set_current_theme_style (',
'            p_theme_number   => l_theme.theme_number,',
'            p_theme_style_id => :P10020_DESKTOP_THEME_STYLE_ID',
'            );',
'    end loop;',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Application Appearance Settings Saved.'
,p_internal_uid=>154889509713885434087
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(154889510177928434088)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save End User Style Preference'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_enabled boolean := case when :P10020_END_USER_STYLE = ''Yes'' then true else false end;',
'begin',
'    for l_theme in ( select theme_number',
'                       from apex_applications',
'                      where application_id  = :APP_ID )',
'    loop',
'        if l_enabled then',
'            apex_theme.enable_user_style (',
'                p_application_id => :APP_ID,',
'                p_theme_number   => l_theme.theme_number );',
'        else',
'            apex_theme.disable_user_style (',
'                p_application_id => :APP_ID,',
'                p_theme_number   => l_theme.theme_number );',
'            apex_theme.clear_all_users_style(:APP_ID);',
'        end if;',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Application Appearance Settings Saved.'
,p_internal_uid=>154889510177928434088
);
end;
/
prompt --application/pages/page_10030
begin
wwv_flow_imp_page.create_page(
 p_id=>10030
,p_name=>'Activity Dashboard'
,p_alias=>'ACTIVITY-DASHBOARD'
,p_page_mode=>'MODAL'
,p_step_title=>'Activity Dashboard'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(154889414672979433552)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_required_role=>wwv_flow_imp.id(154889413070980433549)
,p_required_patch=>wwv_flow_imp.id(154889410402932433546)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889510420085434088)
,p_plug_name=>'Hourly Page Events'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(154889510520819434088)
,p_region_id=>wwv_flow_imp.id(154889510420085434088)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_time_axis_type=>'enabled'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(154889512664742434089)
,p_chart_id=>wwv_flow_imp.id(154889510520819434088)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with nw as (',
'    -- APEX_ACTIVITY_LOG uses dates; convert system time to local time zone.',
'    select from_tz( cast( sysdate as timestamp ), to_char( systimestamp, ''TZR'' ) ) at local as tm from dual',
'),',
'window as (',
'    select',
'         trunc(nw.tm - ((level-1)/24),''HH'') start_tm,',
'         trunc(nw.tm - ((level-2)/24),''HH'') end_tm,',
'         trunc(sysdate-((level-1)/24),''HH'') log_start_tm,',
'         trunc(sysdate-((level-2)/24),''HH'') log_end_tm',
'    from nw',
'    connect by level <= round( 24 * ( 1/24/60/60 * nvl(:P10030_TIMEFRAME,1) ) )',
')',
'select w.start_tm log_time,',
'       ( select count(*)',
'           from apex_activity_log l',
'          where l.flow_id = :app_id',
'            and l.time_stamp between w.log_start_tm and w.log_end_tm ) as value',
'from window w',
'order by 1'))
,p_max_row_count=>350
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LOG_TIME'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(154889513214023434090)
,p_chart_id=>wwv_flow_imp.id(154889510520819434088)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(154889513860809434090)
,p_chart_id=>wwv_flow_imp.id(154889510520819434088)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_type=>'datetime-short'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889510694526434088)
,p_plug_name=>'Most Active Pages'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(154889510765894434088)
,p_region_id=>wwv_flow_imp.id(154889510694526434088)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(154889517684508434094)
,p_chart_id=>wwv_flow_imp.id(154889510765894434088)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select x.step_id||''. ''||(select page_name from apex_application_pages p where p.application_id = :app_id and page_id = x.step_id) label, ',
'        value',
'from ( select step_id,',
'              count(*) as value',
'         from apex_activity_log',
'        where flow_id = :app_id',
'          and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'          and step_id is not null',
'        group by step_id',
'        order by 2 desc',
'     ) x'))
,p_max_row_count=>10
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(154889518248343434095)
,p_chart_id=>wwv_flow_imp.id(154889510765894434088)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(154889518869069434096)
,p_chart_id=>wwv_flow_imp.id(154889510765894434088)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889510871669434088)
,p_plug_name=>'Top Users'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(154889510958937434088)
,p_region_id=>wwv_flow_imp.id(154889510871669434088)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(154889515110470434092)
,p_chart_id=>wwv_flow_imp.id(154889510958937434088)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl( userid_lc, apex_lang.message(''APEX.FEATURE.TOP_USERS.USERNAME.NOT_IDENTIFIED'') ) as label,',
'       count(*) as value',
'from apex_activity_log',
'where flow_id = :app_id',
'and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'group by nvl( userid_lc, apex_lang.message(''APEX.FEATURE.TOP_USERS.USERNAME.NOT_IDENTIFIED'') )',
'order by 2 desc'))
,p_max_row_count=>10
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(154889515785607434093)
,p_chart_id=>wwv_flow_imp.id(154889510958937434088)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(154889516368621434093)
,p_chart_id=>wwv_flow_imp.id(154889510958937434088)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(154889511095809434088)
,p_name=>'Recent Errors'
,p_template=>4072358936313175081
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h240:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sqlerrm    label,',
'       time_stamp value',
'  from apex_activity_log',
' where flow_id    = :app_id',
'   and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'   and sqlerrm    is not null',
' order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_row_count_max=>500
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(154889519930583434098)
,p_query_column_id=>1
,p_column_alias=>'LABEL'
,p_column_display_sequence=>1
,p_column_heading=>'Label'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(154889520345477434098)
,p_query_column_id=>2
,p_column_alias=>'VALUE'
,p_column_display_sequence=>2
,p_column_heading=>'Value'
,p_column_format=>'SINCE'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(154889511140646434088)
,p_name=>'Latest Activity'
,p_template=>4072358936313175081
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h240:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select userid_lc       as username,',
'       max(time_stamp) as last_activity',
'  from apex_activity_log',
' where flow_id     = :app_id',
'   and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'   and userid_lc  is not null',
' group by userid_lc',
' order by 2 desc'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No activities found'
,p_query_row_count_max=>500
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(154889523100166434102)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Username'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(154889523529961434102)
,p_query_column_id=>2
,p_column_alias=>'LAST_ACTIVITY'
,p_column_display_sequence=>2
,p_column_heading=>'Last Activity'
,p_column_format=>'SINCE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889511253215434088)
,p_plug_name=>'Filters'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(154889525807228434105)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(154889510420085434088)
,p_button_name=>'VIEW_ACTIVITY_BY_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10031:&APP_SESSION.::&DEBUG.:RP,10031::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(154889526286159434105)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(154889510694526434088)
,p_button_name=>'VIEW_ACTIVITY_DETAILS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10034:&APP_SESSION.::&DEBUG.:RP,10034::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(154889526653126434105)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(154889510871669434088)
,p_button_name=>'VIEW_ACTIVITY_BY_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10031:&APP_SESSION.::&DEBUG.:RP,10031::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(154889527062510434106)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(154889511095809434088)
,p_button_name=>'VIEW_RECENT_ERRORS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10032:&APP_SESSION.::&DEBUG.:RP,10032::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154889511372640434088)
,p_name=>'P10030_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(154889511253215434088)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(154889511408944434088)
,p_name=>'Change Filters'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10030_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154889528603624434108)
,p_event_id=>wwv_flow_imp.id(154889511408944434088)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(154889510420085434088)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154889529290503434108)
,p_event_id=>wwv_flow_imp.id(154889511408944434088)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(154889510871669434088)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154889529720384434109)
,p_event_id=>wwv_flow_imp.id(154889511408944434088)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(154889510694526434088)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154889530208506434109)
,p_event_id=>wwv_flow_imp.id(154889511408944434088)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(154889511095809434088)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154889530716242434109)
,p_event_id=>wwv_flow_imp.id(154889511408944434088)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(154889511140646434088)
);
end;
/
prompt --application/pages/page_10031
begin
wwv_flow_imp_page.create_page(
 p_id=>10031
,p_name=>'Top Users'
,p_alias=>'TOP-USERS'
,p_page_mode=>'MODAL'
,p_step_title=>'Top Users'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(154889414672979433552)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.hour-graph { display: table; width: 100%; }',
'span.hour { display: table-cell; padding: 0; font-size: 11px; text-align: center; min-width: 32px; }',
'span.hour-label { opacity: 0.5; }',
'span.hour-value { display: block; }',
'span.hour { background-color: var(--ut-palette-success); color:  var(--ut-palette-success-contrast); }',
'span.hour.is-null { background-color: var(--ut-component-highlight-background-color); color: var(--ut-component-text-default-color); }',
'span.hour.is-over1k { background-color: var(--ut-palette-primary); color:  var(--ut-palette-primary-contrast); }'))
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(154889413070980433549)
,p_required_patch=>wwv_flow_imp.id(154889410402932433546)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use this report and chart to see the users with the most page views for the specified timeframe.</p>',
'<p>Select the reporting timeframe (Default = 1 day) and choose between the report and chart icons at the top of the page.</p>',
'<p>For the interactive report, use the search field, or select the <strong>User</strong> column heading, to select a specific user. You can perform numerous functions by clicking the <strong>Actions</strong> button, such as columns displayed / hidden'
||', rows per page, filter, and so forth. Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889564051026434150)
,p_plug_name=>'Top Users'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select the_user,',
'    ''<div class="hour-graph">''||',
'        ''<span class="hour''|| case when h00 = 0 then '' is-null'' when h00 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 0</span> <span class="hour-value">''|| ',
'        case when h00 > 999 then to_char((h00/1000),''99999999D0'') ||''k'' else to_char(h00) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h01 = 0 then '' is-null'' when h01 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 1</span> <span class="hour-value">''|| ',
'        case when h01 > 999 then to_char((h01/1000),''99999999D0'') ||''k'' else to_char(h01) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h02 = 0 then '' is-null'' when h02 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 2</span> <span class="hour-value">''|| ',
'        case when h02 > 999 then to_char((h02/1000),''99999999D0'') ||''k'' else to_char(h02) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h03 = 0 then '' is-null'' when h03 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 3</span> <span class="hour-value">''|| ',
'        case when h03 > 999 then to_char((h03/1000),''99999999D0'') ||''k'' else to_char(h03) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h04 = 0 then '' is-null'' when h04 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 4</span> <span class="hour-value">''|| ',
'        case when h04 > 999 then to_char((h04/1000),''99999999D0'') ||''k'' else to_char(h04) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h05 = 0 then '' is-null'' when h05 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 5</span> <span class="hour-value">''|| ',
'        case when h05 > 999 then to_char((h05/1000),''99999999D0'') ||''k'' else to_char(h05) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h06 = 0 then '' is-null'' when h06 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 6</span> <span class="hour-value">''|| ',
'        case when h06 > 999 then to_char((h06/1000),''99999999D0'') ||''k'' else to_char(h06) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h07 = 0 then '' is-null'' when h07 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 7</span> <span class="hour-value">''|| ',
'        case when h07 > 999 then to_char((h07/1000),''99999999D0'') ||''k'' else to_char(h07) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h08 = 0 then '' is-null'' when h08 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 8</span> <span class="hour-value">''|| ',
'        case when h08 > 999 then to_char((h08/1000),''99999999D0'') ||''k'' else to_char(h08) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h09 = 0 then '' is-null'' when h09 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 9</span> <span class="hour-value">''|| ',
'        case when h09 > 999 then to_char((h09/1000),''99999999D0'') ||''k'' else to_char(h09) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h10 = 0 then '' is-null'' when h10 > 999 then '' is-over1k'' end ||''"><span class="hour-label">10</span> <span class="hour-value">''|| ',
'        case when h10 > 999 then to_char((h10/1000),''99999999D0'') ||''k'' else to_char(h10) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h11 = 0 then '' is-null'' when h11 > 999 then '' is-over1k'' end ||''"><span class="hour-label">11</span> <span class="hour-value">''|| ',
'        case when h11 > 999 then to_char((h11/1000),''99999999D0'') ||''k'' else to_char(h11) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h12 = 0 then '' is-null'' when h12 > 999 then '' is-over1k'' end ||''"><span class="hour-label">12</span> <span class="hour-value">''|| ',
'        case when h12 > 999 then to_char((h12/1000),''99999999D0'') ||''k'' else to_char(h12) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h13 = 0 then '' is-null'' when h13 > 999 then '' is-over1k'' end ||''"><span class="hour-label">13</span> <span class="hour-value">''|| ',
'        case when h13 > 999 then to_char((h13/1000),''99999999D0'') ||''k'' else to_char(h13) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h14 = 0 then '' is-null'' when h14 > 999 then '' is-over1k'' end ||''"><span class="hour-label">14</span> <span class="hour-value">''|| ',
'        case when h14 > 999 then to_char((h14/1000),''99999999D0'') ||''k'' else to_char(h14) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h15 = 0 then '' is-null'' when h15 > 999 then '' is-over1k'' end ||''"><span class="hour-label">15</span> <span class="hour-value">''|| ',
'        case when h15 > 999 then to_char((h15/1000),''99999999D0'') ||''k'' else to_char(h15) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h16 = 0 then '' is-null'' when h16 > 999 then '' is-over1k'' end ||''"><span class="hour-label">16</span> <span class="hour-value">''|| ',
'        case when h16 > 999 then to_char((h16/1000),''99999999D0'') ||''k'' else to_char(h16) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h17 = 0 then '' is-null'' when h17 > 999 then '' is-over1k'' end ||''"><span class="hour-label">17</span> <span class="hour-value">''|| ',
'        case when h17 > 999 then to_char((h17/1000),''99999999D0'') ||''k'' else to_char(h17) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h18 = 0 then '' is-null'' when h18 > 999 then '' is-over1k'' end ||''"><span class="hour-label">18</span> <span class="hour-value">''|| ',
'        case when h18 > 999 then to_char((h18/1000),''99999999D0'') ||''k'' else to_char(h18) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h19 = 0 then '' is-null'' when h19 > 999 then '' is-over1k'' end ||''"><span class="hour-label">19</span> <span class="hour-value">''|| ',
'        case when h19 > 999 then to_char((h19/1000),''99999999D0'') ||''k'' else to_char(h19) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h20 = 0 then '' is-null'' when h20 > 999 then '' is-over1k'' end ||''"><span class="hour-label">20</span> <span class="hour-value">''|| ',
'        case when h20 > 999 then to_char((h20/1000),''99999999D0'') ||''k'' else to_char(h20) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h21 = 0 then '' is-null'' when h21 > 999 then '' is-over1k'' end ||''"><span class="hour-label">21</span> <span class="hour-value">''|| ',
'        case when h21 > 999 then to_char((h21/1000),''99999999D0'') ||''k'' else to_char(h21) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h22 = 0 then '' is-null'' when h22 > 999 then '' is-over1k'' end ||''"><span class="hour-label">22</span> <span class="hour-value">''|| ',
'        case when h22 > 999 then to_char((h22/1000),''99999999D0'') ||''k'' else to_char(h22) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h23 = 0 then '' is-null'' when h23 > 999 then '' is-over1k'' end ||''"><span class="hour-label">23</span> <span class="hour-value">''|| ',
'        case when h23 > 999 then to_char((h23/1000),''99999999D0'') ||''k'' else to_char(h23) end ||''</span></span>''||',
'        ''</div>'' hours,',
'        page_events,',
'    median_elapsed,',
'    rows_fetched,',
'    ir_searches,',
'    errors,',
'    most_recent',
'    from (  ',
'    select userid_lc                    as the_user,',
'        count(*)                        as page_events,',
'        median(elap)                    as median_elapsed,',
'        sum(num_rows)                   as rows_fetched,',
'        sum(decode(ir_search,null,0,1)) as ir_searches,',
'        sum(decode(sqlerrm,null,0,1))   as errors,',
'        max(time_stamp)                 as most_recent,',
'        sum(decode(to_char(time_stamp,''HH24''),0,1,0)) h00,',
'        sum(decode(to_char(time_stamp,''HH24''),1,1,0)) h01,',
'        sum(decode(to_char(time_stamp,''HH24''),2,1,0)) h02,',
'        sum(decode(to_char(time_stamp,''HH24''),3,1,0)) h03,',
'        sum(decode(to_char(time_stamp,''HH24''),4,1,0)) h04,',
'        sum(decode(to_char(time_stamp,''HH24''),5,1,0)) h05,',
'        sum(decode(to_char(time_stamp,''HH24''),6,1,0)) h06,',
'        sum(decode(to_char(time_stamp,''HH24''),7,1,0)) h07,',
'        sum(decode(to_char(time_stamp,''HH24''),8,1,0)) h08,',
'        sum(decode(to_char(time_stamp,''HH24''),9,1,0)) h09,',
'        sum(decode(to_char(time_stamp,''HH24''),10,1,0)) h10,',
'        sum(decode(to_char(time_stamp,''HH24''),11,1,0)) h11,',
'        sum(decode(to_char(time_stamp,''HH24''),12,1,0)) h12,',
'        sum(decode(to_char(time_stamp,''HH24''),13,1,0)) h13,',
'        sum(decode(to_char(time_stamp,''HH24''),14,1,0)) h14,',
'        sum(decode(to_char(time_stamp,''HH24''),15,1,0)) h15,',
'        sum(decode(to_char(time_stamp,''HH24''),16,1,0)) h16,',
'        sum(decode(to_char(time_stamp,''HH24''),17,1,0)) h17,',
'        sum(decode(to_char(time_stamp,''HH24''),18,1,0)) h18,',
'        sum(decode(to_char(time_stamp,''HH24''),19,1,0)) h19,',
'        sum(decode(to_char(time_stamp,''HH24''),20,1,0)) h20,',
'        sum(decode(to_char(time_stamp,''HH24''),21,1,0)) h21,',
'        sum(decode(to_char(time_stamp,''HH24''),22,1,0)) h22,',
'        sum(decode(to_char(time_stamp,''HH24''),23,1,0)) h23',
'    from apex_activity_log l',
'    where flow_id = :APP_ID',
'        and time_stamp >= sysdate - ( 1/24/60/60 * :P10031_TIMEFRAME )',
'        and userid is not null',
'    group by userid_lc) x'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P10031_TIMEFRAME'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P10031_VIEW_AS'
,p_plug_display_when_cond2=>'REPORT'
,p_prn_page_header=>'Top Users'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(154889565254041434150)
,p_name=>'Top Users'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'SASINIAMARATHUNGA2005@GMAIL.COM'
,p_internal_uid=>154889565254041434150
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889565960953434155)
,p_db_column_name=>'THE_USER'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889566312302434156)
,p_db_column_name=>'HOURS'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Activity by Hour'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889566758672434158)
,p_db_column_name=>'PAGE_EVENTS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Page Events'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889567130881434159)
,p_db_column_name=>'MEDIAN_ELAPSED'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Median Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D0000'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889567544048434160)
,p_db_column_name=>'ROWS_FETCHED'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Rows Fetched'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889567948768434161)
,p_db_column_name=>'IR_SEARCHES'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'IR Search'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889568356559434162)
,p_db_column_name=>'ERRORS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Errors'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889568778244434163)
,p_db_column_name=>'MOST_RECENT'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Most_Recent'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(154889571845446434184)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1548895719'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'THE_USER:HOURS:PAGE_EVENTS'
,p_sort_column_1=>'PAGE_EVENTS'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'MOST_RECENT'
,p_sort_direction_2=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889564130376434150)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889564325580434150)
,p_plug_name=>'Top Users Chart'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P10031_VIEW_AS'
,p_plug_display_when_cond2=>'CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(154889564440054434150)
,p_region_id=>wwv_flow_imp.id(154889564325580434150)
,p_chart_type=>'donut'
,p_height=>'600'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>.02
,p_pie_selection_effect=>'highlight'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ){ ',
'',
'    this.pieSliceLabel = function(dataContext) {',
'        var series_name,',
'            percent = Math.round(dataContext.value/dataContext.totalValue*100);',
'        ',
'        if ( dataContext.seriesData ) {',
'            series_name = dataContext.seriesData.name;',
'        } else {',
'            series_name = ''Other'';',
'        }',
'        return series_name + " " + percent + "% ( " + dataContext.value + " )";',
'    }',
'    ',
'    // Set chart initialization options ',
'    options.dataLabel = pieSliceLabel; ',
'    return options; ',
'}'))
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(154889575544637434192)
,p_chart_id=>wwv_flow_imp.id(154889564440054434150)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select userid_lc as userid,',
'       count(*) as page_views',
'  from apex_activity_log',
' where flow_id     = :app_id',
'   and time_stamp >= sysdate - ( 1/24/60/60 * :P10031_TIMEFRAME )',
'   and userid     is not null',
' group by userid_lc',
' order by 2'))
,p_ajax_items_to_submit=>'P10031_TIMEFRAME'
,p_items_value_column_name=>'PAGE_VIEWS'
,p_items_label_column_name=>'USERID'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'LABEL'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(154889572884664434188)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(154889564051026434150)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154889564568412434150)
,p_name=>'P10031_VIEW_AS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(154889564130376434150)
,p_prompt=>'View As'
,p_source=>'REPORT'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'VIEW_AS_REPORT_CHART'
,p_lov=>'.'||wwv_flow_imp.id(154889576037120434193)||'.'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'hide_radio_buttons', 'N',
  'number_of_columns', '2',
  'page_action_on_selection', 'SUBMIT')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154889564766476434150)
,p_name=>'P10031_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(154889564130376434150)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(154889564258727434150)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10031_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154889574119289434190)
,p_event_id=>wwv_flow_imp.id(154889564258727434150)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(154889564051026434150)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154889577537671434195)
,p_event_id=>wwv_flow_imp.id(154889564258727434150)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(154889564051026434150)
);
end;
/
prompt --application/pages/page_10032
begin
wwv_flow_imp_page.create_page(
 p_id=>10032
,p_name=>'Application Error Log'
,p_alias=>'APPLICATION-ERROR-LOG'
,p_page_mode=>'MODAL'
,p_step_title=>'Application Error Log'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(154889414672979433552)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(154889413070980433549)
,p_required_patch=>wwv_flow_imp.id(154889410402932433546)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of all unexpected errors logged by this application.</p>',
'<p>Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back t'
||'o the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889557093799434142)
,p_plug_name=>'Application Error Log'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select step_id,',
'       userid,',
'       time_stamp err_time,',
'       sqlerrm,',
'       sqlerrm_component_type,',
'       sqlerrm_component_name',
'  from apex_activity_log',
' where flow_id = :app_id',
'   and sqlerrm is not null'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Application Error Log'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(154889557697430434143)
,p_name=>'Application Error Log'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'SASINIAMARATHUNGA2005@GMAIL.COM'
,p_internal_uid=>154889557697430434143
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889558373801434144)
,p_db_column_name=>'STEP_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889558750528434145)
,p_db_column_name=>'USERID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889559160739434145)
,p_db_column_name=>'ERR_TIME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Err Time'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889559568452434145)
,p_db_column_name=>'SQLERRM'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Error'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889559952139434146)
,p_db_column_name=>'SQLERRM_COMPONENT_TYPE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Context'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889560307002434146)
,p_db_column_name=>'SQLERRM_COMPONENT_NAME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Component Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(154889562850398434149)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1548895629'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STEP_ID:USERID:ERR_TIME:SQLERRM:SQLERRM_COMPONENT_TYPE:SQLERRM_COMPONENT_NAME:'
,p_sort_column_1=>'ERROR_TIME'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(154889563723689434150)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(154889557093799434142)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
end;
/
prompt --application/pages/page_10033
begin
wwv_flow_imp_page.create_page(
 p_id=>10033
,p_name=>'Page Performance'
,p_alias=>'PAGE-PERFORMANCE'
,p_page_mode=>'MODAL'
,p_step_title=>'Page Performance'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(154889414672979433552)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(154889413070980433549)
,p_required_patch=>wwv_flow_imp.id(154889410402932433546)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the page performance and popularity. The report is ordered by <strong>Weighted Performance</strong> which is calculated by multiplying the Median Elapsed time and number of Page Views.</p>',
'<p>Select the reporting timeframe (Default = 1 day) at the top of the page as necessary.<br>',
'Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back to t'
||'he default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889542829479434124)
,p_plug_name=>'Page Performance'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select step_id page,',
'    (   select page_name',
'        from apex_application_pages p',
'        where p.page_id = l.step_id',
'            and p.application_id = :app_id ) page_name,',
'    median(elap)                   median_elapsed,',
'    count(*) * median(elap)        weighted_performance,',
'    sum(decode(sqlerrm,null,0,1))  errors,',
'    count(distinct userid)         distinct_users,',
'    count(distinct session_id)     application_sessions,',
'    count(*)                       page_views,',
'    max(elap)                      max_elapsed,',
'    sum(nvl(num_rows,0))           total_rows,',
'    sum(decode(page_mode,''P'',1,0)) partial_page_views,',
'    sum(decode(page_mode,''D'',1,0)) full_page_views,',
'    min(elap)                      min_elapsed,',
'    avg(elap)                      avg_elapsed',
'from apex_activity_log l',
'where flow_id = :app_id',
'    and time_stamp >= sysdate - ( 1/24/60/60 * :P10033_TIMEFRAME )',
'    and userid is not null',
'group by step_id'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P10033_TIMEFRAME'
,p_prn_page_header=>'Page Performance'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(154889543489452434124)
,p_name=>'Page Performance'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'SASINIAMARATHUNGA2005@GMAIL.COM'
,p_internal_uid=>154889543489452434124
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889544261602434126)
,p_db_column_name=>'PAGE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889544665721434126)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Page Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889545058729434127)
,p_db_column_name=>'MEDIAN_ELAPSED'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Median Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889545497029434127)
,p_db_column_name=>'WEIGHTED_PERFORMANCE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Weighted Performance'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D99'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889545893346434128)
,p_db_column_name=>'ERRORS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Errors'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889546207775434128)
,p_db_column_name=>'DISTINCT_USERS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Distinct Users'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889546604621434129)
,p_db_column_name=>'APPLICATION_SESSIONS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Application Sessions'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889547037616434129)
,p_db_column_name=>'PAGE_VIEWS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Page Views'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889547448293434129)
,p_db_column_name=>'MAX_ELAPSED'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Max Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889547857997434130)
,p_db_column_name=>'TOTAL_ROWS'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Total Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889548268584434131)
,p_db_column_name=>'PARTIAL_PAGE_VIEWS'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Partial Page Views'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889548609520434131)
,p_db_column_name=>'FULL_PAGE_VIEWS'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Full Page Views'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889549015680434132)
,p_db_column_name=>'MIN_ELAPSED'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Min Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889549494767434132)
,p_db_column_name=>'AVG_ELAPSED'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Avg Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(154889554397349434138)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1548895544'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE:PAGE_NAME:MEDIAN_ELAPSED:WEIGHTED_PERFORMANCE:ERRORS:DISTINCT_USERS:APPLICATION_SESSIONS:PAGE_VIEWS'
,p_sort_column_1=>'WEIGHTED_PERFORMANCE'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'PAGE_VIEWS'
,p_sort_direction_2=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889542925995434124)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(154889555282127434139)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(154889542829479434124)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154889542719173434124)
,p_name=>'P10033_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(154889542925995434124)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(154889543062395434124)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10033_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154889556556175434141)
,p_event_id=>wwv_flow_imp.id(154889543062395434124)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(154889542829479434124)
);
end;
/
prompt --application/pages/page_10034
begin
wwv_flow_imp_page.create_page(
 p_id=>10034
,p_name=>'Page Views'
,p_alias=>'PAGE-VIEWS'
,p_page_mode=>'MODAL'
,p_step_title=>'Page Views'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(154889414672979433552)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(154889413070980433549)
,p_required_patch=>wwv_flow_imp.id(154889410402932433546)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the most recent page views.</p>',
'<p>Select the reporting timeframe (Default = 1 day) at the top of the page as necessary.<br>',
'Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back to t'
||'he default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889531275466434110)
,p_plug_name=>'Page Views'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    step_id||''. ''||(select page_name',
'                    from apex_application_pages p',
'                    where p.page_id = l.step_id',
'                        and p.application_id = :APP_ID) page_name,',
'    userid_lc     user_id,',
'    time_stamp    timestamp,',
'    elap          elapsed,',
'    step_id       page,',
'    decode(page_mode,''P'',''Partial'',''D'',''Full'',page_mode) page_mode,',
'    component_name,',
'    num_rows,',
'    ir_search,',
'    sqlerrm  error',
'from apex_activity_log l',
'where flow_id = :app_id',
'    and time_stamp >= sysdate - ( 1/24/60/60 * :P10034_TIMEFRAME )',
'    and userid is not null',
'    and step_id is not null',
'order by time_stamp desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P10034_TIMEFRAME'
,p_prn_page_header=>'Page Views'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(154889531876158434110)
,p_name=>'Page Views'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'SASINIAMARATHUNGA2005@GMAIL.COM'
,p_internal_uid=>154889531876158434110
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889532597868434111)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Page Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889532910623434112)
,p_db_column_name=>'USER_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889533300687434113)
,p_db_column_name=>'TIMESTAMP'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Timestamp'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889533727890434113)
,p_db_column_name=>'ELAPSED'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D0000'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889534149586434113)
,p_db_column_name=>'PAGE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889534518856434114)
,p_db_column_name=>'PAGE_MODE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Mode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889535363621434115)
,p_db_column_name=>'COMPONENT_NAME'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Component Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889535719548434115)
,p_db_column_name=>'NUM_ROWS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Num Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889536107419434115)
,p_db_column_name=>'IR_SEARCH'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'IR Search'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889536542841434116)
,p_db_column_name=>'ERROR'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Error'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(154889540209679434120)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1548895403'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE_NAME:USER_ID:TIMESTAMP:ELAPSED:PAGE_MODE'
,p_sort_column_1=>'TIMESTAMP'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889531381540434110)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(154889541093941434121)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(154889531275466434110)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154889531178739434110)
,p_name=>'P10034_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(154889531381540434110)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(154889531453611434110)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10034_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154889542366835434123)
,p_event_id=>wwv_flow_imp.id(154889531453611434110)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(154889531275466434110)
);
end;
/
prompt --application/pages/page_10035
begin
wwv_flow_imp_page.create_page(
 p_id=>10035
,p_name=>'Automations Log'
,p_alias=>'AUTOMATIONS-LOG'
,p_page_mode=>'MODAL'
,p_step_title=>'Automations Log'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(154889414672979433552)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(154889413070980433549)
,p_required_patch=>wwv_flow_imp.id(154889410402932433546)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the automations log.</p>',
'<p>Review logged information about previous automation executions. The log contains start and end timestamps as well as details about processed rows (successful and with errors). Drill down into Messages to see individual messages for processed rows.'
||'</p>',
''))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889578064363434195)
,p_plug_name=>'Automations Log'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select l.id,',
'       l.start_timestamp,',
'       a.name automation_name,',
'       l.status,',
'       l.successful_row_count,',
'       l.error_row_count,',
'       (select count(1) from apex_automation_msg_log m where m.automation_log_id = l.id) msg_count,',
'       l.is_job,',
'       l.end_timestamp',
'  from apex_appl_automations a, apex_automation_log l',
' where a.automation_id = l.automation_id',
' and l.application_id = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Automations Log'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(154889578605571434195)
,p_name=>'Automations Log'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'SASINIAMARATHUNGA2005@GMAIL.COM'
,p_internal_uid=>154889578605571434195
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889579443072434197)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889579808443434198)
,p_db_column_name=>'START_TIMESTAMP'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Started'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889580262112434198)
,p_db_column_name=>'AUTOMATION_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Automation'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889580673813434199)
,p_db_column_name=>'STATUS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889581086067434199)
,p_db_column_name=>'SUCCESSFUL_ROW_COUNT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Successful Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889581457850434199)
,p_db_column_name=>'ERROR_ROW_COUNT'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Error Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889581877056434200)
,p_db_column_name=>'MSG_COUNT'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Message'
,p_column_link=>'f?p=&APP_ID.:10036:&APP_SESSION.::&DEBUG.:RP,10036:P10036_LOG_ID:#ID#'
,p_column_linktext=>'#MSG_COUNT#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889582249962434200)
,p_db_column_name=>'IS_JOB'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Scheduled'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889582692764434200)
,p_db_column_name=>'END_TIMESTAMP'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Ended'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(154889586064878434204)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1548895861'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'START_TIMESTAMP:AUTOMATION_NAME:STATUS:SUCCESSFUL_ROW_COUNT:ERROR_ROW_COUNT:MSG_COUNT'
,p_sort_column_1=>'START_TIMESTAMP'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(154889586986157434205)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(154889578064363434195)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
end;
/
prompt --application/pages/page_10036
begin
wwv_flow_imp_page.create_page(
 p_id=>10036
,p_name=>'Log Messages'
,p_alias=>'LOG-MESSAGES'
,p_page_mode=>'MODAL'
,p_step_title=>'Log Messages'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(154889414672979433552)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(154889413070980433549)
,p_required_patch=>wwv_flow_imp.id(154889410402932433546)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889587503221434206)
,p_plug_name=>'Automation Execution'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(154889589972472434209)
,p_name=>'Messages'
,p_template=>2100526641005906379
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select message_timestamp,',
'       message,',
'       message_type,',
'       pk_value',
'  from apex_automation_msg_log',
' where automation_log_id = :P10036_LOG_ID'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>50
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(154889590376751434210)
,p_query_column_id=>1
,p_column_alias=>'MESSAGE_TIMESTAMP'
,p_column_display_sequence=>1
,p_column_heading=>'Timestamp'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_default_sort_dir=>'desc'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(154889590784095434210)
,p_query_column_id=>2
,p_column_alias=>'MESSAGE'
,p_column_display_sequence=>2
,p_column_heading=>'Message'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(154889591172054434211)
,p_query_column_id=>3
,p_column_alias=>'MESSAGE_TYPE'
,p_column_display_sequence=>3
,p_column_heading=>'Message Type'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(154889591589600434211)
,p_query_column_id=>4
,p_column_alias=>'PK_VALUE'
,p_column_display_sequence=>4
,p_column_heading=>'Primary Key Value'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154889587913597434206)
,p_name=>'P10036_LOG_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(154889587503221434206)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154889588349406434207)
,p_name=>'P10036_AUTOMATION_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(154889587503221434206)
,p_prompt=>'Automation'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154889588729402434207)
,p_name=>'P10036_START_TIMESTAMP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(154889587503221434206)
,p_prompt=>'Started'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154889589179477434208)
,p_name=>'P10036_STATUS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(154889587503221434206)
,p_prompt=>'Status'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(154889589559238434208)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Log Detail'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select automation_name,',
'       start_timestamp,',
'       status',
'  into :P10036_AUTOMATION_NAME,',
'       :P10036_START_TIMESTAMP,',
'       :P10036_STATUS',
'  from apex_automation_log',
' where id = :P10036_LOG_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>154889589559238434208
);
end;
/
prompt --application/pages/page_10040
begin
wwv_flow_imp_page.create_page(
 p_id=>10040
,p_name=>'Configure Access Control'
,p_alias=>'CONFIGURE-ACCESS-CONTROL'
,p_page_mode=>'MODAL'
,p_step_title=>'Configure Access Control'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(154889414672979433552)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(154889413070980433549)
,p_required_patch=>wwv_flow_imp.id(154889410322679433546)
,p_dialog_resizable=>'Y'
,p_protection_level=>'U'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Select the appropriate choice for any authenticated users.<br> ',
'Selecting <strong>No</strong> makes the application more secure as only specified users can access the application. ',
'However, if your application has a large user community then maintaining users may be onerous, and you may prefer to choose <strong>Yes</strong> and only enter application Administrators, and possibly Contributors.<br>',
'If you select <strong>Yes</strong> then you must also select how users not included in the users list are treated.</p>',
'<p>Select between requiring email addresses and any alphanumeric value for Usernames.<br>',
'Generally, you should set this setting to <strong>E-mail Address</strong> if your application uses (or will be configured to use) a centralized authentication scheme such as Oracle Access Manager, or SSO.</p>',
'<p><em><strong>Note:</strong> This application supports the following 3 access levels: Reader, Contributor, and Administrator.',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create, edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>, in addition to Contributors capability, can also perform configuration of the application by accessing the Administration section of the application.</li>',
'</ul>',
'</em></p>'))
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889593747432434214)
,p_plug_name=>'Access Control Configuration'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889593856708434214)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(154889595014646434216)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(154889593856708434214)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(154889595350357434216)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(154889593856708434214)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(154889596730779434217)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154889597092647434218)
,p_name=>'P10040_ALLOW_OTHER_USERS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(154889593747432434214)
,p_prompt=>'Any authenticated user may access this application'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_app_setting.get_value( p_name => ''ACCESS_CONTROL_SCOPE'' ) = ''ACL_ONLY'' then',
'    return ''N'';',
'else',
'    return ''Y'';',
'end if;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_YES_NO'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>'Choose <strong>No</strong> if all users are defined in the access control list. Choose <strong>Yes</strong> if authenticated users not in the access control list may also use this application.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(154889595400894434216)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(154889595350357434216)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154889596130321434217)
,p_event_id=>wwv_flow_imp.id(154889595400894434216)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(154889597439413434218)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Access Control'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P10040_ALLOW_OTHER_USERS = ''Y'' then',
'        apex_app_setting.set_value (',
'            p_name  => ''ACCESS_CONTROL_SCOPE'',',
'            p_value => ''ALL_USERS'');',
'    else',
'        apex_app_setting.set_value (',
'            p_name  => ''ACCESS_CONTROL_SCOPE'',',
'            p_value => ''ACL_ONLY'');',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Access Control settings saved.'
,p_internal_uid=>154889597439413434218
);
end;
/
prompt --application/pages/page_10041
begin
wwv_flow_imp_page.create_page(
 p_id=>10041
,p_name=>'Manage User Access'
,p_alias=>'MANAGE-USER-ACCESS'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage User Access'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(154889414672979433552)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(154889413070980433549)
,p_required_patch=>wwv_flow_imp.id(154889410322679433546)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page shows a report of the application users and the access level granted.</p>',
'<p>Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features.<br>',
'Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>',
'<p>Click the edit icon (yellow pencil) to edit the user details and access level, or to delete the user.</p>',
'<p>Click <strong>Add User</strong>, at the top of the report, to add a new user and their access level.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889597841026434219)
,p_plug_name=>'Manage User Access'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'   user_name_lc USERNAME,',
'   role_names ACCESS_ROLE',
'from APEX_APPL_ACL_USERS',
'where APPLICATION_ID = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Manage User Access'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(154889598613255434219)
,p_name=>'Manage User Access'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:10042:&APP_SESSION.::&DEBUG.:RP:P10042_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'SASINIAMARATHUNGA2005@GMAIL.COM'
,p_internal_uid=>154889598613255434219
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889599248002434221)
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
 p_id=>wwv_flow_imp.id(154889599619493434221)
,p_db_column_name=>'USERNAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Username'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889600066068434222)
,p_db_column_name=>'ACCESS_ROLE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Roles'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(154889601619454434224)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1548896017'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'USERNAME:ACCESS_ROLE'
,p_sort_column_2=>'USERNAME'
,p_sort_direction_2=>'ASC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(154889602520385434225)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(154889597841026434219)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft:t-Button--gapRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(154889602995593434226)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(154889597841026434219)
,p_button_name=>'ADD_MULTIPLE_USERS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add Multiple Users'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10043:&APP_SESSION.::&DEBUG.:10043::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(154889603306256434226)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(154889597841026434219)
,p_button_name=>'ADD_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add User'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10042:&APP_SESSION.::&DEBUG.:10042::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(154889597963896434219)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(154889597841026434219)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154889603923212434226)
,p_event_id=>wwv_flow_imp.id(154889597963896434219)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(154889597841026434219)
);
end;
/
prompt --application/pages/page_10042
begin
wwv_flow_imp_page.create_page(
 p_id=>10042
,p_name=>'Manage User Access'
,p_alias=>'MANAGE-USER-ACCESS1'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage User Access'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(154889414672979433552)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(154889413070980433549)
,p_required_patch=>wwv_flow_imp.id(154889410322679433546)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use this form to enter users, their email address and set their access level. ',
'The settings defined under <em>Configure Access Control</em> will determine whether the username must be their email address or can be any alphanumeric entry.</p>',
'<p>This application supports the following 3 access levels: Reader, Contributor, and Administrator.</p>',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create, edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>, in addition to Contributors capability, can also perform configuration of the application by accessing the Administration section of the application.</li>',
'</ul>',
'<p>When editing an existing user you can lock their account which will prevent them from accessing the application.</p>',
'<p><em><strong>Note:</strong>   If using Oracle APEX accounts then users entered here must also be defined as end users by a Workspace Administrator, who can also set their password.</em></p>'))
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889604493363434227)
,p_plug_name=>'Form on Manage User Access'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'APEX_APPL_ACL_USERS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889604574372434227)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(154889607364025434230)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(154889604574372434227)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P10042_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(154889607795933434230)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(154889604574372434227)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add User'
,p_button_position=>'NEXT'
,p_button_condition=>'P10042_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(154889605585209434228)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(154889604574372434227)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(154889606968585434229)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(154889604574372434227)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'PREVIOUS'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P10042_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154889608028225434230)
,p_name=>'P10042_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(154889604493363434227)
,p_item_source_plug_id=>wwv_flow_imp.id(154889604493363434227)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154889608447339434231)
,p_name=>'P10042_APPLICATION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(154889604493363434227)
,p_item_source_plug_id=>wwv_flow_imp.id(154889604493363434227)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&APP_ID.'
,p_source=>'APPLICATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154889608863564434231)
,p_name=>'P10042_USER_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(154889604493363434227)
,p_item_source_plug_id=>wwv_flow_imp.id(154889604493363434227)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Username'
,p_source=>'USER_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
,p_read_only_when=>'P10042_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>1609122147107268652
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154889609282664434232)
,p_name=>'P10042_ROLE_IDS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(154889604493363434227)
,p_item_source_plug_id=>wwv_flow_imp.id(154889604493363434227)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Roles'
,p_source=>'ROLE_IDS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'ACCESS_ROLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_field_template=>1609122147107268652
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>When Access Control is enabled, Administrators have the ability to restrict access to certain application features for authenticated users. This application supports the following 3 roles: Reader, Contributor, and Administrator.<p>',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create,edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>,in addition to Contributors capability,can also perform configuration of the application.</li>',
'</ul>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(154889610544588434234)
,p_validation_name=>'Cannot remove yourself from administrator'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10042_USER_NAME = :APP_USER and',
'    apex_acl.is_role_removed_from_user (',
'        p_application_id => :APP_ID,',
'        p_user_name      => :APP_USER,',
'        p_role_static_id => ''ADMINISTRATOR'',',
'        p_role_ids       => apex_string.split_numbers(',
'                                p_str => case when :REQUEST = ''DELETE'' then',
'                                             null',
'                                         else',
'                                             :P10042_ROLE_IDS',
'                                         end,',
'                                p_sep => '':'') ) then',
'    return false;',
'else',
'    return true;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'You cannot remove administrator role from yourself.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(154889605605004434228)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(154889605585209434228)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154889606394021434229)
,p_event_id=>wwv_flow_imp.id(154889605605004434228)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(154889610805235434234)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_imp.id(154889604493363434227)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Manage User Access'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>154889610805235434234
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(154889611281421434235)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(154889604493363434227)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Manage User Access'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'N'
,p_attribute_08=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>154889611281421434235
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(154889611693190434235)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>154889611693190434235
);
end;
/
prompt --application/pages/page_10043
begin
wwv_flow_imp_page.create_page(
 p_id=>10043
,p_name=>'Add Multiple Users - Step 1'
,p_alias=>'ADD-MULTIPLE-USERS-STEP-1'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Multiple Users'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(154889414672979433552)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(154889413070980433549)
,p_required_patch=>wwv_flow_imp.id(154889410322679433546)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889612064404434235)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889612164083434235)
,p_plug_name=>'Wizard Container'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayCurrentLabelOnly'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(154889612209887434235)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(154889612064404434235)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(154889614283153434237)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(154889612064404434235)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(154889615590143434238)
,p_branch_action=>'f?p=&APP_ID.:10044:&APP_SESSION.::&DEBUG.:RP,10044::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(154889612209887434235)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154889615931970434239)
,p_name=>'P10043_ROLE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(154889612164083434235)
,p_prompt=>'Roles'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'ACCESS_ROLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '3')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154889616389454434240)
,p_name=>'P10043_PRELIM_USERS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(154889612164083434235)
,p_prompt=>'Usernames'
,p_placeholder=>'Enter usernames here'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_inline_help_text=>'Enter usernames separated by commas, semicolons, or whitespace. Existing or duplicate usernames will automatically be ignored.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154889616723250434240)
,p_name=>'P10043_USERNAME_FORMAT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(154889612164083434235)
,p_prompt=>'Username Format'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'EMAIL_USERNAME_FORMAT'
,p_lov=>'.'||wwv_flow_imp.id(154889616873284434240)||'.'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(154889614309426434237)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(154889614283153434237)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154889615054401434238)
,p_event_id=>wwv_flow_imp.id(154889614309426434237)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(154889617847718434241)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Collections'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_line      varchar2(32767);',
'    l_emails    apex_t_varchar2;',
'    l_username  varchar2(4000);',
'    l_at        number;',
'    l_dot       number;',
'    l_valid     boolean := true;',
'    l_domain    varchar2(4000);',
'begin',
'    -- create collections',
'    apex_collection.create_or_truncate_collection(''ACL_BULK_USER_INVALID'');',
'    apex_collection.create_or_truncate_collection(''ACL_BULK_USER_VALID'');',
'',
'    -- replace delimiting characters with commas',
'    l_line := :P10043_PRELIM_USERS;',
'    l_line := replace(l_line, chr(10), '' '');',
'    l_line := replace(l_line, chr(13), '' '');',
'    l_line := replace(l_line, chr(9),  '' '');',
'    l_line := replace(l_line, ''<'', '' '');',
'    l_line := replace(l_line, ''>'', '' '');',
'    l_line := replace(l_line, '';'', '' '');',
'    l_line := replace(l_line, '':'', '' '');',
'    l_line := replace(l_line, ''('', '' '');',
'    l_line := replace(l_line, '')'', '' '');',
'    l_line := replace(l_line, '' '', '','');',
'',
'    -- get one comma separated line of emails',
'    for j in 1 .. 1000 loop',
'        if instr(l_line, '',,'') > 0 then',
'            l_line := replace(l_line, '',,'', '','');',
'        else',
'            exit;',
'        end if;',
'    end loop;',
'',
'    -- get an array of emails',
'    l_emails := apex_string.split(l_line, '','');',
'',
'    -- add emails to a collection',
'    l_username := null;',
'    l_domain   := null;',
'    l_at       := 0;',
'    l_dot      := 0;',
'    for j in 1..l_emails.count loop',
'        l_valid    := true;',
'        l_username := upper(trim(l_emails(j)));',
'        l_username := trim(both ''.'' from l_username);',
'        l_username := replace(l_username, '' '', null);',
'        l_username := replace(l_username, chr(10), null);',
'        l_username := replace(l_username, chr(9), null);',
'        l_username := replace(l_username, chr(13), null);',
'        l_username := replace(l_username, chr(49824), null);',
'',
'        if l_username is not null then',
'            if nvl(:P10043_USERNAME_FORMAT,''x'') = ''EMAIL'' then',
'              -- Validate',
'              l_at     := instr(nvl(l_username, ''x''), ''@'');',
'              l_domain := substr(l_username, l_at+1);',
'              l_dot    := instr(l_domain, ''.'');',
'              if l_at < 2 then',
'                  -- invalid email',
'                  apex_collection.add_member(',
'                      p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                      p_c001            => l_username,',
'                      p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.MISSING_AT_SIGN''));',
'                  commit;',
'                  l_valid := false;',
'              end if;',
'',
'              if l_dot = 0 and l_valid then',
'                  apex_collection.add_member(',
'                      p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                      p_c001            => l_username,',
'                      p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.MISSING_DOT''));',
'                  commit;',
'                  l_valid := false;',
'              end if;',
'            end if;',
'',
'            if l_valid and length(l_username) > 255 then',
'                apex_collection.add_member(',
'                    p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                    p_c001            => l_username,',
'                    p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.USERNAME_TOO_LONG''));',
'                commit;',
'                l_valid := false;',
'            end if;',
'',
'            if l_valid then',
'                for c1 in (select user_name username',
'                             from APEX_APPL_ACL_USERS',
'                            where user_name = l_username and application_id = :APP_ID)',
'                loop',
'                    apex_collection.add_member(',
'                        p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                        p_c001            => l_username,',
'                        p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.ALREADY_IN_ACL''));',
'                    commit;',
'                    l_valid := false;',
'                    exit;',
'                end loop;',
'            end if;',
'',
'            if l_valid then',
'                for c1 in (select c001',
'                             from apex_collections',
'                            where collection_name = ''ACL_BULK_USER_VALID''',
'                              and c001            = l_username)',
'                loop',
'                    apex_collection.add_member(',
'                        p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                        p_c001            => l_username,',
'                        p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.DUPLICATE_USER''));',
'                        commit;',
'                    l_valid := false;',
'                    exit;',
'                end loop;',
'            end if;',
'',
'            if l_valid then',
'                apex_collection.add_member(',
'                    p_collection_name => ''ACL_BULK_USER_VALID'',',
'                    p_c001            => l_username,',
'                    p_c002            => null,',
'                    p_c003            => :P10043_ROLE);',
'                    commit;',
'            end if;',
'',
'        end if;',
'        l_username := null;',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(154889612209887434235)
,p_internal_uid=>154889617847718434241
);
end;
/
prompt --application/pages/page_10044
begin
wwv_flow_imp_page.create_page(
 p_id=>10044
,p_name=>'Add Multiple Users - Step 2'
,p_alias=>'ADD-MULTIPLE-USERS-STEP-2'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Multiple Users'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(154889414672979433552)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-ListView-item .fa {',
'  color: var(--ut-component-text-muted-color);',
'}',
'',
'.a-ListView-item .u-success-text {',
'  color: var(--ut-palette-success) !important;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(154889413070980433549)
,p_required_patch=>wwv_flow_imp.id(154889410322679433546)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889612378383434235)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889612400308434235)
,p_plug_name=>'Wizard Container'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayCurrentLabelOnly'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(154889612666395434235)
,p_name=>'Exceptions'
,p_parent_plug_id=>wwv_flow_imp.id(154889612400308434235)
,p_template=>2664334895415463485
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c001 username, c002 reason',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_INVALID''',
'order by 1'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_INVALID'''))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>10000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(154889619878277434246)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Username'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(154889620221251434246)
,p_query_column_id=>2
,p_column_alias=>'REASON'
,p_column_display_sequence=>2
,p_column_heading=>'Reason'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889612757448434235)
,p_plug_name=>'&P10044_VALID_COUNT. Users to Add'
,p_parent_plug_id=>wwv_flow_imp.id(154889612400308434235)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>50
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct c001 username',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID''',
'order by 1'))
,p_plug_source_type=>'NATIVE_JQM_LIST_VIEW'
,p_plug_query_num_rows=>10000
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'list_view_features', 'ADVANCED_FORMATTING',
  'text_formatting', '&USERNAME!HTML.')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889612872950434235)
,p_plug_name=>'Hidden Items'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889623476714434250)
,p_plug_name=>'Valid Users Exist - Page Info'
,p_region_template_options=>'#DEFAULT#:margin-bottom-sm'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return ''<p>'' ||',
'       apex_lang.message (',
'           ''APEX.FEATURE.ACL.BULK_USER.CREATE_CONFIRM'',',
'           apex_escape.html(:P10044_VALID_COUNT),',
'           apex_escape.html(:P10044_ROLE)',
'       ) ||',
'       ''</p>'';'))
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889624187592434251)
,p_plug_name=>'No Valid Users Exist - Page Info'
,p_region_template_options=>'#DEFAULT#:margin-bottom-sm'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>'<p>No valid new users found</p>'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(154889612948065434235)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(154889612378383434235)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Users'
,p_button_position=>'NEXT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(154889624845252434252)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(154889612378383434235)
,p_button_name=>'PREVIOUS'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'javascript:history.back();'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(154889625216778434252)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(154889612378383434235)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154889626519163434253)
,p_name=>'P10044_ROLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(154889612872950434235)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LISTAGG( role_name, '', '')',
'         WITHIN GROUP (ORDER BY role_name) role_name',
'from APEX_APPL_ACL_ROLES',
'where application_id = :APP_ID',
'and instr(:P10043_ROLE, role_id, 1) > 0'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154889626934379434254)
,p_name=>'P10044_VALID_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(154889612872950434235)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154889627330383434254)
,p_name=>'P10044_INVALID_COUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(154889612872950434235)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(154889625358824434252)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(154889625216778434252)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154889626019343434253)
,p_event_id=>wwv_flow_imp.id(154889625358824434252)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(154889627707239434255)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Users to Access Control List'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_user_role_ids apex_application_global.vc_arr2;',
'begin',
'    for c in (  select distinct c001 as username, c003 as user_roles',
'                from   apex_collections',
'                where  collection_name = ''ACL_BULK_USER_VALID'' )',
'    loop',
'         l_user_role_ids := apex_util.string_to_table(c.user_roles);',
'         for i in 1..l_user_role_ids.count loop',
'             apex_acl.add_user_role(p_application_id => :APP_ID, p_user_name => c.username, p_role_id => l_user_role_ids(i));',
'         end loop;',
'    end loop;',
'',
'    apex_collection.delete_collection(''ACL_BULK_USER_INVALID'');',
'    apex_collection.delete_collection(''ACL_BULK_USER_VALID'');',
'    :P10043_PRELIM_USERS := null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(154889612948065434235)
,p_process_success_message=>'User(s) added.'
,p_internal_uid=>154889627707239434255
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(154889628174139434255)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>154889628174139434255
);
end;
/
prompt --application/pages/page_10050
begin
wwv_flow_imp_page.create_page(
 p_id=>10050
,p_name=>'Feedback'
,p_alias=>'FEEDBACK'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(154889414672979433552)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.feedback-positive, .feedback-negative, .feedback-neutral { padding: 8px; border-radius: 100%; background-color: white; margin: 4px; }',
'.feedback-positive { color: var(--ut-feedback-positive-text-color, var(--ut-palette-success)); }',
'.feedback-neutral { color: var(--ut-feedback-neutral-text-color, var(--ut-palette-warning)); }',
'.feedback-negative { color: var(--ut-feedback-negative-text-color, var(--ut-palette-danger)); }'))
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(154889410589071433546)
,p_dialog_width=>'480'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889628575069434255)
,p_plug_name=>'Form on Feedback'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889628605263434255)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(154889628798344434255)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(154889628605263434255)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit Feedback'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(154889631734404434257)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(154889628605263434255)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(154889639493894434264)
,p_branch_action=>'f?p=&APP_ID.:10051:&APP_SESSION.::&DEBUG.:RP::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154889633025549434258)
,p_name=>'P10050_APPLICATION_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(154889628575069434255)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154889633482436434258)
,p_name=>'P10050_PAGE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(154889628575069434255)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154889633838959434259)
,p_name=>'P10050_USER_AGENT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(154889628575069434255)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sys.owa_util.get_cgi_env(''user-agent'') x',
'from dual'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154889634240245434259)
,p_name=>'P10050_RATING'
,p_item_sequence=>35
,p_item_plug_id=>wwv_flow_imp.id(154889628575069434255)
,p_prompt=>'Experience'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'FEEDBACK_RATING'
,p_lov=>'.'||wwv_flow_imp.id(154889634377165434259)||'.'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'hide_radio_buttons', 'N',
  'number_of_columns', '3',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154889636170993434261)
,p_name=>'P10050_FEEDBACK'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(154889628575069434255)
,p_prompt=>'Feedback'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(154889639023097434264)
,p_validation_name=>'At least One Feedback Required'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10050_FEEDBACK is null and :P10050_RATING is null then',
'    return false;',
'else',
'    return true;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Please provide feedback or your experience.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(154889631856665434257)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(154889631734404434257)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154889632517772434258)
,p_event_id=>wwv_flow_imp.id(154889631856665434257)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(154889636596971434262)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Submit Feedback'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_UTIL'
,p_attribute_04=>'SUBMIT_FEEDBACK'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(154889628798344434255)
,p_process_success_message=>'Feedback Submitted'
,p_internal_uid=>154889636596971434262
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(154889637004674434262)
,p_page_process_id=>wwv_flow_imp.id(154889636596971434262)
,p_page_id=>10050
,p_name=>'p_comment'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P10050_FEEDBACK'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(154889637588808434263)
,p_page_process_id=>wwv_flow_imp.id(154889636596971434262)
,p_page_id=>10050
,p_name=>'p_application_id'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'APP_ID'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(154889638042439434263)
,p_page_process_id=>wwv_flow_imp.id(154889636596971434262)
,p_page_id=>10050
,p_name=>'p_page_id'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'ITEM'
,p_value=>'P10050_PAGE_ID'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(154889638503298434264)
,p_page_process_id=>wwv_flow_imp.id(154889636596971434262)
,p_page_id=>10050
,p_name=>'p_rating'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>true
,p_display_sequence=>4
,p_value_type=>'ITEM'
,p_value=>'P10050_RATING'
);
end;
/
prompt --application/pages/page_10051
begin
wwv_flow_imp_page.create_page(
 p_id=>10051
,p_name=>'Feedback Submitted'
,p_alias=>'FEEDBACK-SUBMITTED'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback Submitted'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(154889414672979433552)
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(154889410589071433546)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889629117234434256)
,p_plug_name=>'Feedback Submitted'
,p_icon_css_classes=>'fa-check-circle'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--customIcons:t-Alert--success'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(154889629022102434256)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(154889629117234434256)
,p_button_name=>'CLOSE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_css_classes=>'w40p'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(154889629255410434256)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(154889629022102434256)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154889641074706434266)
,p_event_id=>wwv_flow_imp.id(154889629255410434256)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
end;
/
prompt --application/pages/page_10053
begin
wwv_flow_imp_page.create_page(
 p_id=>10053
,p_name=>'Manage Feedback'
,p_alias=>'MANAGE-FEEDBACK'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage Feedback'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(154889414672979433552)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Color feedback rating icons */',
'.feedback-positive { color: var(--ut-feedback-positive-text-color, var(--ut-palette-success)); }',
'.feedback-neutral { color: var(--ut-feedback-neutral-text-color, var(--ut-palette-warning)); }',
'.feedback-negative { color: var(--ut-feedback-negative-text-color, var(--ut-palette-danger)); }'))
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(154889413070980433549)
,p_required_patch=>wwv_flow_imp.id(154889410589071433546)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Feedback can be entered by end users from any normal page within the application.</p>',
'<p>This report shows the feedback entered, any response enter by administrators, and the status of the feedback.</p>',
'<p>Click the edit icon (yellow pencil) to enter a response or update the feedback status.</p>',
'<p><em><strong>Note:</strong> If feedback recipients have been defined then feedback submissions will also be emailed to the email addresses in the feedback recipients list.</em></p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889630449774434256)
,p_plug_name=>'Manage Feedback'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select feedback_id id,',
'    page_id||''. ''||page_name page_name,',
'    created_on created,',
'    lower(created_by) created_by,',
'    feedback,',
'    feedback_rating rating,',
'    case feedback_rating',
'      when 1 then ''fa-frown-o feedback-negative'' ',
'      when 2 then ''fa-emoji-neutral feedback-neutral''  ',
'      when 3 then ''fa-smile-o feedback-positive''',
'    end rating_icon,',
'    feedback_status status,',
'    public_response response,',
'    http_user_agent user_agent,',
'    updated_on updated,',
'    lower(updated_by) updated_by,',
'    page_id',
'from apex_team_feedback f',
'where application_id = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Manage Feedback'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(154889654134873434279)
,p_name=>'Manage Feedback'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:10054:&APP_SESSION.::&DEBUG.:RP:P10054_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'SASINIAMARATHUNGA2005@GMAIL.COM'
,p_internal_uid=>154889654134873434279
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889654828268434281)
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
 p_id=>wwv_flow_imp.id(154889655218376434282)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Page'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889655630972434282)
,p_db_column_name=>'CREATED'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Filed'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889656074700434283)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Filed By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889656422719434283)
,p_db_column_name=>'FEEDBACK'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Feedback'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889656872715434284)
,p_db_column_name=>'RATING'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Rating'
,p_column_html_expression=>'<span class="fa #RATING_ICON#" aria-hidden="true" title="#RATING#"></span>'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(154889634377165434259)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889657252138434284)
,p_db_column_name=>'RATING_ICON'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'RATING ICON'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889657636248434284)
,p_db_column_name=>'STATUS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Status'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(154889646896712434273)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889658055388434285)
,p_db_column_name=>'RESPONSE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Response'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889658439994434285)
,p_db_column_name=>'USER_AGENT'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'User Agent'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889658839675434286)
,p_db_column_name=>'UPDATED'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889659212142434286)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154889659667204434287)
,p_db_column_name=>'PAGE_ID'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(154889664238912434292)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1548896643'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE_NAME:CREATED:CREATED_BY:FEEDBACK:RATING:STATUS:RESPONSE:UPDATED:UPDATED_BY'
,p_sort_column_1=>'UPDATED'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(154889665122445434293)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(154889630449774434256)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(154889630362568434256)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(154889630449774434256)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154889665874125434294)
,p_event_id=>wwv_flow_imp.id(154889630362568434256)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(154889630449774434256)
);
end;
/
prompt --application/pages/page_10054
begin
wwv_flow_imp_page.create_page(
 p_id=>10054
,p_name=>'Feedback'
,p_alias=>'FEEDBACK1'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(154889414672979433552)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Color feedback rating icons */',
'.feedback-positive { color: var(--ut-feedback-positive-text-color, var(--ut-palette-success)); }',
'.feedback-neutral { color: var(--ut-feedback-neutral-text-color, var(--ut-palette-warning)); }',
'.feedback-negative { color: var(--ut-feedback-negative-text-color, var(--ut-palette-danger)); }'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(154889413070980433549)
,p_required_patch=>wwv_flow_imp.id(154889410589071433546)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889629749310434256)
,p_plug_name=>'Form Items Region'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889629885341434256)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(154889629995196434256)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(154889629885341434256)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(154889642637730434268)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(154889629885341434256)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(154889630102718434256)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(154889629885341434256)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P10054_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154889644261520434270)
,p_name=>'P10054_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(154889629749310434256)
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154889644653209434270)
,p_name=>'P10054_PAGE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(154889629749310434256)
,p_prompt=>'Page'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154889645045745434271)
,p_name=>'P10054_FILED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(154889629749310434256)
,p_prompt=>'Filed'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154889645470757434271)
,p_name=>'P10054_RATING_ICON'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(154889629749310434256)
,p_prompt=>'Rating'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'HTML',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154889645835328434272)
,p_name=>'P10054_FEEDBACK'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(154889629749310434256)
,p_prompt=>'Feedback'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154889646200475434272)
,p_name=>'P10054_RESPONSE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(154889629749310434256)
,p_prompt=>'Response'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154889646735706434273)
,p_name=>'P10054_FEEDBACK_STATUS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(154889629749310434256)
,p_prompt=>'Status'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'FEEDBACK_STATUS'
,p_lov=>'.'||wwv_flow_imp.id(154889646896712434273)||'.'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'N',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154889649176793434275)
,p_name=>'P10054_USER_AGENT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(154889629749310434256)
,p_prompt=>'User Agent'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(154889642727723434268)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(154889642637730434268)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154889643491323434269)
,p_event_id=>wwv_flow_imp.id(154889642727723434268)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(154889649634325434276)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for l_feedback in (',
'   select page_id,',
'          page_name,',
'          case feedback_rating',
'                when 1 then ''<span class="fa fa-frown-o feedback-negative" aria-hidden="true" title="Negative"></span>'' ',
'                when 2 then ''<span class="fa fa-emoji-neutral feedback-neutral" aria-hidden="true" title="Neutral"></span>''  ',
'                when 3 then ''<span class="fa fa-smile-o feedback-positive" aria-hidden="true" title="Positive"></span>'' ',
'                end rating_icon,',
'          lower(created_by) || '' - '' || apex_util.get_since(created_on) filed,',
'          feedback,',
'          public_response,',
'          feedback_status,',
'          http_user_agent',
'     from apex_team_feedback',
'    where feedback_id = :P10054_ID )',
'loop',
'   :P10054_PAGE_ID         := l_feedback.page_id||''. ''||l_feedback.page_name;',
'   :P10054_FILED           := l_feedback.filed;',
'   :P10054_RATING_ICON     := l_feedback.rating_icon;',
'   :P10054_FEEDBACK        := l_feedback.feedback;',
'   :P10054_RESPONSE        := l_feedback.public_response;',
'   :P10054_FEEDBACK_STATUS := l_feedback.feedback_status;',
'   :P10054_USER_AGENT      := l_feedback.http_user_agent;',
'end loop;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>154889649634325434276
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(154889649923855434276)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Reply to Feedback'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_UTIL'
,p_attribute_04=>'REPLY_TO_FEEDBACK'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(154889629995196434256)
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>154889649923855434276
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(154889650435705434276)
,p_page_process_id=>wwv_flow_imp.id(154889649923855434276)
,p_page_id=>10054
,p_name=>'p_feedback_id'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P10054_ID'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(154889650986192434277)
,p_page_process_id=>wwv_flow_imp.id(154889649923855434276)
,p_page_id=>10054
,p_name=>'p_status'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>true
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P10054_FEEDBACK_STATUS'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(154889651486712434277)
,p_page_process_id=>wwv_flow_imp.id(154889649923855434276)
,p_page_id=>10054
,p_name=>'p_public_response'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'ITEM'
,p_value=>'P10054_RESPONSE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(154889651846690434278)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Delete Feedback'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_UTIL'
,p_attribute_04=>'DELETE_FEEDBACK'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(154889630102718434256)
,p_process_success_message=>'Feedback Deleted'
,p_internal_uid=>154889651846690434278
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(154889652314723434278)
,p_page_process_id=>wwv_flow_imp.id(154889651846690434278)
,p_page_id=>10054
,p_name=>'p_feedback_id'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P10054_ID'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(154889652879725434278)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(154889630102718434256)
,p_internal_uid=>154889652879725434278
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(154889653203955434279)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>154889653203955434279
);
end;
/
prompt --application/pages/page_10060
begin
wwv_flow_imp_page.create_page(
 p_id=>10060
,p_name=>'About'
,p_alias=>'ABOUT'
,p_step_title=>'About'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(154889414672979433552)
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(154889411019301433546)
,p_protection_level=>'C'
,p_help_text=>'All application help text can be accessed from this page. The links in the "Documentation" region give a much more in-depth explanation of the application''s features and functionality.'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889666717663434295)
,p_plug_name=>'About Page'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--padded:t-ContentBlock--h1:t-ContentBlock--lightBG'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2322115667525957943
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>'Text about this application can be placed here.'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
end;
/
prompt --application/pages/page_10061
begin
wwv_flow_imp_page.create_page(
 p_id=>10061
,p_name=>'Help'
,p_alias=>'HELP'
,p_page_mode=>'MODAL'
,p_step_title=>'Help'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(154889411019301433546)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889667403811434296)
,p_plug_name=>'Search Dialog'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for l_page in ( select page_title,',
'                       help_text',
'                  from apex_application_pages',
'                 where application_id = :APP_ID',
'                   and page_id = :P10061_PAGE_ID )',
'loop',
'    if l_page.help_text is null then',
'        return ''No help is available for this page.'';',
'    else',
'        return case when substr(l_page.help_text, 1, 3) != ''<p>'' then ''<p>'' end ||',
'               apex_application.do_substitutions(l_page.help_text) ||',
'               case when substr(trim(l_page.help_text), -4) != ''</p>'' then ''</p>'' end;',
'    end if;',
'end loop;'))
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154889667898014434297)
,p_name=>'P10061_PAGE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(154889667403811434296)
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
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
,p_group_id=>wwv_flow_imp.id(154889691021412434323)
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:t-Dialog--noPadding:js-dialog-class-t-Drawer--pullOutEnd:js-dialog-class-t-Drawer--md'
,p_required_patch=>wwv_flow_imp.id(154889691553538434324)
,p_protection_level=>'C'
,p_help_text=>'This page contains a list of settings applicable to the current application user.'
,p_page_component_map=>'23'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889696108415434330)
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
 p_id=>wwv_flow_imp.id(154889696503475434330)
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
 p_id=>wwv_flow_imp.id(154889697039120434331)
,p_region_id=>wwv_flow_imp.id(154889696503475434330)
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
 p_id=>wwv_flow_imp.id(154889697548266434331)
,p_plug_name=>'Settings'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-MediaList--showBadges:u-colors'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_list_id=>wwv_flow_imp.id(154889695150672434328)
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
,p_group_id=>wwv_flow_imp.id(154889691021412434323)
,p_javascript_code_onload=>'apex.pwa.initPushSubscriptionPage();'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_patch=>wwv_flow_imp.id(154889691238167434324)
,p_protection_level=>'C'
,p_help_text=>'This page contains the settings for controlling push notification subscription for the current user.'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154889692583529434325)
,p_plug_name=>'Push Notifications Not Supported'
,p_region_css_classes=>'a-pwaPush--subscriptionRegion--not-supported'
,p_icon_css_classes=>'fa-bell-slash-o'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--wizard:t-Alert--customIcons:t-Alert--warning:t-Alert--removeHeading js-removeLandmark:t-Form--xlarge'
,p_region_attributes=>'#APEX_CSP_DISPLAY_NONE#'
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
 p_id=>wwv_flow_imp.id(154889692928087434325)
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
 p_id=>wwv_flow_imp.id(154889692231252434325)
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
 p_id=>wwv_flow_imp.id(154889693409002434326)
,p_name=>'P20010_ENABLE_PUSH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(154889692928087434325)
,p_prompt=>'Enable push notifications on this device'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#:margin-top-sm'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(154889693728828434327)
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
 p_id=>wwv_flow_imp.id(154889694244619434327)
,p_event_id=>wwv_flow_imp.id(154889693728828434327)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Subscribe to push notifications'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.pwa.subscribePushNotifications();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154889694763561434328)
,p_event_id=>wwv_flow_imp.id(154889693728828434327)
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
null;
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
