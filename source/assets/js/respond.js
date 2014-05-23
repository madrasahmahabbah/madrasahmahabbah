(function($, document, window) {
  responsive_resize()
  // Change width value on page load
  $(document).ready(function(){
    responsive_resize();
  });

  // Change width value on user resize, after DOM
  $(window).resize(function(){
    responsive_resize();
  });

  function responsive_resize(){
    var current_width = $(window).width();
    //do something with the width value here!
    if(current_width < 481)
      $('html').addClass("m320").removeClass("m768").removeClass("desktop").removeClass("m480");

    else if(current_width < 739)
      $('html').addClass("m768").removeClass("desktop").removeClass("m320").removeClass("tablet");

    else if (current_width < 970)
      $('html').addClass("tablet").removeClass("desktop").removeClass("m320").removeClass("m768");

    else if (current_width > 971)
      $('html').addClass("desktop").removeClass("m320").removeClass("m768").removeClass("tablet");
  }
})(jQuery, document, window);