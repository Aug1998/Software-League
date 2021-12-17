// Navbar
var navbar = $(".navbar");

$(window).bind('scroll', function () {
    $(".navbar .nav").removeClass("show_nav");

    if($(window).scrollTop() < 60) {
        navbar.css("box-shadow", "none");
    }
    if ($(window).scrollTop() > 60) {
        navbar.css("box-shadow", "0 0 10px 0 rgba(0,0,0,.5)");
    }
});

$(".mobile_nav_item").click(function() {
    $(".navbar .nav").removeClass("show_nav");
});

$(".menu_btn").click(function() {
    $(".navbar .nav").toggleClass("show_nav");
});




//Anchors
$("#services_btn").click(function() {
        $([document.documentElement, document.body]).animate({
            scrollTop: $(".services_outer").offset().top
        }, 1200);
});

$("#whyus_btn").click(function() {
        $([document.documentElement, document.body]).animate({
            scrollTop: $(".whyus_inner").offset().top
        }, 1200);
});

$("#about_btn").click(function() {
        $([document.documentElement, document.body]).animate({
            scrollTop: $(".about_section").offset().top
        }, 1200);
});

$("#contact_btn").click(function() {
        $([document.documentElement, document.body]).animate({
            scrollTop: $(".pre-footer").offset().top
        }, 1200);
});


//Hero contact us buttons
$('.contact_us_btn').each(function(index, e) {
    $(e).click( () => {
        $([document.documentElement, document.body]).animate({
            scrollTop: $(".pre-footer").offset().top - 60
        }, 1000);
      });
    });
    

function scrollToTop(){
        $([document.documentElement, document.body]).animate({
            scrollTop: 0
        }, 1400);
}



//Staff Cards hover
$('.staff_card').on("mouseover", function(){
    $(this).css("transform", "translateY(-15px)");
    $(this).find(".staff_linkedin").css("transform", "translateX(15px)");
});

$('.staff_card').on("mouseout", function(){
    $(this).css("transform", "translateY(0px)");
    $(this).find(".staff_linkedin").css("transform", "translateX(0px)");
});


//Whyus items hover
$('.whyus_item').on("mouseover", function(){
    $(this).css("transition", "0.4s");
    $(this).css("transform", "translateX(25px)");
});

$('.whyus_item').on("mouseout", function(){
    $(this).css("transform", "translateX(0px)");
});



//Whyus items hover
$('.brands_item').on("mouseover", function(){

    $(this).parent().find(".brands_item").css("filter", "grayscale(100%)");
    $(this).css("filter", "grayscale(0%)");
    
    $(this).parent().find(".brands_item img").css("transform", "scale(0.9)");
    $(this).find("img").css("transform", "scale(1.1)");

});

$('.brands_item').on("mouseout", function(){
    $(this).parent().find(".brands_item").css("filter", "grayscale(0%)");

    $(this).parent().find(".brands_item img").css("transform", "scale(1)");
    $(this).find("img").css("transform", "scale(1)");
});


$("#form_send").click(function () {
    if (
        isEmail($("#form_email").val()) && 
        $("#form_name").val().length <= 20 &&
        $("#form_message").val().length <= 400
    ) {
        console.log("all good");
        setTimeout(() => {
            $('.popup_bg').css('display', 'block');
        }, 2000);
    }
});

function isEmail(email) {
    var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    return regex.test(email);
}

$('.popup_ok').click(function () {
    $('.popup_bg').css('display', 'none');
    $('.form-control').val("");
});