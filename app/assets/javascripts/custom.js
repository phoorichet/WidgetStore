$(window).load(function() {

  $('.install').bind('ajax:success', function() {
    $(this).text('Installed');
    $(this).removeClass('btn-info');
  });

  $('.install').bind('ajax:error', function() {  
    console.log('error');
  });
});
