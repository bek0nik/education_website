var $j = jQuery.noConflict();
$j(document).ready(function() {
  $j(".login").click(function(e){
    e.preventDefault();
    $j("fieldset#login_menu").toggle();
    $j(".login").toggleClass("menu-open");
  });
  $j("fieldset#login_menu").mouseup(function(){
    return false
  });
  $j(document).mouseup(function(e){
    if($j(e.target).parent("a.login").length==0) {
      $j(".login").removeClass("menu-open");
      $j("fieldset#login_menu").hide();
    }
  });
});
//$j(document).ready(function(){
//  $j('ul#photo-anim').cycleThru({delay: 2000});
//});
//validates login
//$j(document).ready(function(){
//  $j('#login').validate({
//    rules: {
//      'email': {
//        required: true/*,
//        email: true,*/
//      },
//      'password': {
//        required: true
//      },
//    },
//    messages:{
//      'email': {
//        required: 'Введите email',
//        email: 'Введите корректный email',
//      },
//      'password': 'Введите пароль',
//    }
//  })
//});

$j(document).ready(function() {
  $j('#speciality th a, #speciality .pagination a').live("click", function() {
    $j.getScript(this.href);
    return false;
  });
  
  $j('#specialities_search input').keyup(function(){
    $j.get($j("#specialities_search").attr("action"), $j("#specialities_search").serialize(), null, "script");
    return false;
  });
});

 $j(document).ready(function() {
    $j("#tabs").tabs();
  });
