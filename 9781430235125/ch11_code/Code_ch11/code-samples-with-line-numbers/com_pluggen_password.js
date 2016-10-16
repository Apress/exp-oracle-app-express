 1 (function($){
 2 $.widget("ui.password", {
 3    options: {
 4       warningMsgIcon: null,
 5       warningMsgText: null,
 6       warningMsgWidth: null,
 7       warningMsgAlignment: null,
 8       passwordAlignment: null,
 9       offset: null
10    },
11    _create: function() {
12       var uiw = this;
13       
14       $(uiw.element)
15          .keypress(function(jQevent) {
16             //Code based on Joe Liversedge's submission on http://stackoverflow.com
17             var character = String.fromCharCode(jQevent.which);
18             
19             if (character.toUpperCase() === character.toLowerCase()) {
20                return;
21             }
22 
23             // SHIFT doesn't usually give us a lowercase character. Check for this
24             // and for when we get a lowercase character when SHIFT is enabled. 
25             if (
26                (jQevent.shiftKey && character.toLowerCase() === character) ||
27                (!jQevent.shiftKey && character.toUpperCase() === character)
28             ) {
29                uiw._showMessage();
30             } else {
31                uiw._hideMessage();
32             }
33          })
34          .blur(function() {
35             uiw._hideMessage();
36          });
37    },
38    _showMessage: function() {
39       var uiw = this;
40       var html;
41       var warningId = $(uiw.element).attr('id') + '_CL_WARNING';
42       
43       if (!$('#' + warningId).length) {
44          html = 
45             '<div class="ui-state-highlight ui-corner-all" style="width: ' + uiw.options.warningMsgWidth + 
46             'px; padding: 0pt 0.7em;" id="' + warningId + '"><table><tr><td>\n' +
47             '   <span class="ui-icon ' + uiw.options.warningMsgIcon + 
48             '" style="float: left; margin-right:0.3em;"></span></td><td>' +
49             '   <p>' + uiw.options.warningMsgText +
50             '</p></td></tr></table></div>';
51          
52          $('body').append(html);
53 
54          $('#' + warningId).position({
55             of: $(uiw.element),
56             my: uiw.options.warningMsgAlignment,
57             at: uiw.options.passwordAlignment,
58             offset: uiw.options.offset,
59             collision: 'none'
60          });
61       }
62    },
63    _hideMessage: function() {
64       var uiw = this;
65       var warningId = $(uiw.element).attr('id') + '_CL_WARNING';
66 
67       $('#' + warningId).remove();
68    }
69 });
70 })(apex.jQuery);