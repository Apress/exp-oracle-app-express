set define off
set verify off
set serveroutput on size 1000000
set feedback off
WHENEVER SQLERROR EXIT SQL.SQLCODE ROLLBACK
begin wwv_flow.g_import_in_progress := true; end; 
/
 
 
--application/set_environment
prompt  APPLICATION 40 - APEX 4.0 Charts Inside Out
--
-- Application Export:
--   Application:     40
--   Name:            APEX 4.0 Charts Inside Out
--   Date and Time:   08:10 Thursday April 7, 2011
--   Exported By:     DIMI
--   Flashback:       0
--   Export Type:     Application Export
--   Version: 4.0.2.00.07
 
-- Import:
--   Using application builder
--   or
--   Using SQL*Plus as the Oracle user APEX_040000 or as the owner (parsing schema) of the application.
 
-- Application Statistics:
--   Pages:                   21
--     Items:                 15
--     Computations:           2
--     Validations:            0
--     Processes:              4
--     Regions:               29
--     Buttons:                2
--     Dynamic Actions:        8
--   Shared Components
--     Breadcrumbs:            1
--        Entries              1
--     Items:                  1
--     Computations:           0
--     Processes:              0
--     Parent Tabs:            0
--     Tab Sets:               1
--        Tabs:                5
--     NavBars:                1
--     Lists:                  1
--     Shortcuts:              0
--     Themes:                 1
--     Templates:
--        Page:               15
--        List:               20
--        Report:             10
--        Label:               5
--        Region:             30
--     Messages:               0
--     Build Options:          0
 
 
--       AAAA       PPPPP   EEEEEE  XX      XX
--      AA  AA      PP  PP  EE       XX    XX
--     AA    AA     PP  PP  EE        XX  XX
--    AAAAAAAAAA    PPPPP   EEEE       XXXX
--   AA        AA   PP      EE        XX  XX
--  AA          AA  PP      EE       XX    XX
--  AA          AA  PP      EEEEEE  XX      XX
prompt  Set Credentials...
 
begin
 
  -- Assumes you are running the script connected to SQL*Plus as the Oracle user APEX_040000 or as the owner (parsing schema) of the application.
  wwv_flow_api.set_security_group_id(p_security_group_id=>nvl(wwv_flow_application_install.get_workspace_id,4367516590544522));
 
end;
/

begin wwv_flow.g_import_in_progress := true; end;
/
begin 

select value into wwv_flow_api.g_nls_numeric_chars from nls_session_parameters where parameter='NLS_NUMERIC_CHARACTERS';

end;

/
begin execute immediate 'alter session set nls_numeric_characters=''.,''';

end;

/
begin wwv_flow.g_browser_language := 'en'; end;
/
prompt  Check Compatibility...
 
begin
 
-- This date identifies the minimum version required to import this file.
wwv_flow_api.set_version(p_version_yyyy_mm_dd=>'2010.05.13');
 
end;
/

prompt  Set Application ID...
 
begin
 
   -- SET APPLICATION ID
   wwv_flow.g_flow_id := nvl(wwv_flow_application_install.get_application_id,40);
   wwv_flow_api.g_id_offset := nvl(wwv_flow_application_install.get_offset,0);
null;
 
end;
/

--application/delete_application
 
begin
 
   -- Remove Application
wwv_flow_api.remove_flow(nvl(wwv_flow_application_install.get_application_id,40));
 
end;
/

 
begin
 
wwv_flow_audit.remove_audit_trail(nvl(wwv_flow_application_install.get_application_id,40));
null;
 
end;
/

--application/create_application
 
begin
 
wwv_flow_api.create_flow(
  p_id    => nvl(wwv_flow_application_install.get_application_id,40),
  p_display_id=> nvl(wwv_flow_application_install.get_application_id,40),
  p_owner => nvl(wwv_flow_application_install.get_schema,'TRAINING'),
  p_name  => nvl(wwv_flow_application_install.get_application_name,'APEX 4.0 Charts Inside Out'),
  p_alias => nvl(wwv_flow_application_install.get_application_alias,'APEX_EXPERT_CHART'),
  p_page_view_logging => 'YES',
  p_default_page_template=> 6615627566850561 + wwv_flow_api.g_id_offset,
  p_printer_friendly_template=> 6615804049850561 + wwv_flow_api.g_id_offset,
  p_default_region_template=> 6618921799850573 + wwv_flow_api.g_id_offset,
  p_error_template=> 6615201810850560 + wwv_flow_api.g_id_offset,
  p_page_protection_enabled_y_n=> 'Y',
  p_checksum_salt_last_reset => '20110407081004',
  p_max_session_length_sec=> 28800,
  p_home_link=> 'f?p=&APP_ID.:1:&SESSION.',
  p_flow_language=> 'en',
  p_flow_language_derived_from=> 'FLOW_PRIMARY_LANGUAGE',
  p_allow_feedback_yn=> 'N',
  p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'/i/'),
  p_publish_yn=> 'N',
  p_documentation_banner=> '',
  p_authentication=> 'CUSTOM2',
  p_login_url=> '',
  p_logout_url=> '',
  p_application_tab_set=> 1,
  p_public_url_prefix => '',
  p_public_user=> '',
  p_dbauth_url_prefix => '',
  p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,''),
  p_cust_authentication_process=> '.'||to_char(26169420703494419 + wwv_flow_api.g_id_offset)||'.',
  p_cust_authentication_page=> '',
  p_custom_auth_login_url=> '',
  p_flow_version=> 'release 1.0',
  p_flow_status=> 'AVAILABLE_W_EDIT_LINK',
  p_flow_unavailable_text=> 'This application is currently unavailable at this time.',
  p_build_status=> 'RUN_AND_BUILD',
  p_exact_substitutions_only=> 'Y',
  p_vpd=> '',
  p_csv_encoding=> 'Y',
  p_default_error_display_loc=> 'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_theme_id => 21,
  p_default_label_template => 6623201755850590 + wwv_flow_api.g_id_offset,
  p_default_report_template => 6622506965850587 + wwv_flow_api.g_id_offset,
  p_default_list_template => 6621510770850586 + wwv_flow_api.g_id_offset,
  p_default_menu_template => 6623526987850591 + wwv_flow_api.g_id_offset,
  p_default_button_template => 6616312293850562 + wwv_flow_api.g_id_offset,
  p_default_chart_template => 6617915349850572 + wwv_flow_api.g_id_offset,
  p_default_form_template => 6618013289850572 + wwv_flow_api.g_id_offset,
  p_default_wizard_template => 6619815428850576 + wwv_flow_api.g_id_offset,
  p_default_tabform_template => 6618921799850573 + wwv_flow_api.g_id_offset,
  p_default_reportr_template   =>6618921799850573 + wwv_flow_api.g_id_offset,
  p_default_menur_template => 6617425955850570 + wwv_flow_api.g_id_offset,
  p_default_listr_template => 6617815669850571 + wwv_flow_api.g_id_offset,
  p_default_irr_template => 6618528500850573 + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'DIMI',
  p_last_upd_yyyymmddhh24miss=> '20110407081004',
  p_required_roles=> wwv_flow_utilities.string_to_table2(''));
 
 
end;
/

prompt  ...authorization schemes
--
 
begin
 
null;
 
end;
/

--application/shared_components/navigation/navigation_bar
prompt  ...navigation bar entries
--
 
begin
 
wwv_flow_api.create_icon_bar_item(
  p_id => 6624816418850616 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_icon_sequence=> 200,
  p_icon_image => '',
  p_icon_subtext=> 'Logout',
  p_icon_target=> '&LOGOUT_URL.',
  p_icon_image_alt=> 'Logout',
  p_icon_height=> 32,
  p_icon_width=> 32,
  p_icon_height2=> 24,
  p_icon_width2=> 24,
  p_nav_entry_is_feedback_yn => 'N',
  p_icon_bar_disp_cond=> '',
  p_icon_bar_disp_cond_type=> '',
  p_begins_on_new_line=> '',
  p_cell_colspan      => 1,
  p_onclick=> '',
  p_icon_bar_comment=> '');
 
 
end;
/

prompt  ...application processes
--
prompt  ...application items
--
--application/shared_components/logic/application_items/fsp_after_login_url
 
begin
 
wwv_flow_api.create_flow_item(
  p_id=> 6627121672851277 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'FSP_AFTER_LOGIN_URL',
  p_data_type=> 'VARCHAR',
  p_is_persistent=> 'Y',
  p_protection_level=> '',
  p_item_comment=> '');
 
null;
 
end;
/

prompt  ...application level computations
--
 
begin
 
null;
 
end;
/

prompt  ...Application Tabs
--
 
begin
 
--application/shared_components/navigation/tabs/standard/t_home
wwv_flow_api.create_tab (
  p_id=> 6626213581850631 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_tab_sequence=> 10,
  p_tab_name=> 'T_HOME',
  p_tab_text => 'Home',
  p_tab_step => 1,
  p_tab_also_current_for_pages => '',
  p_tab_parent_tabset=>'',
  p_tab_comment  => '');
 
--application/shared_components/navigation/tabs/standard/t_html_charts
wwv_flow_api.create_tab (
  p_id=> 6698232103085245 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_tab_sequence=> 20,
  p_tab_name=> 'T_HTML CHARTS',
  p_tab_text => 'HTML Charts',
  p_tab_step => 3,
  p_tab_also_current_for_pages => '',
  p_tab_parent_tabset=>'',
  p_tab_comment  => '');
 
--application/shared_components/navigation/tabs/standard/t_html_chart_optimization
wwv_flow_api.create_tab (
  p_id=> 7589118001282861 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_tab_sequence=> 40,
  p_tab_name=> 'T_HTML CHART OPTIMIZATION',
  p_tab_text => 'HTML Chart Optimization',
  p_tab_step => 5,
  p_tab_also_current_for_pages => '',
  p_tab_parent_tabset=>'',
  p_tab_comment  => '');
 
--application/shared_components/navigation/tabs/standard/t_flash_chart
wwv_flow_api.create_tab (
  p_id=> 10495823610022438 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_tab_sequence=> 60,
  p_tab_name=> 'T_FLASH CHART',
  p_tab_text => 'Flash Chart',
  p_tab_step => 2,
  p_tab_also_current_for_pages => '6,7,8,9,10,11,12,13,16,17,18,7,8,10,11,15,15,20,19',
  p_tab_parent_tabset=>'',
  p_tab_comment  => '');
 
--application/shared_components/navigation/tabs/standard/t_anychart_full
wwv_flow_api.create_tab (
  p_id=> 6834631105215365 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_tab_sequence=> 70,
  p_tab_name=> 'T_ANYCHART FULL',
  p_tab_text => 'AnyChart Full',
  p_tab_step => 4,
  p_tab_also_current_for_pages => '',
  p_tab_parent_tabset=>'',
  p_tab_comment  => '');
 
 
end;
/

prompt  ...Application Parent Tabs
--
 
begin
 
null;
 
end;
/

prompt  ...Shared Lists of values
--
prompt  ...Application Trees
--
--application/pages/page_groups
prompt  ...page groups
--
 
begin
 
null;
 
end;
/

--application/comments
prompt  ...comments: requires application express 2.2 or higher
--
 
--application/pages/page_00000
prompt  ...PAGE 0: 0
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 0
 ,p_name => '0'
 ,p_step_title => '0'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'NO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_cache_page_yn => 'N'
 ,p_last_updated_by => 'DIMI'
 ,p_last_upd_yyyymmddhh24miss => '20110306155749'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'20514810122329459';

wwv_flow_api.create_page_plug (
  p_id=> 20515807829338170 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 0,
  p_plug_name=> 'Flash Chart Menu',
  p_region_name=>'',
  p_plug_template=> 6619600758850576+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'REGION_POSITION_03',
  p_plug_source=> s,
  p_plug_source_type=> 20514810122329459 + wwv_flow_api.g_id_offset,
  p_translate_title=> 'Y',
  p_plug_display_error_message=> '#SQLERRM#',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => 'CURRENT_PAGE_NOT_IN_CONDITION',
  p_plug_display_when_condition => '1,3,5,15,101',
  p_plug_header=> '<div style="width:300px">',
  p_plug_footer=> '</div>',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
 
begin
 
null;
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 0
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00001
prompt  ...PAGE 1: Home
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 1
 ,p_tab_set => 'TS1'
 ,p_name => 'Home'
 ,p_step_title => 'Home'
 ,p_step_sub_title => 'Home'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_cache_page_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_last_updated_by => 'DIMI'
 ,p_last_upd_yyyymmddhh24miss => '20110122194541'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'Application that accompanies the chapter "APEX 4.0 Charts Inside Out" of the book ....'||chr(10)||
''||chr(10)||
'<br/>'||chr(10)||
'<br/>'||chr(10)||
''||chr(10)||
'If you have any questions or comments, please contact <a href="mailto:dimitri.gielis@apex-evangelists.com">Dimitri Gielis</a>.';

wwv_flow_api.create_page_plug (
  p_id=> 6626300306850632 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_plug_name=> 'Home',
  p_region_name=>'',
  p_plug_template=> 6618921799850573+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
 
begin
 
null;
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 1
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00002
prompt  ...PAGE 2: Flash Chart
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 2
 ,p_tab_set => 'TS1'
 ,p_name => 'Flash Chart'
 ,p_step_title => 'Flash Chart'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'NO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_cache_page_yn => 'N'
 ,p_last_updated_by => 'DIMI'
 ,p_last_upd_yyyymmddhh24miss => '20110405121951'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"'||chr(10)||
'    codebase="#HOST_PROTOCOL#://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0"'||chr(10)||
'    width="#WIDTH#"'||chr(10)||
'    height="#HEIGHT#"'||chr(10)||
'    id="#CHART_NAME#"'||chr(10)||
'    align="top">'||chr(10)||
'<param name="movie" value="#IMAGE_PREFIX#flashchart/anychart_5/swf/#CHART_TYPE#.swf?XMLFile=#HOST#apex_util.flash?p=&APP_ID.:2:&APP_SESSION.:FLOW_FL';

s:=s||'ASH_CHART5_R#REGION_ID#">'||chr(10)||
'<param name="quality" value="high">'||chr(10)||
'<param name="allowScriptAccess" value="sameDomain">'||chr(10)||
'<param name="allowNetworking" value="all">'||chr(10)||
'<param name="scale" value="noscale">'||chr(10)||
'<param name="wmode" value="transparent">'||chr(10)||
'<param name="FlashVars" value="initText=#FLASH_INIT#&xmlLoadingText=#FLASH_LOADING#&resourcesLoadingText=#FLASH_RESOURCES#&noDataText=#FLASH_NO_DATA#&waitingForDataT';

s:=s||'ext=#FLASH_WAITING#&templatesLoadingText=#FLASH_TEMPLATES#">'||chr(10)||
''||chr(10)||
'<embed src="#IMAGE_PREFIX#flashchart/anychart_5/swf/#CHART_TYPE#.swf?XMLFile=#HOST#apex_util.flash?p=&APP_ID.:2:&APP_SESSION.:FLOW_FLASH_CHART5_R#REGION_ID#"'||chr(10)||
'       quality="high"'||chr(10)||
'       width="#WIDTH#"'||chr(10)||
'       height="#HEIGHT#"'||chr(10)||
'       name="#CHART_NAME#"'||chr(10)||
'       scale="noscale"'||chr(10)||
'       align=""'||chr(10)||
'       allowScriptAccess="sameDomain" '||chr(10)||
'     ';

s:=s||'  allowNetworking="all"'||chr(10)||
'       type="application/x-shockwave-flash"'||chr(10)||
'       pluginspage="#HOST_PROTOCOL#://www.macromedia.com/go/getflashplayer"'||chr(10)||
'       wmode="transparent"'||chr(10)||
'FlashVars="initText=#FLASH_INIT#&xmlLoadingText=#FLASH_LOADING#&resourcesLoadingText=#FLASH_RESOURCES#&noDataText=#FLASH_NO_DATA#&waitingForDataText=#FLASH_WAITING#&templatesLoadingText=#FLASH_TEMPLATES#">'||chr(10)||
'</embed>'||chr(10)||
'</object>'||chr(10)||
'#CHA';

s:=s||'RT_REFRESH#';

wwv_flow_api.create_page_plug (
  p_id=> 10604411968639592 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 2,
  p_plug_name=> '3D Column Chart',
  p_region_name=>'',
  p_plug_template=> 6617915349850572+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'FLASH_CHART5',
  p_translate_title=> 'Y',
  p_plug_display_error_message=> '#SQLERRM#',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
 a1 varchar2(32767) := null;
begin
a1 := null;
wwv_flow_api.create_flash_chart5(
  p_id => 10604610937639596+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id => 2,
  p_region_id => 10604411968639592+wwv_flow_api.g_id_offset,
  p_default_chart_type     =>'3DColumn',
  p_chart_title            =>'Salary by Employees',
  p_chart_name             =>'chart_10604610937639596',
  p_chart_width            =>700,
  p_chart_height           =>500,
  p_chart_animation        =>'N',
  p_display_attr           =>':H:N:V:X:N:N::V:Y:None:::N:::Default',
  p_dial_tick_attr         =>':::::::::::',
  p_gantt_attr             =>'Y:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:30:15:5:Y:I:N:S:E',
  p_map_attr               =>'Orthographic:RegionBounds:REGION_NAME',
  p_map_source             =>'',
  p_margins                =>':::',
  p_omit_label_interval    => null,
  p_bgtype                 =>'Trans',
  p_bgcolor1               =>'',
  p_bgcolor2               =>'',
  p_gradient_rotation      =>null,
  p_grid_bgtype            =>'',
  p_grid_bgcolor1          =>'',
  p_grid_bgcolor2          =>'',
  p_grid_gradient_rotation =>null,
  p_color_scheme           =>'6',
  p_custom_colors          =>'',
  p_map_undef_color_scheme =>'',
  p_map_undef_custom_colors =>'',
  p_x_axis_title           =>'Employee',
  p_x_axis_min             =>null,
  p_x_axis_max             =>null,
  p_x_axis_decimal_place   =>null,
  p_x_axis_prefix          =>'',
  p_x_axis_postfix         =>'',
  p_x_axis_label_rotation  =>'',
  p_x_axis_label_font      =>'Tahoma:10:#000000',
  p_x_axis_major_interval  =>null,
  p_x_axis_minor_interval  =>null,
  p_y_axis_title           =>'Salary',
  p_y_axis_min             =>null,
  p_y_axis_max             =>null,
  p_y_axis_decimal_place   =>null,
  p_y_axis_prefix          =>'',
  p_y_axis_postfix         =>'',
  p_y_axis_label_rotation  =>'',
  p_y_axis_label_font      =>'Tahoma:10:#000000',
  p_y_axis_major_interval  =>null,
  p_y_axis_minor_interval  =>null,
  p_async_update           =>'N',
  p_async_time             =>null,
  p_legend_title           =>'',
  p_legend_title_font      =>'',
  p_names_font             => null,
  p_names_rotation         => null,
  p_values_font            =>'Arial:10:#000000',
  p_values_rotation        =>null,
  p_values_prefix          =>'',
  p_values_postfix         =>'',
  p_hints_font             =>'Tahoma:10:#000000',
  p_legend_font            =>'Arial:10:#000000',
  p_grid_labels_font       =>'',
  p_chart_title_font       =>'Tahoma:14:#000000',
  p_x_axis_title_font      =>'Tahoma:14:#000000',
  p_x_axis_title_rotation  =>'',
  p_y_axis_title_font      =>'Tahoma:14:#000000',
  p_y_axis_title_rotation  =>'',
  p_gauge_labels_font      =>'Tahoma:10:',
  p_use_chart_xml          =>'N',
  p_chart_xml              => a1);
end;
/
declare
 a1 varchar2(32767) := null;
begin
a1:=a1||'SELECT NULL LINK,'||chr(10)||
'       ENAME LABEL,'||chr(10)||
'       SAL VALUE'||chr(10)||
'FROM   EMP'||chr(10)||
'ORDER  BY ENAME';

wwv_flow_api.create_flash_chart5_series(
  p_id => 10604703844639604+wwv_flow_api.g_id_offset,
  p_chart_id => 10604610937639596+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_series_seq                =>10,
  p_series_name               =>'Series 1',
  p_series_query              => a1,
  p_series_type               =>'',
  p_series_query_type         =>'SQL_QUERY',
  p_series_query_parse_opt    =>'',
  p_series_query_no_data_found=>'No data found.',
  p_series_query_row_count_max=>15,
  p_action_link               =>'',
  p_show_action_link          =>'',
  p_action_link_checksum_type =>'');
end;
/
 
begin
 
null;
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 2
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00003
prompt  ...PAGE 3: HTML Charts
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 3
 ,p_tab_set => 'TS1'
 ,p_name => 'HTML Charts'
 ,p_step_title => 'HTML Charts'
 ,p_step_sub_title => 'HTML Charts'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_cache_page_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_last_updated_by => 'DIMI'
 ,p_last_upd_yyyymmddhh24miss => '20110405082500'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'select '''' link, PRODUCT_NAME label, LIST_PRICE value1'||chr(10)||
'from  DEMO_PRODUCT_INFO';

wwv_flow_api.create_page_plug (
  p_id=> 6698411802085246 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_plug_name=> 'Vertical Bar with All Attributes',
  p_region_name=>'',
  p_plug_template=> 6617915349850572+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 20,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'SIMPLE_CHART',
  p_translate_title=> 'Y',
  p_plug_display_error_message=> '#SQLERRM#',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_options => 'PARSE_CHART_QUERY',
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_plug_chart_font_size => '-1',
  p_plug_chart_max_rows => '20',
  p_plug_chart_num_mask => '999G999G999G990',
  p_plug_chart_scale => '200',
  p_plug_chart_axis => 'ZERO',
  p_plug_chart_show_summary => 'CAMXVSFLUP',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
 a varchar2(32767):=null;
begin
a:=a||'RANDOM';

wwv_flow_api.create_generic_attr(
 p_id=>6698616088085248+wwv_flow_api.g_id_offset,
 p_region_id=>6698411802085246+wwv_flow_api.g_id_offset,
 p_attribute_id=>1,
 p_attribute_value=>a);
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'select ''f?p=&APP_ID.:1:''||:APP_SESSION||''::::::'' link, '||chr(10)||
'         PRODUCT_NAME label, LIST_PRICE value1'||chr(10)||
' from DEMO_PRODUCT_INFO';

wwv_flow_api.create_page_plug (
  p_id=> 6698926619085250 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_plug_name=> 'Horizontal with Minimal Settings',
  p_region_name=>'',
  p_plug_template=> 6617915349850572+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 30,
  p_plug_display_column=> 2,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'SIMPLE_CHART',
  p_translate_title=> 'Y',
  p_plug_display_error_message=> '#SQLERRM#',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_options => 'PARSE_CHART_QUERY',
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_plug_chart_font_size => '-1',
  p_plug_chart_max_rows => '20',
  p_plug_chart_num_mask => '999G999G999G990',
  p_plug_chart_scale => '200',
  p_plug_chart_axis => 'ZERO',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
 a varchar2(32767):=null;
begin
a:=a||'RANDOM';

wwv_flow_api.create_generic_attr(
 p_id=>6699104179085250+wwv_flow_api.g_id_offset,
 p_region_id=>6698926619085250+wwv_flow_api.g_id_offset,
 p_attribute_id=>1,
 p_attribute_value=>a);
end;
/
 
begin
 
null;
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 3
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00004
prompt  ...PAGE 4: Comparison Anychart Full - Anychart in APEX
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 4
 ,p_tab_set => 'TS1'
 ,p_name => 'Comparison Anychart Full - Anychart in APEX'
 ,p_step_title => 'Comparison Anychart Full - Anychart in APEX'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'NO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_cache_page_yn => 'N'
 ,p_last_updated_by => 'DIMI'
 ,p_last_upd_yyyymmddhh24miss => '20110315094601'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'see <a href="http://anychart.apex-evanegelists.com">AnyChart for APEX</a> website by APEX Evangelists';

wwv_flow_api.create_page_plug (
  p_id=> 6834814840215369 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 4,
  p_plug_name=> 'Available Charts',
  p_region_name=>'',
  p_plug_template=> 6618921799850573+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_display_error_message=> '#SQLERRM#',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
 
begin
 
null;
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 4
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00005
prompt  ...PAGE 5: HTML Charts Optimization
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 5
 ,p_tab_set => 'TS1'
 ,p_name => 'HTML Charts Optimization'
 ,p_step_title => 'HTML Charts Optimization'
 ,p_step_sub_title => 'HTML Charts Optimization'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_cache_page_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_last_updated_by => 'DIMI'
 ,p_last_upd_yyyymmddhh24miss => '20110129084900'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'select ''f?p=&APP_ID.:1:''||:APP_SESSION||''::::::'' link, '||chr(10)||
'         PRODUCT_NAME label, LIST_PRICE value1'||chr(10)||
' from DEMO_PRODUCT_INFO';

wwv_flow_api.create_page_plug (
  p_id=> 7589618759282877 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 5,
  p_plug_name=> 'Horizontal with Minimal Settings',
  p_region_name=>'',
  p_plug_template=> 6617915349850572+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 30,
  p_plug_display_column=> 2,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'SIMPLE_CHART',
  p_translate_title=> 'Y',
  p_plug_display_error_message=> '#SQLERRM#',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_options => 'PARSE_CHART_QUERY',
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_plug_chart_font_size => '-1',
  p_plug_chart_max_rows => '20',
  p_plug_chart_num_mask => '999G999G999G990',
  p_plug_chart_scale => '200',
  p_plug_chart_axis => 'ZERO',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
 a varchar2(32767):=null;
begin
a:=a||'RED';

wwv_flow_api.create_generic_attr(
 p_id=>7589802983282877+wwv_flow_api.g_id_offset,
 p_region_id=>7589618759282877+wwv_flow_api.g_id_offset,
 p_attribute_id=>1,
 p_attribute_value=>a);
end;
/
 
begin
 
null;
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 5
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00006
prompt  ...PAGE 6: Flash Chart Custom Region Source
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 6
 ,p_tab_set => 'TS1'
 ,p_name => 'Flash Chart Custom Region Source'
 ,p_step_title => 'Flash Chart Custom Region Source'
 ,p_step_sub_title => 'Flash Chart Custom Region Source'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_cache_page_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_last_updated_by => 'DIMI'
 ,p_last_upd_yyyymmddhh24miss => '20110226135111'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"'||chr(10)||
'    codebase="#HOST_PROTOCOL#://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0"'||chr(10)||
'    width="#WIDTH#"'||chr(10)||
'    height="#HEIGHT#"'||chr(10)||
'    id="#CHART_NAME#"'||chr(10)||
'    align="top">'||chr(10)||
'<param name="movie" value="#IMAGE_PREFIX#flashchart/anychart_5/swf/#CHART_TYPE#.swf?XMLFile=#HOST#apex_util.flash?p=&APP_ID.:6:&APP_SESSION.:FLOW_FL';

s:=s||'ASH_CHART5_R#REGION_ID#">'||chr(10)||
'<param name="quality" value="high">'||chr(10)||
'<param name="allowScriptAccess" value="sameDomain">'||chr(10)||
'<param name="allowNetworking" value="all">'||chr(10)||
'<param name="scale" value="noscale">'||chr(10)||
'<param name="wmode" value="transparent">'||chr(10)||
'<param name="FlashVars" value="initText=#FLASH_INIT#&xmlLoadingText=Custom Text&resourcesLoadingText=Custom Text&noDataText=Custom Text&waitingForDataText=#FLASH_WAI';

s:=s||'TING#&templatesLoadingText=#FLASH_TEMPLATES#">'||chr(10)||
''||chr(10)||
'<embed src="#IMAGE_PREFIX#flashchart/anychart_5/swf/#CHART_TYPE#.swf?XMLFile=#HOST#apex_util.flash?p=&APP_ID.:6:&APP_SESSION.:FLOW_FLASH_CHART5_R#REGION_ID#"'||chr(10)||
'       quality="high"'||chr(10)||
'       width="#WIDTH#"'||chr(10)||
'       height="#HEIGHT#"'||chr(10)||
'       name="#CHART_NAME#"'||chr(10)||
'       scale="noscale"'||chr(10)||
'       align=""'||chr(10)||
'       allowScriptAccess="sameDomain" '||chr(10)||
'       allowNetwork';

s:=s||'ing="all"'||chr(10)||
'       type="application/x-shockwave-flash"'||chr(10)||
'       pluginspage="#HOST_PROTOCOL#://www.macromedia.com/go/getflashplayer"'||chr(10)||
'       wmode="transparent"'||chr(10)||
'       FlashVars="initText=#FLASH_INIT#&xmlLoadingText=Custom Text&resourcesLoadingText=Custom Text&noDataText=Custom Text&waitingForDataText=Custom Text&templatesLoadingText=#FLASH_TEMPLATES#">'||chr(10)||
'</embed>'||chr(10)||
'</object>'||chr(10)||
'#CHART_REFRESH#';

wwv_flow_api.create_page_plug (
  p_id=> 20500000962118816 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 6,
  p_plug_name=> 'Flash Chart Custom Region Source',
  p_region_name=>'',
  p_plug_template=> 6617915349850572+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'FLASH_CHART5',
  p_translate_title=> 'Y',
  p_plug_display_error_message=> '#SQLERRM#',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
 a1 varchar2(32767) := null;
begin
a1 := null;
wwv_flow_api.create_flash_chart5(
  p_id => 20500214882118820+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id => 6,
  p_region_id => 20500000962118816+wwv_flow_api.g_id_offset,
  p_default_chart_type     =>'3DColumn',
  p_chart_title            =>'Flash Chart Custom Region Source',
  p_chart_name             =>'chart_20500214882118820',
  p_chart_width            =>700,
  p_chart_height           =>500,
  p_chart_animation        =>'N',
  p_display_attr           =>':H:N:V:X:N:N:::Y:None:::N::',
  p_dial_tick_attr         =>'',
  p_gantt_attr             =>'Y:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:30:15:5:Y:I:N:S:E',
  p_map_attr               =>'Orthographic:RegionBounds:REGION_NAME:Y:Y:::::Y:N',
  p_map_source             =>'',
  p_margins                =>'',
  p_omit_label_interval    => null,
  p_bgtype                 =>'Trans',
  p_bgcolor1               =>'',
  p_bgcolor2               =>'',
  p_gradient_rotation      =>null,
  p_grid_bgtype            =>'',
  p_grid_bgcolor1          =>'',
  p_grid_bgcolor2          =>'',
  p_grid_gradient_rotation =>null,
  p_color_scheme           =>'6',
  p_custom_colors          =>'',
  p_map_undef_color_scheme =>'',
  p_map_undef_custom_colors =>'',
  p_x_axis_title           =>'',
  p_x_axis_min             =>null,
  p_x_axis_max             =>null,
  p_x_axis_decimal_place   =>null,
  p_x_axis_prefix          =>'',
  p_x_axis_postfix         =>'',
  p_x_axis_label_rotation  =>'',
  p_x_axis_label_font      =>'',
  p_x_axis_major_interval  =>null,
  p_x_axis_minor_interval  =>null,
  p_y_axis_title           =>'',
  p_y_axis_min             =>null,
  p_y_axis_max             =>null,
  p_y_axis_decimal_place   =>null,
  p_y_axis_prefix          =>'',
  p_y_axis_postfix         =>'',
  p_y_axis_label_rotation  =>'',
  p_y_axis_label_font      =>'',
  p_y_axis_major_interval  =>null,
  p_y_axis_minor_interval  =>null,
  p_async_update           =>'',
  p_async_time             =>null,
  p_legend_title           =>'',
  p_legend_title_font      =>'',
  p_names_font             => null,
  p_names_rotation         => null,
  p_values_font            =>'',
  p_values_rotation        =>null,
  p_values_prefix          =>'',
  p_values_postfix         =>'',
  p_hints_font             =>'Tahoma:10:',
  p_legend_font            =>'',
  p_grid_labels_font       =>'',
  p_chart_title_font       =>'Tahoma:14:',
  p_x_axis_title_font      =>'Tahoma:14:',
  p_x_axis_title_rotation  =>'',
  p_y_axis_title_font      =>'Tahoma:14:',
  p_y_axis_title_rotation  =>'',
  p_gauge_labels_font      =>'Tahoma:10',
  p_use_chart_xml          =>'',
  p_chart_xml              => a1);
end;
/
declare
 a1 varchar2(32767) := null;
begin
a1:=a1||'SELECT NULL LINK,'||chr(10)||
'       ENAME LABEL,'||chr(10)||
'       SAL VALUE'||chr(10)||
'FROM   EMP'||chr(10)||
'ORDER  BY ENAME';

wwv_flow_api.create_flash_chart5_series(
  p_id => 20500311681118830+wwv_flow_api.g_id_offset,
  p_chart_id => 20500214882118820+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_series_seq                =>10,
  p_series_name               =>'Series 1',
  p_series_query              => a1,
  p_series_type               =>'Bar',
  p_series_query_type         =>'SQL_QUERY',
  p_series_query_parse_opt    =>'',
  p_series_query_no_data_found=>'no data found',
  p_series_query_row_count_max=>15,
  p_action_link               =>'',
  p_show_action_link          =>'',
  p_action_link_checksum_type =>'');
end;
/
 
begin
 
null;
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 6
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00007
prompt  ...PAGE 7: Manual Chart with JavaScript
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 7
 ,p_tab_set => 'TS1'
 ,p_name => 'Manual Chart with JavaScript'
 ,p_step_title => 'Manual Chart with JavaScript'
 ,p_allow_duplicate_submissions => 'Y'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'NO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_autocomplete_on_off => 'ON'
 ,p_html_page_header => 
'<script type="text/javascript" src="#IMAGE_PREFIX#flashchart/anychart_5/js/AnyChart.js"></script>'||chr(10)||
''
 ,p_javascript_code => 
'var chart;'
 ,p_page_is_public_y_n => 'N'
 ,p_protection_level => 'N'
 ,p_cache_page_yn => 'N'
 ,p_cache_timeout_seconds => 21600
 ,p_cache_by_user_yn => 'N'
 ,p_last_updated_by => 'DIMI'
 ,p_last_upd_yyyymmddhh24miss => '20110313111648'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<div id="chartDiv"></div>';

wwv_flow_api.create_page_plug (
  p_id=> 26247203551702027 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 7,
  p_plug_name=> 'Manual Chart with JavaScript',
  p_region_name=>'',
  p_plug_template=> 6618921799850573+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_display_error_message=> '#SQLERRM#',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
 
begin
 
null;
 
end;
/

 
begin
 
null;
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>26277527740994506 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 7,
  p_name=>'P7_CHART_XML',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 26247203551702027+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> 4000,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line=> 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'LEFT',
  p_field_alignment=> 'LEFT',
  p_is_persistent=> 'Y',
  p_attribute_01 => 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>26279828358089239 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 7,
  p_name=>'P7_CHART_WIDTH',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 26247203551702027+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Chart Width',
  p_source=>'600',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 10,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 6623130978850590+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>26280001823091043 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 7,
  p_name=>'P7_CHART_HEIGHT',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 30,
  p_item_plug_id => 26247203551702027+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Chart Height',
  p_source=>'400',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 10,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line=> 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 6623130978850590+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_da_event (
  p_id => 26276914103981074 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 7
 ,p_name => 'Load Chart'
 ,p_event_sequence => 10
 ,p_bind_type => 'bind'
 ,p_bind_event_type => 'ready'
  );
wwv_flow_api.create_page_da_action (
  p_id => 26277821291002027 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 7
 ,p_event_id => 26276914103981074 + wwv_flow_api.g_id_offset
 ,p_event_result => 'TRUE'
 ,p_action_sequence => 5
 ,p_execute_on_page_init => 'Y'
 ,p_action => 'NATIVE_SET_VALUE'
 ,p_affected_elements_type => 'ITEM'
 ,p_affected_elements => 'P7_CHART_XML'
 ,p_attribute_01 => 'FUNCTION_BODY'
 ,p_attribute_06 => 'declare'||chr(10)||
'  l_chart varchar2(32767);'||chr(10)||
'  l_xml   clob;'||chr(10)||
'  l_data  varchar2(32767);'||chr(10)||
'begin'||chr(10)||
'  l_chart := ''<anychart>'||chr(10)||
'  <settings>'||chr(10)||
'    <animation enabled="True" />'||chr(10)||
'  </settings>'||chr(10)||
'  <charts>'||chr(10)||
'    <chart plot_type="CategorizedVertical">'||chr(10)||
'      <chart_settings>'||chr(10)||
'        <title enabled="true">'||chr(10)||
'          <text>Multi-Series: Multiple Y-Axes</text>'||chr(10)||
'        </title>'||chr(10)||
'        <axes>'||chr(10)||
'          <x_axis tickmarks_placement="Center">'||chr(10)||
'            <title enabled="true">'||chr(10)||
'              <text>Arguments</text>'||chr(10)||
'            </title>'||chr(10)||
'          </x_axis>'||chr(10)||
'          <y_axis>'||chr(10)||
'            <title enabled="true">'||chr(10)||
'              <text>Primary Y-Axis</text>'||chr(10)||
'              <font color="#135D8C" />'||chr(10)||
'            </title>'||chr(10)||
'            <labels align="Inside">'||chr(10)||
'              <font color="#135D8C" />'||chr(10)||
'            </labels>'||chr(10)||
'          </y_axis>'||chr(10)||
'          <extra>'||chr(10)||
'            <y_axis name="extra_y_axis_1" position="Right">'||chr(10)||
'              <minor_grid enabled="false" />'||chr(10)||
'              <major_grid enabled="false" />'||chr(10)||
'              <title enabled="true">'||chr(10)||
'                <text>Secondary Y-Axis</text>'||chr(10)||
'                <font color="#A4300B" />'||chr(10)||
'              </title>'||chr(10)||
'              <labels align="Inside">'||chr(10)||
'                <font color="#A4300B" />'||chr(10)||
'              </labels>'||chr(10)||
'            </y_axis>'||chr(10)||
'          </extra>'||chr(10)||
'        </axes>'||chr(10)||
'      </chart_settings>'||chr(10)||
'      <data_plot_settings default_series_type="Line">'||chr(10)||
'        <line_series>'||chr(10)||
'          <label_settings enabled="true">'||chr(10)||
'            <background enabled="false" />'||chr(10)||
'            <font color="Rgb(45,45,45)" bold="true" size="9">'||chr(10)||
'              <effects enabled="true">'||chr(10)||
'                <glow enabled="true" color="White" opacity="1" blur_x="1.5" blur_y="1.5" strength="3" />'||chr(10)||
'              </effects>'||chr(10)||
'            </font>'||chr(10)||
'            <format>{%YValue}{numDecimals:0}</format>'||chr(10)||
'          </label_settings>'||chr(10)||
'          <tooltip_settings enabled="true">'||chr(10)||
'            <format>'||chr(10)||
'Value: {%YValue}{numDecimals:2}'||chr(10)||
'Argument: {%Name}'||chr(10)||
'</format>'||chr(10)||
'            <background>'||chr(10)||
'              <border type="Solid" color="DarkColor(%Color)" />'||chr(10)||
'            </background>'||chr(10)||
'            <font color="DarkColor(%Color)" />'||chr(10)||
'          </tooltip_settings>'||chr(10)||
'          <marker_settings enabled="true" />'||chr(10)||
'          <line_style>'||chr(10)||
'            <line thickness="3" />'||chr(10)||
'          </line_style>'||chr(10)||
'        </line_series>'||chr(10)||
'      </data_plot_settings>'||chr(10)||
'      <data>'||chr(10)||
'      #DATA#'||chr(10)||
'      </data>'||chr(10)||
'    </chart>'||chr(10)||
'  </charts>'||chr(10)||
'</anychart>'';'||chr(10)||
''||chr(10)||
'  SELECT xmlelement("series", xmlattributes(''Series 1'' AS "name"), xmlagg( xmlelement("point", xmlattributes(ename AS "name", sal AS "y") ) )).getClobVal()'||chr(10)||
'  INTO l_xml'||chr(10)||
'  FROM emp;'||chr(10)||
''||chr(10)||
'  l_data := l_data || wwv_flow_utilities.clob_to_varchar2(l_xml);'||chr(10)||
''||chr(10)||
'  /* -- without the tooltip'||chr(10)||
'  SELECT xmlelement("series", xmlattributes(''Series 2'' AS "name", ''extra_y_axis_1'' AS "y_axis"), xmlagg( xmlelement("point", xmlattributes(ename AS "name", nvl(comm,0) AS "y") ) )).getClobVal()'||chr(10)||
'  INTO l_xml'||chr(10)||
'  FROM emp;'||chr(10)||
'  */'||chr(10)||
''||chr(10)||
'  SELECT xmlelement("series", xmlattributes(''Series 2'' AS "name", ''extra_y_axis_1'' AS "y_axis"), xmlagg( xmlelement("point", xmlattributes(ename AS "name", nvl(comm,0) AS "y"), xmlelement("tooltip", xmlattributes(''true'' as "enabled"), xmlelement("format", ''Job: '' || job)) ) )).getClobVal()'||chr(10)||
'  INTO l_xml'||chr(10)||
'  FROM emp;'||chr(10)||
''||chr(10)||
'  l_data := l_data || wwv_flow_utilities.clob_to_varchar2(l_xml);'||chr(10)||
''||chr(10)||
'  l_chart := replace(l_chart, ''#DATA#'', l_data);'||chr(10)||
''||chr(10)||
'  return l_chart;'||chr(10)||
'end;'
 ,p_attribute_08 => 'N'
 ,p_stop_execution_on_error => 'Y'
 );
wwv_flow_api.create_page_da_action (
  p_id => 26277206318981084 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 7
 ,p_event_id => 26276914103981074 + wwv_flow_api.g_id_offset
 ,p_event_result => 'TRUE'
 ,p_action_sequence => 10
 ,p_execute_on_page_init => 'N'
 ,p_action => 'NATIVE_JAVASCRIPT_CODE'
 ,p_affected_region_id => 26247203551702027 + wwv_flow_api.g_id_offset
 ,p_attribute_01 => 'chart = new AnyChart(''#IMAGE_PREFIX#flashchart/anychart_5/swf/OracleAnyChart.swf'',''#IMAGE_PREFIX#flashchart/anychart_5/swf/Preloader.swf'');'||chr(10)||
'chart.width = $v(''P7_CHART_WIDTH'');'||chr(10)||
'chart.height = $v(''P7_CHART_HEIGHT'');'||chr(10)||
'chart.setData( $v(''P7_CHART_XML'') );'||chr(10)||
'chart.write(''chartDiv'');'
 ,p_stop_execution_on_error => 'Y'
 );
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_da_event (
  p_id => 26280227450098429 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 7
 ,p_name => 'Change Chart Width'
 ,p_event_sequence => 20
 ,p_triggering_element_type => 'ITEM'
 ,p_triggering_element => 'P7_CHART_WIDTH'
 ,p_bind_type => 'bind'
 ,p_bind_event_type => 'change'
  );
wwv_flow_api.create_page_da_action (
  p_id => 26280515277098431 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 7
 ,p_event_id => 26280227450098429 + wwv_flow_api.g_id_offset
 ,p_event_result => 'TRUE'
 ,p_action_sequence => 10
 ,p_execute_on_page_init => 'N'
 ,p_action => 'NATIVE_JAVASCRIPT_CODE'
 ,p_affected_region_id => 26247203551702027 + wwv_flow_api.g_id_offset
 ,p_attribute_01 => 'chart.width = $v(''P7_CHART_WIDTH'');'||chr(10)||
'chart.write(''chartDiv'');'||chr(10)||
''
 ,p_stop_execution_on_error => 'Y'
 );
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_da_event (
  p_id => 26281706503130265 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 7
 ,p_name => 'Change Chart Height'
 ,p_event_sequence => 30
 ,p_triggering_element_type => 'ITEM'
 ,p_triggering_element => 'P7_CHART_HEIGHT'
 ,p_bind_type => 'bind'
 ,p_bind_event_type => 'change'
  );
wwv_flow_api.create_page_da_action (
  p_id => 26282012233130274 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 7
 ,p_event_id => 26281706503130265 + wwv_flow_api.g_id_offset
 ,p_event_result => 'TRUE'
 ,p_action_sequence => 10
 ,p_execute_on_page_init => 'N'
 ,p_action => 'NATIVE_JAVASCRIPT_CODE'
 ,p_affected_region_id => 26247203551702027 + wwv_flow_api.g_id_offset
 ,p_attribute_01 => 'chart.height = $v(''P7_CHART_HEIGHT'');'||chr(10)||
'chart.write(''chartDiv'');'||chr(10)||
''
 ,p_stop_execution_on_error => 'Y'
 );
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 7
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00008
prompt  ...PAGE 8: Dashboard with Submit
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 8
 ,p_tab_set => 'TS1'
 ,p_name => 'Dashboard with Submit'
 ,p_step_title => 'Dashboard'
 ,p_step_sub_title => 'Dashboard'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_cache_page_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_last_updated_by => 'DIMI'
 ,p_last_upd_yyyymmddhh24miss => '20110316063346'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 26617802939827623 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 8,
  p_plug_name=> 'Dashboard',
  p_region_name=>'',
  p_plug_template=> 6618921799850573+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 60,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_plug_display_error_message=> '#SQLERRM#',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows => 15,
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"'||chr(10)||
'    codebase="#HOST_PROTOCOL#://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0"'||chr(10)||
'    width="#WIDTH#"'||chr(10)||
'    height="#HEIGHT#"'||chr(10)||
'    id="#CHART_NAME#"'||chr(10)||
'    align="top">'||chr(10)||
'<param name="movie" value="#IMAGE_PREFIX#flashchart/anychart_5/swf/#CHART_TYPE#.swf?XMLFile=#HOST#apex_util.flash?p=&APP_ID.:&FLOW_PAGE_ID.:&APP_SES';

s:=s||'SION.:FLOW_FLASH_CHART5_R#REGION_ID#">'||chr(10)||
'<param name="quality" value="high">'||chr(10)||
'<param name="allowScriptAccess" value="sameDomain">'||chr(10)||
'<param name="allowNetworking" value="all">'||chr(10)||
'<param name="scale" value="noscale">'||chr(10)||
'<param name="wmode" value="transparent">'||chr(10)||
'<param name="FlashVars" value="initText=#FLASH_INIT#&xmlLoadingText=#FLASH_LOADING#&resourcesLoadingText=#FLASH_RESOURCES#&noDataText=#FLASH_NO_DATA#&wa';

s:=s||'itingForDataText=#FLASH_WAITING#&templatesLoadingText=#FLASH_TEMPLATES#">'||chr(10)||
''||chr(10)||
'<embed src="#IMAGE_PREFIX#flashchart/anychart_5/swf/#CHART_TYPE#.swf?XMLFile=#HOST#apex_util.flash?p=&APP_ID.:&FLOW_PAGE_ID.:&APP_SESSION.:FLOW_FLASH_CHART5_R#REGION_ID#"'||chr(10)||
'       quality="high"'||chr(10)||
'       width="#WIDTH#"'||chr(10)||
'       height="#HEIGHT#"'||chr(10)||
'       name="#CHART_NAME#"'||chr(10)||
'       scale="noscale"'||chr(10)||
'       align=""'||chr(10)||
'       allowScript';

s:=s||'Access="sameDomain" '||chr(10)||
'       allowNetworking="all"'||chr(10)||
'       type="application/x-shockwave-flash"'||chr(10)||
'       pluginspage="#HOST_PROTOCOL#://www.macromedia.com/go/getflashplayer"'||chr(10)||
'       wmode="transparent"'||chr(10)||
'       FlashVars="initText=#FLASH_INIT#&xmlLoadingText=#FLASH_LOADING#&resourcesLoadingText=#FLASH_RESOURCES#&noDataText=#FLASH_NO_DATA#&waitingForDataText=#FLASH_WAITING#&templatesLoadingText=#FLASH_TEM';

s:=s||'PLATES#">'||chr(10)||
'</embed>'||chr(10)||
'</object>'||chr(10)||
'#CHART_REFRESH#'||chr(10)||
''||chr(10)||
''||chr(10)||
'<script type="text/javascript" language="javascript">'||chr(10)||
'var chartName = ''#CHART_NAME#'';'||chr(10)||
'</script>';

wwv_flow_api.create_page_plug (
  p_id=> 26563214365863704 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 8,
  p_plug_name=> 'Avg, Min and Max Salary per Department',
  p_region_name=>'',
  p_parent_plug_id=>26617802939827623 + wwv_flow_api.g_id_offset,
  p_plug_template=> 0,
  p_plug_display_sequence=> 40,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'REGION_POSITION_01',
  p_plug_source=> s,
  p_plug_source_type=> 'FLASH_CHART5',
  p_translate_title=> 'Y',
  p_plug_display_error_message=> '#SQLERRM#',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_header=> '<div style="left:420px;">',
  p_plug_footer=> '</div>',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
 a1 varchar2(32767) := null;
begin
a1 := null;
wwv_flow_api.create_flash_chart5(
  p_id => 26563415053863708+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id => 8,
  p_region_id => 26563214365863704+wwv_flow_api.g_id_offset,
  p_default_chart_type     =>'2DColumn',
  p_chart_title            =>'',
  p_chart_name             =>'chart_26563023273861015',
  p_chart_width            =>450,
  p_chart_height           =>300,
  p_chart_animation        =>'N',
  p_display_attr           =>':H:N:V:X:N:Right::V:Y:None:::N:::Default',
  p_dial_tick_attr         =>':::::::::::',
  p_gantt_attr             =>'Y:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:30:15:5:Y:I:N:S:E',
  p_map_attr               =>'Orthographic:RegionBounds:REGION_NAME',
  p_map_source             =>'',
  p_margins                =>':::',
  p_omit_label_interval    => null,
  p_bgtype                 =>'Trans',
  p_bgcolor1               =>'',
  p_bgcolor2               =>'',
  p_gradient_rotation      =>null,
  p_grid_bgtype            =>'',
  p_grid_bgcolor1          =>'',
  p_grid_bgcolor2          =>'',
  p_grid_gradient_rotation =>null,
  p_color_scheme           =>'4',
  p_custom_colors          =>'',
  p_map_undef_color_scheme =>'',
  p_map_undef_custom_colors =>'',
  p_x_axis_title           =>'',
  p_x_axis_min             =>null,
  p_x_axis_max             =>null,
  p_x_axis_decimal_place   =>null,
  p_x_axis_prefix          =>'',
  p_x_axis_postfix         =>'',
  p_x_axis_label_rotation  =>'',
  p_x_axis_label_font      =>'Tahoma:10:#000000',
  p_x_axis_major_interval  =>null,
  p_x_axis_minor_interval  =>null,
  p_y_axis_title           =>'',
  p_y_axis_min             =>null,
  p_y_axis_max             =>null,
  p_y_axis_decimal_place   =>null,
  p_y_axis_prefix          =>'',
  p_y_axis_postfix         =>'',
  p_y_axis_label_rotation  =>'',
  p_y_axis_label_font      =>'Tahoma:10:#000000',
  p_y_axis_major_interval  =>null,
  p_y_axis_minor_interval  =>null,
  p_async_update           =>'N',
  p_async_time             =>null,
  p_legend_title           =>'Legend',
  p_legend_title_font      =>'',
  p_names_font             => null,
  p_names_rotation         => null,
  p_values_font            =>'Arial:10:#000000',
  p_values_rotation        =>null,
  p_values_prefix          =>'',
  p_values_postfix         =>'',
  p_hints_font             =>'Tahoma:10:#000000',
  p_legend_font            =>'Arial:10:#000000',
  p_grid_labels_font       =>'',
  p_chart_title_font       =>'Tahoma:14:#000000',
  p_x_axis_title_font      =>'Tahoma:14:#000000',
  p_x_axis_title_rotation  =>'',
  p_y_axis_title_font      =>'Tahoma:14:#000000',
  p_y_axis_title_rotation  =>'',
  p_gauge_labels_font      =>'Tahoma:10:',
  p_use_chart_xml          =>'N',
  p_chart_xml              => a1);
end;
/
declare
 a1 varchar2(32767) := null;
begin
a1:=a1||'SELECT NULL LINK,'||chr(10)||
'       d.dname LABEL,'||chr(10)||
'       avg(e.SAL) as "Average Salary",'||chr(10)||
'       min(e.SAL) as "Minimum Salary",'||chr(10)||
'       max(e.SAL) as "Maximum Salary"'||chr(10)||
'FROM   '||chr(10)||
'       emp e, dept d'||chr(10)||
'where e.deptno = d.deptno'||chr(10)||
'   and d.deptno = nvl(:P8_DEPTNO, d.deptno)'||chr(10)||
'group by d.dname'||chr(10)||
'ORDER  BY d.dname';

wwv_flow_api.create_flash_chart5_series(
  p_id => 26563505521863708+wwv_flow_api.g_id_offset,
  p_chart_id => 26563415053863708+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_series_seq                =>10,
  p_series_name               =>'Series 1',
  p_series_query              => a1,
  p_series_type               =>'Bar',
  p_series_query_type         =>'SQL_QUERY',
  p_series_query_parse_opt    =>'PARSE_CHART_QUERY',
  p_series_query_no_data_found=>'no data found',
  p_series_query_row_count_max=>15,
  p_action_link               =>'',
  p_show_action_link          =>'N',
  p_action_link_checksum_type =>'');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"'||chr(10)||
'    codebase="#HOST_PROTOCOL#://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0"'||chr(10)||
'    width="#WIDTH#"'||chr(10)||
'    height="#HEIGHT#"'||chr(10)||
'    id="#CHART_NAME#"'||chr(10)||
'    align="top">'||chr(10)||
'<param name="movie" value="#IMAGE_PREFIX#flashchart/anychart_5/swf/#CHART_TYPE#.swf?XMLFile=#HOST#apex_util.flash?p=&APP_ID.:8:&APP_SESSION.:FLOW_FL';

s:=s||'ASH_CHART5_R#REGION_ID#">'||chr(10)||
'<param name="quality" value="high">'||chr(10)||
'<param name="allowScriptAccess" value="sameDomain">'||chr(10)||
'<param name="allowNetworking" value="all">'||chr(10)||
'<param name="scale" value="noscale">'||chr(10)||
'<param name="wmode" value="transparent">'||chr(10)||
'<param name="FlashVars" value="initText=#FLASH_INIT#&xmlLoadingText=#FLASH_LOADING#&resourcesLoadingText=#FLASH_RESOURCES#&noDataText=#FLASH_NO_DATA#&waitingForDataT';

s:=s||'ext=#FLASH_WAITING#&templatesLoadingText=#FLASH_TEMPLATES#">'||chr(10)||
''||chr(10)||
'<embed src="#IMAGE_PREFIX#flashchart/anychart_5/swf/#CHART_TYPE#.swf?XMLFile=#HOST#apex_util.flash?p=&APP_ID.:8:&APP_SESSION.:FLOW_FLASH_CHART5_R#REGION_ID#"'||chr(10)||
'       quality="high"'||chr(10)||
'       width="#WIDTH#"'||chr(10)||
'       height="#HEIGHT#"'||chr(10)||
'       name="#CHART_NAME#"'||chr(10)||
'       scale="noscale"'||chr(10)||
'       align=""'||chr(10)||
'       allowScriptAccess="sameDomain" '||chr(10)||
'     ';

s:=s||'  allowNetworking="all"'||chr(10)||
'       type="application/x-shockwave-flash"'||chr(10)||
'       pluginspage="#HOST_PROTOCOL#://www.macromedia.com/go/getflashplayer"'||chr(10)||
'       wmode="transparent"'||chr(10)||
'       FlashVars="initText=#FLASH_INIT#&xmlLoadingText=#FLASH_LOADING#&resourcesLoadingText=#FLASH_RESOURCES#&noDataText=#FLASH_NO_DATA#&waitingForDataText=#FLASH_WAITING#&templatesLoadingText=#FLASH_TEMPLATES#">'||chr(10)||
'</embed>'||chr(10)||
'</objec';

s:=s||'t>'||chr(10)||
'#CHART_REFRESH#'||chr(10)||
'';

wwv_flow_api.create_page_plug (
  p_id=> 26565803349040292 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 8,
  p_plug_name=> 'Salary by Department',
  p_region_name=>'',
  p_parent_plug_id=>26617802939827623 + wwv_flow_api.g_id_offset,
  p_plug_template=> 0,
  p_plug_display_sequence=> 20,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'REGION_POSITION_01',
  p_plug_source=> s,
  p_plug_source_type=> 'FLASH_CHART5',
  p_translate_title=> 'Y',
  p_plug_display_error_message=> '#SQLERRM#',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_header=> '<div style="float:left;">',
  p_plug_footer=> '</div>',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
 a1 varchar2(32767) := null;
begin
a1 := null;
wwv_flow_api.create_flash_chart5(
  p_id => 26566027413040296+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id => 8,
  p_region_id => 26565803349040292+wwv_flow_api.g_id_offset,
  p_default_chart_type     =>'2DPie',
  p_chart_title            =>'',
  p_chart_name             =>'chart_26566027413040296',
  p_chart_width            =>400,
  p_chart_height           =>280,
  p_chart_animation        =>'N',
  p_display_attr           =>':H:::::Bottom::H:Y:None:::N:::Default',
  p_dial_tick_attr         =>':::::::::::',
  p_gantt_attr             =>'Y:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:30:15:5:Y:I:N:S:E',
  p_map_attr               =>'Orthographic:RegionBounds:REGION_NAME',
  p_map_source             =>'',
  p_margins                =>':::',
  p_omit_label_interval    => null,
  p_bgtype                 =>'Trans',
  p_bgcolor1               =>'',
  p_bgcolor2               =>'',
  p_gradient_rotation      =>null,
  p_grid_bgtype            =>'',
  p_grid_bgcolor1          =>'',
  p_grid_bgcolor2          =>'',
  p_grid_gradient_rotation =>null,
  p_color_scheme           =>'6',
  p_custom_colors          =>'',
  p_map_undef_color_scheme =>'',
  p_map_undef_custom_colors =>'',
  p_x_axis_title           =>'',
  p_x_axis_min             =>null,
  p_x_axis_max             =>null,
  p_x_axis_decimal_place   =>null,
  p_x_axis_prefix          =>'',
  p_x_axis_postfix         =>'',
  p_x_axis_label_rotation  =>'',
  p_x_axis_label_font      =>'::',
  p_x_axis_major_interval  =>null,
  p_x_axis_minor_interval  =>null,
  p_y_axis_title           =>'',
  p_y_axis_min             =>null,
  p_y_axis_max             =>null,
  p_y_axis_decimal_place   =>null,
  p_y_axis_prefix          =>'',
  p_y_axis_postfix         =>'',
  p_y_axis_label_rotation  =>'',
  p_y_axis_label_font      =>'::',
  p_y_axis_major_interval  =>null,
  p_y_axis_minor_interval  =>null,
  p_async_update           =>'N',
  p_async_time             =>null,
  p_legend_title           =>'Legend',
  p_legend_title_font      =>'',
  p_names_font             => null,
  p_names_rotation         => null,
  p_values_font            =>'Arial:10:#000000',
  p_values_rotation        =>null,
  p_values_prefix          =>'',
  p_values_postfix         =>'',
  p_hints_font             =>'Tahoma:10:#000000',
  p_legend_font            =>'Arial:10:#000000',
  p_grid_labels_font       =>'',
  p_chart_title_font       =>'Tahoma:14:#000000',
  p_x_axis_title_font      =>'Tahoma:14:',
  p_x_axis_title_rotation  =>'',
  p_y_axis_title_font      =>'Tahoma:14:',
  p_y_axis_title_rotation  =>'',
  p_gauge_labels_font      =>'Tahoma:10:',
  p_use_chart_xml          =>'N',
  p_chart_xml              => a1);
end;
/
declare
 a1 varchar2(32767) := null;
begin
a1:=a1||'SELECT ''f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::::P8_DEPTNO:''||d.deptno LINK,'||chr(10)||
'       d.dname LABEL,'||chr(10)||
'       sum(e.SAL) sal'||chr(10)||
'FROM   emp e, dept d'||chr(10)||
'where e.deptno = d.deptno'||chr(10)||
'group by ''f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::::P8_DEPTNO:''||d.deptno, d.dname'||chr(10)||
'ORDER  BY d.dname';

wwv_flow_api.create_flash_chart5_series(
  p_id => 26566100649040296+wwv_flow_api.g_id_offset,
  p_chart_id => 26566027413040296+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_series_seq                =>10,
  p_series_name               =>'Series 1',
  p_series_query              => a1,
  p_series_type               =>'',
  p_series_query_type         =>'SQL_QUERY',
  p_series_query_parse_opt    =>'',
  p_series_query_no_data_found=>'No data found.',
  p_series_query_row_count_max=>15,
  p_action_link               =>'',
  p_show_action_link          =>'',
  p_action_link_checksum_type =>'');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"'||chr(10)||
'    codebase="#HOST_PROTOCOL#://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0"'||chr(10)||
'    width="#WIDTH#"'||chr(10)||
'    height="#HEIGHT#"'||chr(10)||
'    id="#CHART_NAME#"'||chr(10)||
'    align="top">'||chr(10)||
'<param name="movie" value="#IMAGE_PREFIX#flashchart/anychart_5/swf/#CHART_TYPE#.swf?XMLFile=#HOST#apex_util.flash?p=&APP_ID.:&FLOW_PAGE_ID.:&APP_SES';

s:=s||'SION.:FLOW_FLASH_CHART5_R#REGION_ID#">'||chr(10)||
'<param name="quality" value="high">'||chr(10)||
'<param name="allowScriptAccess" value="sameDomain">'||chr(10)||
'<param name="allowNetworking" value="all">'||chr(10)||
'<param name="scale" value="noscale">'||chr(10)||
'<param name="wmode" value="transparent">'||chr(10)||
'<param name="FlashVars" value="initText=#FLASH_INIT#&xmlLoadingText=#FLASH_LOADING#&resourcesLoadingText=#FLASH_RESOURCES#&noDataText=#FLASH_NO_DATA#&wa';

s:=s||'itingForDataText=#FLASH_WAITING#&templatesLoadingText=#FLASH_TEMPLATES#">'||chr(10)||
''||chr(10)||
'<embed src="#IMAGE_PREFIX#flashchart/anychart_5/swf/#CHART_TYPE#.swf?XMLFile=#HOST#apex_util.flash?p=&APP_ID.:&FLOW_PAGE_ID.:&APP_SESSION.:FLOW_FLASH_CHART5_R#REGION_ID#"'||chr(10)||
'       quality="high"'||chr(10)||
'       width="#WIDTH#"'||chr(10)||
'       height="#HEIGHT#"'||chr(10)||
'       name="#CHART_NAME#"'||chr(10)||
'       scale="noscale"'||chr(10)||
'       align=""'||chr(10)||
'       allowScript';

s:=s||'Access="sameDomain" '||chr(10)||
'       allowNetworking="all"'||chr(10)||
'       type="application/x-shockwave-flash"'||chr(10)||
'       pluginspage="#HOST_PROTOCOL#://www.macromedia.com/go/getflashplayer"'||chr(10)||
'       wmode="transparent"'||chr(10)||
'       FlashVars="initText=#FLASH_INIT#&xmlLoadingText=#FLASH_LOADING#&resourcesLoadingText=#FLASH_RESOURCES#&noDataText=#FLASH_NO_DATA#&waitingForDataText=#FLASH_WAITING#&templatesLoadingText=#FLASH_TEM';

s:=s||'PLATES#">'||chr(10)||
'</embed>'||chr(10)||
'</object>'||chr(10)||
'#CHART_REFRESH#';

wwv_flow_api.create_page_plug (
  p_id=> 26615225702777488 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 8,
  p_plug_name=> 'Salary by Employee',
  p_region_name=>'',
  p_parent_plug_id=>26617802939827623 + wwv_flow_api.g_id_offset,
  p_plug_template=> 6617016514850567+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 50,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'REGION_POSITION_04',
  p_plug_source=> s,
  p_plug_source_type=> 'FLASH_CHART5',
  p_translate_title=> 'Y',
  p_plug_display_error_message=> '#SQLERRM#',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
 a1 varchar2(32767) := null;
begin
a1 := null;
wwv_flow_api.create_flash_chart5(
  p_id => 26615412273777503+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id => 8,
  p_region_id => 26615225702777488+wwv_flow_api.g_id_offset,
  p_default_chart_type     =>'3DColumn',
  p_chart_title            =>'',
  p_chart_name             =>'chart_26563023273861015',
  p_chart_width            =>800,
  p_chart_height           =>300,
  p_chart_animation        =>'N',
  p_display_attr           =>':H:N:V:X:N:N::V:Y:None:::N:::Default',
  p_dial_tick_attr         =>':::::::::::',
  p_gantt_attr             =>'Y:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:30:15:5:Y:I:N:S:E',
  p_map_attr               =>'Orthographic:RegionBounds:REGION_NAME',
  p_map_source             =>'',
  p_margins                =>':::',
  p_omit_label_interval    => null,
  p_bgtype                 =>'Trans',
  p_bgcolor1               =>'',
  p_bgcolor2               =>'',
  p_gradient_rotation      =>null,
  p_grid_bgtype            =>'',
  p_grid_bgcolor1          =>'',
  p_grid_bgcolor2          =>'',
  p_grid_gradient_rotation =>null,
  p_color_scheme           =>'6',
  p_custom_colors          =>'',
  p_map_undef_color_scheme =>'',
  p_map_undef_custom_colors =>'',
  p_x_axis_title           =>'',
  p_x_axis_min             =>null,
  p_x_axis_max             =>null,
  p_x_axis_decimal_place   =>null,
  p_x_axis_prefix          =>'',
  p_x_axis_postfix         =>'',
  p_x_axis_label_rotation  =>'',
  p_x_axis_label_font      =>'Tahoma:10:#000000',
  p_x_axis_major_interval  =>null,
  p_x_axis_minor_interval  =>null,
  p_y_axis_title           =>'',
  p_y_axis_min             =>null,
  p_y_axis_max             =>null,
  p_y_axis_decimal_place   =>null,
  p_y_axis_prefix          =>'',
  p_y_axis_postfix         =>'',
  p_y_axis_label_rotation  =>'',
  p_y_axis_label_font      =>'Tahoma:10:#000000',
  p_y_axis_major_interval  =>null,
  p_y_axis_minor_interval  =>null,
  p_async_update           =>'N',
  p_async_time             =>null,
  p_legend_title           =>'',
  p_legend_title_font      =>'',
  p_names_font             => null,
  p_names_rotation         => null,
  p_values_font            =>'Arial:10:#000000',
  p_values_rotation        =>null,
  p_values_prefix          =>'',
  p_values_postfix         =>'',
  p_hints_font             =>'Tahoma:10:#000000',
  p_legend_font            =>'Arial:10:#000000',
  p_grid_labels_font       =>'',
  p_chart_title_font       =>'Tahoma:14:#000000',
  p_x_axis_title_font      =>'Tahoma:14:#000000',
  p_x_axis_title_rotation  =>'',
  p_y_axis_title_font      =>'Tahoma:14:#000000',
  p_y_axis_title_rotation  =>'',
  p_gauge_labels_font      =>'Tahoma:10:',
  p_use_chart_xml          =>'N',
  p_chart_xml              => a1);
end;
/
declare
 a1 varchar2(32767) := null;
begin
a1:=a1||'SELECT NULL LINK,'||chr(10)||
'       ENAME LABEL,'||chr(10)||
'       SAL VALUE'||chr(10)||
'FROM   EMP'||chr(10)||
'where deptno = nvl(:P8_DEPTNO, deptno)'||chr(10)||
'ORDER  BY ENAME';

wwv_flow_api.create_flash_chart5_series(
  p_id => 26615507640777506+wwv_flow_api.g_id_offset,
  p_chart_id => 26615412273777503+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_series_seq                =>10,
  p_series_name               =>'Series 1',
  p_series_query              => a1,
  p_series_type               =>'Bar',
  p_series_query_type         =>'SQL_QUERY',
  p_series_query_parse_opt    =>'PARSE_CHART_QUERY',
  p_series_query_no_data_found=>'no data found',
  p_series_query_row_count_max=>15,
  p_action_link               =>'',
  p_show_action_link          =>'N',
  p_action_link_checksum_type =>'');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 26565324511999038 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 8,
  p_button_sequence=> 10,
  p_button_plug_id => 26617802939827623+wwv_flow_api.g_id_offset,
  p_button_name    => 'ALL_DEPARTMENTS',
  p_button_image   => 'template:'||to_char(6616312293850562+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'All Departments',
  p_button_position=> 'TOP',
  p_button_alignment=> 'LEFT',
  p_button_redirect_url=> 'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:8::',
  p_button_execute_validations=>'Y',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
null;
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>26565104509974397 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 8,
  p_name=>'P8_DEPTNO',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 26565803349040292+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line=> 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'LEFT',
  p_field_alignment=> 'LEFT',
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'Y',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 8
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00009
prompt  ...PAGE 9: Horizontal Range Bar
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 9
 ,p_tab_set => 'TS1'
 ,p_name => 'Horizontal Range Bar'
 ,p_step_title => 'Horizontal Range Bar'
 ,p_step_sub_title => 'Horizontal Range Bar'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_cache_page_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_last_updated_by => 'DIMI'
 ,p_last_upd_yyyymmddhh24miss => '20110226150015'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"'||chr(10)||
'    codebase="#HOST_PROTOCOL#://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0"'||chr(10)||
'    width="#WIDTH#"'||chr(10)||
'    height="#HEIGHT#"'||chr(10)||
'    id="#CHART_NAME#"'||chr(10)||
'    align="top">'||chr(10)||
'<param name="movie" value="#IMAGE_PREFIX#flashchart/anychart_5/swf/#CHART_TYPE#.swf?XMLFile=#HOST#apex_util.flash?p=&APP_ID.:9:&APP_SESSION.:FLOW_FL';

s:=s||'ASH_CHART5_R#REGION_ID#">'||chr(10)||
'<param name="quality" value="high">'||chr(10)||
'<param name="allowScriptAccess" value="sameDomain">'||chr(10)||
'<param name="allowNetworking" value="all">'||chr(10)||
'<param name="scale" value="noscale">'||chr(10)||
'<param name="wmode" value="transparent">'||chr(10)||
'<param name="FlashVars" value="initText=#FLASH_INIT#&xmlLoadingText=#FLASH_LOADING#&resourcesLoadingText=#FLASH_RESOURCES#&noDataText=#FLASH_NO_DATA#&waitingForDataT';

s:=s||'ext=#FLASH_WAITING#&templatesLoadingText=#FLASH_TEMPLATES#">'||chr(10)||
''||chr(10)||
'<embed src="#IMAGE_PREFIX#flashchart/anychart_5/swf/#CHART_TYPE#.swf?XMLFile=#HOST#apex_util.flash?p=&APP_ID.:9:&APP_SESSION.:FLOW_FLASH_CHART5_R#REGION_ID#"'||chr(10)||
'       quality="high"'||chr(10)||
'       width="#WIDTH#"'||chr(10)||
'       height="#HEIGHT#"'||chr(10)||
'       name="#CHART_NAME#"'||chr(10)||
'       scale="noscale"'||chr(10)||
'       align=""'||chr(10)||
'       allowScriptAccess="sameDomain" '||chr(10)||
'     ';

s:=s||'  allowNetworking="all"'||chr(10)||
'       type="application/x-shockwave-flash"'||chr(10)||
'       pluginspage="#HOST_PROTOCOL#://www.macromedia.com/go/getflashplayer"'||chr(10)||
'       wmode="transparent"'||chr(10)||
'       FlashVars="initText=#FLASH_INIT#&xmlLoadingText=#FLASH_LOADING#&resourcesLoadingText=#FLASH_RESOURCES#&noDataText=#FLASH_NO_DATA#&waitingForDataText=#FLASH_WAITING#&templatesLoadingText=#FLASH_TEMPLATES#">'||chr(10)||
'</embed>'||chr(10)||
'</objec';

s:=s||'t>'||chr(10)||
'#CHART_REFRESH#';

wwv_flow_api.create_page_plug (
  p_id=> 20536506515774390 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 9,
  p_plug_name=> 'Horizontal Range Bar',
  p_region_name=>'',
  p_plug_template=> 6617915349850572+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'FLASH_CHART5',
  p_translate_title=> 'Y',
  p_plug_display_error_message=> '#SQLERRM#',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
 a1 varchar2(32767) := null;
begin
a1 := null;
wwv_flow_api.create_flash_chart5(
  p_id => 20536712395774392+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id => 9,
  p_region_id => 20536506515774390+wwv_flow_api.g_id_offset,
  p_default_chart_type     =>'HorizontalRange3DColumn',
  p_chart_title            =>'Salary by Employees',
  p_chart_name             =>'chart_20536712395774392',
  p_chart_width            =>700,
  p_chart_height           =>500,
  p_chart_animation        =>'N',
  p_display_attr           =>':H:N:V:X:N:N:::Y:None:::N::',
  p_dial_tick_attr         =>'',
  p_gantt_attr             =>'Y:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:30:15:5:Y:I:N:S:E',
  p_map_attr               =>'Orthographic:RegionBounds:REGION_NAME:Y:Y:::::Y:N',
  p_map_source             =>'',
  p_margins                =>'',
  p_omit_label_interval    => null,
  p_bgtype                 =>'Trans',
  p_bgcolor1               =>'',
  p_bgcolor2               =>'',
  p_gradient_rotation      =>null,
  p_grid_bgtype            =>'',
  p_grid_bgcolor1          =>'',
  p_grid_bgcolor2          =>'',
  p_grid_gradient_rotation =>null,
  p_color_scheme           =>'6',
  p_custom_colors          =>'',
  p_map_undef_color_scheme =>'',
  p_map_undef_custom_colors =>'',
  p_x_axis_title           =>'',
  p_x_axis_min             =>null,
  p_x_axis_max             =>null,
  p_x_axis_decimal_place   =>null,
  p_x_axis_prefix          =>'',
  p_x_axis_postfix         =>'',
  p_x_axis_label_rotation  =>'',
  p_x_axis_label_font      =>'',
  p_x_axis_major_interval  =>null,
  p_x_axis_minor_interval  =>null,
  p_y_axis_title           =>'',
  p_y_axis_min             =>null,
  p_y_axis_max             =>null,
  p_y_axis_decimal_place   =>null,
  p_y_axis_prefix          =>'',
  p_y_axis_postfix         =>'',
  p_y_axis_label_rotation  =>'',
  p_y_axis_label_font      =>'',
  p_y_axis_major_interval  =>null,
  p_y_axis_minor_interval  =>null,
  p_async_update           =>'',
  p_async_time             =>null,
  p_legend_title           =>'',
  p_legend_title_font      =>'',
  p_names_font             => null,
  p_names_rotation         => null,
  p_values_font            =>'',
  p_values_rotation        =>null,
  p_values_prefix          =>'',
  p_values_postfix         =>'',
  p_hints_font             =>'Tahoma:10:',
  p_legend_font            =>'',
  p_grid_labels_font       =>'',
  p_chart_title_font       =>'Tahoma:14:',
  p_x_axis_title_font      =>'Tahoma:14:',
  p_x_axis_title_rotation  =>'',
  p_y_axis_title_font      =>'Tahoma:14:',
  p_y_axis_title_rotation  =>'',
  p_gauge_labels_font      =>'Tahoma:10',
  p_use_chart_xml          =>'',
  p_chart_xml              => a1);
end;
/
declare
 a1 varchar2(32767) := null;
begin
a1:=a1||'SELECT NULL LINK,'||chr(10)||
'       ENAME LABEL,'||chr(10)||
'       SAL / 2 OPEN_VALUE,'||chr(10)||
'       SAL*10 CLOSE_VALUE'||chr(10)||
'FROM   EMP   ';

wwv_flow_api.create_flash_chart5_series(
  p_id => 20536809549774393+wwv_flow_api.g_id_offset,
  p_chart_id => 20536712395774392+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_series_seq                =>10,
  p_series_name               =>'Series 1',
  p_series_query              => a1,
  p_series_type               =>'',
  p_series_query_type         =>'SQL_QUERY',
  p_series_query_parse_opt    =>'',
  p_series_query_no_data_found=>'no data found',
  p_series_query_row_count_max=>15,
  p_action_link               =>'',
  p_show_action_link          =>'',
  p_action_link_checksum_type =>'');
end;
/
 
begin
 
null;
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 9
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00010
prompt  ...PAGE 10: Simple Dashboard with JavaScript
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 10
 ,p_tab_set => 'TS1'
 ,p_name => 'Simple Dashboard with JavaScript'
 ,p_step_title => 'Simple Dashboard with JavaScript'
 ,p_step_sub_title => 'Simple Dashboard with JavaScript'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_cache_page_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_last_updated_by => 'DIMI'
 ,p_last_upd_yyyymmddhh24miss => '20110315104158'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 26629120135053006 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 10,
  p_plug_name=> 'Dashboard',
  p_region_name=>'',
  p_plug_template=> 6618921799850573+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 60,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_plug_display_error_message=> '#SQLERRM#',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows => 15,
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'select EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM'||chr(10)||
' from emp'||chr(10)||
'where deptno = nvl(:P10_DEPTNO, deptno)';

wwv_flow_api.create_report_region (
  p_id=> 26773823379959614 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 10,
  p_name=> 'Salary by Employees (Report)',
  p_region_name=>'',
  p_template=> 6619015750850573+ wwv_flow_api.g_id_offset,
  p_display_sequence=> 70,
  p_display_column=> 1,
  p_display_point=> 'AFTER_SHOW_ITEMS',
  p_source=> s,
  p_source_type=> 'SQL_QUERY',
  p_display_error_message=> '#SQLERRM#',
  p_plug_caching=> 'NOT_CACHED',
  p_customized=> '0',
  p_translate_title=> 'Y',
  p_ajax_enabled=> 'Y',
  p_query_row_template=> 6622506965850587+ wwv_flow_api.g_id_offset,
  p_query_headings_type=> 'COLON_DELMITED_LIST',
  p_query_options=> 'DERIVED_REPORT_COLUMNS',
  p_query_show_nulls_as=> ' - ',
  p_query_no_data_found=> 'no data found',
  p_query_num_rows_type=> 'NEXT_PREVIOUS_LINKS',
  p_pagination_display_position=> 'BOTTOM_RIGHT',
  p_query_asc_image=> 'apex/builder/dup.gif',
  p_query_asc_image_attr=> 'width="16" height="16" alt="" ',
  p_query_desc_image=> 'apex/builder/ddown.gif',
  p_query_desc_image_attr=> 'width="16" height="16" alt="" ',
  p_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 26774118857959623 + wwv_flow_api.g_id_offset,
  p_region_id=> 26773823379959614 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 1,
  p_form_element_id=> null,
  p_column_alias=> 'EMPNO',
  p_column_display_sequence=> 1,
  p_column_heading=> 'EMPNO',
  p_column_alignment=>'LEFT',
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 26774200914959632 + wwv_flow_api.g_id_offset,
  p_region_id=> 26773823379959614 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 2,
  p_form_element_id=> null,
  p_column_alias=> 'ENAME',
  p_column_display_sequence=> 2,
  p_column_heading=> 'ENAME',
  p_column_alignment=>'LEFT',
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 26774309071959632 + wwv_flow_api.g_id_offset,
  p_region_id=> 26773823379959614 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 3,
  p_form_element_id=> null,
  p_column_alias=> 'JOB',
  p_column_display_sequence=> 3,
  p_column_heading=> 'JOB',
  p_column_alignment=>'LEFT',
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 26774400012959632 + wwv_flow_api.g_id_offset,
  p_region_id=> 26773823379959614 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 4,
  p_form_element_id=> null,
  p_column_alias=> 'MGR',
  p_column_display_sequence=> 4,
  p_column_heading=> 'MGR',
  p_column_alignment=>'LEFT',
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 26774502574959632 + wwv_flow_api.g_id_offset,
  p_region_id=> 26773823379959614 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 5,
  p_form_element_id=> null,
  p_column_alias=> 'HIREDATE',
  p_column_display_sequence=> 5,
  p_column_heading=> 'HIREDATE',
  p_column_alignment=>'LEFT',
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 26774619970959632 + wwv_flow_api.g_id_offset,
  p_region_id=> 26773823379959614 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 6,
  p_form_element_id=> null,
  p_column_alias=> 'SAL',
  p_column_display_sequence=> 6,
  p_column_heading=> 'SAL',
  p_column_alignment=>'LEFT',
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 26774708605959632 + wwv_flow_api.g_id_offset,
  p_region_id=> 26773823379959614 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 7,
  p_form_element_id=> null,
  p_column_alias=> 'COMM',
  p_column_display_sequence=> 7,
  p_column_heading=> 'COMM',
  p_column_alignment=>'LEFT',
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"'||chr(10)||
'    codebase="#HOST_PROTOCOL#://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0"'||chr(10)||
'    width="#WIDTH#"'||chr(10)||
'    height="#HEIGHT#"'||chr(10)||
'    id="#CHART_NAME#"'||chr(10)||
'    align="top">'||chr(10)||
'<param name="movie" value="#IMAGE_PREFIX#flashchart/anychart_5/swf/#CHART_TYPE#.swf?XMLFile=#HOST#apex_util.flash?p=&APP_ID.:&FLOW_PAGE_ID.:&APP_SES';

s:=s||'SION.:FLOW_FLASH_CHART5_R#REGION_ID#">'||chr(10)||
'<param name="quality" value="high">'||chr(10)||
'<param name="allowScriptAccess" value="sameDomain">'||chr(10)||
'<param name="allowNetworking" value="all">'||chr(10)||
'<param name="scale" value="noscale">'||chr(10)||
'<param name="wmode" value="transparent">'||chr(10)||
'<param name="FlashVars" value="initText=#FLASH_INIT#&xmlLoadingText=#FLASH_LOADING#&resourcesLoadingText=#FLASH_RESOURCES#&noDataText=#FLASH_NO_DATA#&wa';

s:=s||'itingForDataText=#FLASH_WAITING#&templatesLoadingText=#FLASH_TEMPLATES#">'||chr(10)||
''||chr(10)||
'<embed src="#IMAGE_PREFIX#flashchart/anychart_5/swf/#CHART_TYPE#.swf?XMLFile=#HOST#apex_util.flash?p=&APP_ID.:&FLOW_PAGE_ID.:&APP_SESSION.:FLOW_FLASH_CHART5_R#REGION_ID#"'||chr(10)||
'       quality="high"'||chr(10)||
'       width="#WIDTH#"'||chr(10)||
'       height="#HEIGHT#"'||chr(10)||
'       name="#CHART_NAME#"'||chr(10)||
'       scale="noscale"'||chr(10)||
'       align=""'||chr(10)||
'       allowScript';

s:=s||'Access="sameDomain" '||chr(10)||
'       allowNetworking="all"'||chr(10)||
'       type="application/x-shockwave-flash"'||chr(10)||
'       pluginspage="#HOST_PROTOCOL#://www.macromedia.com/go/getflashplayer"'||chr(10)||
'       wmode="transparent"'||chr(10)||
'       FlashVars="initText=#FLASH_INIT#&xmlLoadingText=#FLASH_LOADING#&resourcesLoadingText=#FLASH_RESOURCES#&noDataText=#FLASH_NO_DATA#&waitingForDataText=#FLASH_WAITING#&templatesLoadingText=#FLASH_TEM';

s:=s||'PLATES#">'||chr(10)||
'</embed>'||chr(10)||
'</object>'||chr(10)||
'#CHART_REFRESH#'||chr(10)||
''||chr(10)||
''||chr(10)||
'<script type="text/javascript" language="javascript">'||chr(10)||
'var chartNameAvg = ''#CHART_NAME#'';'||chr(10)||
'</script>';

wwv_flow_api.create_page_plug (
  p_id=> 26629301724053009 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 10,
  p_plug_name=> 'Avg, Min and Max Salary per Department',
  p_region_name=>'',
  p_parent_plug_id=>26629120135053006 + wwv_flow_api.g_id_offset,
  p_plug_template=> 0,
  p_plug_display_sequence=> 40,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'FLASH_CHART5',
  p_translate_title=> 'Y',
  p_plug_display_error_message=> '#SQLERRM#',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_header=> '<div style="left:420px;">',
  p_plug_footer=> '</div>',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
 a1 varchar2(32767) := null;
begin
a1 := null;
wwv_flow_api.create_flash_chart5(
  p_id => 26629524054053010+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id => 10,
  p_region_id => 26629301724053009+wwv_flow_api.g_id_offset,
  p_default_chart_type     =>'2DColumn',
  p_chart_title            =>'',
  p_chart_name             =>'chart_26563023273861015',
  p_chart_width            =>450,
  p_chart_height           =>300,
  p_chart_animation        =>'N',
  p_display_attr           =>':H:N:V:X:N:Right::V:Y:None:::N:::Default',
  p_dial_tick_attr         =>':::::::::::',
  p_gantt_attr             =>'Y:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:30:15:5:Y:I:N:S:E',
  p_map_attr               =>'Orthographic:RegionBounds:REGION_NAME',
  p_map_source             =>'',
  p_margins                =>':::',
  p_omit_label_interval    => null,
  p_bgtype                 =>'Trans',
  p_bgcolor1               =>'',
  p_bgcolor2               =>'',
  p_gradient_rotation      =>null,
  p_grid_bgtype            =>'',
  p_grid_bgcolor1          =>'',
  p_grid_bgcolor2          =>'',
  p_grid_gradient_rotation =>null,
  p_color_scheme           =>'4',
  p_custom_colors          =>'',
  p_map_undef_color_scheme =>'',
  p_map_undef_custom_colors =>'',
  p_x_axis_title           =>'',
  p_x_axis_min             =>null,
  p_x_axis_max             =>null,
  p_x_axis_decimal_place   =>null,
  p_x_axis_prefix          =>'',
  p_x_axis_postfix         =>'',
  p_x_axis_label_rotation  =>'',
  p_x_axis_label_font      =>'Tahoma:10:#000000',
  p_x_axis_major_interval  =>null,
  p_x_axis_minor_interval  =>null,
  p_y_axis_title           =>'',
  p_y_axis_min             =>null,
  p_y_axis_max             =>null,
  p_y_axis_decimal_place   =>null,
  p_y_axis_prefix          =>'',
  p_y_axis_postfix         =>'',
  p_y_axis_label_rotation  =>'',
  p_y_axis_label_font      =>'Tahoma:10:#000000',
  p_y_axis_major_interval  =>null,
  p_y_axis_minor_interval  =>null,
  p_async_update           =>'',
  p_async_time             =>null,
  p_legend_title           =>'Legend',
  p_legend_title_font      =>'',
  p_names_font             => null,
  p_names_rotation         => null,
  p_values_font            =>'',
  p_values_rotation        =>null,
  p_values_prefix          =>'',
  p_values_postfix         =>'',
  p_hints_font             =>'Tahoma:10:#000000',
  p_legend_font            =>'',
  p_grid_labels_font       =>'',
  p_chart_title_font       =>'Tahoma:14:#000000',
  p_x_axis_title_font      =>'Tahoma:14:#000000',
  p_x_axis_title_rotation  =>'',
  p_y_axis_title_font      =>'Tahoma:14:#000000',
  p_y_axis_title_rotation  =>'',
  p_gauge_labels_font      =>'Tahoma:10:',
  p_use_chart_xml          =>'N',
  p_chart_xml              => a1);
end;
/
declare
 a1 varchar2(32767) := null;
begin
a1:=a1||'SELECT NULL LINK,'||chr(10)||
'       d.dname LABEL,'||chr(10)||
'       avg(e.SAL) as "Average Salary",'||chr(10)||
'       min(e.SAL) as "Minimum Salary",'||chr(10)||
'       max(e.SAL) as "Maximum Salary"'||chr(10)||
'FROM   '||chr(10)||
'       emp e, dept d'||chr(10)||
'where e.deptno = d.deptno'||chr(10)||
'   and d.deptno = nvl(:P10_DEPTNO, d.deptno)'||chr(10)||
'group by d.dname'||chr(10)||
'ORDER  BY d.dname';

wwv_flow_api.create_flash_chart5_series(
  p_id => 26629629745053011+wwv_flow_api.g_id_offset,
  p_chart_id => 26629524054053010+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_series_seq                =>10,
  p_series_name               =>'Series 1',
  p_series_query              => a1,
  p_series_type               =>'Bar',
  p_series_query_type         =>'SQL_QUERY',
  p_series_query_parse_opt    =>'IGNORE_CHART_QUERY',
  p_series_query_no_data_found=>'no data found',
  p_series_query_row_count_max=>15,
  p_action_link               =>'',
  p_show_action_link          =>'N',
  p_action_link_checksum_type =>'');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"'||chr(10)||
'    codebase="#HOST_PROTOCOL#://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0"'||chr(10)||
'    width="#WIDTH#"'||chr(10)||
'    height="#HEIGHT#"'||chr(10)||
'    id="#CHART_NAME#"'||chr(10)||
'    align="top">'||chr(10)||
'<param name="movie" value="#IMAGE_PREFIX#flashchart/anychart_5/swf/#CHART_TYPE#.swf?XMLFile=#HOST#apex_util.flash?p=&APP_ID.:&FLOW_PAGE_ID.:&APP_SES';

s:=s||'SION.:FLOW_FLASH_CHART5_R#REGION_ID#">'||chr(10)||
'<param name="quality" value="high">'||chr(10)||
'<param name="allowScriptAccess" value="sameDomain">'||chr(10)||
'<param name="allowNetworking" value="all">'||chr(10)||
'<param name="scale" value="noscale">'||chr(10)||
'<param name="wmode" value="transparent">'||chr(10)||
'<param name="FlashVars" value="initText=#FLASH_INIT#&xmlLoadingText=#FLASH_LOADING#&resourcesLoadingText=#FLASH_RESOURCES#&noDataText=#FLASH_NO_DATA#&wa';

s:=s||'itingForDataText=#FLASH_WAITING#&templatesLoadingText=#FLASH_TEMPLATES#">'||chr(10)||
''||chr(10)||
'<embed src="#IMAGE_PREFIX#flashchart/anychart_5/swf/#CHART_TYPE#.swf?XMLFile=#HOST#apex_util.flash?p=&APP_ID.:&FLOW_PAGE_ID.:&APP_SESSION.:FLOW_FLASH_CHART5_R#REGION_ID#"'||chr(10)||
'       quality="high"'||chr(10)||
'       width="#WIDTH#"'||chr(10)||
'       height="#HEIGHT#"'||chr(10)||
'       name="#CHART_NAME#"'||chr(10)||
'       scale="noscale"'||chr(10)||
'       align=""'||chr(10)||
'       allowScript';

s:=s||'Access="sameDomain" '||chr(10)||
'       allowNetworking="all"'||chr(10)||
'       type="application/x-shockwave-flash"'||chr(10)||
'       pluginspage="#HOST_PROTOCOL#://www.macromedia.com/go/getflashplayer"'||chr(10)||
'       wmode="transparent"'||chr(10)||
'       FlashVars="initText=#FLASH_INIT#&xmlLoadingText=#FLASH_LOADING#&resourcesLoadingText=#FLASH_RESOURCES#&noDataText=#FLASH_NO_DATA#&waitingForDataText=#FLASH_WAITING#&templatesLoadingText=#FLASH_TEM';

s:=s||'PLATES#">'||chr(10)||
'</embed>'||chr(10)||
'</object>'||chr(10)||
'#CHART_REFRESH#'||chr(10)||
''||chr(10)||
'<script type="text/javascript" language="javascript">'||chr(10)||
'var chartNameSal = ''#CHART_NAME#'';'||chr(10)||
'</script>';

wwv_flow_api.create_page_plug (
  p_id=> 26629721421053012 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 10,
  p_plug_name=> 'Salary by Employee',
  p_region_name=>'',
  p_parent_plug_id=>26629120135053006 + wwv_flow_api.g_id_offset,
  p_plug_template=> 6617016514850567+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 50,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'FLASH_CHART5',
  p_translate_title=> 'Y',
  p_plug_display_error_message=> '#SQLERRM#',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
 a1 varchar2(32767) := null;
begin
a1 := null;
wwv_flow_api.create_flash_chart5(
  p_id => 26629917137053012+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id => 10,
  p_region_id => 26629721421053012+wwv_flow_api.g_id_offset,
  p_default_chart_type     =>'3DColumn',
  p_chart_title            =>'',
  p_chart_name             =>'chart_26563023273861015',
  p_chart_width            =>800,
  p_chart_height           =>300,
  p_chart_animation        =>'N',
  p_display_attr           =>':H:N:V:X:N:N::V:Y:None:::N:::Default',
  p_dial_tick_attr         =>':::::::::::',
  p_gantt_attr             =>'Y:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:30:15:5:Y:I:N:S:E',
  p_map_attr               =>'Orthographic:RegionBounds:REGION_NAME',
  p_map_source             =>'',
  p_margins                =>':::',
  p_omit_label_interval    => null,
  p_bgtype                 =>'Trans',
  p_bgcolor1               =>'',
  p_bgcolor2               =>'',
  p_gradient_rotation      =>null,
  p_grid_bgtype            =>'',
  p_grid_bgcolor1          =>'',
  p_grid_bgcolor2          =>'',
  p_grid_gradient_rotation =>null,
  p_color_scheme           =>'6',
  p_custom_colors          =>'',
  p_map_undef_color_scheme =>'',
  p_map_undef_custom_colors =>'',
  p_x_axis_title           =>'',
  p_x_axis_min             =>null,
  p_x_axis_max             =>null,
  p_x_axis_decimal_place   =>null,
  p_x_axis_prefix          =>'',
  p_x_axis_postfix         =>'',
  p_x_axis_label_rotation  =>'',
  p_x_axis_label_font      =>'Tahoma:10:#000000',
  p_x_axis_major_interval  =>null,
  p_x_axis_minor_interval  =>null,
  p_y_axis_title           =>'',
  p_y_axis_min             =>null,
  p_y_axis_max             =>null,
  p_y_axis_decimal_place   =>null,
  p_y_axis_prefix          =>'',
  p_y_axis_postfix         =>'',
  p_y_axis_label_rotation  =>'',
  p_y_axis_label_font      =>'Tahoma:10:#000000',
  p_y_axis_major_interval  =>null,
  p_y_axis_minor_interval  =>null,
  p_async_update           =>'',
  p_async_time             =>null,
  p_legend_title           =>'',
  p_legend_title_font      =>'',
  p_names_font             => null,
  p_names_rotation         => null,
  p_values_font            =>'',
  p_values_rotation        =>null,
  p_values_prefix          =>'',
  p_values_postfix         =>'',
  p_hints_font             =>'Tahoma:10:#000000',
  p_legend_font            =>'',
  p_grid_labels_font       =>'',
  p_chart_title_font       =>'Tahoma:14:#000000',
  p_x_axis_title_font      =>'Tahoma:14:#000000',
  p_x_axis_title_rotation  =>'',
  p_y_axis_title_font      =>'Tahoma:14:#000000',
  p_y_axis_title_rotation  =>'',
  p_gauge_labels_font      =>'Tahoma:10:',
  p_use_chart_xml          =>'N',
  p_chart_xml              => a1);
end;
/
declare
 a1 varchar2(32767) := null;
begin
a1:=a1||'SELECT NULL LINK,'||chr(10)||
'       ENAME LABEL,'||chr(10)||
'       SAL VALUE'||chr(10)||
'FROM   EMP'||chr(10)||
'where deptno = nvl(:P10_DEPTNO, deptno)'||chr(10)||
'ORDER  BY ENAME';

wwv_flow_api.create_flash_chart5_series(
  p_id => 26630020855053012+wwv_flow_api.g_id_offset,
  p_chart_id => 26629917137053012+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_series_seq                =>10,
  p_series_name               =>'Series 1',
  p_series_query              => a1,
  p_series_type               =>'Bar',
  p_series_query_type         =>'SQL_QUERY',
  p_series_query_parse_opt    =>'PARSE_CHART_QUERY',
  p_series_query_no_data_found=>'no data found',
  p_series_query_row_count_max=>15,
  p_action_link               =>'',
  p_show_action_link          =>'N',
  p_action_link_checksum_type =>'');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"'||chr(10)||
'    codebase="#HOST_PROTOCOL#://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0"'||chr(10)||
'    width="#WIDTH#"'||chr(10)||
'    height="#HEIGHT#"'||chr(10)||
'    id="#CHART_NAME#"'||chr(10)||
'    align="top">'||chr(10)||
'<param name="movie" value="#IMAGE_PREFIX#flashchart/anychart_5/swf/#CHART_TYPE#.swf?XMLFile=#HOST#apex_util.flash?p=&APP_ID.:&FLOW_PAGE_ID.:&APP_SES';

s:=s||'SION.:FLOW_FLASH_CHART5_R#REGION_ID#">'||chr(10)||
'<param name="quality" value="high">'||chr(10)||
'<param name="allowScriptAccess" value="sameDomain">'||chr(10)||
'<param name="allowNetworking" value="all">'||chr(10)||
'<param name="scale" value="noscale">'||chr(10)||
'<param name="wmode" value="transparent">'||chr(10)||
'<param name="FlashVars" value="initText=#FLASH_INIT#&xmlLoadingText=#FLASH_LOADING#&resourcesLoadingText=#FLASH_RESOURCES#&noDataText=#FLASH_NO_DATA#&wa';

s:=s||'itingForDataText=#FLASH_WAITING#&templatesLoadingText=#FLASH_TEMPLATES#">'||chr(10)||
''||chr(10)||
'<embed src="#IMAGE_PREFIX#flashchart/anychart_5/swf/#CHART_TYPE#.swf?XMLFile=#HOST#apex_util.flash?p=&APP_ID.:&FLOW_PAGE_ID.:&APP_SESSION.:FLOW_FLASH_CHART5_R#REGION_ID#"'||chr(10)||
'       quality="high"'||chr(10)||
'       width="#WIDTH#"'||chr(10)||
'       height="#HEIGHT#"'||chr(10)||
'       name="#CHART_NAME#"'||chr(10)||
'       scale="noscale"'||chr(10)||
'       align=""'||chr(10)||
'       allowScript';

s:=s||'Access="sameDomain" '||chr(10)||
'       allowNetworking="all"'||chr(10)||
'       type="application/x-shockwave-flash"'||chr(10)||
'       pluginspage="#HOST_PROTOCOL#://www.macromedia.com/go/getflashplayer"'||chr(10)||
'       wmode="transparent"'||chr(10)||
'       FlashVars="initText=#FLASH_INIT#&xmlLoadingText=#FLASH_LOADING#&resourcesLoadingText=#FLASH_RESOURCES#&noDataText=#FLASH_NO_DATA#&waitingForDataText=#FLASH_WAITING#&templatesLoadingText=#FLASH_TEM';

s:=s||'PLATES#">'||chr(10)||
'</embed>'||chr(10)||
'</object>'||chr(10)||
'#CHART_REFRESH#'||chr(10)||
'';

wwv_flow_api.create_page_plug (
  p_id=> 26630132494053013 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 10,
  p_plug_name=> 'Salary by Department',
  p_region_name=>'',
  p_parent_plug_id=>26629120135053006 + wwv_flow_api.g_id_offset,
  p_plug_template=> 0,
  p_plug_display_sequence=> 20,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'FLASH_CHART5',
  p_translate_title=> 'Y',
  p_plug_display_error_message=> '#SQLERRM#',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_header=> '<div style="float:left;">',
  p_plug_footer=> '</div>',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
 a1 varchar2(32767) := null;
begin
a1 := null;
wwv_flow_api.create_flash_chart5(
  p_id => 26630332443053013+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id => 10,
  p_region_id => 26630132494053013+wwv_flow_api.g_id_offset,
  p_default_chart_type     =>'2DPie',
  p_chart_title            =>'',
  p_chart_name             =>'chart_26566027413040296',
  p_chart_width            =>400,
  p_chart_height           =>280,
  p_chart_animation        =>'N',
  p_display_attr           =>':H:::::Bottom::H:Y:None:::N:::Default',
  p_dial_tick_attr         =>':::::::::::',
  p_gantt_attr             =>'Y:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:30:15:5:Y:I:N:S:E',
  p_map_attr               =>'Orthographic:RegionBounds:REGION_NAME',
  p_map_source             =>'',
  p_margins                =>':::',
  p_omit_label_interval    => null,
  p_bgtype                 =>'Trans',
  p_bgcolor1               =>'',
  p_bgcolor2               =>'',
  p_gradient_rotation      =>null,
  p_grid_bgtype            =>'',
  p_grid_bgcolor1          =>'',
  p_grid_bgcolor2          =>'',
  p_grid_gradient_rotation =>null,
  p_color_scheme           =>'6',
  p_custom_colors          =>'',
  p_map_undef_color_scheme =>'',
  p_map_undef_custom_colors =>'',
  p_x_axis_title           =>'',
  p_x_axis_min             =>null,
  p_x_axis_max             =>null,
  p_x_axis_decimal_place   =>null,
  p_x_axis_prefix          =>'',
  p_x_axis_postfix         =>'',
  p_x_axis_label_rotation  =>'',
  p_x_axis_label_font      =>'::',
  p_x_axis_major_interval  =>null,
  p_x_axis_minor_interval  =>null,
  p_y_axis_title           =>'',
  p_y_axis_min             =>null,
  p_y_axis_max             =>null,
  p_y_axis_decimal_place   =>null,
  p_y_axis_prefix          =>'',
  p_y_axis_postfix         =>'',
  p_y_axis_label_rotation  =>'',
  p_y_axis_label_font      =>'::',
  p_y_axis_major_interval  =>null,
  p_y_axis_minor_interval  =>null,
  p_async_update           =>'',
  p_async_time             =>null,
  p_legend_title           =>'Legend',
  p_legend_title_font      =>'',
  p_names_font             => null,
  p_names_rotation         => null,
  p_values_font            =>'',
  p_values_rotation        =>null,
  p_values_prefix          =>'',
  p_values_postfix         =>'',
  p_hints_font             =>'Tahoma:10:#000000',
  p_legend_font            =>'',
  p_grid_labels_font       =>'',
  p_chart_title_font       =>'Tahoma:14:#000000',
  p_x_axis_title_font      =>'Tahoma:14:',
  p_x_axis_title_rotation  =>'',
  p_y_axis_title_font      =>'Tahoma:14:',
  p_y_axis_title_rotation  =>'',
  p_gauge_labels_font      =>'Tahoma:10:',
  p_use_chart_xml          =>'N',
  p_chart_xml              => a1);
end;
/
declare
 a1 varchar2(32767) := null;
begin
a1:=a1||'SELECT ''javascript:$s("P10_DEPTNO",''||d.deptno||'')'' LINK,'||chr(10)||
'       d.dname LABEL,'||chr(10)||
'       sum(e.SAL) sal'||chr(10)||
'FROM   emp e, dept d'||chr(10)||
'where e.deptno = d.deptno'||chr(10)||
'group by  ''javascript:$s("P10_DEPTNO",''||d.deptno||'')'' , d.dname'||chr(10)||
'ORDER  BY d.dname';

wwv_flow_api.create_flash_chart5_series(
  p_id => 26630405339053013+wwv_flow_api.g_id_offset,
  p_chart_id => 26630332443053013+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_series_seq                =>10,
  p_series_name               =>'Series 1',
  p_series_query              => a1,
  p_series_type               =>'',
  p_series_query_type         =>'SQL_QUERY',
  p_series_query_parse_opt    =>'PARSE_CHART_QUERY',
  p_series_query_no_data_found=>'No data found.',
  p_series_query_row_count_max=>15,
  p_action_link               =>'',
  p_show_action_link          =>'N',
  p_action_link_checksum_type =>'');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 26630709501053019 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 10,
  p_button_sequence=> 10,
  p_button_plug_id => 26629120135053006+wwv_flow_api.g_id_offset,
  p_button_name    => 'ALL_DEPARTMENTS',
  p_button_image   => 'template:'||to_char(6616312293850562+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'All Departments',
  p_button_position=> 'TOP',
  p_button_alignment=> 'LEFT',
  p_button_redirect_url=> 'javascript:$s(''P10_DEPTNO'','''');',
  p_button_execute_validations=>'Y',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
null;
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>26630508030053013 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 10,
  p_name=>'P10_DEPTNO',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 26630132494053013+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line=> 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'LEFT',
  p_field_alignment=> 'LEFT',
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'Y',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_da_event (
  p_id => 26630925576053025 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 10
 ,p_name => 'Refresh Chart'
 ,p_event_sequence => 10
 ,p_triggering_element_type => 'ITEM'
 ,p_triggering_element => 'P10_DEPTNO'
 ,p_bind_type => 'bind'
 ,p_bind_event_type => 'change'
  );
wwv_flow_api.create_page_da_action (
  p_id => 26631206998053028 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 10
 ,p_event_id => 26630925576053025 + wwv_flow_api.g_id_offset
 ,p_event_result => 'TRUE'
 ,p_action_sequence => 45
 ,p_execute_on_page_init => 'N'
 ,p_action => 'NATIVE_EXECUTE_PLSQL_CODE'
 ,p_attribute_01 => 'null;'
 ,p_attribute_02 => 'P10_DEPTNO'
 ,p_stop_execution_on_error => 'Y'
 );
wwv_flow_api.create_page_da_action (
  p_id => 26631402891053029 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 10
 ,p_event_id => 26630925576053025 + wwv_flow_api.g_id_offset
 ,p_event_result => 'TRUE'
 ,p_action_sequence => 55
 ,p_execute_on_page_init => 'N'
 ,p_action => 'NATIVE_JAVASCRIPT_CODE'
 ,p_affected_region_id => 26629301724053009 + wwv_flow_api.g_id_offset
 ,p_attribute_01 => 'apex_RefreshFlashChart ($v(''pFlowStepId''), chartNameAvg.substring(1), ''en-us'');'||chr(10)||
'apex_SWFFormFix(chartNameAvg);'||chr(10)||
'apex_RefreshFlashChart ($v(''pFlowStepId''), chartNameSal.substring(1), ''en-us'');'||chr(10)||
'apex_SWFFormFix(chartNameSal);'
 ,p_stop_execution_on_error => 'Y'
 );
wwv_flow_api.create_page_da_action (
  p_id => 26775105849963969 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 10
 ,p_event_id => 26630925576053025 + wwv_flow_api.g_id_offset
 ,p_event_result => 'TRUE'
 ,p_action_sequence => 65
 ,p_execute_on_page_init => 'N'
 ,p_action => 'NATIVE_REFRESH'
 ,p_affected_elements_type => 'REGION'
 ,p_affected_region_id => 26773823379959614 + wwv_flow_api.g_id_offset
 ,p_stop_execution_on_error => 'Y'
 );
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 10
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00011
prompt  ...PAGE 11: Complex Dashboard (requires full AnyChart)
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 11
 ,p_tab_set => 'TS1'
 ,p_name => 'Complex Dashboard (requires full AnyChart)'
 ,p_step_title => 'Complex Dashboard (requires full AnyChart)'
 ,p_allow_duplicate_submissions => 'Y'
 ,p_step_sub_title => 'Complex Dashboard with JavaScript'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'NO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_autocomplete_on_off => 'ON'
 ,p_html_page_header => 
'<script type="text/javascript" src="#IMAGE_PREFIX#flashchart/anychart_5/js/AnyChart.js"></script>'||chr(10)||
''
 ,p_javascript_code => 
'var chart;'
 ,p_page_is_public_y_n => 'N'
 ,p_protection_level => 'N'
 ,p_cache_page_yn => 'N'
 ,p_cache_timeout_seconds => 21600
 ,p_cache_by_user_yn => 'N'
 ,p_last_updated_by => 'DIMI'
 ,p_last_upd_yyyymmddhh24miss => '20110316010657'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<div id="chartDiv"></div>';

wwv_flow_api.create_page_plug (
  p_id=> 26756510273637794 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 11,
  p_plug_name=> 'Complex Dashboard with Actions (requires full AnyChart)',
  p_region_name=>'',
  p_plug_template=> 6618921799850573+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_display_error_message=> '#SQLERRM#',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
 
begin
 
null;
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_da_event (
  p_id => 26757320239637798 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 11
 ,p_name => 'Load Chart'
 ,p_event_sequence => 10
 ,p_bind_type => 'bind'
 ,p_bind_event_type => 'ready'
  );
wwv_flow_api.create_page_da_action (
  p_id => 26757809917637799 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 11
 ,p_event_id => 26757320239637798 + wwv_flow_api.g_id_offset
 ,p_event_result => 'TRUE'
 ,p_action_sequence => 10
 ,p_execute_on_page_init => 'N'
 ,p_action => 'NATIVE_JAVASCRIPT_CODE'
 ,p_affected_region_id => 26756510273637794 + wwv_flow_api.g_id_offset
 ,p_attribute_01 => 'chart = new AnyChart(''#IMAGE_PREFIX#flashchart/anychart_5/swf/OracleAnyChart.swf'',''#IMAGE_PREFIX#flashchart/anychart_5/swf/Preloader.swf'');'||chr(10)||
'chart.width = 800;'||chr(10)||
'chart.height = 500;'||chr(10)||
'chart.setXMLFile(''#OWNER#.GET_DASHBOARD_XML_PRC?p_param1=Full'');'||chr(10)||
'chart.write(''chartDiv'');'
 ,p_stop_execution_on_error => 'Y'
 );
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 11
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00012
prompt  ...PAGE 12: Modified Chart
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 12
 ,p_tab_set => 'TS1'
 ,p_name => 'Modified Chart'
 ,p_step_title => 'Modified Chart'
 ,p_step_sub_title => 'Modified Chart'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_cache_page_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_last_updated_by => 'DIMI'
 ,p_last_upd_yyyymmddhh24miss => '20110227130735'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"'||chr(10)||
'    codebase="#HOST_PROTOCOL#://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0"'||chr(10)||
'    width="#WIDTH#"'||chr(10)||
'    height="#HEIGHT#"'||chr(10)||
'    id="#CHART_NAME#"'||chr(10)||
'    align="top">'||chr(10)||
'<param name="movie" value="#IMAGE_PREFIX#flashchart/anychart_5/swf/#CHART_TYPE#.swf?XMLFile=#HOST#apex_util.flash?p=&APP_ID.:12:&APP_SESSION.:FLOW_F';

s:=s||'LASH_CHART5_R#REGION_ID#">'||chr(10)||
'<param name="quality" value="high">'||chr(10)||
'<param name="allowScriptAccess" value="sameDomain">'||chr(10)||
'<param name="allowNetworking" value="all">'||chr(10)||
'<param name="scale" value="noscale">'||chr(10)||
'<param name="wmode" value="transparent">'||chr(10)||
'<param name="FlashVars" value="initText=#FLASH_INIT#&xmlLoadingText=#FLASH_LOADING#&resourcesLoadingText=#FLASH_RESOURCES#&noDataText=#FLASH_NO_DATA#&waitingForData';

s:=s||'Text=#FLASH_WAITING#&templatesLoadingText=#FLASH_TEMPLATES#">'||chr(10)||
''||chr(10)||
'<embed src="#IMAGE_PREFIX#flashchart/anychart_5/swf/#CHART_TYPE#.swf?XMLFile=#HOST#apex_util.flash?p=&APP_ID.:12:&APP_SESSION.:FLOW_FLASH_CHART5_R#REGION_ID#"'||chr(10)||
'       quality="high"'||chr(10)||
'       width="#WIDTH#"'||chr(10)||
'       height="#HEIGHT#"'||chr(10)||
'       name="#CHART_NAME#"'||chr(10)||
'       scale="noscale"'||chr(10)||
'       align=""'||chr(10)||
'       allowScriptAccess="sameDomain" '||chr(10)||
'   ';

s:=s||'    allowNetworking="all"'||chr(10)||
'       type="application/x-shockwave-flash"'||chr(10)||
'       pluginspage="#HOST_PROTOCOL#://www.macromedia.com/go/getflashplayer"'||chr(10)||
'       wmode="transparent"'||chr(10)||
'       FlashVars="initText=#FLASH_INIT#&xmlLoadingText=#FLASH_LOADING#&resourcesLoadingText=#FLASH_RESOURCES#&noDataText=#FLASH_NO_DATA#&waitingForDataText=#FLASH_WAITING#&templatesLoadingText=#FLASH_TEMPLATES#">'||chr(10)||
'</embed>'||chr(10)||
'</obj';

s:=s||'ect>'||chr(10)||
'#CHART_REFRESH#';

wwv_flow_api.create_page_plug (
  p_id=> 20709614532843164 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 12,
  p_plug_name=> 'Modified 3D Column Chart',
  p_region_name=>'',
  p_plug_template=> 6617915349850572+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'FLASH_CHART5',
  p_translate_title=> 'Y',
  p_plug_display_error_message=> '#SQLERRM#',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
 a1 varchar2(32767) := null;
begin
a1 := null;
wwv_flow_api.create_flash_chart5(
  p_id => 20709808755843164+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id => 12,
  p_region_id => 20709614532843164+wwv_flow_api.g_id_offset,
  p_default_chart_type     =>'3DColumn',
  p_chart_title            =>'Salary by Employees',
  p_chart_name             =>'chart_20709808755843164',
  p_chart_width            =>700,
  p_chart_height           =>500,
  p_chart_animation        =>'ScaleYBottom',
  p_display_attr           =>':H:N:V:B:H:Left::V:Y:Circle:Y::Y::Y:AquaLight',
  p_dial_tick_attr         =>':::::::::::',
  p_gantt_attr             =>'Y:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:30:15:5:Y:I:N:S:E',
  p_map_attr               =>'Orthographic:RegionBounds:REGION_NAME',
  p_map_source             =>'',
  p_margins                =>':::',
  p_omit_label_interval    => null,
  p_bgtype                 =>'Gradient',
  p_bgcolor1               =>'#CCCCFF',
  p_bgcolor2               =>'#CCFFCC',
  p_gradient_rotation      =>0,
  p_grid_bgtype            =>'',
  p_grid_bgcolor1          =>'',
  p_grid_bgcolor2          =>'',
  p_grid_gradient_rotation =>null,
  p_color_scheme           =>'7',
  p_custom_colors          =>'',
  p_map_undef_color_scheme =>'',
  p_map_undef_custom_colors =>'',
  p_x_axis_title           =>'Employee',
  p_x_axis_min             =>null,
  p_x_axis_max             =>null,
  p_x_axis_decimal_place   =>null,
  p_x_axis_prefix          =>'',
  p_x_axis_postfix         =>'',
  p_x_axis_label_rotation  =>'45',
  p_x_axis_label_font      =>'Tahoma:10:#000011',
  p_x_axis_major_interval  =>null,
  p_x_axis_minor_interval  =>null,
  p_y_axis_title           =>'Salary',
  p_y_axis_min             =>200,
  p_y_axis_max             =>null,
  p_y_axis_decimal_place   =>null,
  p_y_axis_prefix          =>'$',
  p_y_axis_postfix         =>'',
  p_y_axis_label_rotation  =>'',
  p_y_axis_label_font      =>'Tahoma:10:#000033',
  p_y_axis_major_interval  =>400,
  p_y_axis_minor_interval  =>200,
  p_async_update           =>'',
  p_async_time             =>null,
  p_legend_title           =>'Legend',
  p_legend_title_font      =>'',
  p_names_font             => null,
  p_names_rotation         => null,
  p_values_font            =>'',
  p_values_rotation        =>90,
  p_values_prefix          =>'',
  p_values_postfix         =>'',
  p_hints_font             =>'Tahoma:10:#000077',
  p_legend_font            =>'',
  p_grid_labels_font       =>'',
  p_chart_title_font       =>'Tahoma:14:#0000CC',
  p_x_axis_title_font      =>'Tahoma:14:#0000EE',
  p_x_axis_title_rotation  =>'',
  p_y_axis_title_font      =>'Tahoma:14:#0000FF',
  p_y_axis_title_rotation  =>'',
  p_gauge_labels_font      =>'Tahoma:10:',
  p_use_chart_xml          =>'N',
  p_chart_xml              => a1);
end;
/
declare
 a1 varchar2(32767) := null;
begin
a1:=a1||'SELECT NULL LINK,'||chr(10)||
'       ENAME,'||chr(10)||
'       SAL "Salary"'||chr(10)||
'FROM   EMP'||chr(10)||
'ORDER  BY ENAME';

wwv_flow_api.create_flash_chart5_series(
  p_id => 20709907781843164+wwv_flow_api.g_id_offset,
  p_chart_id => 20709808755843164+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_series_seq                =>10,
  p_series_name               =>'Series 1',
  p_series_query              => a1,
  p_series_type               =>'Bar',
  p_series_query_type         =>'SQL_QUERY',
  p_series_query_parse_opt    =>'PARSE_CHART_QUERY',
  p_series_query_no_data_found=>'no data found',
  p_series_query_row_count_max=>15,
  p_action_link               =>'',
  p_show_action_link          =>'N',
  p_action_link_checksum_type =>'');
end;
/
 
begin
 
null;
 
end;
/

 
begin
 
null;
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>20984724526016532 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 12,
  p_name=>'P12_Y_AXIS_MINOR_INTERVAL',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 20709614532843164+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Y Axis Minor Interval',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_SELECT_LIST',
  p_lov=> 'STATIC2:100;100,200;200,300;300,400;400',
  p_lov_display_null=> 'YES',
  p_lov_translated=> 'N',
  p_lov_null_text=>'',
  p_lov_null_value=> '',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_display_when_type=>'NEVER',
  p_field_template=> 6623130978850590+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'SUBMIT',
  p_attribute_03 => 'Y',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 12
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00013
prompt  ...PAGE 13: Multiple Series Flash Chart
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 13
 ,p_tab_set => 'TS1'
 ,p_name => 'Multiple Series Flash Chart'
 ,p_step_title => 'Multiple Series Flash Chart'
 ,p_step_sub_title => 'Multiple Series Flash Chart'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'NO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_cache_page_yn => 'N'
 ,p_last_updated_by => 'DIMI'
 ,p_last_upd_yyyymmddhh24miss => '20110227224607'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"'||chr(10)||
'    codebase="#HOST_PROTOCOL#://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0"'||chr(10)||
'    width="#WIDTH#"'||chr(10)||
'    height="#HEIGHT#"'||chr(10)||
'    id="#CHART_NAME#"'||chr(10)||
'    align="top">'||chr(10)||
'<param name="movie" value="#IMAGE_PREFIX#flashchart/anychart_5/swf/#CHART_TYPE#.swf?XMLFile=#HOST#apex_util.flash?p=&APP_ID.:&FLOW_PAGE_ID.:&APP_SES';

s:=s||'SION.:FLOW_FLASH_CHART5_R#REGION_ID#">'||chr(10)||
'<param name="quality" value="high">'||chr(10)||
'<param name="allowScriptAccess" value="sameDomain">'||chr(10)||
'<param name="allowNetworking" value="all">'||chr(10)||
'<param name="scale" value="noscale">'||chr(10)||
'<param name="wmode" value="transparent">'||chr(10)||
'<param name="FlashVars" value="initText=#FLASH_INIT#&xmlLoadingText=#FLASH_LOADING#&resourcesLoadingText=#FLASH_RESOURCES#&noDataText=#FLASH_NO_DATA#&wa';

s:=s||'itingForDataText=#FLASH_WAITING#&templatesLoadingText=#FLASH_TEMPLATES#">'||chr(10)||
''||chr(10)||
'<embed src="#IMAGE_PREFIX#flashchart/anychart_5/swf/#CHART_TYPE#.swf?XMLFile=#HOST#apex_util.flash?p=&APP_ID.:&FLOW_PAGE_ID.:&APP_SESSION.:FLOW_FLASH_CHART5_R#REGION_ID#"'||chr(10)||
'       quality="high"'||chr(10)||
'       width="#WIDTH#"'||chr(10)||
'       height="#HEIGHT#"'||chr(10)||
'       name="#CHART_NAME#"'||chr(10)||
'       scale="noscale"'||chr(10)||
'       align=""'||chr(10)||
'       allowScript';

s:=s||'Access="sameDomain" '||chr(10)||
'       allowNetworking="all"'||chr(10)||
'       type="application/x-shockwave-flash"'||chr(10)||
'       pluginspage="#HOST_PROTOCOL#://www.macromedia.com/go/getflashplayer"'||chr(10)||
'       wmode="transparent"'||chr(10)||
'FlashVars="initText=#FLASH_INIT#&xmlLoadingText=#FLASH_LOADING#&resourcesLoadingText=#FLASH_RESOURCES#&noDataText=#FLASH_NO_DATA#&waitingForDataText=#FLASH_WAITING#&templatesLoadingText=#FLASH_TEMPLATES#';

s:=s||'">'||chr(10)||
'</embed>'||chr(10)||
'</object>'||chr(10)||
'#CHART_REFRESH#';

wwv_flow_api.create_page_plug (
  p_id=> 21050216397766012 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 13,
  p_plug_name=> '3D Column Chart with Multiple Series',
  p_region_name=>'',
  p_plug_template=> 6617915349850572+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'FLASH_CHART5',
  p_translate_title=> 'Y',
  p_plug_display_error_message=> '#SQLERRM#',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
 a1 varchar2(32767) := null;
begin
a1 := null;
wwv_flow_api.create_flash_chart5(
  p_id => 21050402497766014+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id => 13,
  p_region_id => 21050216397766012+wwv_flow_api.g_id_offset,
  p_default_chart_type     =>'3DColumn',
  p_chart_title            =>'Salary by Employees',
  p_chart_name             =>'chart_10604610937639596',
  p_chart_width            =>700,
  p_chart_height           =>500,
  p_chart_animation        =>'N',
  p_display_attr           =>':H:N:V:X:N:Bottom::H:Y:Circle:::N:::Default',
  p_dial_tick_attr         =>':::::::::::',
  p_gantt_attr             =>'Y:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:30:15:5:Y:I:N:S:E',
  p_map_attr               =>'Orthographic:RegionBounds:REGION_NAME',
  p_map_source             =>'',
  p_margins                =>':::',
  p_omit_label_interval    => null,
  p_bgtype                 =>'Trans',
  p_bgcolor1               =>'',
  p_bgcolor2               =>'',
  p_gradient_rotation      =>null,
  p_grid_bgtype            =>'',
  p_grid_bgcolor1          =>'',
  p_grid_bgcolor2          =>'',
  p_grid_gradient_rotation =>null,
  p_color_scheme           =>'6',
  p_custom_colors          =>'',
  p_map_undef_color_scheme =>'',
  p_map_undef_custom_colors =>'',
  p_x_axis_title           =>'Employee',
  p_x_axis_min             =>null,
  p_x_axis_max             =>null,
  p_x_axis_decimal_place   =>null,
  p_x_axis_prefix          =>'',
  p_x_axis_postfix         =>'',
  p_x_axis_label_rotation  =>'',
  p_x_axis_label_font      =>'Tahoma:10:#000000',
  p_x_axis_major_interval  =>null,
  p_x_axis_minor_interval  =>null,
  p_y_axis_title           =>'Salary',
  p_y_axis_min             =>null,
  p_y_axis_max             =>null,
  p_y_axis_decimal_place   =>null,
  p_y_axis_prefix          =>'',
  p_y_axis_postfix         =>'',
  p_y_axis_label_rotation  =>'',
  p_y_axis_label_font      =>'Tahoma:10:#000000',
  p_y_axis_major_interval  =>null,
  p_y_axis_minor_interval  =>null,
  p_async_update           =>'',
  p_async_time             =>null,
  p_legend_title           =>'Legend',
  p_legend_title_font      =>'',
  p_names_font             => null,
  p_names_rotation         => null,
  p_values_font            =>'',
  p_values_rotation        =>null,
  p_values_prefix          =>'',
  p_values_postfix         =>'',
  p_hints_font             =>'Tahoma:10:#000000',
  p_legend_font            =>'',
  p_grid_labels_font       =>'',
  p_chart_title_font       =>'Tahoma:14:#000000',
  p_x_axis_title_font      =>'Tahoma:14:#000000',
  p_x_axis_title_rotation  =>'',
  p_y_axis_title_font      =>'Tahoma:14:#000000',
  p_y_axis_title_rotation  =>'',
  p_gauge_labels_font      =>'Tahoma:10:',
  p_use_chart_xml          =>'N',
  p_chart_xml              => a1);
end;
/
declare
 a1 varchar2(32767) := null;
begin
a1:=a1||'select null as link, ename as Maximum, min(sal) over () as min_sal '||chr(10)||
'from emp';

wwv_flow_api.create_flash_chart5_series(
  p_id => 21135525447659842+wwv_flow_api.g_id_offset,
  p_chart_id => 21050402497766014+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_series_seq                =>20,
  p_series_name               =>'Minimum Salary',
  p_series_query              => a1,
  p_series_type               =>'Marker',
  p_series_query_type         =>'SQL_QUERY',
  p_series_query_parse_opt    =>'PARSE_CHART_QUERY',
  p_series_query_no_data_found=>'',
  p_series_query_row_count_max=>15,
  p_action_link               =>'',
  p_show_action_link          =>'N',
  p_action_link_checksum_type =>'');
end;
/
declare
 a1 varchar2(32767) := null;
begin
a1:=a1||'declare'||chr(10)||
'  l_sql  varchar2(2000);'||chr(10)||
'begin'||chr(10)||
'  l_sql := q''[select null as link, ename as Average, avg(sal) over () as avg_sal from emp]'';'||chr(10)||
'  return l_sql;'||chr(10)||
'end;';

wwv_flow_api.create_flash_chart5_series(
  p_id => 21137904370682150+wwv_flow_api.g_id_offset,
  p_chart_id => 21050402497766014+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_series_seq                =>30,
  p_series_name               =>'Average Salary',
  p_series_query              => a1,
  p_series_type               =>'Line',
  p_series_query_type         =>'FUNCTION_RETURNING_SQL_QUERY',
  p_series_query_parse_opt    =>'IGNORE_CHART_QUERY',
  p_series_query_no_data_found=>'',
  p_series_query_row_count_max=>15,
  p_action_link               =>'',
  p_show_action_link          =>'N',
  p_action_link_checksum_type =>'');
end;
/
declare
 a1 varchar2(32767) := null;
begin
a1:=a1||'select null link, ENAME, SAL, comm'||chr(10)||
'from  EMP';

wwv_flow_api.create_flash_chart5_series(
  p_id => 21050506757766014+wwv_flow_api.g_id_offset,
  p_chart_id => 21050402497766014+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_series_seq                =>40,
  p_series_name               =>'Salary and Commission',
  p_series_query              => a1,
  p_series_type               =>'Bar',
  p_series_query_type         =>'SQL_QUERY',
  p_series_query_parse_opt    =>'PARSE_CHART_QUERY',
  p_series_query_no_data_found=>'No data found.',
  p_series_query_row_count_max=>50,
  p_action_link               =>'',
  p_show_action_link          =>'N',
  p_action_link_checksum_type =>'');
end;
/
 
begin
 
null;
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 13
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00014
prompt  ...PAGE 14: Map
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 14
 ,p_name => 'Map'
 ,p_step_title => 'Map'
 ,p_step_sub_title => 'Map'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_cache_page_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_last_updated_by => 'DIMI'
 ,p_last_upd_yyyymmddhh24miss => '20110315112511'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"'||chr(10)||
'    codebase="#HOST_PROTOCOL#://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0"'||chr(10)||
'    width="#WIDTH#"'||chr(10)||
'    height="#HEIGHT#"'||chr(10)||
'    id="#CHART_NAME#"'||chr(10)||
'    align="top">'||chr(10)||
'<param name="movie" value="#IMAGE_PREFIX#flashchart/swf/AnyChart.swf">'||chr(10)||
'<param name="quality" value="high">'||chr(10)||
'<param name="allowScriptAccess" value="sa';

s:=s||'meDomain">'||chr(10)||
'<param name="allowNetworking" value="all">'||chr(10)||
'<param name="scale" value="noscale">'||chr(10)||
'<param name="wmode" value="transparent">'||chr(10)||
'<param name="FlashVars" value="XMLFile=#HOST#apex_util.flash?p=&APP_ID.:14:&APP_SESSION.:FLOW_FLASH_CHART5_R#REGION_ID#&noDataText=#FLASH_NO_DATA#&initText=#FLASH_INIT#&xmlLoadingText=#FLASH_LOADING#&resourcesLoadingText=#FLASH_RESOURCES#&waitingForDataText=#FLASH_WAI';

s:=s||'TING#&templatesLoadingText=#FLASH_TEMPLATES#">'||chr(10)||
''||chr(10)||
'<embed src="#IMAGE_PREFIX#flashchart/swf/AnyChart.swf"'||chr(10)||
'       quality="high"'||chr(10)||
'       width="#WIDTH#"'||chr(10)||
'       height="#HEIGHT#"'||chr(10)||
'       name="#CHART_NAME#"'||chr(10)||
'       scale="noscale"'||chr(10)||
'       align=""'||chr(10)||
'       allowScriptAccess="sameDomain" '||chr(10)||
'       allowNetworking="all"'||chr(10)||
'       type="application/x-shockwave-flash"'||chr(10)||
'       pluginspage="#HOST_PROTOCOL#://www.macrome';

s:=s||'dia.com/go/getflashplayer"'||chr(10)||
'       wmode="transparent"'||chr(10)||
'        FlashVars="XMLFile=#HOST#apex_util.flash?p=&APP_ID.:14:&APP_SESSION.:FLOW_FLASH_CHART5_R#REGION_ID#&noDataText=#FLASH_NO_DATA#&initText=#FLASH_INIT#&xmlLoadingText=#FLASH_LOADING#&resourcesLoadingText=#FLASH_RESOURCES#&waitingForDataText=#FLASH_WAITING#&templatesLoadingText=#FLASH_TEMPLATES#">'||chr(10)||
'</embed>'||chr(10)||
'</object>'||chr(10)||
'#CHART_REFRESH#';

wwv_flow_api.create_page_plug (
  p_id=> 26780530488118433 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 14,
  p_plug_name=> 'Map',
  p_region_name=>'',
  p_plug_template=> 6617915349850572+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'FLASH_MAP',
  p_translate_title=> 'Y',
  p_plug_display_error_message=> '#SQLERRM#',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
 a1 varchar2(32767) := null;
begin
a1 := null;
wwv_flow_api.create_flash_chart5(
  p_id => 26780729600118434+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id => 14,
  p_region_id => 26780530488118433+wwv_flow_api.g_id_offset,
  p_default_chart_type     =>'Map',
  p_chart_title            =>'',
  p_chart_name             =>'chart_26780729600118434',
  p_chart_width            =>700,
  p_chart_height           =>500,
  p_chart_animation        =>'N',
  p_display_attr           =>':H:N::X::N::V:Y:None:::::',
  p_dial_tick_attr         =>'',
  p_gantt_attr             =>'Y:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:30:15:5:Y:I:N:S:E',
  p_map_attr               =>'Orthographic:RegionBounds:REGION_NAME:Y:Y:Series::::Y:',
  p_map_source             =>'usa/country/states_48.amap',
  p_margins                =>':::',
  p_omit_label_interval    => null,
  p_bgtype                 =>'Trans',
  p_bgcolor1               =>'',
  p_bgcolor2               =>'',
  p_gradient_rotation      =>null,
  p_grid_bgtype            =>'Solid',
  p_grid_bgcolor1          =>'#FFFFFF',
  p_grid_bgcolor2          =>'',
  p_grid_gradient_rotation =>null,
  p_color_scheme           =>'7',
  p_custom_colors          =>'',
  p_map_undef_color_scheme =>'1',
  p_map_undef_custom_colors =>'',
  p_x_axis_title           =>'',
  p_x_axis_min             =>null,
  p_x_axis_max             =>null,
  p_x_axis_decimal_place   =>null,
  p_x_axis_prefix          =>'',
  p_x_axis_postfix         =>'',
  p_x_axis_label_rotation  =>'',
  p_x_axis_label_font      =>'',
  p_x_axis_major_interval  =>null,
  p_x_axis_minor_interval  =>null,
  p_y_axis_title           =>'',
  p_y_axis_min             =>null,
  p_y_axis_max             =>null,
  p_y_axis_decimal_place   =>null,
  p_y_axis_prefix          =>'',
  p_y_axis_postfix         =>'',
  p_y_axis_label_rotation  =>'',
  p_y_axis_label_font      =>'',
  p_y_axis_major_interval  =>null,
  p_y_axis_minor_interval  =>null,
  p_async_update           =>'N',
  p_async_time             =>null,
  p_legend_title           =>'',
  p_legend_title_font      =>'',
  p_names_font             => null,
  p_names_rotation         => null,
  p_values_font            =>'Arial:10:#000000',
  p_values_rotation        =>null,
  p_values_prefix          =>'',
  p_values_postfix         =>'',
  p_hints_font             =>'Tahoma:10:#000000',
  p_legend_font            =>'Arial:10:#000000',
  p_grid_labels_font       =>'',
  p_chart_title_font       =>'Tahoma:14:#000000',
  p_x_axis_title_font      =>'Tahoma:14:',
  p_x_axis_title_rotation  =>'',
  p_y_axis_title_font      =>'Tahoma:14:',
  p_y_axis_title_rotation  =>'',
  p_gauge_labels_font      =>'Tahoma:10',
  p_use_chart_xml          =>'N',
  p_chart_xml              => a1);
end;
/
declare
 a1 varchar2(32767) := null;
begin
a1:=a1||'select null link, initcap(loc) label, 1000'||chr(10)||
'from dept';

wwv_flow_api.create_flash_chart5_series(
  p_id => 26780801295118434+wwv_flow_api.g_id_offset,
  p_chart_id => 26780729600118434+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_series_seq                =>10,
  p_series_name               =>'Series 1',
  p_series_query              => a1,
  p_series_type               =>'Map',
  p_series_query_type         =>'SQL_QUERY',
  p_series_query_parse_opt    =>'PARSE_CHART_QUERY',
  p_series_query_no_data_found=>'no data found',
  p_series_query_row_count_max=>300,
  p_action_link               =>'',
  p_show_action_link          =>'N',
  p_action_link_checksum_type =>'');
end;
/
 
begin
 
null;
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 14
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00016
prompt  ...PAGE 16: 2-Series Chart with Screen Reader Mode
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 16
 ,p_tab_set => 'TS1'
 ,p_name => '2-Series Chart with Screen Reader Mode'
 ,p_step_title => '2-Series Chart with Screen Reader Mode'
 ,p_step_sub_title => '2-Series Chart with Screen Reader Mode'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'NO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_cache_page_yn => 'N'
 ,p_last_updated_by => 'DIMI'
 ,p_last_upd_yyyymmddhh24miss => '20110310111703'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"'||chr(10)||
'    codebase="#HOST_PROTOCOL#://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0"'||chr(10)||
'    width="#WIDTH#"'||chr(10)||
'    height="#HEIGHT#"'||chr(10)||
'    id="#CHART_NAME#"'||chr(10)||
'    align="top">'||chr(10)||
'<param name="movie" value="#IMAGE_PREFIX#flashchart/anychart_5/swf/#CHART_TYPE#.swf?XMLFile=#HOST#apex_util.flash?p=&APP_ID.:&FLOW_PAGE_ID.:&APP_SES';

s:=s||'SION.:FLOW_FLASH_CHART5_R#REGION_ID#">'||chr(10)||
'<param name="quality" value="high">'||chr(10)||
'<param name="allowScriptAccess" value="sameDomain">'||chr(10)||
'<param name="allowNetworking" value="all">'||chr(10)||
'<param name="scale" value="noscale">'||chr(10)||
'<param name="wmode" value="transparent">'||chr(10)||
'<param name="FlashVars" value="initText=#FLASH_INIT#&xmlLoadingText=#FLASH_LOADING#&resourcesLoadingText=#FLASH_RESOURCES#&noDataText=#FLASH_NO_DATA#&wa';

s:=s||'itingForDataText=#FLASH_WAITING#&templatesLoadingText=#FLASH_TEMPLATES#">'||chr(10)||
''||chr(10)||
'<embed src="#IMAGE_PREFIX#flashchart/anychart_5/swf/#CHART_TYPE#.swf?XMLFile=#HOST#apex_util.flash?p=&APP_ID.:&FLOW_PAGE_ID.:&APP_SESSION.:FLOW_FLASH_CHART5_R#REGION_ID#"'||chr(10)||
'       quality="high"'||chr(10)||
'       width="#WIDTH#"'||chr(10)||
'       height="#HEIGHT#"'||chr(10)||
'       name="#CHART_NAME#"'||chr(10)||
'       scale="noscale"'||chr(10)||
'       align=""'||chr(10)||
'       allowScript';

s:=s||'Access="sameDomain" '||chr(10)||
'       allowNetworking="all"'||chr(10)||
'       type="application/x-shockwave-flash"'||chr(10)||
'       pluginspage="#HOST_PROTOCOL#://www.macromedia.com/go/getflashplayer"'||chr(10)||
'       wmode="transparent"'||chr(10)||
'FlashVars="initText=#FLASH_INIT#&xmlLoadingText=#FLASH_LOADING#&resourcesLoadingText=#FLASH_RESOURCES#&noDataText=#FLASH_NO_DATA#&waitingForDataText=#FLASH_WAITING#&templatesLoadingText=#FLASH_TEMPLATES#';

s:=s||'">'||chr(10)||
'</embed>'||chr(10)||
'</object>'||chr(10)||
'#CHART_REFRESH#';

wwv_flow_api.create_page_plug (
  p_id=> 25881607905103240 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 16,
  p_plug_name=> '3D Column Chart with two Series and Screen Reader Mode',
  p_region_name=>'',
  p_plug_template=> 6617915349850572+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'FLASH_CHART5',
  p_translate_title=> 'Y',
  p_plug_display_error_message=> '#SQLERRM#',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
 a1 varchar2(32767) := null;
begin
a1 := null;
wwv_flow_api.create_flash_chart5(
  p_id => 25881808497103246+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id => 16,
  p_region_id => 25881607905103240+wwv_flow_api.g_id_offset,
  p_default_chart_type     =>'3DColumn',
  p_chart_title            =>'Salary by Employees',
  p_chart_name             =>'chart_10604610937639596',
  p_chart_width            =>700,
  p_chart_height           =>500,
  p_chart_animation        =>'N',
  p_display_attr           =>':H:N:V:X:N:Bottom::H:Y:Circle:::N:::Default',
  p_dial_tick_attr         =>':::::::::::',
  p_gantt_attr             =>'Y:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:30:15:5:Y:I:N:S:E',
  p_map_attr               =>'Orthographic:RegionBounds:REGION_NAME',
  p_map_source             =>'',
  p_margins                =>':::',
  p_omit_label_interval    => null,
  p_bgtype                 =>'Trans',
  p_bgcolor1               =>'',
  p_bgcolor2               =>'',
  p_gradient_rotation      =>null,
  p_grid_bgtype            =>'',
  p_grid_bgcolor1          =>'',
  p_grid_bgcolor2          =>'',
  p_grid_gradient_rotation =>null,
  p_color_scheme           =>'6',
  p_custom_colors          =>'',
  p_map_undef_color_scheme =>'',
  p_map_undef_custom_colors =>'',
  p_x_axis_title           =>'Employee',
  p_x_axis_min             =>null,
  p_x_axis_max             =>null,
  p_x_axis_decimal_place   =>null,
  p_x_axis_prefix          =>'',
  p_x_axis_postfix         =>'',
  p_x_axis_label_rotation  =>'',
  p_x_axis_label_font      =>'Tahoma:10:#000000',
  p_x_axis_major_interval  =>null,
  p_x_axis_minor_interval  =>null,
  p_y_axis_title           =>'Salary',
  p_y_axis_min             =>null,
  p_y_axis_max             =>null,
  p_y_axis_decimal_place   =>null,
  p_y_axis_prefix          =>'',
  p_y_axis_postfix         =>'',
  p_y_axis_label_rotation  =>'',
  p_y_axis_label_font      =>'Tahoma:10:#000000',
  p_y_axis_major_interval  =>null,
  p_y_axis_minor_interval  =>null,
  p_async_update           =>'',
  p_async_time             =>null,
  p_legend_title           =>'Legend',
  p_legend_title_font      =>'',
  p_names_font             => null,
  p_names_rotation         => null,
  p_values_font            =>'',
  p_values_rotation        =>null,
  p_values_prefix          =>'',
  p_values_postfix         =>'',
  p_hints_font             =>'Tahoma:10:#000000',
  p_legend_font            =>'',
  p_grid_labels_font       =>'',
  p_chart_title_font       =>'Tahoma:14:#000000',
  p_x_axis_title_font      =>'Tahoma:14:#000000',
  p_x_axis_title_rotation  =>'',
  p_y_axis_title_font      =>'Tahoma:14:#000000',
  p_y_axis_title_rotation  =>'',
  p_gauge_labels_font      =>'Tahoma:10:',
  p_use_chart_xml          =>'N',
  p_chart_xml              => a1);
end;
/
declare
 a1 varchar2(32767) := null;
begin
a1:=a1||'select null link, ENAME, SAL, comm'||chr(10)||
'from  EMP';

wwv_flow_api.create_flash_chart5_series(
  p_id => 25882022895103252+wwv_flow_api.g_id_offset,
  p_chart_id => 25881808497103246+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_series_seq                =>40,
  p_series_name               =>'Salary and Commission',
  p_series_query              => a1,
  p_series_type               =>'Bar',
  p_series_query_type         =>'SQL_QUERY',
  p_series_query_parse_opt    =>'PARSE_CHART_QUERY',
  p_series_query_no_data_found=>'No data found.',
  p_series_query_row_count_max=>50,
  p_action_link               =>'',
  p_show_action_link          =>'N',
  p_action_link_checksum_type =>'');
end;
/
 
begin
 
null;
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 16
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00017
prompt  ...PAGE 17: Flash Chart with Custom XML
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 17
 ,p_tab_set => 'TS1'
 ,p_name => 'Flash Chart with Custom XML'
 ,p_step_title => 'Flash Chart with Custom XML'
 ,p_step_sub_title => 'Flash Chart with Custom XML'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'NO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_cache_page_yn => 'N'
 ,p_last_updated_by => 'DIMI'
 ,p_last_upd_yyyymmddhh24miss => '20110311100904'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"'||chr(10)||
'    codebase="#HOST_PROTOCOL#://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0"'||chr(10)||
'    width="#WIDTH#"'||chr(10)||
'    height="#HEIGHT#"'||chr(10)||
'    id="#CHART_NAME#"'||chr(10)||
'    align="top">'||chr(10)||
'<param name="movie" value="#IMAGE_PREFIX#flashchart/anychart_5/swf/#CHART_TYPE#.swf?XMLFile=#HOST#apex_util.flash?p=&APP_ID.:&FLOW_PAGE_ID.:&APP_SES';

s:=s||'SION.:FLOW_FLASH_CHART5_R#REGION_ID#">'||chr(10)||
'<param name="quality" value="high">'||chr(10)||
'<param name="allowScriptAccess" value="sameDomain">'||chr(10)||
'<param name="allowNetworking" value="all">'||chr(10)||
'<param name="scale" value="noscale">'||chr(10)||
'<param name="wmode" value="transparent">'||chr(10)||
'<param name="FlashVars" value="initText=#FLASH_INIT#&xmlLoadingText=#FLASH_LOADING#&resourcesLoadingText=#FLASH_RESOURCES#&noDataText=#FLASH_NO_DATA#&wa';

s:=s||'itingForDataText=#FLASH_WAITING#&templatesLoadingText=#FLASH_TEMPLATES#">'||chr(10)||
''||chr(10)||
'<embed src="#IMAGE_PREFIX#flashchart/anychart_5/swf/#CHART_TYPE#.swf?XMLFile=#HOST#apex_util.flash?p=&APP_ID.:&FLOW_PAGE_ID.:&APP_SESSION.:FLOW_FLASH_CHART5_R#REGION_ID#"'||chr(10)||
'       quality="high"'||chr(10)||
'       width="#WIDTH#"'||chr(10)||
'       height="#HEIGHT#"'||chr(10)||
'       name="#CHART_NAME#"'||chr(10)||
'       scale="noscale"'||chr(10)||
'       align=""'||chr(10)||
'       allowScript';

s:=s||'Access="sameDomain" '||chr(10)||
'       allowNetworking="all"'||chr(10)||
'       type="application/x-shockwave-flash"'||chr(10)||
'       pluginspage="#HOST_PROTOCOL#://www.macromedia.com/go/getflashplayer"'||chr(10)||
'       wmode="transparent"'||chr(10)||
'FlashVars="initText=#FLASH_INIT#&xmlLoadingText=#FLASH_LOADING#&resourcesLoadingText=#FLASH_RESOURCES#&noDataText=#FLASH_NO_DATA#&waitingForDataText=#FLASH_WAITING#&templatesLoadingText=#FLASH_TEMPLATES#';

s:=s||'">'||chr(10)||
'</embed>'||chr(10)||
'</object>'||chr(10)||
'#CHART_REFRESH#';

wwv_flow_api.create_page_plug (
  p_id=> 26070910538243881 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 17,
  p_plug_name=> '2D Column Chart with Custom XML',
  p_region_name=>'',
  p_plug_template=> 6617915349850572+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'FLASH_CHART5',
  p_translate_title=> 'Y',
  p_plug_display_error_message=> '#SQLERRM#',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
 a1 varchar2(32767) := null;
begin
a1:=a1||'<?xml version = "1.0" encoding="utf-8" standalone = "yes"?>'||chr(10)||
'<anychart>'||chr(10)||
'  <settings>'||chr(10)||
'    <animation enabled="false"/>'||chr(10)||
'    <no_data show_waiting_animation="False">'||chr(10)||
'      <label>'||chr(10)||
'        <text></text>'||chr(10)||
'        <font family="Verdana" bold="yes" size="10"/>'||chr(10)||
'      </label>'||chr(10)||
'    </no_data>'||chr(10)||
'  </settings>'||chr(10)||
'  <margin left="0" top="0" right="0" bottom="0" />'||chr(10)||
'  <charts>'||chr(10)||
'    <chart plot_type="CategorizedVertical"';

a1:=a1||' name="chart_26071128357243885"> '||chr(10)||
'      <chart_settings>'||chr(10)||
'        <title text_align="Center" position="Top" >'||chr(10)||
'          <text>Sales Forecast and Targets</text>'||chr(10)||
'          <font family="Tahoma" size="14" color="0x000000" />'||chr(10)||
'        </title>'||chr(10)||
'        <chart_background>'||chr(10)||
'          <fill type="Solid" color="0xffffff" opacity="0" />'||chr(10)||
'          <border enabled="false"/>'||chr(10)||
'          <corners type="Square"/>'||chr(10)||
'   ';

a1:=a1||'     </chart_background>'||chr(10)||
'        <data_plot_background>'||chr(10)||
''||chr(10)||
'        </data_plot_background>'||chr(10)||
'        <axes>'||chr(10)||
'          <y_axis >'||chr(10)||
'            <scale   mode="Normal"    />'||chr(10)||
'            <title>'||chr(10)||
'              <text>Sales</text>'||chr(10)||
'              <font family="Tahoma" size="14" color="0x000000" />'||chr(10)||
'            </title>'||chr(10)||
'            <labels enabled="true" position="Outside">'||chr(10)||
'              <font family="Tahoma" size';

a1:=a1||'="10" color="0x000000" />'||chr(10)||
'              <format><![CDATA[{%Value}{numDecimals:0,decimalSeparator:.,thousandsSeparator:\,}]]></format>'||chr(10)||
'            </labels>'||chr(10)||
'            <major_grid enabled="False"/>'||chr(10)||
'<minor_grid enabled="False"/>'||chr(10)||
'               <axis_markers>'||chr(10)||
'              <lines>'||chr(10)||
'                <line value="&P17_TARGET." thickness="2" color="Rgb(200,30,30)" caps="Square">'||chr(10)||
'                  <label ';

a1:=a1||'enabled="True" multi_line_align="Center">'||chr(10)||
'                    <font color="Rgb(200,30,30)" />'||chr(10)||
'                    <format>'||chr(10)||
'Forecast:'||chr(10)||
'${%Value}{numDecimals:0}'||chr(10)||
'</format>'||chr(10)||
'                  </label>'||chr(10)||
'                </line>'||chr(10)||
'                <line value="&P17_FORECAST." thickness="2" color="Green" caps="Square">'||chr(10)||
'                  <label enabled="True" multi_line_align="Center">'||chr(10)||
'                    <font ';

a1:=a1||'color="Green" />'||chr(10)||
'                    <format>'||chr(10)||
'Target:'||chr(10)||
'${%Value}{numDecimals:0}'||chr(10)||
'</format>'||chr(10)||
'                  </label>'||chr(10)||
'                </line>'||chr(10)||
'              </lines>'||chr(10)||
'            </axis_markers>'||chr(10)||
'          </y_axis>'||chr(10)||
'          <x_axis>'||chr(10)||
'            <scale  mode="Normal"    />'||chr(10)||
'            <title>'||chr(10)||
'              <text>Employee</text>'||chr(10)||
'              <font family="Tahoma" size="14" color="0x000000" />'||chr(10)||
'        ';

a1:=a1||'    </title>'||chr(10)||
'            <labels enabled="true" position="Outside">'||chr(10)||
'              <font family="Tahoma" size="10" color="0x000000" />'||chr(10)||
'              <format><![CDATA[{%Value}{numDecimals:0,decimalSeparator:.,thousandsSeparator:\,}]]></format>'||chr(10)||
'            </labels>'||chr(10)||
'            <major_grid enabled="True" interlaced="false">'||chr(10)||
'                <line color="Black" />'||chr(10)||
'              </major_grid>'||chr(10)||
'<minor_gri';

a1:=a1||'d enabled="True">'||chr(10)||
'              </minor_grid>            '||chr(10)||
'          </x_axis>          '||chr(10)||
'        </axes>'||chr(10)||
'      </chart_settings>'||chr(10)||
'      <data_plot_settings enable_3d_mode="false" >'||chr(10)||
'        <bar_series style="Default">'||chr(10)||
'          <tooltip_settings enabled="true">'||chr(10)||
'            <format><![CDATA[{%Name}{enabled:False} - {%Value}{numDecimals:0,decimalSeparator:.,thousandsSeparator:\,}]]></format>'||chr(10)||
'         ';

a1:=a1||'   <font family="Tahoma" size="10" color="0x000000" />'||chr(10)||
'              <position anchor="Float" valign="Top" padding="10" /> '||chr(10)||
'          </tooltip_settings>'||chr(10)||
'          <label_settings enabled="true" mode="Outside" multi_line_align="Center">'||chr(10)||
'            <format><![CDATA[{%Value}{numDecimals:0,decimalSeparator:.,thousandsSeparator:\,}]]></format>'||chr(10)||
'            <background enabled="false"/>'||chr(10)||
''||chr(10)||
'            <f';

a1:=a1||'ont family="Arial" size="10" color="0x000000" />'||chr(10)||
'          </label_settings>'||chr(10)||
'          <bar_style>'||chr(10)||
''||chr(10)||
'          </bar_style>'||chr(10)||
'          <marker_settings enabled="True" >'||chr(10)||
'            <marker type="None" />'||chr(10)||
'          </marker_settings>'||chr(10)||
'        </bar_series>'||chr(10)||
'      </data_plot_settings>'||chr(10)||
''||chr(10)||
'#DATA#'||chr(10)||
'    </chart>'||chr(10)||
'  </charts>'||chr(10)||
'</anychart>'||chr(10)||
'';

wwv_flow_api.create_flash_chart5(
  p_id => 26071128357243885+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id => 17,
  p_region_id => 26070910538243881+wwv_flow_api.g_id_offset,
  p_default_chart_type     =>'2DColumn',
  p_chart_title            =>'Sales Forecast and Targets',
  p_chart_name             =>'chart_10604610937639596',
  p_chart_width            =>700,
  p_chart_height           =>500,
  p_chart_animation        =>'N',
  p_display_attr           =>':H:N:V:X:N:N::V:Y:None:::N:::Default',
  p_dial_tick_attr         =>':::::::::::',
  p_gantt_attr             =>'Y:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:30:15:5:Y:I:N:S:E',
  p_map_attr               =>'Orthographic:RegionBounds:REGION_NAME',
  p_map_source             =>'',
  p_margins                =>':::',
  p_omit_label_interval    => null,
  p_bgtype                 =>'Trans',
  p_bgcolor1               =>'',
  p_bgcolor2               =>'',
  p_gradient_rotation      =>null,
  p_grid_bgtype            =>'',
  p_grid_bgcolor1          =>'',
  p_grid_bgcolor2          =>'',
  p_grid_gradient_rotation =>null,
  p_color_scheme           =>'6',
  p_custom_colors          =>'',
  p_map_undef_color_scheme =>'',
  p_map_undef_custom_colors =>'',
  p_x_axis_title           =>'Employee',
  p_x_axis_min             =>null,
  p_x_axis_max             =>null,
  p_x_axis_decimal_place   =>null,
  p_x_axis_prefix          =>'',
  p_x_axis_postfix         =>'',
  p_x_axis_label_rotation  =>'',
  p_x_axis_label_font      =>'Tahoma:10:#000000',
  p_x_axis_major_interval  =>null,
  p_x_axis_minor_interval  =>null,
  p_y_axis_title           =>'Salary',
  p_y_axis_min             =>null,
  p_y_axis_max             =>null,
  p_y_axis_decimal_place   =>null,
  p_y_axis_prefix          =>'',
  p_y_axis_postfix         =>'',
  p_y_axis_label_rotation  =>'',
  p_y_axis_label_font      =>'Tahoma:10:#000000',
  p_y_axis_major_interval  =>null,
  p_y_axis_minor_interval  =>null,
  p_async_update           =>'',
  p_async_time             =>null,
  p_legend_title           =>'',
  p_legend_title_font      =>'',
  p_names_font             => null,
  p_names_rotation         => null,
  p_values_font            =>'',
  p_values_rotation        =>null,
  p_values_prefix          =>'',
  p_values_postfix         =>'',
  p_hints_font             =>'Tahoma:10:#000000',
  p_legend_font            =>'',
  p_grid_labels_font       =>'',
  p_chart_title_font       =>'Tahoma:14:#000000',
  p_x_axis_title_font      =>'Tahoma:14:#000000',
  p_x_axis_title_rotation  =>'',
  p_y_axis_title_font      =>'Tahoma:14:#000000',
  p_y_axis_title_rotation  =>'',
  p_gauge_labels_font      =>'Tahoma:10:',
  p_use_chart_xml          =>'Y',
  p_chart_xml              => a1);
end;
/
declare
 a1 varchar2(32767) := null;
begin
a1:=a1||'SELECT NULL LINK,'||chr(10)||
'       ENAME LABEL,'||chr(10)||
'       SAL VALUE'||chr(10)||
'FROM   EMP'||chr(10)||
'ORDER  BY ENAME';

wwv_flow_api.create_flash_chart5_series(
  p_id => 26071201637243889+wwv_flow_api.g_id_offset,
  p_chart_id => 26071128357243885+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_series_seq                =>10,
  p_series_name               =>'Series 1',
  p_series_query              => a1,
  p_series_type               =>'',
  p_series_query_type         =>'SQL_QUERY',
  p_series_query_parse_opt    =>'',
  p_series_query_no_data_found=>'No data found.',
  p_series_query_row_count_max=>15,
  p_action_link               =>'',
  p_show_action_link          =>'',
  p_action_link_checksum_type =>'');
end;
/
 
begin
 
null;
 
end;
/

 
begin
 
null;
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>26072332483296497 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 17,
  p_name=>'P17_TARGET',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 26070910538243881+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Target',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 10,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line=> 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 6623130978850590+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'Y',
  p_attribute_02 => 'N',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>26072816684301367 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 17,
  p_name=>'P17_FORECAST',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 5,
  p_item_plug_id => 26070910538243881+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Forecast',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 10,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 6623130978850590+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'Y',
  p_attribute_02 => 'N',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_computation(
  p_id=> 26074730105324139 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 17,
  p_computation_sequence => 10,
  p_computation_item=> 'P17_FORECAST',
  p_computation_point=> 'BEFORE_HEADER',
  p_computation_type=> 'STATIC_ASSIGNMENT',
  p_computation_processed=> 'REPLACE_EXISTING',
  p_computation=> '2300',
  p_compute_when => 'P17_FORECAST',
  p_compute_when_type=>'ITEM_IS_NULL');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_computation(
  p_id=> 26075104956326420 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 17,
  p_computation_sequence => 20,
  p_computation_item=> 'P17_TARGET',
  p_computation_point=> 'BEFORE_HEADER',
  p_computation_type=> 'STATIC_ASSIGNMENT',
  p_computation_processed=> 'REPLACE_EXISTING',
  p_computation=> '4900',
  p_compute_when => 'P17_TARGET',
  p_compute_when_type=>'ITEM_IS_NULL');
 
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 17
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00018
prompt  ...PAGE 18: Flash Chart with Thresholds
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 18
 ,p_tab_set => 'TS1'
 ,p_name => 'Flash Chart with Thresholds'
 ,p_step_title => 'Flash Chart with Tresholds'
 ,p_step_sub_title => 'Flash Chart with Tresholds'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'NO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_cache_page_yn => 'N'
 ,p_last_updated_by => 'DIMI'
 ,p_last_upd_yyyymmddhh24miss => '20110311210126'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"'||chr(10)||
'    codebase="#HOST_PROTOCOL#://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0"'||chr(10)||
'    width="#WIDTH#"'||chr(10)||
'    height="#HEIGHT#"'||chr(10)||
'    id="#CHART_NAME#"'||chr(10)||
'    align="top">'||chr(10)||
'<param name="movie" value="#IMAGE_PREFIX#flashchart/anychart_5/swf/#CHART_TYPE#.swf?XMLFile=#HOST#apex_util.flash?p=&APP_ID.:&FLOW_PAGE_ID.:&APP_SES';

s:=s||'SION.:FLOW_FLASH_CHART5_R#REGION_ID#">'||chr(10)||
'<param name="quality" value="high">'||chr(10)||
'<param name="allowScriptAccess" value="sameDomain">'||chr(10)||
'<param name="allowNetworking" value="all">'||chr(10)||
'<param name="scale" value="noscale">'||chr(10)||
'<param name="wmode" value="transparent">'||chr(10)||
'<param name="FlashVars" value="initText=#FLASH_INIT#&xmlLoadingText=#FLASH_LOADING#&resourcesLoadingText=#FLASH_RESOURCES#&noDataText=#FLASH_NO_DATA#&wa';

s:=s||'itingForDataText=#FLASH_WAITING#&templatesLoadingText=#FLASH_TEMPLATES#">'||chr(10)||
''||chr(10)||
'<embed src="#IMAGE_PREFIX#flashchart/anychart_5/swf/#CHART_TYPE#.swf?XMLFile=#HOST#apex_util.flash?p=&APP_ID.:&FLOW_PAGE_ID.:&APP_SESSION.:FLOW_FLASH_CHART5_R#REGION_ID#"'||chr(10)||
'       quality="high"'||chr(10)||
'       width="#WIDTH#"'||chr(10)||
'       height="#HEIGHT#"'||chr(10)||
'       name="#CHART_NAME#"'||chr(10)||
'       scale="noscale"'||chr(10)||
'       align=""'||chr(10)||
'       allowScript';

s:=s||'Access="sameDomain" '||chr(10)||
'       allowNetworking="all"'||chr(10)||
'       type="application/x-shockwave-flash"'||chr(10)||
'       pluginspage="#HOST_PROTOCOL#://www.macromedia.com/go/getflashplayer"'||chr(10)||
'       wmode="transparent"'||chr(10)||
'FlashVars="initText=#FLASH_INIT#&xmlLoadingText=#FLASH_LOADING#&resourcesLoadingText=#FLASH_RESOURCES#&noDataText=#FLASH_NO_DATA#&waitingForDataText=#FLASH_WAITING#&templatesLoadingText=#FLASH_TEMPLATES#';

s:=s||'">'||chr(10)||
'</embed>'||chr(10)||
'</object>'||chr(10)||
'<script type="text/javascript" language="javascript">'||chr(10)||
'var chartName = ''#CHART_NAME#'';'||chr(10)||
'chartName = chartName.substring(1);'||chr(10)||
''||chr(10)||
'function chart_r#CHART_NAME#_InitRefresh(pNow) {'||chr(10)||
'  setTimeout("chart_r#CHART_NAME#_InitRefresh(true)",5000);'||chr(10)||
'  if (pNow){'||chr(10)||
'    apex_RefreshFlashChart (&APP_PAGE_ID., chartName, ''en-us'');'||chr(10)||
'    $(''#P18_CHART_XML'').trigger(''change'');'||chr(10)||
'  }'||chr(10)||
'}'||chr(10)||
''||chr(10)||
'apex_SWFFormFix(''#C';

s:=s||'HART_NAME#'');'||chr(10)||
'addLoadEvent(chart_r#CHART_NAME#_InitRefresh(false));'||chr(10)||
'</script>'||chr(10)||
'';

wwv_flow_api.create_page_plug (
  p_id=> 26120023883798832 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 18,
  p_plug_name=> '2D Column Chart with Custom XML and Dynamic Action',
  p_region_name=>'CHART',
  p_plug_template=> 6617915349850572+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'FLASH_CHART5',
  p_translate_title=> 'Y',
  p_plug_display_error_message=> '#SQLERRM#',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
 a1 varchar2(32767) := null;
begin
a1:=a1||'<?xml version = "1.0" encoding="utf-8" standalone = "yes"?>'||chr(10)||
'<anychart>'||chr(10)||
'  <settings>'||chr(10)||
'    <animation enabled="true"/>'||chr(10)||
'    <no_data show_waiting_animation="False">'||chr(10)||
'      <label>'||chr(10)||
'        <text></text>'||chr(10)||
'        <font family="Verdana" bold="yes" size="10"/>'||chr(10)||
'      </label>'||chr(10)||
'    </no_data>'||chr(10)||
'  </settings>'||chr(10)||
'  <margin left="0" top="0" right="0" bottom="0" />'||chr(10)||
'  <charts>'||chr(10)||
'    <chart plot_type="CategorizedVertical" ';

a1:=a1||'name="chart_26120201650798839"> '||chr(10)||
'      <chart_settings>'||chr(10)||
'        <title text_align="Center" position="Top" >'||chr(10)||
'          <text>Sales by Employees</text>'||chr(10)||
'          <font family="Tahoma" size="14" color="0x000000" />'||chr(10)||
'        </title>'||chr(10)||
'        <chart_background>'||chr(10)||
'          <fill type="Solid" color="0xffffff" opacity="0" />'||chr(10)||
'          <border enabled="false"/>'||chr(10)||
'          <corners type="Square"/>'||chr(10)||
'        </ch';

a1:=a1||'art_background>'||chr(10)||
'        <data_plot_background>'||chr(10)||
''||chr(10)||
'        </data_plot_background>'||chr(10)||
'        <axes>'||chr(10)||
'          <y_axis >'||chr(10)||
'            <scale   mode="Normal"    />'||chr(10)||
'            <title>'||chr(10)||
'              <text>Sales</text>'||chr(10)||
'              <font family="Tahoma" size="14" color="0x000000" />'||chr(10)||
'            </title>'||chr(10)||
'            <labels enabled="true" position="Outside">'||chr(10)||
'              <font family="Tahoma" size="10" col';

a1:=a1||'or="0x000000" />'||chr(10)||
'              <format><![CDATA[{%Value}{numDecimals:0,decimalSeparator:.,thousandsSeparator:\,}]]></format>'||chr(10)||
'            </labels>'||chr(10)||
'            <major_grid enabled="False"/>'||chr(10)||
'<minor_grid enabled="False"/>'||chr(10)||
'            '||chr(10)||
'          </y_axis>'||chr(10)||
'          <x_axis>'||chr(10)||
'            <scale  mode="Normal"    />'||chr(10)||
'            <title>'||chr(10)||
'              <text>Employee</text>'||chr(10)||
'              <font family="Tahom';

a1:=a1||'a" size="14" color="0x000000" />'||chr(10)||
'            </title>'||chr(10)||
'            <labels enabled="true" position="Outside">'||chr(10)||
'              <font family="Tahoma" size="10" color="0x000000" />'||chr(10)||
'              <format><![CDATA[{%Value}{numDecimals:0,decimalSeparator:.,thousandsSeparator:\,}]]></format>'||chr(10)||
'            </labels>'||chr(10)||
'            <major_grid enabled="True" interlaced="false">'||chr(10)||
'                <line color="Black" ';

a1:=a1||'/>'||chr(10)||
'              </major_grid>'||chr(10)||
'<minor_grid enabled="True">'||chr(10)||
'              </minor_grid>'||chr(10)||
'            '||chr(10)||
'          </x_axis>'||chr(10)||
'          '||chr(10)||
'        </axes>'||chr(10)||
'        <legend enabled="true" position="Bottom" align="Near" elements_layout="Horizontal"  ignore_auto_item="true" >'||chr(10)||
'          <title enabled="true">'||chr(10)||
'            <text>Legend</text>'||chr(10)||
'            <font family="Arial" size="10" color="0x000000" />'||chr(10)||
'       ';

a1:=a1||'   </title>'||chr(10)||
'          <font family="Arial" size="10" color="0x000000" />     '||chr(10)||
'<items><item source="thresholds"/></items>     '||chr(10)||
'        </legend>'||chr(10)||
''||chr(10)||
'      </chart_settings>'||chr(10)||
'      <data_plot_settings enable_3d_mode="false" >'||chr(10)||
'        <bar_series style="Default">'||chr(10)||
'          <tooltip_settings enabled="true">'||chr(10)||
'            <format><![CDATA[{%Name}{enabled:False} - {%Value}{numDecimals:0,decimalSeparator:.,tho';

a1:=a1||'usandsSeparator:\,}]]></format>'||chr(10)||
'            <font family="Tahoma" size="10" color="0x000000" />'||chr(10)||
'              <position anchor="Float" valign="Top" padding="10" /> '||chr(10)||
'          </tooltip_settings>'||chr(10)||
'          <label_settings enabled="true" mode="Outside" multi_line_align="Center">'||chr(10)||
'            <format><![CDATA[{%Value}{numDecimals:0,decimalSeparator:.,thousandsSeparator:\,}]]></format>'||chr(10)||
'            <bac';

a1:=a1||'kground enabled="false"/>'||chr(10)||
''||chr(10)||
'            <font family="Arial" size="10" color="0x000000" />'||chr(10)||
'          </label_settings>'||chr(10)||
'          <bar_style>'||chr(10)||
''||chr(10)||
'          </bar_style>'||chr(10)||
'          <marker_settings enabled="True" >'||chr(10)||
'            <marker type="None" />'||chr(10)||
'          </marker_settings>'||chr(10)||
'        </bar_series>'||chr(10)||
'      </data_plot_settings>'||chr(10)||
''||chr(10)||
'<thresholds>'||chr(10)||
'  <threshold name="sales_threshold">'||chr(10)||
'    <condition name="Bad" t';

a1:=a1||'ype="lessThan" value_1="{%Value}" value_2="1500" color="Red"/>'||chr(10)||
'    <condition name="Normal" type="between" value_1="{%Value}" value_2="1500" value_3="2500" color="Yellow"/>'||chr(10)||
'    <condition name="Good" type="greaterThan" value_1="{%Value}" value_2="2500" color="Green"/>'||chr(10)||
'  </threshold>'||chr(10)||
'</thresholds>'||chr(10)||
''||chr(10)||
'&P18_CHART_XML.'||chr(10)||
'    </chart>'||chr(10)||
'  </charts>'||chr(10)||
'</anychart>'||chr(10)||
'';

wwv_flow_api.create_flash_chart5(
  p_id => 26120201650798839+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id => 18,
  p_region_id => 26120023883798832+wwv_flow_api.g_id_offset,
  p_default_chart_type     =>'2DColumn',
  p_chart_title            =>'Sales by Employees',
  p_chart_name             =>'chart_10604610937639596',
  p_chart_width            =>700,
  p_chart_height           =>500,
  p_chart_animation        =>'SideFromBottom',
  p_display_attr           =>':H:N:V:X:N:Bottom::H:Y:None:::N:::Default',
  p_dial_tick_attr         =>':::::::::::',
  p_gantt_attr             =>'Y:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:30:15:5:Y:I:N:S:E',
  p_map_attr               =>'Orthographic:RegionBounds:REGION_NAME',
  p_map_source             =>'',
  p_margins                =>':::',
  p_omit_label_interval    => null,
  p_bgtype                 =>'Trans',
  p_bgcolor1               =>'',
  p_bgcolor2               =>'',
  p_gradient_rotation      =>null,
  p_grid_bgtype            =>'',
  p_grid_bgcolor1          =>'',
  p_grid_bgcolor2          =>'',
  p_grid_gradient_rotation =>null,
  p_color_scheme           =>'6',
  p_custom_colors          =>'',
  p_map_undef_color_scheme =>'',
  p_map_undef_custom_colors =>'',
  p_x_axis_title           =>'Employee',
  p_x_axis_min             =>null,
  p_x_axis_max             =>null,
  p_x_axis_decimal_place   =>null,
  p_x_axis_prefix          =>'',
  p_x_axis_postfix         =>'',
  p_x_axis_label_rotation  =>'',
  p_x_axis_label_font      =>'Tahoma:10:#000000',
  p_x_axis_major_interval  =>null,
  p_x_axis_minor_interval  =>null,
  p_y_axis_title           =>'Sales',
  p_y_axis_min             =>null,
  p_y_axis_max             =>null,
  p_y_axis_decimal_place   =>null,
  p_y_axis_prefix          =>'',
  p_y_axis_postfix         =>'',
  p_y_axis_label_rotation  =>'',
  p_y_axis_label_font      =>'Tahoma:10:#000000',
  p_y_axis_major_interval  =>null,
  p_y_axis_minor_interval  =>null,
  p_async_update           =>'',
  p_async_time             =>null,
  p_legend_title           =>'Legend',
  p_legend_title_font      =>'',
  p_names_font             => null,
  p_names_rotation         => null,
  p_values_font            =>'',
  p_values_rotation        =>null,
  p_values_prefix          =>'',
  p_values_postfix         =>'',
  p_hints_font             =>'Tahoma:10:#000000',
  p_legend_font            =>'',
  p_grid_labels_font       =>'',
  p_chart_title_font       =>'Tahoma:14:#000000',
  p_x_axis_title_font      =>'Tahoma:14:#000000',
  p_x_axis_title_rotation  =>'',
  p_y_axis_title_font      =>'Tahoma:14:#000000',
  p_y_axis_title_rotation  =>'',
  p_gauge_labels_font      =>'Tahoma:10:',
  p_use_chart_xml          =>'Y',
  p_chart_xml              => a1);
end;
/
declare
 a1 varchar2(32767) := null;
begin
a1:=a1||'SELECT NULL LINK,'||chr(10)||
'       ENAME LABEL,'||chr(10)||
'       SAL VALUE'||chr(10)||
'FROM   EMP'||chr(10)||
'ORDER  BY ENAME';

wwv_flow_api.create_flash_chart5_series(
  p_id => 26120323359798843+wwv_flow_api.g_id_offset,
  p_chart_id => 26120201650798839+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_series_seq                =>10,
  p_series_name               =>'Series 1',
  p_series_query              => a1,
  p_series_type               =>'',
  p_series_query_type         =>'SQL_QUERY',
  p_series_query_parse_opt    =>'',
  p_series_query_no_data_found=>'No data found.',
  p_series_query_row_count_max=>15,
  p_action_link               =>'',
  p_show_action_link          =>'',
  p_action_link_checksum_type =>'');
end;
/
 
begin
 
null;
 
end;
/

 
begin
 
null;
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>26131009905210787 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 18,
  p_name=>'P18_CHART_XML',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 26120023883798832+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> 4000,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line=> 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'LEFT',
  p_field_alignment=> 'LEFT',
  p_is_persistent=> 'Y',
  p_attribute_01 => 'Y',
  p_item_comment => '');
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_da_event (
  p_id => 26130402632208739 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 18
 ,p_name => 'Custom XML for Chart'
 ,p_event_sequence => 10
 ,p_bind_type => 'bind'
 ,p_bind_event_type => 'ready'
  );
wwv_flow_api.create_page_da_action (
  p_id => 26130715308208743 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 18
 ,p_event_id => 26130402632208739 + wwv_flow_api.g_id_offset
 ,p_event_result => 'TRUE'
 ,p_action_sequence => 10
 ,p_execute_on_page_init => 'N'
 ,p_action => 'NATIVE_EXECUTE_PLSQL_CODE'
 ,p_attribute_01 => 'declare'||chr(10)||
'  l_xml clob;'||chr(10)||
'begin'||chr(10)||
'SELECT xmlelement("data", xmlattributes(''sales_threshold'' AS "threshold"), xmlelement("series", xmlattributes(''Series 1'' AS "name"), xmlagg( xmlelement("point", xmlattributes(ename AS "name", sal AS "y") ) ))).getClobVal()'||chr(10)||
'  INTO l_xml'||chr(10)||
'  FROM emp;'||chr(10)||
':P18_CHART_XML := wwv_flow_utilities.clob_to_varchar2(l_xml);'||chr(10)||
'end;'
 ,p_attribute_02 => 'P18_CHART_XML'
 ,p_stop_execution_on_error => 'Y'
 );
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_da_event (
  p_id => 26165219327219598 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 18
 ,p_name => 'Custom XML for Chart (Refresh)'
 ,p_event_sequence => 20
 ,p_triggering_element_type => 'ITEM'
 ,p_triggering_element => 'P18_CHART_XML'
 ,p_bind_type => 'bind'
 ,p_bind_event_type => 'change'
  );
wwv_flow_api.create_page_da_action (
  p_id => 26165504187219600 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 18
 ,p_event_id => 26165219327219598 + wwv_flow_api.g_id_offset
 ,p_event_result => 'TRUE'
 ,p_action_sequence => 10
 ,p_execute_on_page_init => 'N'
 ,p_action => 'NATIVE_EXECUTE_PLSQL_CODE'
 ,p_attribute_01 => 'declare'||chr(10)||
'  l_xml clob;'||chr(10)||
'begin'||chr(10)||
'SELECT xmlelement("data", xmlattributes(''sales_threshold'' AS "threshold"), xmlelement("series", xmlattributes(''Series 1'' AS "name"), xmlagg( xmlelement("point", xmlattributes(ename AS "name", sal AS "y") ) ))).getClobVal()'||chr(10)||
'  INTO l_xml'||chr(10)||
'  FROM emp;'||chr(10)||
':P18_CHART_XML := wwv_flow_utilities.clob_to_varchar2(l_xml);'||chr(10)||
'end;'
 ,p_attribute_02 => 'P18_CHART_XML'
 ,p_stop_execution_on_error => 'Y'
 );
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 18
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00019
prompt  ...PAGE 19: Line Chart with Nulls
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 19
 ,p_tab_set => 'TS1'
 ,p_name => 'Line Chart with Nulls'
 ,p_step_title => 'Line Chart with Nulls'
 ,p_step_sub_title => 'Line Chart with Nulls'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_cache_page_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_last_updated_by => 'DIMI'
 ,p_last_upd_yyyymmddhh24miss => '20110405140759'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"'||chr(10)||
'    codebase="#HOST_PROTOCOL#://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0"'||chr(10)||
'    width="#WIDTH#"'||chr(10)||
'    height="#HEIGHT#"'||chr(10)||
'    id="#CHART_NAME#"'||chr(10)||
'    align="top">'||chr(10)||
'<param name="movie" value="#IMAGE_PREFIX#flashchart/anychart_5/swf/#CHART_TYPE#.swf?XMLFile=#HOST#apex_util.flash?p=&APP_ID.:19:&APP_SESSION.:FLOW_F';

s:=s||'LASH_CHART5_R#REGION_ID#">'||chr(10)||
'<param name="quality" value="high">'||chr(10)||
'<param name="allowScriptAccess" value="sameDomain">'||chr(10)||
'<param name="allowNetworking" value="all">'||chr(10)||
'<param name="scale" value="noscale">'||chr(10)||
'<param name="wmode" value="transparent">'||chr(10)||
'<param name="FlashVars" value="initText=#FLASH_INIT#&xmlLoadingText=#FLASH_LOADING#&resourcesLoadingText=#FLASH_RESOURCES#&noDataText=#FLASH_NO_DATA#&waitingForData';

s:=s||'Text=#FLASH_WAITING#&templatesLoadingText=#FLASH_TEMPLATES#">'||chr(10)||
''||chr(10)||
'<embed src="#IMAGE_PREFIX#flashchart/anychart_5/swf/#CHART_TYPE#.swf?XMLFile=#HOST#apex_util.flash?p=&APP_ID.:19:&APP_SESSION.:FLOW_FLASH_CHART5_R#REGION_ID#"'||chr(10)||
'       quality="high"'||chr(10)||
'       width="#WIDTH#"'||chr(10)||
'       height="#HEIGHT#"'||chr(10)||
'       name="#CHART_NAME#"'||chr(10)||
'       scale="noscale"'||chr(10)||
'       align=""'||chr(10)||
'       allowScriptAccess="sameDomain" '||chr(10)||
'   ';

s:=s||'    allowNetworking="all"'||chr(10)||
'       type="application/x-shockwave-flash"'||chr(10)||
'       pluginspage="#HOST_PROTOCOL#://www.macromedia.com/go/getflashplayer"'||chr(10)||
'       wmode="transparent"'||chr(10)||
'       FlashVars="initText=#FLASH_INIT#&xmlLoadingText=#FLASH_LOADING#&resourcesLoadingText=#FLASH_RESOURCES#&noDataText=#FLASH_NO_DATA#&waitingForDataText=#FLASH_WAITING#&templatesLoadingText=#FLASH_TEMPLATES#">'||chr(10)||
'</embed>'||chr(10)||
'</obj';

s:=s||'ect>'||chr(10)||
'#CHART_REFRESH#';

wwv_flow_api.create_page_plug (
  p_id=> 31118300707610514 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 19,
  p_plug_name=> 'Line Chart with Nulls',
  p_region_name=>'',
  p_plug_template=> 6617915349850572+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'FLASH_CHART5',
  p_plug_display_error_message=> '#SQLERRM#',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
 a1 varchar2(32767) := null;
begin
a1 := null;
wwv_flow_api.create_flash_chart5(
  p_id => 31118525987610518+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id => 19,
  p_region_id => 31118300707610514+wwv_flow_api.g_id_offset,
  p_default_chart_type     =>'2DLine',
  p_chart_title            =>'Line Chart with Nulls',
  p_chart_name             =>'chart_31118525987610518',
  p_chart_width            =>700,
  p_chart_height           =>500,
  p_chart_animation        =>'N',
  p_display_attr           =>':H:N:V:X:N:N:::Y:Circle:::N::',
  p_dial_tick_attr         =>'',
  p_gantt_attr             =>'Y:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:30:15:5:Y:I:N:S:E',
  p_map_attr               =>'Orthographic:RegionBounds:REGION_NAME:Y:Y:::::Y:N',
  p_map_source             =>'',
  p_margins                =>'',
  p_omit_label_interval    => null,
  p_bgtype                 =>'Trans',
  p_bgcolor1               =>'',
  p_bgcolor2               =>'',
  p_gradient_rotation      =>null,
  p_grid_bgtype            =>'',
  p_grid_bgcolor1          =>'',
  p_grid_bgcolor2          =>'',
  p_grid_gradient_rotation =>null,
  p_color_scheme           =>'6',
  p_custom_colors          =>'',
  p_map_undef_color_scheme =>'',
  p_map_undef_custom_colors =>'',
  p_x_axis_title           =>'',
  p_x_axis_min             =>null,
  p_x_axis_max             =>null,
  p_x_axis_decimal_place   =>null,
  p_x_axis_prefix          =>'',
  p_x_axis_postfix         =>'',
  p_x_axis_label_rotation  =>'',
  p_x_axis_label_font      =>'',
  p_x_axis_major_interval  =>null,
  p_x_axis_minor_interval  =>null,
  p_y_axis_title           =>'',
  p_y_axis_min             =>null,
  p_y_axis_max             =>null,
  p_y_axis_decimal_place   =>null,
  p_y_axis_prefix          =>'',
  p_y_axis_postfix         =>'',
  p_y_axis_label_rotation  =>'',
  p_y_axis_label_font      =>'',
  p_y_axis_major_interval  =>null,
  p_y_axis_minor_interval  =>null,
  p_async_update           =>'',
  p_async_time             =>null,
  p_legend_title           =>'',
  p_legend_title_font      =>'',
  p_names_font             => null,
  p_names_rotation         => null,
  p_values_font            =>'',
  p_values_rotation        =>null,
  p_values_prefix          =>'',
  p_values_postfix         =>'',
  p_hints_font             =>'Tahoma:10:',
  p_legend_font            =>'',
  p_grid_labels_font       =>'',
  p_chart_title_font       =>'Tahoma:14:',
  p_x_axis_title_font      =>'Tahoma:14:',
  p_x_axis_title_rotation  =>'',
  p_y_axis_title_font      =>'Tahoma:14:',
  p_y_axis_title_rotation  =>'',
  p_gauge_labels_font      =>'Tahoma:10',
  p_use_chart_xml          =>'',
  p_chart_xml              => a1);
end;
/
declare
 a1 varchar2(32767) := null;
begin
a1:=a1||'SELECT NULL LINK,'||chr(10)||
'       ENAME LABEL,'||chr(10)||
'       comm VALUE'||chr(10)||
'FROM   EMP'||chr(10)||
'ORDER  BY ENAME';

wwv_flow_api.create_flash_chart5_series(
  p_id => 31118613617610518+wwv_flow_api.g_id_offset,
  p_chart_id => 31118525987610518+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_series_seq                =>10,
  p_series_name               =>'Series 1',
  p_series_query              => a1,
  p_series_type               =>'Bar',
  p_series_query_type         =>'SQL_QUERY',
  p_series_query_parse_opt    =>'PARSE_CHART_QUERY',
  p_series_query_no_data_found=>'no data found',
  p_series_query_row_count_max=>15,
  p_action_link               =>'',
  p_show_action_link          =>'N',
  p_action_link_checksum_type =>'');
end;
/
 
begin
 
null;
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 19
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00020
prompt  ...PAGE 20: Complex Dashboard with Events (full AnyChart)
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 20
 ,p_tab_set => 'TS1'
 ,p_name => 'Complex Dashboard with Events (full AnyChart)'
 ,p_step_title => 'Complex Dashboard with Events (full AnyChart)'
 ,p_allow_duplicate_submissions => 'Y'
 ,p_step_sub_title => 'Complex Dashboard with Events (full AnyChart)'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'NO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_autocomplete_on_off => 'ON'
 ,p_html_page_header => 
'<script type="text/javascript" src="#IMAGE_PREFIX#flashchart/anychart_5/js/AnyChart.js"></script>'||chr(10)||
''
 ,p_javascript_code => 
'var chart;'
 ,p_page_is_public_y_n => 'N'
 ,p_protection_level => 'N'
 ,p_cache_page_yn => 'N'
 ,p_last_updated_by => 'DIMI'
 ,p_last_upd_yyyymmddhh24miss => '20110316005108'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<div id="chartDiv"></div>';

wwv_flow_api.create_page_plug (
  p_id=> 27003003781075813 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 20,
  p_plug_name=> 'Complex Dashboard with Events (full AnyChart)',
  p_region_name=>'',
  p_plug_template=> 6618921799850573+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_display_error_message=> '#SQLERRM#',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
 
begin
 
null;
 
end;
/

 
begin
 
null;
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>27003223391075814 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 20,
  p_name=>'P20_DEPTNO',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 27003003781075813+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Department',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_SELECT_LIST',
  p_lov=> 'select dname, deptno'||chr(10)||
'  from dept'||chr(10)||
'order by 1',
  p_lov_display_null=> 'YES',
  p_lov_translated=> 'N',
  p_lov_null_text=>'- Select -',
  p_lov_null_value=> '',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 6623130978850590+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'NONE',
  p_attribute_02 => 'N',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>27003423518075815 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 20,
  p_name=>'P20_EMPNO',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 30,
  p_item_plug_id => 27003003781075813+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Employee',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_SELECT_LIST',
  p_lov=> 'select ename, empno'||chr(10)||
'  from emp'||chr(10)||
'order by 1',
  p_lov_display_null=> 'YES',
  p_lov_translated=> 'N',
  p_lov_null_text=>'- Select -',
  p_lov_null_value=> '',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line=> 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 6623130978850590+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'NONE',
  p_attribute_02 => 'N',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>27003611002075815 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 20,
  p_name=>'P20_CHART_XML',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 27003003781075813+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> 4000,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line=> 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'LEFT',
  p_field_alignment=> 'LEFT',
  p_is_persistent=> 'Y',
  p_attribute_01 => 'Y',
  p_item_comment => '');
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_da_event (
  p_id => 27003821933075815 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 20
 ,p_name => 'Load Chart'
 ,p_event_sequence => 10
 ,p_bind_type => 'bind'
 ,p_bind_event_type => 'ready'
  );
wwv_flow_api.create_page_da_action (
  p_id => 27004107524075815 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 20
 ,p_event_id => 27003821933075815 + wwv_flow_api.g_id_offset
 ,p_event_result => 'TRUE'
 ,p_action_sequence => 10
 ,p_execute_on_page_init => 'N'
 ,p_action => 'NATIVE_JAVASCRIPT_CODE'
 ,p_affected_region_id => 27003003781075813 + wwv_flow_api.g_id_offset
 ,p_attribute_01 => 'chart = new AnyChart(''#IMAGE_PREFIX#flashchart/anychart_5/swf/OracleAnyChart.swf'',''#IMAGE_PREFIX#flashchart/anychart_5/swf/Preloader.swf'');'||chr(10)||
'chart.width = 800;'||chr(10)||
'chart.height = 500;'||chr(10)||
'chart.setXMLFile(''#OWNER#.GET_DASHBOARD_XML_PRC?p_param1=Full'');'||chr(10)||
'chart.write(''chartDiv'');'
 ,p_stop_execution_on_error => 'Y'
 );
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 20
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00101
prompt  ...PAGE 101: Login
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 101
 ,p_name => 'Login'
 ,p_alias => 'LOGIN'
 ,p_step_title => 'Login'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'AUTO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_autocomplete_on_off => 'OFF'
 ,p_step_template => 6614810839850550 + wwv_flow_api.g_id_offset
 ,p_page_is_public_y_n => 'N'
 ,p_cache_page_yn => 'N'
 ,p_last_upd_yyyymmddhh24miss => '20110122104715'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 6625102847850620 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 101,
  p_plug_name=> 'Login',
  p_region_name=>'',
  p_plug_template=> 6618013289850572+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
 
begin
 
null;
 
end;
/

 
begin
 
null;
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>6625203789850624 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 101,
  p_name=>'P101_USERNAME',
  p_data_type=> '',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 6625102847850620+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> '',
  p_prompt=>'Username',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 40,
  p_cMaxlength=> 100,
  p_cHeight=> null,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 2,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 6623201755850590+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>6625307295850625 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 101,
  p_name=>'P101_PASSWORD',
  p_data_type=> '',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 6625102847850620+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> '',
  p_prompt=>'Password',
  p_display_as=> 'NATIVE_PASSWORD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 40,
  p_cMaxlength=> 100,
  p_cHeight=> null,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 6623201755850590+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_attribute_01 => 'Y',
  p_attribute_02 => 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>6625403457850625 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 101,
  p_name=>'P101_LOGIN',
  p_data_type=> '',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 30,
  p_item_plug_id => 6625102847850620+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> '',
  p_item_default=> 'Login',
  p_prompt=>'Login',
  p_source=>'LOGIN',
  p_source_type=> 'STATIC',
  p_display_as=> 'BUTTON',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_tag_attributes  => 'template:'||to_char(6616312293850562 + wwv_flow_api.g_id_offset),
  p_begin_on_new_line=> 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'LEFT',
  p_field_alignment=> 'LEFT',
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'begin'||chr(10)||
'owa_util.mime_header(''text/html'', FALSE);'||chr(10)||
'owa_cookie.send('||chr(10)||
'    name=>''LOGIN_USERNAME_COOKIE'','||chr(10)||
'    value=>lower(:P101_USERNAME));'||chr(10)||
'exception when others then null;'||chr(10)||
'end;';

wwv_flow_api.create_page_process(
  p_id     => 6625604482850625 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 101,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Set Username Cookie',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'wwv_flow_custom_auth_std.login('||chr(10)||
'    P_UNAME       => :P101_USERNAME,'||chr(10)||
'    P_PASSWORD    => :P101_PASSWORD,'||chr(10)||
'    P_SESSION_ID  => v(''APP_SESSION''),'||chr(10)||
'    P_FLOW_PAGE   => :APP_ID||'':1'''||chr(10)||
'    );';

wwv_flow_api.create_page_process(
  p_id     => 6625526261850625 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 101,
  p_process_sequence=> 20,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Login',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'101';

wwv_flow_api.create_page_process(
  p_id     => 6625801406850625 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 101,
  p_process_sequence=> 30,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'CLEAR_CACHE_FOR_PAGES',
  p_process_name=> 'Clear Page(s) Cache',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'declare'||chr(10)||
'    v varchar2(255) := null;'||chr(10)||
'    c owa_cookie.cookie;'||chr(10)||
'begin'||chr(10)||
'   c := owa_cookie.get(''LOGIN_USERNAME_COOKIE'');'||chr(10)||
'   :P101_USERNAME := c.vals(1);'||chr(10)||
'exception when others then null;'||chr(10)||
'end;';

wwv_flow_api.create_page_process(
  p_id     => 6625726261850625 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 101,
  p_process_sequence=> 10,
  p_process_point=> 'BEFORE_HEADER',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Get Username Cookie',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 101
--
 
begin
 
null;
end;
null;
 
end;
/

prompt  ...lists
--
--application/shared_components/navigation/lists/flash_charts
 
begin
 
wwv_flow_api.create_list (
  p_id=> 20514810122329459 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Flash Charts',
  p_list_status=> 'PUBLIC',
  p_list_displayed=> 'BY_DEFAULT',
  p_display_row_template_id=> 6621510770850586 + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_list_item (
  p_id=> 20517518003350627 + wwv_flow_api.g_id_offset,
  p_list_id=> 20514810122329459 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>5,
  p_list_item_link_text=> 'First Flash Chart',
  p_list_item_link_target=> 'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::',
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'COLON_DELIMITED_PAGE_LIST',
  p_list_item_current_for_pages=> '2',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 20515423628333292 + wwv_flow_api.g_id_offset,
  p_list_id=> 20514810122329459 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>10,
  p_list_item_link_text=> 'Flash Chart with custom loading message',
  p_list_item_link_target=> 'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::::',
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'COLON_DELIMITED_PAGE_LIST',
  p_list_item_current_for_pages=> '6',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 20711230047849172 + wwv_flow_api.g_id_offset,
  p_list_id=> 20514810122329459 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>20,
  p_list_item_link_text=> 'Modified Chart',
  p_list_item_link_target=> 'f?p=&APP_ID.:12:&SESSION.::&DEBUG.::::',
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'COLON_DELIMITED_PAGE_LIST',
  p_list_item_current_for_pages=> '12',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 21051100759769727 + wwv_flow_api.g_id_offset,
  p_list_id=> 20514810122329459 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>30,
  p_list_item_link_text=> 'Chart with Multiple Series',
  p_list_item_link_target=> 'f?p=&APP_ID.:13:&SESSION.::&DEBUG.::::',
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'COLON_DELIMITED_PAGE_LIST',
  p_list_item_current_for_pages=> '13',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 25882706167120274 + wwv_flow_api.g_id_offset,
  p_list_id=> 20514810122329459 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>40,
  p_list_item_link_text=> 'Chart with two Series and Screen Reader Mode',
  p_list_item_link_target=> 'f?p=&APP_ID.:16:&SESSION.::&DEBUG.::::',
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'COLON_DELIMITED_PAGE_LIST',
  p_list_item_current_for_pages=> '16',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 26071625940247332 + wwv_flow_api.g_id_offset,
  p_list_id=> 20514810122329459 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>50,
  p_list_item_link_text=> 'Flash Chart with Custom XML',
  p_list_item_link_target=> 'f?p=&APP_ID.:17:&SESSION.::&DEBUG.::::',
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'COLON_DELIMITED_PAGE_LIST',
  p_list_item_current_for_pages=> '17',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 26120705310802589 + wwv_flow_api.g_id_offset,
  p_list_id=> 20514810122329459 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>60,
  p_list_item_link_text=> 'Flash Charts with Custom XML and Dynamic Action',
  p_list_item_link_target=> 'f?p=&APP_ID.:18:&SESSION.::&DEBUG.::::',
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'COLON_DELIMITED_PAGE_LIST',
  p_list_item_current_for_pages=> '18',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 26276601720958587 + wwv_flow_api.g_id_offset,
  p_list_id=> 20514810122329459 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>70,
  p_list_item_link_text=> 'Manual Flash Chart with JavaScript',
  p_list_item_link_target=> 'f?p=&APP_ID.:7:&SESSION.::&DEBUG.::::',
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'COLON_DELIMITED_PAGE_LIST',
  p_list_item_current_for_pages=> '7',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 26614304999676884 + wwv_flow_api.g_id_offset,
  p_list_id=> 20514810122329459 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>80,
  p_list_item_link_text=> 'Simple Dashboard with Submit',
  p_list_item_link_target=> 'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::::',
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'COLON_DELIMITED_PAGE_LIST',
  p_list_item_current_for_pages=> '8',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 26741020778570902 + wwv_flow_api.g_id_offset,
  p_list_id=> 20514810122329459 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>90,
  p_list_item_link_text=> 'Simple Dashboard with JavaScript',
  p_list_item_link_target=> 'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::::',
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'COLON_DELIMITED_PAGE_LIST',
  p_list_item_current_for_pages=> '10',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 26759431869649757 + wwv_flow_api.g_id_offset,
  p_list_id=> 20514810122329459 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>100,
  p_list_item_link_text=> 'Complex Dashboard with Actions (full AnyChart)',
  p_list_item_link_target=> 'f?p=&APP_ID.:11:&SESSION.::&DEBUG.::::',
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'COLON_DELIMITED_PAGE_LIST',
  p_list_item_current_for_pages=> '11',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 27004524475081620 + wwv_flow_api.g_id_offset,
  p_list_id=> 20514810122329459 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>110,
  p_list_item_link_text=> 'Complex Dashboard with Events (full AnyChart)',
  p_list_item_link_target=> 'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::::',
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'COLON_DELIMITED_PAGE_LIST',
  p_list_item_current_for_pages=> '20',
  p_list_item_owner=> '');
 
null;
 
end;
/

--application/shared_components/navigation/breadcrumbs
prompt  ...breadcrumbs
--
 
begin
 
wwv_flow_api.create_menu (
  p_id=> 6625912052850625 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> ' Breadcrumb');
 
wwv_flow_api.create_menu_option (
  p_id=>6626420060850633 + wwv_flow_api.g_id_offset,
  p_menu_id=>6625912052850625 + wwv_flow_api.g_id_offset,
  p_parent_id=>0,
  p_option_sequence=>10,
  p_short_name=>'Home',
  p_long_name=>'',
  p_link=>'f?p=40:1:&SESSION.',
  p_page_id=>1,
  p_also_current_for_pages=> '');
 
null;
 
end;
/

prompt  ...page templates for application: 40
--
--application/shared_components/user_interface/templates/page/login
prompt  ......Page template 6614810839850550
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">'||chr(10)||
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'  <title>#TITLE#</title>'||chr(10)||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||chr(10)||
'  <link rel="shortcut icon" href="#IMAG';

c1:=c1||'E_PREFIX#favicon.ico" type="image/x-icon">'||chr(10)||
'  #HEAD#'||chr(10)||
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0.css" type="text/css" />'||chr(10)||
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie.css" type="text/css" /><![endif]-->'||chr(10)||
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie6.css" type="text/css" /><![endi';

c1:=c1||'f]-->'||chr(10)||
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>'||chr(10)||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||chr(10)||
'#FORM_OPEN#'||chr(10)||
'';

c2:=c2||'#FORM_CLOSE#'||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<div id="login">'||chr(10)||
'  <div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>'||chr(10)||
'  <div id="login-main">#REGION_POSITION_02##BOX_BODY##REGION_POSITION_03#</div>'||chr(10)||
'</div>'||chr(10)||
'';

wwv_flow_api.create_template(
  p_id=> 6614810839850550 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Login',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="success" id="success-message">'||chr(10)||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />'||chr(10)||
'  #SUCCESS_MESSAGE#'||chr(10)||
'</div>',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="notification" id="notification-message">'||chr(10)||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#'||chr(10)||
'</div>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="0"',
  p_theme_id  => 21,
  p_theme_class_id => 6,
  p_translate_this_template => 'N',
  p_template_comment => '18');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/no_tabs_left_sidebar_fixed_width_div_based
prompt  ......Page template 6614903659850558
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">'||chr(10)||
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'  <title>#TITLE#</title>'||chr(10)||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||chr(10)||
'  <link rel="shortcut icon" href="#IMAG';

c1:=c1||'E_PREFIX#favicon.ico" type="image/x-icon">'||chr(10)||
'  #HEAD#'||chr(10)||
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0.css" type="text/css" />'||chr(10)||
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie.css" type="text/css" /><![endif]-->'||chr(10)||
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie6.css" type="text/css" /><![endi';

c1:=c1||'f]-->'||chr(10)||
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>'||chr(10)||
'#FORM_OPEN#'||chr(10)||
'';

c2:=c2||'<div id="footer"><div class="content">'||chr(10)||
'<div id="customize">#CUSTOMIZE#</div>'||chr(10)||
'<div class="app-version">#APP_VERSION#</div>'||chr(10)||
'<div class="clear"></div>'||chr(10)||
'  #REGION_POSITION_05#'||chr(10)||
'</div></div>'||chr(10)||
'#FORM_CLOSE#'||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<div id="header">'||chr(10)||
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>'||chr(10)||
'  #REGION_POSITION_07#'||chr(10)||
'  <div id="navbar">'||chr(10)||
'    #NAVIGATION_BAR#'||chr(10)||
'    <div class="app-user">#WELCOME_USER#</div>'||chr(10)||
'    #REGION_POSITION_08#'||chr(10)||
'  </div>'||chr(10)||
'</div>'||chr(10)||
'<div id="tabs">'||chr(10)||
'  <div class="frame">'||chr(10)||
'    <div class="bg">'||chr(10)||
'      <div class="tab-holder">'||chr(10)||
'        &nbsp;'||chr(10)||
'      </div>'||chr(10)||
'    </div>'||chr(10)||
'  </div>'||chr(10)||
'</div>'||chr(10)||
'<div id="';

c3:=c3||'topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>'||chr(10)||
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>'||chr(10)||
'<div id="body">'||chr(10)||
'  <div id="two-col-sb-left">'||chr(10)||
'    <div id="left-sidebar">#REGION_POSITION_02#</div>'||chr(10)||
'    <div id="main-sb-left">'||chr(10)||
'      #BOX_BODY##REGION_POSITION_03#'||chr(10)||
'    </div>'||chr(10)||
'  </div>'||chr(10)||
'</div>';

wwv_flow_api.create_template(
  p_id=> 6614903659850558 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'No Tabs - Left Sidebar (fixed-width / DIV based)',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="success" id="success-message">'||chr(10)||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />'||chr(10)||
'  #SUCCESS_MESSAGE#'||chr(10)||
'</div>',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="notification" id="notification-message">'||chr(10)||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#'||chr(10)||
'</div>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> 'summary="" cellpadding="0" border="0" cellspacing="0" width="100%"',
  p_sidebar_def_reg_pos => 'REGION_POSITION_02',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 21,
  p_theme_class_id => 17,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/no_tabs_left_and_right_sidebar_fixed_width_div_left_and_optional_table_based_right
prompt  ......Page template 6615005208850558
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">'||chr(10)||
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'  <title>#TITLE#</title>'||chr(10)||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||chr(10)||
'  <link rel="shortcut icon" href="#IMAG';

c1:=c1||'E_PREFIX#favicon.ico" type="image/x-icon">'||chr(10)||
'  #HEAD#'||chr(10)||
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0.css" type="text/css" />'||chr(10)||
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie.css" type="text/css" /><![endif]-->'||chr(10)||
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie6.css" type="text/css" /><![endi';

c1:=c1||'f]-->'||chr(10)||
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>'||chr(10)||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||chr(10)||
'#FORM_OPEN#'||chr(10)||
'';

c2:=c2||'<div id="footer"><div class="content">'||chr(10)||
'<div id="customize">#CUSTOMIZE#</div>'||chr(10)||
'<div class="app-version">#APP_VERSION#</div>'||chr(10)||
'<div class="clear"></div>'||chr(10)||
'  #REGION_POSITION_05#'||chr(10)||
'</div></div>'||chr(10)||
'#FORM_CLOSE#'||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<div id="header">'||chr(10)||
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>'||chr(10)||
'  #REGION_POSITION_07#'||chr(10)||
'  <div id="navbar">'||chr(10)||
'    <div class="app-user">#WELCOME_USER#</div>'||chr(10)||
'    #NAVIGATION_BAR#'||chr(10)||
'    #REGION_POSITION_08#'||chr(10)||
'  </div>'||chr(10)||
'</div>'||chr(10)||
'<div id="tabs">'||chr(10)||
'  <div class="frame">'||chr(10)||
'    <div class="bg">'||chr(10)||
'      <div class="tab-holder">'||chr(10)||
'        &nbsp;'||chr(10)||
'      </div>'||chr(10)||
'    </div>'||chr(10)||
'  </div>'||chr(10)||
'</div>'||chr(10)||
'<div id="';

c3:=c3||'topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>'||chr(10)||
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>'||chr(10)||
'<div id="body">'||chr(10)||
'  <div id="three-col">'||chr(10)||
'    <div id="left-sidebar">#REGION_POSITION_02#</div>'||chr(10)||
'    <div id="two-col-tbl">'||chr(10)||
'      <table class="tbl-body" cellspacing="0" cellpadding="0" border="0" summary="">'||chr(10)||
'        <tbody>'||chr(10)||
'          <tr>'||chr(10)||
'            <td class="';

c3:=c3||'tbl-main" width="100%">#BOX_BODY#</td>'||chr(10)||
'            <td class="tbl-sidebar">#REGION_POSITION_03#</td>     '||chr(10)||
'          </tr>'||chr(10)||
'        </tbody>'||chr(10)||
'      </table>'||chr(10)||
'    </div>'||chr(10)||
'  </div>'||chr(10)||
'</div>';

wwv_flow_api.create_template(
  p_id=> 6615005208850558 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'No Tabs - Left and Right Sidebar (fixed-width / DIV left and optional table-based right)',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="success" id="success-message">'||chr(10)||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />'||chr(10)||
'  #SUCCESS_MESSAGE#'||chr(10)||
'</div>',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="notification" id="notification-message">'||chr(10)||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#'||chr(10)||
'</div>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> 'summary="" cellpadding="0" border="0" cellspacing="0" width="100%"',
  p_sidebar_def_reg_pos => 'REGION_POSITION_02',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 21,
  p_theme_class_id => 17,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/no_tabs_right_sidebar_fixed_width_div_based
prompt  ......Page template 6615105723850559
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">'||chr(10)||
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'  <title>#TITLE#</title>'||chr(10)||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||chr(10)||
'  <link rel="shortcut icon" href="#IMAG';

c1:=c1||'E_PREFIX#favicon.ico" type="image/x-icon">'||chr(10)||
'  #HEAD#'||chr(10)||
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0.css" type="text/css" />'||chr(10)||
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie.css" type="text/css" /><![endif]-->'||chr(10)||
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie6.css" type="text/css" /><![endi';

c1:=c1||'f]-->'||chr(10)||
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>'||chr(10)||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||chr(10)||
'#FORM_OPEN#'||chr(10)||
'';

c2:=c2||'<div id="footer"><div class="content">'||chr(10)||
'<div id="customize">#CUSTOMIZE#</div>'||chr(10)||
'<div class="app-version">#APP_VERSION#</div>'||chr(10)||
'<div class="clear"></div>'||chr(10)||
'  #REGION_POSITION_05#'||chr(10)||
'</div></div>'||chr(10)||
'#FORM_CLOSE#'||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<div id="header">'||chr(10)||
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>'||chr(10)||
'  #REGION_POSITION_07#'||chr(10)||
'  <div id="navbar">'||chr(10)||
'    <div class="app-user">#WELCOME_USER#</div>'||chr(10)||
'    #NAVIGATION_BAR#'||chr(10)||
'    #REGION_POSITION_08#'||chr(10)||
'  </div>'||chr(10)||
'</div>'||chr(10)||
'<div id="tabs">'||chr(10)||
'  <div class="frame">'||chr(10)||
'    <div class="bg">'||chr(10)||
'      <div class="tab-holder">'||chr(10)||
'        &nbsp;'||chr(10)||
'      </div>'||chr(10)||
'    </div>'||chr(10)||
'  </div>'||chr(10)||
'</div>'||chr(10)||
'<div id="';

c3:=c3||'topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>'||chr(10)||
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>'||chr(10)||
'<div id="body">'||chr(10)||
'  <div id="two-col">'||chr(10)||
'    <div id="sidebar">#REGION_POSITION_03#</div>     '||chr(10)||
'    <div id="main">#REGION_POSITION_02##BOX_BODY#</div>'||chr(10)||
'  </div>'||chr(10)||
'</div>'||chr(10)||
'';

wwv_flow_api.create_template(
  p_id=> 6615105723850559 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'No Tabs - Right Sidebar (fixed-width / DIV based)',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="success" id="success-message">'||chr(10)||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />'||chr(10)||
'  #SUCCESS_MESSAGE#'||chr(10)||
'</div>',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="notification" id="notification-message">'||chr(10)||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#'||chr(10)||
'</div>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"',
  p_sidebar_def_reg_pos => 'REGION_POSITION_02',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 21,
  p_theme_class_id => 3,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/no_tabs_right_sidebar_optional_table_based
prompt  ......Page template 6615201810850560
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">'||chr(10)||
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'  <title>#TITLE#</title>'||chr(10)||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||chr(10)||
'  <link rel="shortcut icon" href="#IMAG';

c1:=c1||'E_PREFIX#favicon.ico" type="image/x-icon">'||chr(10)||
'  #HEAD#'||chr(10)||
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0.css" type="text/css" />'||chr(10)||
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie.css" type="text/css" /><![endif]-->'||chr(10)||
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie6.css" type="text/css" /><![endi';

c1:=c1||'f]-->'||chr(10)||
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>'||chr(10)||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||chr(10)||
'#FORM_OPEN#'||chr(10)||
'';

c2:=c2||'<div id="footer"><div class="content">'||chr(10)||
'<div id="customize">#CUSTOMIZE#</div>'||chr(10)||
'<div class="app-version">#APP_VERSION#</div>'||chr(10)||
'<div class="clear"></div>'||chr(10)||
'  #REGION_POSITION_05#'||chr(10)||
'</div></div>'||chr(10)||
'#FORM_CLOSE#'||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<div id="header">'||chr(10)||
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>'||chr(10)||
'  #REGION_POSITION_07#'||chr(10)||
'  <div id="navbar">'||chr(10)||
'    <div class="app-user">#WELCOME_USER#</div>'||chr(10)||
'    #NAVIGATION_BAR#'||chr(10)||
'    #REGION_POSITION_08#'||chr(10)||
'  </div>'||chr(10)||
'</div>'||chr(10)||
'<div id="tabs">'||chr(10)||
'  <div class="frame">'||chr(10)||
'    <div class="bg">'||chr(10)||
'      <div class="tab-holder">'||chr(10)||
'      </div>'||chr(10)||
'    </div>'||chr(10)||
'  </div>'||chr(10)||
'</div>'||chr(10)||
'<div id="topbar">#REGION';

c3:=c3||'_POSITION_01##REGION_POSITION_04#</div>'||chr(10)||
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>'||chr(10)||
'<div id="body">'||chr(10)||
'  <table class="tbl-body" cellspacing="0" cellpadding="0" border="0" summary="">'||chr(10)||
'    <tbody>'||chr(10)||
'      <tr>'||chr(10)||
'        <td class="tbl-main" width="100%">#REGION_POSITION_02##BOX_BODY#</td>'||chr(10)||
'        <td class="tbl-sidebar">#REGION_POSITION_03#</td>     '||chr(10)||
'      </tr>'||chr(10)||
' ';

c3:=c3||'   </tbody>'||chr(10)||
'  </table>'||chr(10)||
'</div>';

wwv_flow_api.create_template(
  p_id=> 6615201810850560 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'No Tabs - Right Sidebar (optional / table-based)',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="success" id="success-message">'||chr(10)||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />'||chr(10)||
'  #SUCCESS_MESSAGE#'||chr(10)||
'</div>',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="notification" id="notification-message">'||chr(10)||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#'||chr(10)||
'</div>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"',
  p_sidebar_def_reg_pos => 'REGION_POSITION_02',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 21,
  p_theme_class_id => 3,
  p_error_page_template => '<div class="error_container">'||chr(10)||
'	<div class="rounded-corner-region-blank-alt">'||chr(10)||
'		<div class="rc-gray-top">'||chr(10)||
'			<div class="rc-gray-top-r"></div>'||chr(10)||
'		</div>'||chr(10)||
'		<div class="rc-body">'||chr(10)||
'			<div class="rc-body-r">'||chr(10)||
'				<div class="rc-content-main">'||chr(10)||
'					<div class="sErrorText">'||chr(10)||
'					<strong>#INTERNAL_MESSAGE#</strong>'||chr(10)||
'					<strong>#MESSAGE#</strong>'||chr(10)||
'					<p>'||chr(10)||
'						<button onclick="#BACK_LINK#" class="button-default" type="button">'||chr(10)||
'						  <span>#OK#</span>'||chr(10)||
'						</button>'||chr(10)||
'					</p>'||chr(10)||
'					</div>'||chr(10)||
'					<div class="clear"></div>'||chr(10)||
'				</div>'||chr(10)||
'				<div class="clear"></div>'||chr(10)||
'			</div>'||chr(10)||
'		</div>'||chr(10)||
'		<div class="rc-bottom">'||chr(10)||
'			<div class="rc-bottom-r"></div>'||chr(10)||
'		</div>'||chr(10)||
'	</div>'||chr(10)||
'</div>',
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/one_level_tabs_left_sidebar_fixed_width_div_based
prompt  ......Page template 6615331996850561
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">'||chr(10)||
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'  <title>#TITLE#</title>'||chr(10)||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||chr(10)||
'  <link rel="shortcut icon" href="#IMAG';

c1:=c1||'E_PREFIX#favicon.ico" type="image/x-icon">'||chr(10)||
'  #HEAD#'||chr(10)||
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0.css" type="text/css" />'||chr(10)||
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie.css" type="text/css" /><![endif]-->'||chr(10)||
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie6.css" type="text/css" /><![endi';

c1:=c1||'f]-->'||chr(10)||
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>'||chr(10)||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||chr(10)||
'#FORM_OPEN#'||chr(10)||
'';

c2:=c2||'<div id="footer"><div class="content">'||chr(10)||
'<div id="customize">#CUSTOMIZE#</div>'||chr(10)||
'<div class="app-version">#APP_VERSION#</div>'||chr(10)||
'<div class="clear"></div>'||chr(10)||
'  #REGION_POSITION_05#'||chr(10)||
'</div></div>'||chr(10)||
'#FORM_CLOSE#'||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<div id="header">'||chr(10)||
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>'||chr(10)||
'  #REGION_POSITION_07#'||chr(10)||
'  <div id="navbar">'||chr(10)||
'    <div class="app-user">#WELCOME_USER#</div>'||chr(10)||
'    #NAVIGATION_BAR#'||chr(10)||
'    #REGION_POSITION_08#'||chr(10)||
'  </div>'||chr(10)||
'</div>'||chr(10)||
'<ul id="tabs">'||chr(10)||
'#TAB_CELLS#'||chr(10)||
'<li class="last"><span></span></li>'||chr(10)||
'</ul>'||chr(10)||
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>'||chr(10)||
'<div id="messages">#S';

c3:=c3||'UCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>'||chr(10)||
'<div id="body">'||chr(10)||
'  <div id="two-col-sb-left">'||chr(10)||
'    <div id="left-sidebar">#REGION_POSITION_02#</div>'||chr(10)||
'    <div id="main-sb-left">'||chr(10)||
'      #BOX_BODY##REGION_POSITION_03#'||chr(10)||
'    </div>'||chr(10)||
'  </div>'||chr(10)||
'</div>';

wwv_flow_api.create_template(
  p_id=> 6615331996850561 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'One Level Tabs - Left Sidebar (fixed-width / DIV based)',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="success" id="success-message">'||chr(10)||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />'||chr(10)||
'  #SUCCESS_MESSAGE#'||chr(10)||
'</div>',
  p_current_tab=> '<li class="#TAB_STATUS#">'||chr(10)||
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||chr(10)||
'</li>',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<li class="#TAB_STATUS#">'||chr(10)||
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||chr(10)||
'</li>',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="notification" id="notification-message">'||chr(10)||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#'||chr(10)||
'</div>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"',
  p_sidebar_def_reg_pos => 'REGION_POSITION_02',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 21,
  p_theme_class_id => 16,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/one_level_tabs_left_and_right_sidebar_fixed_width_div_left_and_optional_table_based_right
prompt  ......Page template 6615401270850561
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">'||chr(10)||
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'  <title>#TITLE#</title>'||chr(10)||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||chr(10)||
'  <link rel="shortcut icon" href="#IMAG';

c1:=c1||'E_PREFIX#favicon.ico" type="image/x-icon">'||chr(10)||
'  #HEAD#'||chr(10)||
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0.css" type="text/css" />'||chr(10)||
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie.css" type="text/css" /><![endif]-->'||chr(10)||
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie6.css" type="text/css" /><![endi';

c1:=c1||'f]-->'||chr(10)||
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>'||chr(10)||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||chr(10)||
'#FORM_OPEN#'||chr(10)||
'';

c2:=c2||'<div id="footer"><div class="content">'||chr(10)||
'<div id="customize">#CUSTOMIZE#</div>'||chr(10)||
'<div class="app-version">#APP_VERSION#</div>'||chr(10)||
'<div class="clear"></div>'||chr(10)||
'  #REGION_POSITION_05#'||chr(10)||
'</div></div>'||chr(10)||
'#FORM_CLOSE#'||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<div id="header">'||chr(10)||
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>'||chr(10)||
'  #REGION_POSITION_07#'||chr(10)||
'  <div id="navbar">'||chr(10)||
'    <div class="app-user">#WELCOME_USER#</div>'||chr(10)||
'    #NAVIGATION_BAR#'||chr(10)||
'    #REGION_POSITION_08#'||chr(10)||
'  </div>'||chr(10)||
'</div>'||chr(10)||
'<ul id="tabs">'||chr(10)||
'#TAB_CELLS#'||chr(10)||
'<li class="last"><span></span></li>'||chr(10)||
'</ul>'||chr(10)||
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>'||chr(10)||
'<div id="messages">#S';

c3:=c3||'UCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>'||chr(10)||
'<div id="body">'||chr(10)||
'  <div id="three-col">'||chr(10)||
'    <div id="left-sidebar">#REGION_POSITION_02#</div>'||chr(10)||
'    <div id="two-col-tbl">'||chr(10)||
'      <table class="tbl-body" cellspacing="0" cellpadding="0" border="0" summary="">'||chr(10)||
'        <tbody>'||chr(10)||
'          <tr>'||chr(10)||
'            <td class="tbl-main" width="100%">#BOX_BODY#</td>'||chr(10)||
'            <td class="tbl-sidebar">#';

c3:=c3||'REGION_POSITION_03#</td>     '||chr(10)||
'          </tr>'||chr(10)||
'        </tbody>'||chr(10)||
'      </table>'||chr(10)||
'    </div>'||chr(10)||
'  </div>'||chr(10)||
'</div>';

wwv_flow_api.create_template(
  p_id=> 6615401270850561 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'One Level Tabs - Left and Right Sidebar (fixed-width / DIV left and optional table-based right)',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="success" id="success-message">'||chr(10)||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />'||chr(10)||
'  #SUCCESS_MESSAGE#'||chr(10)||
'</div>',
  p_current_tab=> '<li class="#TAB_STATUS#">'||chr(10)||
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||chr(10)||
'</li>',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<li class="#TAB_STATUS#">'||chr(10)||
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||chr(10)||
'</li>',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="notification" id="notification-message">'||chr(10)||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#'||chr(10)||
'</div>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"',
  p_sidebar_def_reg_pos => 'REGION_POSITION_02',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 21,
  p_theme_class_id => 16,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/one_level_tabs_right_sidebar_fixed_width_div_based
prompt  ......Page template 6615518625850561
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">'||chr(10)||
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'  <title>#TITLE#</title>'||chr(10)||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||chr(10)||
'  <link rel="shortcut icon" href="#IMAG';

c1:=c1||'E_PREFIX#favicon.ico" type="image/x-icon">'||chr(10)||
'  #HEAD#'||chr(10)||
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0.css" type="text/css" />'||chr(10)||
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie.css" type="text/css" /><![endif]-->'||chr(10)||
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie6.css" type="text/css" /><![endi';

c1:=c1||'f]-->'||chr(10)||
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>'||chr(10)||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||chr(10)||
'#FORM_OPEN#'||chr(10)||
'';

c2:=c2||'<div id="footer"><div class="content">'||chr(10)||
'<div id="customize">#CUSTOMIZE#</div>'||chr(10)||
'<div class="app-version">#APP_VERSION#</div>'||chr(10)||
'<div class="clear"></div>'||chr(10)||
'  #REGION_POSITION_05#'||chr(10)||
'</div></div>'||chr(10)||
'#FORM_CLOSE#'||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<div id="header">'||chr(10)||
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>'||chr(10)||
'  #REGION_POSITION_07#'||chr(10)||
'  <div id="navbar">'||chr(10)||
'    <div class="app-user">#WELCOME_USER#</div>'||chr(10)||
'    #NAVIGATION_BAR#'||chr(10)||
'    #REGION_POSITION_08#'||chr(10)||
'  </div>'||chr(10)||
'</div>'||chr(10)||
'<ul id="tabs">'||chr(10)||
'#TAB_CELLS#'||chr(10)||
'<li class="last"><span></span></li>'||chr(10)||
'</ul>'||chr(10)||
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>'||chr(10)||
'<div id="messages">#S';

c3:=c3||'UCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>'||chr(10)||
'<div id="body">'||chr(10)||
'  <div id="two-col">'||chr(10)||
'    <div id="sidebar">#REGION_POSITION_03#</div>     '||chr(10)||
'    <div id="main">#REGION_POSITION_02##BOX_BODY#</div>'||chr(10)||
'  </div>'||chr(10)||
'</div>'||chr(10)||
'';

wwv_flow_api.create_template(
  p_id=> 6615518625850561 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'One Level Tabs - Right Sidebar (fixed-width / DIV based)',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="success" id="success-message">'||chr(10)||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />'||chr(10)||
'  #SUCCESS_MESSAGE#'||chr(10)||
'</div>',
  p_current_tab=> '<li class="#TAB_STATUS#">'||chr(10)||
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||chr(10)||
'</li>',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<li class="#TAB_STATUS#">'||chr(10)||
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||chr(10)||
'</li>',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="notification" id="notification-message">'||chr(10)||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#'||chr(10)||
'</div>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> '',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 21,
  p_theme_class_id => 8,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/one_level_tabs_right_sidebar_optional_table_based
prompt  ......Page template 6615627566850561
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">'||chr(10)||
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'  <title>#TITLE#</title>'||chr(10)||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||chr(10)||
'  <link rel="shortcut icon" href="#IMAG';

c1:=c1||'E_PREFIX#favicon.ico" type="image/x-icon">'||chr(10)||
'  #HEAD#'||chr(10)||
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0.css" type="text/css" />'||chr(10)||
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie.css" type="text/css" /><![endif]-->'||chr(10)||
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie6.css" type="text/css" /><![endi';

c1:=c1||'f]-->'||chr(10)||
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>'||chr(10)||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||chr(10)||
'#FORM_OPEN#'||chr(10)||
'';

c2:=c2||'<div id="footer"><div class="content">#SCREEN_READER_TOGGLE#'||chr(10)||
'<div id="customize">#CUSTOMIZE#</div>'||chr(10)||
'<div class="app-version">#APP_VERSION#</div>'||chr(10)||
'<div class="clear"></div>'||chr(10)||
'  #REGION_POSITION_05#'||chr(10)||
'</div></div>'||chr(10)||
'#FORM_CLOSE#'||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<div id="header">'||chr(10)||
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>'||chr(10)||
'  #REGION_POSITION_07#'||chr(10)||
'  <div id="navbar">'||chr(10)||
'    <div class="app-user">#WELCOME_USER#</div>'||chr(10)||
'    #NAVIGATION_BAR#'||chr(10)||
'    #REGION_POSITION_08#'||chr(10)||
'  </div>'||chr(10)||
'</div>'||chr(10)||
'<ul id="tabs">'||chr(10)||
'#TAB_CELLS#'||chr(10)||
'<li class="last"><span></span></li>'||chr(10)||
'</ul>'||chr(10)||
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>'||chr(10)||
'<div id="messages">#S';

c3:=c3||'UCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>'||chr(10)||
'<div id="body">'||chr(10)||
'  <table class="tbl-body" cellspacing="0" cellpadding="0" border="0" summary="">'||chr(10)||
'    <tbody>'||chr(10)||
'      <tr>'||chr(10)||
'        <td class="tbl-main" width="100%">#REGION_POSITION_02##BOX_BODY#</td>'||chr(10)||
'        <td class="tbl-sidebar">#REGION_POSITION_03#</td>     '||chr(10)||
'      </tr>'||chr(10)||
'    </tbody>'||chr(10)||
'  </table>'||chr(10)||
'</div>';

wwv_flow_api.create_template(
  p_id=> 6615627566850561 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'One Level Tabs - Right Sidebar (optional / table-based)',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="success" id="success-message">'||chr(10)||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />'||chr(10)||
'  #SUCCESS_MESSAGE#'||chr(10)||
'</div>',
  p_current_tab=> '<li class="#TAB_STATUS#">'||chr(10)||
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||chr(10)||
'</li>',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<li class="#TAB_STATUS#">'||chr(10)||
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||chr(10)||
'</li>',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="notification" id="notification-message">'||chr(10)||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#'||chr(10)||
'</div>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<div class="navbar-entry"><a href="#LINK#" class="navbar-link">#TEXT#</a></div>',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> '',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 21,
  p_theme_class_id => 1,
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/popup
prompt  ......Page template 6615724702850561
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">'||chr(10)||
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||chr(10)||
'<link rel="shortcut icon" href="#IMAGE_PREF';

c1:=c1||'IX#favicon.ico" type="image/x-icon">'||chr(10)||
'#HEAD#'||chr(10)||
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0.css" type="text/css" />'||chr(10)||
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie.css" type="text/css" /><![endif]-->'||chr(10)||
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->'||chr(10)||
'  ';

c1:=c1||'<!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD# class="pop-up-body">#FORM_OPEN#';

c2:=c2||'#FORM_CLOSE#</body>'||chr(10)||
'</html>';

c3:=c3||'<table summary="" cellpadding="0" width="100%" cellspacing="0" border="0">'||chr(10)||
'<tr>'||chr(10)||
'<td width="100%" valign="top"><div class="t1messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>#BOX_BODY##REGION_POSITION_01##REGION_POSITION_02##REGION_POSITION_04##REGION_POSITION_05##REGION_POSITION_06##REGION_POSITION_07##REGION_POSITION_08#</td>'||chr(10)||
'<td valign="top">#REGION_POSITION_03#<br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

wwv_flow_api.create_template(
  p_id=> 6615724702850561 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Popup',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t1success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t1notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<a href="#LINK#">#TEXT#</a>',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"',
  p_theme_id  => 21,
  p_theme_class_id => 4,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/printer_friendly
prompt  ......Page template 6615804049850561
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">'||chr(10)||
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'  <title>#TITLE#</title>'||chr(10)||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||chr(10)||
'  <link rel="shortcut icon" href="#IMAG';

c1:=c1||'E_PREFIX#favicon.ico" type="image/x-icon">'||chr(10)||
'  #HEAD#'||chr(10)||
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0.css" type="text/css" />'||chr(10)||
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie.css" type="text/css" /><![endif]-->'||chr(10)||
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie6.css" type="text/css" /><![endi';

c1:=c1||'f]-->'||chr(10)||
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>'||chr(10)||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||chr(10)||
'#FORM_OPEN#';

c2:=c2||'#FORM_CLOSE#'||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<div id="header">'||chr(10)||
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>'||chr(10)||
'  #REGION_POSITION_07#'||chr(10)||
'  <div id="navbar">'||chr(10)||
'    <div class="app-user">#WELCOME_USER#</div>'||chr(10)||
'    #REGION_POSITION_08#'||chr(10)||
'  </div>'||chr(10)||
'</div>'||chr(10)||
'<div id="body">'||chr(10)||
'  <table class="tbl-body" cellspacing="0" cellpadding="0" border="0" summary="">'||chr(10)||
'    <tbody>'||chr(10)||
'      <tr>'||chr(10)||
'        <td class="tbl-sidebar" style="padding-right: 1';

c3:=c3||'0px;">#REGION_POSITION_02#</td>     '||chr(10)||
'        <td class="tbl-main" width="100%">#BOX_BODY#</td>'||chr(10)||
'        <td class="tbl-sidebar">#REGION_POSITION_03#</td>     '||chr(10)||
'      </tr>'||chr(10)||
'    </tbody>'||chr(10)||
'  </table>'||chr(10)||
'</div>'||chr(10)||
'';

wwv_flow_api.create_template(
  p_id=> 6615804049850561 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Printer Friendly',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '',
  p_navigation_bar=> '',
  p_navbar_entry=> '',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"',
  p_theme_id  => 21,
  p_theme_class_id => 5,
  p_translate_this_template => 'N',
  p_template_comment => '3');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/two_level_tabs_left_sidebar_fixed_width_div_based
prompt  ......Page template 6615909207850562
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">'||chr(10)||
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'  <title>#TITLE#</title>'||chr(10)||
' #HEAD#'||chr(10)||
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0.css" type="text/css" />'||chr(10)||
'  <!-';

c1:=c1||'-[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie.css" type="text/css" /><![endif]-->'||chr(10)||
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->'||chr(10)||
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD';

c1:=c1||'#>'||chr(10)||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||chr(10)||
'#FORM_OPEN#'||chr(10)||
'';

c2:=c2||'<div id="footer"><div class="content">'||chr(10)||
'<div id="customize">#CUSTOMIZE#</div>'||chr(10)||
'<div class="app-version">#APP_VERSION#</div>'||chr(10)||
'<div class="clear"></div>'||chr(10)||
'  #REGION_POSITION_05#'||chr(10)||
'</div></div>'||chr(10)||
'#FORM_CLOSE#'||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<div id="header">'||chr(10)||
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>'||chr(10)||
'  #REGION_POSITION_07#'||chr(10)||
'  <div id="navbar">'||chr(10)||
'    <div class="app-user">#WELCOME_USER#</div>'||chr(10)||
'    #NAVIGATION_BAR#'||chr(10)||
'    #REGION_POSITION_08#'||chr(10)||
'  </div>'||chr(10)||
'  <div id="parent-tabs">'||chr(10)||
'    <div class="tab-holder">#PARENT_TAB_CELLS#</div>'||chr(10)||
'  </div>'||chr(10)||
'</div>'||chr(10)||
'<ul id="tabs">'||chr(10)||
'#TAB_CELLS#'||chr(10)||
'<li class="last"><span></span></li>'||chr(10)||
'</ul';

c3:=c3||'>'||chr(10)||
''||chr(10)||
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>'||chr(10)||
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>'||chr(10)||
'<div id="body">'||chr(10)||
'  <div id="two-col-sb-left">'||chr(10)||
'    <div id="left-sidebar">#REGION_POSITION_02#</div>'||chr(10)||
'    <div id="main-sb-left">'||chr(10)||
'      #BOX_BODY##REGION_POSITION_03#'||chr(10)||
'    </div>'||chr(10)||
'  </div>'||chr(10)||
'</div>'||chr(10)||
'';

wwv_flow_api.create_template(
  p_id=> 6615909207850562 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Two Level Tabs - Left Sidebar (fixed-width / DIV based)',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="success" id="success-message">'||chr(10)||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />'||chr(10)||
'  #SUCCESS_MESSAGE#'||chr(10)||
'</div>',
  p_current_tab=> '<li class="#TAB_STATUS#">'||chr(10)||
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||chr(10)||
'</li>',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<li class="#TAB_STATUS#">'||chr(10)||
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||chr(10)||
'</li>',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '<div class="current"><div>'||chr(10)||
'#TAB_LABEL##TAB_INLINE_EDIT#'||chr(10)||
'</div></div>'||chr(10)||
''||chr(10)||
'',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '<div class="noncurrent"><div>'||chr(10)||
'<a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||chr(10)||
'</div></div>'||chr(10)||
''||chr(10)||
''||chr(10)||
''||chr(10)||
''||chr(10)||
'',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="notification" id="notification-message">'||chr(10)||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#'||chr(10)||
'</div>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"',
  p_sidebar_def_reg_pos => 'REGION_POSITION_02',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 21,
  p_theme_class_id => 18,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/two_level_tabs_left_and_right_sidebar_fixed_width_div_left_and_optional_table_based_right
prompt  ......Page template 6616029459850562
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">'||chr(10)||
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'  <title>#TITLE#</title>'||chr(10)||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||chr(10)||
'  <link rel="shortcut icon" href="#IMAG';

c1:=c1||'E_PREFIX#favicon.ico" type="image/x-icon">'||chr(10)||
' #HEAD#'||chr(10)||
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0.css" type="text/css" />'||chr(10)||
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie.css" type="text/css" /><![endif]-->'||chr(10)||
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie6.css" type="text/css" /><![endif';

c1:=c1||']-->'||chr(10)||
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>'||chr(10)||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||chr(10)||
'#FORM_OPEN#'||chr(10)||
'';

c2:=c2||'<div id="footer"><div class="content">'||chr(10)||
'<div id="customize">#CUSTOMIZE#</div>'||chr(10)||
'<div class="app-version">#APP_VERSION#</div>'||chr(10)||
'<div class="clear"></div>'||chr(10)||
'  #REGION_POSITION_05#'||chr(10)||
'</div></div>'||chr(10)||
'#FORM_CLOSE#'||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<div id="header">'||chr(10)||
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>'||chr(10)||
'  #REGION_POSITION_07#'||chr(10)||
'  <div id="navbar">'||chr(10)||
'    <div class="app-user">#WELCOME_USER#</div>'||chr(10)||
'    #NAVIGATION_BAR#'||chr(10)||
'    #REGION_POSITION_08#'||chr(10)||
'  </div>'||chr(10)||
'  <div id="parent-tabs">'||chr(10)||
'    <div class="tab-holder">#PARENT_TAB_CELLS#</div>'||chr(10)||
'  </div>'||chr(10)||
'</div>'||chr(10)||
'<ul id="tabs">'||chr(10)||
'#TAB_CELLS#'||chr(10)||
'<li class="last"><span></span></li>'||chr(10)||
'</ul';

c3:=c3||'>'||chr(10)||
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>'||chr(10)||
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>'||chr(10)||
'<div id="body">'||chr(10)||
'  <div id="three-col">'||chr(10)||
'    <div id="left-sidebar">#REGION_POSITION_02#</div>'||chr(10)||
'    <div id="two-col-tbl">'||chr(10)||
'      <table class="tbl-body" cellspacing="0" cellpadding="0" border="0" summary="">'||chr(10)||
'        <tbody>'||chr(10)||
'          <tr>'||chr(10)||
'            ';

c3:=c3||'<td class="tbl-main" width="100%">#BOX_BODY#</td>'||chr(10)||
'            <td class="tbl-sidebar">#REGION_POSITION_03#</td>     '||chr(10)||
'          </tr>'||chr(10)||
'        </tbody>'||chr(10)||
'      </table>'||chr(10)||
'    </div>'||chr(10)||
'  </div>'||chr(10)||
'</div>'||chr(10)||
'';

wwv_flow_api.create_template(
  p_id=> 6616029459850562 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Two Level Tabs - Left and Right Sidebar (fixed-width / DIV left and optional table-based right)',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="success" id="success-message">'||chr(10)||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />'||chr(10)||
'  #SUCCESS_MESSAGE#'||chr(10)||
'</div>',
  p_current_tab=> '<li class="#TAB_STATUS#">'||chr(10)||
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||chr(10)||
'</li>',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<li class="#TAB_STATUS#">'||chr(10)||
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||chr(10)||
'</li>',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '<div class="current"><div>'||chr(10)||
'#TAB_LABEL##TAB_INLINE_EDIT#'||chr(10)||
'</div></div>'||chr(10)||
''||chr(10)||
'',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '<div class="noncurrent"><div>'||chr(10)||
'<a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||chr(10)||
'</div></div>'||chr(10)||
''||chr(10)||
''||chr(10)||
''||chr(10)||
''||chr(10)||
'',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="notification" id="notification-message">'||chr(10)||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#'||chr(10)||
'</div>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"',
  p_sidebar_def_reg_pos => 'REGION_POSITION_02',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 21,
  p_theme_class_id => 18,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/two_level_tabs_right_sidebar_fixed_width_div_based
prompt  ......Page template 6616123969850562
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">'||chr(10)||
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'  <title>#TITLE#</title>'||chr(10)||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||chr(10)||
'  <link rel="shortcut icon" href="#IMAG';

c1:=c1||'E_PREFIX#favicon.ico" type="image/x-icon">'||chr(10)||
' #HEAD#'||chr(10)||
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0.css" type="text/css" />'||chr(10)||
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie.css" type="text/css" /><![endif]-->'||chr(10)||
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie6.css" type="text/css" /><![endif';

c1:=c1||']-->'||chr(10)||
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>'||chr(10)||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||chr(10)||
'#FORM_OPEN#'||chr(10)||
'';

c2:=c2||'<div id="footer"><div class="content">'||chr(10)||
'<div id="customize">#CUSTOMIZE#</div>'||chr(10)||
'<div class="app-version">#APP_VERSION#</div>'||chr(10)||
'<div class="clear"></div>'||chr(10)||
'  #REGION_POSITION_05#'||chr(10)||
'</div></div>'||chr(10)||
'#FORM_CLOSE#'||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<div id="header">'||chr(10)||
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>'||chr(10)||
'  #REGION_POSITION_07#'||chr(10)||
'  <div id="navbar">'||chr(10)||
'    <div class="app-user">#WELCOME_USER#</div>'||chr(10)||
'    #NAVIGATION_BAR#'||chr(10)||
'    #REGION_POSITION_08#'||chr(10)||
'  </div>'||chr(10)||
'  <div id="parent-tabs">'||chr(10)||
'    <div class="tab-holder">#PARENT_TAB_CELLS#</div>'||chr(10)||
'  </div>'||chr(10)||
'</div>'||chr(10)||
'<ul id="tabs">'||chr(10)||
'#TAB_CELLS#'||chr(10)||
'<li class="last"><span></span></li>'||chr(10)||
'</ul';

c3:=c3||'>'||chr(10)||
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>'||chr(10)||
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>'||chr(10)||
'<div id="body">'||chr(10)||
'  <div id="two-col">'||chr(10)||
'    <div id="sidebar">#REGION_POSITION_03#</div>     '||chr(10)||
'    <div id="main">#REGION_POSITION_02##BOX_BODY#</div>'||chr(10)||
'  </div>'||chr(10)||
'</div>'||chr(10)||
'';

wwv_flow_api.create_template(
  p_id=> 6616123969850562 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Two Level Tabs - Right Sidebar (fixed-width / DIV based)',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="success" id="success-message">'||chr(10)||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />'||chr(10)||
'  #SUCCESS_MESSAGE#'||chr(10)||
'</div>',
  p_current_tab=> '<li class="#TAB_STATUS#">'||chr(10)||
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||chr(10)||
'</li>',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<li class="#TAB_STATUS#">'||chr(10)||
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||chr(10)||
'</li>',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '<div class="current"><div>'||chr(10)||
'#TAB_LABEL##TAB_INLINE_EDIT#'||chr(10)||
'</div></div>'||chr(10)||
''||chr(10)||
'',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '<div class="noncurrent"><div>'||chr(10)||
'<a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||chr(10)||
'</div></div>'||chr(10)||
''||chr(10)||
''||chr(10)||
''||chr(10)||
''||chr(10)||
'',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="notification" id="notification-message">'||chr(10)||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#'||chr(10)||
'</div>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 21,
  p_theme_class_id => 2,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/two_level_tabs_right_sidebar_optional_table_based
prompt  ......Page template 6616224610850562
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">'||chr(10)||
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'  <title>#TITLE#</title>'||chr(10)||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||chr(10)||
'  <link rel="shortcut icon" href="#IMAG';

c1:=c1||'E_PREFIX#favicon.ico" type="image/x-icon">'||chr(10)||
' #HEAD#'||chr(10)||
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0.css" type="text/css" />'||chr(10)||
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie.css" type="text/css" /><![endif]-->'||chr(10)||
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie6.css" type="text/css" /><![endif';

c1:=c1||']-->'||chr(10)||
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>'||chr(10)||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||chr(10)||
'#FORM_OPEN#'||chr(10)||
'';

c2:=c2||'<div id="footer"><div class="content">'||chr(10)||
'<div id="customize">#CUSTOMIZE#</div>'||chr(10)||
'<div class="app-version">#APP_VERSION#</div>'||chr(10)||
'<div class="clear"></div>'||chr(10)||
'  #REGION_POSITION_05#'||chr(10)||
'</div></div>'||chr(10)||
'#FORM_CLOSE#'||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<div id="header">'||chr(10)||
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>'||chr(10)||
'  #REGION_POSITION_07#'||chr(10)||
'  <div id="navbar">'||chr(10)||
'    <div class="app-user">#WELCOME_USER#</div>'||chr(10)||
'    #NAVIGATION_BAR#'||chr(10)||
'    #REGION_POSITION_08#'||chr(10)||
'  </div>'||chr(10)||
'  <div id="parent-tabs">'||chr(10)||
'    <div class="tab-holder">#PARENT_TAB_CELLS#</div>'||chr(10)||
'  </div>'||chr(10)||
'</div>'||chr(10)||
'<ul id="tabs">'||chr(10)||
'#TAB_CELLS#'||chr(10)||
'<li class="last"><span></span></li>'||chr(10)||
'</ul';

c3:=c3||'>'||chr(10)||
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>'||chr(10)||
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>'||chr(10)||
'<div id="body">'||chr(10)||
'  <table class="tbl-body" cellspacing="0" cellpadding="0" border="0" summary="">'||chr(10)||
'    <tbody>'||chr(10)||
'      <tr>'||chr(10)||
'        <td class="tbl-main" width="100%">#REGION_POSITION_02##BOX_BODY#</td>'||chr(10)||
'        <td class="tbl-sidebar">#REGION_POSITION_0';

c3:=c3||'3#</td>     '||chr(10)||
'      </tr>'||chr(10)||
'    </tbody>'||chr(10)||
'  </table>'||chr(10)||
'</div>';

wwv_flow_api.create_template(
  p_id=> 6616224610850562 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Two Level Tabs - Right Sidebar (optional / table-based)',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="success" id="success-message">'||chr(10)||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />'||chr(10)||
'  #SUCCESS_MESSAGE#'||chr(10)||
'</div>',
  p_current_tab=> '<li class="#TAB_STATUS#">'||chr(10)||
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||chr(10)||
'</li>',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<li class="#TAB_STATUS#">'||chr(10)||
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||chr(10)||
'</li>',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '<div class="current"><div>'||chr(10)||
'#TAB_LABEL##TAB_INLINE_EDIT#'||chr(10)||
'</div></div>'||chr(10)||
''||chr(10)||
'',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '<div class="noncurrent"><div>'||chr(10)||
'<a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||chr(10)||
'</div></div>'||chr(10)||
''||chr(10)||
''||chr(10)||
''||chr(10)||
''||chr(10)||
'',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="notification" id="notification-message">'||chr(10)||
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#'||chr(10)||
'</div>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 21,
  p_theme_class_id => 2,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

prompt  ...button templates
--
--application/shared_components/user_interface/templates/button/button
prompt  ......Button Template 6616312293850562
declare
  t varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
t:=t||'<button value="#LABEL#" onclick="#LINK#" class="button-default" type="button">'||chr(10)||
'  <span>#LABEL#</span>'||chr(10)||
'</button>';

wwv_flow_api.create_button_templates (
  p_id=>6616312293850562 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_template=>t,
  p_template_name=> 'Button',
  p_translate_this_template => 'N',
  p_theme_id  => 21,
  p_theme_class_id => 1,
  p_template_comment       => '');
end;
/
--application/shared_components/user_interface/templates/button/hot_button_black
prompt  ......Button Template 6616426029850567
declare
  t varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
t:=t||'<button value="#LABEL#" onclick="#LINK#" class="button-alt5" type="button">'||chr(10)||
'  <span>#LABEL#</span>'||chr(10)||
'</button>';

wwv_flow_api.create_button_templates (
  p_id=>6616426029850567 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_template=>t,
  p_template_name=> 'Hot Button (Black)',
  p_translate_this_template => 'N',
  p_theme_id  => 21,
  p_theme_class_id => 4,
  p_template_comment       => '');
end;
/
--application/shared_components/user_interface/templates/button/hot_button_red_outline
prompt  ......Button Template 6616513479850567
declare
  t varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
t:=t||'<button value="#LABEL#" onclick="#LINK#" class="button-alt4" type="button">'||chr(10)||
'  <span>#LABEL#</span>'||chr(10)||
'</button>';

wwv_flow_api.create_button_templates (
  p_id=>6616513479850567 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_template=>t,
  p_template_name=> 'Hot Button (Red Outline)',
  p_translate_this_template => 'N',
  p_theme_id  => 21,
  p_theme_class_id => 4,
  p_template_comment       => '');
end;
/
--application/shared_components/user_interface/templates/button/hot_button_red
prompt  ......Button Template 6616609808850567
declare
  t varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
t:=t||'<button value="#LABEL#" onclick="#LINK#" class="button-alt1" type="button">'||chr(10)||
'  <span>#LABEL#</span>'||chr(10)||
'</button>';

wwv_flow_api.create_button_templates (
  p_id=>6616609808850567 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_template=>t,
  p_template_name=> 'Hot Button (Red)',
  p_translate_this_template => 'N',
  p_theme_id  => 21,
  p_theme_class_id => 4,
  p_template_comment       => '');
end;
/
--application/shared_components/user_interface/templates/button/small_button
prompt  ......Button Template 6616715218850567
declare
  t varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
t:=t||'<button value="#LABEL#" onclick="#LINK#" class="button-alt2" type="button">'||chr(10)||
'  <span>#LABEL#</span>'||chr(10)||
'</button>';

wwv_flow_api.create_button_templates (
  p_id=>6616715218850567 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_template=>t,
  p_template_name=> 'Small Button',
  p_translate_this_template => 'N',
  p_theme_id  => 21,
  p_theme_class_id => 5,
  p_template_comment       => 'XP Square FFFFFF');
end;
/
--application/shared_components/user_interface/templates/button/small_hot_button_red_outline
prompt  ......Button Template 6616819796850567
declare
  t varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
t:=t||'<button value="#LABEL#" onclick="#LINK#" class="button-alt6" type="button">'||chr(10)||
'  <span>#LABEL#</span>'||chr(10)||
'</button>';

wwv_flow_api.create_button_templates (
  p_id=>6616819796850567 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_template=>t,
  p_template_name=> 'Small Hot Button (Red Outline)',
  p_translate_this_template => 'N',
  p_theme_id  => 21,
  p_theme_class_id => 2,
  p_template_comment       => 'Standard Button');
end;
/
--application/shared_components/user_interface/templates/button/small_hot_button_red
prompt  ......Button Template 6616918728850567
declare
  t varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
t:=t||'<button value="#LABEL#" onclick="#LINK#" class="button-alt3" type="button">'||chr(10)||
'  <span>#LABEL#</span>'||chr(10)||
'</button>';

wwv_flow_api.create_button_templates (
  p_id=>6616918728850567 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_template=>t,
  p_template_name=> 'Small Hot Button (Red)',
  p_translate_this_template => 'N',
  p_theme_id  => 21,
  p_theme_class_id => 2,
  p_template_comment       => 'Standard Button');
end;
/
---------------------------------------
prompt  ...region templates
--
--application/shared_components/user_interface/templates/region/blank_region
prompt  ......region template 6617016514850567
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 6617016514850567 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="blank-region">'||chr(10)||
'#BODY#'||chr(10)||
'<div class="clear"></div>'||chr(10)||
'</div>'
 ,p_page_plug_template_name => 'Blank Region'
 ,p_theme_id => 21
 ,p_theme_class_id => 7
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 6617016514850567 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/borderless_region
prompt  ......region template 6617126686850569
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 6617126686850569 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="borderless-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||chr(10)||
'  <div class="bl-top">'||chr(10)||
'    <div class="bl-title">#TITLE#</div>'||chr(10)||
'    <div class="bl-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>'||chr(10)||
'  </div>'||chr(10)||
'  <div class="bl-body">#BODY#</div>'||chr(10)||
'</div>'||chr(10)||
'<div class="clear"></div>'
 ,p_page_plug_template_name => 'Borderless Region'
 ,p_theme_id => 21
 ,p_theme_class_id => 7
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Use this region template when you want to contain content without a border.'||chr(10)||
''||chr(10)||
'TITLE=YES'||chr(10)||
'BUTTONS=YES'||chr(10)||
'100% WIDTH=NO'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 6617126686850569 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/borderless_region_no_title
prompt  ......region template 6617228029850570
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 6617228029850570 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="borderless-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||chr(10)||
'  <div class="bl-top">'||chr(10)||
'    '||chr(10)||
'    <div class="bl-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>'||chr(10)||
'  </div>'||chr(10)||
'  <div class="bl-body">#BODY#</div>'||chr(10)||
'</div>'||chr(10)||
'<div class="clear"></div>'
 ,p_page_plug_template_name => 'Borderless Region - No Title'
 ,p_theme_id => 21
 ,p_theme_class_id => 7
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Use this region template when you want to contain content without a border.'||chr(10)||
''||chr(10)||
'TITLE=YES'||chr(10)||
'BUTTONS=YES'||chr(10)||
'100% WIDTH=NO'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 6617228029850570 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/bracketed_region
prompt  ......region template 6617327435850570
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 6617327435850570 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="bracketed-region brackets" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||chr(10)||
'  <div class="bk-top">'||chr(10)||
'    <div class="bk-top-r">'||chr(10)||
'      <div class="bk-title">#TITLE#</div>'||chr(10)||
'      <div class="bk-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>'||chr(10)||
'    </div>'||chr(10)||
'  </div>'||chr(10)||
'  <div class="bk-body">#BODY#</div>'||chr(10)||
'  <div class="bk-bottom">'||chr(10)||
'    <div class="bk-bott'||
'om-r">&nbsp;</div>'||chr(10)||
'  </div>'||chr(10)||
'</div>'
 ,p_page_plug_template_name => 'Bracketed Region'
 ,p_theme_id => 21
 ,p_theme_class_id => 18
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Use this region template when you want to contain content with a bracket UI.'||chr(10)||
''||chr(10)||
'TITLE=YES'||chr(10)||
'BUTTONS=YES'||chr(10)||
'100% WIDTH=NO'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 6617327435850570 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/breadcrumb_region
prompt  ......region template 6617425955850570
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 6617425955850570 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="breadcrumb-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>#BODY#</div>'
 ,p_page_plug_template_name => 'Breadcrumb Region'
 ,p_theme_id => 21
 ,p_theme_class_id => 6
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Use this region template to contain breadcrumb menus.  Breadcrumb menus are implemented using breadcrumbs.  Breadcrumb menus are designed to displayed in #REGION_POSITION_01#'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 6617425955850570 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/button_region_with_title
prompt  ......region template 6617512317850570
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 6617512317850570 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="rounded-corner-region-blank" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||chr(10)||
'  <div class="rc-gray-top">'||chr(10)||
'    <div class="rc-gray-top-r"></div>'||chr(10)||
'  </div>'||chr(10)||
'  <div class="rc-body">'||chr(10)||
'    <div class="rc-body-r">'||chr(10)||
'      <div class="rc-content-main">'||chr(10)||
'        <div class="rc-left">'||chr(10)||
'          <h3>#TITLE#</h3>'||chr(10)||
'        </div>'||chr(10)||
'        <div class="rc-right">'||chr(10)||
'#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CR'||
'EATE##CREATE2##EXPAND##COPY##HELP#'||chr(10)||
'        </div>'||chr(10)||
'        <div class="clear"></div>'||chr(10)||
'      </div>'||chr(10)||
'    </div>'||chr(10)||
'  </div>'||chr(10)||
'  <div class="rc-bottom">'||chr(10)||
'    <div class="rc-bottom-r"></div>'||chr(10)||
'  </div>'||chr(10)||
'</div>'
 ,p_page_plug_template_name => 'Button Region with Title'
 ,p_theme_id => 21
 ,p_theme_class_id => 4
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 6617512317850570 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/button_region_without_title
prompt  ......region template 6617627552850571
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 6617627552850571 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="rounded-corner-region-blank" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||chr(10)||
'  <div class="rc-gray-top">'||chr(10)||
'    <div class="rc-gray-top-r"></div>'||chr(10)||
'  </div>'||chr(10)||
'  <div class="rc-body">'||chr(10)||
'    <div class="rc-body-r">'||chr(10)||
'      <div class="rc-content-main">'||chr(10)||
'        <div class="rc-left">'||chr(10)||
'          #BODY#'||chr(10)||
'        </div>'||chr(10)||
'        <div class="rc-right">'||chr(10)||
'#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREA'||
'TE2##EXPAND##COPY##HELP#'||chr(10)||
'        </div>'||chr(10)||
'        <div class="clear"></div>'||chr(10)||
'      </div>'||chr(10)||
'    </div>'||chr(10)||
'  </div>'||chr(10)||
'  <div class="rc-bottom">'||chr(10)||
'    <div class="rc-bottom-r"></div>'||chr(10)||
'  </div>'||chr(10)||
'</div>'
 ,p_page_plug_template_name => 'Button Region without Title'
 ,p_theme_id => 21
 ,p_theme_class_id => 17
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 6617627552850571 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/centered_tab_set_region
prompt  ......region template 6617707554850571
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 6617707554850571 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="tSC">'||chr(10)||
'  #BODY#'||chr(10)||
'</div>'||chr(10)||
'<div class="tSF">'||chr(10)||
'  <div class="tSFO">'||chr(10)||
'    <div class="tSFI">'||chr(10)||
'    </div>'||chr(10)||
'  </div>'||chr(10)||
'</div>'||chr(10)||
''
 ,p_page_plug_template_name => 'Centered Tab Set Region'
 ,p_theme_id => 21
 ,p_theme_class_id => 21
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 6617707554850571 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/chart_list
prompt  ......region template 6617815669850571
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 6617815669850571 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="rounded-corner-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||chr(10)||
'  <div class="rc-gray-top"><div class="rc-gray-top-r">'||chr(10)||
'    <div class="rc-title">#TITLE#</div>'||chr(10)||
'    <div class="rc-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>'||chr(10)||
'  </div></div>'||chr(10)||
'  <div class="rc-body"><div class="rc-body-r"><div class="rc-content-main">'||chr(10)||
'     <div class="'||
'rc-image"><img src="#IMAGE_PREFIX#themes/theme_21/images/report_icon.png" alt="" /></div>'||chr(10)||
'      <div class="rc-content">#BODY#</div>'||chr(10)||
'<div class="clear"></div>'||chr(10)||
'</div>'||chr(10)||
'</div></div>'||chr(10)||
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>'||chr(10)||
'</div>'
 ,p_page_plug_template_name => 'Chart List'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 21
 ,p_theme_class_id => 29
 ,p_plug_heading_bgcolor => '#ffffff'
 ,p_plug_font_size => '-1'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Red Theme'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 6617815669850571 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/chart_region
prompt  ......region template 6617915349850572
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 6617915349850572 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="rounded-corner-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||chr(10)||
'  <div class="rc-gray-top"><div class="rc-gray-top-r">'||chr(10)||
'    <div class="rc-title">#TITLE#</div>'||chr(10)||
'  </div></div>'||chr(10)||
'  <div class="rc-body"><div class="rc-body-r">'||chr(10)||
'<div class="rc-content-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>'||chr(10)||
'<div class="rc-content-main">#BODY#<div cl'||
'ass="clear"></div></div></div></div>'||chr(10)||
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>'||chr(10)||
'</div>'
 ,p_page_plug_template_name => 'Chart Region'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 21
 ,p_theme_class_id => 30
 ,p_plug_heading_bgcolor => '#ffffff'
 ,p_plug_font_size => '-1'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Red Theme'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 6617915349850572 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/form_region
prompt  ......region template 6618013289850572
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 6618013289850572 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="rounded-corner-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||chr(10)||
'  <div class="rc-gray-top"><div class="rc-gray-top-r">'||chr(10)||
'    <div class="rc-title">#TITLE#</div>'||chr(10)||
'  </div></div>'||chr(10)||
'  <div class="rc-body"><div class="rc-body-r">'||chr(10)||
'<div class="rc-content-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>'||chr(10)||
'<div class="rc-content-main">'||chr(10)||
'#BODY#<div c'||
'lass="clear"></div></div></div></div>'||chr(10)||
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>'||chr(10)||
'</div>'
 ,p_page_plug_template_name => 'Form Region'
 ,p_plug_table_bgcolor => '#f7f7e7'
 ,p_theme_id => 21
 ,p_theme_class_id => 8
 ,p_plug_heading_bgcolor => '#f7f7e7'
 ,p_plug_font_size => '-1'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Red Theme'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 6618013289850572 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/hide_and_show_region
prompt  ......region template 6618121862850572
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 6618121862850572 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="hide-show-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||chr(10)||
'  <div class="hide-show-top">'||chr(10)||
'    <div class="hide-show-title"><a href="javascript:hideShow(''region#REGION_SEQUENCE_ID#'',''shIMG#REGION_SEQUENCE_ID#'',''#IMAGE_PREFIX#themes/theme_21/images/right_arrow.png'',''#IMAGE_PREFIX#themes/theme_21/images/down_arrow.png'');" class="t1HideandShowRegionLink"><img src="#IMAGE_PREFIX#themes/t'||
'heme_21/images/right_arrow.png" '||chr(10)||
'  id="shIMG#REGION_SEQUENCE_ID#" alt="" /></a> #TITLE#</div>'||chr(10)||
'    <div class="hide-show-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>'||chr(10)||
'  </div>'||chr(10)||
'<div class="hide" id="region#REGION_SEQUENCE_ID#" style="float:left;">#BODY#</div>'||chr(10)||
'</div>'
 ,p_page_plug_template_name => 'Hide and Show Region'
 ,p_theme_id => 21
 ,p_theme_class_id => 1
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Gray Head, white body'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 6618121862850572 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/navigation_region
prompt  ......region template 6618205401850572
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 6618205401850572 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="navigation-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||chr(10)||
'    <h3>#TITLE#</h3>'||chr(10)||
'  <div>'||chr(10)||
'    #BODY#'||chr(10)||
'  </div>'||chr(10)||
'</div>'
 ,p_page_plug_template_name => 'Navigation Region'
 ,p_theme_id => 21
 ,p_theme_class_id => 5
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 6618205401850572 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/navigation_region_alternative_1
prompt  ......region template 6618310906850572
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 6618310906850572 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="navigation-region-alt" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>#BODY#</div>'
 ,p_page_plug_template_name => 'Navigation Region, Alternative 1'
 ,p_theme_id => 21
 ,p_theme_class_id => 16
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 6618310906850572 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/nested_region
prompt  ......region template 6618426146850572
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 6618426146850572 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="rounded-corner-region-nested" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||chr(10)||
'	<div class="nr-top">'||chr(10)||
'		<div class="nr-top-r">'||chr(10)||
'    <div class="nr-title">#TITLE#</div>'||chr(10)||
'    <div class="nr-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>'||chr(10)||
'		</div>'||chr(10)||
'	</div>'||chr(10)||
'	<div class="nr-body">'||chr(10)||
'		<div class="nr-content-main">'||chr(10)||
'			#BODY#'||chr(10)||
'			<div class="clear"></div'||
'>'||chr(10)||
'		</div>'||chr(10)||
'	</div>'||chr(10)||
'</div>'
 ,p_page_plug_template_name => 'Nested Region'
 ,p_theme_id => 21
 ,p_theme_class_id => 7
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Use this region template when you want to contain content without a border.'||chr(10)||
''||chr(10)||
'TITLE=YES'||chr(10)||
'BUTTONS=YES'||chr(10)||
'100% WIDTH=NO'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 6618426146850572 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/region_without_buttons_and_titles
prompt  ......region template 6618528500850573
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 6618528500850573 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="borderless-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||chr(10)||
'  <div class="bl-body">#BODY#</div>'||chr(10)||
'</div>'
 ,p_page_plug_template_name => 'Region without Buttons and Titles'
 ,p_theme_id => 21
 ,p_theme_class_id => 19
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 6618528500850573 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/region_without_title
prompt  ......region template 6618606301850573
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 6618606301850573 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="borderless-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||chr(10)||
'  <div class="bl-top">'||chr(10)||
'    <div class="bl-title">&nbsp;</div>'||chr(10)||
'    <div class="bl-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>'||chr(10)||
'  </div>'||chr(10)||
'  <div class="bl-body">#BODY#</div>'||chr(10)||
'</div>'
 ,p_page_plug_template_name => 'Region without Title'
 ,p_theme_id => 21
 ,p_theme_class_id => 11
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 6618606301850573 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/report_filter_single_row
prompt  ......region template 6618708904850573
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 6618708904850573 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<table class="apex_finderbar" cellpadding="0" cellspacing="0" border="0" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||chr(10)||
'<tbody>'||chr(10)||
'<tr>'||chr(10)||
'<td class="apex_finderbar_left_top" valign="top"><img src="#IMAGE_PREFIX#1px_trans.gif" width="10" height="8" alt=""  class="spacer" alt="" /></td>'||chr(10)||
'<td class="apex_finderbar_middle" rowspan="3" valign="middle"><img src="#IMAGE_PREFIX#htmldb/builder/builder_f'||
'ind.png" /></td>'||chr(10)||
'<td class="apex_finderbar_middle" rowspan="3" valign="middle" style="">#BODY#</td>'||chr(10)||
'<td class="apex_finderbar_left" rowspan="3" width="10"><br /></td>'||chr(10)||
'<td class="apex_finderbar_buttons" rowspan="3" valign="middle" nowrap="nowrap"><span class="apex_close">#CLOSE#</span><span>#EDIT##CHANGE##DELETE##CREATE##CREATE2##COPY##PREVIOUS##NEXT##EXPAND##HELP#</span></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr><td class="'||
'apex_finderbar_left_middle"><br /></td></tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="apex_finderbar_left_bottom" valign="bottom"><img src="#IMAGE_PREFIX#1px_trans.gif" width="10" height="8"  class="spacer" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'</tbody>'||chr(10)||
'</table>'
 ,p_page_plug_template_name => 'Report Filter - Single Row'
 ,p_theme_id => 21
 ,p_theme_class_id => 31
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 6618708904850573 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/report_list
prompt  ......region template 6618822240850573
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 6618822240850573 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="rounded-corner-region-alt" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||chr(10)||
'  <div class="rc-gray-top"><div class="rc-gray-top-r">'||chr(10)||
'    <div class="rc-title">#TITLE#</div>'||chr(10)||
'  </div></div>'||chr(10)||
'  <div class="rc-body"><div class="rc-body-r">'||chr(10)||
'<div class="rc-content-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>'||chr(10)||
'    <div class="rc-content-main">'||chr(10)||
'    '||
'#BODY#'||chr(10)||
'    </div>'||chr(10)||
'  </div></div>'||chr(10)||
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>'||chr(10)||
'</div>'
 ,p_page_plug_template_name => 'Report List'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 21
 ,p_theme_class_id => 29
 ,p_plug_heading_bgcolor => '#ffffff'
 ,p_plug_font_size => '-1'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Red Theme'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 6618822240850573 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/reports_region
prompt  ......region template 6618921799850573
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 6618921799850573 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="rounded-corner-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||chr(10)||
'  <div class="rc-gray-top"><div class="rc-gray-top-r">'||chr(10)||
'    <div class="rc-title">#TITLE#</div>'||chr(10)||
'  </div></div>'||chr(10)||
'  <div class="rc-body"><div class="rc-body-r">'||chr(10)||
'<div class="rc-content-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>'||chr(10)||
'<div class="rc-content-main">#BODY#<div cl'||
'ass="clear"></div></div></div></div>'||chr(10)||
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>'||chr(10)||
'</div> '
 ,p_page_plug_template_name => 'Reports Region'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 21
 ,p_theme_class_id => 9
 ,p_plug_heading_bgcolor => '#ffffff'
 ,p_plug_font_size => '-1'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Red Theme'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 6618921799850573 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/reports_region_100_width
prompt  ......region template 6619015750850573
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 6619015750850573 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="rounded-corner-region float-left-100pct" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||chr(10)||
'  <div class="rc-gray-top"><div class="rc-gray-top-r">'||chr(10)||
'    <div class="rc-title">#TITLE#</div>'||chr(10)||
'  </div></div>'||chr(10)||
'  <div class="rc-body"><div class="rc-body-r">'||chr(10)||
'<div class="rc-content-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>'||chr(10)||
'<div class="rc-content-m'||
'ain">#BODY#<div class="clear"></div></div></div></div>'||chr(10)||
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>'||chr(10)||
'</div>'||chr(10)||
''
 ,p_page_plug_template_name => 'Reports Region 100% Width'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 21
 ,p_theme_class_id => 13
 ,p_plug_heading_bgcolor => '#ffffff'
 ,p_plug_font_size => '-1'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Red Theme'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 6619015750850573 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/reports_region_no_title
prompt  ......region template 6619119553850574
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 6619119553850574 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="rounded-corner-region-blank-white" id="#REGION_STATIC_ID#"  #REGION_ATTRIBUTES#>'||chr(10)||
'	<div class="rc-gray-top">'||chr(10)||
'		<div class="rc-gray-top-r"></div>'||chr(10)||
'	</div>'||chr(10)||
'	<div class="rc-body">'||chr(10)||
'		<div class="rc-body-r">'||chr(10)||
'			<div class="rc-content-main">'||chr(10)||
'				#BODY#'||chr(10)||
'				<div class="clear"></div>'||chr(10)||
'			</div>'||chr(10)||
'			<div class="rc-content-buttons">'||chr(10)||
'				#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##'||
'EXPAND##COPY##HELP#'||chr(10)||
'			</div>'||chr(10)||
'			<div class="clear"></div>'||chr(10)||
'		</div>'||chr(10)||
'	</div>'||chr(10)||
'	<div class="rc-bottom">'||chr(10)||
'		<div class="rc-bottom-r"></div>'||chr(10)||
'	</div>'||chr(10)||
'</div>'
 ,p_page_plug_template_name => 'Reports Region No Title'
 ,p_theme_id => 21
 ,p_theme_class_id => 9
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 6619119553850574 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/reports_region_no_title_alternative_1
prompt  ......region template 6619228909850574
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 6619228909850574 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="rounded-corner-region-blank-alt" id="#REGION_STATIC_ID#"  #REGION_ATTRIBUTES#>'||chr(10)||
'	<div class="rc-gray-top">'||chr(10)||
'		<div class="rc-gray-top-r"></div>'||chr(10)||
'	</div>'||chr(10)||
'	<div class="rc-body">'||chr(10)||
'		<div class="rc-body-r">'||chr(10)||
'			<div class="rc-content-main">'||chr(10)||
'				#BODY#'||chr(10)||
'				<div class="clear"></div>'||chr(10)||
'			</div>'||chr(10)||
'			<div class="rc-content-buttons">'||chr(10)||
'				#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EX'||
'PAND##COPY##HELP#'||chr(10)||
'			</div>'||chr(10)||
'			<div class="clear"></div>'||chr(10)||
'		</div>'||chr(10)||
'	</div>'||chr(10)||
'	<div class="rc-bottom">'||chr(10)||
'		<div class="rc-bottom-r"></div>'||chr(10)||
'	</div>'||chr(10)||
'</div>'
 ,p_page_plug_template_name => 'Reports Region No Title, Alternative 1'
 ,p_theme_id => 21
 ,p_theme_class_id => 10
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 6619228909850574 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/reports_region_alternative_1
prompt  ......region template 6619304470850574
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 6619304470850574 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="rounded-corner-region-alt" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||chr(10)||
'  <div class="rc-gray-top"><div class="rc-gray-top-r">'||chr(10)||
'    <div class="rc-title">#TITLE#</div>'||chr(10)||
'  </div></div>'||chr(10)||
'  <div class="rc-body"><div class="rc-body-r">'||chr(10)||
'<div class="rc-content-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>'||chr(10)||
'<div class="rc-content-main">#BODY#<di'||
'v class="clear"></div>'||chr(10)||
'<div class="clear"></div>'||chr(10)||
'</div>'||chr(10)||
'</div></div>'||chr(10)||
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>'||chr(10)||
'</div>'
 ,p_page_plug_template_name => 'Reports Region, Alternative 1'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 21
 ,p_theme_class_id => 10
 ,p_plug_heading_bgcolor => '#ffffff'
 ,p_plug_font_size => '-1'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Red Theme'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 6619304470850574 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/sidebar_region
prompt  ......region template 6619419936850574
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 6619419936850574 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="sidebar-region">'||chr(10)||
'<div class="rounded-corner-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||chr(10)||
'  <div class="rc-gray-top"><div class="rc-gray-top-r">'||chr(10)||
'    <div class="rc-title">#TITLE#</div>'||chr(10)||
'  </div></div>'||chr(10)||
'  <div class="rc-body"><div class="rc-body-r">'||chr(10)||
'<div class="rc-content-main">#BODY#<div class="clear"></div></div></div></div>'||chr(10)||
'  <div class="rc-bottom"><div class="rc-bottom-r"></div'||
'></div>'||chr(10)||
'</div> '||chr(10)||
'</div>'
 ,p_page_plug_template_name => 'Sidebar Region'
 ,p_plug_table_bgcolor => '#f7f7e7'
 ,p_theme_id => 21
 ,p_theme_class_id => 2
 ,p_plug_heading_bgcolor => '#f7f7e7'
 ,p_plug_font_size => '-1'
 ,p_translate_this_template => 'N'
 ,p_template_comment => '<table border="0" cellpadding="0" cellspacing="0">'||chr(10)||
'        <tr>'||chr(10)||
'          <td rowspan="2" valign="top" width="4" bgcolor="#FF0000"><img src="#IMAGE_PREFIX#tl_img.gif" border="0" width="4" height="18" alt="" /></td>'||chr(10)||
'          <td bgcolor="#000000" height="1"><img src="#IMAGE_PREFIX#stretch.gif" width="142" height="1" border="0" alt="" /></td>'||chr(10)||
'          <td rowspan="2" valign="top" width="4" bgcolor="#FF0000"><img src="#IMAGE_PREFIX#tr_img.gif" border="0" width="4" height="18" alt="" /></td>'||chr(10)||
'        </tr>'||chr(10)||
'        <tr>'||chr(10)||
'          <td bgcolor="#FF0000" height="16">'||chr(10)||
'            <table border="0" cellpadding="0" cellspacing="0" width="100%">'||chr(10)||
'              <tr>'||chr(10)||
'                <td align=middle valign="top">'||chr(10)||
'                  <div align="center">'||chr(10)||
'                     <font color="#ffffff" face="Arial, Helvetica, sans-serif" size="1">'||chr(10)||
'                      <b>#TITLE# </b></font></div>'||chr(10)||
'                </td>'||chr(10)||
'              </tr>'||chr(10)||
'            </table>'||chr(10)||
'          </td>'||chr(10)||
'        </tr>'||chr(10)||
'</table>'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0">'||chr(10)||
'   <tr>'||chr(10)||
'   <td bgcolor="#000000" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>'||chr(10)||
'   <td valign="top" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="146" height="1" border="0" alt="" /><br />'||chr(10)||
'            <table border="0" cellpadding="1" cellspacing="0" width="146" summary="">'||chr(10)||
'              <tr>'||chr(10)||
'                <td colspan="2">'||chr(10)||
'                  <table border="0" cellpadding="2" cellspacing="0" width="124" summary="">'||chr(10)||
'                    <tr>'||chr(10)||
'                      <td>&nbsp;</td>'||chr(10)||
'                      <td valign="top" width="106">'||chr(10)||
'                        <P><FONT face="arial, helvetica" size="1">'||chr(10)||
'                            #BODY#'||chr(10)||
'                           </font>'||chr(10)||
'                        </P>'||chr(10)||
'                      </td>'||chr(10)||
'                    </tr>'||chr(10)||
'                  </table>'||chr(10)||
'            </table>'||chr(10)||
'          </td>'||chr(10)||
'          <td bgcolor="#000000" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>'||chr(10)||
'          <td bgcolor="#9a9c9a" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>'||chr(10)||
'          <td bgcolor="#b3b4b3" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>'||chr(10)||
'        </tr>'||chr(10)||
'      </table>'||chr(10)||
'      <table border="0" cellpadding="0" cellspacing="0">'||chr(10)||
'        <tr>'||chr(10)||
'          <td rowspan="4" valign="top" width="4"><img src="#IMAGE_PREFIX#bl_img.gif" border="0" width="4" height="6" alt="" /></td>'||chr(10)||
'          <td bgcolor="#ffffff" height="2"><img src="#IMAGE_PREFIX#stretch.gif" width="142" height="1" border="0" alt="" /></td>'||chr(10)||
'          <td rowspan="4" valign="top" width="4"><img src="#IMAGE_PREFIX#br_img.gif" border="0" width="4" height="6" alt="" /></td>'||chr(10)||
'        </tr>'||chr(10)||
'        <tr>'||chr(10)||
'          <td bgcolor="#000000" width="1"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>'||chr(10)||
'        </tr>'||chr(10)||
'        <tr>'||chr(10)||
'          <td bgcolor="#9a9c9a" width="1"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>'||chr(10)||
'        </tr>'||chr(10)||
'        <tr>'||chr(10)||
'          <td bgcolor="#b3b4b3" width="1" height="2"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>'||chr(10)||
'        </tr>'||chr(10)||
'</table>'||chr(10)||
''
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 6619419936850574 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/sidebar_region_alternative_1
prompt  ......region template 6619503305850576
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 6619503305850576 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="sidebar-region">'||chr(10)||
'<div class="rounded-corner-region-alt" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||chr(10)||
'  <div class="rc-gray-top"><div class="rc-gray-top-r">'||chr(10)||
'    <div class="rc-title">#TITLE#</div>'||chr(10)||
'  </div></div>'||chr(10)||
'  <div class="rc-body"><div class="rc-body-r">'||chr(10)||
'<div class="rc-content-main">#BODY#<div class="clear"></div></div></div></div>'||chr(10)||
'  <div class="rc-bottom"><div class="rc-bottom-r"><'||
'/div></div>'||chr(10)||
'</div> '||chr(10)||
'</div>'
 ,p_page_plug_template_name => 'Sidebar Region, Alternative 1'
 ,p_plug_table_bgcolor => '#f7f7e7'
 ,p_theme_id => 21
 ,p_theme_class_id => 3
 ,p_plug_heading_bgcolor => '#f7f7e7'
 ,p_plug_font_size => '-1'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 6619503305850576 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/sidebar_region_bordered
prompt  ......region template 6619600758850576
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 6619600758850576 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="rounded-corner-region-blank-white sidebar-alt2" id="#REGION_STATIC_ID#"  #REGION_ATTRIBUTES#>'||chr(10)||
'	<div class="rc-gray-top">'||chr(10)||
'		<div class="rc-gray-top-r"></div>'||chr(10)||
'	</div>'||chr(10)||
'	<div class="rc-body">'||chr(10)||
'		<div class="rc-body-r">'||chr(10)||
'			<div class="rc-content-main">'||chr(10)||
'				#BODY#'||chr(10)||
'				<div class="clear"></div>'||chr(10)||
'			</div>'||chr(10)||
'			<div class="rc-content-buttons">'||chr(10)||
'				#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREA'||
'TE##CREATE2##EXPAND##COPY##HELP#'||chr(10)||
'			</div>'||chr(10)||
'			<div class="clear"></div>'||chr(10)||
'		</div>'||chr(10)||
'	</div>'||chr(10)||
'	<div class="rc-bottom">'||chr(10)||
'		<div class="rc-bottom-r"></div>'||chr(10)||
'	</div>'||chr(10)||
'</div>'
 ,p_page_plug_template_name => 'Sidebar Region, Bordered'
 ,p_theme_id => 21
 ,p_theme_class_id => 3
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 6619600758850576 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/sidebar_region_bordered_alternative
prompt  ......region template 6619719504850576
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 6619719504850576 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="rounded-corner-region-blank-alt sidebar-alt2" id="#REGION_STATIC_ID#"  #REGION_ATTRIBUTES#>'||chr(10)||
'	<div class="rc-gray-top">'||chr(10)||
'		<div class="rc-gray-top-r"></div>'||chr(10)||
'	</div>'||chr(10)||
'	<div class="rc-body">'||chr(10)||
'		<div class="rc-body-r">'||chr(10)||
'			<div class="rc-content-main">'||chr(10)||
'				#BODY#'||chr(10)||
'				<div class="clear"></div>'||chr(10)||
'			</div>'||chr(10)||
'			<div class="rc-content-buttons">'||chr(10)||
'				#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE'||
'##CREATE2##EXPAND##COPY##HELP#'||chr(10)||
'			</div>'||chr(10)||
'			<div class="clear"></div>'||chr(10)||
'		</div>'||chr(10)||
'	</div>'||chr(10)||
'	<div class="rc-bottom">'||chr(10)||
'		<div class="rc-bottom-r"></div>'||chr(10)||
'	</div>'||chr(10)||
'</div>'
 ,p_page_plug_template_name => 'Sidebar Region, Bordered Alternative'
 ,p_theme_id => 21
 ,p_theme_class_id => 3
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 6619719504850576 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/wizard_region
prompt  ......region template 6619815428850576
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 6619815428850576 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="rounded-corner-region-wizard" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||chr(10)||
'  <div class="rc-gray-top"><div class="rc-gray-top-r">'||chr(10)||
'    <div class="rc-title">#TITLE#</div>'||chr(10)||
'<div class="rc-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>'||chr(10)||
'  </div></div>'||chr(10)||
'  <div class="rc-body"><div class="rc-body-r">'||chr(10)||
'<div class="rc-content-main">#BODY#<div cla'||
'ss="clear"></div></div></div></div>'||chr(10)||
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>'||chr(10)||
'</div>'
 ,p_page_plug_template_name => 'Wizard Region'
 ,p_theme_id => 21
 ,p_theme_class_id => 12
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 6619815428850576 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/wizard_region_with_icon
prompt  ......region template 6619909023850577
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 6619909023850577 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="rounded-corner-region-wizard" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||chr(10)||
'  <div class="rc-gray-top"><div class="rc-gray-top-r">'||chr(10)||
'    <div class="rc-title">#TITLE#</div>'||chr(10)||
'<div class="rc-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>'||chr(10)||
'  </div></div>'||chr(10)||
'  <div class="rc-body"><div class="rc-body-r">'||chr(10)||
'<div class="rc-content-main">#BODY#<div cla'||
'ss="clear"></div></div></div></div>'||chr(10)||
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>'||chr(10)||
'</div>'
 ,p_page_plug_template_name => 'Wizard Region with Icon'
 ,p_theme_id => 21
 ,p_theme_class_id => 20
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 6619909023850577 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ...List Templates
--
--application/shared_components/user_interface/templates/list/button_list
prompt  ......list template 6620017781850577
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<button value="#TEXT#" onclick="javascript:location.href=''#LINK#''" class="button-alt1" type="button">'||chr(10)||
'  <span>#TEXT#</span>'||chr(10)||
'</button>';

t2:=t2||'<button value="#TEXT#" onclick="javascript:location.href=''#LINK#''" class="button-default" type="button">'||chr(10)||
'  <span>#TEXT#</span>'||chr(10)||
'</button>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>6620017781850577 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Button List',
  p_theme_id  => 21,
  p_theme_class_id => 6,
  p_list_template_before_rows=>'<div class="button-list">',
  p_list_template_after_rows=>'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/centered_tab_set
prompt  ......list template 6620127766850583
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'          <li class="#LIST_STATUS#">'||chr(10)||
'            <a href="#LINK#"><span>#TEXT#</span></a>'||chr(10)||
'          </li>';

t2:=t2||'          <li class="#LIST_STATUS#">'||chr(10)||
'            <a href="#LINK#"><span>#TEXT#</span></a>'||chr(10)||
'          </li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>6620127766850583 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Centered Tab Set',
  p_theme_id  => 21,
  p_theme_class_id => 7,
  p_list_template_before_rows=>'<div class="tS">'||chr(10)||
'  <div class="tSO">'||chr(10)||
'    <div class="tSI">'||chr(10)||
'      <div class="tSU">'||chr(10)||
'        <ul>',
  p_list_template_after_rows=>'         </ul>'||chr(10)||
'      </div>'||chr(10)||
'    </div>'||chr(10)||
'  </div>'||chr(10)||
'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/dhtml_tree
prompt  ......list template 6620211881850584
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3:=t3||'<li><a href="#LINK#">#TEXT#</a></li>';

t4:=t4||'<li><a href="#LINK#">#TEXT#</a></li>';

t5:=t5||'<li><a href="#LINK#">#TEXT#</a></li>';

t6:=t6||'<li><a href="#LINK#">#TEXT#</a></li>';

t7:=t7||'<li><a href="#LINK#">#TEXT#</a></li>';

t8:=t8||'<li><a href="#LINK#">#TEXT#</a></li>';

wwv_flow_api.create_list_template (
  p_id=>6620211881850584 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'DHTML Tree',
  p_theme_id  => 21,
  p_theme_class_id => 23,
  p_list_template_before_rows=>'<ul class="dhtmlTree">',
  p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>',
  p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#">',
  p_after_sub_list=>'</ul>',
  p_sub_list_item_current=> t3,
  p_sub_list_item_noncurrent=> t4,
  p_item_templ_curr_w_child=> t5,
  p_item_templ_noncurr_w_child=> t6,
  p_sub_templ_curr_w_child=> t7,
  p_sub_templ_noncurr_w_child=> t8,
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/hierarchical_expanding
prompt  ......list template 6620332414850584
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle" alt="" /><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle"  alt="" /><a href="#LINK#">#TEXT#</a></li>';

t3:=t3||'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle"  alt="" /><a href="#LINK#">#TEXT#</a></li>';

t4:=t4||'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif"  align="middle" alt="" /><a href="#LINK#">#TEXT#</a></li>';

t5:=t5||'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" align="middle"  onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" class="pseudoButtonInactive" alt="" /><a href="#LINK#">#TEXT#</a></li>';

t6:=t6||'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" align="middle"  onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" class="pseudoButtonInactive" alt="" /><a href="#LINK#">#TEXT#</a></li>';

t7:=t7||'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" align="middle" class="pseudoButtonInactive" alt="" /><a href="#LINK#">#TEXT#</a></li>';

t8:=t8||'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" align="middle" class="pseudoButtonInactive" alt="" /><a href="#LINK#">#TEXT#</a></li>';

wwv_flow_api.create_list_template (
  p_id=>6620332414850584 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Hierarchical Expanding',
  p_theme_id  => 21,
  p_theme_class_id => 22,
  p_list_template_before_rows=>'<ul class="dhtmlTree">',
  p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>',
  p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" style="display:none;" class="dhtmlTree">',
  p_after_sub_list=>'</ul>',
  p_sub_list_item_current=> t3,
  p_sub_list_item_noncurrent=> t4,
  p_item_templ_curr_w_child=> t5,
  p_item_templ_noncurr_w_child=> t6,
  p_sub_templ_curr_w_child=> t7,
  p_sub_templ_noncurr_w_child=> t8,
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/horizontal_images_with_label_list
prompt  ......list template 6620409442850584
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<div class="list-item-current">'||chr(10)||
'  <div class="list-item-image"><a href="#LINK#" class="current"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" / ></a></div>'||chr(10)||
'  <div class="list-item-label"><a href="#LINK#" class="current">#TEXT#</a></div>'||chr(10)||
'</div>';

t2:=t2||'<div class="list-item">'||chr(10)||
'  <div class="list-item-image"><a href="#LINK#" class="current"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" / ></a></div>'||chr(10)||
'  <div class="list-item-label"><a href="#LINK#" class="current">#TEXT#</a></div>'||chr(10)||
'</div>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>6620409442850584 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Horizontal Images with Label List',
  p_theme_id  => 21,
  p_theme_class_id => 4,
  p_list_template_before_rows=>'<div class="horizontal-images-list">',
  p_list_template_after_rows=>'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/horizontal_links_list
prompt  ......list template 6620523481850584
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<a href="#LINK#" class="current">#TEXT#</a>';

t2:=t2||'<a href="#LINK#">#TEXT#</a>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>6620523481850584 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Horizontal Links List',
  p_theme_id  => 21,
  p_theme_class_id => 3,
  p_list_template_before_rows=>'<div class="horizontal-links-list">',
  p_list_template_after_rows=>'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/horizontal_tabs_rounded_list
prompt  ......list template 6620627119850584
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="#LIST_STATUS#"><a href="#LINK#"><span>#TEXT#</span></a></li>';

t2:=t2||'<li class="#LIST_STATUS#"><a href="#LINK#"><span>#TEXT#</span></a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>6620627119850584 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Horizontal Tabs Rounded List',
  p_theme_id  => 21,
  p_theme_class_id => 7,
  p_list_template_before_rows=>'<div class="sHTabs">'||chr(10)||
'	<div class="sHTabsInner">'||chr(10)||
'		<ul>',
  p_list_template_after_rows=>'		</ul>'||chr(10)||
'	</div>'||chr(10)||
'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/horizontal_tabs_rounded_list_full_width
prompt  ......list template 6620727860850584
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="#LIST_STATUS#"><a href="#LINK#"><span>#TEXT#</span></a></li>';

t2:=t2||'<li class="#LIST_STATUS#"><a href="#LINK#"><span>#TEXT#</span></a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>6620727860850584 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Horizontal Tabs Rounded List (Full Width)',
  p_theme_id  => 21,
  p_theme_class_id => 7,
  p_list_template_before_rows=>'<div class="sHFWTabs">'||chr(10)||
'<div class="sHTabs">'||chr(10)||
'	<div class="sHTabsInner">'||chr(10)||
'		<ul>',
  p_list_template_after_rows=>'			<li class="last"></li>'||chr(10)||
'		</ul>'||chr(10)||
'	</div>'||chr(10)||
'</div>'||chr(10)||
'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/page_level_tabs_list
prompt  ......list template 6620807189850584
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="#LIST_STATUS#"><a href="#LINK#"><span></span>#TEXT#</a></li>';

t2:=t2||'<li class="#LIST_STATUS#"><a href="#LINK#"><span></span>#TEXT#</a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>6620807189850584 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Page Level Tabs List',
  p_theme_id  => 21,
  p_theme_class_id => 7,
  p_list_template_before_rows=>'<div class="sBTabs">'||chr(10)||
'	<div class="sBTabsInner">'||chr(10)||
'		<ul>',
  p_list_template_after_rows=>'			<li class="last"></li>'||chr(10)||
'		</ul>'||chr(10)||
'	</div>'||chr(10)||
'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/pull_down_menu
prompt  ......list template 6620909749850584
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>';

t3:=t3||'<li class="dhtmlMenuSep2"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif"  width="1" height="1" alt="" class="dhtmlMenuSep2" /></li>';

t4:=t4||'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>';

t5:=t5||'<li class="dhtmlMenuItem1"><a href="#LINK#">#TEXT#</a><img src="#IMAGE_PREFIX#themes/theme_21/images/menu-small.gif" alt="Expand" onclick="app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)" />'||chr(10)||
'</li>';

t6:=t6||'<li class="dhtmlMenuItem1"><a href="#LINK#">#TEXT#</a><img src="#IMAGE_PREFIX#themes/theme_21/images/menu-small.gif" alt="Expand" onclick="app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)" /></li>';

t7:=t7||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" alt="" /></a></li>';

t8:=t8||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" alt="" / ></a></li>';

wwv_flow_api.create_list_template (
  p_id=>6620909749850584 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Pull Down Menu',
  p_theme_id  => 21,
  p_theme_class_id => 20,
  p_list_template_before_rows=>'<ul class="dhtmlMenuLG2">',
  p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>',
  p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;">',
  p_after_sub_list=>'</ul>',
  p_sub_list_item_current=> t3,
  p_sub_list_item_noncurrent=> t4,
  p_item_templ_curr_w_child=> t5,
  p_item_templ_noncurr_w_child=> t6,
  p_sub_templ_curr_w_child=> t7,
  p_sub_templ_noncurr_w_child=> t8,
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/pull_down_menu_with_image
prompt  ......list template 6621003943850584
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<div class="dhtmlMenuItem"><a href="#LINK#" id="#LIST_ITEM_ID#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#  /></a><img src="#IMAGE_PREFIX#menu/drop_down_nochild.png" width="20" height="128" alt="" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t2:=t2||'<div class="dhtmlMenuItem"><a href="#LINK#" id="#LIST_ITEM_ID#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#  "/></a><img src="#IMAGE_PREFIX#menu/drop_down_nochild.png" width="20" height="128" alt="" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t3:=t3||'<li class="dhtmlMenuSep"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif"  width="1" height="1" alt=""  class="dhtmlMenuSep" /></li>';

t4:=t4||'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>';

t5:=t5||'<div class="dhtmlMenuItem"><a href="#LINK#" id="#LIST_ITEM_ID#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#  /></a><img src="#IMAGE_PREFIX#menu/drop_down.png" width="20" height="128" alt="" class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom3(this,''S#LIST_ITEM_ID#'',''#LIST_ITEM_ID#'',false)" />'||chr(10)||
'<a href="#LINK#" class="dhtmlBottom">#TEXT#</a>'||chr(10)||
'</div>';

t6:=t6||'<div class="dhtmlMenuItem"><a href="#LINK#" id="#LIST_ITEM_ID#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#  /></a><img src="#IMAGE_PREFIX#menu/drop_down.png" width="20" height="128" alt=""  class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom3(this,''S#LIST_ITEM_ID#'',''#LIST_ITEM_ID#'',false)" />'||chr(10)||
'<a href="#LINK#" class="dhtmlBottom">#TEXT#</a>'||chr(10)||
'</div>';

t7:=t7||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''S#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>';

t8:=t8||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''S#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>';

wwv_flow_api.create_list_template (
  p_id=>6621003943850584 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Pull Down Menu with Image',
  p_theme_id  => 21,
  p_theme_class_id => 21,
  p_list_template_before_rows=>'<div class="dhtmlMenuLG">',
  p_list_template_after_rows=>'</div><br style="clear:both;"/><br style="clear:both;"/>',
  p_before_sub_list=>'<ul id="S#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;"><li class="dhtmlSubMenuP" onmouseover="dhtml_CloseAllSubMenusL(this)">#PARENT_TEXT#</li>',
  p_after_sub_list=>'</ul>',
  p_sub_list_item_current=> t3,
  p_sub_list_item_noncurrent=> t4,
  p_item_templ_curr_w_child=> t5,
  p_item_templ_noncurr_w_child=> t6,
  p_sub_templ_curr_w_child=> t7,
  p_sub_templ_noncurr_w_child=> t8,
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/tabbed_navigation_list
prompt  ......list template 6621131681850585
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="active"><a href="#LINK#"><span>#TEXT#</span></a></li>';

t2:=t2||'<li><a href="#LINK#"><span>#TEXT#</span></a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>6621131681850585 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Tabbed Navigation List',
  p_theme_id  => 21,
  p_theme_class_id => 7,
  p_list_template_before_rows=>'<div class="sHorizontalTabs">'||chr(10)||
'	<div class="sHorizontalTabsInner">'||chr(10)||
'		<ul>',
  p_list_template_after_rows=>'		</ul>'||chr(10)||
'	</div>'||chr(10)||
'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_images_list
prompt  ......list template 6621211007850586
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<div class="list-item-current">'||chr(10)||
'  <div class="list-item-image"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" / ></div>'||chr(10)||
'  <div class="list-item-label"><a href="#LINK#" class="current">#TEXT#</a></div>'||chr(10)||
'</div>';

t2:=t2||'<div class="list-item">'||chr(10)||
'  <div class="list-item-image"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" / ></div>'||chr(10)||
'  <div class="list-item-label"><a href="#LINK#" class="current">#TEXT#</a></div>'||chr(10)||
'</div>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>6621211007850586 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Images List',
  p_theme_id  => 21,
  p_theme_class_id => 5,
  p_list_template_before_rows=>'<div class="vertical-images-list">',
  p_list_template_after_rows=>'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_ordered_list
prompt  ......list template 6621329677850586
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="current">#TEXT#</li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>6621329677850586 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Ordered List',
  p_theme_id  => 21,
  p_theme_class_id => 2,
  p_list_template_before_rows=>'<ol class="vertical-ordered-List">',
  p_list_template_after_rows=>'</ol>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_sidebar_list
prompt  ......list template 6621420390850586
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="active"><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>6621420390850586 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Sidebar List',
  p_theme_id  => 21,
  p_theme_class_id => 19,
  p_list_template_before_rows=>'<div class="vertical-sidebar-list">'||chr(10)||
'<ul>',
  p_list_template_after_rows=>'</ul>'||chr(10)||
'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_unordered_list_with_bullets
prompt  ......list template 6621510770850586
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="current"><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>6621510770850586 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Unordered List with Bullets',
  p_theme_id  => 21,
  p_theme_class_id => 1,
  p_list_template_before_rows=>'<ul class="vertical-unordered-list-with-bullets-alt">',
  p_list_template_after_rows=>'</ul>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_unordered_list_with_bullets_alternative
prompt  ......list template 6621613706850586
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>6621613706850586 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Unordered List with Bullets, Alternative',
  p_theme_id  => 21,
  p_theme_class_id => 1,
  p_list_template_before_rows=>'<ul class="vertical-unordered-list-with-bullets">',
  p_list_template_after_rows=>'</ul>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_unordered_list_without_bullets
prompt  ......list template 6621706343850586
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="current">#TEXT#</li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>6621706343850586 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Unordered List without Bullets',
  p_theme_id  => 21,
  p_theme_class_id => 18,
  p_list_template_before_rows=>'<ul class="vertical-unordered-list-without-bullets">',
  p_list_template_after_rows=>'</ul>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/wizard_progress_list
prompt  ......list template 6621801867850586
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="current">#TEXT#</li>';

t2:=t2||'<li class="non-current">#TEXT#</li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>6621801867850586 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Wizard Progress List',
  p_theme_id  => 21,
  p_theme_class_id => 17,
  p_list_template_before_rows=>'<div class="wizard-progress-list" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#><ul>',
  p_list_template_after_rows=>'</ul></div>',
  p_between_items=>'<li class="progress-indicator">&nbsp;</li>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/wizard_progress_list_horizontal_train
prompt  ......list template 6621917215850586
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'    <li class="#LIST_STATUS#">'||chr(10)||
'      <span>#TEXT#</span>'||chr(10)||
'    </li>';

t2:=t2||'    <li class="#LIST_STATUS#">'||chr(10)||
'      <span>#TEXT#</span>'||chr(10)||
'    </li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>6621917215850586 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Wizard Progress List, Horizontal Train',
  p_theme_id  => 21,
  p_theme_class_id => 17,
  p_list_template_before_rows=>'<div class="sHorizontalProgressList">'||chr(10)||
'  <ul>',
  p_list_template_after_rows=>'  </ul>'||chr(10)||
'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

prompt  ...report templates
--
--application/shared_components/user_interface/templates/report/borderless_report
prompt  ......report template 6622022221850586
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="data">#COLUMN_VALUE#</td>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 6622022221850586 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Borderless Report',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#<tr>'||chr(10)||
'<td><table class="report-borderless" cellpadding="0" border="0" cellspacing="0" summary="">',
  p_row_template_after_rows =>'</table><div class="CSV">#EXTERNAL_LINK##CSV_LINK#</div></td>'||chr(10)||
'</tr>'||chr(10)||
'#PAGINATION#'||chr(10)||
'</table>',
  p_row_template_table_attr =>'',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'<th class="header"#ALIGNMENT# id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>',
  p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>',
  p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>',
  p_theme_id  => 21,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 6622022221850586 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/fixed_headers
prompt  ......report template 6622113162850587
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="data" #COLUMN_WIDTH#><p #COLUMN_WIDTH#>#COLUMN_VALUE#</p></td>';

c2:=c2||'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="data-alt" #COLUMN_WIDTH#><p #COLUMN_WIDTH#>#COLUMN_VALUE#</p></td>';

c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 6622113162850587 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Fixed Headers',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table border="0" cellpadding="0" cellspacing="0" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" class="report-holder">#TOP_PAGINATION#'||chr(10)||
'<tr>'||chr(10)||
'<td><div class="fixed-header-report"><table cellpadding="0" border="0" cellspacing="0" summary="">',
  p_row_template_after_rows =>'</tbody></table></div><div class="CSV">#EXTERNAL_LINK##CSV_LINK#</div></td>'||chr(10)||
'</tr>'||chr(10)||
'#PAGINATION#'||chr(10)||
'</table>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_before_column_heading=>'<thead>'||chr(10)||
'',
  p_column_heading_template=>'<th#ALIGNMENT# id="#COLUMN_HEADER_NAME#" class="header" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>',
  p_after_column_heading=>'</thead>'||chr(10)||
'<tbody>'||chr(10)||
'',
  p_row_template_display_cond1=>'ODD_ROW_NUMBERS',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'ODD_ROW_NUMBERS',
  p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>'||chr(10)||
'',
  p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>',
  p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>',
  p_row_style_mouse_over=>'#D6D6D6',
  p_row_style_checked=>'#D6D6D6',
  p_theme_id  => 21,
  p_theme_class_id => 7,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 6622113162850587 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>'||chr(10)||
'');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/horizontal_border
prompt  ......report template 6622227790850587
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="data">#COLUMN_VALUE#</td>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 6622227790850587 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Horizontal Border',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="" class="horizontal-border" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#'||chr(10)||
'<tr>'||chr(10)||
'<td><table cellpadding="0" cellspacing="0" border="0" class="report-standard" summary="">',
  p_row_template_after_rows =>'</table><div class="CSV">#EXTERNAL_LINK##CSV_LINK#</div></td>'||chr(10)||
'</tr>'||chr(10)||
'#PAGINATION#'||chr(10)||
'</table>',
  p_row_template_table_attr =>'',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'<th#ALIGNMENT# id="#COLUMN_HEADER_NAME#" class="header">#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>',
  p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>',
  p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>',
  p_row_style_checked=>'#ccc',
  p_theme_id  => 21,
  p_theme_class_id => 2,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 6622227790850587 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/one_column_unordered_list
prompt  ......report template 6622300707850587
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<li>#COLUMN_VALUE#</li>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 6622300707850587 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'One Column Unordered List',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">'||chr(10)||
'#TOP_PAGINATION#'||chr(10)||
'<tr><td><ul class="t1OneColumnUnorderedList">',
  p_row_template_after_rows =>'</ul><div class="t1CVS">#EXTERNAL_LINK##CSV_LINK#</div></td></tr>'||chr(10)||
'#PAGINATION#'||chr(10)||
'</table>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'',
  p_row_template_display_cond1=>'NOT_CONDITIONAL',
  p_row_template_display_cond2=>'NOT_CONDITIONAL',
  p_row_template_display_cond3=>'NOT_CONDITIONAL',
  p_row_template_display_cond4=>'NOT_CONDITIONAL',
  p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>',
  p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>',
  p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>',
  p_theme_id  => 21,
  p_theme_class_id => 3,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 6622300707850587 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'OMIT',
  p_row_template_after_last =>'OMIT');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/search_results_report_select_link_text_link_target_detail1_detail2_last_modified
prompt  ......report template 6622429813850587
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<li>'||chr(10)||
'<span class="title"><a href="#2#">#1#</a></span>'||chr(10)||
'<span class="description"><span class="last_modified">#5#</span>#3#</span>'||chr(10)||
'<span class="type">#4#</span>'||chr(10)||
'</li>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 6622429813850587 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Search Results Report (SELECT link_text, link_target, detail1, detail2, last_modified)',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<ul class="sSearchResultsReport">',
  p_row_template_after_rows =>'</ul> '||chr(10)||
'#PAGINATION#',
  p_row_template_table_attr =>'',
  p_row_template_type =>'NAMED_COLUMNS',
  p_column_heading_template=>'',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>',
  p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>',
  p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>',
  p_theme_id  => 21,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/standard
prompt  ......report template 6622506965850587
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="data">#COLUMN_VALUE#</td>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 6622506965850587 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Standard',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#'||chr(10)||
'<tr>'||chr(10)||
'<td><table cellpadding="0" border="0" cellspacing="0" summary="" class="report-standard">',
  p_row_template_after_rows =>'</table><div class="CSV">#EXTERNAL_LINK##CSV_LINK#</div></td>'||chr(10)||
'</tr>'||chr(10)||
'#PAGINATION#'||chr(10)||
'</table>',
  p_row_template_table_attr =>'',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'<th#ALIGNMENT# id="#COLUMN_HEADER_NAME#" class="header">#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>',
  p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>',
  p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>',
  p_row_style_mouse_over=>'#F0F0F0',
  p_row_style_checked=>'#E8E8E8',
  p_theme_id  => 21,
  p_theme_class_id => 4,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 6622506965850587 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/standard_alternating_row_colors
prompt  ......report template 6622615180850587
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td class="data"#ALIGNMENT#>#COLUMN_VALUE#</td>';

c2:=c2||'<td class="dataalt"#ALIGNMENT#>#COLUMN_VALUE#</td>';

c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 6622615180850587 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Standard, Alternating Row Colors',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table border="0" cellpadding="0" cellspacing="0" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" class="report-holder">#TOP_PAGINATION#<tr><td>'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" class="report-standard-alternatingrowcolors" summary="" >',
  p_row_template_after_rows =>'</table><div class="CSV">#EXTERNAL_LINK##CSV_LINK#</div></td>'||chr(10)||
'</tr>'||chr(10)||
'#PAGINATION#'||chr(10)||
'</table>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'<th class="header"#ALIGNMENT# id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'ODD_ROW_NUMBERS',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'ODD_ROW_NUMBERS',
  p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>',
  p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>',
  p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>',
  p_theme_id  => 21,
  p_theme_class_id => 5,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 6622615180850587 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>'||chr(10)||
'');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/two_column_portlet
prompt  ......report template 6622723195850588
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<div class="report-row">'||chr(10)||
'  <div class="report-col-hdr">#1#</div>'||chr(10)||
'  <div class="report-col-val">#2#</div>'||chr(10)||
'</div>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 6622723195850588 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Two Column Portlet',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<div class="two-col-report-portlet" #REPORT_ATTRIBUTES# id="#REGION_ID#">',
  p_row_template_after_rows =>'</div>',
  p_row_template_table_attr =>'',
  p_row_template_type =>'NAMED_COLUMNS',
  p_column_heading_template=>'',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_theme_id  => 21,
  p_theme_class_id => 7,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/value_attribute_pairs_div
prompt  ......report template 6622807791850588
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<div class="report-row">'||chr(10)||
'  <div class="report-col-hdr">#COLUMN_HEADER#</div>'||chr(10)||
'  <div class="report-col-val">#COLUMN_VALUE#</div>'||chr(10)||
'</div>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 6622807791850588 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Value Attribute Pairs - Div',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<div class="two-col-report-portlet">',
  p_row_template_after_rows =>'</div>',
  p_row_template_table_attr =>'',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_theme_id  => 21,
  p_theme_class_id => 6,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/value_attribute_pairs_table
prompt  ......report template 6622905826850588
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<tr><th class="header">#COLUMN_HEADER#</th><td class="data">#COLUMN_VALUE#</td></tr>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 6622905826850588 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Value Attribute Pairs - Table',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" class="ValueAttributePairsParent">#TOP_PAGINATION#<tr><td><table cellpadding="0" cellspacing="0" border="0" summary="" class="ValueAttributePairs">',
  p_row_template_after_rows =>'</table><div class="CSV">#EXTERNAL_LINK##CSV_LINK#</div></td></tr>#PAGINATION#</table>',
  p_row_template_table_attr =>'',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>',
  p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>',
  p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>',
  p_theme_id  => 21,
  p_theme_class_id => 6,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

prompt  ...label templates
--
--application/shared_components/user_interface/templates/label/no_label
prompt  ......label template 6623002897850588
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 6623002897850588 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'No Label',
  p_template_body1=>'<span class="hidden-label">',
  p_template_body2=>'</span>',
  p_on_error_before_label=>'<div class="t1InlineError">',
  p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>',
  p_theme_id  => 21,
  p_theme_class_id => 13,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/optional
prompt  ......label template 6623130978850590
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 6623130978850590 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Optional',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" tabindex="999"><span class="optional">',
  p_template_body2=>'</span></label>',
  p_on_error_before_label=>'<div class="t1InlineError">',
  p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>',
  p_theme_id  => 21,
  p_theme_class_id => 3,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/optional_with_help
prompt  ......label template 6623201755850590
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 6623201755850590 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Optional with help',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" tabindex="999"><a class="optional-w-help" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999">',
  p_template_body2=>'</a></label>',
  p_on_error_before_label=>'<div class="t1InlineError">',
  p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>',
  p_theme_id  => 21,
  p_theme_class_id => 1,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/required
prompt  ......label template 6623306076850591
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 6623306076850591 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Required',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" tabindex="999"><img src="#IMAGE_PREFIX#themes/theme_21/images/required.png" alt="#VALUE_REQUIRED#" tabindex="999" /> <span class="required">',
  p_template_body2=>'</span></label>',
  p_on_error_before_label=>'<div class="t1InlineError">',
  p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>',
  p_theme_id  => 21,
  p_theme_class_id => 4,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/required_with_help
prompt  ......label template 6623415588850591
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 6623415588850591 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Required with help',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" tabindex="999"><a class="required-w-help" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999"><img src="#IMAGE_PREFIX#themes/theme_21/images/required.png" alt="#VALUE_REQUIRED#" tabindex="999" /> ',
  p_template_body2=>'</a></label>',
  p_on_error_before_label=>'<div class="t1InlineError">',
  p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>',
  p_theme_id  => 21,
  p_theme_class_id => 2,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

prompt  ...breadcrumb templates
--
--application/shared_components/user_interface/templates/breadcrumb/breadcrumb_menu
prompt  ......template 6623526987850591
 
begin
 
begin
wwv_flow_api.create_menu_template (
  p_id=> 6623526987850591 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=>'Breadcrumb Menu',
  p_before_first=>'<div id="breadcrumb_container">'||chr(10)||
'	<ul>'||chr(10)||
'		<li class="open"><span></span></li>',
  p_current_page_option=>'		<li class="active"><a href="#LINK#">#NAME#</a></li>',
  p_non_current_page_option=>'		<li><a href="#LINK#">#NAME#</a></li>',
  p_menu_link_attributes=>'',
  p_between_levels=>'		<li class="sep"><span></span></li>',
  p_after_last=>'		<li class="close"><span></span></li>'||chr(10)||
'	</ul>'||chr(10)||
'</div>',
  p_max_levels=>12,
  p_start_with_node=>'PARENT_TO_LEAF',
  p_theme_id  => 21,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_template_comments=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/breadcrumb/hierarchical_menu
prompt  ......template 6623607725850598
 
begin
 
begin
wwv_flow_api.create_menu_template (
  p_id=> 6623607725850598 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=>'Hierarchical Menu',
  p_before_first=>'<ul class="t1HierarchicalMenu">',
  p_current_page_option=>'<li class="t1current">#NAME#</li>',
  p_non_current_page_option=>'<li><a href="#LINK#">#NAME#</a></li>',
  p_menu_link_attributes=>'',
  p_between_levels=>'',
  p_after_last=>'</ul>',
  p_max_levels=>11,
  p_start_with_node=>'CHILD_MENU',
  p_theme_id  => 21,
  p_theme_class_id => 2,
  p_translate_this_template => 'N',
  p_template_comments=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/popuplov
prompt  ...popup list of values templates
--
prompt  ......template 6624325815850601
 
begin
 
begin
wwv_flow_api.create_popup_lov_template (
  p_id=> 6624325815850601 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_popup_icon=>'#IMAGE_PREFIX#themes/theme_21/images/sPopupLOVIcon.png',
  p_popup_icon_attr=>'alt="Popup Lov"',
  p_popup_icon2=>'',
  p_popup_icon_attr2=>'',
  p_page_name=>'winlov',
  p_page_title=>'Search Dialog',
  p_page_html_head=>'<link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0.css" type="text/css" media="all"/>',
  p_page_body_attr=>'onload="first_field()" class="pop-up-lov"',
  p_before_field_text=>'<div class="t1PopupHead">',
  p_page_heading_text=>'',
  p_page_footer_text =>'',
  p_filter_width     =>'20',
  p_filter_max_width =>'100',
  p_filter_text_attr =>'',
  p_find_button_text =>'Search',
  p_find_button_image=>'',
  p_find_button_attr =>'',
  p_close_button_text=>'Close',
  p_close_button_image=>'',
  p_close_button_attr=>'',
  p_next_button_text =>'Next >',
  p_next_button_image=>'',
  p_next_button_attr =>'',
  p_prev_button_text =>'< Previous',
  p_prev_button_image=>'',
  p_prev_button_attr =>'',
  p_after_field_text=>'</div>',
  p_scrollbars=>'1',
  p_resizable=>'1',
  p_width =>'400',
  p_height=>'450',
  p_result_row_x_of_y=>'<div style="padding:5px 10px; font-size:10px;">Row(s) #FIRST_ROW# - #LAST_ROW#</div>',
  p_result_rows_per_pg=>500,
  p_before_result_set=>'<div class="t1PopupBody">',
  p_theme_id  => 21,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_after_result_set   =>'</div>');
end;
null;
 
end;
/

prompt  ...calendar templates
--
--application/shared_components/user_interface/templates/calendar/calendar
prompt  ......template 6623730718850598
 
begin
 
begin
wwv_flow_api.create_calendar_template(
  p_id=> 6623730718850598 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_cal_template_name=>'Calendar',
  p_translate_this_template=> 'N',
  p_day_of_week_format=> '<th class="DayOfWeek">#IDAY#</th>',
  p_month_title_format=> '<table cellspacing="0" cellpadding="0" border="0" summary="" class="CalendarHolder"> '||chr(10)||
' <tr>'||chr(10)||
'   <td class="MonthTitle">#IMONTH# #YYYY#</td>'||chr(10)||
' </tr>'||chr(10)||
' <tr>'||chr(10)||
' <td>',
  p_month_open_format=> '<table border="0" cellpadding="0" cellspacing="0" summary="0" class="Calendar">',
  p_month_close_format=> '</table></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'',
  p_day_title_format=> '<div class="DayTitle">#DD#</div>',
  p_day_open_format=> '<td class="Day" valign="top">',
  p_day_close_format=> '</td>',
  p_today_open_format=> '<td valign="top" class="Today">',
  p_weekend_title_format=> '<div class="WeekendDayTitle">#DD#</div>',
  p_weekend_open_format => '<td valign="top" class="WeekendDay">',
  p_weekend_close_format => '</td>',
  p_nonday_title_format => '<div class="NonDayTitle">#DD#</div>',
  p_nonday_open_format => '<td class="NonDay" valign="top">',
  p_nonday_close_format => '</td>',
  p_week_title_format => '',
  p_week_open_format => '<tr>',
  p_week_close_format => '</tr> ',
  p_daily_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>',
  p_daily_open_format => '<tr>',
  p_daily_close_format => '</tr>',
  p_weekly_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="WeekCalendarHolder">'||chr(10)||
'<tr>'||chr(10)||
'<td class="MonthTitle" id="test">#WTITLE#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td>',
  p_weekly_day_of_week_format => '<th class="DayOfWeek">#IDAY#<br>#MM#/#DD#</th>',
  p_weekly_month_open_format => '<table border="0" cellpadding="0" cellspacing="0" summary="0" class="WeekCalendar">',
  p_weekly_month_close_format => '</table></td></tr></table>',
  p_weekly_day_title_format => '',
  p_weekly_day_open_format => '<td class="Day" valign="top">',
  p_weekly_day_close_format => '<br /></td>',
  p_weekly_today_open_format => '<td class="Today" valign="top">',
  p_weekly_weekend_title_format => '',
  p_weekly_weekend_open_format => '<td valign="top" class="NonDay">',
  p_weekly_weekend_close_format => '<br /></td>',
  p_weekly_time_open_format => '<th class="Hour">',
  p_weekly_time_close_format => '<br /></th>',
  p_weekly_time_title_format => '#TIME#',
  p_weekly_hour_open_format => '<tr>',
  p_weekly_hour_close_format => '</tr>',
  p_daily_day_of_week_format => '<th class="DayOfWeek">#IDAY# #DD#/#MM#</th>',
  p_daily_month_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'||chr(10)||
'',
  p_daily_month_open_format => '<table border="0" cellpadding="2" cellspacing="0" summary="0" class="DayCalendar">',
  p_daily_month_close_format => '</table></td> </tr> </table>',
  p_daily_day_title_format => '',
  p_daily_day_open_format => '<td valign="top" class="Day">',
  p_daily_day_close_format => '<br /></td>',
  p_daily_today_open_format => '<td valign="top" class="Today">',
  p_daily_time_open_format => '<th class="Hour">',
  p_daily_time_close_format => '<br /></th>',
  p_daily_time_title_format => '#TIME#',
  p_daily_hour_open_format => '<tr>',
  p_daily_hour_close_format => '</tr>',
  p_cust_month_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="CalendarHolder"> '||chr(10)||
' <tr>'||chr(10)||
'   <td class="MonthTitle">#WTITLE#</td>'||chr(10)||
' </tr>'||chr(10)||
' <tr>'||chr(10)||
' <td>',
  p_cust_day_of_week_format => '<th class="DayOfWeek">#IDAY#</th>',
  p_cust_month_open_format => '<table border="0" cellpadding="0" cellspacing="0" summary="0" class="Calendar">',
  p_cust_month_close_format => '</table></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'',
  p_cust_week_title_format => '',
  p_cust_week_open_format => '<tr>',
  p_cust_week_close_format => '</tr> ',
  p_cust_day_title_format => '<div class="DayTitle">#DD#</div>',
  p_cust_day_open_format => '<td style="#COL_HEIGHT_PIX# #COL_HEIGHT_PER#" class="Day" valign="top">',
  p_cust_day_close_format => '</td>',
  p_cust_today_open_format => '<td style="#COL_HEIGHT_PIX# #COL_HEIGHT_PER#" valign="top" class="Today">',
  p_cust_daily_title_format => '',
  p_cust_daily_open_format => '',
  p_cust_daily_close_format => '',
  p_cust_nonday_title_format => '<div class="NonDayTitle">#DD#</div>',
  p_cust_nonday_open_format => '<td style="#COL_HEIGHT_PIX# #COL_HEIGHT_PER#" class="NonDay" valign="top">',
  p_cust_nonday_close_format => '</td>',
  p_cust_weekend_title_format => '<div class="WeekendDayTitle">#DD#</div>',
  p_cust_weekend_open_format => '<td style="#COL_HEIGHT_PIX# #COL_HEIGHT_PER#" valign="top" class="WeekendDay">',
  p_cust_weekend_close_format => '</td>',
  p_cust_hour_open_format => '<tr>',
  p_cust_hour_close_format => '</tr>',
  p_cust_time_title_format => '#TIME#',
  p_cust_time_open_format => '<th class="Hour">',
  p_cust_time_close_format => '<br /></th>',
  p_cust_wk_month_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="WeekCalendarHolder">'||chr(10)||
'<tr>'||chr(10)||
'<td class="MonthTitle" id="test">#WTITLE#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td>',
  p_cust_wk_day_of_week_format => '<th class="DayOfWeek">#IDAY#<br>#MM#/#DD#</th>',
  p_cust_wk_month_open_format => '<table border="0" cellpadding="0" cellspacing="0" summary="0" class="WeekCalendar">',
  p_cust_wk_month_close_format => '</table></td></tr></table>',
  p_cust_wk_week_title_format => '',
  p_cust_wk_week_open_format => '',
  p_cust_wk_week_close_format => '',
  p_cust_wk_day_title_format => '',
  p_cust_wk_day_open_format => '<td style="#COL_WIDTH_PIX# #COL_WIDTH_PER#" class="Day" valign="top">',
  p_cust_wk_day_close_format => '<br /></td>',
  p_cust_wk_today_open_format => '<td style="#COL_WIDTH_PIX# #COL_WIDTH_PER#" class="Today" valign="top">',
  p_cust_wk_weekend_title_format => '',
  p_cust_wk_weekend_open_format => '<td style="#COL_WIDTH_PIX# #COL_WIDTH_PER#" valign="top" class="NonDay">',
  p_cust_wk_weekend_close_format => '<br /></td>',
  p_cust_month_day_height_pix => '75',
  p_cust_month_day_height_per => '',
  p_cust_week_day_width_pix => '',
  p_cust_week_day_width_per => '14',
  p_theme_id  => 21,
  p_theme_class_id => 1,
  p_reference_id=> null);
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/calendar/calendar_alternative_1
prompt  ......template 6623927838850600
 
begin
 
begin
wwv_flow_api.create_calendar_template(
  p_id=> 6623927838850600 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_cal_template_name=>'Calendar, Alternative 1',
  p_translate_this_template=> 'N',
  p_day_of_week_format=> '<th valign="bottom" class="DayOfWeek">#IDAY#</th>',
  p_month_title_format=> '<table cellspacing="0" cellpadding="0" border="0" summary="" class="CalendarAlternative1Holder"> '||chr(10)||
' <tr>'||chr(10)||
'   <td class="MonthTitle">#IMONTH# #YYYY#</td>'||chr(10)||
' </tr>'||chr(10)||
' <tr>'||chr(10)||
' <td>',
  p_month_open_format=> '<table border="0" cellpadding="0" cellspacing="0" summary="0" class="CalendarAlternative1">',
  p_month_close_format=> '</table></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'',
  p_day_title_format=> '<div class="DayTitle">#DD#</div>',
  p_day_open_format=> '<td class="Day" valign="top" height="100" height="100">',
  p_day_close_format=> '</td>',
  p_today_open_format=> '<td valign="top" class="Today">',
  p_weekend_title_format=> '<div class="WeekendDayTitle">#DD#</div>',
  p_weekend_open_format => '<td valign="top" class="WeekendDay">',
  p_weekend_close_format => '</td>',
  p_nonday_title_format => '<div class="NonDayTitle">#DD#</div>',
  p_nonday_open_format => '<td class="NonDay" valign="top">',
  p_nonday_close_format => '</td>',
  p_week_title_format => '',
  p_week_open_format => '<tr>',
  p_week_close_format => '</tr> ',
  p_daily_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>',
  p_daily_open_format => '<tr>',
  p_daily_close_format => '</tr>',
  p_weekly_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="WeekCalendarAlternative1Holder">'||chr(10)||
'<tr>'||chr(10)||
'<td class="MonthTitle">#WTITLE#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td>',
  p_weekly_day_of_week_format => '<th class="DayOfWeek">#IDAY#<br>#MM#/#DD#</th>',
  p_weekly_month_open_format => '<table border="0" cellpadding="0" cellspacing="0" summary="0" class="WeekCalendarAlternative1">',
  p_weekly_month_close_format => '</table></td></tr></table>',
  p_weekly_day_title_format => '',
  p_weekly_day_open_format => '<td class="Day" valign="top">',
  p_weekly_day_close_format => '<br /></td>',
  p_weekly_today_open_format => '<td class="Today" valign="top">',
  p_weekly_weekend_title_format => '',
  p_weekly_weekend_open_format => '<td valign="top" class="NonDay">',
  p_weekly_weekend_close_format => '<br /></td>',
  p_weekly_time_open_format => '<th class="Hour">',
  p_weekly_time_close_format => '<br /></th>',
  p_weekly_time_title_format => '#TIME#',
  p_weekly_hour_open_format => '<tr>',
  p_weekly_hour_close_format => '</tr>',
  p_daily_day_of_week_format => '<th class="DayOfWeek">#IDAY# #DD#/#MM#</th>',
  p_daily_month_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="DayCalendarAlternative1Holder"> <tr><td class="MonthTitle">#IMONTH# #DD#, #YYYY#</td></tr><tr><td>'||chr(10)||
'',
  p_daily_month_open_format => '<table border="0" cellpadding="0" cellspacing="0" summary="0" class="DayCalendarAlternative1">',
  p_daily_month_close_format => '</table></td> </tr> </table>',
  p_daily_day_title_format => '',
  p_daily_day_open_format => '<td valign="top" class="Day">',
  p_daily_day_close_format => '<br /></td>',
  p_daily_today_open_format => '<td valign="top" class="Today">',
  p_daily_time_open_format => '<th class="Hour">',
  p_daily_time_close_format => '<br /></th>',
  p_daily_time_title_format => '#TIME#',
  p_daily_hour_open_format => '<tr>',
  p_daily_hour_close_format => '</tr>',
  p_cust_month_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="CalendarAlternative1Holder"> '||chr(10)||
' <tr>'||chr(10)||
'   <td class="MonthTitle">#WTITLE#</td>'||chr(10)||
' </tr>'||chr(10)||
' <tr>'||chr(10)||
' <td>',
  p_cust_day_of_week_format => '<th valign="bottom" class="DayOfWeek">#IDAY#</th>',
  p_cust_month_open_format => '<table border="0" cellpadding="0" cellspacing="4" summary="0" class="CalendarAlternative1">'||chr(10)||
'',
  p_cust_month_close_format => '</table></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>',
  p_cust_week_title_format => '',
  p_cust_week_open_format => '<tr>',
  p_cust_week_close_format => '</tr>',
  p_cust_day_title_format => '<div class="DayTitle">#DD#</div>',
  p_cust_day_open_format => '<td style="#COL_HEIGHT_PIX# #COL_HEIGHT_PER#" class="Day" valign="top" height="100" height="100">',
  p_cust_day_close_format => '</td>',
  p_cust_today_open_format => '<td style="#COL_HEIGHT_PIX# #COL_HEIGHT_PER#" valign="top" class="Today">',
  p_cust_daily_title_format => '',
  p_cust_daily_open_format => '',
  p_cust_daily_close_format => '',
  p_cust_nonday_title_format => '<div class="NonDayTitle">#DD#</div>',
  p_cust_nonday_open_format => '<td style="#COL_HEIGHT_PIX# #COL_HEIGHT_PER#" class="NonDay" valign="top">',
  p_cust_nonday_close_format => '</td>',
  p_cust_weekend_title_format => '<div class="WeekendDayTitle">#DD#</div>',
  p_cust_weekend_open_format => '<td style="#COL_HEIGHT_PIX# #COL_HEIGHT_PER#" valign="top" class="WeekendDay">',
  p_cust_weekend_close_format => '</td>',
  p_cust_hour_open_format => '<tr>',
  p_cust_hour_close_format => '</tr>',
  p_cust_time_title_format => '#TIME#',
  p_cust_time_open_format => '<th class="Hour">',
  p_cust_time_close_format => '<br /></th>',
  p_cust_wk_month_title_format => '<table cellspacing="4" cellpadding="0" border="0" summary="" class="WeekCalendarAlternative1Holder">'||chr(10)||
'<tr>'||chr(10)||
'<td class="MonthTitle" id="test">#WTITLE#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td>',
  p_cust_wk_day_of_week_format => '<th class="DayOfWeek">#IDAY#<br>#MM#/#DD#</th>',
  p_cust_wk_month_open_format => '<table border="0" cellpadding="0" cellspacing="4" summary="0" class="WeekCalendarAlternative1">'||chr(10)||
'',
  p_cust_wk_month_close_format => '</table></td></tr></table>',
  p_cust_wk_week_title_format => '',
  p_cust_wk_week_open_format => '',
  p_cust_wk_week_close_format => '',
  p_cust_wk_day_title_format => '',
  p_cust_wk_day_open_format => '<td style="#COL_WIDTH_PIX# #COL_WIDTH_PER#" class="Day" valign="top">',
  p_cust_wk_day_close_format => '<br /></td>',
  p_cust_wk_today_open_format => '<td style="#COL_WIDTH_PIX# #COL_WIDTH_PER#" class="Today" valign="top">',
  p_cust_wk_weekend_title_format => '',
  p_cust_wk_weekend_open_format => '<td style="#COL_WIDTH_PIX# #COL_WIDTH_PER#" valign="top" class="NonDay">',
  p_cust_wk_weekend_close_format => '<br /></td>',
  p_cust_month_day_height_pix => '100',
  p_cust_month_day_height_per => '',
  p_cust_week_day_width_pix => '100',
  p_cust_week_day_width_per => '',
  p_theme_id  => 21,
  p_theme_class_id => 2,
  p_reference_id=> null);
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/calendar/small_calendar
prompt  ......template 6624129678850600
 
begin
 
begin
wwv_flow_api.create_calendar_template(
  p_id=> 6624129678850600 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_cal_template_name=>'Small Calendar',
  p_translate_this_template=> 'N',
  p_day_of_week_format=> '<th class="day-of-week">#DY#</th>',
  p_month_title_format=> '<table cellspacing="0" cellpadding="0" border="0" summary="" class="small-calendar-holder"> '||chr(10)||
' <tr>'||chr(10)||
'   <td class="month-title">#IMONTH# #YYYY#</td>'||chr(10)||
' </tr>'||chr(10)||
' <tr>'||chr(10)||
' <td>',
  p_month_open_format=> '<table border="0" cellpadding="0" cellspacing="0" summary="" class="small-calendar">',
  p_month_close_format=> '</table></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>',
  p_day_title_format=> '<div class="day-title">#DD#</div>',
  p_day_open_format=> '<td class="day" valign="top">',
  p_day_close_format=> '</td>',
  p_today_open_format=> '<td valign="top" class="today">',
  p_weekend_title_format=> '<div class="weekend-day-title">#DD#</div>',
  p_weekend_open_format => '<td valign="top" class="weekend-day">',
  p_weekend_close_format => '</td>',
  p_nonday_title_format => '<div class="non-day-title">#DD#</div>',
  p_nonday_open_format => '<td class="non-day" valign="top">',
  p_nonday_close_format => '</td>',
  p_week_title_format => '',
  p_week_open_format => '<tr>',
  p_week_close_format => '</tr> ',
  p_daily_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>',
  p_daily_open_format => '<tr>',
  p_daily_close_format => '</tr>',
  p_weekly_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="SmallWeekCalendarHolder">'||chr(10)||
'<tr>'||chr(10)||
'<td class="MonthTitle" id="test">#WTITLE#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td>',
  p_weekly_day_of_week_format => '<th class="DayOfWeek">#DY#<br />#MM#/#DD#</th>',
  p_weekly_month_open_format => '<table border="0" cellpadding="0" cellspacing="0" summary="0" class="SmallWeekCalendar">',
  p_weekly_month_close_format => '</table></td></tr></table>',
  p_weekly_day_title_format => '',
  p_weekly_day_open_format => '<td class="Day" valign="top"><div class="inner">',
  p_weekly_day_close_format => '</div></td>',
  p_weekly_today_open_format => '<td class="t1Today" valign="top"><div class="inner">',
  p_weekly_weekend_title_format => '',
  p_weekly_weekend_open_format => '<td valign="top" class="NonDay"><div class="inner">',
  p_weekly_weekend_close_format => '</div></td>',
  p_weekly_time_open_format => '<th class="Hour">',
  p_weekly_time_close_format => '<br /></th>',
  p_weekly_time_title_format => '#TIME#',
  p_weekly_hour_open_format => '<tr>',
  p_weekly_hour_close_format => '</tr>',
  p_daily_day_of_week_format => '<th class="DayOfWeek">#DY# #DD#/#MM#</th>',
  p_daily_month_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="SmallDayCalendarHolder"> <tr> <td class="MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr><tr><td>'||chr(10)||
'',
  p_daily_month_open_format => '<table border="0" cellpadding="0" cellspacing="0" summary="0" class="SmallDayCalendar">',
  p_daily_month_close_format => '</table></td></tr></table>',
  p_daily_day_title_format => '',
  p_daily_day_open_format => '<td valign="top" class="Day">',
  p_daily_day_close_format => '<br /></td>',
  p_daily_today_open_format => '<td valign="top" class="Today">',
  p_daily_time_open_format => '<th class="Hour">',
  p_daily_time_close_format => '<br /></th>',
  p_daily_time_title_format => '#TIME#',
  p_daily_hour_open_format => '<tr>',
  p_daily_hour_close_format => '</tr>',
  p_cust_month_title_format => '<table cellspacing="2" cellpadding="0" border="0" summary="" class="small-calendar-holder"> '||chr(10)||
' <tr>'||chr(10)||
'   <td class="month-title">#WTITLE#</td>'||chr(10)||
' </tr>'||chr(10)||
' <tr>'||chr(10)||
' <td>',
  p_cust_day_of_week_format => '<th class="day-of-week">#DY#</th>',
  p_cust_month_open_format => '<table border="0" cellpadding="0" cellspacing="2" summary="" class="small-calendar">',
  p_cust_month_close_format => '</table></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>',
  p_cust_week_title_format => '',
  p_cust_week_open_format => '<tr>',
  p_cust_week_close_format => '</tr>',
  p_cust_day_title_format => '<div class="day-title">#DD#</div>',
  p_cust_day_open_format => '<td style="#COL_HEIGHT_PIX# #COL_HEIGHT_PER#" class="day" valign="top">',
  p_cust_day_close_format => '</td>',
  p_cust_today_open_format => '<td style="#COL_HEIGHT_PIX# #COL_HEIGHT_PER#" valign="top" class="today">',
  p_cust_daily_title_format => '',
  p_cust_daily_open_format => '',
  p_cust_daily_close_format => '',
  p_cust_nonday_title_format => '<div class="non-day-title">#DD#</div>',
  p_cust_nonday_open_format => '<td style="#COL_HEIGHT_PIX# #COL_HEIGHT_PER#" class="non-day" valign="top">',
  p_cust_nonday_close_format => '</td>',
  p_cust_weekend_title_format => '<div class="weekend-day-title">#DD#</div>',
  p_cust_weekend_open_format => '<td style="#COL_HEIGHT_PIX# #COL_HEIGHT_PER#" valign="top" class="weekend-day">',
  p_cust_weekend_close_format => '</td>',
  p_cust_hour_open_format => '<tr>',
  p_cust_hour_close_format => '</tr>',
  p_cust_time_title_format => '#TIME#',
  p_cust_time_open_format => '<th class="Hour">',
  p_cust_time_close_format => '<br /></th>',
  p_cust_wk_month_title_format => '<table cellspacing="2" cellpadding="0" border="0" summary="" class="SmallWeekCalendarHolder">'||chr(10)||
'<tr>'||chr(10)||
'<td class="MonthTitle" id="test">#WTITLE#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td>',
  p_cust_wk_day_of_week_format => '<th class="DayOfWeek">#DY#<br />#MM#/#DD#</th>',
  p_cust_wk_month_open_format => '<table border="0" cellpadding="0" cellspacing="2" summary="0" class="SmallWeekCalendar">',
  p_cust_wk_month_close_format => '</table></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>',
  p_cust_wk_week_title_format => '',
  p_cust_wk_week_open_format => '',
  p_cust_wk_week_close_format => '',
  p_cust_wk_day_title_format => '',
  p_cust_wk_day_open_format => '<td style="#COL_WIDTH_PIX# #COL_WIDTH_PER#" class="Day" valign="top">',
  p_cust_wk_day_close_format => '<br /></td>',
  p_cust_wk_today_open_format => '<td style="#COL_WIDTH_PIX# #COL_WIDTH_PER#" class="t1Today" valign="top">',
  p_cust_wk_weekend_title_format => '',
  p_cust_wk_weekend_open_format => '<td style="#COL_WIDTH_PIX# #COL_WIDTH_PER#" valign="top" class="NonDay">',
  p_cust_wk_weekend_close_format => '<br /></td>',
  p_cust_month_day_height_pix => '14',
  p_cust_month_day_height_per => '14',
  p_cust_week_day_width_pix => '40',
  p_cust_week_day_width_per => '14',
  p_theme_id  => 21,
  p_theme_class_id => 3,
  p_reference_id=> null);
end;
null;
 
end;
/

prompt  ...application themes
--
--application/shared_components/user_interface/themes/scarlet
prompt  ......theme 6624406642850609
begin
wwv_flow_api.create_theme (
  p_id =>6624406642850609 + wwv_flow_api.g_id_offset,
  p_flow_id =>wwv_flow.g_flow_id,
  p_theme_id  => 21,
  p_theme_name=>'Scarlet',
  p_default_page_template=>6615627566850561 + wwv_flow_api.g_id_offset,
  p_error_template=>6615201810850560 + wwv_flow_api.g_id_offset,
  p_printer_friendly_template=>6615804049850561 + wwv_flow_api.g_id_offset,
  p_breadcrumb_display_point=>'REGION_POSITION_01',
  p_sidebar_display_point=>'REGION_POSITION_02',
  p_login_template=>6614810839850550 + wwv_flow_api.g_id_offset,
  p_default_button_template=>6616312293850562 + wwv_flow_api.g_id_offset,
  p_default_region_template=>6618921799850573 + wwv_flow_api.g_id_offset,
  p_default_chart_template =>6617915349850572 + wwv_flow_api.g_id_offset,
  p_default_form_template  =>6618013289850572 + wwv_flow_api.g_id_offset,
  p_default_reportr_template   =>6618921799850573 + wwv_flow_api.g_id_offset,
  p_default_tabform_template=>6618921799850573 + wwv_flow_api.g_id_offset,
  p_default_wizard_template=>6619815428850576 + wwv_flow_api.g_id_offset,
  p_default_menur_template=>6617425955850570 + wwv_flow_api.g_id_offset,
  p_default_listr_template=>6617815669850571 + wwv_flow_api.g_id_offset,
  p_default_irr_template=>6618528500850573 + wwv_flow_api.g_id_offset,
  p_default_report_template   =>6622506965850587 + wwv_flow_api.g_id_offset,
  p_default_label_template=>6623201755850590 + wwv_flow_api.g_id_offset,
  p_default_menu_template=>6623526987850591 + wwv_flow_api.g_id_offset,
  p_default_calendar_template=>6623730718850598 + wwv_flow_api.g_id_offset,
  p_default_list_template=>6621510770850586 + wwv_flow_api.g_id_offset,
  p_default_option_label=>6623201755850590 + wwv_flow_api.g_id_offset,
  p_default_required_label=>6623415588850591 + wwv_flow_api.g_id_offset);
end;
/
 
prompt  ...build options used by application 40
--
 
begin
 
null;
 
end;
/

--application/shared_components/globalization/messages
prompt  ...messages used by application: 40
--
--application/shared_components/globalization/dyntranslations
prompt  ...dynamic translations used by application: 40
--
--application/shared_components/globalization/language
prompt  ...Language Maps for Application 40
--
 
begin
 
null;
 
end;
/

prompt  ...Shortcuts
--
prompt  ...web services (9iR2 or better)
--
prompt  ...shared queries
--
prompt  ...report layouts
--
prompt  ...authentication schemes
--
--application/shared_components/security/authentication/application_express
prompt  ......scheme 6624524088850614
 
begin
 
declare
  s1 varchar2(32767) := null;
  s2 varchar2(32767) := null;
  s3 varchar2(32767) := null;
  s4 varchar2(32767) := null;
  s5 varchar2(32767) := null;
begin
s1 := null;
s2 := null;
s3 := null;
s4:=s4||'-BUILTIN-';

s5 := null;
wwv_flow_api.create_auth_setup (
  p_id=> 6624524088850614 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Application Express',
  p_description=>'Use internal Application Express account credentials and login page in this application.',
  p_page_sentry_function=> s1,
  p_sess_verify_function=> s2,
  p_pre_auth_process=> s3,
  p_auth_function=> s4,
  p_post_auth_process=> s5,
  p_invalid_session_page=>'101',
  p_invalid_session_url=>'',
  p_cookie_name=>'',
  p_cookie_path=>'',
  p_cookie_domain=>'',
  p_use_secure_cookie_yn=>'',
  p_ldap_host=>'',
  p_ldap_port=>'',
  p_ldap_string=>'',
  p_attribute_01=>'',
  p_attribute_02=>'wwv_flow_custom_auth_std.logout?p_this_flow=&APP_ID.&amp;p_next_flow_page_sess=&APP_ID.:1',
  p_attribute_03=>'',
  p_attribute_04=>'',
  p_attribute_05=>'',
  p_attribute_06=>'',
  p_attribute_07=>'',
  p_attribute_08=>'',
  p_required_patch => null + wwv_flow_api.g_id_offset);
end;
null;
 
end;
/

--application/shared_components/security/authentication/database
prompt  ......scheme 6624625495850616
 
begin
 
declare
  s1 varchar2(32767) := null;
  s2 varchar2(32767) := null;
  s3 varchar2(32767) := null;
  s4 varchar2(32767) := null;
  s5 varchar2(32767) := null;
begin
s1:=s1||'-DATABASE-';

s2 := null;
s3 := null;
s4 := null;
s5 := null;
wwv_flow_api.create_auth_setup (
  p_id=> 6624625495850616 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'DATABASE',
  p_description=>'Use database authentication (user identified by DAD).',
  p_page_sentry_function=> s1,
  p_sess_verify_function=> s2,
  p_pre_auth_process=> s3,
  p_auth_function=> s4,
  p_post_auth_process=> s5,
  p_invalid_session_page=>'',
  p_invalid_session_url=>'',
  p_cookie_name=>'',
  p_cookie_path=>'',
  p_cookie_domain=>'',
  p_use_secure_cookie_yn=>'',
  p_ldap_host=>'',
  p_ldap_port=>'',
  p_ldap_string=>'',
  p_attribute_01=>'',
  p_attribute_02=>'',
  p_attribute_03=>'',
  p_attribute_04=>'',
  p_attribute_05=>'',
  p_attribute_06=>'',
  p_attribute_07=>'',
  p_attribute_08=>'',
  p_required_patch => null + wwv_flow_api.g_id_offset);
end;
null;
 
end;
/

--application/shared_components/security/authentication/database_account
prompt  ......scheme 6624728477850616
 
begin
 
declare
  s1 varchar2(32767) := null;
  s2 varchar2(32767) := null;
  s3 varchar2(32767) := null;
  s4 varchar2(32767) := null;
  s5 varchar2(32767) := null;
begin
s1 := null;
s2 := null;
s3 := null;
s4:=s4||'return false; end;--';

s5 := null;
wwv_flow_api.create_auth_setup (
  p_id=> 6624728477850616 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'DATABASE ACCOUNT',
  p_description=>'Use database account credentials.',
  p_page_sentry_function=> s1,
  p_sess_verify_function=> s2,
  p_pre_auth_process=> s3,
  p_auth_function=> s4,
  p_post_auth_process=> s5,
  p_invalid_session_page=>'101',
  p_invalid_session_url=>'',
  p_cookie_name=>'',
  p_cookie_path=>'',
  p_cookie_domain=>'',
  p_use_secure_cookie_yn=>'',
  p_ldap_host=>'',
  p_ldap_port=>'',
  p_ldap_string=>'',
  p_attribute_01=>'',
  p_attribute_02=>'wwv_flow_custom_auth_std.logout?p_this_flow=&APP_ID.&amp;p_next_flow_page_sess=&APP_ID.:1',
  p_attribute_03=>'',
  p_attribute_04=>'',
  p_attribute_05=>'',
  p_attribute_06=>'',
  p_attribute_07=>'',
  p_attribute_08=>'',
  p_required_patch => null + wwv_flow_api.g_id_offset);
end;
null;
 
end;
/

--application/shared_components/security/authentication/none
prompt  ......scheme 26169420703494419
 
begin
 
declare
  s1 varchar2(32767) := null;
  s2 varchar2(32767) := null;
  s3 varchar2(32767) := null;
  s4 varchar2(32767) := null;
  s5 varchar2(32767) := null;
begin
s1:=s1||'-DATABASE-';

s2 := null;
s3 := null;
s4 := null;
s5 := null;
wwv_flow_api.create_auth_setup (
  p_id=> 26169420703494419 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'None',
  p_description=>'Based on authentication scheme from gallery:No Authentication (using DAD)',
  p_page_sentry_function=> s1,
  p_sess_verify_function=> s2,
  p_pre_auth_process=> s3,
  p_auth_function=> s4,
  p_post_auth_process=> s5,
  p_invalid_session_page=>'',
  p_invalid_session_url=>'',
  p_cookie_name=>'',
  p_cookie_path=>'',
  p_cookie_domain=>'',
  p_use_secure_cookie_yn=>'',
  p_ldap_host=>'',
  p_ldap_port=>'',
  p_ldap_string=>'',
  p_attribute_01=>'',
  p_attribute_02=>'',
  p_attribute_03=>'',
  p_attribute_04=>'',
  p_attribute_05=>'',
  p_attribute_06=>'',
  p_attribute_07=>'',
  p_attribute_08=>'',
  p_required_patch => null + wwv_flow_api.g_id_offset);
end;
null;
 
end;
/

prompt  ...plugins
--
--application/deployment/definition
prompt  ...application deployment
--
 
begin
 
declare
    s varchar2(32767) := null;
    l_clob clob;
begin
s := null;
wwv_flow_api.create_install (
  p_id => 31606923127677793 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_include_in_export_yn => 'Y',
  p_welcome_message => 'This application installer will guide you through the process of creating your database objects and seed data used in the Charts Chapter of Expert Oracle APEX.'||chr(10)||
'Any questions; please contact Dimitri Gielis at dimitri@apex-evangelists.com',
  p_configuration_message => 'You can configure the following attributes of your application.',
  p_build_options_message => 'You can choose to include the following build options.',
  p_validation_message => 'The following validations will be performed to ensure your system is compatible with this application.',
  p_install_message=> 'Please confirm that you would like to install this application''s supporting objects.',
  p_install_success_message => 'Your application''s supporting objects have been installed.',
  p_install_failure_message => 'Installation of database objects and seed data has failed.',
  p_upgrade_message => 'The application installer has detected that this application''s supporting objects were previously installed.  This wizard will guide you through the process of upgrading these supporting objects.',
  p_upgrade_confirm_message => 'Please confirm that you would like to install this application''s supporting objects.',
  p_upgrade_success_message => 'Your application''s supporting objects have been installed.',
  p_upgrade_failure_message => 'Installation of database objects and seed data has failed.',
  p_deinstall_success_message => 'Deinstallation complete.',
  p_deinstall_message=> '');
end;
 
 
end;
/

--application/deployment/install
prompt  ...application install scripts
--
 
begin
 
declare
    s varchar2(32767) := null;
    l_clob clob;
    l_length number := 1;
begin
s:=s||'--------------------------------------------------------'||chr(10)||
'--  File created by Dimitri Gielis'||chr(10)||
'--  dimitri@apex-evangelists.com'||chr(10)||
'--------------------------------------------------------'||chr(10)||
'--------------------------------------------------------'||chr(10)||
'--  DDL for Sequence EMP_SEQ'||chr(10)||
'--------------------------------------------------------'||chr(10)||
''||chr(10)||
'   CREATE SEQUENCE  "EMP_SEQ"  MINVALUE 1 MAXVALUE 99999999999999999999999';

s:=s||'99999 INCREMENT BY 1 START WITH 8000 CACHE 20 NOORDER  NOCYCLE ;'||chr(10)||
'--------------------------------------------------------'||chr(10)||
'--  DDL for Table DEMO_PRODUCT_INFO'||chr(10)||
'--------------------------------------------------------'||chr(10)||
''||chr(10)||
'  CREATE TABLE "DEMO_PRODUCT_INFO" '||chr(10)||
'   (	"PRODUCT_ID" NUMBER, '||chr(10)||
'	"PRODUCT_NAME" VARCHAR2(50), '||chr(10)||
'	"PRODUCT_DESCRIPTION" VARCHAR2(2000), '||chr(10)||
'	"CATEGORY" VARCHAR2(30), '||chr(10)||
'	"PRODUCT_AVAIL" VARCHA';

s:=s||'R2(1), '||chr(10)||
'	"LIST_PRICE" NUMBER(8,2), '||chr(10)||
'	"PRODUCT_IMAGE" BLOB, '||chr(10)||
'	"MIMETYPE" VARCHAR2(255), '||chr(10)||
'	"FILENAME" VARCHAR2(400), '||chr(10)||
'	"IMAGE_LAST_UPDATE" DATE'||chr(10)||
'   ) ;'||chr(10)||
'--------------------------------------------------------'||chr(10)||
'--  DDL for Table DEPT'||chr(10)||
'--------------------------------------------------------'||chr(10)||
''||chr(10)||
'  CREATE TABLE "DEPT" '||chr(10)||
'   (	"DEPTNO" NUMBER(2,0), '||chr(10)||
'	"DNAME" VARCHAR2(14), '||chr(10)||
'	"LOC" VARCHAR2(13)'||chr(10)||
'   ) ;'||chr(10)||
'-----------';

s:=s||'---------------------------------------------'||chr(10)||
'--  DDL for Table EMP'||chr(10)||
'--------------------------------------------------------'||chr(10)||
''||chr(10)||
'  CREATE TABLE "EMP" '||chr(10)||
'   (	"EMPNO" NUMBER(4,0), '||chr(10)||
'	"ENAME" VARCHAR2(10), '||chr(10)||
'	"JOB" VARCHAR2(9), '||chr(10)||
'	"MGR" NUMBER(4,0), '||chr(10)||
'	"HIREDATE" DATE, '||chr(10)||
'	"SAL" NUMBER(7,2), '||chr(10)||
'	"COMM" NUMBER(7,2), '||chr(10)||
'	"DEPTNO" NUMBER(2,0)'||chr(10)||
'   ) ;'||chr(10)||
'--------------------------------------------------------'||chr(10)||
'--  DDL for';

s:=s||' Table SALESPP'||chr(10)||
'--------------------------------------------------------'||chr(10)||
''||chr(10)||
'  CREATE TABLE "SALESPP" '||chr(10)||
'   (	"ID" NUMBER, '||chr(10)||
'	"C1" VARCHAR2(30), '||chr(10)||
'	"C2" NUMBER, '||chr(10)||
'	"C3" VARCHAR2(30), '||chr(10)||
'	"C4" NUMBER'||chr(10)||
'   ) ;'||chr(10)||
'REM INSERTING into DEMO_PRODUCT_INFO'||chr(10)||
'Insert into DEMO_PRODUCT_INFO (PRODUCT_ID,PRODUCT_NAME,PRODUCT_DESCRIPTION,CATEGORY,PRODUCT_AVAIL,LIST_PRICE,MIMETYPE,FILENAME,IMAGE_LAST_UPDATE) values (1,''Business Sh';

s:=s||'irt'',''Wrinkle-free cotton business shirt'',''Mens'',''Y'',50,''image/jpeg'',''shirt.jpg'',to_date(''22-JAN-11'',''DD-MON-RR''));'||chr(10)||
'Insert into DEMO_PRODUCT_INFO (PRODUCT_ID,PRODUCT_NAME,PRODUCT_DESCRIPTION,CATEGORY,PRODUCT_AVAIL,LIST_PRICE,MIMETYPE,FILENAME,IMAGE_LAST_UPDATE) values (2,''Trousers'',''Black trousers suitable for every business man'',''Mens'',''Y'',80,''image/jpeg'',''pants.jpg'',to_date(''22-JAN-11'',''DD-MON-R';

s:=s||'R''));'||chr(10)||
'Insert into DEMO_PRODUCT_INFO (PRODUCT_ID,PRODUCT_NAME,PRODUCT_DESCRIPTION,CATEGORY,PRODUCT_AVAIL,LIST_PRICE,MIMETYPE,FILENAME,IMAGE_LAST_UPDATE) values (3,''Jacket'',''Fully lined jacket which is both professional and extremely comfortable to wear'',''Mens'',''Y'',150,''image/jpeg'',''jacket.jpg'',to_date(''22-JAN-11'',''DD-MON-RR''));'||chr(10)||
'Insert into DEMO_PRODUCT_INFO (PRODUCT_ID,PRODUCT_NAME,PRODUCT_DESCRIPT';

s:=s||'ION,CATEGORY,PRODUCT_AVAIL,LIST_PRICE,MIMETYPE,FILENAME,IMAGE_LAST_UPDATE) values (4,''Blouse'',''Silk blouse ideal for all business women'',''Womens'',''Y'',60,''image/jpeg'',''blouse.jpg'',to_date(''22-JAN-11'',''DD-MON-RR''));'||chr(10)||
'Insert into DEMO_PRODUCT_INFO (PRODUCT_ID,PRODUCT_NAME,PRODUCT_DESCRIPTION,CATEGORY,PRODUCT_AVAIL,LIST_PRICE,MIMETYPE,FILENAME,IMAGE_LAST_UPDATE) values (5,''Skirt'',''Wrinkle free skirt'',''';

s:=s||'Womens'',''Y'',80,''image/jpeg'',''skirt.jpg'',to_date(''22-JAN-11'',''DD-MON-RR''));'||chr(10)||
'Insert into DEMO_PRODUCT_INFO (PRODUCT_ID,PRODUCT_NAME,PRODUCT_DESCRIPTION,CATEGORY,PRODUCT_AVAIL,LIST_PRICE,MIMETYPE,FILENAME,IMAGE_LAST_UPDATE) values (6,''Ladies Shoes'',''Low heel and cushioned interior for comfort and style in simple yet elegant shoes'',''Womens'',''Y'',120,''image/jpeg'',''heels.jpg'',to_date(''22-JAN-11'',''DD-MON-';

s:=s||'RR''));'||chr(10)||
'Insert into DEMO_PRODUCT_INFO (PRODUCT_ID,PRODUCT_NAME,PRODUCT_DESCRIPTION,CATEGORY,PRODUCT_AVAIL,LIST_PRICE,MIMETYPE,FILENAME,IMAGE_LAST_UPDATE) values (7,''Belt'',''Leather belt'',''Accessories'',''Y'',30,''image/jpeg'',''belt.jpg'',to_date(''22-JAN-11'',''DD-MON-RR''));'||chr(10)||
'Insert into DEMO_PRODUCT_INFO (PRODUCT_ID,PRODUCT_NAME,PRODUCT_DESCRIPTION,CATEGORY,PRODUCT_AVAIL,LIST_PRICE,MIMETYPE,FILENAME,IMAGE_LA';

s:=s||'ST_UPDATE) values (8,''Bag'',''Unisex bag suitable for carrying laptops with room for many additional items'',''Accessories'',''Y'',125,''image/jpeg'',''bag.jpg'',to_date(''22-JAN-11'',''DD-MON-RR''));'||chr(10)||
'Insert into DEMO_PRODUCT_INFO (PRODUCT_ID,PRODUCT_NAME,PRODUCT_DESCRIPTION,CATEGORY,PRODUCT_AVAIL,LIST_PRICE,MIMETYPE,FILENAME,IMAGE_LAST_UPDATE) values (9,''Mens Shoes'',''Leather upper and lower lace up shoes'',''Mens';

s:=s||''',''Y'',110,''image/jpeg'',''shoes.jpg'',to_date(''22-JAN-11'',''DD-MON-RR''));'||chr(10)||
'Insert into DEMO_PRODUCT_INFO (PRODUCT_ID,PRODUCT_NAME,PRODUCT_DESCRIPTION,CATEGORY,PRODUCT_AVAIL,LIST_PRICE,MIMETYPE,FILENAME,IMAGE_LAST_UPDATE) values (10,''Wallet'',''Travel wallet suitable for men and women. Several compartments for credit cards, passports and cash'',''Accessories'',''Y'',50,''image/jpeg'',''wallet.jpg'',to_date(''22-JAN';

s:=s||'-11'',''DD-MON-RR''));'||chr(10)||
'REM INSERTING into DEPT'||chr(10)||
'Insert into DEPT (DEPTNO,DNAME,LOC) values (10,''ACCOUNTING'',''NEW YORK'');'||chr(10)||
'Insert into DEPT (DEPTNO,DNAME,LOC) values (20,''RESEARCH'',''DALLAS'');'||chr(10)||
'Insert into DEPT (DEPTNO,DNAME,LOC) values (30,''SALES'',''CHICAGO'');'||chr(10)||
'Insert into DEPT (DEPTNO,DNAME,LOC) values (40,''OPERATIONS'',''BOSTON'');'||chr(10)||
'REM INSERTING into EMP'||chr(10)||
'Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COM';

s:=s||'M,DEPTNO) values (7369,''SMITH'',''CLERK'',7902,to_date(''17-DEC-80'',''DD-MON-RR''),800,null,20);'||chr(10)||
'Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7499,''ALLEN'',''SALESMAN'',7698,to_date(''20-FEB-81'',''DD-MON-RR''),1600,300,30);'||chr(10)||
'Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7521,''WARD'',''SALESMAN'',7698,to_date(''22-FEB-81'',''DD-MON-RR''),1250,500,30);'||chr(10)||
'Insert into EMP ';

s:=s||'(EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7566,''JONES'',''MANAGER'',7839,to_date(''02-APR-81'',''DD-MON-RR''),2975,null,20);'||chr(10)||
'Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7654,''MARTIN'',''SALESMAN'',7698,to_date(''28-SEP-81'',''DD-MON-RR''),1250,1400,30);'||chr(10)||
'Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7698,''BLAKE'',''MANAGER'',7839,to_date(''01-MAY-81'',''';

s:=s||'DD-MON-RR''),2850,null,30);'||chr(10)||
'Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7782,''CLARK'',''MANAGER'',7839,to_date(''09-JUN-81'',''DD-MON-RR''),2450,null,10);'||chr(10)||
'Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7788,''SCOTT'',''ANALYST'',7566,to_date(''09-DEC-82'',''DD-MON-RR''),3000,null,20);'||chr(10)||
'Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7839,''KI';

s:=s||'NG'',''PRESIDENT'',null,to_date(''17-NOV-81'',''DD-MON-RR''),5000,null,10);'||chr(10)||
'Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7844,''TURNER'',''SALESMAN'',7698,to_date(''08-SEP-81'',''DD-MON-RR''),1500,0,30);'||chr(10)||
'Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7876,''ADAMS'',''CLERK'',7788,to_date(''12-JAN-83'',''DD-MON-RR''),1100,null,20);'||chr(10)||
'Insert into EMP (EMPNO,ENAME,JOB,MGR,HIR';

s:=s||'EDATE,SAL,COMM,DEPTNO) values (7900,''JAMES'',''CLERK'',7698,to_date(''03-DEC-81'',''DD-MON-RR''),950,null,30);'||chr(10)||
'Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7902,''FORD'',''ANALYST'',7566,to_date(''03-DEC-81'',''DD-MON-RR''),3000,null,20);'||chr(10)||
'Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7934,''MILLER'',''CLERK'',7782,to_date(''23-JAN-82'',''DD-MON-RR''),1300,null,10);'||chr(10)||
'REM ';

s:=s||'INSERTING into SALESPP'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (383,''AL'',52280.44148,''PR_A'',10726.78739);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (384,''AL'',52280.44148,''PR_B'',11633.02452);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (385,''AL'',52280.44148,''PR_C'',12795.07035);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (386,''AL'',52280.44148,''KATE_SALES'',14808.99169);'||chr(10)||
'Insert into SALESPP (ID';

s:=s||',C1,C2,C3,C4) values (387,''AL'',52280.44148,''JACKSON_SALES'',8905.75263);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (388,''AL'',52280.44148,''ADAM_SALES'',18182.33514);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (389,''AL'',52280.44148,''BRENT_SALES'',13915.7452);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (390,''AR'',30859.74124,''PR_A'',13561.80625);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (391,''AR'',3';

s:=s||'0859.74124,''PR_B'',10088.097);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (392,''AR'',30859.74124,''PR_C'',18046.78935);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (393,''AR'',30859.74124,''KATE_SALES'',9102.227787);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (394,''AR'',30859.74124,''JACKSON_SALES'',15205.80481);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (395,''AR'',30859.74124,''ADAM_SALES'',9878.395765);'||chr(10)||
'I';

s:=s||'nsert into SALESPP (ID,C1,C2,C3,C4) values (396,''AR'',30859.74124,''BRENT_SALES'',7429.574267);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (397,''AZ'',49803.35104,''PR_A'',12085.31377);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (398,''AZ'',49803.35104,''PR_B'',7948.37688);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (399,''AZ'',49803.35104,''PR_C'',9610.201624);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (40';

s:=s||'0,''AZ'',49803.35104,''KATE_SALES'',10547.70175);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (401,''AZ'',49803.35104,''JACKSON_SALES'',14057.76409);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (402,''AZ'',49803.35104,''ADAM_SALES'',16969.20098);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (403,''AZ'',49803.35104,''BRENT_SALES'',14185.88783);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (404,''CA'',34783.45007,''PR_A';

s:=s||''',14112.87255);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (405,''CA'',34783.45007,''PR_B'',9792.41147);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (406,''CA'',34783.45007,''PR_C'',11053.93946);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (407,''CA'',34783.45007,''KATE_SALES'',9758.932891);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (408,''CA'',34783.45007,''JACKSON_SALES'',16776.87569);'||chr(10)||
'Insert into SALESPP (I';

s:=s||'D,C1,C2,C3,C4) values (409,''CA'',34783.45007,''ADAM_SALES'',13610.12364);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (410,''CA'',34783.45007,''BRENT_SALES'',7282.439976);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (411,''CO'',48051.54588,''PR_A'',7643.962781);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (412,''CO'',48051.54588,''PR_B'',10128.61512);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (413,''CO'',48051.5';

s:=s||'4588,''PR_C'',16516.29848);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (414,''CO'',48051.54588,''KATE_SALES'',8940.101194);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (415,''CO'',48051.54588,''JACKSON_SALES'',9172.960193);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (416,''CO'',48051.54588,''ADAM_SALES'',8047.740246);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (417,''CO'',48051.54588,''BRENT_SALES'',16105.43443)';

s:=s||';'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (419,''CT'',52504.6637,''PR_A'',9272.198115);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (420,''CT'',52504.6637,''PR_B'',7669.493097);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (421,''CT'',52504.6637,''PR_C'',8723.387428);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (422,''CT'',52504.6637,''KATE_SALES'',12422.25017);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (423';

s:=s||',''CT'',52504.6637,''JACKSON_SALES'',7214.503399);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (424,''CT'',52504.6637,''ADAM_SALES'',7703.893148);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (425,''CT'',52504.6637,''BRENT_SALES'',7201.102736);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (427,''DC'',48180.61387,''PR_A'',17358.7358);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (428,''DC'',48180.61387,''PR_B'',13415.218';

s:=s||'04);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (429,''DC'',48180.61387,''PR_C'',16518.78743);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (430,''DC'',48180.61387,''KATE_SALES'',6997.222771);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (431,''DC'',48180.61387,''JACKSON_SALES'',12797.89788);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (432,''DC'',48180.61387,''ADAM_SALES'',16340.67844);'||chr(10)||
'Insert into SALESPP (ID,C1';

s:=s||',C2,C3,C4) values (433,''DC'',48180.61387,''BRENT_SALES'',6551.823848);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (434,''DE'',32354.47657,''PR_A'',16705.18126);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (435,''DE'',32354.47657,''PR_B'',14931.64489);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (436,''DE'',32354.47657,''PR_C'',6314.654221);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (437,''DE'',32354.47657,''KATE';

s:=s||'_SALES'',14088.19851);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (438,''DE'',32354.47657,''JACKSON_SALES'',10422.62738);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (439,''DE'',32354.47657,''ADAM_SALES'',15405.13489);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (440,''DE'',32354.47657,''BRENT_SALES'',8549.275306);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (441,''FL'',29959.26988,''PR_A'',7873.384037);'||chr(10)||
'Insert i';

s:=s||'nto SALESPP (ID,C1,C2,C3,C4) values (442,''FL'',29959.26988,''PR_B'',13743.16299);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (443,''FL'',29959.26988,''PR_C'',15334.3575);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (444,''FL'',29959.26988,''KATE_SALES'',7571.307991);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (445,''FL'',29959.26988,''JACKSON_SALES'',14214.87081);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (4';

s:=s||'46,''FL'',29959.26988,''ADAM_SALES'',17322.57102);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (447,''FL'',29959.26988,''BRENT_SALES'',16309.534);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (448,''GA'',30289.28369,''PR_A'',10925.43631);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (449,''GA'',30289.28369,''PR_B'',10067.63379);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (450,''GA'',30289.28369,''PR_C'',15728.86113);'||chr(10)||
'';

s:=s||'Insert into SALESPP (ID,C1,C2,C3,C4) values (451,''GA'',30289.28369,''KATE_SALES'',8229.703384);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (452,''GA'',30289.28369,''JACKSON_SALES'',8951.323193);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (453,''GA'',30289.28369,''ADAM_SALES'',13213.05452);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (454,''GA'',30289.28369,''BRENT_SALES'',12484.99353);'||chr(10)||
'Insert into SALESPP (ID,';

s:=s||'C1,C2,C3,C4) values (455,''IA'',38050.57874,''PR_A'',16772.64151);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (456,''IA'',38050.57874,''PR_B'',9669.849857);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (457,''IA'',38050.57874,''PR_C'',16110.61842);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (458,''IA'',38050.57874,''KATE_SALES'',6487.885573);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (459,''IA'',38050.57874,''JAC';

s:=s||'KSON_SALES'',6752.480882);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (460,''IA'',38050.57874,''ADAM_SALES'',17777.09807);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (461,''IA'',38050.57874,''BRENT_SALES'',9518.634618);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (463,''ID'',21767.1158,''PR_A'',17908.30102);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (464,''ID'',21767.1158,''PR_B'',10318.89965);'||chr(10)||
'Insert into SAL';

s:=s||'ESPP (ID,C1,C2,C3,C4) values (465,''ID'',21767.1158,''PR_C'',14918.69789);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (466,''ID'',21767.1158,''KATE_SALES'',16007.65121);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (467,''ID'',21767.1158,''JACKSON_SALES'',9847.028789);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (468,''ID'',21767.1158,''ADAM_SALES'',14996.71741);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (469,''';

s:=s||'ID'',21767.1158,''BRENT_SALES'',15555.55582);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (471,''IL'',41597.14134,''PR_A'',10123.5466);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (472,''IL'',41597.14134,''PR_B'',15945.83236);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (473,''IL'',41597.14134,''PR_C'',8303.818737);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (474,''IL'',41597.14134,''KATE_SALES'',7499.99025);'||chr(10)||
'Inser';

s:=s||'t into SALESPP (ID,C1,C2,C3,C4) values (475,''IL'',41597.14134,''JACKSON_SALES'',7801.804176);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (476,''IL'',41597.14134,''ADAM_SALES'',10653.70019);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (477,''IL'',41597.14134,''BRENT_SALES'',7910.171472);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (479,''IN'',25625.55366,''PR_A'',14979.1335);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4)';

s:=s||' values (480,''IN'',25625.55366,''PR_B'',14686.53654);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (481,''IN'',25625.55366,''PR_C'',10162.43583);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (482,''IN'',25625.55366,''KATE_SALES'',11033.21165);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (483,''IN'',25625.55366,''JACKSON_SALES'',7667.020312);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (484,''IN'',25625.55366,''ADAM_S';

s:=s||'ALES'',15787.80147);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (485,''IN'',25625.55366,''BRENT_SALES'',12016.17048);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (487,''KS'',31986.01385,''PR_A'',13605.69853);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (488,''KS'',31986.01385,''PR_B'',10570.26523);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (489,''KS'',31986.01385,''PR_C'',11068.3855);'||chr(10)||
'Insert into SALESPP (ID,C1';

s:=s||',C2,C3,C4) values (490,''KS'',31986.01385,''KATE_SALES'',6364.302602);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (491,''KS'',31986.01385,''JACKSON_SALES'',8539.487674);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (492,''KS'',31986.01385,''ADAM_SALES'',17158.47151);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (493,''KS'',31986.01385,''BRENT_SALES'',12229.56153);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (495,''';

s:=s||'KY'',47136.55524,''PR_A'',11489.64184);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (496,''KY'',47136.55524,''PR_B'',17703.60849);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (497,''KY'',47136.55524,''PR_C'',14454.93125);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (498,''KY'',47136.55524,''KATE_SALES'',6912.619562);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (499,''KY'',47136.55524,''JACKSON_SALES'',13111.21984);'||chr(10)||
'';

s:=s||'Insert into SALESPP (ID,C1,C2,C3,C4) values (500,''KY'',47136.55524,''ADAM_SALES'',11574.40436);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (501,''KY'',47136.55524,''BRENT_SALES'',7569.970262);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (503,''LA'',24144.12061,''PR_A'',8128.037571);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (504,''LA'',24144.12061,''PR_B'',8004.104539);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) va';

s:=s||'lues (505,''LA'',24144.12061,''PR_C'',12803.1915);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (506,''LA'',24144.12061,''KATE_SALES'',15016.67995);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (507,''LA'',24144.12061,''JACKSON_SALES'',14341.23899);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (508,''LA'',24144.12061,''ADAM_SALES'',11144.52453);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (509,''LA'',24144.12061,''BREN';

s:=s||'T_SALES'',11759.74188);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (511,''MA'',21259.76201,''PR_A'',17177.21669);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (512,''MA'',21259.76201,''PR_B'',13101.22467);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (513,''MA'',21259.76201,''PR_C'',17954.48927);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (514,''MA'',21259.76201,''KATE_SALES'',10022.50241);'||chr(10)||
'Insert into SALESPP (ID';

s:=s||',C1,C2,C3,C4) values (515,''MA'',21259.76201,''JACKSON_SALES'',17024.80821);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (516,''MA'',21259.76201,''ADAM_SALES'',18198.72634);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (517,''MA'',21259.76201,''BRENT_SALES'',15920.09631);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (519,''MD'',45240.29305,''PR_A'',15274.38433);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (520,''MD''';

s:=s||',45240.29305,''PR_B'',7027.355461);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (521,''MD'',45240.29305,''PR_C'',12295.25971);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (522,''MD'',45240.29305,''KATE_SALES'',15722.58321);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (523,''MD'',45240.29305,''JACKSON_SALES'',15318.21072);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (524,''MD'',45240.29305,''ADAM_SALES'',11227.91698';

s:=s||');'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (525,''MD'',45240.29305,''BRENT_SALES'',11362.65098);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (527,''ME'',41566.08848,''PR_A'',9749.335081);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (528,''ME'',41566.08848,''PR_B'',9955.370995);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (529,''ME'',41566.08848,''PR_C'',8729.161509);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) value';

s:=s||'s (530,''ME'',41566.08848,''KATE_SALES'',13174.62529);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (531,''ME'',41566.08848,''JACKSON_SALES'',15311.94344);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (532,''ME'',41566.08848,''ADAM_SALES'',10643.18689);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (533,''ME'',41566.08848,''BRENT_SALES'',7324.587828);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (535,''MI'',26925.07519,';

s:=s||'''PR_A'',13503.44833);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (536,''MI'',26925.07519,''PR_B'',12999.8205);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (537,''MI'',26925.07519,''PR_C'',14194.42885);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (538,''MI'',26925.07519,''KATE_SALES'',15903.44645);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (539,''MI'',26925.07519,''JACKSON_SALES'',12436.88519);'||chr(10)||
'Insert into SALES';

s:=s||'PP (ID,C1,C2,C3,C4) values (540,''MI'',26925.07519,''ADAM_SALES'',12218.5299);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (541,''MI'',26925.07519,''BRENT_SALES'',7208.339325);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (543,''MN'',26420.97424,''PR_A'',10155.36124);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (544,''MN'',26420.97424,''PR_B'',15171.57232);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (545,''MN'',264';

s:=s||'20.97424,''PR_C'',8715.331587);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (546,''MN'',26420.97424,''KATE_SALES'',14541.70755);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (547,''MN'',26420.97424,''JACKSON_SALES'',16524.03446);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (548,''MN'',26420.97424,''ADAM_SALES'',13685.43176);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (549,''MN'',26420.97424,''BRENT_SALES'',12070.59';

s:=s||'416);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (551,''MO'',47434.02989,''PR_A'',10641.43778);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (552,''MO'',47434.02989,''PR_B'',15615.40999);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (553,''MO'',47434.02989,''PR_C'',17702.33735);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (554,''MO'',47434.02989,''KATE_SALES'',9193.627222);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) val';

s:=s||'ues (555,''MO'',47434.02989,''JACKSON_SALES'',14247.74199);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (556,''MO'',47434.02989,''ADAM_SALES'',10198.3327);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (557,''MO'',47434.02989,''BRENT_SALES'',8543.843279);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (559,''MS'',52312.01997,''PR_A'',12739.76917);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (560,''MS'',52312.01997,''PR_B';

s:=s||''',7551.573505);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (561,''MS'',52312.01997,''PR_C'',7238.595978);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (562,''MS'',52312.01997,''KATE_SALES'',6981.735612);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (563,''MS'',52312.01997,''JACKSON_SALES'',14204.27966);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (564,''MS'',52312.01997,''ADAM_SALES'',16253.99254);'||chr(10)||
'Insert into SAL';

s:=s||'ESPP (ID,C1,C2,C3,C4) values (565,''MS'',52312.01997,''BRENT_SALES'',18182.99018);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (567,''MT'',52246.63986,''PR_A'',7318.358945);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (568,''MT'',52246.63986,''PR_B'',18206.04838);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (569,''MT'',52246.63986,''PR_C'',12434.55631);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (570,''MT'',52246.';

s:=s||'63986,''KATE_SALES'',10383.09877);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (571,''MT'',52246.63986,''JACKSON_SALES'',12051.04612);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (572,''MT'',52246.63986,''ADAM_SALES'',10663.83887);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (573,''MT'',52246.63986,''BRENT_SALES'',12772.51021);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (575,''NC'',33828.8042,''PR_A'',15102.74511)';

s:=s||';'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (576,''NC'',33828.8042,''PR_B'',17454.43326);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (577,''NC'',33828.8042,''PR_C'',10966.33098);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (578,''NC'',33828.8042,''KATE_SALES'',8133.515536);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (579,''NC'',33828.8042,''JACKSON_SALES'',13034.79393);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) va';

s:=s||'lues (580,''NC'',33828.8042,''ADAM_SALES'',7669.917104);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (581,''NC'',33828.8042,''BRENT_SALES'',10164.34084);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (583,''ND'',27675.8938,''PR_A'',15956.9188);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (584,''ND'',27675.8938,''PR_B'',13872.33239);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (585,''ND'',27675.8938,''PR_C'',17052.85932';

s:=s||');'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (586,''ND'',27675.8938,''KATE_SALES'',15245.27986);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (587,''ND'',27675.8938,''JACKSON_SALES'',13905.22071);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (588,''ND'',27675.8938,''ADAM_SALES'',9751.99362);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (589,''ND'',27675.8938,''BRENT_SALES'',11496.86951);'||chr(10)||
'Insert into SALESPP (ID,C1';

s:=s||',C2,C3,C4) values (591,''NE'',48580.23088,''PR_A'',16396.09923);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (592,''NE'',48580.23088,''PR_B'',12076.42347);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (593,''NE'',48580.23088,''PR_C'',8658.136341);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (594,''NE'',48580.23088,''KATE_SALES'',14514.10612);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (595,''NE'',48580.23088,''JACKS';

s:=s||'ON_SALES'',8397.924068);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (596,''NE'',48580.23088,''ADAM_SALES'',11459.79736);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (597,''NE'',48580.23088,''BRENT_SALES'',7370.419829);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (599,''NH'',51662.06036,''PR_A'',6949.256726);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (600,''NH'',51662.06036,''PR_B'',7772.246702);'||chr(10)||
'Insert into SAL';

s:=s||'ESPP (ID,C1,C2,C3,C4) values (601,''NH'',51662.06036,''PR_C'',14285.28229);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (602,''NH'',51662.06036,''KATE_SALES'',12184.8105);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (603,''NH'',51662.06036,''JACKSON_SALES'',9800.807164);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (604,''NH'',51662.06036,''ADAM_SALES'',10979.5289);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (605';

s:=s||',''NH'',51662.06036,''BRENT_SALES'',13457.99827);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (607,''NJ'',45115.76878,''PR_A'',9089.35842);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (608,''NJ'',45115.76878,''PR_B'',9414.08914);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (609,''NJ'',45115.76878,''PR_C'',8989.28115);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (610,''NJ'',45115.76878,''KATE_SALES'',11910.40495);'||chr(10)||
'Ins';

s:=s||'ert into SALESPP (ID,C1,C2,C3,C4) values (611,''NJ'',45115.76878,''JACKSON_SALES'',11661.55066);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (612,''NJ'',45115.76878,''ADAM_SALES'',16615.47777);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (613,''NJ'',45115.76878,''BRENT_SALES'',18008.64182);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (615,''NM'',29853.60448,''PR_A'',10278.31855);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,';

s:=s||'C4) values (616,''NM'',29853.60448,''PR_B'',9151.068394);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (617,''NM'',29853.60448,''PR_C'',8426.212427);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (618,''NM'',29853.60448,''KATE_SALES'',16341.40393);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (619,''NM'',29853.60448,''JACKSON_SALES'',17338.23209);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (620,''NM'',29853.60448,''ADA';

s:=s||'M_SALES'',13196.3157);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (621,''NM'',29853.60448,''BRENT_SALES'',8716.462132);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (623,''NV'',29615.40156,''PR_A'',15351.10314);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (624,''NV'',29615.40156,''PR_B'',17035.65372);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (625,''NV'',29615.40156,''PR_C'',6866.837607);'||chr(10)||
'Insert into SALESPP (ID';

s:=s||',C1,C2,C3,C4) values (626,''NV'',29615.40156,''KATE_SALES'',6556.04826);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (627,''NV'',29615.40156,''JACKSON_SALES'',10593.41551);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (628,''NV'',29615.40156,''ADAM_SALES'',16328.49713);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (629,''NV'',29615.40156,''BRENT_SALES'',12842.53562);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (631';

s:=s||',''NY'',35974.54372,''PR_A'',12893.731);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (632,''NY'',35974.54372,''PR_B'',7924.412555);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (633,''NY'',35974.54372,''PR_C'',13298.51678);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (634,''NY'',35974.54372,''KATE_SALES'',10513.68821);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (635,''NY'',35974.54372,''JACKSON_SALES'',17602.75527);'||chr(10)||
'';

s:=s||'Insert into SALESPP (ID,C1,C2,C3,C4) values (636,''NY'',35974.54372,''ADAM_SALES'',12106.14843);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (637,''NY'',35974.54372,''BRENT_SALES'',6439.33108);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (639,''OH'',44022.51576,''PR_A'',16283.69052);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (640,''OH'',44022.51576,''PR_B'',8207.892337);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) val';

s:=s||'ues (641,''OH'',44022.51576,''PR_C'',8377.810423);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (642,''OH'',44022.51576,''KATE_SALES'',14852.15729);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (643,''OH'',44022.51576,''JACKSON_SALES'',12430.1838);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (644,''OH'',44022.51576,''ADAM_SALES'',12251.77533);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (645,''OH'',44022.51576,''BRENT';

s:=s||'_SALES'',8219.940786);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (647,''OK'',37527.2107,''PR_A'',9435.904899);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (648,''OK'',37527.2107,''PR_B'',7647.294638);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (649,''OK'',37527.2107,''PR_C'',6940.122693);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (650,''OK'',37527.2107,''KATE_SALES'',17545.20217);'||chr(10)||
'Insert into SALESPP (ID,C1,C';

s:=s||'2,C3,C4) values (651,''OK'',37527.2107,''JACKSON_SALES'',11467.11596);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (652,''OK'',37527.2107,''ADAM_SALES'',10374.94259);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (653,''OK'',37527.2107,''BRENT_SALES'',14961.6858);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (655,''OR'',34673.78494,''PR_A'',17062.36601);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (656,''OR'',34673.78';

s:=s||'494,''PR_B'',7651.116327);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (657,''OR'',34673.78494,''PR_C'',15255.36305);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (658,''OR'',34673.78494,''KATE_SALES'',14465.15782);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (659,''OR'',34673.78494,''JACKSON_SALES'',17939.31099);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (660,''OR'',34673.78494,''ADAM_SALES'',14312.12805);'||chr(10)||
'Insert';

wwv_flow_api.create_install_script(
  p_id => 31610415589784717 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_install_id=> 31606923127677793 + wwv_flow_api.g_id_offset,
  p_name => 'Install DDL',
  p_sequence=> 10,
  p_script_type=> 'INSTALL',
  p_script_clob=> s);
end;
 
 
end;
/

 
begin
 
declare
    s varchar2(32767) := null;
begin
s:=s||' into SALESPP (ID,C1,C2,C3,C4) values (661,''OR'',34673.78494,''BRENT_SALES'',8162.985324);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (663,''PA'',24161.07686,''PR_A'',12725.136);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (664,''PA'',24161.07686,''PR_B'',10809.89489);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (665,''PA'',24161.07686,''PR_C'',16254.73152);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (666,''PA''';

s:=s||',24161.07686,''KATE_SALES'',7203.198279);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (667,''PA'',24161.07686,''JACKSON_SALES'',12322.30897);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (668,''PA'',24161.07686,''ADAM_SALES'',6791.547625);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (669,''PA'',24161.07686,''BRENT_SALES'',9278.122741);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (671,''RI'',47742.94929,''PR_A'',1229';

s:=s||'7.71857);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (672,''RI'',47742.94929,''PR_B'',9615.565036);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (673,''RI'',47742.94929,''PR_C'',7445.523319);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (674,''RI'',47742.94929,''KATE_SALES'',10771.30034);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (675,''RI'',47742.94929,''JACKSON_SALES'',17267.1612);'||chr(10)||
'Insert into SALESPP (ID,C1,C';

s:=s||'2,C3,C4) values (676,''RI'',47742.94929,''ADAM_SALES'',8736.33406);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (677,''RI'',47742.94929,''BRENT_SALES'',16978.97493);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (679,''SC'',30868.4133,''PR_A'',12242.12002);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (680,''SC'',30868.4133,''PR_B'',18097.51539);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (681,''SC'',30868.4133,''PR_C';

s:=s||''',11955.47842);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (682,''SC'',30868.4133,''KATE_SALES'',15850.79044);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (683,''SC'',30868.4133,''JACKSON_SALES'',7437.36353);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (684,''SC'',30868.4133,''ADAM_SALES'',17056.23984);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (685,''SC'',30868.4133,''BRENT_SALES'',16758.60853);'||chr(10)||
'Insert into S';

s:=s||'ALESPP (ID,C1,C2,C3,C4) values (687,''SD'',27275.42159,''PR_A'',7317.911357);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (688,''SD'',27275.42159,''PR_B'',7036.572811);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (689,''SD'',27275.42159,''PR_C'',8561.905649);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (690,''SD'',27275.42159,''KATE_SALES'',6363.678022);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (691,''SD'',27275';

s:=s||'.42159,''JACKSON_SALES'',7844.575056);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (692,''SD'',27275.42159,''ADAM_SALES'',10031.35973);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (693,''SD'',27275.42159,''BRENT_SALES'',16600.69325);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (695,''TN'',49966.87885,''PR_A'',16691.17597);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (696,''TN'',49966.87885,''PR_B'',17999.78331);'||chr(10)||
'In';

s:=s||'sert into SALESPP (ID,C1,C2,C3,C4) values (697,''TN'',49966.87885,''PR_C'',7194.76913);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (698,''TN'',49966.87885,''KATE_SALES'',11567.04283);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (699,''TN'',49966.87885,''JACKSON_SALES'',11144.0175);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (700,''TN'',49966.87885,''ADAM_SALES'',9265.011729);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4';

s:=s||') values (701,''TN'',49966.87885,''BRENT_SALES'',10282.20832);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (703,''TX'',37704.05534,''PR_A'',9045.578985);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (704,''TX'',37704.05534,''PR_B'',12093.53934);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (705,''TX'',37704.05534,''PR_C'',16304.4813);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (706,''TX'',37704.05534,''KATE_SALES'',17';

s:=s||'340.0468);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (707,''TX'',37704.05534,''JACKSON_SALES'',8997.335969);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (708,''TX'',37704.05534,''ADAM_SALES'',13464.39995);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (709,''TX'',37704.05534,''BRENT_SALES'',18095.58113);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (711,''UT'',53254.32837,''PR_A'',8621.976229);'||chr(10)||
'Insert into SALESPP';

s:=s||' (ID,C1,C2,C3,C4) values (712,''UT'',53254.32837,''PR_B'',17020.6391);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (713,''UT'',53254.32837,''PR_C'',16383.70803);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (714,''UT'',53254.32837,''KATE_SALES'',15673.42687);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (715,''UT'',53254.32837,''JACKSON_SALES'',15767.267);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (716,''UT'',53254';

s:=s||'.32837,''ADAM_SALES'',10486.89536);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (717,''UT'',53254.32837,''BRENT_SALES'',11733.3283);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (719,''VA'',36484.82921,''PR_A'',8609.58648);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (720,''VA'',36484.82921,''PR_B'',10119.11126);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (721,''VA'',36484.82921,''PR_C'',8240.47309);'||chr(10)||
'Insert into SA';

s:=s||'LESPP (ID,C1,C2,C3,C4) values (722,''VA'',36484.82921,''KATE_SALES'',12475.79179);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (723,''VA'',36484.82921,''JACKSON_SALES'',8022.105575);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (724,''VA'',36484.82921,''ADAM_SALES'',12138.79188);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (725,''VA'',36484.82921,''BRENT_SALES'',17023.02477);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) v';

s:=s||'alues (727,''VT'',23667.4832,''PR_A'',11420.51604);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (728,''VT'',23667.4832,''PR_B'',9589.941519);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (729,''VT'',23667.4832,''PR_C'',6298.887173);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (730,''VT'',23667.4832,''KATE_SALES'',13094.61732);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (731,''VT'',23667.4832,''JACKSON_SALES'',11860.3';

s:=s||'2542);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (732,''VT'',23667.4832,''ADAM_SALES'',16886.20731);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (733,''VT'',23667.4832,''BRENT_SALES'',17618.66587);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (735,''WA'',23887.44903,''PR_A'',8054.500419);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (736,''WA'',23887.44903,''PR_B'',10674.98781);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C';

s:=s||'4) values (737,''WA'',23887.44903,''PR_C'',17218.06173);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (738,''WA'',23887.44903,''KATE_SALES'',8752.298116);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (739,''WA'',23887.44903,''JACKSON_SALES'',17506.57826);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (740,''WA'',23887.44903,''ADAM_SALES'',7904.474321);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (741,''WA'',23887.44903';

s:=s||',''BRENT_SALES'',14334.52219);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (743,''WI'',34949.3979,''PR_A'',17720.58976);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (744,''WI'',34949.3979,''PR_B'',13857.26322);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (745,''WI'',34949.3979,''PR_C'',17411.48467);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (746,''WI'',34949.3979,''KATE_SALES'',17888.88542);'||chr(10)||
'Insert into SALESPP (';

s:=s||'ID,C1,C2,C3,C4) values (747,''WI'',34949.3979,''JACKSON_SALES'',9938.775);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (748,''WI'',34949.3979,''ADAM_SALES'',17228.12639);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (749,''WI'',34949.3979,''BRENT_SALES'',9359.388673);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (751,''WV'',34195.87454,''PR_A'',10346.12467);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (752,''WV'',341';

s:=s||'95.87454,''PR_B'',14165.09733);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (753,''WV'',34195.87454,''PR_C'',9742.817313);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (754,''WV'',34195.87454,''KATE_SALES'',12604.92908);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (755,''WV'',34195.87454,''JACKSON_SALES'',13757.38561);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (756,''WV'',34195.87454,''ADAM_SALES'',9580.628962);'||chr(10)||
'I';

s:=s||'nsert into SALESPP (ID,C1,C2,C3,C4) values (757,''WV'',34195.87454,''BRENT_SALES'',12800.62111);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (759,''WY'',30444.41867,''PR_A'',6320.219978);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (760,''WY'',30444.41867,''PR_B'',6649.005058);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (761,''WY'',30444.41867,''PR_C'',7910.651711);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (7';

s:=s||'62,''WY'',30444.41867,''KATE_SALES'',15316.62639);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (763,''WY'',30444.41867,''JACKSON_SALES'',14414.27348);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (764,''WY'',30444.41867,''ADAM_SALES'',13189.13851);'||chr(10)||
'Insert into SALESPP (ID,C1,C2,C3,C4) values (765,''WY'',30444.41867,''BRENT_SALES'',10972.98881);'||chr(10)||
'--------------------------------------------------------'||chr(10)||
'--  DDL for I';

s:=s||'ndex DEMO_PRODUCT_INFO_PK'||chr(10)||
'--------------------------------------------------------'||chr(10)||
''||chr(10)||
'  CREATE UNIQUE INDEX "DEMO_PRODUCT_INFO_PK" ON "DEMO_PRODUCT_INFO" ("PRODUCT_ID") '||chr(10)||
'  ;'||chr(10)||
'--------------------------------------------------------'||chr(10)||
'--  DDL for Index EMP_PK'||chr(10)||
'--------------------------------------------------------'||chr(10)||
''||chr(10)||
'  CREATE UNIQUE INDEX "EMP_PK" ON "EMP" ("EMPNO") '||chr(10)||
'  ;'||chr(10)||
'---------------------------------';

s:=s||'-----------------------'||chr(10)||
'--  DDL for Index PRODUCT_PK'||chr(10)||
'--------------------------------------------------------'||chr(10)||
''||chr(10)||
'  CREATE UNIQUE INDEX "PRODUCT_PK" ON "APA$NF_PRODUCTS" ("PRODUCT_ID") '||chr(10)||
'  ;'||chr(10)||
'--------------------------------------------------------'||chr(10)||
'--  Constraints for Table DEMO_PRODUCT_INFO'||chr(10)||
'--------------------------------------------------------'||chr(10)||
''||chr(10)||
'  ALTER TABLE "DEMO_PRODUCT_INFO" ADD CONSTRAINT "DEMO';

s:=s||'_PRODUCT_INFO_PK" PRIMARY KEY ("PRODUCT_ID") ENABLE;'||chr(10)||
'  ALTER TABLE "DEMO_PRODUCT_INFO" MODIFY ("PRODUCT_ID" NOT NULL ENABLE);'||chr(10)||
'--------------------------------------------------------'||chr(10)||
'--  Constraints for Table EMP'||chr(10)||
'--------------------------------------------------------'||chr(10)||
''||chr(10)||
'  ALTER TABLE "EMP" ADD CONSTRAINT "EMP_PK" PRIMARY KEY ("EMPNO") ENABLE;'||chr(10)||
'  ALTER TABLE "EMP" MODIFY ("EMPNO" NOT NULL ENABLE);'||chr(10)||
'-';

s:=s||'-------------------------------------------------------'||chr(10)||
'--  Constraints for Table SALESPP'||chr(10)||
'--------------------------------------------------------'||chr(10)||
''||chr(10)||
'  ALTER TABLE "SALESPP" ADD CONSTRAINT "TEST_PIVOT_PK" PRIMARY KEY ("ID") ENABLE;'||chr(10)||
'--------------------------------------------------------'||chr(10)||
'--  DDL for Trigger INSERT_DEMO_PROD'||chr(10)||
'--------------------------------------------------------'||chr(10)||
''||chr(10)||
'  CREATE OR REPLAC';

s:=s||'E TRIGGER "INSERT_DEMO_PROD" '||chr(10)||
'BEFORE INSERT ON demo_product_info'||chr(10)||
'FOR EACH ROW'||chr(10)||
'DECLARE'||chr(10)||
'  prod_id number;'||chr(10)||
'BEGIN'||chr(10)||
'  SELECT demo_prod_seq.nextval'||chr(10)||
'    INTO prod_id'||chr(10)||
'    FROM dual;'||chr(10)||
'  :new.PRODUCT_ID := prod_id;'||chr(10)||
'END;'||chr(10)||
'/'||chr(10)||
'ALTER TRIGGER "INSERT_DEMO_PROD" ENABLE;'||chr(10)||
'--------------------------------------------------------'||chr(10)||
'--  DDL for Trigger BI_EMP'||chr(10)||
'--------------------------------------------------------'||chr(10)||
''||chr(10)||
'  CREAT';

s:=s||'E OR REPLACE TRIGGER "BI_EMP" '||chr(10)||
'BEFORE INSERT ON emp'||chr(10)||
'FOR EACH ROW'||chr(10)||
'BEGIN'||chr(10)||
'  SELECT emp_seq.NEXTVAL INTO  :NEW.empno FROM dual;'||chr(10)||
'END;'||chr(10)||
''||chr(10)||
'/'||chr(10)||
'ALTER TRIGGER "BI_EMP" ENABLE;'||chr(10)||
'--------------------------------------------------------'||chr(10)||
'--  DDL for Trigger bi_TEST_PIVOT'||chr(10)||
'--------------------------------------------------------'||chr(10)||
''||chr(10)||
'  CREATE OR REPLACE TRIGGER "bi_TEST_PIVOT" '||chr(10)||
'  before insert on "SALESPP"              '||chr(10)||
'';

s:=s||'  for each row '||chr(10)||
'begin  '||chr(10)||
'  if :new."ID" is null then'||chr(10)||
'    select "TEST_PIVOT_SEQ".nextval into :new."ID" from dual;'||chr(10)||
'  end if;'||chr(10)||
'end;'||chr(10)||
''||chr(10)||
'/'||chr(10)||
'ALTER TRIGGER "bi_TEST_PIVOT" ENABLE;'||chr(10)||
'--------------------------------------------------------'||chr(10)||
'--  DDL for Procedure GET_DASHBOARD_XML_PRC'||chr(10)||
'--------------------------------------------------------'||chr(10)||
'set define off;'||chr(10)||
''||chr(10)||
'  CREATE OR REPLACE PROCEDURE "GET_DASHBOARD_XML_PRC" (';

s:=s||''||chr(10)||
'    p_param1 varchar2 default null,'||chr(10)||
'    XMLCallDate IN NUMBER DEFAULT NULL)'||chr(10)||
'is'||chr(10)||
'  -- limit of 32K in single byte characterset, for UTF8 devide by 4'||chr(10)||
'  l_amt    number default 8191;'||chr(10)||
'  l_offset number default 1;'||chr(10)||
'  l_length number default 0;'||chr(10)||
'  l_chart clob;'||chr(10)||
'  l_chart_v varchar2(32767);'||chr(10)||
'  l_sub_chart1 CLOB;'||chr(10)||
'  l_sub_chart2 CLOB;'||chr(10)||
'  l_sub_chart3 clob;'||chr(10)||
'  l_chart_data clob;'||chr(10)||
'  l_xml XMLType;'||chr(10)||
'begin'||chr(10)||
'  dbms_lob';

s:=s||'.createtemporary( l_chart, FALSE, dbms_lob.session );'||chr(10)||
'  dbms_lob.open( l_chart, dbms_lob.lob_readwrite );'||chr(10)||
'    '||chr(10)||
'  l_chart_v := ''<anychart>'||chr(10)||
'	<settings>'||chr(10)||
'		<animation enabled="True"/>'||chr(10)||
'	</settings>'||chr(10)||
'	<dashboard>'||chr(10)||
'		<view type="Dashboard">'||chr(10)||
'			<title padding="2">'||chr(10)||
'				<text>USA Sales Map</text>'||chr(10)||
'			</title>'||chr(10)||
'			<background>'||chr(10)||
'				<inside_margin all="3" top="10"/>'||chr(10)||
'			</background>'||chr(10)||
'			<vbox width="100%" height="1';

s:=s||'00%">'||chr(10)||
'				<margin all="0"/>'||chr(10)||
'				<hbox width="100%" height="60%">'||chr(10)||
'					<margin all="0"/>'||chr(10)||
'					<view type="Chart" source="mapChart" width="100%" height="100%"/>'||chr(10)||
'				</hbox>'||chr(10)||
'				<hbox width="100%" height="40%">'||chr(10)||
'					<margin all="0"/>'||chr(10)||
'					<view name="productsView" type="Chart" source="productsChart" width="50%" height="100%"/>'||chr(10)||
'					<view name="personsView" type="Chart" source="personsChart" width="50';

s:=s||'%" height="100%"/>'||chr(10)||
'				</hbox>'||chr(10)||
'			</vbox>'||chr(10)||
'		</view>'||chr(10)||
'	</dashboard>'||chr(10)||
'	<charts>'||chr(10)||
'		<chart plot_type="Map" name="mapChart">'||chr(10)||
'			<chart_settings>'||chr(10)||
'				<controls>'||chr(10)||
'					<label inside_dataplot="True" position="Bottom" align="Near" text_align="Center">'||chr(10)||
'<text>Click on a state to see '||chr(10)||
'sales splitted by Products and '||chr(10)||
'Sales Representatives</text>'||chr(10)||
'					</label>'||chr(10)||
'				</controls>'||chr(10)||
'				<title enabled="False"/>'||chr(10)||
'				<char';

s:=s||'t_background>'||chr(10)||
'					<border type="Solid" color="#CCCCCC" thickness="1"/>'||chr(10)||
'					<corners type="Square"/>'||chr(10)||
'					<effects enabled="false"/>'||chr(10)||
'					<inside_margin all="10" top="5"/>'||chr(10)||
'				</chart_background>'||chr(10)||
'				<data_plot_background enabled="False"/>'||chr(10)||
'				<legend enabled="True" ignore_auto_item="True" inside_dataplot="True" rows_padding="0" align="Far">'||chr(10)||
'					<title enabled="False"/>'||chr(10)||
'					<format>{%Icon} - ${';

s:=s||'%RangeMin}{numDecimals:0,scale:(1000)|(k)} - {%RangeMax}{numDecimals:0,scale:(1000)|(k)}</format>'||chr(10)||
'					<items>'||chr(10)||
'						<item source="Thresholds"/>'||chr(10)||
'					</items>'||chr(10)||
'				</legend>'||chr(10)||
'			</chart_settings>'||chr(10)||
'			<data_plot_settings enable_3d_mode="False">'||chr(10)||
'				<map_series source="usa/country/states_48.amap">'||chr(10)||
'					<grid>'||chr(10)||
'						<parallels enabled="False">'||chr(10)||
'							<labels enabled="False"/>'||chr(10)||
'						</parallels>'||chr(10)||
'						<m';

s:=s||'eridians enabled="False">'||chr(10)||
'							<labels enabled="False"/>'||chr(10)||
'						</meridians>'||chr(10)||
'						<background enabled="False"/>'||chr(10)||
'					</grid>'||chr(10)||
'					<defined_map_region>'||chr(10)||
'						<tooltip_settings enabled="True">'||chr(10)||
'							<font bold="True"/>'||chr(10)||
'<format>'||chr(10)||
'{%REGION_NAME}'||chr(10)||
'${%Value}{numDecimals:1}'||chr(10)||
'</format>'||chr(10)||
'						</tooltip_settings>'||chr(10)||
'						<label_settings enabled="True">'||chr(10)||
'							<format>{%REGION_ID}</format>'||chr(10)||
'							<background>'||chr(10)||
'';

s:=s||'								<corners type="Rounded" all="2"/>'||chr(10)||
'							</background>'||chr(10)||
'						</label_settings>'||chr(10)||
'						<map_region_style>'||chr(10)||
'			              <fill type="Gradient" color="%Color" opacity="0.75">'||chr(10)||
'			                <gradient angle="45">'||chr(10)||
'			                  <key position="0" color="%Color" opacity="1"/>'||chr(10)||
'			                  <key position="1" color="Blend(DarkColor(%Color),%Color,0.4)" opacity="1"/>'||chr(10)||
'			         ';

s:=s||'       </gradient>'||chr(10)||
'			              </fill>'||chr(10)||
'			              <border color="White"/>'||chr(10)||
'			              <states>'||chr(10)||
'			                <pushed>'||chr(10)||
'			                  <fill type="Gradient" color="%Color" opacity="0.75">'||chr(10)||
'			                    <gradient angle="45">'||chr(10)||
'			                      <key position="0" color="%Color" opacity="1"/>'||chr(10)||
'			                      <key position="1" color="Blend(DarkColor(%Col';

s:=s||'or),%Color,0.4)" opacity="1"/>'||chr(10)||
'			                    </gradient>'||chr(10)||
'			                  </fill>'||chr(10)||
'			                </pushed>'||chr(10)||
'			              </states>'||chr(10)||
'			            </map_region_style>'||chr(10)||
'					</defined_map_region>'||chr(10)||
'				</map_series>'||chr(10)||
'			</data_plot_settings>'||chr(10)||
'			<palettes>'||chr(10)||
'				<palette name="salesPalette">'||chr(10)||
'					<item color="Red"/>'||chr(10)||
'					<item color="Yellow"/>'||chr(10)||
'					<item color="Green"/>'||chr(10)||
'				</palette>'||chr(10)||
'	';

s:=s||'		</palettes>'||chr(10)||
'			<thresholds>'||chr(10)||
'			  <threshold name="thrSales" type="Quantiles" range_count="5" palette="salesPalette" />'||chr(10)||
'			</thresholds>'||chr(10)||
'      <data>'||chr(10)||
'				<series name="Region Sales" threshold="thrSales">'||chr(10)||
'					<actions>'||chr(10)||
'						<action type="updateView" view="productsView" source_mode="internalData" source="productsChart">'||chr(10)||
'							<replace token="{$ProductASales}">{%PR_A}{enabled:False}</replace>'||chr(10)||
'			';

s:=s||'				<replace token="{$ProductBSales}">{%PR_B}{enabled:False}</replace>'||chr(10)||
'							<replace token="{$ProductCSales}">{%PR_C}{enabled:False}</replace>'||chr(10)||
'						</action>'||chr(10)||
'						<action type="updateView" view="personsView" source_mode="internalData" source="personsChart">'||chr(10)||
'							<replace token="{$kateSales}">{%KATE_SALES}{enabled:False}</replace>'||chr(10)||
'							<replace token="{$jacksonSales}">{%JACKSON_SALES}{enabl';

s:=s||'ed:False}</replace>'||chr(10)||
'							<replace token="{$adamSales}">{%ADAM_SALES}{enabled:False}</replace>'||chr(10)||
'							<replace token="{$brentSales}">{%BRENT_SALES}{enabled:False}</replace>'||chr(10)||
'						</action>'||chr(10)||
'					</actions>'';					          '||chr(10)||
'  dbms_lob.writeappend( l_chart, length(l_chart_v), l_chart_v);'||chr(10)||
''||chr(10)||
''||chr(10)||
'  select xmlagg( xmlelement("point", xmlattributes(p.c1 as "name", p.c2 as "y"),'||chr(10)||
'         (select xmlelement("a';

s:=s||'ttributes",  xmlagg( xmlelement("attribute", xmlattributes(t.c3 as "name"), t.c4)))   '||chr(10)||
'            from salespp t'||chr(10)||
'           where t.c1=p.c1))).getclobval()'||chr(10)||
'    into l_chart_data'||chr(10)||
'    from (select distinct c1,c2 from salespp) p;'||chr(10)||
'  '||chr(10)||
'  dbms_lob.append(l_chart, l_chart_data);'||chr(10)||
'  '||chr(10)||
'  l_chart_v := ''        '||chr(10)||
'				</series>'||chr(10)||
'			</data>'||chr(10)||
'		</chart>		'||chr(10)||
'		<chart plot_type="CategorizedHorizontal" name="productsChar';

s:=s||'t">'||chr(10)||
'			<chart_settings>'||chr(10)||
'				<title>'||chr(10)||
'					<text>By Products</text>'||chr(10)||
'				</title>'||chr(10)||
'				<axes>'||chr(10)||
'					<y_axis position="Opposite">'||chr(10)||
'						<title enabled="False"/>'||chr(10)||
'						<labels>'||chr(10)||
'							<format>${%Value}{scale:(1000)|(k),numDecimals:0}</format>'||chr(10)||
'						</labels>'||chr(10)||
'					</y_axis>'||chr(10)||
'					<x_axis>'||chr(10)||
'						<title enabled="False"/>'||chr(10)||
'					</x_axis>'||chr(10)||
'				</axes>'||chr(10)||
'				<chart_background>'||chr(10)||
'					<border type="Solid" color="#CCCC';

s:=s||'CC" thickness="1"/>'||chr(10)||
'					<corners type="Square"/>'||chr(10)||
'					<effects enabled="false"/>'||chr(10)||
'					<inside_margin all="10" top="5"/>'||chr(10)||
'				</chart_background>'||chr(10)||
'			</chart_settings>'||chr(10)||
'			<data_plot_settings>'||chr(10)||
'				<bar_series>'||chr(10)||
'					<tooltip_settings enabled="True">'||chr(10)||
'<format>'||chr(10)||
'{%Name}'||chr(10)||
'${%Value}{numDecimals:2}'||chr(10)||
'</format>'||chr(10)||
'					</tooltip_settings>'||chr(10)||
'					<label_settings enabled="True">'||chr(10)||
'						<format>${%Value}{numDecimals:1,sc';

s:=s||'ale:(1000)|(k)}</format>'||chr(10)||
'						<font bold="False"/>'||chr(10)||
'						<background enabled="True">'||chr(10)||
'							<fill enabled="True" color="White" opacity="0.3"/>'||chr(10)||
'							<inside_margin all="0"/>'||chr(10)||
'							<corners type="Rounded" all="2"/>'||chr(10)||
'						</background>'||chr(10)||
'					</label_settings>'||chr(10)||
'				</bar_series>'||chr(10)||
'			</data_plot_settings>'||chr(10)||
'			<data>'||chr(10)||
'				<series>'||chr(10)||
'					<point name="Product A" y="{$ProductASales}"/>'||chr(10)||
'					<point name="Prod';

s:=s||'uct B" y="{$ProductBSales}"/>'||chr(10)||
'					<point name="Product C" y="{$ProductCSales}"/>'||chr(10)||
'				</series>'||chr(10)||
'			</data>'||chr(10)||
'		</chart>'||chr(10)||
'		<chart plot_type="CategorizedVertical" name="personsChart">'||chr(10)||
'			<chart_settings>'||chr(10)||
'				<title>'||chr(10)||
'					<text>By Sales Representative</text>'||chr(10)||
'				</title>'||chr(10)||
'				<chart_background>'||chr(10)||
'					<border type="Solid" color="#CCCCCC" thickness="1"/>'||chr(10)||
'					<corners type="Square"/>'||chr(10)||
'					<effects enabled=';

s:=s||'"false"/>'||chr(10)||
'					<inside_margin all="10" top="5"/>'||chr(10)||
'				</chart_background>'||chr(10)||
'				<axes>'||chr(10)||
'					<y_axis>'||chr(10)||
'						<title enabled="False"/>'||chr(10)||
'						<labels>'||chr(10)||
'							<format>${%Value}{numDecimals:0,scale:(1000)|(k)}</format>'||chr(10)||
'						</labels>'||chr(10)||
'					</y_axis>'||chr(10)||
'					<x_axis>'||chr(10)||
'						<title enabled="False"/>'||chr(10)||
'					</x_axis>'||chr(10)||
'				</axes>'||chr(10)||
'			</chart_settings>'||chr(10)||
'			<data_plot_settings>'||chr(10)||
'				<bar_series group_padding="0.3">'||chr(10)||
'					';

s:=s||'<tooltip_settings enabled="True">'||chr(10)||
'<format>'||chr(10)||
'{%Name}'||chr(10)||
'${%Value}{numDecimals:2}'||chr(10)||
'</format>'||chr(10)||
'					</tooltip_settings>'||chr(10)||
'					<label_settings enabled="True">'||chr(10)||
'						<format>${%Value}{numDecimals:1,scale:(1000)|(k)}</format>'||chr(10)||
'						<font bold="False"/>'||chr(10)||
'						<background enabled="True">'||chr(10)||
'							<fill enabled="True" color="White" opacity="0.3"/>'||chr(10)||
'							<inside_margin all="0"/>'||chr(10)||
'							<corners type="Rounded" all="';

s:=s||'2"/>'||chr(10)||
'						</background>'||chr(10)||
'					</label_settings>'||chr(10)||
'				</bar_series>'||chr(10)||
'			</data_plot_settings>'||chr(10)||
'			<data>'||chr(10)||
'				<series palette="Default">'||chr(10)||
'					<point name="Kate" y="{$kateSales}"/>'||chr(10)||
'					<point name="Jackson" y="{$jacksonSales}"/>'||chr(10)||
'					<point name="Adam" y="{$adamSales}"/>'||chr(10)||
'					<point name="Brent" y="{$brentSales}"/>'||chr(10)||
'				</series>'||chr(10)||
'			</data>'||chr(10)||
'		</chart>'||chr(10)||
'	</charts>'||chr(10)||
'</anychart>'';'||chr(10)||
''||chr(10)||
'  dbms_lob.writeappend( l_';

s:=s||'chart, length(l_chart_v), l_chart_v);  '||chr(10)||
'  dbms_lob.close( l_chart );'||chr(10)||
'  --'||chr(10)||
'  owa_util.mime_header(''text/xml'', FALSE, ''utf-8'');'||chr(10)||
'  owa_util.http_header_close;'||chr(10)||
'  l_length := dbms_lob.getlength(l_chart);'||chr(10)||
'  if l_length > 0 then'||chr(10)||
'     while ( l_offset < l_length )'||chr(10)||
'     loop'||chr(10)||
'          htp.prn(dbms_lob.substr(l_chart, l_amt, l_offset) );'||chr(10)||
'          l_offset := l_offset + l_amt;'||chr(10)||
'     end loop;'||chr(10)||
'  end if;'||chr(10)||
'  --'||chr(10)||
'';

s:=s||'  if l_chart is not null then'||chr(10)||
'      dbms_lob.freetemporary(l_chart);'||chr(10)||
'  end if;'||chr(10)||
'end;'||chr(10)||
''||chr(10)||
'/'||chr(10)||
''||chr(10)||
'';

wwv_flow_api.append_to_install_script(
  p_id => 31610415589784717 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_script_clob => s);
end;
 
 
end;
/

--application/deployment/checks
prompt  ...application deployment checks
--
 
begin
 
null;
 
end;
/

--application/deployment/buildoptions
prompt  ...application deployment build options
--
 
begin
 
null;
 
end;
/

--application/end_environment
commit;
commit;
begin 
execute immediate 'begin dbms_session.set_nls( param => ''NLS_NUMERIC_CHARACTERS'', value => '''''''' || replace(wwv_flow_api.g_nls_numeric_chars,'''''''','''''''''''') || ''''''''); end;';
end;
/
set verify on
set feedback on
prompt  ...done
