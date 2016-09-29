//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require unobtrusive_flash
//= require unobtrusive_flash_bootstrap

UnobtrusiveFlash.flashOptions['timeout'] = 3000;

$(document).on('ready', function(e) {
  $('.btn-show-form').on('click', function(e) {
    $('#comment-btn-show-form-box').hide();
    $('#comment-form-box').show();
    $('#comment-form-box #comment_nickname').focus();
    return false;
  });
});
