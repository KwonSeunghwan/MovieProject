function modalClose() {
    $('.modal .close-btn').click(function() {
      $(this).parents('.modal-wrap')
      .removeClass('is-visible');
      $('body').css("overflow", "scroll");
    });
  }
  
  function modalOpen(target) {
    $('.' + target).addClass('is-visible');
    $('body').css("overflow", "hidden");
  }