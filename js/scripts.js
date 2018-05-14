$(document).ready(function () {
	$("img").each( function () {
		$(this).attr("alt", $(this).attr("title"));
	});
	
	$("a.show-hidden").on("click", function () {
		if ($(this).next().hasClass("hide")) {
			$(this).next().removeClass("hide");
		} else {
			$(this).next().addClass("hide");
		}
	});
});