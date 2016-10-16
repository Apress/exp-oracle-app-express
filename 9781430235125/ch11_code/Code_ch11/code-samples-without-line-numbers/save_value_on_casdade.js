(function($){
$.widget("ui.save_value_on_casdade", {
   initItem: function(apexThis) {
      var uiw = this;
      
      apexThis.affectedElements.each(function() {
         var $this = $(this);
         
         $this
            .data('value-saved', $v($this.attr('id')))
            .bind('change', function() {
               $this.data('value-saved', $v($this.attr('id')));
            })
            .bind('apexafterrefresh', function() {
               uiw._restoreValue($this);
            });
      });
   },
   _restoreValue: function($affectedElement) {     
      $s($affectedElement.attr('id'), $affectedElement.data('value-saved'));
   }
});
})(apex.jQuery);