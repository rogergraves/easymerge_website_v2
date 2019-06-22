// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function () {

    $(".nav_bar_mini").on("click", function () {

        $(".nav_bar_r").slideToggle(300, function () {

            if($(this).css("display") === "none") {

                $(this).removeAttr("style");

            }
        });
    });
});