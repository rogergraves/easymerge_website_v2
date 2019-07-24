
var quoteAnimation = function() {
    $(".method").sort(function(){
        return Math.random() - 0.5;
    }).each(function(i,elem) {
        $(elem).delay(i*1000).animate({
            opacity: 1
        }, "slow"
        );
    });
};

$(window).scroll(function() {
    if ($(window).width() <= 767) {
        if ($(window).scrollTop() > 3300) {
            quoteAnimation();
        }
    } else if ($(window).width() > 767 && $(window).width() <= 991) {
        if ($(window).scrollTop() > 2350) {
            quoteAnimation();
        }
    } else {
        if ($(window).scrollTop() > 2000) {
            quoteAnimation();
        }
    }
});