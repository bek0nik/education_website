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

//validates login
$(document).ready(function(){
  $('#login').validate({
    rules: {
      'email': {
        required: true,
        email: true,
      },
      'password': {
        required: true
      },
    },
    messages:{
      'email': {
        required: 'Введите email',
        email: 'Введите корректный email',
      },
      'password': 'Введите пароль',
    }
  })
});
