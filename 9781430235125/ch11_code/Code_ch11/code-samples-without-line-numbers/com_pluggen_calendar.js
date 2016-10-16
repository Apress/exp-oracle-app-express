(function($){
$.widget("ui.calendar", { 
   options: {
      theme: null,
      ajaxIdentifier: null
   },
   _create: function() {
      var uiw = this;
      
      $('#' + uiw.element.attr('id') + '_FULL_CALENDAR').fullCalendar({
         editable: false,
         theme: uiw.options.theme !== null,
         events: function(start, end, callback){uiw.getDates(start, end, callback)},
         ignoreTimeZone: true,
         weekends: true,
         header: {
            left:   'today prev,next',
            center: 'title',
            right:  'agendaDay agendaWeek month'
         },
         viewDisplay: function(view) {
            uiw.element.trigger('calendarviewdisplay');
         }
      }); 
      
      uiw.element.bind('apexrefresh', function() {
         $('#' + uiw.element.attr('id') + '_FULL_CALENDAR').fullCalendar('refetchEvents');
      });
   },
   getDates: function(start, end, callback) {
      var uiw = this;

      uiw.element.trigger('apexbeforerefresh');
      
      $.ajax({
         type: 'POST',
         url: 'wwv_flow.show',
         data: {
            p_flow_id: $('#pFlowId').val(),
            p_flow_step_id: $('#pFlowStepId').val(),
            p_instance: $('#pInstance').val(),
            p_request: 'PLUGIN=' + uiw.options.ajaxIdentifier,
            x01: $.fullCalendar.formatDate(start, 'yyyyMMdd'),
            x02: $.fullCalendar.formatDate(end, 'yyyyMMdd')
         },
         dateType: 'json',
         async: false,
         success: function(data) {
            callback(data);
            uiw.element.trigger('apexafterrefresh');
         }
      });
   }
});
})(apex.jQuery);