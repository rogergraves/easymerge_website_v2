
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

var emListAnimation = function(heightSize) {
    if ($(window).scrollTop() > heightSize) {
        $(".em_list_column").each(function (i, elem) {
            $(elem).addClass('em_list_animation');
        });
    }
};

var quoteAnimationHeight = function(heightSize){
    if ($(window).scrollTop() > heightSize) {
        quoteAnimation();
    }
};

var topRightPathAnimation = function () {
    $('.em_line_right').delay(1000).animate({opacity: 1}, 1500);
}

var topLeftPathAnimation = function () {
  $('.em_line_left').animate({ opacity: 1 }, 1500 );
};

var bottomLeftPathAnimation = function (heightSize) {
    if ($(window).scrollTop() > heightSize) {
        $('.em_line_left_bottom').animate({opacity: 1}, 1500);
    }
};

var bottomRightPathAnimation = function (heightSize) {
    if ($(window).scrollTop() > heightSize) {
        $('.em_line_right_bottom').animate({opacity: 1}, 1500);
    }
};

$(window).scroll(function() {
    if ($(window).width() <= 767) {
        quoteAnimationHeight(3300);
        emListAnimation(2900);

    } else if ($(window).width() > 767 && $(window).width() <= 991) {
        quoteAnimationHeight(2350);
        topLeftPathAnimation();
        bottomLeftPathAnimation(800);
        bottomRightPathAnimation(1020);
        emListAnimation(1990);

    } else {
        quoteAnimationHeight(2000);
        topLeftPathAnimation();
        bottomLeftPathAnimation(560);
        bottomRightPathAnimation(760);
        emListAnimation(1600);
    }
});