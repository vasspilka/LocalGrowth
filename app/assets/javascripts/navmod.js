$(document).ready(function () {
   var $scrollingDiv = $(".sidenav");

   $(window).scroll(function () {
       $scrollingDiv.stop()
           .animate({
       }, "slow");
       $scrollingDiv.css("background", (($(window).scrollTop() / $(document).height()) > 0.10) ? "rgba(55, 59, 65, 1)" : "");

     });
	
	 
});


$(document).ready(function () {

   var $scrollingDiv = $(".logo");

   $(window).scroll(function () {
       $scrollingDiv.stop()
           .animate({
       }, "slow");
       $scrollingDiv.css("opacity", (($(window).scrollTop() / $(document).height()) > 0.05) ? "0" : "");

     });
	
	 
});

