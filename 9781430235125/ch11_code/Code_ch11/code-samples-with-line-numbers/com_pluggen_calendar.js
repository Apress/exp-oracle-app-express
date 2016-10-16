 1 (function($){
 2 $.widget("ui.calendar", { 
 3    options: {
 4       theme: null,
 5       ajaxIdentifier: null
 6    },
 7    _init: function() {
 8       var uiw = this;
 9       
10       $('#' + uiw.element.attr('id') + '_FULL_CALENDAR').fullCalendar({
11          editable: false,
12          theme: uiw.options.theme !== null,
13          events: function(start, end, callback){uiw.getDates(start, end, callback)},
14          ignoreTimeZone: true,
15          weekends: true,
16          header: {
17             left:   'today prev,next',
18             center: 'title',
19             right:  'agendaDay agendaWeek month'
20 
21          },
22          viewDisplay: function(view) {
23             uiw.element.trigger('calendarviewdisplay');
24          }
25       }); 
26       
27       uiw.element.bind('apexrefresh', function() {
28          $('#' + uiw.element.attr('id') + '_FULL_CALENDAR').fullCalendar('refetchEvents');
29       });
30    },
31    getDates: function(start, end, callback) {
32       var uiw = this;
33 
34       uiw.element.trigger('apexbeforerefresh');
35       
36       $.ajax({
37          type: 'POST',
38          url: 'wwv_flow.show',
39          data: {
40             p_flow_id: $('#pFlowId').val(),
41             p_flow_step_id: $('#pFlowStepId').val(),
42             p_instance: $('#pInstance').val(),
43             p_request: 'PLUGIN=' + uiw.options.ajaxIdentifier,
44             x01: $.fullCalendar.formatDate(start, 'yyyyMMdd'),
45             x02: $.fullCalendar.formatDate(end, 'yyyyMMdd')
46          },
47          dateType: 'json',
48          async: false,
49          success: function(data) {
50             callback(data);
51             uiw.element.trigger('apexafterrefresh');
52          }
53       });
54    }
55 });
56 })(apex.jQuery);