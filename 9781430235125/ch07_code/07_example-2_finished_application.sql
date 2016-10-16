set define off
set verify off
set serveroutput on size 1000000
set feedback off
WHENEVER SQLERROR EXIT SQL.SQLCODE ROLLBACK
begin wwv_flow.g_import_in_progress := true; end; 
/
 
 
--application/set_environment
prompt  APPLICATION 108 - Adv APEX - Chap 12 - EX2 (Finished)
--
-- Application Export:
--   Application:     108
--   Name:            Adv APEX - Chap 12 - EX2 (Finished)
--   Date and Time:   20:02 Sunday February 27, 2011
--   Exported By:     GIFFY
--   Flashback:       0
--   Export Type:     Application Export
--   Version: 4.0.2.00.07
 
-- Import:
--   Using application builder
--   or
--   Using SQL*Plus as the Oracle user APEX_040000 or as the owner (parsing schema) of the application.
 
-- Application Statistics:
--   Pages:                    2
--     Items:                  5
--     Computations:           0
--     Validations:            0
--     Processes:              4
--     Regions:                3
--     Buttons:                0
--     Dynamic Actions:        4
--   Shared Components
--     Breadcrumbs:            1
--        Entries              1
--     Items:                  1
--     Computations:           0
--     Processes:              0
--     Parent Tabs:            0
--     Tab Sets:               1
--        Tabs:                1
--     NavBars:                1
--     Lists:                  0
--     Shortcuts:              0
--     Themes:                 1
--     Templates:
--        Page:               15
--        List:               15
--        Report:              9
--        Label:               5
--        Region:             22
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
  wwv_flow_api.set_security_group_id(p_security_group_id=>nvl(wwv_flow_application_install.get_workspace_id,1286417169510780));
 
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
   wwv_flow.g_flow_id := nvl(wwv_flow_application_install.get_application_id,108);
   wwv_flow_api.g_id_offset := nvl(wwv_flow_application_install.get_offset,0);
null;
 
end;
/

--application/delete_application
 
begin
 
   -- Remove Application
wwv_flow_api.remove_flow(nvl(wwv_flow_application_install.get_application_id,108));
 
end;
/

 
begin
 
wwv_flow_audit.remove_audit_trail(nvl(wwv_flow_application_install.get_application_id,108));
null;
 
end;
/

--application/create_application
 
begin
 
wwv_flow_api.create_flow(
  p_id    => nvl(wwv_flow_application_install.get_application_id,108),
  p_display_id=> nvl(wwv_flow_application_install.get_application_id,108),
  p_owner => nvl(wwv_flow_application_install.get_schema,'GIFFY'),
  p_name  => nvl(wwv_flow_application_install.get_application_name,'Adv APEX - Chap 12 - EX2 (Finished)'),
  p_alias => nvl(wwv_flow_application_install.get_application_alias,'F106108'),
  p_page_view_logging => 'YES',
  p_default_page_template=> 3448124029954251 + wwv_flow_api.g_id_offset,
  p_printer_friendly_template=> 3448320382954251 + wwv_flow_api.g_id_offset,
  p_default_region_template=> 3450629525954267 + wwv_flow_api.g_id_offset,
  p_error_template=> 3448124029954251 + wwv_flow_api.g_id_offset,
  p_page_protection_enabled_y_n=> 'Y',
  p_checksum_salt_last_reset => '20110227174246',
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
  p_logout_url=> 'wwv_flow_custom_auth_std.logout?p_this_flow=&APP_ID.&amp;p_next_flow_page_sess=&APP_ID.:1',
  p_application_tab_set=> 0,
  p_public_url_prefix => '',
  p_public_user=> '',
  p_dbauth_url_prefix => '',
  p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,''),
  p_cust_authentication_process=> '.'||to_char(3455319564954350 + wwv_flow_api.g_id_offset)||'.',
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
  p_theme_id => 1,
  p_default_label_template => 3454045087954297 + wwv_flow_api.g_id_offset,
  p_default_report_template => 3453320253954294 + wwv_flow_api.g_id_offset,
  p_default_list_template => 3452635586954282 + wwv_flow_api.g_id_offset,
  p_default_menu_template => 3454318553954298 + wwv_flow_api.g_id_offset,
  p_default_button_template => 3448825623954253 + wwv_flow_api.g_id_offset,
  p_default_chart_template => 3449744158954266 + wwv_flow_api.g_id_offset,
  p_default_form_template => 3449832173954266 + wwv_flow_api.g_id_offset,
  p_default_wizard_template => 3451238676954269 + wwv_flow_api.g_id_offset,
  p_default_tabform_template => 3450629525954267 + wwv_flow_api.g_id_offset,
  p_default_reportr_template   =>3450629525954267 + wwv_flow_api.g_id_offset,
  p_default_menur_template => 3449437649954265 + wwv_flow_api.g_id_offset,
  p_default_listr_template => 3450034113954266 + wwv_flow_api.g_id_offset,
  p_default_irr_template => 3450325915954267 + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'GIFFY',
  p_last_upd_yyyymmddhh24miss=> '20110227174246',
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
  p_id => 3455643840954352 + wwv_flow_api.g_id_offset,
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
  p_id=> 3457534608955406 + wwv_flow_api.g_id_offset,
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
 
--application/shared_components/navigation/tabs/standard/t_da_demo
wwv_flow_api.create_tab (
  p_id=> 3457043675954418 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_tab_sequence=> 10,
  p_tab_name=> 'T_DA_DEMO',
  p_tab_text => 'DA Demo',
  p_tab_step => 1,
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
 
--application/pages/page_00001
prompt  ...PAGE 1: Dynamic Action Demo
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 1
 ,p_tab_set => 'TS1'
 ,p_name => 'Dynamic Action Demo'
 ,p_step_title => 'Dynamic Action Demo'
 ,p_allow_duplicate_submissions => 'Y'
 ,p_step_sub_title => 'Old Way'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'AUTO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_autocomplete_on_off => 'ON'
 ,p_page_is_public_y_n => 'N'
 ,p_protection_level => 'N'
 ,p_cache_page_yn => 'N'
 ,p_cache_timeout_seconds => 21600
 ,p_cache_by_user_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_last_updated_by => 'GIFFY'
 ,p_last_upd_yyyymmddhh24miss => '20110225172825'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'select e.empno, '||chr(10)||
'       initcap(e.ename) ename, '||chr(10)||
'       initcap(e.job) job, '||chr(10)||
'       e.hiredate, '||chr(10)||
'       e.sal'||chr(10)||
'from emp e'||chr(10)||
'where e.deptno = :p1_deptno';

wwv_flow_api.create_report_region (
  p_id=> 1840201773352813 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_name=> 'Department Employees',
  p_region_name=>'DEPT_EMP_REPORT',
  p_template=> 3450629525954267+ wwv_flow_api.g_id_offset,
  p_display_sequence=> 20,
  p_display_column=> 1,
  p_display_point=> 'AFTER_SHOW_ITEMS',
  p_source=> s,
  p_source_type=> 'SQL_QUERY',
  p_display_error_message=> '#SQLERRM#',
  p_plug_caching=> 'NOT_CACHED',
  p_customized=> '0',
  p_translate_title=> 'Y',
  p_ajax_enabled=> 'Y',
  p_query_row_template=> 3453320253954294+ wwv_flow_api.g_id_offset,
  p_query_headings_type=> 'COLON_DELMITED_LIST',
  p_query_num_rows=> '15',
  p_query_options=> 'DERIVED_REPORT_COLUMNS',
  p_query_show_nulls_as=> ' - ',
  p_query_break_cols=> '0',
  p_query_no_data_found=> 'no data found',
  p_query_num_rows_type=> 'NEXT_PREVIOUS_LINKS',
  p_pagination_display_position=> 'BOTTOM_RIGHT',
  p_csv_output=> 'N',
  p_query_asc_image=> 'apex/builder/dup.gif',
  p_query_asc_image_attr=> 'width="16" height="16" alt="" ',
  p_query_desc_image=> 'apex/builder/ddown.gif',
  p_query_desc_image_attr=> 'width="16" height="16" alt="" ',
  p_plug_query_strip_html=> 'Y',
  p_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 1840523320352917 + wwv_flow_api.g_id_offset,
  p_region_id=> 1840201773352813 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 1,
  p_form_element_id=> null,
  p_column_alias=> 'EMPNO',
  p_column_display_sequence=> 1,
  p_column_heading=> 'Empno',
  p_column_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
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
  p_id=> 1840606909352917 + wwv_flow_api.g_id_offset,
  p_region_id=> 1840201773352813 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 2,
  p_form_element_id=> null,
  p_column_alias=> 'ENAME',
  p_column_display_sequence=> 2,
  p_column_heading=> 'Name',
  p_column_html_expression=>'<span data-empno="#EMPNO#" data-ename="#ENAME#">#ENAME#</span>',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>1,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_lov_show_nulls=> 'NO',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'Y',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 1840718487352917 + wwv_flow_api.g_id_offset,
  p_region_id=> 1840201773352813 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 3,
  p_form_element_id=> null,
  p_column_alias=> 'JOB',
  p_column_display_sequence=> 3,
  p_column_heading=> 'Job',
  p_column_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
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
  p_id=> 1840815262352918 + wwv_flow_api.g_id_offset,
  p_region_id=> 1840201773352813 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 4,
  p_form_element_id=> null,
  p_column_alias=> 'HIREDATE',
  p_column_display_sequence=> 4,
  p_column_heading=> 'Hiredate',
  p_column_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
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
  p_id=> 1840917611352918 + wwv_flow_api.g_id_offset,
  p_region_id=> 1840201773352813 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 5,
  p_form_element_id=> null,
  p_column_alias=> 'SAL',
  p_column_display_sequence=> 5,
  p_column_heading=> 'Salary',
  p_column_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
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
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 3457117716954423 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_plug_name=> 'Select Employee',
  p_region_name=>'',
  p_plug_template=> 3450629525954267+ wwv_flow_api.g_id_offset,
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

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>3458620466051932 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 1,
  p_name=>'P1_DEPTNO',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 3457117716954423+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Department',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_SELECT_LIST',
  p_lov=> 'select initcap(dname) d, deptno r'||chr(10)||
'from dept'||chr(10)||
'order by 1',
  p_lov_display_null=> 'YES',
  p_lov_translated=> 'N',
  p_lov_null_text=>'- Select Department -',
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
  p_field_template=> 3454045087954297+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_attribute_01 => 'NONE',
  p_attribute_02 => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>3460634280101557 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 1,
  p_name=>'P1_EMPNO',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 3457117716954423+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Employee',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_SELECT_LIST',
  p_lov=> 'select initcap(ename) d, empno e'||chr(10)||
'from emp'||chr(10)||
'where deptno = :p1_deptno'||chr(10)||
'order by 1',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_lov_cascade_parent_items=> 'P1_DEPTNO',
  p_ajax_items_to_submit=> 'P1_DEPTNO',
  p_ajax_optimize_refresh=> 'Y',
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
  p_read_only_when_type=>'ALWAYS',
  p_field_template=> 3454045087954297+wwv_flow_api.g_id_offset,
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

 
begin
 
wwv_flow_api.create_page_da_event (
  p_id => 1852126177255029 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 1
 ,p_name => 'Change DeptNo'
 ,p_event_sequence => 10
 ,p_triggering_element_type => 'ITEM'
 ,p_triggering_element => 'P1_DEPTNO'
 ,p_triggering_condition_type => 'NOT_NULL'
 ,p_bind_type => 'bind'
 ,p_bind_event_type => 'change'
  );
wwv_flow_api.create_page_da_action (
  p_id => 1856210135392143 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 1
 ,p_event_id => 1852126177255029 + wwv_flow_api.g_id_offset
 ,p_event_result => 'TRUE'
 ,p_action_sequence => 1
 ,p_execute_on_page_init => 'N'
 ,p_action => 'NATIVE_EXECUTE_PLSQL_CODE'
 ,p_attribute_01 => '-- This is a dummy call so that we can set P1_DEPTNO'||chr(10)||
'null;'
 ,p_attribute_02 => 'P1_DEPTNO'
 ,p_stop_execution_on_error => 'Y'
 );
wwv_flow_api.create_page_da_action (
  p_id => 1852413958255083 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 1
 ,p_event_id => 1852126177255029 + wwv_flow_api.g_id_offset
 ,p_event_result => 'TRUE'
 ,p_action_sequence => 10
 ,p_execute_on_page_init => 'N'
 ,p_action => 'NATIVE_REFRESH'
 ,p_affected_elements_type => 'REGION'
 ,p_affected_region_id => 1840201773352813 + wwv_flow_api.g_id_offset
 ,p_stop_execution_on_error => 'Y'
 );
wwv_flow_api.create_page_da_action (
  p_id => 1894221515774518 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 1
 ,p_event_id => 1852126177255029 + wwv_flow_api.g_id_offset
 ,p_event_result => 'TRUE'
 ,p_action_sequence => 20
 ,p_execute_on_page_init => 'N'
 ,p_action => 'PLUGIN_COM.CLARIFIT.APEXPLUGIN.SIMPLE_MODAL_SHOW'
 ,p_affected_elements_type => 'REGION'
 ,p_affected_region_id => 1840201773352813 + wwv_flow_api.g_id_offset
 ,p_attribute_01 => 'true'
 ,p_attribute_02 => '50'
 ,p_attribute_03 => 'true'
 ,p_attribute_04 => 'true'
 ,p_stop_execution_on_error => 'Y'
 );
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_da_event (
  p_id => 1860104667344893 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 1
 ,p_name => 'On Page Load'
 ,p_event_sequence => 20
 ,p_bind_type => 'bind'
 ,p_bind_event_type => 'ready'
  );
wwv_flow_api.create_page_da_action (
  p_id => 1860419538345089 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 1
 ,p_event_id => 1860104667344893 + wwv_flow_api.g_id_offset
 ,p_event_result => 'TRUE'
 ,p_action_sequence => 10
 ,p_execute_on_page_init => 'N'
 ,p_action => 'NATIVE_JAVASCRIPT_CODE'
 ,p_affected_elements_type => 'REGION'
 ,p_affected_region_id => 1840201773352813 + wwv_flow_api.g_id_offset
 ,p_attribute_01 => '//This code will prepent the affected element(s) with the inline CSS HTML code.'||chr(10)||
'$(this.affectedElements).prepend('||chr(10)||
'  ''<style type="text/css"><!--#DEPT_EMP_REPORT .highlight-row:hover > td {background-color: yellow;}//--></style>'''||chr(10)||
');'||chr(10)||
''
 ,p_stop_execution_on_error => 'Y'
 );
wwv_flow_api.create_page_da_action (
  p_id => 1890625251562400 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 1
 ,p_event_id => 1860104667344893 + wwv_flow_api.g_id_offset
 ,p_event_result => 'TRUE'
 ,p_action_sequence => 20
 ,p_execute_on_page_init => 'N'
 ,p_action => 'NATIVE_HIDE'
 ,p_affected_elements_type => 'REGION'
 ,p_affected_region_id => 1840201773352813 + wwv_flow_api.g_id_offset
 ,p_attribute_01 => 'N'
 ,p_stop_execution_on_error => 'Y'
 );
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_da_event (
  p_id => 1868126052761747 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 1
 ,p_name => 'Row Click'
 ,p_event_sequence => 30
 ,p_triggering_element_type => 'REGION'
 ,p_triggering_region_id => 1840201773352813 + wwv_flow_api.g_id_offset
 ,p_triggering_condition_type => 'JAVASCRIPT_EXPRESSION'
 ,p_triggering_expression => '$(this.browserEvent.target).closest(''tr .highlight-row'',this.browserEvent.currentTarget).length > 0'
 ,p_bind_type => 'bind'
 ,p_bind_event_type => 'click'
  );
wwv_flow_api.create_page_da_action (
  p_id => 1868430232761869 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 1
 ,p_event_id => 1868126052761747 + wwv_flow_api.g_id_offset
 ,p_event_result => 'TRUE'
 ,p_action_sequence => 10
 ,p_execute_on_page_init => 'N'
 ,p_action => 'NATIVE_JAVASCRIPT_CODE'
 ,p_affected_region_id => 1840201773352813 + wwv_flow_api.g_id_offset
 ,p_attribute_01 => '//dataSpan will represent the span tag that we created earlier that contains the custom data attributes'||chr(10)||
'var dataSpan = $(this.browserEvent.target).closest(''tr'').find(''[data-empno]'');'||chr(10)||
''||chr(10)||
'//Set the EMPNO and its display values using the data attributes'||chr(10)||
'$(''#P1_EMPNO'').val(dataSpan.attr(''data-empno''));'||chr(10)||
'$(''#P1_EMPNO_DISPLAY'').html(dataSpan.attr(''data-ename'')).trigger(''change'');'||chr(10)||
''
 ,p_stop_execution_on_error => 'Y'
 );
wwv_flow_api.create_page_da_action (
  p_id => 1896217893892383 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 1
 ,p_event_id => 1868126052761747 + wwv_flow_api.g_id_offset
 ,p_event_result => 'TRUE'
 ,p_action_sequence => 20
 ,p_execute_on_page_init => 'N'
 ,p_action => 'PLUGIN_COM.CLARIFIT.APEXPLUGIN.SIMPLE_MODAL_CLOSE'
 ,p_stop_execution_on_error => 'Y'
 );
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_da_event (
  p_id => 1870106069894611 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 1
 ,p_name => 'FadeIn Employee Name'
 ,p_event_sequence => 40
 ,p_triggering_element_type => 'JQUERY_SELECTOR'
 ,p_triggering_element => '#P1_EMPNO_DISPLAY'
 ,p_bind_type => 'bind'
 ,p_bind_event_type => 'change'
  );
wwv_flow_api.create_page_da_action (
  p_id => 1870419134894691 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 1
 ,p_event_id => 1870106069894611 + wwv_flow_api.g_id_offset
 ,p_event_result => 'TRUE'
 ,p_action_sequence => 10
 ,p_execute_on_page_init => 'N'
 ,p_action => 'NATIVE_HIDE'
 ,p_affected_elements_type => 'TRIGGERING_ELEMENT'
 ,p_attribute_01 => 'N'
 ,p_stop_execution_on_error => 'Y'
 );
wwv_flow_api.create_page_da_action (
  p_id => 1870618236928016 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 1
 ,p_event_id => 1870106069894611 + wwv_flow_api.g_id_offset
 ,p_event_result => 'TRUE'
 ,p_action_sequence => 20
 ,p_execute_on_page_init => 'N'
 ,p_action => 'NATIVE_SET_CSS'
 ,p_affected_elements_type => 'TRIGGERING_ELEMENT'
 ,p_attribute_01 => 'font-weight'
 ,p_attribute_02 => 'bold'
 ,p_stop_execution_on_error => 'Y'
 );
wwv_flow_api.create_page_da_action (
  p_id => 1872201923972707 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 1
 ,p_event_id => 1870106069894611 + wwv_flow_api.g_id_offset
 ,p_event_result => 'TRUE'
 ,p_action_sequence => 30
 ,p_execute_on_page_init => 'N'
 ,p_action => 'NATIVE_JAVASCRIPT_CODE'
 ,p_affected_elements_type => 'TRIGGERING_ELEMENT'
 ,p_attribute_01 => '$(this.affectedElements).fadeIn(2000, function(){'||chr(10)||
'  //The second parameter in the fadeIn function allows you to define a'||chr(10)||
'  //function to be run once the fadeIn is completed.'||chr(10)||
'  //We''ll use this function to remove the bold style '||chr(10)||
'  $(this).css(''font-weight'','''');'||chr(10)||
'});'
 ,p_stop_execution_on_error => 'Y'
 );
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
 ,p_step_template => 3447323704954239 + wwv_flow_api.g_id_offset
 ,p_page_is_public_y_n => 'N'
 ,p_cache_page_yn => 'N'
 ,p_last_upd_yyyymmddhh24miss => '20110201214710'
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
  p_id=> 3455926768954373 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 101,
  p_plug_name=> 'Login',
  p_region_name=>'',
  p_plug_template=> 3449832173954266+ wwv_flow_api.g_id_offset,
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
  p_id=>3456033587954389 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 101,
  p_name=>'P101_USERNAME',
  p_data_type=> '',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 3455926768954373+wwv_flow_api.g_id_offset,
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
  p_field_template=> 3454045087954297+wwv_flow_api.g_id_offset,
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
  p_id=>3456136211954398 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 101,
  p_name=>'P101_PASSWORD',
  p_data_type=> '',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 3455926768954373+wwv_flow_api.g_id_offset,
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
  p_field_template=> 3454045087954297+wwv_flow_api.g_id_offset,
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
  p_id=>3456247443954398 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 101,
  p_name=>'P101_LOGIN',
  p_data_type=> '',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 30,
  p_item_plug_id => 3455926768954373+wwv_flow_api.g_id_offset,
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
  p_tag_attributes  => 'template:'||to_char(3448825623954253 + wwv_flow_api.g_id_offset),
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
  p_id     => 3456417394954405 + wwv_flow_api.g_id_offset,
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
  p_id     => 3456328672954402 + wwv_flow_api.g_id_offset,
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
  p_id     => 3456643581954406 + wwv_flow_api.g_id_offset,
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
  p_id     => 3456544971954405 + wwv_flow_api.g_id_offset,
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
--application/shared_components/navigation/breadcrumbs
prompt  ...breadcrumbs
--
 
begin
 
wwv_flow_api.create_menu (
  p_id=> 3456748605954406 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> ' Breadcrumb');
 
wwv_flow_api.create_menu_option (
  p_id=>3457244295954435 + wwv_flow_api.g_id_offset,
  p_menu_id=>3456748605954406 + wwv_flow_api.g_id_offset,
  p_parent_id=>0,
  p_option_sequence=>10,
  p_short_name=>'Old Way',
  p_long_name=>'',
  p_link=>'f?p=&APP_ID.:1:&SESSION.',
  p_page_id=>1,
  p_also_current_for_pages=> '');
 
null;
 
end;
/

prompt  ...page templates for application: 108
--
--application/shared_components/user_interface/templates/page/login
prompt  ......Page template 3447323704954239
 
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
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/css/theme_4_0.css" type="text/css" />'||chr(10)||
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/css/theme_4_0_ie.css" type="text/css" /><![endif]-->'||chr(10)||
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/css/theme_4_0_ie6.css" type="text/css" /><![endif]-';

c1:=c1||'->'||chr(10)||
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->'||chr(10)||
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
  p_id=> 3447323704954239 + wwv_flow_api.g_id_offset,
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
  p_theme_id  => 1,
  p_theme_class_id => 6,
  p_translate_this_template => 'N',
  p_template_comment => '18');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/no_tabs_left_sidebar_fixed_width_div_based
prompt  ......Page template 3447417140954247
 
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
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/css/theme_4_0.css" type="text/css" />'||chr(10)||
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/css/theme_4_0_ie.css" type="text/css" /><![endif]-->'||chr(10)||
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/css/theme_4_0_ie6.css" type="text/css" /><![endif]-';

c1:=c1||'->'||chr(10)||
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>'||chr(10)||
'#FORM_OPEN#'||chr(10)||
'';

c2:=c2||'<div id="footer"><div class="content">'||chr(10)||
'  <div id="customize">#CUSTOMIZE#</div>&nbsp;'||chr(10)||
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
  p_id=> 3447417140954247 + wwv_flow_api.g_id_offset,
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
  p_theme_id  => 1,
  p_theme_class_id => 17,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/no_tabs_left_and_right_sidebar_fixed_width_div_left_and_optional_table_based_right
prompt  ......Page template 3447538450954248
 
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
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/css/theme_4_0.css" type="text/css" />'||chr(10)||
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/css/theme_4_0_ie.css" type="text/css" /><![endif]-->'||chr(10)||
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/css/theme_4_0_ie6.css" type="text/css" /><![endif]-';

c1:=c1||'->'||chr(10)||
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>'||chr(10)||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||chr(10)||
'#FORM_OPEN#'||chr(10)||
'';

c2:=c2||'<div id="footer"><div class="content">'||chr(10)||
'  <div id="customize">#CUSTOMIZE#</div>&nbsp;'||chr(10)||
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
  p_id=> 3447538450954248 + wwv_flow_api.g_id_offset,
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
  p_theme_id  => 1,
  p_theme_class_id => 17,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/no_tabs_right_sidebar_fixed_width_div_based
prompt  ......Page template 3447629464954249
 
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
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/css/theme_4_0.css" type="text/css" />'||chr(10)||
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/css/theme_4_0_ie.css" type="text/css" /><![endif]-->'||chr(10)||
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/css/theme_4_0_ie6.css" type="text/css" /><![endif]-';

c1:=c1||'->'||chr(10)||
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>'||chr(10)||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||chr(10)||
'#FORM_OPEN#'||chr(10)||
'';

c2:=c2||'<div id="footer"><div class="content">'||chr(10)||
'  #REGION_POSITION_05#'||chr(10)||
'  <div id="customize">#CUSTOMIZE#</div>&nbsp;'||chr(10)||
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
'  <div id="two-col">'||chr(10)||
'    <div id="sidebar">#REGION_POSITION_03#</div>     '||chr(10)||
'    <div id="main">#REGION_POSITION_02##BOX_BODY#</div>'||chr(10)||
'  </div>'||chr(10)||
'</div>'||chr(10)||
'';

wwv_flow_api.create_template(
  p_id=> 3447629464954249 + wwv_flow_api.g_id_offset,
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
  p_theme_id  => 1,
  p_theme_class_id => 3,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/no_tabs_right_sidebar_optional_table_based
prompt  ......Page template 3447748777954250
 
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
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/css/theme_4_0.css" type="text/css" />'||chr(10)||
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/css/theme_4_0_ie.css" type="text/css" /><![endif]-->'||chr(10)||
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/css/theme_4_0_ie6.css" type="text/css" /><![endif]-';

c1:=c1||'->'||chr(10)||
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>'||chr(10)||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||chr(10)||
'#FORM_OPEN#'||chr(10)||
'';

c2:=c2||'<div id="footer"><div class="content">'||chr(10)||
'  #REGION_POSITION_05#'||chr(10)||
'  <div id="customize">#CUSTOMIZE#</div>&nbsp;'||chr(10)||
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
'  <table class="tbl-body" cellspacing="0" cellpadding="0" border="0" summary="">'||chr(10)||
'    <tbody>'||chr(10)||
'      <tr>'||chr(10)||
'        <td class="tbl-main" width="100%">#REGION_POSITION_02##BOX_BODY#</td>'||chr(10)||
'        <td class="tbl-sidebar">#REGION_POSITION_03#</td>    ';

c3:=c3||' '||chr(10)||
'      </tr>'||chr(10)||
'    </tbody>'||chr(10)||
'  </table>'||chr(10)||
'</div>';

wwv_flow_api.create_template(
  p_id=> 3447748777954250 + wwv_flow_api.g_id_offset,
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
  p_theme_id  => 1,
  p_theme_class_id => 3,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/one_level_tabs_left_sidebar_fixed_width_div_based
prompt  ......Page template 3447846248954250
 
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
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/css/theme_4_0.css" type="text/css" />'||chr(10)||
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/css/theme_4_0_ie.css" type="text/css" /><![endif]-->'||chr(10)||
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/css/theme_4_0_ie6.css" type="text/css" /><![endif]-';

c1:=c1||'->'||chr(10)||
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>'||chr(10)||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||chr(10)||
'#FORM_OPEN#'||chr(10)||
'';

c2:=c2||'<div id="footer"><div class="content">'||chr(10)||
'  #REGION_POSITION_05#'||chr(10)||
'  <div id="customize">#CUSTOMIZE#</div>&nbsp;'||chr(10)||
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
'        #TAB_CELLS#'||chr(10)||
'      </div>'||chr(10)||
'    </div>'||chr(10)||
'  </div>'||chr(10)||
'</div>'||chr(10)||
'<div';

c3:=c3||' id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>'||chr(10)||
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
  p_id=> 3447846248954250 + wwv_flow_api.g_id_offset,
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
  p_current_tab=> '<div class="#TAB_STATUS#"><div>'||chr(10)||
'#TAB_LABEL##TAB_INLINE_EDIT#'||chr(10)||
'</div></div>'||chr(10)||
'',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<div class="#TAB_STATUS#"><div>'||chr(10)||
'<a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||chr(10)||
'</div></div>'||chr(10)||
'',
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
  p_theme_id  => 1,
  p_theme_class_id => 16,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/one_level_tabs_left_and_right_sidebar_fixed_width_div_left_and_optional_table_based_right
prompt  ......Page template 3447946360954251
 
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
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/css/theme_4_0.css" type="text/css" />'||chr(10)||
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/css/theme_4_0_ie.css" type="text/css" /><![endif]-->'||chr(10)||
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/css/theme_4_0_ie6.css" type="text/css" /><![endif]-';

c1:=c1||'->'||chr(10)||
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>'||chr(10)||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||chr(10)||
'#FORM_OPEN#'||chr(10)||
'';

c2:=c2||'<div id="footer"><div class="content">'||chr(10)||
'  #REGION_POSITION_05#'||chr(10)||
'  <div id="customize">#CUSTOMIZE#</div>&nbsp;'||chr(10)||
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
'        #TAB_CELLS#'||chr(10)||
'      </div>'||chr(10)||
'    </div>'||chr(10)||
'  </div>'||chr(10)||
'</div>'||chr(10)||
'<div';

c3:=c3||' id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>'||chr(10)||
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>'||chr(10)||
'<div id="body">'||chr(10)||
'  <div id="three-col">'||chr(10)||
'    <div id="left-sidebar">#REGION_POSITION_02#</div>'||chr(10)||
'    <div id="two-col-tbl">'||chr(10)||
'      <table class="tbl-body" cellspacing="0" cellpadding="0" border="0" summary="">'||chr(10)||
'        <tbody>'||chr(10)||
'          <tr>'||chr(10)||
'            <td cl';

c3:=c3||'ass="tbl-main" width="100%">#BOX_BODY#</td>'||chr(10)||
'            <td class="tbl-sidebar">#REGION_POSITION_03#</td>     '||chr(10)||
'          </tr>'||chr(10)||
'        </tbody>'||chr(10)||
'      </table>'||chr(10)||
'    </div>'||chr(10)||
'  </div>'||chr(10)||
'</div>';

wwv_flow_api.create_template(
  p_id=> 3447946360954251 + wwv_flow_api.g_id_offset,
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
  p_current_tab=> '<div class="#TAB_STATUS#"><div>'||chr(10)||
'#TAB_LABEL##TAB_INLINE_EDIT#'||chr(10)||
'</div></div>'||chr(10)||
'',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<div class="#TAB_STATUS#"><div>'||chr(10)||
'<a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||chr(10)||
'</div></div>'||chr(10)||
''||chr(10)||
''||chr(10)||
''||chr(10)||
''||chr(10)||
''||chr(10)||
'',
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
  p_theme_id  => 1,
  p_theme_class_id => 16,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/one_level_tabs_right_sidebar_fixed_width_div_based
prompt  ......Page template 3448027955954251
 
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
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/css/theme_4_0.css" type="text/css" />'||chr(10)||
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/css/theme_4_0_ie.css" type="text/css" /><![endif]-->'||chr(10)||
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/css/theme_4_0_ie6.css" type="text/css" /><![endif]-';

c1:=c1||'->'||chr(10)||
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>'||chr(10)||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||chr(10)||
'#FORM_OPEN#'||chr(10)||
'';

c2:=c2||'<div id="footer"><div class="content">'||chr(10)||
'  #REGION_POSITION_05#'||chr(10)||
'  <div id="customize">#CUSTOMIZE#</div>&nbsp;'||chr(10)||
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
'        #TAB_CELLS#'||chr(10)||
'      </div>'||chr(10)||
'    </div>'||chr(10)||
'  </div>'||chr(10)||
'</div>'||chr(10)||
'<div';

c3:=c3||' id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>'||chr(10)||
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>'||chr(10)||
'<div id="body">'||chr(10)||
'  <div id="two-col">'||chr(10)||
'    <div id="sidebar">#REGION_POSITION_03#</div>     '||chr(10)||
'    <div id="main">#REGION_POSITION_02##BOX_BODY#</div>'||chr(10)||
'  </div>'||chr(10)||
'</div>'||chr(10)||
'';

wwv_flow_api.create_template(
  p_id=> 3448027955954251 + wwv_flow_api.g_id_offset,
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
  p_current_tab=> '<div class="#TAB_STATUS#"><div>'||chr(10)||
'#TAB_LABEL##TAB_INLINE_EDIT#'||chr(10)||
'</div></div>'||chr(10)||
'',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<div class="#TAB_STATUS#"><div>'||chr(10)||
'<a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||chr(10)||
'</div></div>'||chr(10)||
'',
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
  p_theme_id  => 1,
  p_theme_class_id => 8,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/one_level_tabs_right_sidebar_optional_table_based
prompt  ......Page template 3448124029954251
 
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
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/css/theme_4_0.css" type="text/css" />'||chr(10)||
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/css/theme_4_0_ie.css" type="text/css" /><![endif]-->'||chr(10)||
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/css/theme_4_0_ie6.css" type="text/css" /><![endif]-';

c1:=c1||'->'||chr(10)||
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>'||chr(10)||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||chr(10)||
'#FORM_OPEN#'||chr(10)||
'';

c2:=c2||'<div id="footer"><div class="content">'||chr(10)||
'  #REGION_POSITION_05#'||chr(10)||
'  <div id="customize">#CUSTOMIZE#</div>&nbsp;'||chr(10)||
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
'        #TAB_CELLS#'||chr(10)||
'      </div>'||chr(10)||
'    </div>'||chr(10)||
'  </div>'||chr(10)||
'</div>'||chr(10)||
'<div';

c3:=c3||' id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>'||chr(10)||
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>'||chr(10)||
'<div id="body">'||chr(10)||
'  <table class="tbl-body" cellspacing="0" cellpadding="0" border="0" summary="">'||chr(10)||
'    <tbody>'||chr(10)||
'      <tr>'||chr(10)||
'        <td class="tbl-main" width="100%">#REGION_POSITION_02##BOX_BODY#</td>'||chr(10)||
'        <td class="tbl-sidebar">#REGION_POSITION_03#</td';

c3:=c3||'>     '||chr(10)||
'      </tr>'||chr(10)||
'    </tbody>'||chr(10)||
'  </table>'||chr(10)||
'</div>';

wwv_flow_api.create_template(
  p_id=> 3448124029954251 + wwv_flow_api.g_id_offset,
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
  p_current_tab=> '<div class="#TAB_STATUS#"><div>'||chr(10)||
'#TAB_LABEL##TAB_INLINE_EDIT#'||chr(10)||
'</div></div>',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<div class="#TAB_STATUS#"><div>'||chr(10)||
'<a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||chr(10)||
'</div></div>'||chr(10)||
''||chr(10)||
''||chr(10)||
''||chr(10)||
''||chr(10)||
''||chr(10)||
'',
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
  p_theme_id  => 1,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/popup
prompt  ......Page template 3448242496954251
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||chr(10)||
'<link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||chr(10)||
'#HEAD#'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/theme_4_0.css" type="text/css" />'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'#FORM_CLOSE#</body>'||chr(10)||
'</html>';

c3:=c3||'<table summary="" cellpadding="0" width="100%" cellspacing="0" border="0">'||chr(10)||
'<tr>'||chr(10)||
'<td width="100%" valign="top"><div class="t1messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>#BOX_BODY##REGION_POSITION_01##REGION_POSITION_02##REGION_POSITION_04##REGION_POSITION_05##REGION_POSITION_06##REGION_POSITION_07##REGION_POSITION_08#</td>'||chr(10)||
'<td valign="top">#REGION_POSITION_03#<br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

wwv_flow_api.create_template(
  p_id=> 3448242496954251 + wwv_flow_api.g_id_offset,
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
  p_theme_id  => 1,
  p_theme_class_id => 4,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/printer_friendly
prompt  ......Page template 3448320382954251
 
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
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/css/theme_4_0.css" type="text/css" />'||chr(10)||
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/css/theme_4_0_ie.css" type="text/css" /><![endif]-->'||chr(10)||
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/css/theme_4_0_ie6.css" type="text/css" /><![endif]-';

c1:=c1||'->'||chr(10)||
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>'||chr(10)||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||chr(10)||
'#FORM_OPEN#'||chr(10)||
'';

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
'        <td class="tbl-sidebar">#REGION_POSITION_02#</t';

c3:=c3||'d>     '||chr(10)||
'        <td class="tbl-main" width="100%">#BOX_BODY#</td>'||chr(10)||
'        <td class="tbl-sidebar">#REGION_POSITION_03#</td>     '||chr(10)||
'      </tr>'||chr(10)||
'    </tbody>'||chr(10)||
'  </table>'||chr(10)||
'</div>';

wwv_flow_api.create_template(
  p_id=> 3448320382954251 + wwv_flow_api.g_id_offset,
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
  p_theme_id  => 1,
  p_theme_class_id => 5,
  p_translate_this_template => 'N',
  p_template_comment => '3');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/two_level_tabs_left_sidebar_fixed_width_div_based
prompt  ......Page template 3448440981954252
 
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
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/css/theme_4_0.css" type="text/css" />'||chr(10)||
'  <!--';

c1:=c1||'[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/css/theme_4_0_ie.css" type="text/css" /><![endif]-->'||chr(10)||
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->'||chr(10)||
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>'||chr(10)||
'<';

c1:=c1||'!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||chr(10)||
'#FORM_OPEN#'||chr(10)||
'';

c2:=c2||'<div id="footer"><div class="content">'||chr(10)||
'  #REGION_POSITION_05#'||chr(10)||
'  <div id="customize">#CUSTOMIZE#</div>&nbsp;'||chr(10)||
'</div></div>'||chr(10)||
'#FORM_CLOSE#'||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<div id="header2">'||chr(10)||
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>'||chr(10)||
'  #REGION_POSITION_07#'||chr(10)||
'  <div id="navbar">'||chr(10)||
'    #NAVIGATION_BAR#'||chr(10)||
'    <div class="app-user">#WELCOME_USER#</div>'||chr(10)||
'    #REGION_POSITION_08#'||chr(10)||
'  </div>'||chr(10)||
'  <div id="parent-tabs">'||chr(10)||
'    <div class="tab-holder">#PARENT_TAB_CELLS#</div>'||chr(10)||
'  </div>'||chr(10)||
'</div>'||chr(10)||
'<div id="tabs">'||chr(10)||
'  <div class="frame">'||chr(10)||
'    <div class="bg">'||chr(10)||
'      <';

c3:=c3||'div class="tab-holder">'||chr(10)||
'        #TAB_CELLS#'||chr(10)||
'      </div>'||chr(10)||
'    </div>'||chr(10)||
'  </div>'||chr(10)||
'</div>'||chr(10)||
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>'||chr(10)||
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>'||chr(10)||
'<div id="body">'||chr(10)||
'  <div id="two-col-sb-left">'||chr(10)||
'    <div id="left-sidebar">#REGION_POSITION_02#</div>'||chr(10)||
'    <div id="main-sb-left">'||chr(10)||
'      #BOX_BODY##REGION_POSITION_03#'||chr(10)||
'  ';

c3:=c3||'  </div>'||chr(10)||
'  </div>'||chr(10)||
'</div>'||chr(10)||
'';

wwv_flow_api.create_template(
  p_id=> 3448440981954252 + wwv_flow_api.g_id_offset,
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
  p_current_tab=> '<div class="#TAB_STATUS#"><div>'||chr(10)||
'#TAB_LABEL##TAB_INLINE_EDIT#'||chr(10)||
'</div></div>'||chr(10)||
'',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<div class="#TAB_STATUS#"><div>'||chr(10)||
'<a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||chr(10)||
'</div></div>'||chr(10)||
'',
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
  p_theme_id  => 1,
  p_theme_class_id => 18,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/two_level_tabs_left_and_right_sidebar_fixed_width_div_left_and_optional_table_based_right
prompt  ......Page template 3448520884954252
 
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
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/css/theme_4_0.css" type="text/css" />'||chr(10)||
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/css/theme_4_0_ie.css" type="text/css" /><![endif]-->'||chr(10)||
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/css/theme_4_0_ie6.css" type="text/css" /><![endif]--';

c1:=c1||'>'||chr(10)||
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>'||chr(10)||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||chr(10)||
'#FORM_OPEN#'||chr(10)||
'';

c2:=c2||'<div id="footer"><div class="content">'||chr(10)||
'  #REGION_POSITION_05#'||chr(10)||
'  <div id="customize">#CUSTOMIZE#</div>&nbsp;'||chr(10)||
'</div></div>'||chr(10)||
'#FORM_CLOSE#'||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<div id="header2">'||chr(10)||
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>'||chr(10)||
'  #REGION_POSITION_07#'||chr(10)||
'  <div id="navbar">'||chr(10)||
'    #NAVIGATION_BAR#'||chr(10)||
'    <div class="app-user">#WELCOME_USER#</div>'||chr(10)||
'    #REGION_POSITION_08#'||chr(10)||
'  </div>'||chr(10)||
'  <div id="parent-tabs">'||chr(10)||
'    <div class="tab-holder">#PARENT_TAB_CELLS#</div>'||chr(10)||
'  </div>'||chr(10)||
'</div>'||chr(10)||
'<div id="tabs">'||chr(10)||
'  <div class="frame">'||chr(10)||
'    <div class="bg">'||chr(10)||
'      <';

c3:=c3||'div class="tab-holder">'||chr(10)||
'        #TAB_CELLS#'||chr(10)||
'      </div>'||chr(10)||
'    </div>'||chr(10)||
'  </div>'||chr(10)||
'</div>'||chr(10)||
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>'||chr(10)||
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>'||chr(10)||
'<div id="body">'||chr(10)||
'  <div id="three-col">'||chr(10)||
'    <div id="left-sidebar">#REGION_POSITION_02#</div>'||chr(10)||
'    <div id="two-col-tbl">'||chr(10)||
'      <table class="tbl-body" cellspacing="0" ';

c3:=c3||'cellpadding="0" border="0" summary="">'||chr(10)||
'        <tbody>'||chr(10)||
'          <tr>'||chr(10)||
'            <td class="tbl-main" width="100%">#BOX_BODY#</td>'||chr(10)||
'            <td class="tbl-sidebar">#REGION_POSITION_03#</td>     '||chr(10)||
'          </tr>'||chr(10)||
'        </tbody>'||chr(10)||
'      </table>'||chr(10)||
'    </div>'||chr(10)||
'  </div>'||chr(10)||
'</div>'||chr(10)||
'';

wwv_flow_api.create_template(
  p_id=> 3448520884954252 + wwv_flow_api.g_id_offset,
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
  p_current_tab=> '<div class="#TAB_STATUS#"><div>'||chr(10)||
'#TAB_LABEL##TAB_INLINE_EDIT#'||chr(10)||
'</div></div>'||chr(10)||
'',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<div class="#TAB_STATUS#"><div>'||chr(10)||
'<a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||chr(10)||
'</div></div>',
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
  p_theme_id  => 1,
  p_theme_class_id => 18,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/two_level_tabs_right_sidebar_fixed_width_div_based
prompt  ......Page template 3448640482954252
 
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
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/css/theme_4_0.css" type="text/css" />'||chr(10)||
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/css/theme_4_0_ie.css" type="text/css" /><![endif]-->'||chr(10)||
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/css/theme_4_0_ie6.css" type="text/css" /><![endif]--';

c1:=c1||'>'||chr(10)||
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>'||chr(10)||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||chr(10)||
'#FORM_OPEN#'||chr(10)||
'';

c2:=c2||'<div id="footer"><div class="content">'||chr(10)||
'  #REGION_POSITION_05#'||chr(10)||
'  <div id="customize">#CUSTOMIZE#</div>&nbsp;'||chr(10)||
'</div></div>'||chr(10)||
'#FORM_CLOSE#'||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<div id="header2">'||chr(10)||
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>'||chr(10)||
'  #REGION_POSITION_07#'||chr(10)||
'  <div id="navbar">'||chr(10)||
'    #NAVIGATION_BAR#'||chr(10)||
'    <div class="app-user">#WELCOME_USER#</div>'||chr(10)||
'    #REGION_POSITION_08#'||chr(10)||
'  </div>'||chr(10)||
'  <div id="parent-tabs">'||chr(10)||
'    <div class="tab-holder">#PARENT_TAB_CELLS#</div>'||chr(10)||
'  </div>'||chr(10)||
'</div>'||chr(10)||
'<div id="tabs">'||chr(10)||
'  <div class="frame">'||chr(10)||
'    <div class="bg">'||chr(10)||
'      <';

c3:=c3||'div class="tab-holder">'||chr(10)||
'        #TAB_CELLS#'||chr(10)||
'      </div>'||chr(10)||
'    </div>'||chr(10)||
'  </div>'||chr(10)||
'</div>'||chr(10)||
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
  p_id=> 3448640482954252 + wwv_flow_api.g_id_offset,
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
  p_current_tab=> '<div class="#TAB_STATUS#"><div>'||chr(10)||
'#TAB_LABEL##TAB_INLINE_EDIT#'||chr(10)||
'</div></div>',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<div class="#TAB_STATUS#"><div>'||chr(10)||
'<a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||chr(10)||
'</div></div>',
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
  p_theme_id  => 1,
  p_theme_class_id => 2,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/two_level_tabs_right_sidebar_optional_table_based
prompt  ......Page template 3448732854954253
 
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
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/css/theme_4_0.css" type="text/css" />'||chr(10)||
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/css/theme_4_0_ie.css" type="text/css" /><![endif]-->'||chr(10)||
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/css/theme_4_0_ie6.css" type="text/css" /><![endif]--';

c1:=c1||'>'||chr(10)||
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>'||chr(10)||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||chr(10)||
'#FORM_OPEN#'||chr(10)||
'';

c2:=c2||'<div id="footer"><div class="content">'||chr(10)||
'  #REGION_POSITION_05#'||chr(10)||
'  <div id="customize">#CUSTOMIZE#</div>&nbsp;'||chr(10)||
'</div></div>'||chr(10)||
'#FORM_CLOSE#'||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<div id="header2">'||chr(10)||
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>'||chr(10)||
'  #REGION_POSITION_07#'||chr(10)||
'  <div id="navbar">'||chr(10)||
'    #NAVIGATION_BAR#'||chr(10)||
'    <div class="app-user">#WELCOME_USER#</div>'||chr(10)||
'    #REGION_POSITION_08#'||chr(10)||
'  </div>'||chr(10)||
'  <div id="parent-tabs">'||chr(10)||
'    <div class="tab-holder">#PARENT_TAB_CELLS#</div>'||chr(10)||
'  </div>'||chr(10)||
'</div>'||chr(10)||
'<div id="tabs">'||chr(10)||
'  <div class="frame">'||chr(10)||
'    <div class="bg">'||chr(10)||
'      <';

c3:=c3||'div class="tab-holder">'||chr(10)||
'        #TAB_CELLS#'||chr(10)||
'      </div>'||chr(10)||
'    </div>'||chr(10)||
'  </div>'||chr(10)||
'</div>'||chr(10)||
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>'||chr(10)||
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>'||chr(10)||
'<div id="body">'||chr(10)||
'  <table class="tbl-body" cellspacing="0" cellpadding="0" border="0" summary="">'||chr(10)||
'    <tbody>'||chr(10)||
'      <tr>'||chr(10)||
'        <td class="tbl-main" width="100%">#REG';

c3:=c3||'ION_POSITION_02##BOX_BODY#</td>'||chr(10)||
'        <td class="tbl-sidebar">#REGION_POSITION_03#</td>     '||chr(10)||
'      </tr>'||chr(10)||
'    </tbody>'||chr(10)||
'  </table>'||chr(10)||
'</div>';

wwv_flow_api.create_template(
  p_id=> 3448732854954253 + wwv_flow_api.g_id_offset,
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
  p_current_tab=> '<div class="#TAB_STATUS#"><div>'||chr(10)||
'#TAB_LABEL##TAB_INLINE_EDIT#'||chr(10)||
'</div></div>'||chr(10)||
'',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<div class="#TAB_STATUS#"><div>'||chr(10)||
'<a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#'||chr(10)||
'</div></div>',
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
  p_theme_id  => 1,
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
prompt  ......Button Template 3448825623954253
declare
  t varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
t:=t||'<button value="#LABEL#" onclick="#LINK#" class="button-gray" type="button">'||chr(10)||
'  <span>#LABEL#</span>'||chr(10)||
'</button>';

wwv_flow_api.create_button_templates (
  p_id=>3448825623954253 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_template=>t,
  p_template_name=> 'Button',
  p_translate_this_template => 'N',
  p_theme_id  => 1,
  p_theme_class_id => 1,
  p_template_comment       => '');
end;
/
--application/shared_components/user_interface/templates/button/button_alternative_1
prompt  ......Button Template 3448939703954257
declare
  t varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
t:=t||'<button value="#LABEL#" onclick="#LINK#" class="button-alt1" type="button">'||chr(10)||
'  <span>#LABEL#</span>'||chr(10)||
'</button>';

wwv_flow_api.create_button_templates (
  p_id=>3448939703954257 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_template=>t,
  p_template_name=> 'Button, Alternative 1',
  p_translate_this_template => 'N',
  p_theme_id  => 1,
  p_theme_class_id => 4,
  p_template_comment       => '');
end;
/
--application/shared_components/user_interface/templates/button/button_alternative_2
prompt  ......Button Template 3449030286954257
declare
  t varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
t:=t||'<button value="#LABEL#" onclick="#LINK#" class="button-alt2" type="button">'||chr(10)||
'  <span>#LABEL#</span>'||chr(10)||
'</button>';

wwv_flow_api.create_button_templates (
  p_id=>3449030286954257 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_template=>t,
  p_template_name=> 'Button, Alternative 2',
  p_translate_this_template => 'N',
  p_theme_id  => 1,
  p_theme_class_id => 5,
  p_template_comment       => 'XP Square FFFFFF');
end;
/
--application/shared_components/user_interface/templates/button/button_alternative_3
prompt  ......Button Template 3449139315954258
declare
  t varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
t:=t||'<button value="#LABEL#" onclick="#LINK#" class="button-alt3" type="button">'||chr(10)||
'  <span>#LABEL#</span>'||chr(10)||
'</button>';

wwv_flow_api.create_button_templates (
  p_id=>3449139315954258 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_template=>t,
  p_template_name=> 'Button, Alternative 3',
  p_translate_this_template => 'N',
  p_theme_id  => 1,
  p_theme_class_id => 2,
  p_template_comment       => 'Standard Button');
end;
/
---------------------------------------
prompt  ...region templates
--
--application/shared_components/user_interface/templates/region/borderless_region
prompt  ......region template 3449239552954258
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 3449239552954258 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="borderless-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||chr(10)||
'  <div class="bl-top">'||chr(10)||
'    <div class="bl-title">#TITLE#</div>'||chr(10)||
'    <div class="bl-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>'||chr(10)||
'  </div>'||chr(10)||
'  <div class="bl-body">#BODY#</div>'||chr(10)||
'</div>'
 ,p_page_plug_template_name => 'Borderless Region'
 ,p_theme_id => 1
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
  p_id=> 3449239552954258 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/bracketed_region
prompt  ......region template 3449336925954265
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 3449336925954265 + wwv_flow_api.g_id_offset
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
 ,p_theme_id => 1
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
  p_id=> 3449336925954265 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/breadcrumb_region
prompt  ......region template 3449437649954265
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 3449437649954265 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="breadcrumb-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>#BODY#</div>'
 ,p_page_plug_template_name => 'Breadcrumb Region'
 ,p_theme_id => 1
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
  p_id=> 3449437649954265 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/button_region_with_title
prompt  ......region template 3449525483954266
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 3449525483954266 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="borderless-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||chr(10)||
'  <div class="bl-top">'||chr(10)||
'    <div class="bl-title">#TITLE#</div>'||chr(10)||
'    <div class="bl-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>'||chr(10)||
'  </div>'||chr(10)||
'  <div class="bl-body">#BODY#</div>'||chr(10)||
'</div>'
 ,p_page_plug_template_name => 'Button Region with Title'
 ,p_theme_id => 1
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
  p_id=> 3449525483954266 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/button_region_without_title
prompt  ......region template 3449637197954266
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 3449637197954266 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="borderless-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||chr(10)||
'  <div class="bl-top">'||chr(10)||
'    <div class="bl-title">&nbsp;</div>'||chr(10)||
'    <div class="bl-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>'||chr(10)||
'  </div>'||chr(10)||
'  <div class="bl-body">#BODY#</div>'||chr(10)||
'</div>'
 ,p_page_plug_template_name => 'Button Region without Title'
 ,p_theme_id => 1
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
  p_id=> 3449637197954266 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/chart_region
prompt  ......region template 3449744158954266
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 3449744158954266 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="rounded-corner-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||chr(10)||
'  <div class="rc-red-top"><div class="rc-red-top-r">'||chr(10)||
'    <div class="rc-title">#TITLE#</div>'||chr(10)||
'    <div class="rc-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>'||chr(10)||
'  </div></div>'||chr(10)||
'  <div class="rc-body"><div class="rc-body-r"><div class="rc-content-main">#BODY#</div></div></'||
'div>'||chr(10)||
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>'||chr(10)||
'</div>'
 ,p_page_plug_template_name => 'Chart Region'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 1
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
  p_id=> 3449744158954266 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/form_region
prompt  ......region template 3449832173954266
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 3449832173954266 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="rounded-corner-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||chr(10)||
'  <div class="rc-gray-top"><div class="rc-gray-top-r">'||chr(10)||
'    <div class="rc-title">#TITLE#</div>'||chr(10)||
'    <div class="rc-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>'||chr(10)||
'  </div></div>'||chr(10)||
'  <div class="rc-body"><div class="rc-body-r"><div class="rc-content-main">#BODY#</div></div>'||
'</div>'||chr(10)||
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>'||chr(10)||
'</div>'
 ,p_page_plug_template_name => 'Form Region'
 ,p_plug_table_bgcolor => '#f7f7e7'
 ,p_theme_id => 1
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
  p_id=> 3449832173954266 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/hide_and_show_region
prompt  ......region template 3449918348954266
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 3449918348954266 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="hide-show-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||chr(10)||
'  <div class="hide-show-top">'||chr(10)||
'    <div class="hide-show-title">#TITLE#<a style="margin-left:5px;" href="javascript:hideShow(''region#REGION_SEQUENCE_ID#'',''shIMG#REGION_SEQUENCE_ID#'',''#IMAGE_PREFIX#themes/theme_1/rollup_plus_dgray.gif'',''#IMAGE_PREFIX#themes/theme_1/rollup_minus_dgray.gif'');" class="t1HideandShowRegionLink"><i'||
'mg src="#IMAGE_PREFIX#themes/theme_1/rollup_plus_dgray.gif" '||chr(10)||
'  id="shIMG#REGION_SEQUENCE_ID#" alt="" /></a></div>'||chr(10)||
'    <div class="hide-show-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>'||chr(10)||
'  </div>'||chr(10)||
'  <div class="hide" id="region#REGION_SEQUENCE_ID#">#BODY#</div>'||chr(10)||
'</div>'
 ,p_page_plug_template_name => 'Hide and Show Region'
 ,p_theme_id => 1
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
  p_id=> 3449918348954266 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/list_region_with_icon
prompt  ......region template 3450034113954266
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 3450034113954266 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="rounded-corner-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||chr(10)||
'  <div class="rc-red-top"><div class="rc-red-top-r">'||chr(10)||
'    <div class="rc-title">#TITLE#</div>'||chr(10)||
'    <div class="rc-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>'||chr(10)||
'  </div></div>'||chr(10)||
'  <div class="rc-body"><div class="rc-body-r">'||chr(10)||
'    <div class="rc-content-main">'||chr(10)||
'      <div cla'||
'ss="rc-image"><img src="#IMAGE_PREFIX#themes/theme_1/images/report_icon.png" alt="" /></div>'||chr(10)||
'      <div class="rc-content">#BODY#</div>'||chr(10)||
'    </div>'||chr(10)||
'  </div></div>'||chr(10)||
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>'||chr(10)||
'</div>'
 ,p_page_plug_template_name => 'List Region with Icon'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 1
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
  p_id=> 3450034113954266 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/navigation_region
prompt  ......region template 3450142358954266
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 3450142358954266 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="navigation-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||chr(10)||
'  <div>'||chr(10)||
'    <h3>#TITLE#</h3>'||chr(10)||
'    #BODY#'||chr(10)||
'  </div>'||chr(10)||
'</div>'
 ,p_page_plug_template_name => 'Navigation Region'
 ,p_theme_id => 1
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
  p_id=> 3450142358954266 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/navigation_region_alternative_1
prompt  ......region template 3450227081954266
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 3450227081954266 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="navigation-region-alt" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>#BODY#</div>'
 ,p_page_plug_template_name => 'Navigation Region, Alternative 1'
 ,p_theme_id => 1
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
  p_id=> 3450227081954266 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/region_without_buttons_and_titles
prompt  ......region template 3450325915954267
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 3450325915954267 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="borderless-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||chr(10)||
'  <div class="bl-body">#BODY#</div>'||chr(10)||
'</div>'
 ,p_page_plug_template_name => 'Region without Buttons and Titles'
 ,p_theme_id => 1
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
  p_id=> 3450325915954267 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/region_without_title
prompt  ......region template 3450428206954267
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 3450428206954267 + wwv_flow_api.g_id_offset
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
 ,p_theme_id => 1
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
  p_id=> 3450428206954267 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/report_filter_single_row
prompt  ......region template 3450524221954267
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 3450524221954267 + wwv_flow_api.g_id_offset
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
 ,p_theme_id => 1
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
  p_id=> 3450524221954267 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/reports_region
prompt  ......region template 3450629525954267
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 3450629525954267 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="rounded-corner-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||chr(10)||
'  <div class="rc-gray-top"><div class="rc-gray-top-r">'||chr(10)||
'    <div class="rc-title">#TITLE#</div>'||chr(10)||
'    <div class="rc-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>'||chr(10)||
'  </div></div>'||chr(10)||
'  <div class="rc-body"><div class="rc-body-r"><div class="rc-content-main">#BODY#</div></div>'||
'</div>'||chr(10)||
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>'||chr(10)||
'</div> '
 ,p_page_plug_template_name => 'Reports Region'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 1
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
  p_id=> 3450629525954267 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/reports_region_100_width
prompt  ......region template 3450719252954267
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 3450719252954267 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="rounded-corner-region float-left-100pct" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||chr(10)||
'  <div class="rc-gray-top"><div class="rc-gray-top-r">'||chr(10)||
'    <div class="rc-title">#TITLE#</div>'||chr(10)||
'    <div class="rc-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>'||chr(10)||
'  </div></div>'||chr(10)||
'  <div class="rc-body"><div class="rc-body-r"><div class="rc-content-main">'||
'#BODY#</div></div></div>'||chr(10)||
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>'||chr(10)||
'</div>'||chr(10)||
''
 ,p_page_plug_template_name => 'Reports Region 100% Width'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 1
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
  p_id=> 3450719252954267 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/reports_region_alternative_1
prompt  ......region template 3450833154954267
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 3450833154954267 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="rounded-corner-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||chr(10)||
'  <div class="rc-red-top"><div class="rc-red-top-r">'||chr(10)||
'    <div class="rc-title">#TITLE#</div>'||chr(10)||
'    <div class="rc-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>'||chr(10)||
'  </div></div>'||chr(10)||
'  <div class="rc-body"><div class="rc-body-r"><div class="rc-content-main">#BODY#</div></div></'||
'div>'||chr(10)||
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>'||chr(10)||
'</div>'
 ,p_page_plug_template_name => 'Reports Region, Alternative 1'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 1
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
  p_id=> 3450833154954267 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/sidebar_region
prompt  ......region template 3450938981954267
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 3450938981954267 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="sidebar-region" id="#REGION_STATIC_ID#">'||chr(10)||
'  <h3>#TITLE#</h3>'||chr(10)||
'  <div class="box">'||chr(10)||
'    <div class="frame"><div class="content">#BODY#</div></div>'||chr(10)||
'  </div>'||chr(10)||
'</div>'
 ,p_page_plug_template_name => 'Sidebar Region'
 ,p_plug_table_bgcolor => '#f7f7e7'
 ,p_theme_id => 1
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
  p_id=> 3450938981954267 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/sidebar_region_alternative_1
prompt  ......region template 3451041152954269
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 3451041152954269 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="sidebar-region-alt" id="#REGION_STATIC_ID#">'||chr(10)||
'  <h3>#TITLE#</h3>'||chr(10)||
'  <div class="box">'||chr(10)||
'    <div class="frame"><div class="content">#BODY#</div></div>'||chr(10)||
'  </div>'||chr(10)||
'</div>'
 ,p_page_plug_template_name => 'Sidebar Region, Alternative 1'
 ,p_plug_table_bgcolor => '#f7f7e7'
 ,p_theme_id => 1
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
  p_id=> 3451041152954269 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/top_bar
prompt  ......region template 3451121341954269
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 3451121341954269 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="topbar" style="width:100%;clear:both;" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||chr(10)||
'  <div class="topbar-top"><div class="topbar-top-r"></div></div>'||chr(10)||
'  <div class="topbar-body"><div class="topbar-body-r"><div class="topbar-content">'||chr(10)||
'      <div style="float:left">#BODY#</div>'||chr(10)||
'      <div style="float:right"><span style="margin-right:10px;">#CLOSE#</span>#COPY##DELETE##CHANGE##EDIT##PREVIO'||
'US##NEXT##CREATE##EXPAND#</div>'||chr(10)||
'   </div></div></div>'||chr(10)||
'  <div class="topbar-bottom"><div class="topbar-bottom-r"></div></div>'||chr(10)||
'</div>'
 ,p_page_plug_template_name => 'Top Bar'
 ,p_theme_id => 1
 ,p_theme_class_id => 21
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
  p_id=> 3451121341954269 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/wizard_region
prompt  ......region template 3451238676954269
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 3451238676954269 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="rounded-corner-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||chr(10)||
'  <div class="rc-red-top"><div class="rc-red-top-r">'||chr(10)||
'    <div class="rc-title">#TITLE#</div>'||chr(10)||
'    <div class="rc-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>'||chr(10)||
'  </div></div>'||chr(10)||
'  <div class="rc-body"><div class="rc-body-r"><div class="rc-content-main">#BODY#</div></div></'||
'div>'||chr(10)||
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>'||chr(10)||
'</div>'
 ,p_page_plug_template_name => 'Wizard Region'
 ,p_theme_id => 1
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
  p_id=> 3451238676954269 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/wizard_region_with_icon
prompt  ......region template 3451330165954269
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 3451330165954269 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="rounded-corner-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||chr(10)||
'  <div class="rc-red-top"><div class="rc-red-top-r">'||chr(10)||
'    <div class="rc-title">#TITLE#</div>'||chr(10)||
'    <div class="rc-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>'||chr(10)||
'  </div></div>'||chr(10)||
'  <div class="rc-body"><div class="rc-body-r"><div class="rc-content-main">#BODY#</div></div></'||
'div>'||chr(10)||
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>'||chr(10)||
'</div>'
 ,p_page_plug_template_name => 'Wizard Region with Icon'
 ,p_theme_id => 1
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
  p_id=> 3451330165954269 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ...List Templates
--
--application/shared_components/user_interface/templates/list/button_list
prompt  ......list template 3451430046954269
 
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

t2:=t2||'<button value="#TEXT#" onclick="javascript:location.href=''#LINK#''" class="button-alt3" type="button">'||chr(10)||
'  <span>#TEXT#</span>'||chr(10)||
'</button>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>3451430046954269 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Button List',
  p_theme_id  => 1,
  p_theme_class_id => 6,
  p_list_template_before_rows=>'<div class="button-list">',
  p_list_template_after_rows=>'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/dhtml_tree
prompt  ......list template 3451523212954279
 
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
  p_id=>3451523212954279 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'DHTML Tree',
  p_theme_id  => 1,
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
prompt  ......list template 3451623601954280
 
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
  p_id=>3451623601954280 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Hierarchical Expanding',
  p_theme_id  => 1,
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
prompt  ......list template 3451746916954280
 
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
  p_id=>3451746916954280 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Horizontal Images with Label List',
  p_theme_id  => 1,
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
prompt  ......list template 3451840980954281
 
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
  p_id=>3451840980954281 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Horizontal Links List',
  p_theme_id  => 1,
  p_theme_class_id => 3,
  p_list_template_before_rows=>'<div class="horizontal-links-list">',
  p_list_template_after_rows=>'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/pull_down_menu
prompt  ......list template 3451921211954281
 
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

t5:=t5||'<li class="dhtmlMenuItem1"><a href="#LINK#">#TEXT#</a><img src="#IMAGE_PREFIX#themes/theme_1/images/menu-small.gif" alt="Expand" onclick="app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)" />'||chr(10)||
'</li>';

t6:=t6||'<li class="dhtmlMenuItem1"><a href="#LINK#">#TEXT#</a><img src="#IMAGE_PREFIX#themes/theme_1/images/menu-small.gif" alt="Expand" onclick="app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)" /></li>';

t7:=t7||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" alt="" /></a></li>';

t8:=t8||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" alt="" / ></a></li>';

wwv_flow_api.create_list_template (
  p_id=>3451921211954281 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Pull Down Menu',
  p_theme_id  => 1,
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
prompt  ......list template 3452032994954281
 
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

t7:=t7||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>';

t8:=t8||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>';

wwv_flow_api.create_list_template (
  p_id=>3452032994954281 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Pull Down Menu with Image',
  p_theme_id  => 1,
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

--application/shared_components/user_interface/templates/list/region_display_selector
prompt  ......list template 3452116857954281
 
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
t:=t||'<td><a href="#LINK#" onclick="qF(this,''#LINK#'');return false;" id="#A01#" class="htmldbButtonListCurrent" title="#TEXT_ESC_SC#">#TEXT#</a></td>';

t2:=t2||'<td><a href="#LINK#" onclick="qF(this,''#LINK#'');return false;" id="#A01#"  class="htmldbButtonList" title="#TEXT_ESC_SC#">#TEXT#</a></td>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>3452116857954281 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Region Display Selector',
  p_theme_id  => 1,
  p_theme_class_id => 16,
  p_list_template_before_rows=>'<table class="htmldbButtonList" summary="" border="0" cellpadding="0" cellspacing="3" id="ql"><tr>',
  p_list_template_after_rows=>'</tr></table><script type="text/javascript">'||chr(10)||
'apex.jQuery(document).ready(function(){propTest();});'||chr(10)||
'</script>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/tabbed_navigation_list
prompt  ......list template 3452237445954282
 
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
  p_id=>3452237445954282 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Tabbed Navigation List',
  p_theme_id  => 1,
  p_theme_class_id => 7,
  p_list_template_before_rows=>'<ul class="tabbed-navigation-list">',
  p_list_template_after_rows=>'</ul>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_images_list
prompt  ......list template 3452326954954282
 
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
  p_id=>3452326954954282 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Images List',
  p_theme_id  => 1,
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
prompt  ......list template 3452419328954282
 
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
  p_id=>3452419328954282 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Ordered List',
  p_theme_id  => 1,
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
prompt  ......list template 3452521537954282
 
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
  p_id=>3452521537954282 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Sidebar List',
  p_theme_id  => 1,
  p_theme_class_id => 19,
  p_list_template_before_rows=>'<ul class="vertical-sidebar-list">',
  p_list_template_after_rows=>'</ul>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_unordered_list_with_bullets
prompt  ......list template 3452635586954282
 
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
  p_id=>3452635586954282 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Unordered List with Bullets',
  p_theme_id  => 1,
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
prompt  ......list template 3452748917954282
 
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
  p_id=>3452748917954282 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Unordered List without Bullets',
  p_theme_id  => 1,
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
prompt  ......list template 3452848763954283
 
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
  p_id=>3452848763954283 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Wizard Progress List',
  p_theme_id  => 1,
  p_theme_class_id => 17,
  p_list_template_before_rows=>'<div class="wizard-progress-list"><ul>',
  p_list_template_after_rows=>'</ul></div>',
  p_between_items=>'<li class="progress-indicator">&nbsp;</li>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

prompt  ...report templates
--
--application/shared_components/user_interface/templates/report/borderless_report
prompt  ......report template 3452933073954283
 
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
  p_id=> 3452933073954283 + wwv_flow_api.g_id_offset,
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
  p_row_template_after_rows =>'</table><div class="CVS">#EXTERNAL_LINK##CSV_LINK#</div></td>'||chr(10)||
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
  p_next_page_template=>'<a href="#LINK#" class="pagination">#PAGINATION_NEXT#<img src="#IMAGE_PREFIX#themes/theme_1/paginate_next.gif" alt="Next"></a>',
  p_previous_page_template=>'<a href="#LINK#" class="pagination"><img src="#IMAGE_PREFIX#themes/theme_1/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="pagination">#PAGINATION_NEXT_SET#<img src="#IMAGE_PREFIX#themes/theme_1/paginate_next.gif" alt="Next"></a>',
  p_previous_set_template=>'<a href="#LINK#" class="pagination"><img src="#IMAGE_PREFIX#themes/theme_1/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS_SET#</a>',
  p_row_style_checked=>'#ccc',
  p_theme_id  => 1,
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
  p_id => 3452933073954283 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/fixed_column_headers
prompt  ......report template 3453025197954293
 
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
  p_id=> 3453025197954293 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Fixed Column Headers',
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
  p_next_page_template=>'<a href="#LINK#" class="pagination">#PAGINATION_NEXT#<img src="#IMAGE_PREFIX#themes/theme_1/images/paginate_next.gif" alt="Next"></a>'||chr(10)||
'',
  p_previous_page_template=>'<a href="#LINK#" class="pagination"><img src="#IMAGE_PREFIX#themes/theme_1/images/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="pagination">#PAGINATION_NEXT_SET#<img src="#IMAGE_PREFIX#themes/theme_1/images/paginate_next.gif" alt="Next"></a>',
  p_previous_set_template=>'<a href="#LINK#" class="pagination"><img src="#IMAGE_PREFIX#themes/theme_1/images/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS_SET#</a>',
  p_row_style_mouse_over=>'#FFCCCC',
  p_row_style_checked=>'#CCFFCC',
  p_theme_id  => 1,
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
  p_id => 3453025197954293 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>'||chr(10)||
'');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/horizontal_border
prompt  ......report template 3453128277954293
 
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
  p_id=> 3453128277954293 + wwv_flow_api.g_id_offset,
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
  p_row_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#'||chr(10)||
'<tr>'||chr(10)||
'<td><table cellpadding="0" cellspacing="0" border="0" class="report-standard" summary="">',
  p_row_template_after_rows =>'</table><div class="CVS">#EXTERNAL_LINK##CSV_LINK#</div></td>'||chr(10)||
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
  p_next_page_template=>'<a href="#LINK#" class="pagination">#PAGINATION_NEXT#<img src="#IMAGE_PREFIX#themes/theme_1/paginate_next.gif" alt="Next"></a>'||chr(10)||
'',
  p_previous_page_template=>'<a href="#LINK#" class="pagination"><img src="#IMAGE_PREFIX#themes/theme_1/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="pagination">#PAGINATION_NEXT_SET#<img src="#IMAGE_PREFIX#themes/theme_1/paginate_next.gif" alt="Next"></a>',
  p_previous_set_template=>'<a href="#LINK#" class="pagination"><img src="#IMAGE_PREFIX#themes/theme_1/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS_SET#</a>',
  p_row_style_checked=>'#ccc',
  p_theme_id  => 1,
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
  p_id => 3453128277954293 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/one_column_unordered_list
prompt  ......report template 3453248231954294
 
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
  p_id=> 3453248231954294 + wwv_flow_api.g_id_offset,
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
  p_next_page_template=>'<a href="#LINK#" class="t1pagination">#PAGINATION_NEXT#<img src="#IMAGE_PREFIX#themes/theme_1/paginate_next.gif" alt="Next"></a>',
  p_previous_page_template=>'<a href="#LINK#" class="t1pagination"><img src="#IMAGE_PREFIX#themes/theme_1/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="t1pagination">#PAGINATION_NEXT_SET#<img src="#IMAGE_PREFIX#themes/theme_1/paginate_next.gif" alt="Next"></a>',
  p_previous_set_template=>'<a href="#LINK#" class="t1pagination"><img src="#IMAGE_PREFIX#themes/theme_1/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS_SET#</a>',
  p_theme_id  => 1,
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
  p_id => 3453248231954294 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'OMIT',
  p_row_template_after_last =>'OMIT');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/standard
prompt  ......report template 3453320253954294
 
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
  p_id=> 3453320253954294 + wwv_flow_api.g_id_offset,
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
  p_row_template_after_rows =>'</table><div class="CVS">#EXTERNAL_LINK##CSV_LINK#</div></td>'||chr(10)||
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
  p_next_page_template=>'<a href="#LINK#" class="pagination">#PAGINATION_NEXT#<img src="#IMAGE_PREFIX#themes/theme_1/paginate_next.gif" alt="Next"></a>',
  p_previous_page_template=>'<a href="#LINK#" class="pagination"><img src="#IMAGE_PREFIX#themes/theme_1/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="pagination">#PAGINATION_NEXT_SET#<img src="#IMAGE_PREFIX#themes/theme_1/paginate_next.gif" alt="Next"></a>',
  p_previous_set_template=>'<a href="#LINK#" class="pagination"><img src="#IMAGE_PREFIX#themes/theme_1/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS_SET#</a>',
  p_row_style_checked=>'#ccc',
  p_theme_id  => 1,
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
  p_id => 3453320253954294 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/standard_alternating_row_colors
prompt  ......report template 3453441326954294
 
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
  p_id=> 3453441326954294 + wwv_flow_api.g_id_offset,
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
  p_next_page_template=>'<a href="#LINK#" class="pagination">#PAGINATION_NEXT#<img src="#IMAGE_PREFIX#themes/theme_1/images/paginate_next.gif" alt="Next"></a>'||chr(10)||
'',
  p_previous_page_template=>'<a href="#LINK#" class="pagination"><img src="#IMAGE_PREFIX#themes/theme_1/images/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="pagination">#PAGINATION_NEXT_SET#<img src="#IMAGE_PREFIX#themes/theme_1/images/paginate_next.gif" alt="Next"></a>',
  p_previous_set_template=>'<a href="#LINK#" class="pagination"><img src="#IMAGE_PREFIX#themes/theme_1/images/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS_SET#</a>',
  p_row_style_checked=>'#ccc',
  p_theme_id  => 1,
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
  p_id => 3453441326954294 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>'||chr(10)||
'');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/two_column_portlet
prompt  ......report template 3453522876954294
 
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
  p_id=> 3453522876954294 + wwv_flow_api.g_id_offset,
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
  p_theme_id  => 1,
  p_theme_class_id => 7,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/value_attribute_pairs
prompt  ......report template 3453622088954294
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<tr><th class="t1header">#COLUMN_HEADER#</th><td class="t1data">#COLUMN_VALUE#</td></tr>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 3453622088954294 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Value Attribute Pairs',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#<tr><td><table cellpadding="0" cellspacing="0" border="0" summary="" class="t1ValueAttributePairs">',
  p_row_template_after_rows =>'</table><div class="t1CVS">#EXTERNAL_LINK##CSV_LINK#</div></td></tr>#PAGINATION#</table>',
  p_row_template_table_attr =>'',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="#LINK#" class="t1pagination">#PAGINATION_NEXT#<img src="#IMAGE_PREFIX#themes/theme_1/paginate_next.gif" alt="Next"></a>',
  p_previous_page_template=>'<a href="#LINK#" class="t1pagination"><img src="#IMAGE_PREFIX#themes/theme_1/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="t1pagination">#PAGINATION_NEXT_SET#<img src="#IMAGE_PREFIX#themes/theme_1/paginate_next.gif" alt="Next"></a>',
  p_previous_set_template=>'<a href="#LINK#" class="t1pagination"><img src="#IMAGE_PREFIX#themes/theme_1/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS_SET#</a>',
  p_theme_id  => 1,
  p_theme_class_id => 6,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/value_attribute_pairs_div
prompt  ......report template 3453738073954294
 
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
  p_id=> 3453738073954294 + wwv_flow_api.g_id_offset,
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
  p_theme_id  => 1,
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
prompt  ......label template 3453845466954295
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 3453845466954295 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'No Label',
  p_template_body1=>'<span class="no-label">',
  p_template_body2=>'</span>',
  p_on_error_before_label=>'<div class="t1InlineError">',
  p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>',
  p_theme_id  => 1,
  p_theme_class_id => 13,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/optional
prompt  ......label template 3453932076954297
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 3453932076954297 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Optional',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" tabindex="999"><span class="optional">',
  p_template_body2=>'</span></label>',
  p_on_error_before_label=>'<div class="t1InlineError">',
  p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>',
  p_theme_id  => 1,
  p_theme_class_id => 3,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/optional_with_help
prompt  ......label template 3454045087954297
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 3454045087954297 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Optional with help',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" tabindex="999"><a class="optional-w-help" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999">',
  p_template_body2=>'</a></label>',
  p_on_error_before_label=>'<div class="t1InlineError">',
  p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>',
  p_theme_id  => 1,
  p_theme_class_id => 1,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/required
prompt  ......label template 3454129327954298
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 3454129327954298 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Required',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" tabindex="999"><img src="#IMAGE_PREFIX#themes/theme_1/images/required.gif" alt="#VALUE_REQUIRED#" tabindex="999" /><span class="required">',
  p_template_body2=>'</span></label>',
  p_on_error_before_label=>'<div class="t1InlineError">',
  p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>',
  p_theme_id  => 1,
  p_theme_class_id => 4,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/required_with_help
prompt  ......label template 3454245408954298
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 3454245408954298 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Required with help',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" tabindex="999"><img src="#IMAGE_PREFIX#themes/theme_1/images/required.gif" alt="#VALUE_REQUIRED#" tabindex="999" /><a class="required-w-help" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999">',
  p_template_body2=>'</a></label>',
  p_on_error_before_label=>'<div class="t1InlineError">',
  p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>',
  p_theme_id  => 1,
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
prompt  ......template 3454318553954298
 
begin
 
begin
wwv_flow_api.create_menu_template (
  p_id=> 3454318553954298 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=>'Breadcrumb Menu',
  p_before_first=>'<div id="breadcrumbs"><ul class="breadcrumb-list">',
  p_current_page_option=>'<li class="current">#NAME#</li>',
  p_non_current_page_option=>'<li class="noncurrent"><a href="#LINK#">#NAME#</a></li>',
  p_menu_link_attributes=>'',
  p_between_levels=>'&nbsp;&gt;&nbsp;',
  p_after_last=>'</ul></div>',
  p_max_levels=>12,
  p_start_with_node=>'PARENT_TO_LEAF',
  p_theme_id  => 1,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_template_comments=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/breadcrumb/hierarchical_menu
prompt  ......template 3454442932954300
 
begin
 
begin
wwv_flow_api.create_menu_template (
  p_id=> 3454442932954300 + wwv_flow_api.g_id_offset,
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
  p_theme_id  => 1,
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
prompt  ......template 3455126661954305
 
begin
 
begin
wwv_flow_api.create_popup_lov_template (
  p_id=> 3455126661954305 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_popup_icon=>'#IMAGE_PREFIX#htmldb/icons/view_small.gif',
  p_popup_icon_attr=>'width="18" height="18" alt="Popup Lov"',
  p_popup_icon2=>'',
  p_popup_icon_attr2=>'',
  p_page_name=>'winlov',
  p_page_title=>'Search Dialog',
  p_page_html_head=>'<link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon"><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_1/css/theme_4_0.css" type="text/css">'||chr(10)||
'',
  p_page_body_attr=>'onload="first_field()" style="margin:0;"',
  p_before_field_text=>'<div class="popup-head">',
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
  p_result_row_x_of_y=>'<br /><div style="padding:2px; font-size:8pt;">Row(s) #FIRST_ROW# - #LAST_ROW#</div>',
  p_result_rows_per_pg=>500,
  p_before_result_set=>'<div class="popup-body">',
  p_theme_id  => 1,
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
prompt  ......template 3454533568954300
 
begin
 
begin
wwv_flow_api.create_calendar_template(
  p_id=> 3454533568954300 + wwv_flow_api.g_id_offset,
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
  p_theme_id  => 1,
  p_theme_class_id => 1,
  p_reference_id=> null);
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/calendar/calendar_alternative_1
prompt  ......template 3454744063954303
 
begin
 
begin
wwv_flow_api.create_calendar_template(
  p_id=> 3454744063954303 + wwv_flow_api.g_id_offset,
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
  p_month_open_format=> '<table border="0" cellpadding="0" cellspacing="4" summary="0" class="CalendarAlternative1">',
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
  p_weekly_title_format => '<table cellspacing="4" cellpadding="0" border="0" summary="" class="WeekCalendarAlternative1Holder">'||chr(10)||
'<tr>'||chr(10)||
'<td class="MonthTitle" id="test">#WTITLE#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td>',
  p_weekly_day_of_week_format => '<th class="DayOfWeek">#IDAY#<br>#MM#/#DD#</th>',
  p_weekly_month_open_format => '<table border="0" cellpadding="0" cellspacing="4" summary="0" class="WeekCalendarAlternative1">',
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
  p_daily_month_title_format => '<table cellspacing="4" cellpadding="0" border="0" summary="" class="DayCalendarAlternative1Holder"> <tr><td class="MonthTitle">#IMONTH# #DD#, #YYYY#</td></tr><tr><td>'||chr(10)||
'',
  p_daily_month_open_format => '<table border="0" cellpadding="2" cellspacing="4" summary="0" class="DayCalendarAlternative1">',
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
  p_cust_month_open_format => '<table border="0" cellpadding="0" cellspacing="4" summary="0" class="CalendarAlternative1">',
  p_cust_month_close_format => '</table></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'',
  p_cust_week_title_format => '',
  p_cust_week_open_format => '<tr>',
  p_cust_week_close_format => '</tr> ',
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
  p_cust_wk_month_open_format => '<table border="0" cellpadding="0" cellspacing="4" summary="0" class="WeekCalendarAlternative1">',
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
  p_theme_id  => 1,
  p_theme_class_id => 2,
  p_reference_id=> null);
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/calendar/small_calendar
prompt  ......template 3454940544954304
 
begin
 
begin
wwv_flow_api.create_calendar_template(
  p_id=> 3454940544954304 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_cal_template_name=>'Small Calendar',
  p_translate_this_template=> 'N',
  p_day_of_week_format=> '<th class="day-of-week">#DY#</th>',
  p_month_title_format=> '<table cellspacing="2" cellpadding="0" border="0" summary="" class="small-calendar-holder"> '||chr(10)||
' <tr>'||chr(10)||
'   <td class="month-title">#IMONTH# #YYYY#</td>'||chr(10)||
' </tr>'||chr(10)||
' <tr>'||chr(10)||
' <td>',
  p_month_open_format=> '<table border="0" cellpadding="0" cellspacing="2" summary="" class="small-calendar">',
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
  p_weekly_title_format => '<table cellspacing="2" cellpadding="0" border="0" summary="" class="SmallWeekCalendarHolder">'||chr(10)||
'<tr>'||chr(10)||
'<td class="MonthTitle" id="test">#WTITLE#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td>',
  p_weekly_day_of_week_format => '<th class="DayOfWeek">#DY#<br />#MM#/#DD#</th>',
  p_weekly_month_open_format => '<table border="0" cellpadding="0" cellspacing="2" summary="0" class="SmallWeekCalendar">',
  p_weekly_month_close_format => '</table></td></tr></table>',
  p_weekly_day_title_format => '',
  p_weekly_day_open_format => '<td class="Day" valign="top">',
  p_weekly_day_close_format => '<br /></td>',
  p_weekly_today_open_format => '<td class="t1Today" valign="top">',
  p_weekly_weekend_title_format => '',
  p_weekly_weekend_open_format => '<td valign="top" class="NonDay">',
  p_weekly_weekend_close_format => '<br /></td>',
  p_weekly_time_open_format => '<th class="Hour">',
  p_weekly_time_close_format => '<br /></th>',
  p_weekly_time_title_format => '#TIME#',
  p_weekly_hour_open_format => '<tr>',
  p_weekly_hour_close_format => '</tr>',
  p_daily_day_of_week_format => '<th class="DayOfWeek">#DY# #DD#/#MM#</th>',
  p_daily_month_title_format => '<table cellspacing="2" cellpadding="0" border="0" summary="" class="SmallDayCalendarHolder"> <tr> <td class="MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr><tr><td>'||chr(10)||
'',
  p_daily_month_open_format => '<table border="0" cellpadding="2" cellspacing="1" summary="0" class="SmallDayCalendar">',
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
  p_cust_week_close_format => '</tr> ',
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
  p_cust_wk_month_close_format => '</table></td></tr></table>',
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
  p_theme_id  => 1,
  p_theme_class_id => 3,
  p_reference_id=> null);
end;
null;
 
end;
/

prompt  ...application themes
--
--application/shared_components/user_interface/themes/simple_red
prompt  ......theme 3455224753954307
begin
wwv_flow_api.create_theme (
  p_id =>3455224753954307 + wwv_flow_api.g_id_offset,
  p_flow_id =>wwv_flow.g_flow_id,
  p_theme_id  => 1,
  p_theme_name=>'Simple Red',
  p_default_page_template=>3448124029954251 + wwv_flow_api.g_id_offset,
  p_error_template=>3448124029954251 + wwv_flow_api.g_id_offset,
  p_printer_friendly_template=>3448320382954251 + wwv_flow_api.g_id_offset,
  p_breadcrumb_display_point=>'REGION_POSITION_01',
  p_sidebar_display_point=>'REGION_POSITION_02',
  p_login_template=>3447323704954239 + wwv_flow_api.g_id_offset,
  p_default_button_template=>3448825623954253 + wwv_flow_api.g_id_offset,
  p_default_region_template=>3450629525954267 + wwv_flow_api.g_id_offset,
  p_default_chart_template =>3449744158954266 + wwv_flow_api.g_id_offset,
  p_default_form_template  =>3449832173954266 + wwv_flow_api.g_id_offset,
  p_default_reportr_template   =>3450629525954267 + wwv_flow_api.g_id_offset,
  p_default_tabform_template=>3450629525954267 + wwv_flow_api.g_id_offset,
  p_default_wizard_template=>3451238676954269 + wwv_flow_api.g_id_offset,
  p_default_menur_template=>3449437649954265 + wwv_flow_api.g_id_offset,
  p_default_listr_template=>3450034113954266 + wwv_flow_api.g_id_offset,
  p_default_irr_template=>3450325915954267 + wwv_flow_api.g_id_offset,
  p_default_report_template   =>3453320253954294 + wwv_flow_api.g_id_offset,
  p_default_label_template=>3454045087954297 + wwv_flow_api.g_id_offset,
  p_default_menu_template=>3454318553954298 + wwv_flow_api.g_id_offset,
  p_default_calendar_template=>3454533568954300 + wwv_flow_api.g_id_offset,
  p_default_list_template=>3452635586954282 + wwv_flow_api.g_id_offset,
  p_default_option_label=>3454045087954297 + wwv_flow_api.g_id_offset,
  p_default_required_label=>3454245408954298 + wwv_flow_api.g_id_offset);
end;
/
 
prompt  ...build options used by application 108
--
 
begin
 
null;
 
end;
/

--application/shared_components/globalization/messages
prompt  ...messages used by application: 108
--
--application/shared_components/globalization/dyntranslations
prompt  ...dynamic translations used by application: 108
--
--application/shared_components/globalization/language
prompt  ...Language Maps for Application 108
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
prompt  ......scheme 3455319564954350
 
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
  p_id=> 3455319564954350 + wwv_flow_api.g_id_offset,
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
prompt  ......scheme 3455426125954352
 
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
  p_id=> 3455426125954352 + wwv_flow_api.g_id_offset,
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
prompt  ......scheme 3455519443954352
 
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
  p_id=> 3455519443954352 + wwv_flow_api.g_id_offset,
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

prompt  ...plugins
--
--application/shared_components/plugins/dynamic_action/com_clarifit_apexplugin_simple_modal_show
 
begin
 
wwv_flow_api.create_plugin (
  p_id => 4361208140287157 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_type => 'DYNAMIC ACTION'
 ,p_name => 'COM.CLARIFIT.APEXPLUGIN.SIMPLE_MODAL_SHOW'
 ,p_display_name => 'ClariFit Simple Modal - Show'
 ,p_category => 'EFFECT'
 ,p_image_prefix => '#PLUGIN_PREFIX#'
 ,p_plsql_code => 
'-- Developed by http://www.ClariFit.com'||chr(10)||
' -- apex@clarifit.com'||chr(10)||
'-- Using: http://www.ericmmartin.com/projects/simplemodal/'||chr(10)||
'FUNCTION simple_modal_show (p_dynamic_action IN apex_plugin.t_dynamic_action, p_plugin IN apex_plugin.t_plugin)'||chr(10)||
'  RETURN apex_plugin.t_dynamic_action_render_result'||chr(10)||
'AS'||chr(10)||
'  v_result                      apex_plugin.t_dynamic_action_render_result;'||chr(10)||
''||chr(10)||
'  -- Plugin Attributes'||chr(10)||
'  v_hide_on_'||
'close                     apex_application_page_items.attribute_01%TYPE := p_dynamic_action.attribute_01; -- Hide on close'||chr(10)||
'  v_opacity                     apex_application_page_items.attribute_01%TYPE := p_dynamic_action.attribute_02; -- opacity'||chr(10)||
'  v_esc_close                   apex_application_page_items.attribute_01%TYPE := p_dynamic_action.attribute_03; -- Escape on close'||chr(10)||
'  v_modal_window       '||
'         apex_application_page_items.attribute_01%TYPE := p_dynamic_action.attribute_04; -- modal_window'||chr(10)||
'  v_background_color            apex_application_page_items.attribute_01%TYPE := p_dynamic_action.attribute_05; -- background_color'||chr(10)||
'BEGIN'||chr(10)||
'  -- During plug-in development it''s very helpful to have some debug information'||chr(10)||
'  IF APEX_APPLICATION.g_debug THEN'||chr(10)||
'    apex_plugin_util.debug_dynamic_action'||
' (p_plugin => p_plugin, p_dynamic_action => p_dynamic_action);'||chr(10)||
'  END IF;'||chr(10)||
''||chr(10)||
'  -- Load JavaScript Libraries'||chr(10)||
'  apex_javascript.add_library (p_name => ''jquery.simplemodal'', p_directory => p_plugin.file_prefix, p_version => ''-1.3.5.min'');'||chr(10)||
'  apex_javascript.add_library (p_name => ''$clarifit'', p_directory => p_plugin.file_prefix, p_version => ''_1.0.0'');'||chr(10)||
'  apex_javascript.add_library (p_name => ''$cfap'', p_'||
'directory => p_plugin.file_prefix, p_version => ''_1.0.0'');'||chr(10)||
'  apex_javascript.add_library (p_name => ''$logger'', p_directory => p_plugin.file_prefix, p_version => ''_1.0.0'');'||chr(10)||
''||chr(10)||
'  -- Set JS function'||chr(10)||
'  v_result.javascript_function := ''$cfap.simpleModal.show'';'||chr(10)||
''||chr(10)||
'  -- Set Attributes'||chr(10)||
'  v_result.attribute_01 :=  v_hide_on_close; -- Opacity'||chr(10)||
'  v_result.attribute_02 := v_opacity; -- Opacity'||chr(10)||
'  v_result.attribute'||
'_03 := v_esc_close; -- Esc on Close'||chr(10)||
'  v_result.attribute_04 := v_modal_window; -- Modal Window'||chr(10)||
'  v_result.attribute_05 := v_background_color; -- Background Color'||chr(10)||
''||chr(10)||
'  RETURN v_result;'||chr(10)||
'END simple_modal_show;'
 ,p_render_function => 'simple_modal_show'
 ,p_standard_attributes => 'REGION:DOM_OBJECT:JQUERY_SELECTOR:REQUIRED'
 ,p_help_text => '<p>'||chr(10)||
'	This Plug-in is based on the following jQuery plug-in:&nbsp;<a href="http://www.ericmmartin.com/projects/simplemodal/#options">http://www.ericmmartin.com/projects/simplemodal</a>&nbsp;It allows developers to make any object(s) modal. For example, if you wanted a region to be modal, you would define the region, then create a dynamic action (lets say on a button click) that would trigger the region to become modal.</p>'||chr(10)||
'<p>'||chr(10)||
'	The object(s) defined in the <em>Affected Elements</em> section will be the objects that become modal.</p>'||chr(10)||
'<p>'||chr(10)||
'	Please see:&nbsp;<a href="http://www.ericmmartin.com/projects/simplemodal/#options">http://www.ericmmartin.com/projects/simplemodal</a>&nbsp;for more information</p>'||chr(10)||
''
 ,p_version_identifier => '1.0'
 ,p_about_url => 'http://www.ClariFit.com'
  );
wwv_flow_api.create_plugin_attribute (
  p_id => 4431128448133596 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 4361208140287157 + wwv_flow_api.g_id_offset
 ,p_attribute_scope => 'COMPONENT'
 ,p_attribute_sequence => 1
 ,p_display_sequence => 10
 ,p_prompt => 'Hide on Close'
 ,p_attribute_type => 'SELECT LIST'
 ,p_is_required => true
 ,p_default_value => 'true'
 ,p_is_translatable => false
 ,p_help_text => 'Will hide the Affected Elements when modal screen closes. If set to "No" elements will return back to their default state (not recommended to set to "No").'
  );
wwv_flow_api.create_plugin_attr_value (
  p_id => 4431731911134548 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_attribute_id => 4431128448133596 + wwv_flow_api.g_id_offset
 ,p_display_sequence => 10
 ,p_display_value => 'Yes'
 ,p_return_value => 'true'
  );
wwv_flow_api.create_plugin_attr_value (
  p_id => 4432133989135181 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_attribute_id => 4431128448133596 + wwv_flow_api.g_id_offset
 ,p_display_sequence => 20
 ,p_display_value => 'No'
 ,p_return_value => 'false'
  );
wwv_flow_api.create_plugin_attribute (
  p_id => 4385805971488673 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 4361208140287157 + wwv_flow_api.g_id_offset
 ,p_attribute_scope => 'COMPONENT'
 ,p_attribute_sequence => 2
 ,p_display_sequence => 30
 ,p_prompt => 'Opacity'
 ,p_attribute_type => 'SELECT LIST'
 ,p_is_required => true
 ,p_default_value => '50'
 ,p_is_translatable => false
 ,p_depending_on_attribute_id => 4396923331303157 + wwv_flow_api.g_id_offset
 ,p_depending_on_condition_type => 'EQUALS'
 ,p_depending_on_expression => 'true'
 ,p_help_text => 'The opacity value for the overlay'
  );
wwv_flow_api.create_plugin_attr_value (
  p_id => 4386509434489693 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_attribute_id => 4385805971488673 + wwv_flow_api.g_id_offset
 ,p_display_sequence => 10
 ,p_display_value => '0%'
 ,p_return_value => '0'
  );
wwv_flow_api.create_plugin_attr_value (
  p_id => 4386911165490197 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_attribute_id => 4385805971488673 + wwv_flow_api.g_id_offset
 ,p_display_sequence => 20
 ,p_display_value => '10%'
 ,p_return_value => '10'
  );
wwv_flow_api.create_plugin_attr_value (
  p_id => 4387313243490727 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_attribute_id => 4385805971488673 + wwv_flow_api.g_id_offset
 ,p_display_sequence => 30
 ,p_display_value => '20%'
 ,p_return_value => '20'
  );
wwv_flow_api.create_plugin_attr_value (
  p_id => 4387714628491167 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_attribute_id => 4385805971488673 + wwv_flow_api.g_id_offset
 ,p_display_sequence => 40
 ,p_display_value => '30%'
 ,p_return_value => '30'
  );
wwv_flow_api.create_plugin_attr_value (
  p_id => 4388116013491581 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_attribute_id => 4385805971488673 + wwv_flow_api.g_id_offset
 ,p_display_sequence => 50
 ,p_display_value => '40%'
 ,p_return_value => '40'
  );
wwv_flow_api.create_plugin_attr_value (
  p_id => 4388518091492113 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_attribute_id => 4385805971488673 + wwv_flow_api.g_id_offset
 ,p_display_sequence => 60
 ,p_display_value => '50%'
 ,p_return_value => '50'
  );
wwv_flow_api.create_plugin_attr_value (
  p_id => 4388919823492629 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_attribute_id => 4385805971488673 + wwv_flow_api.g_id_offset
 ,p_display_sequence => 70
 ,p_display_value => '60%'
 ,p_return_value => '60'
  );
wwv_flow_api.create_plugin_attr_value (
  p_id => 4389330212495688 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_attribute_id => 4385805971488673 + wwv_flow_api.g_id_offset
 ,p_display_sequence => 80
 ,p_display_value => '70%'
 ,p_return_value => '70'
  );
wwv_flow_api.create_plugin_attr_value (
  p_id => 4389731943496185 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_attribute_id => 4385805971488673 + wwv_flow_api.g_id_offset
 ,p_display_sequence => 90
 ,p_display_value => '80%'
 ,p_return_value => '80'
  );
wwv_flow_api.create_plugin_attr_value (
  p_id => 4390134368496895 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_attribute_id => 4385805971488673 + wwv_flow_api.g_id_offset
 ,p_display_sequence => 100
 ,p_display_value => '90%'
 ,p_return_value => '90'
  );
wwv_flow_api.create_plugin_attr_value (
  p_id => 4390536792497526 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_attribute_id => 4385805971488673 + wwv_flow_api.g_id_offset
 ,p_display_sequence => 110
 ,p_display_value => '100%'
 ,p_return_value => '100'
  );
wwv_flow_api.create_plugin_attribute (
  p_id => 4394107103545761 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 4361208140287157 + wwv_flow_api.g_id_offset
 ,p_attribute_scope => 'COMPONENT'
 ,p_attribute_sequence => 3
 ,p_display_sequence => 20
 ,p_prompt => 'Esc Close'
 ,p_attribute_type => 'SELECT LIST'
 ,p_is_required => true
 ,p_default_value => 'true'
 ,p_is_translatable => false
 ,p_help_text => 'Allow Esc keypress to close the modal dialog'
  );
wwv_flow_api.create_plugin_attr_value (
  p_id => 4394809873546543 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_attribute_id => 4394107103545761 + wwv_flow_api.g_id_offset
 ,p_display_sequence => 10
 ,p_display_value => 'Yes'
 ,p_return_value => 'true'
  );
wwv_flow_api.create_plugin_attr_value (
  p_id => 4395211605547052 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_attribute_id => 4394107103545761 + wwv_flow_api.g_id_offset
 ,p_display_sequence => 20
 ,p_display_value => 'No'
 ,p_return_value => 'false'
  );
wwv_flow_api.create_plugin_attribute (
  p_id => 4396923331303157 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 4361208140287157 + wwv_flow_api.g_id_offset
 ,p_attribute_scope => 'COMPONENT'
 ,p_attribute_sequence => 4
 ,p_display_sequence => 10
 ,p_prompt => 'Modal Window'
 ,p_attribute_type => 'SELECT LIST'
 ,p_is_required => true
 ,p_default_value => 'true'
 ,p_is_translatable => false
 ,p_help_text => 'If No, the overlay, iframe, and certain events will be disabled allowing the user to interace with the page below the dialog.'
  );
wwv_flow_api.create_plugin_attr_value (
  p_id => 4397625409303782 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_attribute_id => 4396923331303157 + wwv_flow_api.g_id_offset
 ,p_display_sequence => 10
 ,p_display_value => 'Yes'
 ,p_return_value => 'true'
  );
wwv_flow_api.create_plugin_attr_value (
  p_id => 4398027486304355 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_attribute_id => 4396923331303157 + wwv_flow_api.g_id_offset
 ,p_display_sequence => 20
 ,p_display_value => 'No'
 ,p_return_value => 'false'
  );
wwv_flow_api.create_plugin_attribute (
  p_id => 4403033776410227 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 4361208140287157 + wwv_flow_api.g_id_offset
 ,p_attribute_scope => 'COMPONENT'
 ,p_attribute_sequence => 5
 ,p_display_sequence => 50
 ,p_prompt => 'Background Color'
 ,p_attribute_type => 'TEXT'
 ,p_is_required => false
 ,p_display_length => 7
 ,p_max_length => 15
 ,p_is_translatable => false
 ,p_depending_on_attribute_id => 4396923331303157 + wwv_flow_api.g_id_offset
 ,p_depending_on_condition_type => 'EQUALS'
 ,p_depending_on_expression => 'true'
 ,p_help_text => 'Background color for modal window. If HEX value, use hash (#) symbol. If left empty will default to dark grey'
  );
null;
 
end;
/

 
begin
 
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A0A202A2053696D706C654D6F64616C20312E332E35202D206A517565727920506C7567696E0A202A20687474703A2F2F7777772E657269636D6D617274696E2E636F6D2F70726F6A656374732F73696D706C656D6F64616C2F0A202A20436F707972';
wwv_flow_api.g_varchar2_table(2) := '696768742028632920323031302045726963204D617274696E2028687474703A2F2F747769747465722E636F6D2F457269634D4D617274696E290A202A204475616C206C6963656E73656420756E64657220746865204D495420616E642047504C206C69';
wwv_flow_api.g_varchar2_table(3) := '63656E7365730A202A205265766973696F6E3A202449643A206A71756572792E73696D706C656D6F64616C2E6A732032343520323031302D30332D32352032303A34313A31355A20656D617274696E323420240A202A2F0A3B2866756E6374696F6E2824';
wwv_flow_api.g_varchar2_table(4) := '297B766172206965363D242E62726F777365722E6D73696526267061727365496E7428242E62726F777365722E76657273696F6E293D3D362626747970656F662077696E646F775B27584D4C4874747052657175657374275D213D226F626A656374222C';
wwv_flow_api.g_varchar2_table(5) := '6965517569726B733D6E756C6C2C773D5B5D3B242E6D6F64616C3D66756E6374696F6E28646174612C6F7074696F6E73297B72657475726E20242E6D6F64616C2E696D706C2E696E697428646174612C6F7074696F6E73293B7D3B242E6D6F64616C2E63';
wwv_flow_api.g_varchar2_table(6) := '6C6F73653D66756E6374696F6E28297B242E6D6F64616C2E696D706C2E636C6F736528293B7D3B242E666E2E6D6F64616C3D66756E6374696F6E286F7074696F6E73297B72657475726E20242E6D6F64616C2E696D706C2E696E697428746869732C6F70';
wwv_flow_api.g_varchar2_table(7) := '74696F6E73293B7D3B242E6D6F64616C2E64656661756C74733D7B617070656E64546F3A27626F6479272C666F6375733A747275652C6F7061636974793A35302C6F7665726C617949643A2773696D706C656D6F64616C2D6F7665726C6179272C6F7665';
wwv_flow_api.g_varchar2_table(8) := '726C61794373733A7B7D2C636F6E7461696E657249643A2773696D706C656D6F64616C2D636F6E7461696E6572272C636F6E7461696E65724373733A7B7D2C6461746149643A2773696D706C656D6F64616C2D64617461272C646174614373733A7B7D2C';
wwv_flow_api.g_varchar2_table(9) := '6D696E4865696768743A6E756C6C2C6D696E57696474683A6E756C6C2C6D61784865696768743A6E756C6C2C6D617857696474683A6E756C6C2C6175746F526573697A653A66616C73652C6175746F506F736974696F6E3A747275652C7A496E6465783A';
wwv_flow_api.g_varchar2_table(10) := '313030302C636C6F73653A747275652C636C6F736548544D4C3A273C6120636C6173733D226D6F64616C436C6F7365496D6722207469746C653D22436C6F7365223E3C2F613E272C636C6F7365436C6173733A2773696D706C656D6F64616C2D636C6F73';
wwv_flow_api.g_varchar2_table(11) := '65272C657363436C6F73653A747275652C6F7665726C6179436C6F73653A66616C73652C706F736974696F6E3A6E756C6C2C706572736973743A66616C73652C6D6F64616C3A747275652C6F6E4F70656E3A6E756C6C2C6F6E53686F773A6E756C6C2C6F';
wwv_flow_api.g_varchar2_table(12) := '6E436C6F73653A6E756C6C7D3B242E6D6F64616C2E696D706C3D7B6F3A6E756C6C2C643A7B7D2C696E69743A66756E6374696F6E28646174612C6F7074696F6E73297B76617220733D746869733B696628732E642E64617461297B72657475726E206661';
wwv_flow_api.g_varchar2_table(13) := '6C73653B7D6965517569726B733D242E62726F777365722E6D736965262621242E626F784D6F64656C3B732E6F3D242E657874656E64287B7D2C242E6D6F64616C2E64656661756C74732C6F7074696F6E73293B732E7A496E6465783D732E6F2E7A496E';
wwv_flow_api.g_varchar2_table(14) := '6465783B732E6F6363623D66616C73653B696628747970656F6620646174613D3D276F626A65637427297B646174613D6461746120696E7374616E63656F66206A51756572793F646174613A242864617461293B732E642E706C616365686F6C6465723D';
wwv_flow_api.g_varchar2_table(15) := '66616C73653B696628646174612E706172656E7428292E706172656E7428292E73697A6528293E30297B646174612E6265666F7265282428273C7370616E3E3C2F7370616E3E27292E6174747228276964272C2773696D706C656D6F64616C2D706C6163';
wwv_flow_api.g_varchar2_table(16) := '65686F6C64657227292E637373287B646973706C61793A276E6F6E65277D29293B732E642E706C616365686F6C6465723D747275653B732E646973706C61793D646174612E6373732827646973706C617927293B69662821732E6F2E7065727369737429';
wwv_flow_api.g_varchar2_table(17) := '7B732E642E6F7269673D646174612E636C6F6E652874727565293B7D7D7D656C736520696628747970656F6620646174613D3D27737472696E67277C7C747970656F6620646174613D3D276E756D62657227297B646174613D2428273C6469763E3C2F64';
wwv_flow_api.g_varchar2_table(18) := '69763E27292E68746D6C2864617461293B7D656C73657B616C657274282753696D706C654D6F64616C204572726F723A20556E737570706F72746564206461746120747970653A20272B747970656F662064617461293B72657475726E20733B7D732E63';
wwv_flow_api.g_varchar2_table(19) := '72656174652864617461293B646174613D6E756C6C3B732E6F70656E28293B696628242E697346756E6374696F6E28732E6F2E6F6E53686F7729297B732E6F2E6F6E53686F772E6170706C7928732C5B732E645D293B7D72657475726E20733B7D2C6372';
wwv_flow_api.g_varchar2_table(20) := '656174653A66756E6374696F6E2864617461297B76617220733D746869733B773D732E67657444696D656E73696F6E7328293B696628732E6F2E6D6F64616C2626696536297B732E642E696672616D653D2428273C696672616D65207372633D226A6176';
wwv_flow_api.g_varchar2_table(21) := '617363726970743A66616C73653B223E3C2F696672616D653E27292E63737328242E657874656E6428732E6F2E696672616D654373732C7B646973706C61793A276E6F6E65272C6F7061636974793A302C706F736974696F6E3A276669786564272C6865';
wwv_flow_api.g_varchar2_table(22) := '696768743A775B305D2C77696474683A775B315D2C7A496E6465783A732E6F2E7A496E6465782C746F703A302C6C6566743A307D29292E617070656E64546F28732E6F2E617070656E64546F293B7D732E642E6F7665726C61793D2428273C6469763E3C';
wwv_flow_api.g_varchar2_table(23) := '2F6469763E27292E6174747228276964272C732E6F2E6F7665726C61794964292E616464436C617373282773696D706C656D6F64616C2D6F7665726C617927292E63737328242E657874656E6428732E6F2E6F7665726C61794373732C7B646973706C61';
wwv_flow_api.g_varchar2_table(24) := '793A276E6F6E65272C6F7061636974793A732E6F2E6F7061636974792F3130302C6865696768743A732E6F2E6D6F64616C3F775B305D3A302C77696474683A732E6F2E6D6F64616C3F775B315D3A302C706F736974696F6E3A276669786564272C6C6566';
wwv_flow_api.g_varchar2_table(25) := '743A302C746F703A302C7A496E6465783A732E6F2E7A496E6465782B317D29292E617070656E64546F28732E6F2E617070656E64546F293B732E642E636F6E7461696E65723D2428273C6469763E3C2F6469763E27292E6174747228276964272C732E6F';
wwv_flow_api.g_varchar2_table(26) := '2E636F6E7461696E65724964292E616464436C617373282773696D706C656D6F64616C2D636F6E7461696E657227292E63737328242E657874656E6428732E6F2E636F6E7461696E65724373732C7B646973706C61793A276E6F6E65272C706F73697469';
wwv_flow_api.g_varchar2_table(27) := '6F6E3A276669786564272C7A496E6465783A732E6F2E7A496E6465782B327D29292E617070656E6428732E6F2E636C6F73652626732E6F2E636C6F736548544D4C3F2428732E6F2E636C6F736548544D4C292E616464436C61737328732E6F2E636C6F73';
wwv_flow_api.g_varchar2_table(28) := '65436C617373293A2727292E617070656E64546F28732E6F2E617070656E64546F293B732E642E777261703D2428273C6469763E3C2F6469763E27292E617474722827746162496E646578272C2D31292E616464436C617373282773696D706C656D6F64';
wwv_flow_api.g_varchar2_table(29) := '616C2D7772617027292E637373287B6865696768743A2731303025272C6F75746C696E653A302C77696474683A2731303025277D292E617070656E64546F28732E642E636F6E7461696E6572293B732E642E646174613D646174612E6174747228276964';
wwv_flow_api.g_varchar2_table(30) := '272C646174612E617474722827696427297C7C732E6F2E646174614964292E616464436C617373282773696D706C656D6F64616C2D6461746127292E63737328242E657874656E6428732E6F2E646174614373732C7B646973706C61793A276E6F6E6527';
wwv_flow_api.g_varchar2_table(31) := '7D29292E617070656E64546F2827626F647927293B646174613D6E756C6C3B732E736574436F6E7461696E657244696D656E73696F6E7328293B732E642E646174612E617070656E64546F28732E642E77726170293B6966286965367C7C696551756972';
wwv_flow_api.g_varchar2_table(32) := '6B73297B732E666978494528293B7D7D2C62696E644576656E74733A66756E6374696F6E28297B76617220733D746869733B2428272E272B732E6F2E636C6F7365436C617373292E62696E642827636C69636B2E73696D706C656D6F64616C272C66756E';
wwv_flow_api.g_varchar2_table(33) := '6374696F6E2865297B652E70726576656E7444656661756C7428293B732E636C6F736528293B7D293B696628732E6F2E6D6F64616C2626732E6F2E636C6F73652626732E6F2E6F7665726C6179436C6F7365297B732E642E6F7665726C61792E62696E64';
wwv_flow_api.g_varchar2_table(34) := '2827636C69636B2E73696D706C656D6F64616C272C66756E6374696F6E2865297B652E70726576656E7444656661756C7428293B732E636C6F736528293B7D293B7D2428646F63756D656E74292E62696E6428276B6579646F776E2E73696D706C656D6F';
wwv_flow_api.g_varchar2_table(35) := '64616C272C66756E6374696F6E2865297B696628732E6F2E6D6F64616C2626732E6F2E666F6375732626652E6B6579436F64653D3D39297B732E77617463685461622865293B7D656C73652069662828732E6F2E636C6F73652626732E6F2E657363436C';
wwv_flow_api.g_varchar2_table(36) := '6F7365292626652E6B6579436F64653D3D3237297B652E70726576656E7444656661756C7428293B732E636C6F736528293B7D7D293B242877696E646F77292E62696E642827726573697A652E73696D706C656D6F64616C272C66756E6374696F6E2829';
wwv_flow_api.g_varchar2_table(37) := '7B773D732E67657444696D656E73696F6E7328293B732E736574436F6E7461696E657244696D656E73696F6E732874727565293B6966286965367C7C6965517569726B73297B732E666978494528293B7D656C736520696628732E6F2E6D6F64616C297B';
wwv_flow_api.g_varchar2_table(38) := '732E642E696672616D652626732E642E696672616D652E637373287B6865696768743A775B305D2C77696474683A775B315D7D293B732E642E6F7665726C61792E637373287B6865696768743A775B305D2C77696474683A775B315D7D293B7D7D293B7D';
wwv_flow_api.g_varchar2_table(39) := '2C756E62696E644576656E74733A66756E6374696F6E28297B2428272E272B746869732E6F2E636C6F7365436C617373292E756E62696E642827636C69636B2E73696D706C656D6F64616C27293B2428646F63756D656E74292E756E62696E6428276B65';
wwv_flow_api.g_varchar2_table(40) := '79646F776E2E73696D706C656D6F64616C27293B242877696E646F77292E756E62696E642827726573697A652E73696D706C656D6F64616C27293B746869732E642E6F7665726C61792E756E62696E642827636C69636B2E73696D706C656D6F64616C27';
wwv_flow_api.g_varchar2_table(41) := '293B7D2C66697849453A66756E6374696F6E28297B76617220733D746869732C703D732E6F2E706F736974696F6E3B242E65616368285B732E642E696672616D657C7C6E756C6C2C21732E6F2E6D6F64616C3F6E756C6C3A732E642E6F7665726C61792C';
wwv_flow_api.g_varchar2_table(42) := '732E642E636F6E7461696E65725D2C66756E6374696F6E28692C656C297B696628656C297B766172206263683D27646F63756D656E742E626F64792E636C69656E74486569676874272C6263773D27646F63756D656E742E626F64792E636C69656E7457';
wwv_flow_api.g_varchar2_table(43) := '69647468272C6273683D27646F63756D656E742E626F64792E7363726F6C6C486569676874272C62736C3D27646F63756D656E742E626F64792E7363726F6C6C4C656674272C6273743D27646F63756D656E742E626F64792E7363726F6C6C546F70272C';
wwv_flow_api.g_varchar2_table(44) := '6273773D27646F63756D656E742E626F64792E7363726F6C6C5769647468272C63683D27646F63756D656E742E646F63756D656E74456C656D656E742E636C69656E74486569676874272C63773D27646F63756D656E742E646F63756D656E74456C656D';
wwv_flow_api.g_varchar2_table(45) := '656E742E636C69656E745769647468272C736C3D27646F63756D656E742E646F63756D656E74456C656D656E742E7363726F6C6C4C656674272C73743D27646F63756D656E742E646F63756D656E74456C656D656E742E7363726F6C6C546F70272C733D';
wwv_flow_api.g_varchar2_table(46) := '656C5B305D2E7374796C653B732E706F736974696F6E3D276162736F6C757465273B696628693C32297B732E72656D6F766545787072657373696F6E282768656967687427293B732E72656D6F766545787072657373696F6E2827776964746827293B73';
wwv_flow_api.g_varchar2_table(47) := '2E73657445787072657373696F6E2827686569676874272C27272B6273682B27203E20272B6263682B27203F20272B6273682B27203A20272B6263682B27202B202270782227293B732E73657445787072657373696F6E28277769647468272C27272B62';
wwv_flow_api.g_varchar2_table(48) := '73772B27203E20272B6263772B27203F20272B6273772B27203A20272B6263772B27202B202270782227293B7D656C73657B7661722074652C6C653B696628702626702E636F6E7374727563746F723D3D4172726179297B76617220746F703D705B305D';
wwv_flow_api.g_varchar2_table(49) := '3F747970656F6620705B305D3D3D276E756D626572273F705B305D2E746F537472696E6728293A705B305D2E7265706C616365282F70782F2C2727293A656C2E6373732827746F7027292E7265706C616365282F70782F2C2727293B74653D746F702E69';
wwv_flow_api.g_varchar2_table(50) := '6E6465784F6628272527293D3D2D313F746F702B27202B202874203D20272B73742B27203F20272B73742B27203A20272B6273742B2729202B2022707822273A7061727365496E7428746F702E7265706C616365282F252F2C272729292B27202A202828';
wwv_flow_api.g_varchar2_table(51) := '272B63682B27207C7C20272B6263682B2729202F2031303029202B202874203D20272B73742B27203F20272B73742B27203A20272B6273742B2729202B2022707822273B696628705B315D297B766172206C6566743D747970656F6620705B315D3D3D27';
wwv_flow_api.g_varchar2_table(52) := '6E756D626572273F705B315D2E746F537472696E6728293A705B315D2E7265706C616365282F70782F2C2727293B6C653D6C6566742E696E6465784F6628272527293D3D2D313F6C6566742B27202B202874203D20272B736C2B27203F20272B736C2B27';
wwv_flow_api.g_varchar2_table(53) := '203A20272B62736C2B2729202B2022707822273A7061727365496E74286C6566742E7265706C616365282F252F2C272729292B27202A202828272B63772B27207C7C20272B6263772B2729202F2031303029202B202874203D20272B736C2B27203F2027';
wwv_flow_api.g_varchar2_table(54) := '2B736C2B27203A20272B62736C2B2729202B2022707822273B7D7D656C73657B74653D2728272B63682B27207C7C20272B6263682B2729202F2032202D2028746869732E6F6666736574486569676874202F203229202B202874203D20272B73742B2720';
wwv_flow_api.g_varchar2_table(55) := '3F20272B73742B27203A20272B6273742B2729202B2022707822273B6C653D2728272B63772B27207C7C20272B6263772B2729202F2032202D2028746869732E6F66667365745769647468202F203229202B202874203D20272B736C2B27203F20272B73';
wwv_flow_api.g_varchar2_table(56) := '6C2B27203A20272B62736C2B2729202B2022707822273B7D732E72656D6F766545787072657373696F6E2827746F7027293B732E72656D6F766545787072657373696F6E28276C65667427293B732E73657445787072657373696F6E2827746F70272C74';
wwv_flow_api.g_varchar2_table(57) := '65293B732E73657445787072657373696F6E28276C656674272C6C65293B7D7D7D293B7D2C666F6375733A66756E6374696F6E28706F73297B76617220733D746869732C703D706F737C7C276669727374273B76617220696E7075743D2428273A696E70';
wwv_flow_api.g_varchar2_table(58) := '75743A656E61626C65643A76697369626C653A272B702C732E642E77726170293B696E7075742E6C656E6774683E303F696E7075742E666F63757328293A732E642E777261702E666F63757328293B7D2C67657444696D656E73696F6E733A66756E6374';
wwv_flow_api.g_varchar2_table(59) := '696F6E28297B76617220656C3D242877696E646F77293B76617220683D242E62726F777365722E6F706572612626242E62726F777365722E76657273696F6E3E27392E35272626242E666E2E6A71756572793C3D27312E322E36273F646F63756D656E74';
wwv_flow_api.g_varchar2_table(60) := '2E646F63756D656E74456C656D656E745B27636C69656E74486569676874275D3A242E62726F777365722E6F706572612626242E62726F777365722E76657273696F6E3C27392E35272626242E666E2E6A71756572793E27312E322E36273F77696E646F';
wwv_flow_api.g_varchar2_table(61) := '772E696E6E65724865696768743A656C2E68656967687428293B72657475726E5B682C656C2E776964746828295D3B7D2C67657456616C3A66756E6374696F6E2876297B72657475726E20763D3D276175746F273F303A762E696E6465784F6628272527';
wwv_flow_api.g_varchar2_table(62) := '293E303F763A7061727365496E7428762E7265706C616365282F70782F2C272729293B7D2C736574436F6E7461696E657244696D656E73696F6E733A66756E6374696F6E28726573697A65297B76617220733D746869733B69662821726573697A657C7C';
wwv_flow_api.g_varchar2_table(63) := '28726573697A652626732E6F2E6175746F526573697A6529297B7661722063683D242E62726F777365722E6F706572613F732E642E636F6E7461696E65722E68656967687428293A732E67657456616C28732E642E636F6E7461696E65722E6373732827';
wwv_flow_api.g_varchar2_table(64) := '6865696768742729292C63773D242E62726F777365722E6F706572613F732E642E636F6E7461696E65722E776964746828293A732E67657456616C28732E642E636F6E7461696E65722E637373282777696474682729292C64683D732E642E646174612E';
wwv_flow_api.g_varchar2_table(65) := '6F757465724865696768742874727565292C64773D732E642E646174612E6F7574657257696474682874727565293B766172206D683D732E6F2E6D61784865696768742626732E6F2E6D61784865696768743C775B305D3F732E6F2E6D61784865696768';
wwv_flow_api.g_varchar2_table(66) := '743A775B305D2C6D773D732E6F2E6D617857696474682626732E6F2E6D617857696474683C775B315D3F732E6F2E6D617857696474683A775B315D3B696628216368297B696628216468297B63683D732E6F2E6D696E4865696768743B7D656C73657B69';
wwv_flow_api.g_varchar2_table(67) := '662864683E6D68297B63683D6D683B7D656C73652069662864683C732E6F2E6D696E486569676874297B63683D732E6F2E6D696E4865696768743B7D656C73657B63683D64683B7D7D7D656C73657B63683D63683E6D683F6D683A63683B7D6966282163';
wwv_flow_api.g_varchar2_table(68) := '77297B696628216477297B63773D732E6F2E6D696E57696474683B7D656C73657B69662864773E6D77297B63773D6D773B7D656C73652069662864773C732E6F2E6D696E5769647468297B63773D732E6F2E6D696E57696474683B7D656C73657B63773D';
wwv_flow_api.g_varchar2_table(69) := '64773B7D7D7D656C73657B63773D63773E6D773F6D773A63773B7D732E642E636F6E7461696E65722E637373287B6865696768743A63682C77696474683A63777D293B69662864683E63687C7C64773E6377297B732E642E777261702E637373287B6F76';
wwv_flow_api.g_varchar2_table(70) := '6572666C6F773A276175746F277D293B7D7D696628732E6F2E6175746F506F736974696F6E297B732E736574506F736974696F6E28293B7D7D2C736574506F736974696F6E3A66756E6374696F6E28297B76617220733D746869732C746F702C6C656674';
wwv_flow_api.g_varchar2_table(71) := '2C68633D28775B305D2F32292D28732E642E636F6E7461696E65722E6F757465724865696768742874727565292F32292C76633D28775B315D2F32292D28732E642E636F6E7461696E65722E6F7574657257696474682874727565292F32293B69662873';
wwv_flow_api.g_varchar2_table(72) := '2E6F2E706F736974696F6E26264F626A6563742E70726F746F747970652E746F537472696E672E63616C6C28732E6F2E706F736974696F6E293D3D3D225B6F626A6563742041727261795D22297B746F703D732E6F2E706F736974696F6E5B305D7C7C68';
wwv_flow_api.g_varchar2_table(73) := '633B6C6566743D732E6F2E706F736974696F6E5B315D7C7C76633B7D656C73657B746F703D68633B6C6566743D76633B7D732E642E636F6E7461696E65722E637373287B6C6566743A6C6566742C746F703A746F707D293B7D2C77617463685461623A66';
wwv_flow_api.g_varchar2_table(74) := '756E6374696F6E2865297B76617220733D746869733B6966282428652E746172676574292E706172656E747328272E73696D706C656D6F64616C2D636F6E7461696E657227292E6C656E6774683E30297B732E696E707574733D2428273A696E7075743A';
wwv_flow_api.g_varchar2_table(75) := '656E61626C65643A76697369626C653A66697273742C203A696E7075743A656E61626C65643A76697369626C653A6C617374272C732E642E646174615B305D293B6966282821652E73686966744B65792626652E7461726765743D3D732E696E70757473';
wwv_flow_api.g_varchar2_table(76) := '5B732E696E707574732E6C656E6774682D315D297C7C28652E73686966744B65792626652E7461726765743D3D732E696E707574735B305D297C7C732E696E707574732E6C656E6774683D3D30297B652E70726576656E7444656661756C7428293B7661';
wwv_flow_api.g_varchar2_table(77) := '7220706F733D652E73686966744B65793F276C617374273A276669727374273B73657454696D656F75742866756E6374696F6E28297B732E666F63757328706F73293B7D2C3130293B7D7D656C73657B652E70726576656E7444656661756C7428293B73';
wwv_flow_api.g_varchar2_table(78) := '657454696D656F75742866756E6374696F6E28297B732E666F63757328293B7D2C3130293B7D7D2C6F70656E3A66756E6374696F6E28297B76617220733D746869733B732E642E696672616D652626732E642E696672616D652E73686F7728293B696628';
wwv_flow_api.g_varchar2_table(79) := '242E697346756E6374696F6E28732E6F2E6F6E4F70656E29297B732E6F2E6F6E4F70656E2E6170706C7928732C5B732E645D293B7D656C73657B732E642E6F7665726C61792E73686F7728293B732E642E636F6E7461696E65722E73686F7728293B732E';
wwv_flow_api.g_varchar2_table(80) := '642E646174612E73686F7728293B7D732E666F63757328293B732E62696E644576656E747328293B7D2C636C6F73653A66756E6374696F6E28297B76617220733D746869733B69662821732E642E64617461297B72657475726E2066616C73653B7D732E';
wwv_flow_api.g_varchar2_table(81) := '756E62696E644576656E747328293B696628242E697346756E6374696F6E28732E6F2E6F6E436C6F736529262621732E6F636362297B732E6F6363623D747275653B732E6F2E6F6E436C6F73652E6170706C7928732C5B732E645D293B7D656C73657B69';
wwv_flow_api.g_varchar2_table(82) := '6628732E642E706C616365686F6C646572297B7661722070683D2428272373696D706C656D6F64616C2D706C616365686F6C64657227293B696628732E6F2E70657273697374297B70682E7265706C6163655769746828732E642E646174612E72656D6F';
wwv_flow_api.g_varchar2_table(83) := '7665436C617373282773696D706C656D6F64616C2D6461746127292E6373732827646973706C6179272C732E646973706C617929293B7D656C73657B732E642E646174612E6869646528292E72656D6F766528293B70682E7265706C6163655769746828';
wwv_flow_api.g_varchar2_table(84) := '732E642E6F726967293B7D7D656C73657B732E642E646174612E6869646528292E72656D6F766528293B7D732E642E636F6E7461696E65722E6869646528292E72656D6F766528293B732E642E6F7665726C61792E6869646528292E72656D6F76652829';
wwv_flow_api.g_varchar2_table(85) := '3B732E642E696672616D652626732E642E696672616D652E6869646528292E72656D6F766528293B732E643D7B7D3B7D7D7D3B7D29286A5175657279293B';
null;
 
end;
/

 
begin
 
wwv_flow_api.create_plugin_file (
  p_id => 4361527929378075 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 4361208140287157 + wwv_flow_api.g_id_offset
 ,p_file_name => 'jquery.simplemodal-1.3.5.min.js'
 ,p_mime_type => 'text/x-c'
 ,p_file_content => wwv_flow_api.g_varchar2_table
  );
null;
 
end;
/

 
begin
 
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2A200A202A204C6F6767696E67207061636B61676520666F7220415045580A202A2040617574686F72204D617274696E204769666679204427536F757A6120687474703A2F2F7777772E74616C6B617065782E636F6D0A202A0A202A205573656420';
wwv_flow_api.g_varchar2_table(2) := '746F20777261702063616C6C7320746F20636F6E736F6C6520776869636820616C6C6F777320646576656C6F7065727320746F20696E737472756D656E74207468656972204A5320636F64650A202A205468697320737570706F72747320322077617973';
wwv_flow_api.g_varchar2_table(3) := '206F66206C6F6767696E670A202A20312D2041732061206A51756572792066756E6374696F6E20776869636820737570706F72747320636861696E696E670A202A2020202054686973206F6E6C7920737570706F72747320736F6D6520636F6E736F6C65';
wwv_flow_api.g_varchar2_table(4) := '2066656174757265730A202A20322D2041732061207374616E64616C6F6E652066756E6374696F6E0A202A202020205468697320737570706F72747320616C6C20636F6E736F6C652066656174757265730A202A0A202A204578616D706C657320617265';
wwv_flow_api.g_varchar2_table(5) := '20646F63756D656E7465642061626F766520656163682066756E6374696F6E0A202A0A202A205265666572656E63653A0A202A20202D204669726562756720436F6E736F6C6520436F6D6D616E64733A20687474703A2F2F676574666972656275672E63';
wwv_flow_api.g_varchar2_table(6) := '6F6D2F6C6F6767696E670A202A0A202A204E6F7465733A0A202A204279207573696E672074686973206D6574686F64207765277265207361666520746F207573652022242220696E7465726E616C6C79206173207573657273206D6179206368616E6765';
wwv_flow_api.g_varchar2_table(7) := '20746865202420616C696173200A202A205061737320696E206A517565727920696E746F20746869732066756E6374696F6E0A202A205365653A20687474703A2F2F646F63732E6A71756572792E636F6D2F506C7567696E732F417574686F72696E6720';
wwv_flow_api.g_varchar2_table(8) := '666F72206D6F726520696E666F726D6174696F6E0A202A2F0A2866756E6374696F6E282429207B0A20202F2A2A0A2020202A20436F6E736F6C65204C6F676765722066756E6374696F6E20666F72204A530A2020202A2057696C6C20646973706C617920';
wwv_flow_api.g_varchar2_table(9) := '6D65737361676520696E20636F6E736F6C652028696620697420657869737473290A2020202A2046756E6374696F6E7320737570706F727465643A206C6F672C2064656275672C20696E666F2C207761726E2C206572726F722C2074726163652C206469';
wwv_flow_api.g_varchar2_table(10) := '722C20646972786D6C0A2020202A2053696D706C6520757365206F6E65206F66207468652061626F76652066756E6374696F6E732061732074686520666972737420706172616D6574657220746F2063616C6C2069740A2020202A202044656661756C74';
wwv_flow_api.g_varchar2_table(11) := '206973206C6F670A2020202A20416C77617973206C6F67732022746869732220616E6420617070656E64206F7468657220706172616D65746572730A2020202A200A2020202A2057696C6C206C6F6F6B20617420242E636F6E736F6C652E63616E4C6F67';
wwv_flow_api.g_varchar2_table(12) := '282920746F207365652069662069742077696C6C2061637475616C6C79206C6F670A2020202A202053656520242E636F6E736F6C652E7365744C6576656C20666F72206C6576656C20696E666F726D6174696F6E0A2020202A0A2020202A202D20486F77';
wwv_flow_api.g_varchar2_table(13) := '20746F20757365202D200A2020202A200A2020202A202428277027292E6C6F6728293B202F2F57696C6C206C6F6720616C6C203C703E20746167730A2020202A202428277027292E6C6F6728277465737427292E746F67676C652829202F2F4C6F672061';
wwv_flow_api.g_varchar2_table(14) := '6C6C203C703E206F626A6563747320616E6420746F67676C6573207468656D0A2020202A202428277027292E6C6F6728277761726E272C277465737427293B202F2F5761726E696E67206C6F6720666F7220616C6C203C703E206F626A6563747320616E';
wwv_flow_api.g_varchar2_table(15) := '6420616464732027746573742720696E206465627567206D6573736167650A2020202A2F0A2020242E666E2E6C6F67203D2066756E6374696F6E202829207B0A202020202F2F4E6F746520746861742064697220616E6420646972786D6C2077696C6C20';
wwv_flow_api.g_varchar2_table(16) := '6F6E6C7920757365202274686973220A20202020766172206C6F67466E73203D205B276C6F67272C20276465627567272C2027696E666F272C20277761726E272C20276572726F72272C20277472616365272C2027646972272C2027646972786D6C275D';
wwv_flow_api.g_varchar2_table(17) := '3B0A2020202076617220636D64203D20276C6F67273B202F2F2044656661756C7420636F6D6D616E6420746F2072756E0A202020202F2F20436F6E7665727420617267756D656E747320746F2061727261790A202020207661722061726773203D204172';
wwv_flow_api.g_varchar2_table(18) := '7261792E70726F746F747970652E736C6963652E63616C6C28617267756D656E7473293B0A0A202020202F2F496620666972737420617267756D656E742069732061206C6F6720636F6D6D616E64207468656E207573652069742C206F74686572776973';
wwv_flow_api.g_varchar2_table(19) := '6520757365206C6F6720616E642072656D6F76652069740A2020202069662820617267756D656E74732E6C656E677468203E203020262620242E696E417272617928617267756D656E74735B305D2E746F4C6F7765724361736528292C6C6F67466E7329';
wwv_flow_api.g_varchar2_table(20) := '203E3D2030297B0A202020202020636D64203D20617267756D656E74735B305D3B0A2020202020202F2F52656D6F766520666972737420656C656D656E742073696E636520646F6E27742077616E7420697420746F2061707065617220616E796D6F7265';
wwv_flow_api.g_varchar2_table(21) := '0A202020202020617267732E736869667428293B0A202020207D0A0A202020202F2F4966206F662074686520636F6D6D616E642061637475616C6C79206578697374730A202020206966202877696E646F772E636F6E736F6C6520262620636F6E736F6C';
wwv_flow_api.g_varchar2_table(22) := '655B636D645D20262620242E636F6E736F6C652E63616E4C6F6728242E636F6E736F6C652E6C6576656C735B636D645D29297B0A202020202020746869732E656163682866756E6374696F6E2829207B0A2020202020202020636F6E736F6C655B636D64';
wwv_flow_api.g_varchar2_table(23) := '5D2E6170706C7928636F6E736F6C652C20242E6D65726765285B746869735D2C206172677329293B0A2020202020207D293B0A202020207D0A2020202072657475726E20746869733B0A20207D3B202F2F242E666E2E6C6F670A0A20202F2A2A0A202020';
wwv_flow_api.g_varchar2_table(24) := '2A205772617070657220666F7220636F6E736F6C652066756E6374696F6E2E0A2020202A205468697320616C6C6F777320796F7520746F206164642022636F6E736F6C65222063616C6C7320746F20242E636F6E736F6C6520616E6420646F206E6F7420';
wwv_flow_api.g_varchar2_table(25) := '6E65656420746F20776F7272792061626F75742062726F7773657220636F6D7061746962696C6974790A2020202A2044656661756C74206C6576656C20697320226F66662220736F206D75737420656E61626C6520666F72206F75747075740A2020202A';
wwv_flow_api.g_varchar2_table(26) := '20202D20415045583A2049662072756E20696E204150455820616E642073657373696F6E20697320696E206465627567206D6F64652C206C6576656C206973206175746F6D61746963616C6C792073657420746F20226C6F67220A2020202A0A2020202A';
wwv_flow_api.g_varchar2_table(27) := '202D20486F7720746F20757365202D0A2020202A200A2020202A202D20436865636B204C6576656C3A0A2020202A20242E636F6E736F6C652E6765744C6576656C28293B0A2020202A0A2020202A202D20536574204C6576656C3A0A2020202A20242E63';
wwv_flow_api.g_varchar2_table(28) := '6F6E736F6C652E7365744C6576656C28277761726E27293B202F2F4F6E6C7920656E61626C6573207761726E696E67206D6573736167657320616E64206C6F7765720A2020202A0A2020202A202D204C6F673A0A2020202A20242E636F6E736F6C652E6C';
wwv_flow_api.g_varchar2_table(29) := '6F672827746869732069732061206C6F67206D65737361676527293B0A2020202A20242E636F6E736F6C652E6572726F7228277468697320697320616E206572726F72206D65737361676527293B0A2020202A2F0A2020242E636F6E736F6C65203D2028';
wwv_flow_api.g_varchar2_table(30) := '66756E6374696F6E28297B0A202020202F2F2A2A2A2050726976617465202A2A2A0A202020202F2F4C6576656C730A20202020766172206C6576656C73203D207B0A2020202020206F6666203A20302C0A202020202020657863657074696F6E3A20312C';
wwv_flow_api.g_varchar2_table(31) := '0A2020202020206572726F72203A20322C0A2020202020207761726E3A20342C0A202020202020696E666F3A20382C0A2020202020206C6F67203A2031362C0A2020202020206465627567203A20313620202020200A202020207D3B0A202020200A2020';
wwv_flow_api.g_varchar2_table(32) := '20202F2F43757272656E74206C6576656C0A20202020766172206C6576656C203D206C6576656C732E6F66663B202F2F44656661756C7420746F206F66660A202020200A202020202F2F4C697374206F6620636F6E736F6C652066756E6374696F6E730A';
wwv_flow_api.g_varchar2_table(33) := '2020202076617220636F6E736F6C65466E73203D205B0A2020202020207B666E3A20276C6F67272C206C6576656C3A206C6576656C732E6C6F677D2C0A2020202020207B666E3A20276465627567272C206C6576656C3A206C6576656C732E6C6F677D2C';
wwv_flow_api.g_varchar2_table(34) := '0A2020202020207B666E3A2027696E666F272C206C6576656C3A206C6576656C732E696E666F7D2C0A2020202020207B666E3A20277761726E272C206C6576656C3A206C6576656C732E7761726E7D2C0A2020202020207B666E3A20276572726F72272C';
wwv_flow_api.g_varchar2_table(35) := '206C6576656C3A206C6576656C732E6572726F727D2C0A2020202020207B666E3A202774696D65272C206C6576656C3A206C6576656C732E6C6F677D2C0A2020202020207B666E3A202774696D65456E64272C206C6576656C3A206C6576656C732E6C6F';
wwv_flow_api.g_varchar2_table(36) := '677D2C0A2020202020207B666E3A202770726F66696C65272C206C6576656C3A206C6576656C732E6C6F677D2C0A2020202020207B666E3A202770726F66696C65456E64272C206C6576656C3A206C6576656C732E6C6F677D2C0A2020202020207B666E';
wwv_flow_api.g_varchar2_table(37) := '3A2027636F756E74272C206C6576656C3A206C6576656C732E6C6F677D2C0A2020202020207B666E3A20277472616365272C206C6576656C3A206C6576656C732E6C6F677D2C0A2020202020207B666E3A202767726F7570272C206C6576656C3A206C65';
wwv_flow_api.g_varchar2_table(38) := '76656C732E6572726F727D2C0A2020202020207B666E3A202767726F7570436F6C6C6170736564272C206C6576656C3A206C6576656C732E6572726F727D2C0A2020202020207B666E3A202767726F7570456E64272C206C6576656C3A206C6576656C73';
wwv_flow_api.g_varchar2_table(39) := '2E6572726F727D2C0A2020202020207B666E3A2027646972272C206C6576656C3A206C6576656C732E6C6F677D2C0A2020202020207B666E3A2027646972786D6C272C206C6576656C3A206C6576656C732E6C6F677D2C0A2020202020207B666E3A2027';
wwv_flow_api.g_varchar2_table(40) := '617373657274272C206C6576656C3A206C6576656C732E6C6F677D2C0A2020202020207B666E3A2027657863657074696F6E272C206C6576656C3A206C6576656C732E657863657074696F6E7D2C0A2020202020207B666E3A20277461626C65272C206C';
wwv_flow_api.g_varchar2_table(41) := '6576656C3A206C6576656C732E6C6F677D0A202020205D3B0A0A202020202F2F2A2A2A205075626C6963202A2A2A0A202020202F2F52657475726E205075626C6963206F626A656374730A2020202074686174203D207B7D3B0A202020200A202020202F';
wwv_flow_api.g_varchar2_table(42) := '2F416C6C6F77206F746865722066756E6374696F6E7320746F2061636365737320746865206C6576656C206E756D626572730A20202020746861742E6C6576656C73203D206C6576656C733B0A0A202020202F2A2A0A20202020202A2044657465726D69';
wwv_flow_api.g_varchar2_table(43) := '6E65732069662066756E6374696F6E2063616E206265206C6F676765640A20202020202A2040706172616D20704C6576656C204C6576656C206F662066756E6374696F6E206265696E672063616C6C65640A20202020202A204072657475726E20547275';
wwv_flow_api.g_varchar2_table(44) := '652069662063616E2072756E20636F6D6D616E642C2066616C7365206966206E6F740A20202020202A2F0A20202020746861742E63616E4C6F67203D2066756E6374696F6E28704C6576656C297B0A20202020202072657475726E206C6576656C203E3D';
wwv_flow_api.g_varchar2_table(45) := '20704C6576656C3B0A202020207D3B2F2F63616E4C6F670A0A202020202F2A2A0A20202020202A20536574206C6F67676572206465627567206C6576656C0A20202020202A20696620704C6576656C206973206E6F742076616C696420616E20616C6572';
wwv_flow_api.g_varchar2_table(46) := '74206D6573736167652077696C6C20626520646973706C617965640A20202020202A2040706172616D20704C6576656C204C6576656C202873656520746869732E6C6576656C7320666F722066756C6C206C697374206F66206C6576656C73290A202020';
wwv_flow_api.g_varchar2_table(47) := '20202A2F0A20202020746861742E7365744C6576656C203D2066756E6374696F6E28704C6576656C297B0A2020202020207661722074656D704C6576656C203D206C6576656C735B704C6576656C2E746F4C6F7765724361736528295D3B0A2020202020';
wwv_flow_api.g_varchar2_table(48) := '202F2F436865636B20746F2073656520696620746865206C6576656C2069732061637475616C6C7920612076616C6964206C6576656C0A2020202020206966202874656D704C6576656C203D3D20756E646566696E6564290A2020202020202020616C65';
wwv_flow_api.g_varchar2_table(49) := '72742827496E76616C6964204C6576656C3A2027202B20704C6576656C293B0A202020202020656C73650A20202020202020206C6576656C203D2074656D704C6576656C3B0A202020207D3B2F2F7365744C6576656C0A202020200A202020202F2A2A0A';
wwv_flow_api.g_varchar2_table(50) := '20202020202A204072657475726E204C6576656C20696E20746578742028692E652E206E6F7420746865206E756D657269632076616C7565290A20202020202A2F0A20202020746861742E6765744C6576656C203D2066756E6374696F6E28297B0A2020';
wwv_flow_api.g_varchar2_table(51) := '20202020666F722028766172206B657920696E206C6576656C7329207B0A2020202020202020696620286C6576656C732E6861734F776E50726F7065727479286B657929202626206C6576656C735B6B65795D203D3D206C6576656C297B0A2020202020';
wwv_flow_api.g_varchar2_table(52) := '202020202072657475726E206B65793B0A20202020202020202020627265616B3B0A20202020202020207D2F2F2069660A2020202020207D2F2F666F720A2020202020200A2020202020202F2F4469646E27742066696E642069740A2020202020207265';
wwv_flow_api.g_varchar2_table(53) := '7475726E2027556E6B6E6F776E3A2027202B206C6576656C3B0A202020207D3B2F2F6765744C6576656C0A202020200A202020202F2A2A0A20202020202A204072657475726E207472756520696620696E20415045582073657373696F6E20616E642064';
wwv_flow_api.g_varchar2_table(54) := '65627567206D6F6465206973207365740A20202020202A2F0A20202020746861742E6973417065784465627567203D2066756E6374696F6E28297B0A20202020202076617220636865636B203D20646F63756D656E742E676574456C656D656E74427949';
wwv_flow_api.g_varchar2_table(55) := '64282770646562756727293B0A20202020202072657475726E20636865636B20213D20756E646566696E6564202626202428272370646562756727292E76616C28292E746F4C6F776572436173652829203D3D2027796573273B0A202020207D3B202F2F';
wwv_flow_api.g_varchar2_table(56) := '69734170657844656275670A0A202020202F2F4170706C7920636F6E736F6C652066756E6374696F6E7320746F202274686174220A20202020666F722028693D303B2069203C20636F6E736F6C65466E732E6C656E6774683B20692B2B297B0A20202020';
wwv_flow_api.g_varchar2_table(57) := '2020766172206D79466E203D20636F6E736F6C65466E735B695D3B0A2020202020202F2F436F6E736F6C65206578697374730A2020202020202866756E6374696F6E2870462C20704C297B0A2020202020202020746861745B70465D203D2066756E6374';
wwv_flow_api.g_varchar2_table(58) := '696F6E28297B0A202020202020202020202F2F4F6E6C792072756E20636F6E736F6C6520696620796F752063616E206C6F672C20616E6420636F6E736F6C65206578697374732E0A202020202020202020202F2F436865636B696E6720636F6E736F6C65';
wwv_flow_api.g_varchar2_table(59) := '2061742072756E2074696D6520666F7220656E67696E6573206C696B652046697265627567204C6974650A20202020202020202020696628746869732E63616E4C6F6728704C292026262077696E646F772E636F6E736F6C6520262620636F6E736F6C65';
wwv_flow_api.g_varchar2_table(60) := '5B70465D290A202020202020202020202020636F6E736F6C655B70465D2E6170706C792820636F6E736F6C652C20617267756D656E747320293B0A20202020202020207D3B0A2020202020207D29286D79466E2E666E2C206D79466E2E6C6576656C293B';
wwv_flow_api.g_varchar2_table(61) := '0A202020207D2F2F666F720A0A2020202072657475726E20746861743B0A20207D2928293B2F2F24636F6E736F6C650A0A20202F2F4175746F6D61746963616C6C7920736574206C6F6767696E67206C6576656C20666F72206170657820696E20646562';
wwv_flow_api.g_varchar2_table(62) := '7567206D6F64650A20202428646F63756D656E74292E72656164792866756E6374696F6E28297B0A2020202069662028242E636F6E736F6C652E69734170657844656275672829290A202020202020242E636F6E736F6C652E7365744C6576656C28276C';
wwv_flow_api.g_varchar2_table(63) := '6F6727293B0A20207D293B0A7D29286A5175657279293B';
null;
 
end;
/

 
begin
 
wwv_flow_api.create_plugin_file (
  p_id => 4412716298056922 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 4361208140287157 + wwv_flow_api.g_id_offset
 ,p_file_name => '$logger_1.0.0.js'
 ,p_mime_type => 'application/x-javascript'
 ,p_file_content => wwv_flow_api.g_varchar2_table
  );
null;
 
end;
/

 
begin
 
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2A0A202A20436C617269466974204A5320636F64650A202A20687474703A2F2F7777772E636C6172696669742E636F6D0A202A206170657840636C6172696669742E636F6D0A202A0A202A2052657175697265730A202A20202D2053696D706C654D';
wwv_flow_api.g_varchar2_table(2) := '6F64616C20312E332E350A202A2F0A24636C617269666974203D207B7D3B0A0A2F2A2A0A202A20446973706C617973204F626A656374287329206173206D6F64616C0A202A204F6E6C7920616C6C6F777320666F72206F6E65206D6F64616C2077696E64';
wwv_flow_api.g_varchar2_table(3) := '6F77206F70656E20617420612074696D650A202A20546F20636C6F7365206D6F64616C2077696E646F772C2063616C6C2024636C6172696669742E6D6F64616C436C6F736528293B0A202A0A202A2052657175697265733A0A202A202D20687474703A2F';
wwv_flow_api.g_varchar2_table(4) := '2F7777772E657269636D6D617274696E2E636F6D2F70726F6A656374732F73696D706C656D6F64616C2F0A202A0A202A20506C65617365206E6F746520796F752063616E27742063616C6C207468652073696D706C65206D6F64616C2062792069747365';
wwv_flow_api.g_varchar2_table(5) := '6C662E2049742077696C6C20776F726B2062757420796F752077696C6C2072756E20696E746F2069737375657320776974682041504558206974656D732E0A202A205365653A20687474703A2F2F666F72756D732E6F7261636C652E636F6D2F666F7275';
wwv_flow_api.g_varchar2_table(6) := '6D732F7468726561642E6A7370613F6D65737361676549443D3331383035333220666F72206D6F726520696E666F726D6174696F6E2E0A202A0A202A205573656420696E3A0A202A20202D20434F4D2E434C4152494649542E41504558504C5547494E2E';
wwv_flow_api.g_varchar2_table(7) := '53494D504C455F4D4F44414C5F53484F570A202A0A202A2040706172616D20704F626A206F626A656374287329202870726566657261626C792074686973207265666572656E636573206120726567696F6E2920746F206D616B65206D6F64616C0A202A';
wwv_flow_api.g_varchar2_table(8) := '2040706172616D20704F7074696F6E73204F7074696F6E7320666F72206D6F64616C2053637265656E2E205365653A20687474703A2F2F7777772E657269636D6D617274696E2E636F6D2F70726F6A656374732F73696D706C656D6F64616C2F236F7074';
wwv_flow_api.g_varchar2_table(9) := '696F6E7320666F72206D6F726520696E666F0A202A2F0A24636C6172696669742E6D6F64616C53686F77203D2066756E6374696F6E28704F626A2C20704F7074696F6E73297B0A2020766172207644656661756C7473203D207B0A202020207065727369';
wwv_flow_api.g_varchar2_table(10) := '73743A20747275652C202F2F496620747275652C2074686520646174612077696C6C206265206D61696E7461696E6564206163726F7373206D6F64616C2063616C6C732C2069662066616C73652C2074686520646174612077696C6C2062652072657665';
wwv_flow_api.g_varchar2_table(11) := '7274656420746F20697473206F726967696E616C2073746174652E2028692E652E2069742077696C6C2062652064656C657465640A202020206F7665726C61794373733A207B6261636B67726F756E64436F6C6F723A202723363036303630277D202F2F';
wwv_flow_api.g_varchar2_table(12) := '4461726B20477265790A20207D3B200A20200A20202F2F457874656E642064656661756C74206F7074696F6E730A2020704F7074696F6E73203D206A51756572792E657874656E6428747275652C7644656661756C74732C20704F7074696F6E73293B0A';
wwv_flow_api.g_varchar2_table(13) := '20200A20202F2F204D61696E7461696E206F72646572206F662041504558206974656D73202873656520666F72756D20706F7374696E672061626F7665290A20202428704F626A292E7772617028273C6469763E3C2F6469763E27293B200A20200A2020';
wwv_flow_api.g_varchar2_table(14) := '2F2F204D616B6520737572652074686520726567696F6E2069732076697369626C650A20202428704F626A292E73686F7728293B0A20200A20202F2F204F70656E204D6F64616C2053637265656E0A20202428704F626A292E6D6F64616C28704F707469';
wwv_flow_api.g_varchar2_table(15) := '6F6E73293B20200A7D2F2F24636C6172696669742E6D6F64616C53686F77200A0A2F2A2A0A202A20436C6F73657320746865206D6F64616C2073637265656E0A202A0A202A205573656420696E3A0A202A20202D20434F4D2E434C4152494649542E4150';
wwv_flow_api.g_varchar2_table(16) := '4558504C5547494E2E53494D504C455F4D4F44414C5F434C4F53450A202A2F0A24636C6172696669742E6D6F64616C436C6F7365203D2066756E6374696F6E28297B0A2020242E6D6F64616C2E636C6F736528293B0A7D2F2F2024636C6172696669742E';
wwv_flow_api.g_varchar2_table(17) := '6D6F64616C436C6F73650A0A0A';
null;
 
end;
/

 
begin
 
wwv_flow_api.create_plugin_file (
  p_id => 4413412416058659 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 4361208140287157 + wwv_flow_api.g_id_offset
 ,p_file_name => '$clarifit_1.0.0.js'
 ,p_mime_type => 'application/x-javascript'
 ,p_file_content => wwv_flow_api.g_varchar2_table
  );
null;
 
end;
/

 
begin
 
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2A0A202A20436C617269466974204A53204150455820506C7567696E20636F64650A202A20687474703A2F2F7777772E636C6172696669742E636F6D0A202A206170657840636C6172696669742E636F6D0A202A0A202A205772617070657220666F';
wwv_flow_api.g_varchar2_table(2) := '7220436C617269466974204150455820506C7567696E730A202A202043464150203D20436C617269466974204170657820506C7567696E0A202A0A202A2052657175697265733A0A202A20202D246C6F676765725F312E302E302E6A730A202A20202D24';
wwv_flow_api.g_varchar2_table(3) := '636C6172696669745F312E302E302E6A730A202A2F0A2463666170203D207B7D3B0A0A2F2F2A2A2A2053696D706C654D6F64616C202A2A2A0A24636661702E73696D706C654D6F64616C203D207B7D3B0A0A2F2A2A0A202A2053696D706C65204D6F6461';
wwv_flow_api.g_varchar2_table(4) := '6C3A2053686F770A202A2F0A24636661702E73696D706C654D6F64616C2E73686F77203D2066756E6374696F6E2028297B0A2020242E636F6E736F6C652E67726F75702827436C6172694669743A2073696D706C654D6F64616C2E73686F7727293B0A20';
wwv_flow_api.g_varchar2_table(5) := '20242E636F6E736F6C652E6C6F6728274170657820706C7567696E202274686973223A20272C2074686973293B0A20200A20202F2F5661726961626C65730A202076617220706172616D73203D207B0A20202020686964654F6E436C6F7365203A207468';
wwv_flow_api.g_varchar2_table(6) := '69732E616374696F6E2E61747472696275746530312E746F4C6F776572436173652829203D3D202774727565272C0A202020206F706163697479203A20746869732E616374696F6E2E61747472696275746530322C0A20202020657363436C6F7365203A';
wwv_flow_api.g_varchar2_table(7) := '20746869732E616374696F6E2E61747472696275746530332E746F4C6F776572436173652829203D3D202774727565272C0A202020206D6F64616C203A20746869732E616374696F6E2E61747472696275746530342E746F4C6F77657243617365282920';
wwv_flow_api.g_varchar2_table(8) := '3D3D202774727565272C0A202020206261636B67726F756E64436F6C6F72203A20746869732E616374696F6E2E61747472696275746530350A20207D3B0A20200A2020766172206166666563746564456C656D656E7473203D20746869732E6166666563';
wwv_flow_api.g_varchar2_table(9) := '746564456C656D656E74733B0A20200A202076617220764F7074696F6E73203D7B0A202020206F706163697479203A20706172616D732E6F7061636974792C0A20202020657363436C6F7365203A20706172616D732E657363436C6F73652C0A20202020';
wwv_flow_api.g_varchar2_table(10) := '6D6F64616C203A20706172616D732E6D6F64616C2C0A202020206F6E436C6F7365203A2066756E6374696F6E286469616C6F67297B0A202020202020242E6D6F64616C2E636C6F736528293B2020202020200A20202020202069662028706172616D732E';
wwv_flow_api.g_varchar2_table(11) := '686964654F6E436C6F7365297B0A2020202020202020242E636F6E736F6C652E6C6F6728274175746F6D61746963616C6C7920636C6F73696E6720616666656374656420656C656D656E747327293B0A20202020202020206166666563746564456C656D';
wwv_flow_api.g_varchar2_table(12) := '656E74732E6869646528293B0A2020202020207D0A202020207D2F2F6F6E436C6F73650A20207D3B0A20200A202069662028706172616D732E6261636B67726F756E64436F6C6F7220213D206E756C6C290A20202020764F7074696F6E732E6F7665726C';
wwv_flow_api.g_varchar2_table(13) := '6179437373203D207B6261636B67726F756E64436F6C6F723A20706172616D732E6261636B67726F756E64436F6C6F727D3B0A2020200A20202F2F4966206E6F20416666656374656420456C656D656E747320776572652073656C656374656420286465';
wwv_flow_api.g_varchar2_table(14) := '6661756C747320746F20646F63756D656E7429206F7220696E76616C756420616666656374656420656C656D656E7473207468656E20646F206E6F7468696E670A2020696628746869732E6166666563746564456C656D656E74732E6C656E677468203D';
wwv_flow_api.g_varchar2_table(15) := '3D2030207C7C2028746869732E6166666563746564456C656D656E74732E6C656E677468203D3D203120262620746869732E6166666563746564456C656D656E74735B305D203D3D20646F63756D656E7429297B0A2020202020202F2F4E6F20656C656D';
wwv_flow_api.g_varchar2_table(16) := '656E747320776572652070726F76696465640A20202020242E636F6E736F6C652E7761726E28274E6F20616666656374656420656C656D656E74732C206E6F7468696E6720746F20646F2E27293B0A20207D0A2020656C73657B0A202020202F2F53686F';
wwv_flow_api.g_varchar2_table(17) := '77206F626A656374730A202020202F2F5265636F6D6D656E64656420746F2073686F77206F6E6C792031206F626A6563742C206275742063616E2068616E646C65206D6F72650A2020202069662028746869732E6166666563746564456C656D656E7473';
wwv_flow_api.g_varchar2_table(18) := '2E6C656E677468203E2031290A202020202020242E636F6E736F6C652E696E666F28274D6F7265207468616E203120616666656374656420656C656D656E74732E204E6F74207265636F6D6D656E64656427293B0A2020202024636C6172696669742E6D';
wwv_flow_api.g_varchar2_table(19) := '6F64616C53686F7728746869732E6166666563746564456C656D656E74732C20764F7074696F6E73293B0A20207D0A2020242E636F6E736F6C652E67726F7570456E6428293B0A7D2F2F2024636661702E6D6F64616C53686F770A0A2F2A2A0A202A2043';
wwv_flow_api.g_varchar2_table(20) := '6C6F73652053696D706C65204D6F64616C200A202A2F0A24636661702E73696D706C654D6F64616C2E636C6F7365203D2066756E6374696F6E2028297B0A2020242E636F6E736F6C652E67726F75702827436C6172694669743A2073696D706C654D6F64';
wwv_flow_api.g_varchar2_table(21) := '616C2E636C6F736527293B0A202024636C6172696669742E6D6F64616C436C6F736528293B0A2020242E636F6E736F6C652E67726F7570456E6428293B0A7D2F2F24636661702E73696D706C654D6F64616C53686F77';
null;
 
end;
/

 
begin
 
wwv_flow_api.create_plugin_file (
  p_id => 4437233522294513 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 4361208140287157 + wwv_flow_api.g_id_offset
 ,p_file_name => '$cfap_1.0.0.js'
 ,p_mime_type => 'application/x-javascript'
 ,p_file_content => wwv_flow_api.g_varchar2_table
  );
null;
 
end;
/

--application/shared_components/plugins/dynamic_action/com_clarifit_apexplugin_simple_modal_close
 
begin
 
wwv_flow_api.create_plugin (
  p_id => 4408409625584387 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_type => 'DYNAMIC ACTION'
 ,p_name => 'COM.CLARIFIT.APEXPLUGIN.SIMPLE_MODAL_CLOSE'
 ,p_display_name => 'ClariFit Simple Modal - Close'
 ,p_category => 'EFFECT'
 ,p_image_prefix => '#PLUGIN_PREFIX#'
 ,p_plsql_code => 
'-- Developed by http://www.ClariFit.com'||chr(10)||
'-- apex@clarifit.com'||chr(10)||
'-- Using: http://www.ericmmartin.com/projects/simplemodal/'||chr(10)||
'FUNCTION simple_modal_close (p_dynamic_action IN apex_plugin.t_dynamic_action, p_plugin IN apex_plugin.t_plugin)'||chr(10)||
'  RETURN apex_plugin.t_dynamic_action_render_result'||chr(10)||
'AS'||chr(10)||
'  v_result                      apex_plugin.t_dynamic_action_render_result;'||chr(10)||
'-- Plugin Attributes'||chr(10)||
'BEGIN'||chr(10)||
'  -- Duri'||
'ng plug-in development it''s very helpful to have some debug information'||chr(10)||
'  IF APEX_APPLICATION.g_debug THEN'||chr(10)||
'    apex_plugin_util.debug_dynamic_action (p_plugin => p_plugin, p_dynamic_action => p_dynamic_action);'||chr(10)||
'  END IF;'||chr(10)||
''||chr(10)||
'  -- Load JavaScript Libraries'||chr(10)||
'  apex_javascript.add_library (p_name => ''jquery.simplemodal'', p_directory => p_plugin.file_prefix, p_version => ''-1.3.5.min'');'||chr(10)||
'  apex_javascript.a'||
'dd_library (p_name => ''$clarifit'', p_directory => p_plugin.file_prefix, p_version => ''_1.0.0'');'||chr(10)||
'  apex_javascript.add_library (p_name => ''$cfap'', p_directory => p_plugin.file_prefix, p_version => ''_1.0.0'');'||chr(10)||
'  apex_javascript.add_library (p_name => ''$logger'', p_directory => p_plugin.file_prefix, p_version => ''_1.0.0'');'||chr(10)||
''||chr(10)||
'  -- Set JS function'||chr(10)||
'  v_result.javascript_function := ''$cfap.simpleModal.close'||
''';'||chr(10)||
''||chr(10)||
'  -- Set Attributes'||chr(10)||
''||chr(10)||
'  RETURN v_result;'||chr(10)||
'END simple_modal_close;'
 ,p_render_function => 'simple_modal_close'
 ,p_help_text => '<p>'||chr(10)||
'	This will close a modal opened by the <em><strong>ClariFit Simple Modal - Show</strong></em> dynamic action. Please see help from that plugin for more information.</p>'||chr(10)||
'<div style="font-family: Arial,Verdana,sans-serif; font-size: 12px; color: rgb(34, 34, 34); background-color: rgb(255, 255, 255);">'||chr(10)||
'	<p>'||chr(10)||
'		Please see:&nbsp;<a href="http://www.ericmmartin.com/projects/simplemodal/#options">http://www.ericmmartin.com/projects/simplemodal/#options</a>&nbsp;for more information.</p>'||chr(10)||
'	<p>'||chr(10)||
'		&nbsp;</p>'||chr(10)||
'</div>'||chr(10)||
''
 ,p_version_identifier => '1.0'
 ,p_about_url => 'http://www.ClariFit.com'
  );
null;
 
end;
/

 
begin
 
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A0A202A2053696D706C654D6F64616C20312E332E35202D206A517565727920506C7567696E0A202A20687474703A2F2F7777772E657269636D6D617274696E2E636F6D2F70726F6A656374732F73696D706C656D6F64616C2F0A202A20436F707972';
wwv_flow_api.g_varchar2_table(2) := '696768742028632920323031302045726963204D617274696E2028687474703A2F2F747769747465722E636F6D2F457269634D4D617274696E290A202A204475616C206C6963656E73656420756E64657220746865204D495420616E642047504C206C69';
wwv_flow_api.g_varchar2_table(3) := '63656E7365730A202A205265766973696F6E3A202449643A206A71756572792E73696D706C656D6F64616C2E6A732032343520323031302D30332D32352032303A34313A31355A20656D617274696E323420240A202A2F0A3B2866756E6374696F6E2824';
wwv_flow_api.g_varchar2_table(4) := '297B766172206965363D242E62726F777365722E6D73696526267061727365496E7428242E62726F777365722E76657273696F6E293D3D362626747970656F662077696E646F775B27584D4C4874747052657175657374275D213D226F626A656374222C';
wwv_flow_api.g_varchar2_table(5) := '6965517569726B733D6E756C6C2C773D5B5D3B242E6D6F64616C3D66756E6374696F6E28646174612C6F7074696F6E73297B72657475726E20242E6D6F64616C2E696D706C2E696E697428646174612C6F7074696F6E73293B7D3B242E6D6F64616C2E63';
wwv_flow_api.g_varchar2_table(6) := '6C6F73653D66756E6374696F6E28297B242E6D6F64616C2E696D706C2E636C6F736528293B7D3B242E666E2E6D6F64616C3D66756E6374696F6E286F7074696F6E73297B72657475726E20242E6D6F64616C2E696D706C2E696E697428746869732C6F70';
wwv_flow_api.g_varchar2_table(7) := '74696F6E73293B7D3B242E6D6F64616C2E64656661756C74733D7B617070656E64546F3A27626F6479272C666F6375733A747275652C6F7061636974793A35302C6F7665726C617949643A2773696D706C656D6F64616C2D6F7665726C6179272C6F7665';
wwv_flow_api.g_varchar2_table(8) := '726C61794373733A7B7D2C636F6E7461696E657249643A2773696D706C656D6F64616C2D636F6E7461696E6572272C636F6E7461696E65724373733A7B7D2C6461746149643A2773696D706C656D6F64616C2D64617461272C646174614373733A7B7D2C';
wwv_flow_api.g_varchar2_table(9) := '6D696E4865696768743A6E756C6C2C6D696E57696474683A6E756C6C2C6D61784865696768743A6E756C6C2C6D617857696474683A6E756C6C2C6175746F526573697A653A66616C73652C6175746F506F736974696F6E3A747275652C7A496E6465783A';
wwv_flow_api.g_varchar2_table(10) := '313030302C636C6F73653A747275652C636C6F736548544D4C3A273C6120636C6173733D226D6F64616C436C6F7365496D6722207469746C653D22436C6F7365223E3C2F613E272C636C6F7365436C6173733A2773696D706C656D6F64616C2D636C6F73';
wwv_flow_api.g_varchar2_table(11) := '65272C657363436C6F73653A747275652C6F7665726C6179436C6F73653A66616C73652C706F736974696F6E3A6E756C6C2C706572736973743A66616C73652C6D6F64616C3A747275652C6F6E4F70656E3A6E756C6C2C6F6E53686F773A6E756C6C2C6F';
wwv_flow_api.g_varchar2_table(12) := '6E436C6F73653A6E756C6C7D3B242E6D6F64616C2E696D706C3D7B6F3A6E756C6C2C643A7B7D2C696E69743A66756E6374696F6E28646174612C6F7074696F6E73297B76617220733D746869733B696628732E642E64617461297B72657475726E206661';
wwv_flow_api.g_varchar2_table(13) := '6C73653B7D6965517569726B733D242E62726F777365722E6D736965262621242E626F784D6F64656C3B732E6F3D242E657874656E64287B7D2C242E6D6F64616C2E64656661756C74732C6F7074696F6E73293B732E7A496E6465783D732E6F2E7A496E';
wwv_flow_api.g_varchar2_table(14) := '6465783B732E6F6363623D66616C73653B696628747970656F6620646174613D3D276F626A65637427297B646174613D6461746120696E7374616E63656F66206A51756572793F646174613A242864617461293B732E642E706C616365686F6C6465723D';
wwv_flow_api.g_varchar2_table(15) := '66616C73653B696628646174612E706172656E7428292E706172656E7428292E73697A6528293E30297B646174612E6265666F7265282428273C7370616E3E3C2F7370616E3E27292E6174747228276964272C2773696D706C656D6F64616C2D706C6163';
wwv_flow_api.g_varchar2_table(16) := '65686F6C64657227292E637373287B646973706C61793A276E6F6E65277D29293B732E642E706C616365686F6C6465723D747275653B732E646973706C61793D646174612E6373732827646973706C617927293B69662821732E6F2E7065727369737429';
wwv_flow_api.g_varchar2_table(17) := '7B732E642E6F7269673D646174612E636C6F6E652874727565293B7D7D7D656C736520696628747970656F6620646174613D3D27737472696E67277C7C747970656F6620646174613D3D276E756D62657227297B646174613D2428273C6469763E3C2F64';
wwv_flow_api.g_varchar2_table(18) := '69763E27292E68746D6C2864617461293B7D656C73657B616C657274282753696D706C654D6F64616C204572726F723A20556E737570706F72746564206461746120747970653A20272B747970656F662064617461293B72657475726E20733B7D732E63';
wwv_flow_api.g_varchar2_table(19) := '72656174652864617461293B646174613D6E756C6C3B732E6F70656E28293B696628242E697346756E6374696F6E28732E6F2E6F6E53686F7729297B732E6F2E6F6E53686F772E6170706C7928732C5B732E645D293B7D72657475726E20733B7D2C6372';
wwv_flow_api.g_varchar2_table(20) := '656174653A66756E6374696F6E2864617461297B76617220733D746869733B773D732E67657444696D656E73696F6E7328293B696628732E6F2E6D6F64616C2626696536297B732E642E696672616D653D2428273C696672616D65207372633D226A6176';
wwv_flow_api.g_varchar2_table(21) := '617363726970743A66616C73653B223E3C2F696672616D653E27292E63737328242E657874656E6428732E6F2E696672616D654373732C7B646973706C61793A276E6F6E65272C6F7061636974793A302C706F736974696F6E3A276669786564272C6865';
wwv_flow_api.g_varchar2_table(22) := '696768743A775B305D2C77696474683A775B315D2C7A496E6465783A732E6F2E7A496E6465782C746F703A302C6C6566743A307D29292E617070656E64546F28732E6F2E617070656E64546F293B7D732E642E6F7665726C61793D2428273C6469763E3C';
wwv_flow_api.g_varchar2_table(23) := '2F6469763E27292E6174747228276964272C732E6F2E6F7665726C61794964292E616464436C617373282773696D706C656D6F64616C2D6F7665726C617927292E63737328242E657874656E6428732E6F2E6F7665726C61794373732C7B646973706C61';
wwv_flow_api.g_varchar2_table(24) := '793A276E6F6E65272C6F7061636974793A732E6F2E6F7061636974792F3130302C6865696768743A732E6F2E6D6F64616C3F775B305D3A302C77696474683A732E6F2E6D6F64616C3F775B315D3A302C706F736974696F6E3A276669786564272C6C6566';
wwv_flow_api.g_varchar2_table(25) := '743A302C746F703A302C7A496E6465783A732E6F2E7A496E6465782B317D29292E617070656E64546F28732E6F2E617070656E64546F293B732E642E636F6E7461696E65723D2428273C6469763E3C2F6469763E27292E6174747228276964272C732E6F';
wwv_flow_api.g_varchar2_table(26) := '2E636F6E7461696E65724964292E616464436C617373282773696D706C656D6F64616C2D636F6E7461696E657227292E63737328242E657874656E6428732E6F2E636F6E7461696E65724373732C7B646973706C61793A276E6F6E65272C706F73697469';
wwv_flow_api.g_varchar2_table(27) := '6F6E3A276669786564272C7A496E6465783A732E6F2E7A496E6465782B327D29292E617070656E6428732E6F2E636C6F73652626732E6F2E636C6F736548544D4C3F2428732E6F2E636C6F736548544D4C292E616464436C61737328732E6F2E636C6F73';
wwv_flow_api.g_varchar2_table(28) := '65436C617373293A2727292E617070656E64546F28732E6F2E617070656E64546F293B732E642E777261703D2428273C6469763E3C2F6469763E27292E617474722827746162496E646578272C2D31292E616464436C617373282773696D706C656D6F64';
wwv_flow_api.g_varchar2_table(29) := '616C2D7772617027292E637373287B6865696768743A2731303025272C6F75746C696E653A302C77696474683A2731303025277D292E617070656E64546F28732E642E636F6E7461696E6572293B732E642E646174613D646174612E6174747228276964';
wwv_flow_api.g_varchar2_table(30) := '272C646174612E617474722827696427297C7C732E6F2E646174614964292E616464436C617373282773696D706C656D6F64616C2D6461746127292E63737328242E657874656E6428732E6F2E646174614373732C7B646973706C61793A276E6F6E6527';
wwv_flow_api.g_varchar2_table(31) := '7D29292E617070656E64546F2827626F647927293B646174613D6E756C6C3B732E736574436F6E7461696E657244696D656E73696F6E7328293B732E642E646174612E617070656E64546F28732E642E77726170293B6966286965367C7C696551756972';
wwv_flow_api.g_varchar2_table(32) := '6B73297B732E666978494528293B7D7D2C62696E644576656E74733A66756E6374696F6E28297B76617220733D746869733B2428272E272B732E6F2E636C6F7365436C617373292E62696E642827636C69636B2E73696D706C656D6F64616C272C66756E';
wwv_flow_api.g_varchar2_table(33) := '6374696F6E2865297B652E70726576656E7444656661756C7428293B732E636C6F736528293B7D293B696628732E6F2E6D6F64616C2626732E6F2E636C6F73652626732E6F2E6F7665726C6179436C6F7365297B732E642E6F7665726C61792E62696E64';
wwv_flow_api.g_varchar2_table(34) := '2827636C69636B2E73696D706C656D6F64616C272C66756E6374696F6E2865297B652E70726576656E7444656661756C7428293B732E636C6F736528293B7D293B7D2428646F63756D656E74292E62696E6428276B6579646F776E2E73696D706C656D6F';
wwv_flow_api.g_varchar2_table(35) := '64616C272C66756E6374696F6E2865297B696628732E6F2E6D6F64616C2626732E6F2E666F6375732626652E6B6579436F64653D3D39297B732E77617463685461622865293B7D656C73652069662828732E6F2E636C6F73652626732E6F2E657363436C';
wwv_flow_api.g_varchar2_table(36) := '6F7365292626652E6B6579436F64653D3D3237297B652E70726576656E7444656661756C7428293B732E636C6F736528293B7D7D293B242877696E646F77292E62696E642827726573697A652E73696D706C656D6F64616C272C66756E6374696F6E2829';
wwv_flow_api.g_varchar2_table(37) := '7B773D732E67657444696D656E73696F6E7328293B732E736574436F6E7461696E657244696D656E73696F6E732874727565293B6966286965367C7C6965517569726B73297B732E666978494528293B7D656C736520696628732E6F2E6D6F64616C297B';
wwv_flow_api.g_varchar2_table(38) := '732E642E696672616D652626732E642E696672616D652E637373287B6865696768743A775B305D2C77696474683A775B315D7D293B732E642E6F7665726C61792E637373287B6865696768743A775B305D2C77696474683A775B315D7D293B7D7D293B7D';
wwv_flow_api.g_varchar2_table(39) := '2C756E62696E644576656E74733A66756E6374696F6E28297B2428272E272B746869732E6F2E636C6F7365436C617373292E756E62696E642827636C69636B2E73696D706C656D6F64616C27293B2428646F63756D656E74292E756E62696E6428276B65';
wwv_flow_api.g_varchar2_table(40) := '79646F776E2E73696D706C656D6F64616C27293B242877696E646F77292E756E62696E642827726573697A652E73696D706C656D6F64616C27293B746869732E642E6F7665726C61792E756E62696E642827636C69636B2E73696D706C656D6F64616C27';
wwv_flow_api.g_varchar2_table(41) := '293B7D2C66697849453A66756E6374696F6E28297B76617220733D746869732C703D732E6F2E706F736974696F6E3B242E65616368285B732E642E696672616D657C7C6E756C6C2C21732E6F2E6D6F64616C3F6E756C6C3A732E642E6F7665726C61792C';
wwv_flow_api.g_varchar2_table(42) := '732E642E636F6E7461696E65725D2C66756E6374696F6E28692C656C297B696628656C297B766172206263683D27646F63756D656E742E626F64792E636C69656E74486569676874272C6263773D27646F63756D656E742E626F64792E636C69656E7457';
wwv_flow_api.g_varchar2_table(43) := '69647468272C6273683D27646F63756D656E742E626F64792E7363726F6C6C486569676874272C62736C3D27646F63756D656E742E626F64792E7363726F6C6C4C656674272C6273743D27646F63756D656E742E626F64792E7363726F6C6C546F70272C';
wwv_flow_api.g_varchar2_table(44) := '6273773D27646F63756D656E742E626F64792E7363726F6C6C5769647468272C63683D27646F63756D656E742E646F63756D656E74456C656D656E742E636C69656E74486569676874272C63773D27646F63756D656E742E646F63756D656E74456C656D';
wwv_flow_api.g_varchar2_table(45) := '656E742E636C69656E745769647468272C736C3D27646F63756D656E742E646F63756D656E74456C656D656E742E7363726F6C6C4C656674272C73743D27646F63756D656E742E646F63756D656E74456C656D656E742E7363726F6C6C546F70272C733D';
wwv_flow_api.g_varchar2_table(46) := '656C5B305D2E7374796C653B732E706F736974696F6E3D276162736F6C757465273B696628693C32297B732E72656D6F766545787072657373696F6E282768656967687427293B732E72656D6F766545787072657373696F6E2827776964746827293B73';
wwv_flow_api.g_varchar2_table(47) := '2E73657445787072657373696F6E2827686569676874272C27272B6273682B27203E20272B6263682B27203F20272B6273682B27203A20272B6263682B27202B202270782227293B732E73657445787072657373696F6E28277769647468272C27272B62';
wwv_flow_api.g_varchar2_table(48) := '73772B27203E20272B6263772B27203F20272B6273772B27203A20272B6263772B27202B202270782227293B7D656C73657B7661722074652C6C653B696628702626702E636F6E7374727563746F723D3D4172726179297B76617220746F703D705B305D';
wwv_flow_api.g_varchar2_table(49) := '3F747970656F6620705B305D3D3D276E756D626572273F705B305D2E746F537472696E6728293A705B305D2E7265706C616365282F70782F2C2727293A656C2E6373732827746F7027292E7265706C616365282F70782F2C2727293B74653D746F702E69';
wwv_flow_api.g_varchar2_table(50) := '6E6465784F6628272527293D3D2D313F746F702B27202B202874203D20272B73742B27203F20272B73742B27203A20272B6273742B2729202B2022707822273A7061727365496E7428746F702E7265706C616365282F252F2C272729292B27202A202828';
wwv_flow_api.g_varchar2_table(51) := '272B63682B27207C7C20272B6263682B2729202F2031303029202B202874203D20272B73742B27203F20272B73742B27203A20272B6273742B2729202B2022707822273B696628705B315D297B766172206C6566743D747970656F6620705B315D3D3D27';
wwv_flow_api.g_varchar2_table(52) := '6E756D626572273F705B315D2E746F537472696E6728293A705B315D2E7265706C616365282F70782F2C2727293B6C653D6C6566742E696E6465784F6628272527293D3D2D313F6C6566742B27202B202874203D20272B736C2B27203F20272B736C2B27';
wwv_flow_api.g_varchar2_table(53) := '203A20272B62736C2B2729202B2022707822273A7061727365496E74286C6566742E7265706C616365282F252F2C272729292B27202A202828272B63772B27207C7C20272B6263772B2729202F2031303029202B202874203D20272B736C2B27203F2027';
wwv_flow_api.g_varchar2_table(54) := '2B736C2B27203A20272B62736C2B2729202B2022707822273B7D7D656C73657B74653D2728272B63682B27207C7C20272B6263682B2729202F2032202D2028746869732E6F6666736574486569676874202F203229202B202874203D20272B73742B2720';
wwv_flow_api.g_varchar2_table(55) := '3F20272B73742B27203A20272B6273742B2729202B2022707822273B6C653D2728272B63772B27207C7C20272B6263772B2729202F2032202D2028746869732E6F66667365745769647468202F203229202B202874203D20272B736C2B27203F20272B73';
wwv_flow_api.g_varchar2_table(56) := '6C2B27203A20272B62736C2B2729202B2022707822273B7D732E72656D6F766545787072657373696F6E2827746F7027293B732E72656D6F766545787072657373696F6E28276C65667427293B732E73657445787072657373696F6E2827746F70272C74';
wwv_flow_api.g_varchar2_table(57) := '65293B732E73657445787072657373696F6E28276C656674272C6C65293B7D7D7D293B7D2C666F6375733A66756E6374696F6E28706F73297B76617220733D746869732C703D706F737C7C276669727374273B76617220696E7075743D2428273A696E70';
wwv_flow_api.g_varchar2_table(58) := '75743A656E61626C65643A76697369626C653A272B702C732E642E77726170293B696E7075742E6C656E6774683E303F696E7075742E666F63757328293A732E642E777261702E666F63757328293B7D2C67657444696D656E73696F6E733A66756E6374';
wwv_flow_api.g_varchar2_table(59) := '696F6E28297B76617220656C3D242877696E646F77293B76617220683D242E62726F777365722E6F706572612626242E62726F777365722E76657273696F6E3E27392E35272626242E666E2E6A71756572793C3D27312E322E36273F646F63756D656E74';
wwv_flow_api.g_varchar2_table(60) := '2E646F63756D656E74456C656D656E745B27636C69656E74486569676874275D3A242E62726F777365722E6F706572612626242E62726F777365722E76657273696F6E3C27392E35272626242E666E2E6A71756572793E27312E322E36273F77696E646F';
wwv_flow_api.g_varchar2_table(61) := '772E696E6E65724865696768743A656C2E68656967687428293B72657475726E5B682C656C2E776964746828295D3B7D2C67657456616C3A66756E6374696F6E2876297B72657475726E20763D3D276175746F273F303A762E696E6465784F6628272527';
wwv_flow_api.g_varchar2_table(62) := '293E303F763A7061727365496E7428762E7265706C616365282F70782F2C272729293B7D2C736574436F6E7461696E657244696D656E73696F6E733A66756E6374696F6E28726573697A65297B76617220733D746869733B69662821726573697A657C7C';
wwv_flow_api.g_varchar2_table(63) := '28726573697A652626732E6F2E6175746F526573697A6529297B7661722063683D242E62726F777365722E6F706572613F732E642E636F6E7461696E65722E68656967687428293A732E67657456616C28732E642E636F6E7461696E65722E6373732827';
wwv_flow_api.g_varchar2_table(64) := '6865696768742729292C63773D242E62726F777365722E6F706572613F732E642E636F6E7461696E65722E776964746828293A732E67657456616C28732E642E636F6E7461696E65722E637373282777696474682729292C64683D732E642E646174612E';
wwv_flow_api.g_varchar2_table(65) := '6F757465724865696768742874727565292C64773D732E642E646174612E6F7574657257696474682874727565293B766172206D683D732E6F2E6D61784865696768742626732E6F2E6D61784865696768743C775B305D3F732E6F2E6D61784865696768';
wwv_flow_api.g_varchar2_table(66) := '743A775B305D2C6D773D732E6F2E6D617857696474682626732E6F2E6D617857696474683C775B315D3F732E6F2E6D617857696474683A775B315D3B696628216368297B696628216468297B63683D732E6F2E6D696E4865696768743B7D656C73657B69';
wwv_flow_api.g_varchar2_table(67) := '662864683E6D68297B63683D6D683B7D656C73652069662864683C732E6F2E6D696E486569676874297B63683D732E6F2E6D696E4865696768743B7D656C73657B63683D64683B7D7D7D656C73657B63683D63683E6D683F6D683A63683B7D6966282163';
wwv_flow_api.g_varchar2_table(68) := '77297B696628216477297B63773D732E6F2E6D696E57696474683B7D656C73657B69662864773E6D77297B63773D6D773B7D656C73652069662864773C732E6F2E6D696E5769647468297B63773D732E6F2E6D696E57696474683B7D656C73657B63773D';
wwv_flow_api.g_varchar2_table(69) := '64773B7D7D7D656C73657B63773D63773E6D773F6D773A63773B7D732E642E636F6E7461696E65722E637373287B6865696768743A63682C77696474683A63777D293B69662864683E63687C7C64773E6377297B732E642E777261702E637373287B6F76';
wwv_flow_api.g_varchar2_table(70) := '6572666C6F773A276175746F277D293B7D7D696628732E6F2E6175746F506F736974696F6E297B732E736574506F736974696F6E28293B7D7D2C736574506F736974696F6E3A66756E6374696F6E28297B76617220733D746869732C746F702C6C656674';
wwv_flow_api.g_varchar2_table(71) := '2C68633D28775B305D2F32292D28732E642E636F6E7461696E65722E6F757465724865696768742874727565292F32292C76633D28775B315D2F32292D28732E642E636F6E7461696E65722E6F7574657257696474682874727565292F32293B69662873';
wwv_flow_api.g_varchar2_table(72) := '2E6F2E706F736974696F6E26264F626A6563742E70726F746F747970652E746F537472696E672E63616C6C28732E6F2E706F736974696F6E293D3D3D225B6F626A6563742041727261795D22297B746F703D732E6F2E706F736974696F6E5B305D7C7C68';
wwv_flow_api.g_varchar2_table(73) := '633B6C6566743D732E6F2E706F736974696F6E5B315D7C7C76633B7D656C73657B746F703D68633B6C6566743D76633B7D732E642E636F6E7461696E65722E637373287B6C6566743A6C6566742C746F703A746F707D293B7D2C77617463685461623A66';
wwv_flow_api.g_varchar2_table(74) := '756E6374696F6E2865297B76617220733D746869733B6966282428652E746172676574292E706172656E747328272E73696D706C656D6F64616C2D636F6E7461696E657227292E6C656E6774683E30297B732E696E707574733D2428273A696E7075743A';
wwv_flow_api.g_varchar2_table(75) := '656E61626C65643A76697369626C653A66697273742C203A696E7075743A656E61626C65643A76697369626C653A6C617374272C732E642E646174615B305D293B6966282821652E73686966744B65792626652E7461726765743D3D732E696E70757473';
wwv_flow_api.g_varchar2_table(76) := '5B732E696E707574732E6C656E6774682D315D297C7C28652E73686966744B65792626652E7461726765743D3D732E696E707574735B305D297C7C732E696E707574732E6C656E6774683D3D30297B652E70726576656E7444656661756C7428293B7661';
wwv_flow_api.g_varchar2_table(77) := '7220706F733D652E73686966744B65793F276C617374273A276669727374273B73657454696D656F75742866756E6374696F6E28297B732E666F63757328706F73293B7D2C3130293B7D7D656C73657B652E70726576656E7444656661756C7428293B73';
wwv_flow_api.g_varchar2_table(78) := '657454696D656F75742866756E6374696F6E28297B732E666F63757328293B7D2C3130293B7D7D2C6F70656E3A66756E6374696F6E28297B76617220733D746869733B732E642E696672616D652626732E642E696672616D652E73686F7728293B696628';
wwv_flow_api.g_varchar2_table(79) := '242E697346756E6374696F6E28732E6F2E6F6E4F70656E29297B732E6F2E6F6E4F70656E2E6170706C7928732C5B732E645D293B7D656C73657B732E642E6F7665726C61792E73686F7728293B732E642E636F6E7461696E65722E73686F7728293B732E';
wwv_flow_api.g_varchar2_table(80) := '642E646174612E73686F7728293B7D732E666F63757328293B732E62696E644576656E747328293B7D2C636C6F73653A66756E6374696F6E28297B76617220733D746869733B69662821732E642E64617461297B72657475726E2066616C73653B7D732E';
wwv_flow_api.g_varchar2_table(81) := '756E62696E644576656E747328293B696628242E697346756E6374696F6E28732E6F2E6F6E436C6F736529262621732E6F636362297B732E6F6363623D747275653B732E6F2E6F6E436C6F73652E6170706C7928732C5B732E645D293B7D656C73657B69';
wwv_flow_api.g_varchar2_table(82) := '6628732E642E706C616365686F6C646572297B7661722070683D2428272373696D706C656D6F64616C2D706C616365686F6C64657227293B696628732E6F2E70657273697374297B70682E7265706C6163655769746828732E642E646174612E72656D6F';
wwv_flow_api.g_varchar2_table(83) := '7665436C617373282773696D706C656D6F64616C2D6461746127292E6373732827646973706C6179272C732E646973706C617929293B7D656C73657B732E642E646174612E6869646528292E72656D6F766528293B70682E7265706C6163655769746828';
wwv_flow_api.g_varchar2_table(84) := '732E642E6F726967293B7D7D656C73657B732E642E646174612E6869646528292E72656D6F766528293B7D732E642E636F6E7461696E65722E6869646528292E72656D6F766528293B732E642E6F7665726C61792E6869646528292E72656D6F76652829';
wwv_flow_api.g_varchar2_table(85) := '3B732E642E696672616D652626732E642E696672616D652E6869646528292E72656D6F766528293B732E643D7B7D3B7D7D7D3B7D29286A5175657279293B';
null;
 
end;
/

 
begin
 
wwv_flow_api.create_plugin_file (
  p_id => 4414711567086931 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 4408409625584387 + wwv_flow_api.g_id_offset
 ,p_file_name => 'jquery.simplemodal-1.3.5.min.js'
 ,p_mime_type => 'application/x-javascript'
 ,p_file_content => wwv_flow_api.g_varchar2_table
  );
null;
 
end;
/

 
begin
 
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2A0A202A20436C617269466974204A5320636F64650A202A20687474703A2F2F7777772E636C6172696669742E636F6D0A202A206170657840636C6172696669742E636F6D0A202A0A202A2052657175697265730A202A20202D2053696D706C654D';
wwv_flow_api.g_varchar2_table(2) := '6F64616C20312E332E350A202A2F0A24636C617269666974203D207B7D3B0A0A2F2A2A0A202A20446973706C617973204F626A656374287329206173206D6F64616C0A202A204F6E6C7920616C6C6F777320666F72206F6E65206D6F64616C2077696E64';
wwv_flow_api.g_varchar2_table(3) := '6F77206F70656E20617420612074696D650A202A20546F20636C6F7365206D6F64616C2077696E646F772C2063616C6C2024636C6172696669742E6D6F64616C436C6F736528293B0A202A0A202A2052657175697265733A0A202A202D20687474703A2F';
wwv_flow_api.g_varchar2_table(4) := '2F7777772E657269636D6D617274696E2E636F6D2F70726F6A656374732F73696D706C656D6F64616C2F0A202A0A202A20506C65617365206E6F746520796F752063616E27742063616C6C207468652073696D706C65206D6F64616C2062792069747365';
wwv_flow_api.g_varchar2_table(5) := '6C662E2049742077696C6C20776F726B2062757420796F752077696C6C2072756E20696E746F2069737375657320776974682041504558206974656D732E0A202A205365653A20687474703A2F2F666F72756D732E6F7261636C652E636F6D2F666F7275';
wwv_flow_api.g_varchar2_table(6) := '6D732F7468726561642E6A7370613F6D65737361676549443D3331383035333220666F72206D6F726520696E666F726D6174696F6E2E0A202A0A202A205573656420696E3A0A202A20202D20434F4D2E434C4152494649542E41504558504C5547494E2E';
wwv_flow_api.g_varchar2_table(7) := '53494D504C455F4D4F44414C5F53484F570A202A0A202A2040706172616D20704F626A206F626A656374287329202870726566657261626C792074686973207265666572656E636573206120726567696F6E2920746F206D616B65206D6F64616C0A202A';
wwv_flow_api.g_varchar2_table(8) := '2040706172616D20704F7074696F6E73204F7074696F6E7320666F72206D6F64616C2053637265656E2E205365653A20687474703A2F2F7777772E657269636D6D617274696E2E636F6D2F70726F6A656374732F73696D706C656D6F64616C2F236F7074';
wwv_flow_api.g_varchar2_table(9) := '696F6E7320666F72206D6F726520696E666F0A202A2F0A24636C6172696669742E6D6F64616C53686F77203D2066756E6374696F6E28704F626A2C20704F7074696F6E73297B0A2020766172207644656661756C7473203D207B0A202020207065727369';
wwv_flow_api.g_varchar2_table(10) := '73743A20747275652C202F2F496620747275652C2074686520646174612077696C6C206265206D61696E7461696E6564206163726F7373206D6F64616C2063616C6C732C2069662066616C73652C2074686520646174612077696C6C2062652072657665';
wwv_flow_api.g_varchar2_table(11) := '7274656420746F20697473206F726967696E616C2073746174652E2028692E652E2069742077696C6C2062652064656C657465640A202020206F7665726C61794373733A207B6261636B67726F756E64436F6C6F723A202723363036303630277D202F2F';
wwv_flow_api.g_varchar2_table(12) := '4461726B20477265790A20207D3B200A20200A20202F2F457874656E642064656661756C74206F7074696F6E730A2020704F7074696F6E73203D206A51756572792E657874656E6428747275652C7644656661756C74732C20704F7074696F6E73293B0A';
wwv_flow_api.g_varchar2_table(13) := '20200A20202F2F204D61696E7461696E206F72646572206F662041504558206974656D73202873656520666F72756D20706F7374696E672061626F7665290A20202428704F626A292E7772617028273C6469763E3C2F6469763E27293B200A20200A2020';
wwv_flow_api.g_varchar2_table(14) := '2F2F204D616B6520737572652074686520726567696F6E2069732076697369626C650A20202428704F626A292E73686F7728293B0A20200A20202F2F204F70656E204D6F64616C2053637265656E0A20202428704F626A292E6D6F64616C28704F707469';
wwv_flow_api.g_varchar2_table(15) := '6F6E73293B20200A7D2F2F24636C6172696669742E6D6F64616C53686F77200A0A2F2A2A0A202A20436C6F73657320746865206D6F64616C2073637265656E0A202A0A202A205573656420696E3A0A202A20202D20434F4D2E434C4152494649542E4150';
wwv_flow_api.g_varchar2_table(16) := '4558504C5547494E2E53494D504C455F4D4F44414C5F434C4F53450A202A2F0A24636C6172696669742E6D6F64616C436C6F7365203D2066756E6374696F6E28297B0A2020242E6D6F64616C2E636C6F736528293B0A7D2F2F2024636C6172696669742E';
wwv_flow_api.g_varchar2_table(17) := '6D6F64616C436C6F73650A0A0A';
null;
 
end;
/

 
begin
 
wwv_flow_api.create_plugin_file (
  p_id => 4416133983091745 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 4408409625584387 + wwv_flow_api.g_id_offset
 ,p_file_name => '$clarifit_1.0.0.js'
 ,p_mime_type => 'application/x-javascript'
 ,p_file_content => wwv_flow_api.g_varchar2_table
  );
null;
 
end;
/

 
begin
 
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2A200A202A204C6F6767696E67207061636B61676520666F7220415045580A202A2040617574686F72204D617274696E204769666679204427536F757A6120687474703A2F2F7777772E74616C6B617065782E636F6D0A202A0A202A205573656420';
wwv_flow_api.g_varchar2_table(2) := '746F20777261702063616C6C7320746F20636F6E736F6C6520776869636820616C6C6F777320646576656C6F7065727320746F20696E737472756D656E74207468656972204A5320636F64650A202A205468697320737570706F72747320322077617973';
wwv_flow_api.g_varchar2_table(3) := '206F66206C6F6767696E670A202A20312D2041732061206A51756572792066756E6374696F6E20776869636820737570706F72747320636861696E696E670A202A2020202054686973206F6E6C7920737570706F72747320736F6D6520636F6E736F6C65';
wwv_flow_api.g_varchar2_table(4) := '2066656174757265730A202A20322D2041732061207374616E64616C6F6E652066756E6374696F6E0A202A202020205468697320737570706F72747320616C6C20636F6E736F6C652066656174757265730A202A0A202A204578616D706C657320617265';
wwv_flow_api.g_varchar2_table(5) := '20646F63756D656E7465642061626F766520656163682066756E6374696F6E0A202A0A202A205265666572656E63653A0A202A20202D204669726562756720436F6E736F6C6520436F6D6D616E64733A20687474703A2F2F676574666972656275672E63';
wwv_flow_api.g_varchar2_table(6) := '6F6D2F6C6F6767696E670A202A0A202A204E6F7465733A0A202A204279207573696E672074686973206D6574686F64207765277265207361666520746F207573652022242220696E7465726E616C6C79206173207573657273206D6179206368616E6765';
wwv_flow_api.g_varchar2_table(7) := '20746865202420616C696173200A202A205061737320696E206A517565727920696E746F20746869732066756E6374696F6E0A202A205365653A20687474703A2F2F646F63732E6A71756572792E636F6D2F506C7567696E732F417574686F72696E6720';
wwv_flow_api.g_varchar2_table(8) := '666F72206D6F726520696E666F726D6174696F6E0A202A2F0A2866756E6374696F6E282429207B0A20202F2A2A0A2020202A20436F6E736F6C65204C6F676765722066756E6374696F6E20666F72204A530A2020202A2057696C6C20646973706C617920';
wwv_flow_api.g_varchar2_table(9) := '6D65737361676520696E20636F6E736F6C652028696620697420657869737473290A2020202A2046756E6374696F6E7320737570706F727465643A206C6F672C2064656275672C20696E666F2C207761726E2C206572726F722C2074726163652C206469';
wwv_flow_api.g_varchar2_table(10) := '722C20646972786D6C0A2020202A2053696D706C6520757365206F6E65206F66207468652061626F76652066756E6374696F6E732061732074686520666972737420706172616D6574657220746F2063616C6C2069740A2020202A202044656661756C74';
wwv_flow_api.g_varchar2_table(11) := '206973206C6F670A2020202A20416C77617973206C6F67732022746869732220616E6420617070656E64206F7468657220706172616D65746572730A2020202A200A2020202A2057696C6C206C6F6F6B20617420242E636F6E736F6C652E63616E4C6F67';
wwv_flow_api.g_varchar2_table(12) := '282920746F207365652069662069742077696C6C2061637475616C6C79206C6F670A2020202A202053656520242E636F6E736F6C652E7365744C6576656C20666F72206C6576656C20696E666F726D6174696F6E0A2020202A0A2020202A202D20486F77';
wwv_flow_api.g_varchar2_table(13) := '20746F20757365202D200A2020202A200A2020202A202428277027292E6C6F6728293B202F2F57696C6C206C6F6720616C6C203C703E20746167730A2020202A202428277027292E6C6F6728277465737427292E746F67676C652829202F2F4C6F672061';
wwv_flow_api.g_varchar2_table(14) := '6C6C203C703E206F626A6563747320616E6420746F67676C6573207468656D0A2020202A202428277027292E6C6F6728277761726E272C277465737427293B202F2F5761726E696E67206C6F6720666F7220616C6C203C703E206F626A6563747320616E';
wwv_flow_api.g_varchar2_table(15) := '6420616464732027746573742720696E206465627567206D6573736167650A2020202A2F0A2020242E666E2E6C6F67203D2066756E6374696F6E202829207B0A202020202F2F4E6F746520746861742064697220616E6420646972786D6C2077696C6C20';
wwv_flow_api.g_varchar2_table(16) := '6F6E6C7920757365202274686973220A20202020766172206C6F67466E73203D205B276C6F67272C20276465627567272C2027696E666F272C20277761726E272C20276572726F72272C20277472616365272C2027646972272C2027646972786D6C275D';
wwv_flow_api.g_varchar2_table(17) := '3B0A2020202076617220636D64203D20276C6F67273B202F2F2044656661756C7420636F6D6D616E6420746F2072756E0A202020202F2F20436F6E7665727420617267756D656E747320746F2061727261790A202020207661722061726773203D204172';
wwv_flow_api.g_varchar2_table(18) := '7261792E70726F746F747970652E736C6963652E63616C6C28617267756D656E7473293B0A0A202020202F2F496620666972737420617267756D656E742069732061206C6F6720636F6D6D616E64207468656E207573652069742C206F74686572776973';
wwv_flow_api.g_varchar2_table(19) := '6520757365206C6F6720616E642072656D6F76652069740A2020202069662820617267756D656E74732E6C656E677468203E203020262620242E696E417272617928617267756D656E74735B305D2E746F4C6F7765724361736528292C6C6F67466E7329';
wwv_flow_api.g_varchar2_table(20) := '203E3D2030297B0A202020202020636D64203D20617267756D656E74735B305D3B0A2020202020202F2F52656D6F766520666972737420656C656D656E742073696E636520646F6E27742077616E7420697420746F2061707065617220616E796D6F7265';
wwv_flow_api.g_varchar2_table(21) := '0A202020202020617267732E736869667428293B0A202020207D0A0A202020202F2F4966206F662074686520636F6D6D616E642061637475616C6C79206578697374730A202020206966202877696E646F772E636F6E736F6C6520262620636F6E736F6C';
wwv_flow_api.g_varchar2_table(22) := '655B636D645D20262620242E636F6E736F6C652E63616E4C6F6728242E636F6E736F6C652E6C6576656C735B636D645D29297B0A202020202020746869732E656163682866756E6374696F6E2829207B0A2020202020202020636F6E736F6C655B636D64';
wwv_flow_api.g_varchar2_table(23) := '5D2E6170706C7928636F6E736F6C652C20242E6D65726765285B746869735D2C206172677329293B0A2020202020207D293B0A202020207D0A2020202072657475726E20746869733B0A20207D3B202F2F242E666E2E6C6F670A0A20202F2A2A0A202020';
wwv_flow_api.g_varchar2_table(24) := '2A205772617070657220666F7220636F6E736F6C652066756E6374696F6E2E0A2020202A205468697320616C6C6F777320796F7520746F206164642022636F6E736F6C65222063616C6C7320746F20242E636F6E736F6C6520616E6420646F206E6F7420';
wwv_flow_api.g_varchar2_table(25) := '6E65656420746F20776F7272792061626F75742062726F7773657220636F6D7061746962696C6974790A2020202A2044656661756C74206C6576656C20697320226F66662220736F206D75737420656E61626C6520666F72206F75747075740A2020202A';
wwv_flow_api.g_varchar2_table(26) := '20202D20415045583A2049662072756E20696E204150455820616E642073657373696F6E20697320696E206465627567206D6F64652C206C6576656C206973206175746F6D61746963616C6C792073657420746F20226C6F67220A2020202A0A2020202A';
wwv_flow_api.g_varchar2_table(27) := '202D20486F7720746F20757365202D0A2020202A200A2020202A202D20436865636B204C6576656C3A0A2020202A20242E636F6E736F6C652E6765744C6576656C28293B0A2020202A0A2020202A202D20536574204C6576656C3A0A2020202A20242E63';
wwv_flow_api.g_varchar2_table(28) := '6F6E736F6C652E7365744C6576656C28277761726E27293B202F2F4F6E6C7920656E61626C6573207761726E696E67206D6573736167657320616E64206C6F7765720A2020202A0A2020202A202D204C6F673A0A2020202A20242E636F6E736F6C652E6C';
wwv_flow_api.g_varchar2_table(29) := '6F672827746869732069732061206C6F67206D65737361676527293B0A2020202A20242E636F6E736F6C652E6572726F7228277468697320697320616E206572726F72206D65737361676527293B0A2020202A2F0A2020242E636F6E736F6C65203D2028';
wwv_flow_api.g_varchar2_table(30) := '66756E6374696F6E28297B0A202020202F2F2A2A2A2050726976617465202A2A2A0A202020202F2F4C6576656C730A20202020766172206C6576656C73203D207B0A2020202020206F6666203A20302C0A202020202020657863657074696F6E3A20312C';
wwv_flow_api.g_varchar2_table(31) := '0A2020202020206572726F72203A20322C0A2020202020207761726E3A20342C0A202020202020696E666F3A20382C0A2020202020206C6F67203A2031362C0A2020202020206465627567203A20313620202020200A202020207D3B0A202020200A2020';
wwv_flow_api.g_varchar2_table(32) := '20202F2F43757272656E74206C6576656C0A20202020766172206C6576656C203D206C6576656C732E6F66663B202F2F44656661756C7420746F206F66660A202020200A202020202F2F4C697374206F6620636F6E736F6C652066756E6374696F6E730A';
wwv_flow_api.g_varchar2_table(33) := '2020202076617220636F6E736F6C65466E73203D205B0A2020202020207B666E3A20276C6F67272C206C6576656C3A206C6576656C732E6C6F677D2C0A2020202020207B666E3A20276465627567272C206C6576656C3A206C6576656C732E6C6F677D2C';
wwv_flow_api.g_varchar2_table(34) := '0A2020202020207B666E3A2027696E666F272C206C6576656C3A206C6576656C732E696E666F7D2C0A2020202020207B666E3A20277761726E272C206C6576656C3A206C6576656C732E7761726E7D2C0A2020202020207B666E3A20276572726F72272C';
wwv_flow_api.g_varchar2_table(35) := '206C6576656C3A206C6576656C732E6572726F727D2C0A2020202020207B666E3A202774696D65272C206C6576656C3A206C6576656C732E6C6F677D2C0A2020202020207B666E3A202774696D65456E64272C206C6576656C3A206C6576656C732E6C6F';
wwv_flow_api.g_varchar2_table(36) := '677D2C0A2020202020207B666E3A202770726F66696C65272C206C6576656C3A206C6576656C732E6C6F677D2C0A2020202020207B666E3A202770726F66696C65456E64272C206C6576656C3A206C6576656C732E6C6F677D2C0A2020202020207B666E';
wwv_flow_api.g_varchar2_table(37) := '3A2027636F756E74272C206C6576656C3A206C6576656C732E6C6F677D2C0A2020202020207B666E3A20277472616365272C206C6576656C3A206C6576656C732E6C6F677D2C0A2020202020207B666E3A202767726F7570272C206C6576656C3A206C65';
wwv_flow_api.g_varchar2_table(38) := '76656C732E6572726F727D2C0A2020202020207B666E3A202767726F7570436F6C6C6170736564272C206C6576656C3A206C6576656C732E6572726F727D2C0A2020202020207B666E3A202767726F7570456E64272C206C6576656C3A206C6576656C73';
wwv_flow_api.g_varchar2_table(39) := '2E6572726F727D2C0A2020202020207B666E3A2027646972272C206C6576656C3A206C6576656C732E6C6F677D2C0A2020202020207B666E3A2027646972786D6C272C206C6576656C3A206C6576656C732E6C6F677D2C0A2020202020207B666E3A2027';
wwv_flow_api.g_varchar2_table(40) := '617373657274272C206C6576656C3A206C6576656C732E6C6F677D2C0A2020202020207B666E3A2027657863657074696F6E272C206C6576656C3A206C6576656C732E657863657074696F6E7D2C0A2020202020207B666E3A20277461626C65272C206C';
wwv_flow_api.g_varchar2_table(41) := '6576656C3A206C6576656C732E6C6F677D0A202020205D3B0A0A202020202F2F2A2A2A205075626C6963202A2A2A0A202020202F2F52657475726E205075626C6963206F626A656374730A2020202074686174203D207B7D3B0A202020200A202020202F';
wwv_flow_api.g_varchar2_table(42) := '2F416C6C6F77206F746865722066756E6374696F6E7320746F2061636365737320746865206C6576656C206E756D626572730A20202020746861742E6C6576656C73203D206C6576656C733B0A0A202020202F2A2A0A20202020202A2044657465726D69';
wwv_flow_api.g_varchar2_table(43) := '6E65732069662066756E6374696F6E2063616E206265206C6F676765640A20202020202A2040706172616D20704C6576656C204C6576656C206F662066756E6374696F6E206265696E672063616C6C65640A20202020202A204072657475726E20547275';
wwv_flow_api.g_varchar2_table(44) := '652069662063616E2072756E20636F6D6D616E642C2066616C7365206966206E6F740A20202020202A2F0A20202020746861742E63616E4C6F67203D2066756E6374696F6E28704C6576656C297B0A20202020202072657475726E206C6576656C203E3D';
wwv_flow_api.g_varchar2_table(45) := '20704C6576656C3B0A202020207D3B2F2F63616E4C6F670A0A202020202F2A2A0A20202020202A20536574206C6F67676572206465627567206C6576656C0A20202020202A20696620704C6576656C206973206E6F742076616C696420616E20616C6572';
wwv_flow_api.g_varchar2_table(46) := '74206D6573736167652077696C6C20626520646973706C617965640A20202020202A2040706172616D20704C6576656C204C6576656C202873656520746869732E6C6576656C7320666F722066756C6C206C697374206F66206C6576656C73290A202020';
wwv_flow_api.g_varchar2_table(47) := '20202A2F0A20202020746861742E7365744C6576656C203D2066756E6374696F6E28704C6576656C297B0A2020202020207661722074656D704C6576656C203D206C6576656C735B704C6576656C2E746F4C6F7765724361736528295D3B0A2020202020';
wwv_flow_api.g_varchar2_table(48) := '202F2F436865636B20746F2073656520696620746865206C6576656C2069732061637475616C6C7920612076616C6964206C6576656C0A2020202020206966202874656D704C6576656C203D3D20756E646566696E6564290A2020202020202020616C65';
wwv_flow_api.g_varchar2_table(49) := '72742827496E76616C6964204C6576656C3A2027202B20704C6576656C293B0A202020202020656C73650A20202020202020206C6576656C203D2074656D704C6576656C3B0A202020207D3B2F2F7365744C6576656C0A202020200A202020202F2A2A0A';
wwv_flow_api.g_varchar2_table(50) := '20202020202A204072657475726E204C6576656C20696E20746578742028692E652E206E6F7420746865206E756D657269632076616C7565290A20202020202A2F0A20202020746861742E6765744C6576656C203D2066756E6374696F6E28297B0A2020';
wwv_flow_api.g_varchar2_table(51) := '20202020666F722028766172206B657920696E206C6576656C7329207B0A2020202020202020696620286C6576656C732E6861734F776E50726F7065727479286B657929202626206C6576656C735B6B65795D203D3D206C6576656C297B0A2020202020';
wwv_flow_api.g_varchar2_table(52) := '202020202072657475726E206B65793B0A20202020202020202020627265616B3B0A20202020202020207D2F2F2069660A2020202020207D2F2F666F720A2020202020200A2020202020202F2F4469646E27742066696E642069740A2020202020207265';
wwv_flow_api.g_varchar2_table(53) := '7475726E2027556E6B6E6F776E3A2027202B206C6576656C3B0A202020207D3B2F2F6765744C6576656C0A202020200A202020202F2A2A0A20202020202A204072657475726E207472756520696620696E20415045582073657373696F6E20616E642064';
wwv_flow_api.g_varchar2_table(54) := '65627567206D6F6465206973207365740A20202020202A2F0A20202020746861742E6973417065784465627567203D2066756E6374696F6E28297B0A20202020202076617220636865636B203D20646F63756D656E742E676574456C656D656E74427949';
wwv_flow_api.g_varchar2_table(55) := '64282770646562756727293B0A20202020202072657475726E20636865636B20213D20756E646566696E6564202626202428272370646562756727292E76616C28292E746F4C6F776572436173652829203D3D2027796573273B0A202020207D3B202F2F';
wwv_flow_api.g_varchar2_table(56) := '69734170657844656275670A0A202020202F2F4170706C7920636F6E736F6C652066756E6374696F6E7320746F202274686174220A20202020666F722028693D303B2069203C20636F6E736F6C65466E732E6C656E6774683B20692B2B297B0A20202020';
wwv_flow_api.g_varchar2_table(57) := '2020766172206D79466E203D20636F6E736F6C65466E735B695D3B0A2020202020202F2F436F6E736F6C65206578697374730A2020202020202866756E6374696F6E2870462C20704C297B0A2020202020202020746861745B70465D203D2066756E6374';
wwv_flow_api.g_varchar2_table(58) := '696F6E28297B0A202020202020202020202F2F4F6E6C792072756E20636F6E736F6C6520696620796F752063616E206C6F672C20616E6420636F6E736F6C65206578697374732E0A202020202020202020202F2F436865636B696E6720636F6E736F6C65';
wwv_flow_api.g_varchar2_table(59) := '2061742072756E2074696D6520666F7220656E67696E6573206C696B652046697265627567204C6974650A20202020202020202020696628746869732E63616E4C6F6728704C292026262077696E646F772E636F6E736F6C6520262620636F6E736F6C65';
wwv_flow_api.g_varchar2_table(60) := '5B70465D290A202020202020202020202020636F6E736F6C655B70465D2E6170706C792820636F6E736F6C652C20617267756D656E747320293B0A20202020202020207D3B0A2020202020207D29286D79466E2E666E2C206D79466E2E6C6576656C293B';
wwv_flow_api.g_varchar2_table(61) := '0A202020207D2F2F666F720A0A2020202072657475726E20746861743B0A20207D2928293B2F2F24636F6E736F6C650A0A20202F2F4175746F6D61746963616C6C7920736574206C6F6767696E67206C6576656C20666F72206170657820696E20646562';
wwv_flow_api.g_varchar2_table(62) := '7567206D6F64650A20202428646F63756D656E74292E72656164792866756E6374696F6E28297B0A2020202069662028242E636F6E736F6C652E69734170657844656275672829290A202020202020242E636F6E736F6C652E7365744C6576656C28276C';
wwv_flow_api.g_varchar2_table(63) := '6F6727293B0A20207D293B0A7D29286A5175657279293B';
null;
 
end;
/

 
begin
 
wwv_flow_api.create_plugin_file (
  p_id => 4416832258092532 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 4408409625584387 + wwv_flow_api.g_id_offset
 ,p_file_name => '$logger_1.0.0.js'
 ,p_mime_type => 'application/x-javascript'
 ,p_file_content => wwv_flow_api.g_varchar2_table
  );
null;
 
end;
/

 
begin
 
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2A0A202A20436C617269466974204A53204150455820506C7567696E20636F64650A202A20687474703A2F2F7777772E636C6172696669742E636F6D0A202A206170657840636C6172696669742E636F6D0A202A0A202A205772617070657220666F';
wwv_flow_api.g_varchar2_table(2) := '7220436C617269466974204150455820506C7567696E730A202A202043464150203D20436C617269466974204170657820506C7567696E0A202A0A202A2052657175697265733A0A202A20202D246C6F676765725F312E302E302E6A730A202A20202D24';
wwv_flow_api.g_varchar2_table(3) := '636C6172696669745F312E302E302E6A730A202A2F0A2463666170203D207B7D3B0A0A2F2F2A2A2A2053696D706C654D6F64616C202A2A2A0A24636661702E73696D706C654D6F64616C203D207B7D3B0A0A2F2A2A0A202A2053696D706C65204D6F6461';
wwv_flow_api.g_varchar2_table(4) := '6C3A2053686F770A202A2F0A24636661702E73696D706C654D6F64616C2E73686F77203D2066756E6374696F6E2028297B0A2020242E636F6E736F6C652E67726F75702827436C6172694669743A2073696D706C654D6F64616C2E73686F7727293B0A20';
wwv_flow_api.g_varchar2_table(5) := '20242E636F6E736F6C652E6C6F6728274170657820706C7567696E2074686973272C2074686973293B0A20200A20202F2F5661726961626C65730A202076617220706172616D73203D207B0A20202020686964654F6E436C6F7365203A20746869732E61';
wwv_flow_api.g_varchar2_table(6) := '6374696F6E2E61747472696275746530312E746F4C6F776572436173652829203D3D202774727565272C0A202020206F706163697479203A20746869732E616374696F6E2E61747472696275746530322C0A20202020657363436C6F7365203A20746869';
wwv_flow_api.g_varchar2_table(7) := '732E616374696F6E2E61747472696275746530332E746F4C6F776572436173652829203D3D202774727565272C0A202020206D6F64616C203A20746869732E616374696F6E2E61747472696275746530342E746F4C6F776572436173652829203D3D2027';
wwv_flow_api.g_varchar2_table(8) := '74727565272C0A202020206261636B67726F756E64436F6C6F72203A20746869732E616374696F6E2E61747472696275746530350A20207D3B0A20200A2020766172206166666563746564456C656D656E7473203D20746869732E616666656374656445';
wwv_flow_api.g_varchar2_table(9) := '6C656D656E74733B0A20200A202076617220764F7074696F6E73203D7B0A202020206F706163697479203A20706172616D732E6F7061636974792C0A20202020657363436C6F7365203A20706172616D732E657363436C6F73652C0A202020206D6F6461';
wwv_flow_api.g_varchar2_table(10) := '6C203A20706172616D732E6D6F64616C2C0A202020206F6E436C6F7365203A2066756E6374696F6E286469616C6F67297B0A202020202020242E6D6F64616C2E636C6F736528293B2020202020200A20202020202069662028706172616D732E68696465';
wwv_flow_api.g_varchar2_table(11) := '4F6E436C6F7365297B0A2020202020202020242E636F6E736F6C652E6C6F6728274175746F6D61746963616C6C7920636C6F73696E6720616666656374656420656C656D656E747327293B0A20202020202020206166666563746564456C656D656E7473';
wwv_flow_api.g_varchar2_table(12) := '2E6869646528293B0A2020202020207D0A202020207D2F2F6F6E436C6F73650A20207D3B0A20200A202069662028706172616D732E6261636B67726F756E64436F6C6F7220213D206E756C6C290A20202020764F7074696F6E732E6F7665726C61794373';
wwv_flow_api.g_varchar2_table(13) := '73203D207B6261636B67726F756E64436F6C6F723A20706172616D732E6261636B67726F756E64436F6C6F727D3B0A2020200A20202F2F4966206E6F20416666656374656420456C656D656E747320776572652073656C6563746564202864656661756C';
wwv_flow_api.g_varchar2_table(14) := '747320746F20646F63756D656E7429206F7220696E76616C756420616666656374656420656C656D656E7473207468656E20646F206E6F7468696E670A2020696628746869732E6166666563746564456C656D656E74732E6C656E677468203D3D203020';
wwv_flow_api.g_varchar2_table(15) := '7C7C2028746869732E6166666563746564456C656D656E74732E6C656E677468203D3D203120262620746869732E6166666563746564456C656D656E74735B305D203D3D20646F63756D656E7429297B0A2020202020202F2F4E6F20656C656D656E7473';
wwv_flow_api.g_varchar2_table(16) := '20776572652070726F76696465640A20202020242E636F6E736F6C652E7761726E28274E6F20616666656374656420656C656D656E74732C206E6F7468696E6720746F20646F2E27293B0A20207D0A2020656C73657B0A202020202F2F53686F77206F62';
wwv_flow_api.g_varchar2_table(17) := '6A656374730A202020202F2F5265636F6D6D656E64656420746F2073686F77206F6E6C792031206F626A6563742C206275742063616E2068616E646C65206D6F72650A2020202069662028746869732E6166666563746564456C656D656E74732E6C656E';
wwv_flow_api.g_varchar2_table(18) := '677468203E2031290A202020202020242E636F6E736F6C652E696E666F28274D6F7265207468616E203120616666656374656420656C656D656E74732E204E6F74207265636F6D6D656E64656427293B0A2020202024636C6172696669742E6D6F64616C';
wwv_flow_api.g_varchar2_table(19) := '53686F7728746869732E6166666563746564456C656D656E74732C20764F7074696F6E73293B0A20207D0A2020242E636F6E736F6C652E67726F7570456E6428293B0A7D2F2F2024636661702E6D6F64616C53686F770A0A2F2A2A0A202A20436C6F7365';
wwv_flow_api.g_varchar2_table(20) := '2053696D706C65204D6F64616C200A202A2F0A24636661702E73696D706C654D6F64616C2E636C6F7365203D2066756E6374696F6E2028297B0A2020242E636F6E736F6C652E67726F75702827436C6172694669743A2073696D706C654D6F64616C2E63';
wwv_flow_api.g_varchar2_table(21) := '6C6F736527293B0A202024636C6172696669742E6D6F64616C436C6F736528293B0A2020242E636F6E736F6C652E67726F7570456E6428293B0A7D2F2F24636661702E73696D706C654D6F64616C53686F77';
null;
 
end;
/

 
begin
 
wwv_flow_api.create_plugin_file (
  p_id => 4435208161243055 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 4408409625584387 + wwv_flow_api.g_id_offset
 ,p_file_name => '$cfap_1.0.0.js'
 ,p_mime_type => 'application/x-javascript'
 ,p_file_content => wwv_flow_api.g_varchar2_table
  );
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
