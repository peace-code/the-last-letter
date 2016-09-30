//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require unobtrusive_flash
//= require unobtrusive_flash_bootstrap
//= require jquery.infinitescroll
//= require jquery.validate

UnobtrusiveFlash.flashOptions['timeout'] = 3000;

$(document).on('ready', function(e) {
  $('.btn-show-form').on('click', function(e) {
    $('#comment-btn-show-form-box').hide();
    $('#comment-form-box').show();
    $('#comment-form-box #comment_nickname').focus();
    return false;
  });

  $('.btn-hide-form').on('click', function(e) {
    $('#comment-btn-show-form-box').show();
    $('#comment-form-box').hide();
    return false;
  });

  $("section#comments-section .comments-list .page").infinitescroll({
    navSelector: "ul.pagination",
    nextSelector: "ul.pagination a[rel=next]",
    itemSelector: "section#comments-section .comment"
  });

  $('#new_comment').validate({
    ignore: ':hidden',
    errorPlacement: function(error, element) {
      return true;
    },
    highlight: function(element, errorClass, validClass) {
      $(element).closest('.form-group').addClass('field_with_errors');
    },
    unhighlight: function(element, errorClass, validClass) {
      $(element).closest('.form-group').removeClass('field_with_errors');
    }
  });
});
