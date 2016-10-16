(function($){
$.widget("ui.pg_password", {
   options: {
      warningMsgIcon: null,
      warningMsgText: null,
      warningMsgWidth: null,
      warningMsgAlignment: null,
      passwordAlignment: null,
      offset: null
   },
   _create: function() {
      var uiw = this;
      
      uiw.element
         .keypress(function(jQevent) {
            //Code based on Joe Liversedge's submission on http://stackoverflow.com
            var character = String.fromCharCode(jQevent.which);
            
            if (character.toUpperCase() === character.toLowerCase()) {
               return;
            }

            // SHIFT doesn't usually give us a lowercase character. Check for this
            // and for when we get a lowercase character when SHIFT is enabled. 
            if (
               (jQevent.shiftKey && character.toLowerCase() === character) ||
               (!jQevent.shiftKey && character.toUpperCase() === character)
            ) {
               uiw._showMessage();
            } else {
               uiw._hideMessage();
            }
         })
         .blur(function() {
            uiw._hideMessage();
         });
   },
   _showMessage: function() {
      var uiw = this;
      var html;
      var warningId = uiw.element.attr('id') + '_CL_WARNING';
      
      if (!$('#' + warningId).length) {
         html = 
            '<div class="ui-state-highlight ui-corner-all" style="width: ' + uiw.options.warningMsgWidth + 
            'px; padding: 0pt 0.7em;" id="' + warningId + '"><table><tr><td>\n' +
            '   <span class="ui-icon ' + uiw.options.warningMsgIcon + 
            '" style="float: left; margin-right:0.3em;"></span></td><td>' +
            '   <p>' + uiw.options.warningMsgText +
            '</p></td></tr></table></div>';
         
         $('body').append(html);

         $('#' + warningId).position({
            of: uiw.element,
            my: uiw.options.warningMsgAlignment,
            at: uiw.options.passwordAlignment,
            offset: uiw.options.offset,
            collision: 'none'
         });
      }
   },
   _hideMessage: function() {
      var uiw = this;
      var warningId = uiw.element.attr('id') + '_CL_WARNING';

      $('#' + warningId).remove();
   }
});
})(apex.jQuery);