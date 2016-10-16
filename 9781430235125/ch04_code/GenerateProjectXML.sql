create or replace function GenerateProjectXML
return varchar2
is
    l_chart_data_xml    varchar2(32767);
    l_task_xml          varchar2(32767);
    l_connector_xml     varchar2(32767);

    cursor tasks is
    select link
    ,      task_type
    ,      name
    ,      id
    ,      parent_id
    ,      predecessor
    ,      milestone_id
    ,      to_char(actual_start,'YYYY.MM.DD') start_date
    ,      to_char(actual_end,'YYYY.MM.DD')   end_date
    ,      progress
    from
    ( select null               link
      ,      'T'                task_type
      ,      todo_name          name
      ,      todo_id            id
      ,      feature_id         parent_id
      ,      parent_todo_id     predecessor
      ,      milestone_id       milestone_id
      ,      start_date         actual_start
      ,      due_date           actual_end
      ,      todo_status        progress
      from   apex_team_todos
      union
      select  null                 link
      ,      'F'                   task_type
      ,       feature_name         name
      ,       feature_id           id
      ,       parent_feature_id    parent_id
      ,       null                 predecessor
      ,       null                 milestone_id
      ,       null                 actual_start
      ,       null                 actual_end
      ,       feature_status       progress
      from    apex_team_features
      union
      select  null                 link
      ,       'M'                  task_type
      ,       milestone            name
      ,       milestone_id         id
      ,       null                 parent_id
      ,       null                 predecessor
      ,       null                 milestone_id
      ,       milestone_date       actual_start
      ,       null                 actual_end
      ,       null                 progress
    from apex_team_milestones
    order by 5
    )
    start with parent_id is null
    connect by prior id = parent_id
    ;
begin
    
    -- Project Chart Opening Tag    
    -- Define "auto_summary" so Anycharts does the calculations
    l_chart_data_xml := '<project_chart>'||
                        '<auto_summary enabled="True" />'
                        ;

    -- Task & Connectors Opening Tags
    l_task_xml := '<tasks>';
    l_connector_xml := '<connectors>';

    -- Loop through series data
    for c1 in tasks
    loop
      if c1.task_type ='T' -- ToDo
      then
        -- Task Tag
        l_task_xml  := l_task_xml         ||
                        '<task id="'      ||c1.id         ||'" '||
                         'name="'         ||c1.name       ||'" '||
                         'parent="'       ||c1.parent_id  ||'" '||
                         'actual_start="' ||c1.start_date ||'" '||
                         'actual_end="'   ||c1.end_date   ||'" '||
                         'progress="'     ||c1.progress   ||'" '||
                         'style="Gantt" />'
                         ;
        l_connector_xml := l_connector_xml          ||
                           '<connector '            ||
                           'type="FinishStart" '    ||
                           'from="'||c1.predecessor ||'" '||
                           'to="'  ||c1.id          ||'" '||
                           ' />'
                           ;
        if c1.milestone_id is not null
        then
          l_connector_xml := l_connector_xml          ||
                             '<connector '            ||
                             'type="FinishStart" '    ||
                             'from="'||c1.id          ||'" '||
                             'to="'  ||c1.milestone_id||'" '||
                             ' />'
                             ;
        end if;
      elsif c1.task_type = 'F' -- Feature
      then -- Start / End / Progress are auto-calculated
        l_task_xml  := l_task_xml         ||
                       '<task id="'       ||c1.id        ||'" '||
                         'name="'         ||c1.name      ||'" '||
                         'parent="'       ||c1.parent_id ||'" '||
                         '/>'
                         ;
          
      elsif c1.task_type = 'M' -- Milestone
      then -- A Milestone has no End date
        l_task_xml  := l_task_xml        ||
                       '<task id="'      ||c1.id        ||'" '||
                         'name="'        ||c1.name      ||'" '||
                         'actual_start="'||c1.start_date||'" '||
                         '/>'
                         ;
      end if;
    end loop;

    -- Task Closing Tag
    l_task_xml := l_task_xml||'</tasks>';

    -- Periods Closing Tag
    l_connector_xml := l_connector_xml||'</connectors>';
 
    -- Project Chart Closing Tag
    l_chart_data_xml := l_chart_data_xml ||
                        l_task_xml       ||
                        l_connector_xml  ||
                        '</project_chart>’;

    return l_chart_data_xml;
end;
