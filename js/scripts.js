$(document).ready(function () {
	$("img").each( function () {
		$(this).attr("title", $(this).attr("alt"));
	});
	
	$("a.show-hidden").on("click", function () {
		if ($(this).next().hasClass("hide")) {
			$(this).next().removeClass("hide");
		} else {
			$(this).next().addClass("hide");
		}
	});
});