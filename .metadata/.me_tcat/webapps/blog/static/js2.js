
animates = [
            "bounce",
            "flash",
            "pulse",
            "rubberBand",
            "shake",
            "swing",
            "tada",
            "wobble",
            "jello",
            "bounceIn",
            "bounceInDown",
            "bounceInLeft",
            "bounceInRight",
            "bounceInUp",

            "fadeIn",
            "fadeInDown",
            "fadeInDownBig",
            "fadeInLeft",
            "fadeInLeftBig",
            "fadeInRight",
            "fadeInRightBig",
            "fadeInUp",
            "fadeInUpBig",

            "flip",
            "flipInX",
            "flipInY",

            "lightSpeedIn",

            "rotateIn",
            "rotateInDownLeft",
            "rotateInDownRight",
            "rotateInUpLeft",
            "rotateInUpRight",

            "slideInUp",
            "slideInDown",
            "slideInLeft",
            "slideInRight",

            "zoomIn",
            "zoomInDown",
            "zoomInLeft",
            "zoomInRight",
            "zoomInUp",


            "jackInTheBox",
            "rollIn",

          ];


          function rnd(n, m){
              var random = Math.floor(Math.random()*(m-n+1)+n);
              return random;
          }

          var a = ["success","info","danger","warning"];
var b = ["success","primary","info","danger","warning","default"];

$(document).ready(function(){	
	
	
	$("table").removeClass("sTable");
	
	$("table").css("background","#fff");
	$("input[type=text],input[type=number],input[type=password],textarea").addClass("form-control");
	$("button,input[type=submit]").addClass("btn btn-"+b[rnd(0,b.length-1)]);
	$("table th").attr("style","");
	$("table td").each(function(){
		$(this).attr("style","");
		var html =$(this).html();
		html = html.replace("[","");
		html = html.replace("[","");
		html = html.replace("[","");	html = html.replace("[","");
		html = html.replace("[","");
		html = html.replace("[","");
		html = html.replace("]","");
		html = html.replace("]","");
		html = html.replace("]","");html = html.replace("]","");
		html = html.replace("]","");
		html = html.replace("|","");
		html = html.replace("|","");
		html = html.replace("|","");
		html = html.replace("|","");
		$(this).html(html);
	});
	$("table").addClass("table table-striped  row-hover ");
	$("table td a").addClass("btn btn-"+b[rnd(0,b.length-1)]);
	$(".title h6").addClass("alert alert-" + a[rnd(0, a.length - 1)]);
	$(".container_12").find("p").eq(0).css("width","200px");
	$(".container_12").find("p").eq(0).addClass("label label-" + a[rnd(0, a.length - 1)]);
	$(".caption,.card-head h4").addClass("badge badge-"+a[rnd(0,a.length-1)]);
	
	$(".widget").css("border-radius","0px");
	$(".widget").css("padding","20px");
	$(".widget").css("margin","0px");
	$(".widget").css("marginTop","20px");
	//$("body,table>thead>tr>th,.table thead td,.table>thead>tr>th,table>tr>td,table>tr>td a").css("color","#fff");
	$("table td a").each(function(){
		$(this).addClass("button btn btn-"+b[rnd(0,b.length)]);
	})
	$(".formRow").css("border","none");
	 $(".widget,.table,input,button").each(function () {
         //$(this).addClass(" animated "+animates[rnd(0,animates.length)]);
		 $(this).addClass(" animated fadeIn");
     });

	 $("table th").css("background","#25364A");
    $("table th").css("color","#FFF");
    $(".tpl-portlet-components").css("width","100%");
    $("form").addClass("form-inline");
    //$("form").css("width","40%");
    $(".form-inline label").css("text-align","left");

    $(".form-inline label").css("justify-content","left");
});