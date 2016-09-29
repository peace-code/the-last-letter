//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require unobtrusive_flash
//= require unobtrusive_flash_bootstrap
//= require jquery.infinitescroll
//
UnobtrusiveFlash.flashOptions['timeout'] = 3000;

$(document).on('ready', function(e) {
  $('.btn-show-form').on('click', function(e) {
    $('#comment-btn-show-form-box').hide();
    $('#comment-form-box').show();
    $('#comment-form-box #comment_nickname').focus();
    return false;
  });

  $("section#comments-section .comments-list .page").infinitescroll({
    navSelector: "ul.pagination",
    nextSelector: "ul.pagination a[rel=next]",
    itemSelector: "section#comments-section .comment"
  });
//     navSelector: "nav.pagination" # selector for the paged navigation (it will be hidden)
//     nextSelector: "nav.pagination a[rel=next]" # selector for the NEXT link (to page 2)
//     itemSelector: "#posts tr.post" # selector for all items you'll retrieve
// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/
});
