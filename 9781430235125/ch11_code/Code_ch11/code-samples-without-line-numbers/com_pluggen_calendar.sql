FUNCTION pg_calendar_render (
   p_region              IN APEX_PLUGIN.T_REGION,
   p_plugin              IN APEX_PLUGIN.T_PLUGIN,
   p_is_printer_friendly IN BOOLEAN
)

   RETURN APEX_PLUGIN.T_REGION_RENDER_RESULT
   
IS

   l_retval         APEX_PLUGIN.T_REGION_RENDER_RESULT;
   l_onload_code    VARCHAR2(4000);
   l_jqueryui_theme VARCHAR2(30) := p_plugin.attribute_01;
   l_crlf           CHAR(2) := CHR(13)||CHR(10);
   
BEGIN

   IF apex_application.g_debug 
   THEN
      apex_plugin_util.debug_region (
         p_plugin => p_plugin,
         p_region => p_region
      );
   END IF;

   sys.htp.p(
      '<div id="' || p_region.static_id || '_FULL_CALENDAR"></div>'
   );

   apex_javascript.add_library(
      p_name      => 'com_pluggen_calendar',
      p_directory => p_plugin.file_prefix,
      p_version   => NULL
   );

   apex_javascript.add_library (
      p_name      => 'jquery.ui.button.min',
      p_directory => apex_application.g_image_prefix || 'libraries/jquery-ui/1.8/ui/minified/',
      p_version   => NULL
   );

   apex_javascript.add_library (
      p_name      => 'fullcalendar.min',
      p_directory => p_plugin.file_prefix,
      p_version   => NULL
   );
   
   IF l_jqueryui_theme IS NOT NULL
   THEN
      apex_css.add_file(
         p_name      => 'jquery-ui',
         p_directory => apex_application.g_image_prefix || 'libraries/jquery-ui/1.8/themes/' || l_jqueryui_theme || '/',
         p_version   => NULL
      );
   END IF;
   
   apex_css.add_file(
      p_name      => 'fullcalendar',
      p_directory => p_plugin.file_prefix,
      p_version   => NULL
   );

   l_onload_code := 'apex.jQuery("div#' || p_region.static_id || '").pg_calendar({' || l_crlf
      || '   ' || apex_javascript.add_attribute('theme', l_jqueryui_theme, TRUE, TRUE) || l_crlf
      || '   ' || apex_javascript.add_attribute('ajaxIdentifier', apex_plugin.get_ajax_identifier(), FALSE, FALSE) || l_crlf
      || '});';
      
   apex_javascript.add_onload_code (
      p_code => l_onload_code
   );
        
   RETURN l_retval;
    
END pg_calendar_render;

FUNCTION pg_calendar_ajax (
   p_region IN APEX_PLUGIN.T_REGION,
   p_plugin IN APEX_PLUGIN.T_PLUGIN
)

   RETURN APEX_PLUGIN.T_REGION_AJAX_RESULT

IS

   l_retval            APEX_PLUGIN.T_REGION_AJAX_RESULT;
   l_column_value_list APEX_PLUGIN_UTIL.T_COLUMN_VALUE_LIST;  
   l_start_date_item   VARCHAR2(32767) := p_region.attribute_01;
   l_end_date_item     VARCHAR2(32767) := p_region.attribute_02;
   l_window_start      DATE;
   l_window_end        DATE;
   l_id                PLS_INTEGER;
   l_title             VARCHAR2(32767);
   l_all_day           BOOLEAN;
   l_start             VARCHAR2(50);
   l_end               VARCHAR2(50);
   l_url               VARCHAR2(32767);
   l_class_name        VARCHAR2(100);
   l_crlf              CHAR(2) := CHR(13)||CHR(10);
  
BEGIN
   
   IF l_start_date_item IS NOT NULL
   THEN
      l_window_start := TO_DATE(apex_application.g_x01, 'YYYYMMDD');
      apex_util.set_session_state(l_start_date_item, l_window_start);
   END IF;
   
   IF l_end_date_item IS NOT NULL
   THEN
      l_window_end := TO_DATE(apex_application.g_x02, 'YYYYMMDD');
      apex_util.set_session_state(l_end_date_item, l_window_end);
   END IF;

   l_column_value_list := apex_plugin_util.get_data(
      p_sql_statement  => p_region.source, 
      p_min_columns    => 7, 
      p_max_columns    => 7, 
      p_component_name => p_region.name
   );   

   apex_plugin_util.print_json_http_header;
   
   sys.htp.p('[');
   
   FOR x IN 1 .. l_column_value_list(1).count
   LOOP
      l_id := sys.htf.escape_sc(l_column_value_list(1)(x));
      l_title := sys.htf.escape_sc(l_column_value_list(2)(x));
      l_all_day :=
         CASE
            WHEN UPPER(sys.htf.escape_sc(l_column_value_list(3)(x))) = 'Y'
            THEN TRUE
            ELSE FALSE
         END;
      l_start := sys.htf.escape_sc(l_column_value_list(4)(x));
      l_end := sys.htf.escape_sc(l_column_value_list(5)(x));
      l_url := sys.htf.escape_sc(l_column_value_list(6)(x));
      l_class_name := sys.htf.escape_sc(l_column_value_list(7)(x));
      
      sys.htp.p(
            CASE
               WHEN x > 1 THEN ',' 
            END 
         || '{'
         || apex_javascript.add_attribute('id', l_id, TRUE, TRUE)
         || apex_javascript.add_attribute('allDay', l_all_day, TRUE, TRUE)
         || apex_javascript.add_attribute('end', l_end, TRUE, TRUE)
         || apex_javascript.add_attribute('url', l_url, TRUE, TRUE)
         || apex_javascript.add_attribute('className', l_class_name, TRUE, TRUE)
         || apex_javascript.add_attribute('title', l_title, FALSE, TRUE)
         || apex_javascript.add_attribute('start', l_start, FALSE, FALSE)
         || '}'
      );
   END LOOP;
   
   sys.htp.p(']');

   RETURN l_retval;

END pg_calendar_ajax;