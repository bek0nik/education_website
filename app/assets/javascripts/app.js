$(document).ready(function() {
  $(".login").click(function(e){
    e.preventDefault();
    $("fieldset#login_menu").toggle();
    $(".login").toggleClass("menu-open");
  });
  $("fieldset#login_menu").mouseup(function(){
    return false
  });
  $(document).mouseup(function(e){
    if($(e.target).parent("a.login").length==0) {
      $(".login").removeClass("menu-open");
      $("fieldset#login_menu").hide();
    }
  });
});
