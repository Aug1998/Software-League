//slider
var slider1 = tns({
    "container": ".hero_slider",
    "slideBy": "page",
    "items": 1,
    "touch": false,
    "mouseDrag": false,
    "autoplay": false,
    "autoplayTimeout": 6000,
    "speed": "600",
    "nav": false,
    "controls": false,
    "center": true,
    "preventActionWhenRunning": true,
    });

/* Home Slider */
var bgImageArray = ["hero_1.jpeg", "hero_2.jpeg", "hero_3.jpeg"],
bg_photo = document.getElementById('bg_photo'),
k = 0,
base = "../res/hero_photos/";

bgImageArray.forEach(function(img){
    new Image().src = base + img; 
    // caches images, avoiding white flash between background replacements
});

//Change the bg on indexChanged
slider1.events.on('indexChanged', function () {
    var index = slider1.getInfo().index;
    bg_photo.style.backgroundImage = "url(" + base + bgImageArray[index-1] + ")";
});

//Slider Autoplay
window.setInterval(function(){
    autoplay();
}, 5000);

//Arrows Event Handler
document.querySelector('#hero_left').onclick = toLeft;
document.querySelector('#hero_right').onclick = toRight;

//Transition Handler
function toLeft() {
    switch (slider1.getInfo().index) {
        case 1:
            break;
        case 2:
            slider1.goTo(0)
            break;
        case 3:
            slider1.goTo(1)
            break;
    }
}
function toRight() {
    switch (slider1.getInfo().index) {
        case 1:
            slider1.goTo(1)
            break;
        case 2:
            slider1.goTo(2)
            break;
        case 3:
            break;
    }
}

function autoplay() {
    switch (slider1.getInfo().index) {
        case 1:
            slider1.goTo(1)
            break;
        case 2:
            slider1.goTo(2)
            break;
        case 3:
            slider1.goTo(0)
            break;
    }
}


//Swipe
var startX, startY, endX, endY;

//Swipe Handler
function handleTouch(startX,endX){
  //calculate the distance on x-axis and o y-axis. Check wether had the great moving ratio.
  var xDist = endX - startX;
  //var yDist = endY - startY;
  //console.log("Distancia: " + xDist);
  //console.log(yDist);
   switch (true) {
       case (xDist < 0):
           toRight();
           break;
       case (xDist > 0):
            toLeft();
           break;
       case (xDist == 0):
           break;
   }
}

//configs the elements on load
window.onload = function(){
    window.addEventListener('touchstart', function(event){
   startX = event.touches[0].clientX;
   //startY = event.touches[0].clientY;
 })
  
 window.addEventListener('touchend', function(event){
   endX = event.changedTouches[0].clientX;
   //endY = event.changedTouches[0].clientY;
    
   handleTouch(startX, endX)
 })
}

