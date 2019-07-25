
let quoteAnimation = function() {
    $(".method").sort(function(){
        return Math.random() - 0.5;
    }).each(function(i,elem) {
        $(elem).delay(i*1000).animate({
            opacity: 1
        }, "slow"
        );
    });
};

let quoteAnimationHeight = function(heightSize){
    if ($(window).scrollTop() > heightSize) {
        quoteAnimation();
    }
};

let topPathAnimation = function () {
  $('.em_line_right').delay(2000).animate({ opacity: 1 }, 1500 );
  $('.em_line_left').delay(3000).animate({ opacity: 1 }, 1500 );
};

let bottomLeftPathAnimation = function (heightSize) {
    if ($(window).scrollTop() > heightSize) {
        $('.em_line_left_bottom').delay(2000).animate({opacity: 1}, 1500);
    }
};

let bottomRightPathAnimation = function (heightSize) {
    if ($(window).scrollTop() > heightSize) {
        $('.em_line_right_bottom').delay(2000).animate({opacity: 1}, 1500);
    }
};

$(window).scroll(function() {
    if ($(window).width() <= 767) {
        quoteAnimationHeight(3300);

    } else if ($(window).width() > 767 && $(window).width() <= 991) {
        quoteAnimationHeight(2350);
        topPathAnimation();
        bottomLeftPathAnimation(800);
        bottomRightPathAnimation(970);

    } else {
        quoteAnimationHeight(2000);
        topPathAnimation();
        bottomLeftPathAnimation(500);
        bottomRightPathAnimation(620);
    }
});