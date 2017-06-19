$(document).ready(function(){

   $("h2").mouseenter(function(){
   	$(this).css("background-color", "pink");
   })

   $("h2").mouseleave(function(){
   	$(this).css("background-color", "white");
   })

    $(".image").mouseenter(function(){
   	$("em").toggle();
   })

});