$(document).ready(function () {
  $('#fullpage').fullpage({
    anchors: ['Page1', 'Page2', 'Page3', 'Page4', 'Page5', 'Page6', 'Page7'],
    menu: '#menu',
    scrollingSpeed: 1000
  });

  window.my_mute = false;

  $('#my_mute_button').bind('click', function () {

    $('audio,video').each(function () {

      if (!my_mute) {

        if (!$(this).paused) {
          $(this).data('muted', true);
          $(this).muted=true;
        }

      } else {

        if ($(this).data('muted')) {
          $(this).data('muted', false);
          $(this).muted=false;
        }

      }
    });

    my_mute = !my_mute;

  });

});

function animateHome() {
  var headline = document.querySelector('.trigger-headline'),
    trigger = document.querySelector('.btn--trigger'),
    segmenter = new Segmenter(document.querySelector('.segmenter'), {
      pieces: 8,
      positions: [
        {
          top: 0,
          left: 0,
          width: 100,
          height: 100
        },
        {
          top: 0,
          left: 0,
          width: 100,
          height: 100
        },
        {
          top: 0,
          left: 0,
          width: 100,
          height: 100
        },
        {
          top: 0,
          left: 0,
          width: 100,
          height: 100
        },
        {
          top: 0,
          left: 0,
          width: 100,
          height: 100
        },
        {
          top: 0,
          left: 0,
          width: 100,
          height: 100
        },
        {
          top: 0,
          left: 0,
          width: 100,
          height: 100
        },
        {
          top: 0,
          left: 0,
          width: 100,
          height: 100
        }
        ],
      shadows: false,
      parallax: true,
      parallaxMovement: {
        min: 10,
        max: 30
      },
      animation: {
        duration: 2500,
        easing: 'easeOutExpo',
        delay: 0,
        opacity: .1,
        translateZ: {
          min: 10,
          max: 25
        }
      },
      onReady: function () {
        segmenter.animate();
      }
    });
};

animateHome();
