// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require_tree .

$(document).ready(function(){
$(".productDescription").hide();
$(".show_hide").show();
$('.show_hide').click(function(){
$(".productDescription").slideToggle();
return false;
});
});

$(function(){ $(document).foundation(); });

$(function() {
/* Convenience for forms or links that return HTML from a remote ajax call.
The returned markup will be inserted into the element id specified.
*/
$('form[data-update-target]').on('ajax:success', function(evt, data) {
var target = $(this).data('update-target');
$('#' + target).html(data);
});
});