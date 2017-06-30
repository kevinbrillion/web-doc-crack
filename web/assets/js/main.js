$(document).ready(function () {

  $(document).ajaxStart(function () {
    $('#loading').show();
  }).ajaxStop(function () {
    $('#loading').hide();
  });

  $('#fullpage').fullpage({
    anchors: ['Page1', 'Page2', 'Page3', 'Page4', 'Page5', 'Page6', 'Page7', 'Page8'],
    menu: '#btns-wrapper',
    scrollingSpeed: 1000
  });

  $('.wrapper_nav_menu').click(function () {
    var overlay_navigation = $('.overlay-navigation'),
      nav_item_1 = $('nav li:nth-of-type(1)'),
      nav_item_2 = $('nav li:nth-of-type(2)'),
      nav_item_3 = $('nav li:nth-of-type(3)'),
      nav_item_4 = $('nav li:nth-of-type(4)'),
      nav_item_5 = $('nav li:nth-of-type(5)');

    overlay_navigation.toggleClass('overlay-active');
    if (overlay_navigation.hasClass('overlay-active')) {
      overlay_navigation.removeClass('overlay-slide-up').addClass('overlay-slide-down');
      nav_item_1.removeClass('slide-in-nav-item-reverse').addClass('slide-in-nav-item');
      nav_item_2.removeClass('slide-in-nav-item-delay-1-reverse').addClass('slide-in-nav-item-delay-1');
      nav_item_3.removeClass('slide-in-nav-item-delay-2-reverse').addClass('slide-in-nav-item-delay-2');
      nav_item_4.removeClass('slide-in-nav-item-delay-3-reverse').addClass('slide-in-nav-item-delay-3');
      nav_item_5.removeClass('slide-in-nav-item-delay-4-reverse').addClass('slide-in-nav-item-delay-4');
    } else {
      overlay_navigation.removeClass('overlay-slide-down').addClass('overlay-slide-up');
      nav_item_1.removeClass('slide-in-nav-item').addClass('slide-in-nav-item-reverse');
      nav_item_2.removeClass('slide-in-nav-item-delay-1').addClass('slide-in-nav-item-delay-1-reverse');
      nav_item_3.removeClass('slide-in-nav-item-delay-2').addClass('slide-in-nav-item-delay-2-reverse');
      nav_item_4.removeClass('slide-in-nav-item-delay-3').addClass('slide-in-nav-item-delay-3-reverse');
      nav_item_5.removeClass('slide-in-nav-item-delay-4').addClass('slide-in-nav-item-delay-4-reverse');
    }
  });

  $('.sidebar-button').click(function (e) {
    e.stopPropagation();
    e.preventDefault();
    $('.hide-sidebar').toggleClass('show-sidebar');
    if ($(".icon-cancel-sidebar").hasClass("icon-hide-sidebar")) {
      $(".icon-cancel-sidebar").removeClass("icon-hide-sidebar");
      $(".icon-show-sidebar").addClass("icon-hide-sidebar");
    } else {
      $(".icon-cancel-sidebar").addClass("icon-hide-sidebar");
      $(".icon-show-sidebar").removeClass("icon-hide-sidebar");
    }
  });


  $('.hide-sidebar').click(function (e) {
    e.stopPropagation();
    e.preventDefault();
  });


  $('body,html').click(function (e) {
    $('.hide-sidebar').removeClass('show-sidebar');
    $(".icon-cancel-sidebar").addClass("icon-hide-sidebar");
    $(".icon-show-sidebar").removeClass("icon-hide-sidebar");
  });

});

var silence = false;

function muteAudio() {

  var allaudio = document.querySelectorAll('audio,video')

  if (silence) {
    for (var j = 0; j < allaudio.length; j++) {
      allaudio[j].muted = false;
    }
    silence = false;
  } else {
    for (var j = 0; j < allaudio.length; j++) {
      allaudio[j].muted = true;
    }
    silence = true;
  }
}
