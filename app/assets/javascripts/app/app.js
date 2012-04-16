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

$(document).ready(function() {

    var $el, leftPos, newWidth,
        $mainNav = $("#example-one");

    $mainNav.append("<li id='magic-line'></li>");
    var $magicLine = $("#magic-line");

    $magicLine
        .width($(".current_page_item").width())
        .css("left", $(".current_page_item a").position().left)
        .data("origLeft", $magicLine.position().left)
        .data("origWidth", $magicLine.width());

    $("#example-one li a").hover(function() {
        $el = $(this);
        leftPos = $el.position().left;
        newWidth = $el.parent().width();
        $magicLine.stop().animate({
            left: leftPos,
            width: newWidth
        });
    }, function() {
        $magicLine.stop().animate({
            left: $magicLine.data("origLeft"),
            width: $magicLine.data("origWidth")
        });
    });
});
