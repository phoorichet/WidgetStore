$(window).load(function() {
  $('.install').bind('ajax:success', function() {
    $(this).text('Installed');
    $(this).attr('disabled', 'disabled');
    $(this).attr('href', '#');
  });
  $('.install').bind('ajax:error', function() {
    console.log('Install error');
  });
});