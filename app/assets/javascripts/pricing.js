
$(window).scroll(function() {
    if ($(window).scrollTop() > 150) {
        $('#pen_stroke').animate({opacity: 1}, 1500);
    }
});