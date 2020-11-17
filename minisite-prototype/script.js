$(window).scroll(function() {
    var scrollTop = $(window).scrollTop();
    if (scrollTop > $('#img-header').offset().top + 50) {
        $('#img-header').addClass('scrolled');
    } else {
        $('#img-header').removeClass('scrolled');
    }    
});

function menu_open() {
    $('#navbar-burger').toggleClass('is-active');
    $('#navbar-menu').toggleClass('is-active');
}

function dropdown_open() {
    $('#navbar-dropdown').toggleClass('toggle-dropdown');
}