$(function () {
  $('.item').hover(function () {
    $(this).find('.text').show();
  }, function () {
    $(this).find('.text').hide();
  });
});

$('#new_inspiration').validate();