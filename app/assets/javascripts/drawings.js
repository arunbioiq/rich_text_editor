$(document).ready(function() {
 $('#summernote').summernote({
   height: 300,                 
   minHeight: null,              
   maxHeight: null,              
   focus: true                
 });

 $('#summernote').on('summernote.change', function(we, contents, $editable) {
   $('#drawing_html').attr('value', $('#summernote').summernote('code'));
 });
});
 